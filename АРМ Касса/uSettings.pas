unit uSettings;

interface

uses
  System.IniFiles, System.Generics.Collections;

const
  // sections and Idents
  SEC_GENERAL='general';
  ID_GENERAL_COMPANY =  'Company';
  ID_GENERAL_DEPARTMENT = 'Department';

  SEC_PRNCONN = 'PrinterConnection';
  ID_PRNCONN_PRINTERNAME = 'PrinterName';
  ID_PRNCONN_PRINTERMODE = 'PrinterMode';
  ID_PRNCONN_BAUDRATE = 'BaudRate';
  ID_PRNCONN_LASTFEED = 'LastFeedLineCount';
  ID_PRNCONN_ADDRESS = 'Address';

  SEC_CALCRULES = 'Calc_Rules';
  ID_CALCRULES_ROUND_DISCOUNT_TO='RoundDiscountTo';

  SEC_DBPARAMS = 'DBPARAM';
  ID_DBPARAMS_DBNAME='DBName';

type

  TBlockSettings= class;

  TBlocks=class (TObjectList<TBlockSettings>)
  public
    constructor Create;
    destructor Destroy; override;
    function FindByName(ABlockName:string):TBlockSettings;
  end;

  TBlockSettings= class abstract (TObject)
  private
    FIni:TCustomIniFile;
    FSectionName:string;
  protected
    function ReadValue(ValueName:string; const DefValue:Variant):Variant;
    procedure WriteValue(ValueName:string; const Value:Variant);
  public
    constructor Create(Ini:TCustomIniFile; AList:TBlocks; SectionName:string);
    destructor Destroy; override;
    property BlockName:string read FSectionName;
  end;


  TBaseSettings=class abstract(TObject)
  private
    FIni:TCustomIniFile;
    FBlocks:TBlocks;
    FCurrentBlock: TBlockSettings;
    function GetCurrentBlockName: string;
    procedure SetCurrentBlockName(const Value: string);
    function GetCurrentBlockIndex: Integer;
    procedure SetCurrentBlockIndex(const Value: Integer);
  protected
    function GetBlock(const AName:string):TBlockSettings;
    function GetIni:TCustomIniFile;
  public
    constructor Create(IniFileName:string);
    destructor Destroy; override;
    procedure Flush;
    procedure AppendBlock(ABlock:TBlockSettings);
    property CurrentBlockIndex:Integer read GetCurrentBlockIndex write SetCurrentBlockIndex;
    property CurrentBlock:TBlockSettings read FCurrentBlock;
    property CurrentBlockName:string read GetCurrentBlockName write SetCurrentBlockName;
  end;

  //***************************************
  TGeneral=class(TBlockSettings)
  private
    procedure SetCompany(const Value: Integer);
    function GetCompany: Integer;
    function GetDepartment: Integer;
    procedure SetDepartment(const Value: Integer);
  public
    constructor Create(Ini:TCustomIniFile; AList:TBlocks);
    property Company:Integer read GetCompany write SetCompany;
    property Department: Integer read GetDepartment write SetDepartment;
  end;

  TPrinterConnection=class(TBlockSettings)
  private
    function GetPrinterMode: Integer;
    procedure SetPrinterMode(const Value: Integer);
    function GetPrinterName: string;
    procedure SetPrinterName(const Value: string);
    function GetBaudRate: Integer;
    procedure SetBaudRate(const Value: Integer);
    function GetFinishFeedLinesCnt: Integer;
    procedure SetFinishFeedLinesCnt(const Value: Integer);
    function GetAddress: string;
    procedure SetAddress(const Value: string);
  public
    constructor Create(Ini:TCustomIniFile; AList:TBlocks);
    property PrinterMode: Integer read GetPrinterMode write SetPrinterMode;
    property PrinterName: string read GetPrinterName write SetPrinterName;
    property BaudRate: Integer read GetBaudRate write SetBaudRate;
    property FinishFeedLinesCnt: Integer read GetFinishFeedLinesCnt write SetFinishFeedLinesCnt;
    property Address: string read GetAddress write SetAddress;
  end;

  TCalcRules=class(TBlockSettings)
  private
    function GetRoundDiscountTo: Integer;
    procedure SetRoundDiscountTo(const Value: Integer);
  public
    constructor Create(Ini:TCustomIniFile; AList:TBlocks);
    property RoundDiscountTo: Integer read GetRoundDiscountTo write SetRoundDiscountTo;
  end;

  TDBParams= class(TBlockSettings)
  private
    function GetDBName: string;
    procedure SetDBName(const Value: string);
  public
    constructor Create(Ini:TCustomIniFile; AList:TBlocks);
    property DBName: string read GetDBName write SetDBName;
  end;

  TSettings = class(TBaseSettings)
  private
    function GetCalcRules: TCalcRules;
    function GetGeneral: TGeneral;
    function GetPrinterConnection: TPrinterConnection;
    function GetDBParams: TDBParams;
  public
    constructor Create(IniFileName:string);
    property General: TGeneral read GetGeneral;
    property PrinterConnection: TPrinterConnection read GetPrinterConnection;
    property CalcRules: TCalcRules read GetCalcRules;
    property DBParams: TDBParams read GetDBParams ;
  end;

