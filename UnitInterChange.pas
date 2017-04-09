unit UnitInterChange;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitDM, DBCtrls, ExtCtrls, sDBLookupComboBox,
  Grids, DBGrids, acDBGrid, StdCtrls, sLabel, sDBText, Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, sDBCalcEdit, sPanel, sDBNavigator, DB, sButton,
  sSkinProvider,  Buttons,
  sBitBtn, GridsEh, DBGridEh, ActnList, PlatformDefaultStyleActnCtrls, ActnMan,
  DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, System.Actions,
  DBAxisGridsEh, DBCtrlsEh, DynVarsEh, EhLibVCL;

type
  TFormInterChange = class(TForm)
    Panel1: TsPanel;
    Panel2: TsPanel;
    Panel3: TsPanel;
    sLabel2: TsLabel;
    TopLabel: TsLabel;
    sDBNavigator1: TDBNavigator;
    sPanel1: TsPanel;
    sBitBtnOK: TsBitBtn;
    sBitBtnCancel: TsBitBtn;
    ActionManager1: TActionManager;
    DBText1: TDBText;
    Action1: TAction;
    sDBGrid1: TDBGridEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure sBitBtnOKClick(Sender: TObject);
    procedure sBitBtnCancelClick(Sender: TObject);
    procedure sDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Action1Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInterChange: TFormInterChange;

implementation

uses MainUnit, pFIBDataSet, UnitDlgCommon;

{$R *.dfm}

procedure TFormInterChange.Action1Execute(Sender: TObject);
begin
  SelectMaterial(DM.DSInterchange.DataSet, 'MATERIAL', 'food_id');
end;

procedure TFormInterChange.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 if not (DM.DSCalc.DataSet.State in [dsInsert, dsEdit]) then
  DM.DSCalc.Edit;
 SelectMaterial(DM.DSCalc.DataSet, 'MATERIAL', 'food_id');
end;

procedure TFormInterChange.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DM.DSInterchange.DataSet do
  if State in [dsInsert, dsEdit] then
    begin
      case MessageDlg('Сохранить изменения?', mtConfirmation, [mbYes, mbNo, mbCancel], 0) of
        mrYes:begin
          Post;
          Action:=caFree;
        end;
        mrNo:begin
          Cancel;
          Action:=caFree;
        end;
        mrCancel:begin
          Action:=caNone;
        end;
        end;
    end
  else
    begin
      Action:=caFree;
    end;
end;

procedure TFormInterChange.sBitBtnCancelClick(Sender: TObject);
begin
  if DM.DSCalc.DataSet.State in [dsInsert, dsEdit] then
     DM.DSCalc.DataSet.Cancel;
  Close;
end;

procedure TFormInterChange.sBitBtnOKClick(Sender: TObject);
begin
  if DM.DSCalc.DataSet.State in [dsInsert, dsEdit] then
     DM.DSCalc.DataSet.Post;
  Close;
end;

procedure TFormInterChange.sDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=char(VK_RETURN)) and SameText(sDBGrid1.SelectedField.FieldName, 'FOOD_ID') then
    begin
    Action1.Execute;
    end;
end;

end.
