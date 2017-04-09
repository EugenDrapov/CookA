unit UnitFormMaterials;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, sSplitter, sPanel, DB,
  ImgList, StdCtrls, Buttons,
  sPageControl, Grids, DBGrids, DBCtrls, acDBGrid,
  sDBNavigator, sDBLookupComboBox, Menus, ActnList,
  PlatformDefaultStyleActnCtrls, ActnMan, ToolWin, sToolBar,
  GridsEh, DBGridEh, EhLibFIB, sCheckBox, DBActns, UnitDM,
  sBitBtn, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  System.Actions, System.ImageList, DBAxisGridsEh,
  DynVarsEh, EhLibVCL, MemTableDataEh, DataDriverEh, MemTableEh;

type
  TFormMaterials = class(TForm)
    sPanel1: TPanel;
    sPanel2: TPanel;
    sSplitter1: TSplitter;
    sPanel3: TPanel;
    ImageList1: TImageList;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBText1: TDBText;
    cxTabControl1: TTabControl;
    DBGrid1: TDBGridEh;
    sDBNavigator1: TDBNavigator;
    sPanel4: TPanel;
    sPanel5: TPanel;
    sToolBar1: TPanel;
    ToolButton1: TToolButton;
    ActionManager1: TActionManager;
    ActionPriceHistory: TAction;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    sPanel6: TPanel;
    sDBLookupComboBox2: TDBLookupComboBox;
    chkAll: TCheckBox;
    DataSetRefresh1: TDataSetRefresh;
    ActionDetail: TAction;
    N2: TMenuItem;
    sBitBtn1: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    ActionAddGroup: TAction;
    ActionDeleteGroup: TAction;
    ActionUpdateGroup: TAction;
    MemTableEh1: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DataSource1: TDataSource;
    MemTableEh1ID: TAutoIncField;
    MemTableEh1DESCR: TStringField;
    MemTableEh1CODE: TStringField;
    MemTableEh1PARENT_ID: TIntegerField;
    DBGridEh1: TDBGridEh;
    MemTableEh1LFT: TIntegerField;
    MemTableEh1RGT: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxTabControl1Change(Sender: TObject);
    procedure ActionPriceHistoryExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkAllClick(Sender: TObject);
    procedure ActionDetailExecute(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure ActionAddGroupExecute(Sender: TObject);
    procedure ActionDeleteGroupExecute(Sender: TObject);
    procedure ActionUpdateGroupExecute(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);

  private
    { Private declarations }
    OldGrpID: Integer;
    CloseResult: TModalResult;
    FWarehouseId: Integer;
    FDepId: Integer;
    FFoodId: Integer;
    procedure LMChange(var Msg:TMessage); message LM_DATACHANGE;

  public
    destructor Destroy; override;
    constructor Create(AOwner: TComponent); override;

    { Public declarations }
    property WarehouseId: Integer read FWarehouseId write FWarehouseId;
    property DepId: Integer read FDepId write FDepId;
    property FoodId: Integer read FFoodId write FFoodId;
  end;

var
  FormMaterials: TFormMaterials;

implementation

uses  pFIBDataSet, UnitFormSellPrice, UnitFormBalanceDetail,
  FireDAC.Comp.DataSet;
{$R *.dfm}

procedure TFormMaterials.ActionAddGroupExecute(Sender: TObject);
var
  S:string;
  pid: Integer;
begin
    with  MemTableEh1 do
    begin
    pid := FieldByName('ID').AsInteger;
    S:=InputBox('Новая группа(Владелец - '+FieldByName('DESCR').AsString+')', 'Название новой группы', 'Новая группа');
    Append;
    FieldByName('parent_id').AsInteger:=pid;
    FieldByName('descr').AsString:=S;
    Post;
    end;
end;

procedure TFormMaterials.ActionDeleteGroupExecute(Sender: TObject);
begin
 if MessageDlg('ВНИМАНИЕ! При удалении группы будут удалены и все её товары! Удалить?', mtWarning, [mbNo, mbYes], 0)=mrYes then
  begin
  MemTableEh1.Delete;
  end;
end;

procedure TFormMaterials.ActionDetailExecute(Sender: TObject);
var
  FBD: TFormBalanceDetail;
begin
  TFormBalanceDetail.Create(Self).ShowModal;
end;

procedure TFormMaterials.ActionPriceHistoryExecute(Sender: TObject);
var
  FCP: TFormSellPrice;
begin
  try
    if cxTabControl1.TabIndex <> 0 then
      begin
      DM.DSFood.DataSet.Open;
      DM.DSFood.DataSet.Locate('id', DM.DSBalances.DataSet.FieldValues['food_id'], []);
      end;
    FCP := TFormSellPrice.Create(Self);
    FCP.TblMame:='FOOD';
    FCP.ShowModal;
  finally
    //DM.DSFood.DataSet.Close;
  end;
end;

procedure TFormMaterials.ActionUpdateGroupExecute(Sender: TObject);
var
  S:string;
begin
  with MemTableEh1 do
    begin
    S:=InputBox('Изменение (Владелец - '+FieldByName('descr').AsString+')', 'Другое название группы', DM.DSFoodGroups.DataSet.FieldByName('descr').AsString);
    Edit;
    FieldByName('descr').AsString:=S;
    Post;
    end;
end;

procedure TFormMaterials.BitBtn1Click(Sender: TObject);
begin
  if DBGrid1.DataSource.DataSet.State <> dsBrowse then
    DBGrid1.DataSource.DataSet.Post;
end;

procedure TFormMaterials.chkAllClick(Sender: TObject);
begin
  sDBLookupComboBox2.Enabled := not chkAll.Checked;
  cxTabControl1Change(nil);
end;

constructor TFormMaterials.Create(AOwner: TComponent);
begin
  inherited;
  FWarehouseId := 0;
  FDepId := 0;
  FFoodId := 0;
  OldGrpID := -1;
  cxTabControl1.TabIndex:=-1;
end;

procedure TFormMaterials.cxTabControl1Change(Sender: TObject);
var
  i: Integer;
  Col: TColumnEh;
begin
  if cxTabControl1.TabIndex = -1 then
    Exit;
  case cxTabControl1.TabIndex of
    0:
      begin
        DM.DSBalances.DataSet.Close;
        sPanel6.Hide;
        if DepId = 0 then
        begin
          DBGrid1.DataSource := DM.DSFood;
          sDBNavigator1.DataSource := DM.DSFood;
          DM.DSFood.DataSet.Open;
        end
        else
        begin
          DBGrid1.DataSource := DM.DSFoodDep;
          sDBNavigator1.DataSource := DM.DSFoodDep;
          DM.DSFoodDep.DataSet.Open;
        end;
        DBGrid1.Options := DBGrid1.Options - [dgRowSelect];
        DBGrid1.Options := DBGrid1.Options + [dgEditing];
        DBGrid1.OnDblClick := nil;
        for i := 0 to DBGrid1.Columns.Count - 1 do
        begin
          DBGrid1.Columns[i].Title.TitleButton := true;
        end;
      end;
    1:
      with DM.DSBalances.DataSet as TFDDataSet do
      begin
//        DM.DSFood.DataSet.Close;
//        DM.DSFoodDep.DataSet.Close;
        sPanel6.Show;
        DBGrid1.DataSource := DM.DSBalances;
        sDBNavigator1.DataSource := DM.DSBalances;
        if chkAll.Checked then
          ParamByName('whsid').AsInteger := 0
        else if sDBLookupComboBox2.KeyValue = Null then
          ParamByName('whsid').AsInteger := 0
        else
          ParamByName('whsid').AsInteger :=
            sDBLookupComboBox2.KeyValue;
        DBGrid1.Options := DBGrid1.Options + [dgRowSelect];
        DBGrid1.Options := DBGrid1.Options - [dgEditing];
        DBGrid1.OnDblClick := Self.DBGrid1DblClick;

        Open;

        for i := 0 to DBGrid1.Columns.Count - 1 do
        begin
          DBGrid1.Columns[i].Title.TitleButton := true;
        end;

      end;

  end;
end;

procedure TFormMaterials.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if Field=nil then
    begin
    DM.DSFoodGroups.DataSet.Locate('ID', MemTableEh1.FieldByName('ID').AsInteger, []);
    end;
end;

procedure TFormMaterials.DBGrid1DblClick(Sender: TObject);
begin
  CloseResult := mrOk;
  Close;
end;

destructor TFormMaterials.Destroy;
begin
  //DM.pFIBFood.Close;
  //DM.DSBalances.DataSet.Close;
  inherited;
end;

procedure TFormMaterials.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caHide;
  if CloseResult <> mrCancel then
    begin
    ModalResult := CloseResult;
    end;
end;

procedure TFormMaterials.FormShow(Sender: TObject);
var
  i: Integer;
begin
  if FWarehouseId = 0 then
  begin
    chkAll.Checked := true;
    sDBLookupComboBox2.Enabled := false;
  end
  else
  begin
    sPanel6.Visible := false;
  end;

  CloseResult := mrCancel;
  
  Caption := 'Каталог материалов '
  + DM.DSDepartments.DataSet.FieldByName('descr').AsString;
  if FoodId <> 0 then
    with DBGrid1.DataSource.DataSet do
      if DBGrid1.DataSource.DataSet = DM.DSBalances.DataSet then
      begin
        Locate('food_id', FoodId, []);
      end
      else
      begin
        Locate('id', FoodId, []);
      end;
  if cxTabControl1.TabIndex=-1 then
    begin
    cxTabControl1.TabIndex := 0;
    end;
  cxTabControl1Change(nil);
  MemTableEh1.Active := True;
  DBGrid1.SetFocus;
end;

procedure TFormMaterials.LMChange(var Msg: TMessage);
var
  i:integer;
begin
  if SameText(TDataSet(Msg.WParam).Name, 'FoodGroups') then
    for i := 0 to DBGrid1.Columns.Count - 1 do
      begin
        DBGrid1.Columns[i].Title.TitleButton := true;
      end;
end;

procedure TFormMaterials.sBitBtn1Click(Sender: TObject);
begin
  DM.DSBalances.DataSet.Close;
    cxTabControl1Change(cxTabControl1);
end;

end.
