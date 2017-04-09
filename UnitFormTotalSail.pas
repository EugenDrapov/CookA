unit UnitFormTotalSail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sSplitter, ComCtrls, sStatusBar, sPanel,
  DBCGrids, acDBCtrlGrid, sDBNavigator, ToolWin, acCoolBar, StdCtrls, sCheckBox,
  sDBCheckBox, DBCtrls, sDBLookupComboBox, sGroupBox, sLabel, Mask, sMaskEdit,
  sCustomComboEdit, sTooledit, sDBDateEdit, sDBEdit, Grids, DBGrids, acDBGrid,
  sPageControl, DB, ActnList, PlatformDefaultStyleActnCtrls,
  ActnMan, Buttons, sBitBtn, sSkinProvider, FIBQuery, pFIBQuery, sToolBar,
  System.Actions, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, DBCtrlsEh, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh;

type
  TFormTotalSail = class(TForm)
    sPanel1: TsPanel;
    sStatusBar1: TsStatusBar;
    sSplitter1: TsSplitter;
    sPanel2: TsPanel;
    sCoolBar1: TsCoolBar;
    sDBNavigator1: TsDBNavigator;
    sDBEdit1: TsDBEdit;
    sLabel1: TsLabel;
    sGroupBox1: TsGroupBox;
    sDBLookupComboBox1: TsDBLookupComboBox;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sDBCheckBox1: TsDBCheckBox;
    cxLabel1: TLabel;
    cxLabel2: TLabel;
    cxLabel3: TLabel;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sDBNavigator2: TsDBNavigator;
    DBGridChecks: TsDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    ActionManager1: TActionManager;
    ActionGoodsOpen: TAction;
    ActionPrint: TAction;
    sDBLookupComboBox2: TsDBLookupComboBox;
    ActionAutoFill: TAction;
    Qry: TpFIBQuery;
    CoolBar1: TCoolBar;
    sPanel3: TsPanel;
    sToolBar1: TsToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    DBGridEh1: TDBGridEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBDateTimeEditEh2: TDBDateTimeEditEh;
    DBComboBoxEh1: TDBComboBoxEh;
    DBDateTimeEditEh3: TDBDateTimeEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionGoodsOpenExecute(Sender: TObject);
    procedure cxGrid1DBTableView1FOODPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ActionPrintExecute(Sender: TObject);
     procedure sDBNavigator2BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure FormCreate(Sender: TObject);
    procedure btnAutoFillClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormTotalSail: TFormTotalSail;
  Trigger:boolean=False;

implementation

uses UnitDM, MainUnit, Math, pFIBDataSet,pFIBProps, UnitDlgCommon;

{$R *.dfm}

procedure TFormTotalSail.ActionGoodsOpenExecute(Sender: TObject);
begin
  SelectMaterial(DM.DSTotalSailDetail.DataSet, 'PRODUCT', 'food_id', 'qty', 'price', 'price_sell');
end;

procedure TFormTotalSail.ActionPrintExecute(Sender: TObject);
begin
  ;
end;

procedure TFormTotalSail.btnAutoFillClick(Sender: TObject);
var
  DS:TpFIBDataSet;
begin
  with Qry do
    begin
    Prepare;
    ParamByName('ondate').Value:=DM.DSDocs.DataSet.FieldByName('docdate').Value;
    ParamByName('warehouseid').Value:=DM.DSDocs.DataSet.FieldByName('warehouse_id').Value;
    ParamByName('depid').Value:=DM.DSDocs.DataSet.FieldByName('dep_id').Value;
    ParamByName('clientid').Value:=DM.DSDocs.DataSet.FieldByName('client_id').Value;
    ParamByName('hostid').Value:= DM.DSTotalSail.DataSet.FieldByName('id').Value;
    ExecQuery;
//    DS:=TpFIBDataSet(DM.DSTotalSailDetail.DataSet);
//    DS.DisableControls;
////    DS.AutoCommit:=false;
////    DS.Options:=DS.Options-[poStartTransaction];
//    //DS.CloseOpen(true);
////  DS.UpdateTransaction.StartTransaction;
////  try
//      while not Eof do
//        begin
//        DS.Append;
//        DS.FieldByName('food_id').Value:=FieldByName('food_id').Value;
//        DS.FieldByName('price').Value:=FieldByName('price').Value;
//        DS.FieldByName('qty').Value:=FieldByName('qty').Value;
//        DS.FieldByName('price_sell').Value:=FieldByName('price_sell').Value;
//        DS.Post;
//        Next;
//        end;
////      DS.UpdateTransaction.Commit;
////    except
////      DS.UpdateTransaction.Rollback;
////    end;
////    DS.AutoCommit:=true;
////    DS.Options:=DS.Options+[poStartTransaction];
//    DS.EnableControls;
    Close;
    DM.DSTotalSailDetail.DataSet.Refresh;
    end;
end;

procedure TFormTotalSail.cxGrid1DBTableView1FOODPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  ActionGoodsOpen.Execute;
end;

procedure TFormTotalSail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  FormMain.MainPanel.Show;
  FormMain.SetFocus;
  FormMain.MainRefresh;
end;

procedure TFormTotalSail.FormCreate(Sender: TObject);
var
  Path: string;
begin
  Path := ExtractFilePath(Application.ExeName) + 'config\sqls\';
  with Qry do
  begin
    SQL.LoadFromFile(Path + 'TotalSaleFill\insert.sql');
  end;
end;

procedure TFormTotalSail.sDBNavigator2BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button=nbInsert then
    sDBNavigator2.DataSource.DataSet.Last;
end;

end.
