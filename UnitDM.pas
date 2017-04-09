unit UnitDM;

interface

uses
  SysUtils, Classes, frxDesgn, frxClass, DB, frxExportHTML,  pFIBStoredProc, FIBQuery,
  pFIBQuery, Messages,
  Provider, DBClient,  frxChBox, frxGradient,  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Phys.IBBase, EhLibFireDAC, frxChart,
  frxCross, frxDBSet, frxDCtrl, frxIBXComponents, IBX.IBDatabase;

const
  LM_DATACHANGE = WM_USER + 100;
  LM_BEFORINSERT = WM_USER + 102;
  LM_AFTERPOST = WM_USER + 103;

type

  TLMDataChange=packed record
    Msg: Cardinal;
    DataSet: Pointer;
    OpParam: Cardinal;
    Result: Longint;
  end;

  TLMBeforInsert=packed record
    Msg: Cardinal ;
    DataSet: Pointer;
    OpParam: Cardinal;
    Result: Longint;
  end;

  TDM = class(TDataModule)
    DSBrand: TDataSource;
    DSCalc: TDataSource;
    DSDocs: TDataSource;
    DSDoctype: TDataSource;
    DSFood: TDataSource;
    DSReceiptDetail: TDataSource;
    DSClients: TDataSource;
    DSMesures: TDataSource;
    DSInterchange: TDataSource;
    DSConfPrn: TDataSource;
    DSOperations: TDataSource;
    DSFoodGroups: TDataSource;
    DSTotalSail: TDataSource;
    DSTotalSailDetail: TDataSource;
    DSCompany: TDataSource;
    DSDepartments: TDataSource;
    DSWareHouse: TDataSource;
    DSkkm: TDataSource;
    DSFoodAll: TDataSource;
    DSBalances: TDataSource;
    DSFoodHistory: TDataSource;
    DSFoodHistoryValues: TDataSource;
    DSWriteOff: TDataSource;
    DSWriteOffDetail: TDataSource;
    DSWriteOffReasons: TDataSource;
    frxReport1: TfrxReport;
    DSTransfer: TDataSource;
    DSTransferDetail: TDataSource;
    DSFoodDep: TDataSource;
    DSBalancesDetail: TDataSource;
    DSDocsAll: TDataSource;
    frxGradientObject1: TfrxGradientObject;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    DSClientFoodPrice: TDataSource;
    FDConnection1: TFDConnection;
    Docs: TFDQuery;
    DocsID: TFDAutoIncField;
    DocsREGISTERED: TSmallintField;
    DocsDOCTYPE_ID: TIntegerField;
    DocsCODE: TIntegerField;
    DocsDOCDATE: TSQLTimeStampField;
    DocsCLIENT_ID: TIntegerField;
    DocsDEP_ID: TIntegerField;
    DocsCOMPANY_ID: TIntegerField;
    DocsWAREHOUSE_ID: TIntegerField;
    DocsTAG1: TIntegerField;
    DocsTAG2: TIntegerField;
    DocsSUMMA: TFloatField;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    DocType: TFDQuery;
    DocTypeDESCR: TStringField;
    DocTypeCODE: TStringField;
    TrRead: TFDTransaction;
    TrWrite: TFDTransaction;
    DocTypeid: TIntegerField;
    Calc: TFDQuery;
    CalcID: TFDAutoIncField;
    CalcBRAND_ID: TIntegerField;
    CalcFOOD_ID: TIntegerField;
    CalcQTY: TBCDField;
    Brand: TFDQuery;
    BrandDESCR: TStringField;
    BrandMES: TIntegerField;
    BrandEXTKEY: TStringField;
    BrandGROUP_ID: TIntegerField;
    BrandEXPIRE: TIntegerField;
    BrandWGT: TBCDField;
    Departments: TFDQuery;
    DepartmentsDESCR: TStringField;
    DepartmentsKPP: TStringField;
    DepartmentsEXTKEY: TStringField;
    DepartmentsCOMPANY_ID: TIntegerField;
    Company: TFDQuery;
    CompanyDESCR: TStringField;
    CompanyINN: TStringField;
    BrandDep_ID: TIntegerField;
    Food: TFDQuery;
    BrandUpdateSQL: TFDUpdateSQL;
    FoodGroups: TFDQuery;
    FoodGroupsDESCR: TStringField;
    FoodGroupsCODE: TStringField;
    FoodGroupsPARENT_ID: TIntegerField;
    FoodGroupsLFT: TIntegerField;
    FoodGroupsRGT: TIntegerField;
    FoodDESCR: TStringField;
    FoodMES: TIntegerField;
    FoodDEP_ID: TSmallintField;
    FoodEXTKEY: TStringField;
    FoodGROUP_ID: TIntegerField;
    FoodEXPIRE: TIntegerField;
    Operations: TFDQuery;
    RecieptDetail: TFDQuery;
    Transfer: TFDQuery;
    TransferDetail: TFDQuery;
    FoodDep: TFDQuery;
    ConfPrn: TFDQuery;
    Clients: TFDQuery;
    Mesures: TFDQuery;
    DocsAll: TFDQuery;
    InterChange: TFDQuery;
    OperationsID: TIntegerField;
    OperationsDESCR: TStringField;
    RecieptDetailID: TFDAutoIncField;
    RecieptDetailDOC_ID: TIntegerField;
    RecieptDetailFOOD_ID: TIntegerField;
    RecieptDetailPRICE: TBCDField;
    RecieptDetailQTY: TBCDField;
    RecieptDetailSUMMA: TBCDField;
    TransferDOC_ID: TIntegerField;
    TransferTARGET_DEPARTMENT: TIntegerField;
    TransferTARGET_WAREHOUSE: TIntegerField;
    TransferDetailID: TFDAutoIncField;
    TransferDetailHOST_ID: TIntegerField;
    TransferDetailFOOD_ID: TIntegerField;
    TransferDetailPRICE: TFloatField;
    TransferDetailQTY: TBCDField;
    TransferDetailINVOICE_ID: TIntegerField;
    TransferDetailSUMMA: TFloatField;
    TransferDetailTARGET_FOOD_ID: TIntegerField;
    TransferDetailTARGET_QTY: TBCDField;
    ConfPrnID: TFDAutoIncField;
    ConfPrnDOCTYPE_ID: TIntegerField;
    ConfPrnREPORTFILE: TStringField;
    ConfPrnDESCR: TStringField;
    ClientsID: TFDAutoIncField;
    ClientsDESCR: TStringField;
    MesuresID: TFDAutoIncField;
    MesuresDESCR: TStringField;
    MesuresNAME: TStringField;
    DocsAllID: TFDAutoIncField;
    DocsAllDESCR: TStringField;
    InterChangeID: TFDAutoIncField;
    InterChangeFOOD_ID: TIntegerField;
    InterChangeQTY: TBCDField;
    InterChangeCALC_ID: TIntegerField;
    DocsUpdateSQL: TFDUpdateSQL;
    FoodDepID: TIntegerField;
    FoodDepDESCR: TStringField;
    FoodDepMES: TIntegerField;
    FoodDepDEP_ID: TSmallintField;
    FoodDepEXTKEY: TStringField;
    FoodDepGROUP_ID: TIntegerField;
    FoodDepEXPIRE: TIntegerField;
    FoodDepWGT: TBCDField;
    FoodAll: TFDQuery;
    WareHouse: TFDQuery;
    WareHouseAll: TFDQuery;
    TotalSail: TFDQuery;
    TotalSaleDetail: TFDQuery;
    KKM: TFDQuery;
    Balances: TFDQuery;
    FoodHistory: TFDQuery;
    FoodHistoryValues: TFDQuery;
    LookUpWareHouse: TFDQuery;
    FoodAllID: TIntegerField;
    FoodAllDESCR: TStringField;
    FoodAllMES: TIntegerField;
    FoodAllDEP_ID: TSmallintField;
    FoodAllEXTKEY: TStringField;
    FoodAllGROUP_ID: TIntegerField;
    FoodAllEXPIRE: TIntegerField;
    WareHouseID: TFDAutoIncField;
    WareHouseEXTKEY: TStringField;
    WareHouseDESCR: TStringField;
    WareHouseSECTION: TSmallintField;
    WareHouseDEP_ID: TIntegerField;
    WareHouseAllID: TFDAutoIncField;
    WareHouseAllEXTKEY: TStringField;
    WareHouseAllDESCR: TStringField;
    WareHouseAllDEP_ID: TIntegerField;
    TotalSailDOC_ID: TIntegerField;
    TotalSailDATESTART: TSQLTimeStampField;
    TotalSailDATEFINAL: TSQLTimeStampField;
    TotalSailIS_MANUAL: TSmallintField;
    TotalSailKKM_ID: TIntegerField;
    TotalSaleDetailID: TFDAutoIncField;
    TotalSaleDetailTOTALSAIL_ID: TIntegerField;
    TotalSaleDetailFOOD_ID: TIntegerField;
    TotalSaleDetailQTY: TBCDField;
    TotalSaleDetailPRICE: TFloatField;
    TotalSaleDetailPRICE_SELL: TFloatField;
    TotalSaleDetailSUMMA: TFloatField;
    TotalSaleDetailMARGIN_SUM: TFloatField;
    KKMSERIAL: TStringField;
    KKMDESCR: TStringField;
    KKMKKMTYPE_ID: TIntegerField;
    BalancesFOOD_ID: TIntegerField;
    BalancesPRICE: TFloatField;
    BalancesQTY: TBCDField;
    FoodHistoryID: TFDAutoIncField;
    FoodHistoryTBL_NAME: TStringField;
    FoodHistoryFLD_NAME: TStringField;
    FoodHistoryOBJID: TIntegerField;
    FoodHistoryValuesID: TFDAutoIncField;
    FoodHistoryValuesHISTORY_ID: TIntegerField;
    FoodHistoryValuesREG_DATE: TSQLTimeStampField;
    LookUpWareHouseID: TFDAutoIncField;
    LookUpWareHouseDESCR: TStringField;
    LookUpWareHouseDEP_ID: TIntegerField;
    WriteOff: TFDQuery;
    WriteOffDetail: TFDQuery;
    WriteOffReasons: TFDQuery;
    BalancesDetail: TFDQuery;
    WriteOffID: TFDAutoIncField;
    WriteOffREASON_ID: TIntegerField;
    WriteOffDOC_ID: TIntegerField;
    WriteOffReasonsID: TIntegerField;
    WriteOffReasonsDESCR: TStringField;
    ClientFoodPrice: TFDQuery;
    ClientFoodPriceID: TFDAutoIncField;
    ClientFoodPriceCLIENT_ID: TIntegerField;
    ClientFoodPriceFOOD_ID: TIntegerField;
    ClientFoodPriceSTARTDATE: TSQLTimeStampField;
    ClientFoodPriceSELL_PRICE: TFloatField;
    WriteOffDetailID: TFDAutoIncField;
    WriteOffDetailDETAIL_ID: TIntegerField;
    WriteOffDetailFOOD_ID: TIntegerField;
    WriteOffDetailPRICE: TFloatField;
    WriteOffDetailQTY: TBCDField;
    WriteOffDetailINVOICE_ID: TIntegerField;
    WriteOffDetailSUMMA: TFloatField;
    BalancesDetailWAREHOUSE_ID: TIntegerField;
    BalancesDetailEFFECT_DATE: TSQLTimeStampField;
    BalancesDetailDOC_ID: TIntegerField;
    BalancesDetailINVOICE_ID: TIntegerField;
    BalancesDetailQTYINCOME: TBCDField;
    BalancesDetailQTYOUTCOME: TBCDField;
    BalancesDetailREST: TBCDField;
    CalclkFood: TStringField;
    BrandlkMES: TStringField;
    TempQuery: TFDQuery;
    ConfPrnDFLT: TIntegerField;
    FoodID: TFDAutoIncField;
    CompanyID: TFDAutoIncField;
    DepartmentsID: TFDAutoIncField;
    TransferID: TFDAutoIncField;
    FoodGroupsID: TFDAutoIncField;
    TotalSailID: TFDAutoIncField;
    RecieptDetailfood: TStringField;
    FoodlkMES: TStringField;
    InterChangeMES: TIntegerField;
    InterChangelkMes: TStringField;
    CalcMES: TIntegerField;
    CalclkMES: TStringField;
    BrandID: TFDAutoIncField;
    FoodHistoryValuesFVALUE: TStringField;
    Checks: TFDQuery;
    ChecksID: TFDAutoIncField;
    ChecksDOC_ID: TIntegerField;
    ChecksCACHE_INCOME: TFloatField;
    ChecksSUMMA: TFloatField;
    DSChecks: TDataSource;
    frxChartObject1: TfrxChartObject;
    pFIBSPDistrPeriod: TFDStoredProc;
    pFIBSPDistrLine: TFDStoredProc;
    BalanceslkFood: TStringField;
    DocslkClient: TStringField;
    frxIBXComponents1: TfrxIBXComponents;
    frxDialogControls1: TfrxDialogControls;
    IBReportDatabase: TIBDatabase;
    IBRepTr: TIBTransaction;
    Inventory: TFDQuery;
    DSInventory: TDataSource;
    InventoryID: TFDAutoIncField;
    InventoryDOC_ID: TIntegerField;
    InventoryFOOD_ID: TIntegerField;
    InventoryQTY: TBCDField;
    InventoryQTY_FACT: TBCDField;
    InventoryPRICE: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DSRecieptDetailChange(Sender: TObject; Fld: TField);
    procedure DSDataChange(Sender: TObject; Field: TField);
    procedure BeforeInsert(DataSet: TDataSet);
    procedure FoodHistoryValuesBeforeInsert(DataSet: TDataSet);
    procedure AfterPost(DataSet: TDataSet);
    procedure TotalSaleDetailCalcFields(DataSet: TDataSet);
    procedure DSCalcStateChange(Sender: TObject);
    procedure DocsNewRecord(DataSet: TDataSet);
    procedure FoodNewRecord(DataSet: TDataSet);
    procedure FoodAfterInsert(DataSet: TDataSet);
    procedure FoodHistoryValuesBeforePost(DataSet: TDataSet);
    procedure FoodHistoryAfterInsert(DataSet: TDataSet);
    procedure FoodHistoryBeforePost(DataSet: TDataSet);
    procedure FoodHistoryValuesAfterInsert(DataSet: TDataSet);
    procedure FDConnection1BeforeConnect(Sender: TObject);
    procedure DocsBeforePost(DataSet: TDataSet);
    procedure MenuDetailNewRecord(DataSet: TDataSet);
    procedure DSBalancesDataChange(Sender: TObject; Field: TField);
    procedure IBReportDatabaseBeforeConnect(Sender: TObject);

  private
    { Private declarations }
    Fperiod_id: Integer;
    FEndPeriod: TDateTime;
    FBeginPeriod: TDateTime;
    procedure Setperiod_id(const Value: Integer);
    procedure DoDataChange(Msg: Cardinal; DataSetPtr: Pointer;
      LParam: Integer);
    procedure SetBeginPeriod(const Value: TDateTime);
    procedure SetEndPeriod(const Value: TDateTime);
  public
    { Public declarations }
    Temp: TField;
    ExePath: string;
    CanPerformChanges: boolean;

    constructor Create(AOwner: TComponent); override;
    procedure RefreshParameter(ParamName: string; Value: array of Variant; DSName:string);
    procedure PostMasterDS(DS: TDataSet);
    procedure FillSql;
    procedure NotifyDataChange(Msg: Cardinal; DataSetPtr: Pointer;
      LParam: Integer);
    procedure FillInventory(OnDate:TDateTime);
    property period_id: Integer read Fperiod_id write Setperiod_id;
    property BeginPeriod: TDateTime read FBeginPeriod write SetBeginPeriod;
    property EndPeriod: TDateTime read FEndPeriod write SetEndPeriod;
  end;

