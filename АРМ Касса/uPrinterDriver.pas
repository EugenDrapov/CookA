unit uPrinterDriver;

interface

uses System.Classes, System.SysUtils, untShtrih500Driver;

type

  IPrintInterface = interface
  ['{D92B0187-5310-4C11-9236-4EDB90CEFFB7}']
  function GetErrorDescr:string;
  function Open(DeviceName:string):boolean;
  procedure Close;
  function Write(AStr:string):boolean;
  function WriteLn(AStr:string):boolean;
  function Feed(LinesCnt:Byte):boolean;
  function GetLineWidth:Integer;
  function SetBoldMode(Value:boolean):Boolean;
  function SetWideMode(Value:Boolean):Boolean;
  function SetAlignment(Value:TAlignment):boolean;
  end;

  TWinESCPOSPrinter=class(TInterfacedObject, IPrintInterface)
  private
    FErrDescr:string;
    FPrnHandle:THandle;
    FOEMEnc : TMBCSEncoding;
    FMode:Byte;
    procedure UpdateMode;
  protected
    function GetErrorDescr:string;
    function Open(DeviceName:string):boolean;
    procedure Close;
    function Write(AStr:string):boolean;
    function WriteLn(AStr:string):boolean;
    function Feed(LinesCnt:Byte):boolean;
    function GetLineWidth:Integer;
    function SetBoldMode(Value:boolean):Boolean;
    function SetWideMode(Value:Boolean):Boolean;
    function SetAlignment(Value:TAlignment):boolean;
  public
    constructor Create;
    destructor Destroy; override;
  end;

  TShrih500Printer=class(TInterfacedObject, IPrintInterface)
  private
    FErrDescr:string;
    FDrv:TDriver;
    // 0 bit-Wide mode; 1 bit-Bold mode; 2,3 bit- Alignment;
    FMode:Byte;
    function GetBoldMode: boolean;
    function GetWideMode: Boolean;
    procedure SetBoldLcl(const Value: boolean);
    procedure SetWideLcl(const Value: Boolean);

  protected
    //  IPrintInterface implementation
    function GetErrorDescr:string;
    function Open(DeviceName:string):boolean;
    procedure Close;
    function Write(AStr:string):boolean;
    function WriteLn(AStr:string):boolean;
    function Feed(LinesCnt:Byte):boolean;
    function GetLineWidth:Integer;
    function SetBoldMode(Value:boolean):Boolean;
    function SetWideMode(Value:Boolean):Boolean;
    function SetAlignment(Value:TAlignment):boolean;
    // ***
    property BoldMode: boolean read GetBoldMode write SetBoldLcl;
    property WideMode: Boolean read GetWideMode write SetWideLcl;
  public
    constructor Create;
    destructor Destroy; override;
  end;

function  CreateDriver:IPrintInterface;

function Driver:IPrintInterface;


implementation

uses
  Winapi.Winspool, Winapi.Windows, uSettings;

const

  ESC = #27;
  GS  = #29;
  LF  = #10;

  LINE_WIDTH_T58 = 32;
  LINE_WIDTH_SHTRIH500 = 32;

var
  gDriver:IPrintInterface = nil;

function  CreateDriver:IPrintInterface;
begin
  gDriver := nil;
  case Settings.PrinterConnection.PrinterMode of
    0: Result := nil;
    1: Result := TWinESCPOSPrinter.Create;
  else
    Result := nil;
  end;
  gDriver := Result;
  if Result=nil then
    raise Exception.Create('PrinterMode='+IntToStr(Settings.PrinterConnection.PrinterMode)+' не поддерживается.');
end;

function Driver:IPrintInterface;
begin
  if Assigned(gDriver) then
    Result := gDriver
  else
    Result := CreateDriver;
end;

{ TWinESCPOSPrinter }

procedure TWinESCPOSPrinter.Close;
begin
  EndDocPrinter(FPrnHandle);
  ClosePrinter(FPrnHandle);
  FPrnHandle := 0;
end;

constructor TWinESCPOSPrinter.Create;
begin
  inherited;
  FErrDescr := '';
  FPrnHandle := 0;
  FOEMEnc := TMBCSEncoding.Create(CP_OEMCP);

end;

destructor TWinESCPOSPrinter.Destroy;
begin
  if FPrnHandle<>0 then
    ClosePrinter(FPrnHandle);
  FOEMEnc.Free;
  inherited;
end;

function TWinESCPOSPrinter.Feed(LinesCnt: Byte): boolean;
var
  S:string;
begin
  S := ESC+'d'+Char(LinesCnt);
  Result:=Write(S);
end;

function TWinESCPOSPrinter.GetErrorDescr: string;
begin
  Result := FErrDescr;
end;

function TWinESCPOSPrinter.GetLineWidth: Integer;
begin
  Result := LINE_WIDTH_T58;
end;

function TWinESCPOSPrinter.Open(DeviceName: string): boolean;
var
  DocInfo1:TDocInfo1;
