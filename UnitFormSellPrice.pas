unit UnitFormSellPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, acDBGrid, sDBNavigator, ExtCtrls, sPanel, ComCtrls,
  sStatusBar, ToolWin, sToolBar, StdCtrls, sComboBox, sSkinProvider, sLabel,
  sDBText, DB, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh;

type
  TStrVar=class(TObject)
    S:string;
    constructor Create(V:string);
  end;

  TFormSellPrice = class(TForm)
    sToolBar1: TsToolBar;
    sStatusBar1: TsStatusBar;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sDBNavigator1: TsDBNavigator;
    sComboBox1: TsComboBox;
    sDBText1: TsDBText;
    sDBText2: TsDBText;
    DBGridEh1: TDBGridEh;
    procedure FormShow(Sender: TObject);
    procedure sComboBox1CloseUp(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FTblMame: string;
    procedure SetTblMame(const Value: string);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    { Public declarations }
    property TblMame:string  read FTblMame write SetTblMame;

  end;

var
  FormSellPrice: TFormSellPrice;

implementation

uses UnitDM, FireDAC.Comp.DataSet;

{$R *.dfm}

constructor TFormSellPrice.Create(AOwner: TComponent);
begin
  inherited;
  FTblMame:='';
end;

destructor TFormSellPrice.Destroy;
begin

  inherited;
end;

procedure TFormSellPrice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.DSFoodHistory.DataSet.State in dsEditModes then
     DM.DSFoodHistory.DataSet.Post;
 // DM.DSFoodHistory.DataSet.Close;
  Action:=caFree;
end;

procedure TFormSellPrice.FormShow(Sender: TObject);
begin

   sComboBox1.Items.Clear;
   sComboBox1.Items.AddObject('Цена продажи', TStrVar.Create('SELL_PRICE'));
   sComboBox1.Items.AddObject('Наценка', TStrVar.Create('MARGIN'));
   sComboBox1.ItemIndex:=0;
   sComboBox1CloseUp(sComboBox1);
end;

{ TStrVar }

constructor TStrVar.Create(V: string);
begin
  inherited Create;
  Self.S:=V;
end;

procedure TFormSellPrice.sComboBox1CloseUp(Sender: TObject);
begin
  with DM.DSFoodHistory.DataSet as TFDDataset, sComboBox1 do
  begin
    if State in dsEditModes then
      Post;
    ParamByName('FLD').AsString:=TStrVar(Items.Objects[ItemIndex]).S;
    DM.DSFoodHistory.DataSet.Refresh;
  end;
end;

procedure TFormSellPrice.SetTblMame(const Value: string);
begin
  if not SameStr(TblMame, Value) then
    with DM.DSFoodHistory.DataSet as TFDDataset do
    begin
    FTblMame := Value;
    //MasterSource := TDataSource(DM.FindComponent('DS'+Value));
    ParamByName('TBL').AsString:=Value;
    Refresh;
    end;
end;

end.