var
  DM: TDM;

implementation

uses ABOUT, ShellAPI, dialogs, Windows, Forms, MainUnit,
  IniFiles, ShlObj, VarUtils, System.StrUtils, fs_iinterpreter;
{$R *.dfm}

procedure Log(LogMsg:string);
var
  F:Text;
  Path:string;
  S:string;
{ TFBServerLibrary }

begin
  Path:=DM.ExePath+'\log.txt';
  AssignFile(F, Path);
  if not FileExists(Path) then
    begin
    Rewrite(F);
    end;
  Append(F);
  Writeln(F, DateTimeToStr(Now)+': '+LogMsg);
  Flush(F);
  CloseFile(F);
end;

constructor TDM.Create(AOwner: TComponent);
begin
  inherited;
  CanPerformChanges := true;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  ServerName: string;
  i: Integer;
  Fl: TIniFile;
  AppDataPath: array [0 .. MAX_PATH] of Char;
  ADPath: string;
begin

  AboutBox.sGauge1.Progress := 0;
  FoodGroups.Tag:=0;
  FDConnection1.Open;
  FillSql;
  for i := 0 to Self.ComponentCount- 1  do
    if Self.Components[i] is TFDAdaptedDataSet then
      begin
        try
          (Self.Components[i] as TFDAdaptedDataSet).Open;
        except

        end;
        { Obj:=DM.Components[i];
          if Obj is TpFIBDataSet then
          if not Assigned(TpFIBDataSet(Obj).DataSource) then
          if (TpFIBDataSet(Obj)<>Balances) and (TpFIBDataSet(Obj)<>FoodDep) then
          begin
          TpFIBDataSet(Obj).Active:=true;
          end; }
        AboutBox.sGauge1.Suffix:='% '+Self.Components[i].Name;
        AboutBox.sGauge1.Progress := ((i + 1) * 100) div (FDConnection1.DataSetCount);
      end;
  Balances.Close;
  //sSkinManager1.SkinDirectory := ExePath + '\skins';
  SHGetSpecialFolderPath(0, AppDataPath, CSIDL_LOCAL_APPDATA, true);
  ADPath := WideCharToString(AppDataPath);
  Fl := TIniFile.Create(ADPath + '\conf.ini');