var
  Settings:TSettings=nil;

implementation

uses System.Variants, System.SysUtils;

{ TBlockSettings }

function TBlockSettings.ReadValue(ValueName: string; const DefValue: Variant):Variant;
var
  lVarType:TVarType;
  lNew:Boolean;
begin
  Result:=DefValue;
  lVarType := VarType(DefValue);
  lNew := not FIni.ValueExists(FSectionName, ValueName);

  case lVarType of
    varSmallint,varInteger,varShortInt,varByte, varWord, varLongWord,
    varInt64, varUInt64:
      if lNew then FIni.WriteInteger(FSectionName, ValueName, DefValue)
      else
        Result := FIni.ReadInteger(FSectionName, ValueName, DefValue);
    varSingle, varDouble, varCurrency:
      if lNew then FIni.WriteFloat(FSectionName, ValueName, DefValue)
      else
        Result := FIni.ReadFloat(FSectionName, ValueName, DefValue);
    varDate:
      if lNew then FIni.WriteDateTime(FSectionName, ValueName, DefValue)
      else
        Result := FIni.ReadDateTime(FSectionName, ValueName, DefValue);
    varBoolean:
      if lNew then FIni.WriteBool(FSectionName, ValueName, DefValue)
      else
        Result := FIni.ReadBool(FSectionName, ValueName, DefValue);
    varOleStr, varString, varUString:
      if lNew then FIni.WriteString(FSectionName, ValueName, DefValue)
      else
        Result := FIni.ReadString(FSectionName, ValueName, DefValue);
  else
      //FIni.ReadBinaryStream(FSectionName, ValueName, Result);
  end; //case lVarType

end;

procedure TBlockSettings.WriteValue(ValueName: string; const Value: Variant);
var
  lVarType:TVarType;
begin
  lVarType := VarType(Value);
  case lVarType of
    varSmallint,varInteger,varShortInt,varByte, varWord, varLongWord,
    varInt64, varUInt64:
      FIni.WriteInteger(FSectionName, ValueName,Value);

    varSingle, varDouble, varCurrency:
      FIni.WriteFloat(FSectionName, ValueName, Value);

    varDate:
      FIni.WriteDateTime(FSectionName, ValueName, Value);

    varBoolean:
      FIni.WriteBool(FSectionName, ValueName, Value);

    varOleStr, varString, varUString:
      FIni.WriteString(FSectionName, ValueName, Value);

  else
     //FIni.WriteBinaryStream(FSectionName, ValueName, Value);
  end; //case lVarTypeend;
end;

constructor TBlockSettings.Create(Ini: TCustomIniFile; AList:TBlocks; SectionName: string);
begin
  inherited Create;
  FIni := Ini;
  FSectionName := SectionName;
end;

destructor TBlockSettings.Destroy;
begin

  inherited;
end;

{ TSettings }

procedure TBaseSettings.AppendBlock(ABlock: TBlockSettings);
begin
  FBlocks.Add(ABlock);
end;

constructor TBaseSettings.Create(IniFileName: string);
begin
  inherited Create;
  FIni := TMemIniFile.Create(IniFileName);
  FBlocks := TBlocks.Create;
end;

destructor TBaseSettings.Destroy;
begin
  FIni.UpdateFile;
  FBlocks.Free;
  FIni.Free;
  inherited;
end;

procedure TBaseSettings.Flush;
begin
  FIni.UpdateFile;
end;

function TBaseSettings.GetBlock(const AName: string): TBlockSettings;
begin
  Result := FBlocks.FindByName(AName);
end;

function TBaseSettings.GetCurrentBlockIndex: Integer;
begin
  Result:=FBlocks.IndexOf(CurrentBlock);
end;

function TBaseSettings.GetCurrentBlockName: string;
begin
  Result:=FCurrentBlock.BlockName;
end;

function TBaseSettings.GetIni: TCustomIniFile;
begin
  Result := FIni;
end;

procedure TBaseSettings.SetCurrentBlockIndex(const Value: Integer);
begin
  FCurrentBlock := FBlocks[Value];
end;

procedure TBaseSettings.SetCurrentBlockName(const Value: string);
begin
  FCurrentBlock := FBlocks.FindByName(Value);
end;

{ TSettings }

constructor TSettings.Create(IniFileName: string);
begin
  inherited;
  AppendBlock(TGeneral.Create(FIni, FBlocks));
  AppendBlock(TPrinterConnection.Create(FIni, FBlocks));
  AppendBlock(TCalcRules.Create(FIni, FBlocks));
  AppendBlock(TDBParams.Create(FIni, FBlocks));
