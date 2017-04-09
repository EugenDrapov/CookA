unit UnitFormInventory;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEh, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBLookupEh, DBCtrlsEh, Vcl.Mask, sGroupBox,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList;

type
  TFormInventory = class(TForm)
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    Panel3: TPanel;
    sGroupBox1: TsGroupBox;
    DBEditEh1: TDBEditEh;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    DBLookupComboboxEh1: TDBLookupComboboxEh;
    DBGridEh1: TDBGridEh;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ActionList1: TActionList;
    ActionFillInventory: TAction;
    ActionOK: TAction;
    ActionCancel: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridEh1Columns0EditButtons0Click(Sender: TObject;
      var Handled: Boolean);
    procedure ActionOKExecute(Sender: TObject);
    procedure ActionCancelExecute(Sender: TObject);
    procedure ActionFillInventoryExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInventory: TFormInventory;

implementation

{$R *.dfm}

uses UnitDM, MainUnit, DB, UnitDlgCommon;

procedure TFormInventory.ActionCancelExecute(Sender: TObject);
begin
  if DM.DSInventory.DataSet.State in dsEditModes then
    DM.DSInventory.DataSet.Cancel;
  if DM.DSDocs.DataSet.State in dsEditModes then
    DM.DSDocs.DataSet.Cancel;
  Close;
end;

procedure TFormInventory.ActionFillInventoryExecute(Sender: TObject);
begin
  if MessageDlg('Табличная часть будет очищена! Продолжить?', mtWarning, [mbYes, mbNo], 0)=mrYes then
    begin
    DM.FillInventory(DM.DSDocs.DataSet.FieldByName('docdate').AsDateTime);
    end;
end;

procedure TFormInventory.ActionOKExecute(Sender: TObject);
begin
  if DM.DSDocs.DataSet.State in dsEditModes then
    DM.DSDocs.DataSet.Post;
  if DM.DSInventory.DataSet.State in dsEditModes then
    DM.DSInventory.DataSet.Post;
  Close;
end;

procedure TFormInventory.DBGridEh1Columns0EditButtons0Click(Sender: TObject;
  var Handled: Boolean);
var
  Qty:Integer;
begin
  SelectMaterial(DM.DSInventory.DataSet, 'MATERIAL', 'food_id', 'qty', 'price');
  Qty :=  DM.DSInventory.DataSet.FieldValues['qty'];
  DM.DSInventory.DataSet.FieldByName('qty_fact').AsInteger := iif(Qty > 0, Qty, 0);
end;

procedure TFormInventory.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormMain.MainPanel.Show;
  Action := caFree;
end;

end.