//  if Fl.ValueExists('Skins', 'SkinName') then
//    sSkinManager1.SkinName := Fl.ReadString('Skins', 'SkinName', '');
//  sSkinManager1.Active := true;

  //DM.frxReport1.Script.AddForm(DM);
end;

procedure TDM.DSBalancesDataChange(Sender: TObject; Field: TField);
begin
  if Field=nil then
    DSFood.DataSet.Locate('id', (Sender as TDataSource).DataSet.FieldByName('food_id').Value, []);
end;

procedure TDM.DSCalcStateChange(Sender: TObject);
begin
  if (TDataSource(Sender).DataSet.State = dsInsert) and CanPerformChanges then
    begin
    //CanPerformChanges:=false;
    //NotifyDataChange(LM_BEFORINSERT, Pointer(Sender), 0);
    //CanPerformChanges:=true;
    end;
end;

procedure TDM.DSDataChange(Sender: TObject; Field: TField);
var
  LPar:Integer;
  DS:TDataSet;
begin
  DS:=TDataSource(Sender).DataSet;
    if DS.FieldByName('id').AsInteger=DS.Tag then
      Exit
    else
      DS.Tag := DS.FieldByName('id').AsInteger;
  LPar:=Integer(Pointer(Field));
 // DoDataChange(LM_DATACHANGE, DS, LPar);
  NotifyDataChange(LM_DATACHANGE, DS, LPar);