begin
  Result := OpenPrinter(PChar(DeviceName), FPrnHandle, nil);
  if not Result then
    begin
    FErrDescr :='Принтер «'+DeviceName+'» не найден.';
    Exit
    end;

  FMode :=0;

  with DocInfo1 do
  begin
    pDocName := PChar('Doc1');
    pOutputFile := nil;
    pDataType := 'RAW';
  end;

  StartDocPrinter(FPrnHandle, 1, @DocInfo1);

  Write(ESC+'@'+ESC+'t'+#17+ESC+'!'+Char(FMode));

end;

function TWinESCPOSPrinter.SetAlignment(Value: TAlignment): boolean;
var
  S:string;
begin
  S:= ESC+'a';
  case Value of
    taLeftJustify:  S:=S+#0;
    taRightJustify: S:=S+#2;
    taCenter:       S:=S+#1;
  end;
  Result := Write(S);
end;

function TWinESCPOSPrinter.SetBoldMode(Value: boolean): Boolean;
var
  S:string;
begin
  S:=ESC+'G';
  if Value then
    S:=S+#1
  else
    S:=S+#0;
  Result := Write(S);
end;

function TWinESCPOSPrinter.SetWideMode(Value: Boolean): Boolean;
begin
  SetBoldMode(Value);
  if Value then
    FMode:= FMode or $20
  else
    FMode:= FMode and $DF;
  UpdateMode;
  Result := true;
end;

procedure TWinESCPOSPrinter.UpdateMode;
begin
  Write(ESC+'!'+Char(FMode));
end;

function TWinESCPOSPrinter.Write(AStr: string): boolean;
var
  buf:TBytes;
  N:DWORD;
begin
  buf := FOEMEnc.GetBytes(AStr);
  Result:=WritePrinter(FPrnHandle, Pointer(buf), Length(buf), N);
  if not Result then
    FErrDescr:='Write error.';
end;

function TWinESCPOSPrinter.WriteLn(AStr: string): boolean;
begin
   Result := Write(AStr+LF);
end;

{ TShrih500Printer }

procedure TShrih500Printer.Close;
begin
  FDrv.Disconnect;
  FDrv := nil;
end;

constructor TShrih500Printer.Create;
begin
  inherited;
  FErrDescr := '';
  FMode := 0;
  FDrv := nil;

end;

destructor TShrih500Printer.Destroy;
begin
  if Assigned(FDrv) then
    begin
    FDrv.Disconnect;
    FDrv := nil;
    end;
  FreeDriver;
  inherited;
end;

function TShrih500Printer.Feed(LinesCnt: Byte): boolean;
begin
  FDrv.StringQuantity := LinesCnt;
  FDrv.FeedDocument;
  Result := FDrv.ResultCode=0;
  FErrDescr := FDrv.ResultCodeDescription;
end;

function TShrih500Printer.GetBoldMode: boolean;
begin
  Result := Boolean(FMode and $02);
end;

function TShrih500Printer.GetErrorDescr: string;
begin
  Result := FErrDescr;
end;

function TShrih500Printer.GetLineWidth: Integer;
begin
  Result := LINE_WIDTH_SHTRIH500;
end;

function TShrih500Printer.GetWideMode: Boolean;
begin
  Result := Boolean(FMode and $01);
end;

function TShrih500Printer.Open(DeviceName: string): boolean;
var
  S:string;
  p:Integer;
begin
  if not Assigned(FDrv) then
    begin
    FDrv := untShtrih500Driver.Driver;
    FDrv.Timeout := 100;
    end;

  S := DeviceName.Replace('COM', '');
  try
    p:= StrToInt(S)-1;
    FDrv.ComNumber := p;
  except
    on E:Exception do
      begin
      Result := false;
      FErrDescr := 'Неверный COM порт:"'+DeviceName+'".';
      end;
  end;
  try
    FDrv.BaudRate := Settings.PrinterConnection.BaudRate;
  except
    on E:Exception do
      begin
      Result := false;
      FErrDescr := 'Неверная скорость COM порта:"'+IntToStr(Settings.PrinterConnection.BaudRate)+'".';
      end;
  end;
  try
    FDrv.Connect;
    if FDrv.ResultCode<>0 then
      begin
        Result := false;
        FErrDescr := FDrv.ResultCodeDescription;
      end
    else
      Result := true;
  except
    on E:Exception do
      begin
      Result := false;
      FErrDescr := 'Не могу подлючиться к принтеру: неизвестная ошибка.';
      end;
  end;
end;

function TShrih500Printer.SetAlignment(Value: TAlignment): boolean;
begin
  Result := False;
  FErrDescr := 'SetAlignment не поддерживается';
end;

procedure TShrih500Printer.SetBoldLcl(const Value: boolean);
begin
  if Value then
    FMode := FMode or $02
  else
    FMode := FMode and $FD;
end;

function TShrih500Printer.SetBoldMode(Value: boolean): Boolean;
begin
  BoldMode := Value;
  Result := true;
end;

procedure TShrih500Printer.SetWideLcl(const Value: Boolean);
begin
  if Value then
    FMode := FMode or $01
  else
    FMode := FMode and $FE;
end;

function TShrih500Printer.SetWideMode(Value: Boolean): Boolean;
begin
  WideMode := Value;
  Result := true;
end;

function TShrih500Printer.Write(AStr: string): boolean;
begin
  FDrv.StringForPrinting := AStr;
  if WideMode or BoldMode then
    FDrv.PrintWideString
  else
    FDrv.PrintString;
  Result := FDrv.ResultCode = 0;
  FErrDescr := FDrv.ResultCodeDescription;
end;

function TShrih500Printer.WriteLn(AStr: string): boolean;
begin
  Result := Write(AStr);
end;

end.
