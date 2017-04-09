unit UnitFormRecieve;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCGrids, ExtCtrls, pFIBDataSet, DB, DBCtrls, Grids, DBGrids,
  StdCtrls, Mask,
  sSkinProvider, ImgList, acAlphaImageList, ComCtrls, ToolWin, sToolBar,
  sMaskEdit, sCustomComboEdit, sTooledit, sDBDateEdit, DBSumLst, sLabel,
  sDBLookupComboBox, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, Menus,
  GridsEh, DBGridEh, PrnDbgeh, DBGridEhGrouping,
  ToolCtrlsEh, DBGridEhToolCtrls, System.Actions, System.ImageList,
  DBAxisGridsEh, DynVarsEh, EhLibVCL, DBCtrlsEh;

type
  TSortRec=record
    Field:string;
    Asc:boolean;
  end;

  TSortArray=array of TSortRec;

  TFormRecieve = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBEditEh1: TDBEdit;
    Label1: TLabel;
    Splitter1: TSplitter;
    DBNavigator1: TDBNavigator;
    DBGridEh1: TDBGridEh;
    sSkinProvider1: TsSkinProvider;
    sToolBar1: TsToolBar;
    ToolButton1: TToolButton;
    sAlphaImageList1: TsAlphaImageList;
    sDBLookupComboBox1: TsDBLookupComboBox;
    sDBLookupComboBox2: TsDBLookupComboBox;
    ActionManager1: TActionManager;
    ActionCollect: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    DBDateTimeEditEh1: TDBDateTimeEditEh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActionCollectExecute(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecieve: TFormRecieve;

implementation

uses UnitDM, MainUnit, UnitFormQtyEnter, DBGridEhImpExp, UnitDlgCommon;


{$R *.dfm}

procedure TFormRecieve.ActionCollectExecute(Sender: TObject);
begin
  SelectMaterial(DM.DSReceiptDetail.DataSet, 'MATERIAL', 'food_id');
end;

procedure TFormRecieve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FormMain.MainPanel.Show;
  Action:=caFree;
end;

procedure TFormRecieve.ToolButton1Click(Sender: TObject);
begin
  if DM.DSDocs.DataSet.State in dsEditModes then
    DM.DSDocs.DataSet.Post;
  if DM.DSReceiptDetail.DataSet.State in dsEditModes then
    DM.DSReceiptDetail.DataSet.Post;
  Close;
end;

end.