end;

procedure TDM.FDConnection1BeforeConnect(Sender: TObject);
var
  F: TIniFile;
begin
  ExePath := ExtractFileDir(Application.ExeName);
  // ExePath:='\\PROGRAMMIST\CookAssistant';
  if FDConnection1.Connected then
    FDConnection1.Close;
  F := TIniFile.Create(ExePath + '\conf.ini');
  // pFIBDatabase1.DBName:=ExePath+'\BASE\MAIN.FDB';
  FDConnection1.Params.Database := F.ReadString('DBPARAM', 'DBName', '');
  if FileExists(ExePath + '\fbclient.dll') then
    FDPhysFBDriverLink1.VendorLib := ExePath + '\fbclient.dll'
  else
    FDPhysFBDriverLink1.VendorLib := 'gds32.dll';
end;

procedure TDM.FillInventory(OnDate: TDateTime);
var
  docid:Integer;
begin
  docid:=DSDocs.DataSet.FieldByName('ID').AsInteger;
  with TempQuery do
    begin
    Close;
    SQL.Text := 'delete from inventory where doc_id=:docid';
    ParamByName('docid').AsInteger := docid;
    ExecSQL;
    end;
    Inventory.Refresh;
    Inventory.DisableControls;
    Balances.DisableControls;
    try
      if Balances.Active then  Balances.Close;
      Balances.ParamByName('_GROUPID').AsInteger := 1;
      Balances.ParamByName('WHSID').AsInteger := Docs.FieldByName('warehouse_id').AsInteger;
      Balances.Open;
      Balances.First;
      while not Balances.Eof do
        with Inventory do
        begin
        Append;
        FieldByName('food_id').AsInteger := Balances.FieldByName('food_id').AsInteger;
        FieldByName('price').AsCurrency := Balances.FieldByName('price').AsCurrency;
        FieldByName('qty').AsFloat := Balances.FieldByName('qty').AsFloat;
        FieldByName('qty_fact').AsFloat := Balances.FieldByName('qty').AsFloat;
        Post;
        Balances.Next;
        end;
    finally
      Inventory.EnableControls;
      Balances.EnableControls;
    end;
