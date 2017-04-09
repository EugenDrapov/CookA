unit UnitFormCalc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdCtrls, Vcl.DBCtrls,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TFormCalc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGridEh1: TDBGridEh;
    DBText1: TDBText;
    ActionManager1: TActionManager;
    ActionCalcOpenFood: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionCalcOpenInterchange: TAction;
    PopupMenu1: TPopupMenu;
    ActionCalcOpenInterchange1: TMenuItem;
    ActionCalcOpenFood1: TMenuItem;
    DBNavigator1: TDBNavigator;
    procedure ActionCalcOpenFoodExecute(Sender: TObject);
    procedure ActionCalcOpenInterchangeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCalc: TFormCalc;

implementation

{$R *.dfm}

uses UnitDM, UnitDlgCommon, Data.DB, UnitInterChange, MainUnit;

procedure TFormCalc.ActionCalcOpenFoodExecute(Sender: TObject);
begin
  DM.DSCalc.DataSet.DisableControls;
  SelectMaterial(DM.DSCalc.DataSet, 'MATERIAL', 'food_id');
  DM.DSCalc.DataSet.EnableControls;
end;

procedure TFormCalc.ActionCalcOpenInterchangeExecute(Sender: TObject);
var
  CF: TFormInterChange;
begin
  CF := TFormInterChange.Create(Self);
  CF.Caption:='Замена '+DM.DSFoodAll.DataSet.Lookup('ID', DM.DSCalc.DataSet.FieldValues['FOOD_ID'], 'DESCR') +' (Рецепт '+DM.DSBrand.DataSet.FieldByName('descr').AsString+')';
  CF.TopLabel.Caption:=CF.Caption;
  CF.Show;
end;

procedure TFormCalc.BitBtn1Click(Sender: TObject);
begin
  DM.DSCalc.DataSet.Cancel;
  Close
end;

procedure TFormCalc.BitBtn2Click(Sender: TObject);
begin
  if DM.DSCalc.DataSet.State in dsEditModes then
    DM.DSCalc.DataSet.Post;
  Close
end;

procedure TFormCalc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DM.DSCalc.DataSet do
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

end.