end;

function TSettings.GetCalcRules: TCalcRules;
begin
  Result := GetBlock(SEC_CALCRULES) as TCalcRules;
end;

function TSettings.GetDBParams: TDBParams;
begin
  Result:=GetBlock(SEC_DBPARAMS) as TDBParams;
end;

function TSettings.GetGeneral: TGeneral;
begin
  Result := GetBlock(SEC_GENERAL) as TGeneral;
end;

function TSettings.GetPrinterConnection: TPrinterConnection;
begin
  Result := GetBlock(SEC_PRNCONN) as TPrinterConnection;
end;

{ TBlocks }

constructor TBlocks.Create;
begin
  inherited Create(True);

end;

destructor TBlocks.Destroy;
begin
  inherited;
end;

function TBlocks.FindByName(ABlockName: string): TBlockSettings;
begin
  for Result in Self do
    if SameText(Result.BlockName, ABlockName) then
      Exit;
  Result := nil;
end;

{ TGeneral }

constructor TGeneral.Create(Ini: TCustomIniFile; AList: TBlocks);
begin
  inherited Create(Ini, AList, SEC_GENERAL);
end;

function TGeneral.GetCompany: Integer;
begin
  Result := ReadValue(ID_GENERAL_COMPANY, 0);
end;

function TGeneral.GetDepartment: Integer;
begin
  Result := ReadValue(ID_GENERAL_DEPARTMENT, 0);
end;

procedure TGeneral.SetCompany(const Value: Integer);
begin
  WriteValue(ID_GENERAL_COMPANY, Value);
end;

procedure TGeneral.SetDepartment(const Value: Integer);
begin
  WriteValue(ID_GENERAL_DEPARTMENT, Value);
end;

{ TPrinterConnection }

constructor TPrinterConnection.Create(Ini: TCustomIniFile; AList: TBlocks);
begin
  inherited Create(Ini, AList, SEC_PRNCONN);
end;

function TPrinterConnection.GetAddress: string;
begin
  Result := ReadValue(ID_PRNCONN_ADDRESS, '');
end;

function TPrinterConnection.GetBaudRate: Integer;
begin
  Result := ReadValue(ID_PRNCONN_BAUDRATE, 6);
end;

function TPrinterConnection.GetFinishFeedLinesCnt: Integer;
begin
  Result := ReadValue(ID_PRNCONN_LASTFEED, 4);
end;

function TPrinterConnection.GetPrinterMode: Integer;
begin
  Result := ReadValue(ID_PRNCONN_PRINTERMODE, 0);
end;

function TPrinterConnection.GetPrinterName: string;
begin
  Result := ReadValue(ID_PRNCONN_PRINTERNAME, '');
end;

procedure TPrinterConnection.SetAddress(const Value: string);
begin
  WriteValue(ID_PRNCONN_ADDRESS, Value);
end;

procedure TPrinterConnection.SetBaudRate(const Value: Integer);
begin
  WriteValue(ID_PRNCONN_BAUDRATE, Value);
end;

procedure TPrinterConnection.SetFinishFeedLinesCnt(const Value: Integer);
begin
  WriteValue(ID_PRNCONN_LASTFEED, Value);
end;

procedure TPrinterConnection.SetPrinterMode(const Value: Integer);
begin
  WriteValue(ID_PRNCONN_PRINTERMODE, Value);
end;

procedure TPrinterConnection.SetPrinterName(const Value: string);
begin
  WriteValue(ID_PRNCONN_PRINTERNAME, Value);
end;

{ TCalcRules }

constructor TCalcRules.Create(Ini: TCustomIniFile; AList: TBlocks);
begin
  inherited Create(Ini, AList, SEC_CALCRULES);
end;

function TCalcRules.GetRoundDiscountTo: Integer;
begin
  Result := ReadValue(ID_CALCRULES_ROUND_DISCOUNT_TO, 0);
end;

procedure TCalcRules.SetRoundDiscountTo(const Value: Integer);
begin
 WriteValue(ID_CALCRULES_ROUND_DISCOUNT_TO, Value);
end;

{ TDBParams }

constructor TDBParams.Create(Ini: TCustomIniFile; AList: TBlocks);
begin
  inherited Create(Ini, AList, SEC_DBPARAMS);
end;

function TDBParams.GetDBName: string;
begin
  Result := ReadValue(ID_DBPARAMS_DBNAME, '');
end;

procedure TDBParams.SetDBName(const Value: string);
begin
  WriteValue(ID_DBPARAMS_DBNAME, Value);
end;

initialization
  Settings := TSettings.Create(ExtractFilePath(ParamStr(0))+'conf.ini');

finalization
  FreeAndNil(Settings);

end.
