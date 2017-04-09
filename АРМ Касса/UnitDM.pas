unit UnitDM;

interface

uses
  SysUtils, Classes, DB, Windows,
  Provider, DBClient, FIBDatabase,
  ADODB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  FireDAC.Phys.IBBase, MemTableDataEh, DataDriverEh, MemTableEh;

type
  TDM = class(TDataModule)
    DSDocs: TDataSource;
    DSDoctype: TDataSource;
    DSFood: TDataSource;
    DSStore: TDataSource;
    DSClients: TDataSource;
    DSMesures: TDataSource;
    DSConfPrn: TDataSource;
    DSTotalSail: TDataSource;
    DSTotalSailDetail: TDataSource;
    DSCompany: TDataSource;
    DSDepartments: TDataSource;
    DSWareHouse: TDataSource;
    DSkkm: TDataSource;
    DSFoodAll: TDataSource;
    DSBalances: TDataSource;
    DSCheck: TDataSource;
    pFIBDocs: TFDQuery;
    pFIBDocType: TFDQuery;
    pFIBFood: TFDQuery;
    FDConnection1: TFDConnection;
    Departments: TFDQuery;
    Organization: TFDQuery;
    Check: TFDQuery;
    CheckDetail: TFDQuery;
    pFIBDataSetClients: TFDQuery;
    pFIBMesures: TFDQuery;
    FoodAll: TFDQuery;
    WareHouse: TFDQuery;
    WareHouseAll: TFDQuery;
    TotalSail: TFDQuery;
    TotalSaleDetail: TFDQuery;
    KKM: TFDQuery;
    Balances: TFDQuery;
    OrganizationID: TFDAutoIncField;
    OrganizationDESCR: TStringField;
    OrganizationINN: TStringField;
    DepartmentsID: TIntegerField;
    DepartmentsDESCR: TStringField;
    DepartmentsKPP: TStringField;
    DepartmentsEXTKEY: TStringField;
    DepartmentsCOMPANY_ID: TIntegerField;
    pFIBDocsID: TFDAutoIncField;
    pFIBDocsREGISTERED: TSmallintField;
    pFIBDocsDOCTYPE_ID: TIntegerField;
    pFIBDocsCODE: TIntegerField;
    pFIBDocsCLIENT_ID: TIntegerField;
    pFIBDocsDEP_ID: TIntegerField;
    pFIBDocsCOMPANY_ID: TIntegerField;
    pFIBDocsWAREHOUSE_ID: TIntegerField;
    pFIBDocTypeID: TFDAutoIncField;
    pFIBDocTypeDESCR: TStringField;
    pFIBDocTypeCODE: TStringField;
    pFIBFoodID: TIntegerField;
    pFIBFoodDESCR: TStringField;
    pFIBFoodMES: TIntegerField;
    pFIBFoodDEP_ID: TSmallintField;
    pFIBFoodEXTKEY: TStringField;
    pFIBFoodGROUP_ID: TIntegerField;
    pFIBFoodEXPIRE: TIntegerField;
    CheckID: TFDAutoIncField;
    CheckDOC_ID: TIntegerField;
    CheckKKM_ID: TStringField;
    CheckTOTALSAIL_ID: TIntegerField;
    CheckCACHE_INCOME: TFloatField;
    CheckISCLOSED: TSmallintField;
    CheckDetailID: TFDAutoIncField;
    CheckDetailCHECK_ID: TIntegerField;
    CheckDetailFOOD_ID: TIntegerField;
    CheckDetailPRICE_SELL: TFloatField;
    CheckDetailQTY: TBCDField;
    CheckDetailWAREHOUSE_ID: TIntegerField;
    pFIBDataSetClientsID: TFDAutoIncField;
    pFIBDataSetClientsDESCR: TStringField;
    pFIBMesuresID: TFDAutoIncField;
    pFIBMesuresDESCR: TStringField;
    pFIBMesuresNAME: TStringField;
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
    WareHouseDEP_ID: TIntegerField;
    WareHouseAllID: TFDAutoIncField;
    WareHouseAllEXTKEY: TStringField;
    WareHouseAllDESCR: TStringField;
    WareHouseAllDEP_ID: TIntegerField;
    TotalSailID: TIntegerField;
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
    BalancesWAREHOUSE_ID: TIntegerField;
    BalancesFOOD_ID: TIntegerField;
    BalancesPRICE_SELL: TFloatField;
    BalancesQTY: TBCDField;
    TempQuery: TFDQuery;
    TempQuery1: TFDQuery;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    pFIBDocsClient: TStringField;
    pFIBDocsWarehouse: TStringField;
    pFIBFoodlupMes: TStringField;
    CheckDetailFood: TStringField;
    CheckDetailclcSumma: TCurrencyField;
    FoodAlllkMes: TStringField;
    BalancesMesure: TStringField;
    BalancesFood: TStringField;
    TempQuery2: TFDQuery;
    TempQuery2LASTCODE: TIntegerField;
    pFIBDocsDOCDATE: TSQLTimeStampField;
    FoodGroups: TFDQuery;
    DSFoodGroupsMem: TDataSource;
    MemTableEh1: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    MemTableEh1ID: TIntegerField;
    MemTableEh1DESCR: TStringField;
    MemTableEh1PARENT_ID: TIntegerField;
    CheckDISCOUNT: TBCDField;
    FDQueryReportByPayments: TFDQuery;
    CheckSALE_SUMMA: TBCDField;
    FDQueryReportByPaymentsPAYMENT_TYPE: TStringField;
    FDQueryReportByPaymentsSUMMA: TBCDField;
    CheckDISCOUNT_SUMMA: TBCDField;
    FDQueryReportByPaymentsDISCOUNT: TBCDField;
    CheckPAYMENT_TYPE_ID: TIntegerField;
    PaymentTypes: TFDQuery;
    PaymentTypesID: TIntegerField;
    PaymentTypesDESCR: TStringField;
    DSPaymentTypes: TDataSource;
    DiscountTypes: TFDQuery;
    DSDiscountTypes: TDataSource;
    CheckDISCOUNT_TYPES_ID: TIntegerField;
    DiscountTypesID: TIntegerField;
    DiscountTypesDESCR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure _TotalSailBeforeInsert(DataSet: TDataSet);
    procedure _TotalSaleDetailBeforeInsert(DataSet: TDataSet);
    procedure _pFIBFoodAfterPost(DataSet: TDataSet);
    procedure DSFoodGroupsDataChange(Sender: TObject; Field: TField);
    procedure WriteOffBeforeInsert(DataSet: TDataSet);
    procedure WriteOffDetailBeforeInsert(DataSet: TDataSet);
    procedure _TotalSaleDetailCalcFields(DataSet: TDataSet);
    procedure _pFIBDocsAfterInsert(DataSet: TDataSet);
    procedure _CheckDetailCalcFields(DataSet: TDataSet);
    procedure _CheckBeforeInsert(DataSet: TDataSet);
    procedure _CheckDetailBeforeInsert(DataSet: TDataSet);
    procedure _CheckDetailAfterDelete(DataSet: TDataSet);
    procedure _BalancesBeforeOpen(DataSet: TDataSet);
    procedure BalancesBeforeOpen(DataSet: TDataSet);
    procedure DSFoodGroupsMemDataChange(Sender: TObject; Field: TField);
    procedure CheckNewRecord(DataSet: TDataSet);
    procedure FDConnection1BeforeConnect(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    ActiveFormHandle:hwnd;
    CanPerformChanges:boolean;
    period_id:Integer;
    RoundDiscountTo:Integer;
    constructor Create(AOwner:TComponent); override;
    procedure PostMasterDS(DS:TDataSet);
    procedure FillSQL;
  end;

var
  DM: TDM;

implementation

uses ShellAPI, dialogs, Forms, UnitMain, IniFiles, frmCheck,
     BasePassWord, Controls, uSettings;

{$R *.dfm}



procedure TDM._BalancesBeforeOpen(DataSet: TDataSet);
begin
  FoodAll.Refresh;
end;

procedure TDM._CheckBeforeInsert(DataSet: TDataSet);
begin
  PostMasterDS(DataSet);
  Balances.Active := true;
  Balances.Refresh;
  //Balances.IndexFieldNames:='food';
  Balances.First;

  //DM.pFIBDocType.Locate('code', 'CHECK', [loCaseInsensitive]);
  with pFIBDocs do
  begin
     Edit;
     FieldByName('doctype_id').AsInteger:=4;
     Post;
  end;
end;

procedure TDM._CheckDetailAfterDelete(DataSet: TDataSet);
begin
  SendNotifyMessage(ActiveFormHandle,WM_Recalc,0,0);
end;

procedure TDM._CheckDetailBeforeInsert(DataSet: TDataSet);
begin
  PostMasterDS(DataSet);
end;

procedure TDM._CheckDetailCalcFields(DataSet: TDataSet);
var
  qty, price:Currency;
begin
  if DataSet.State=dsCalcFields then
  with DataSet do
    begin
      qty:=FieldByName('qty').AsCurrency;
      price:=FieldByName('price_sell').AsCurrency;
      FieldByName('clcSumma').AsCurrency:=qty*price;
    end;
end;

procedure TDM.BalancesBeforeOpen(DataSet: TDataSet);
begin
  DM.Balances.ParamByName('id').AsInteger := DM.Departments.FieldByName('id').AsInteger;
end;

procedure TDM.CheckNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('payment_type_id').AsInteger := 1;
  DataSet.FieldByName('discount_types_id').AsInteger := 1;
  DataSet.FieldByName('discount').AsInteger := 0;
end;

constructor TDM.Create(AOwner: TComponent);
begin
  inherited;
  CanPerformChanges:=true;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
//    ServerName:string;
    Obj:TComponent;
    i:Integer;
  Res: Boolean;

//    PF:TBasePasswordDlg;
begin

    //AboutBox.ProgressBar1.Position:=0;
    //ShowMessage(pFIBDatabase1.DBName);
    FDConnection1.Open;
    FillSQL;
    for i:=0 to DM.ComponentCount-1 do
       begin
       Obj:=DM.Components[i];
       if (Obj is TFDDataSet) or (Obj is TMemTableEh) then
        if Obj<>Balances then
         begin
         TDataSet(Obj).Active:=true;
         end;
        //AboutBox.ProgressBar1.Position:=((i+1)*100) div (DM.ComponentCount);
        end;
   //   period_id:=0;

  //Balances.Close;

  TempQuery.Prepare;
end;


procedure TDM.DSFoodGroupsDataChange(Sender: TObject; Field: TField);
begin
  if Balances.Active then
  begin
    
  end;
end;

procedure TDM.DSFoodGroupsMemDataChange(Sender: TObject; Field: TField);
begin
  if Field=nil then
    begin
    if Balances.Active then
      begin
      Balances.Close;
      Balances.ParamByName('GRPID').AsInteger := MemTableEh1.FieldByName('ID').AsInteger;
      Balances.Open;
      end;
    end;
end;

procedure TDM.FDConnection1BeforeConnect(Sender: TObject);
var
  ExePath:string;
begin

  FDConnection1.Params.Database:=Settings.DBParams.DBName;
  if FileExists(ExePath+'\fbclient.dll') then
    FDPhysFBDriverLink1.VendorLib:=ExePath+'\fbclient.dll'
  else
    FDPhysFBDriverLink1.VendorLib:='gds32.dll';
end;

procedure TDM.FillSql;
var
  Path: string;
begin
  Path := ExtractFilePath(Application.ExeName) + 'config\sqls\';
  with DM.Balances do
  begin
    SQL.LoadFromFile(Path + 'balances\select.sql');
  end;
end;

procedure TDM._pFIBDocsAfterInsert(DataSet: TDataSet);
begin
  with DataSet do
    begin
    FieldByName('company_id').Value:=Organization.FieldByName('id').Value;
    FieldByName('dep_id').Value:=Departments.FieldByName('id').Value;
    FieldByName('warehouse_id').Value:=WareHouse.FieldByName('id').Value;
    FieldByName('docdate').AsDateTime:=Now;
   // pFIBDocType.Locate('code', 'CHECK', [loCaseInsensitive]);
    FieldByName('doctype_id').AsInteger:=4;

    DM.TempQuery2.Refresh;
    DM.pFIBDocs.FieldByName('CODE').AsInteger := DM.TempQuery2.FieldByName('LASTCODE').AsInteger + 1;
    end;
end;

procedure TDM._pFIBFoodAfterPost(DataSet: TDataSet);
begin
  FoodAll.Refresh;
end;

procedure TDM.PostMasterDS(DS: TDataSet);
begin
  if Assigned(DS.DataSource) then
    if DS.DataSource.DataSet.State=dsInsert then DS.DataSource.DataSet.Post;
end;

procedure TDM._TotalSailBeforeInsert(DataSet: TDataSet);
begin
  PostMasterDS(DataSet);
end;

procedure TDM._TotalSaleDetailBeforeInsert(DataSet: TDataSet);
begin
  PostMasterDS(DataSet);
end;

procedure TDM._TotalSaleDetailCalcFields(DataSet: TDataSet);
var
  summa:Currency;
  margin:Currency;
  Ssum:Currency;
begin
  with DataSet do
    begin
      summa:= FieldByName('summa').AsCurrency;
      margin:=FieldByName('MARGIN_SUM').AsCurrency;
      Ssum:=summa-margin;
      if Ssum=0 then
        FieldByName('MARGIN_PERCENT').AsCurrency:=0
      else
        FieldByName('MARGIN_PERCENT').AsCurrency:=(summa/Ssum-1)*100;
    end;
end;

procedure TDM.WriteOffBeforeInsert(DataSet: TDataSet);
begin
  PostMasterDS(DataSet);
end;

procedure TDM.WriteOffDetailBeforeInsert(DataSet: TDataSet);
begin
  PostMasterDS(DataSet);
end;

end.
