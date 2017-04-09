unit UnitTransfer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, Mask, sMaskEdit,
  sCustomComboEdit, sTooledit, sDBDateEdit, StdCtrls, DBCtrls, sDBEdit,
  sGroupBox, sDBLookupComboBox, sDBNavigator, GridsEh, DBGridEh, ToolWin,
  ComCtrls, Buttons, sBitBtn, ExtCtrls, sPanel, sSplitter, DB, FIBDataSet,
  pFIBDataSet, EhLibFIB, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, System.Actions, DBAxisGridsEh, DynVarsEh,
  EhLibVCL, DBCtrlsEh;

type
  TFormTransfer = class(TForm)
    sSplitter1: TsSplitter;
    ToolPanel: TsPanel;
    BitBtnOK: TsBitBtn;
    BitBtnCancel: TsBitBtn;
    DetailPanel: TsPanel;
    DetailToolPanel: TsPanel;
    sPanel1: TsPanel;
    sDBNavigator1: TsDBNavigator;
    HeaderPanel: TsPanel;
    sDBLookupComboBox1: TsDBLookupComboBox;
    sGroupBox1: TsGroupBox;
    sDBEdit1: TsDBEdit;
    sDBDateEdit1: TDBDateTimeEditEh;
    sDBLookupComboBox2: TsDBLookupComboBox;
    ActionManager1: TActionManager;
    ActionOpenMaterials: TAction;
    DBGridEh1: TDBGridEh;
    sGroupBox2: TsGroupBox;
    sDBLookupComboBox3: TsDBLookupComboBox;
    DepartmentsList: TpFIBDataSet;
    WarehouseList: TpFIBDataSet;
    DSDepartmentsList: TDataSource;
    DSWarehouseList: TDataSource;
    procedure ActionOpenMaterialsExecute(Sender: TObject);
    procedure DBGridEh1Columns4EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTransfer: TFormTransfer;

implementation

uses UnitDM, UnitFormMaterials, MainUnit;

{$R *.dfm}

procedure TFormTransfer.ActionOpenMaterialsExecute(Sender: TObject);
var
  FM:TFormMaterials;
begin
  DM.DSBalances.DataSet.Close;
  DM.DSFoodGroups.DataSet.Locate('code', 'MATERIALS',[]);
  FM:=TFormMaterials.Create(Self);
  FM.WarehouseId:=DM.DSDocs.DataSet.FieldByName('warehouse_id').AsInteger;
  FM.cxTabControl1.TabIndex:=1;
  if FM.ShowModal=mrOk then
    with DM.DSTransferDetail.Dataset do
    begin
      if State=dsBrowse then  Edit;
      FieldByName('food_id').Value:=DM.DSBalances.DataSet.FieldValues['FOOD_ID'];
      FieldByName('qty').Value:=DM.DSBalances.DataSet.FieldValues['qty'];
      FieldByName('price').Value:=DM.DSBalances.DataSet.FieldValues['price'];
    end;
  FM.Free;
end;

procedure TFormTransfer.BitBtnCancelClick(Sender: TObject);
begin
  if DM.DSTransferDetail.Dataset.State in dsEditModes then
     DM.DSTransferDetail.Dataset.Cancel;
  if DM.DSTransfer.State in dsEditModes then
     DM.DSTransfer.DataSet.Cancel;
  if DM.DSDocs.DataSet.State in dsEditModes then
     DM.DSDocs.DataSet.Cancel;
  Close;
end;

procedure TFormTransfer.BitBtnOKClick(Sender: TObject);
begin
  if DM.DSTransferDetail.Dataset.State in dsEditModes then
     DM.DSTransferDetail.Dataset.Post;
  if DM.Transfer.State in dsEditModes then
     DM.Transfer.Post;
  if DM.DSDocs.DataSet.State in dsEditModes then
     DM.DSDocs.DataSet.Post;
  Close;
end;

procedure TFormTransfer.DBGridEh1Columns4EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  FM:TFormMaterials;
begin
  DM.DSFoodGroups.DataSet.Locate('code', 'MATERIALS',[]);
  FM:=TFormMaterials.Create(Self);
  FM.WarehouseId:=DM.Transfer.FieldByName('target_warehouse').AsInteger;
  FM.DepId:=DM.Transfer.FieldByName('target_department').AsInteger;
  FM.cxTabControl1.TabIndex:=0;
  if FM.ShowModal=mrOk then
    with DM.DSTransferDetail.Dataset do
    begin
      if State=dsBrowse then  Edit;
      FieldByName('target_food_id').Value:=DM.FoodDep.FieldValues['ID'];
      FieldByName('target_qty').Value:=DM.DSTransferDetail.Dataset.FieldValues['QTY'].Value;
    end;
  FM.Free;
end;

procedure TFormTransfer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Hide;
  Action:=caFree;
  FormMain.MainPanel.Show;
  FormMain.SetFocus;
  FormMain.MainRefresh;
end;

end.
