unit UnitFormWriteOff;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolWin, ComCtrls, StdCtrls, Buttons, sBitBtn,
  ExtCtrls, sSplitter, sPanel, sDBNavigator, GridsEh, DBGridEh, DBCtrls,
  sDBLookupComboBox, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, Mask,
  sMaskEdit, sCustomComboEdit, sTooledit, sDBDateEdit, sDBEdit, sGroupBox,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DBAxisGridsEh, DynVarsEh, EhLibVCL;

type
  TFormWriteOff = class(TForm)
    ToolPanel: TsPanel;
    DetailPanel: TsPanel;
    sSplitter1: TsSplitter;
    HeaderPanel: TsPanel;
    DetailToolPanel: TsPanel;
    sPanel1: TsPanel;
    BitBtnOK: TsBitBtn;
    BitBtnCancel: TsBitBtn;
    ToolBar1: TToolBar;
    DBGridEh1: TDBGridEh;
    sDBNavigator1: TsDBNavigator;
    sDBLookupComboBox1: TsDBLookupComboBox;
    ActionManager1: TActionManager;
    ActionOpenMaterials: TAction;
    sGroupBox1: TsGroupBox;
    sDBEdit1: TsDBEdit;
    sDBDateEdit1: TsDBDateEdit;
    sDBLookupComboBox2: TsDBLookupComboBox;
    procedure BitBtnOKClick(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionOpenMaterialsExecute(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FormWriteOff: TFormWriteOff;

implementation

uses UnitDM, DB, MainUnit, UnitDlgCommon;

{$R *.dfm}

procedure TFormWriteOff.ActionOpenMaterialsExecute(Sender: TObject);
begin
  SelectMaterial(DM.DSWriteOffDetail.DataSet, 'ALL', 'food_id', 'qty', 'price');
end;

procedure TFormWriteOff.BitBtnCancelClick(Sender: TObject);
begin
  if DM.DSWriteOffDetail.Dataset.State in [dsEdit,dsInsert] then
     DM.DSWriteOffDetail.Dataset.Cancel;
  if DM.DSWriteOff.Dataset.State in [dsEdit,dsInsert] then
     DM.DSWriteOff.Dataset.Cancel;
  if DM.DSDocs.DataSet.State in [dsEdit,dsInsert] then
     DM.DSDocs.DataSet.Cancel;
  Close;
end;

procedure TFormWriteOff.BitBtnOKClick(Sender: TObject);
begin
  if DM.DSWriteOffDetail.Dataset.State in [dsEdit,dsInsert] then
     DM.DSWriteOffDetail.Dataset.Post;
  if DM.DSWriteOff.Dataset.State in [dsEdit,dsInsert] then
     DM.DSWriteOff.Dataset.Post;
  if DM.DSDocs.DataSet.State in [dsEdit,dsInsert] then
     DM.DSDocs.DataSet.Post;
  Close;
end;

procedure TFormWriteOff.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Self.Hide;
  Action:=caFree;
  FormMain.MainPanel.Show;
  FormMain.SetFocus;
  FormMain.MainRefresh;
end;

end.