end;

procedure TDM.FillSql;
var
  Path: string;
begin
  Path := ExtractFilePath(Application.ExeName) + 'config\sqls\';
//  with DM.Balances do
//  begin
//    Active := false;
//    SQL.LoadFromFile(Path + 'balances\select.sql');
//    Active := true;
//  end;

end;

procedure TDM.FoodAfterInsert(DataSet: TDataSet);
begin
  DSFoodAll.DataSet.Close;
  DSFoodAll.DataSet.Open;
end;

procedure TDM.FoodHistoryAfterInsert(DataSet: TDataSet);
begin
  //DataSet.FieldByName('TBL_NAME').AsString := 'FOOD';
  //DataSet.FieldByName('FLD_NAME').AsString := 'FOOD';
end;

procedure TDM.FoodHistoryBeforePost(DataSet: TDataSet);
begin
  with DataSet as TFDDataSet do
    begin
    FieldByName('FLD_NAME').AsString :=  ParamByName('FLD').AsString;
    FieldByName('TBL_NAME').AsString :=  ParamByName('TBL').AsString;
    end;
end;

procedure TDM.FoodHistoryValuesAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('REG_DATE').AsDateTime := Date;
end;

procedure TDM.FoodHistoryValuesBeforeInsert(DataSet: TDataSet);
begin
  if FoodHistory.RecordCount = 0 then
  begin
    FoodHistory.Append;
    FoodHistory.Post;
  end;
end;


procedure TDM.FoodHistoryValuesBeforePost(DataSet: TDataSet);
begin
  DataSet.FieldByName('FVALUE').AsString := ReplaceStr(DataSet.FieldByName('FVALUE').AsString, ',', '.');
end;

procedure TDM.FoodNewRecord(DataSet: TDataSet);
begin
  Food.FieldByName('dep_id').AsInteger := Food.ParamByName('pardepid').AsInteger;
end;

procedure TDM.IBReportDatabaseBeforeConnect(Sender: TObject);
var
  F: TIniFile;
begin
  ExePath := ExtractFileDir(Application.ExeName);
  F := TIniFile.Create(ExePath + '\conf.ini');
  try
    IBReportDatabase.DatabaseName := F.ReadString('DBPARAM', 'DBName', '');
  finally
    F.Free;
  end;

end;

procedure TDM.MenuDetailNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldValues['PERIOD_ID'] := period_id;
  DataSet.FieldValues['doc_id'] := DM.DSDocs.DataSet.FieldValues['id'];
end;

procedure TDM.RefreshParameter(ParamName: string; Value: array of Variant; DSName:string);
var
  DSet: TFDQuery;
  par: TFDParam;
  i, j: Integer;
  flg:boolean;
  ParList:TStringList;
  ParName:string;

  procedure SetParam;
  begin
    case TVarData(Value[j]).VType  of
      varDate: par.AsDateTime := Value[j];
    else
      par.Value:=Value[j]
    end;
  end;

begin
  ParList:=TStringList.Create;
  ParList.Delimiter:=',';
  ParList.DelimitedText:=ParamName;
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TFDQuery) then
    begin
      DSet := TFDQuery(Components[i]);
      flg:=false;
      if DSName<>DSet.Name then
      for j :=0  to  ParList.Count-1 do
        begin
          par := DSet.FindParam(ParList[j]);
          if Assigned(par) then
          begin
            SetParam;
            flg:=true;
          end;
        end;
      if flg and DSet.Active then
        DSet.Refresh;
    end;
end;

procedure TDM.DocsBeforePost(DataSet: TDataSet);
begin
if DataSet.FieldByName('code').IsNull then
  DataSet.FieldByName('code').AsInteger := FDConnection1.ExecSQLScalar('select coalesce(max(code), 0)+1 from docs where docs.doctype_id='+DataSet.FieldByName('doctype_id').AsString);
end;

procedure TDM.DocsNewRecord(DataSet: TDataSet);
begin
  Docs.FieldByName('dep_id').AsInteger := DSDepartments.DataSet.FieldByName('id').AsInteger;
  Docs.FieldByName('company_id').AsInteger := DSCompany.DataSet.FieldByName('id').AsInteger;
  Docs.FieldByName('docdate').AsDateTime := Now;
end;

procedure TDM.DoDataChange(Msg: Cardinal; DataSetPtr: Pointer;
      LParam: Integer);
var
  DataSet: TFDDataSet;
begin
  DataSet := TFDDataSet(DataSetPtr);
  if FoodGroups.Equals(DataSet) then
  begin
    RefreshParameter('_groupid', [FoodGroups.FieldValues['id']], DataSet.Name);
  end
  else if Departments.Equals(DataSet) then
  begin
    RefreshParameter('pardepid', [Departments.FieldValues['id']], DataSet.Name);
  end
  else if WareHouse.Equals(DataSet) then
  begin
    RefreshParameter('_whsid', [WareHouse.FieldValues['id']], DataSet.Name);
  end
  else if Docs.Equals(DataSet) then
  begin
    RefreshParameter('_docid', [Docs.FieldValues['id']], DataSet.Name);
  end
end;

procedure TDM.NotifyDataChange(Msg: Cardinal; DataSetPtr: Pointer;
  LParam: Integer);
var
  aMessage: TMessage;
  i: Integer;
begin
  aMessage.Msg := Msg;
  aMessage.WParam := Integer(DataSetPtr);
  aMessage.LParam := LParam;
  DoDataChange(aMessage.Msg, Pointer(aMessage.WParam), aMessage.LParam);
  if Assigned(Application.MainForm) then
//    for i := 0 to Screen.FormCount - 1 do
//      Screen.Forms[i].Perform(aMessage.Msg, aMessage.WParam, aMessage.LParam);
    FormMain.Perform(aMessage.Msg, aMessage.WParam, aMessage.LParam);
end;

procedure TDM.AfterPost(DataSet: TDataSet);
begin
  if Docs.Equals(DataSet) then
    DocsAll.Refresh
  else if Food.Equals(DataSet) then
    FoodAll.Refresh
  else if FoodDep.Equals(DataSet) then
    FoodAll.Refresh
  else if Brand.Equals(DataSet) then
    FoodAll.Refresh
  else if WareHouse.Equals(DataSet) then
    begin
    WareHouseAll.Refresh;
    LookUpWareHouse.Refresh;
    end
  ;
end;

procedure TDM.DSRecieptDetailChange(Sender: TObject; Fld: TField);
var
  FldName: string;
begin
  if Assigned(Fld) and CanPerformChanges then
  with (Sender as TDataSource).DataSet do
  begin
    CanPerformChanges := false;
    FldName := Fld.FieldName;
    if FldName = 'PRICE' then
    begin
      FieldByName('SUMMA').AsCurrency := Fld.AsCurrency *
        FieldByName('QTY').AsCurrency
    end
    else if FldName = 'QTY' then
    begin
      FieldByName('SUMMA').AsCurrency := FieldByName('PRICE').AsCurrency *
        Fld.AsCurrency
    end
    else if FldName = 'SUMMA' then
      if FieldByName('QTY').AsCurrency <> 0 then
      begin
        FieldByName('PRICE').AsCurrency :=
          Fld.AsCurrency / FieldByName('QTY').AsCurrency
      end;
    CanPerformChanges := true;
  end;

end;

procedure TDM.PostMasterDS(DS: TDataSet);
begin
  with DS as TFDDataSet do
  if Assigned(MasterSource) then
    with MasterSource.DataSet do
    begin
    if RecordCount=0 then
      if State in dsEditModes then
        Post
      else
        Append;
    if State in dsEditModes then
      Post;
    end;
end;

procedure TDM.SetBeginPeriod(const Value: TDateTime);
begin
  if FBeginPeriod<>Value then
    begin
    FBeginPeriod := Value;
    RefreshParameter('BD', [Value], '');
    end;
end;

procedure TDM.SetEndPeriod(const Value: TDateTime);
begin
  if FEndPeriod<>Value then
    begin
    FEndPeriod := Value;
    RefreshParameter('ED', [Value], '');
    end;
end;

procedure TDM.Setperiod_id(const Value: Integer);
begin
end;

procedure TDM.BeforeInsert(DataSet: TDataSet);
begin
  PostMasterDS(DataSet);
end;

procedure TDM.TotalSaleDetailCalcFields(DataSet: TDataSet);
var
  summa: Currency;
  margin: Currency;
  Ssum: Currency;
begin
  with DataSet do
  begin
    summa := FieldByName('summa').AsCurrency;
    margin := FieldByName('MARGIN_SUM').AsCurrency;
    Ssum := summa - margin;
    if Abs(Ssum) < 1.0e-3 then
      FieldByName('MARGIN_PERCENT').AsCurrency := 0
    else
      FieldByName('MARGIN_PERCENT').AsCurrency := (summa / Ssum - 1) * 100;
  end;
end;

end.
