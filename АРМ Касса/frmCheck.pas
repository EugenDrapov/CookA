unit frmCheck;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ActnList, PlatformDefaultStyleActnCtrls, ActnMan, GridsEh,
  DBGridEh, StdCtrls, Mask, Buttons, DBCtrls, DBCGrids, EhLibFIB, ButtonGroup,
  ComCtrls, DB, DBCtrlsEh, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, System.Actions, EhLibVCL, DBAxisGridsEh, DBLookupEh;

 const
  WM_Recalc=WM_USER+1;

type
  TfmCheck = class(TForm)
    PanelCheck: TPanel;
    PanelLine: TPanel;
    ActionManager1: TActionManager;
    ActionCancel: TAction;
    StatusBar1: TStatusBar;
    PanelHeader: TPanel;
    PanelDetail: TPanel;
    PanelRest: TPanel;
    PanelRestBtn: TPanel;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    GroupBox1: TGroupBox;
    Panel2: TPanel;
    Splitter2: TSplitter;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel3: TPanel;
    DBGridDetail: TDBGridEh;
    Panel4: TPanel;
    Panel5: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGridRest: TDBGridEh;
    BitBtnOK: TBitBtn;
    BitBtnCancel: TBitBtn;
    LblTotal: TLabel;
    LblChange: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    ActionSelect: TAction;
    DBText2: TDBText;
    Label6: TLabel;
    DSCheckDetail: TDataSource;
    DBNavigator1: TDBNavigator;
    Panel6: TPanel;
    deCache: TDBNumberEditEh;
    ActionOK: TAction;
    DBNumberEditEh1: TDBNumberEditEh;
    DBGridGroups: TDBGridEh;
    dbedtDiscount: TDBEdit;
    lblDiscount: TLabel;
    lblCheckSum: TLabel;
    Label9: TLabel;
    cbPaymentType: TDBLookupComboboxEh;
    dblkDiscountType: TDBLookupComboBox;
    procedure DBGridRestDblClick(Sender: TObject);
    procedure DBGridRestKeyPress(Sender: TObject; var Key: Char);
    procedure ActionSelectExecute(Sender: TObject);
    procedure DSCheckDetailStateChange(Sender: TObject);
    procedure Recalc;
    procedure deCacheChange(Sender: TObject);
    procedure deCacheEnter(Sender: TObject);
    procedure ActionOKExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure deCacheExit(Sender: TObject);
    procedure DBGridGroupsKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDiscountChange(Sender: TObject);
    procedure cbDiscountTypeChange(Sender: TObject);
    procedure dblkDiscountTypeCloseUp(Sender: TObject);
  private
    { Private declarations }
    TotalSum: Currency;
    Discount: Real;
    procedure WMRecalc(var Mes:TMessage); message WM_Recalc;
  public
    { Public declarations }
  end;

var
  fmCheck: TfmCheck;

implementation

uses UnitDM, DBGrids, frmEnterQty, UnitCheckPrn, System.Math;
{$R *.dfm}

procedure TfmCheck.ActionOKExecute(Sender: TObject);
var
  PrnCheck:TCheckPrn;
begin
  if DM.Check.FieldByName('isclosed').AsInteger<>0 then
    begin
      MessageDlg('Чек закрыт!', mtWarning, [mbClose], 0);
      //Exit;
    end;


  if DM.Check.State in dsEditModes then
    begin
      DM.Check.FieldByName('sale_summa').AsCurrency := TotalSum;
      DM.Check.FieldByName('discount_summa').AsCurrency := Discount;
      DM.Check.Post;
    end;
  if DM.CheckDetail.State in dsEditModes then
    begin
      DM.CheckDetail.Post;
    end;
  

  if DM.Check.FieldByName('cache_income').AsCurrency < TotalSum then
    begin
    DM.Check.FieldByName('cache_income').AsCurrency := TotalSum
    end;

  PrnCheck:=TCheckPrn.Create;
  with PrnCheck do
  if PrintCheck(DM.Check.FieldByName('id').AsInteger, DM.Check.FieldByName('cache_income').AsCurrency) then
    begin
      DM.Check.Edit;
      DM.Check.FieldByName('isclosed').AsInteger:=1;
      DM.Check.Post;
      MessageDlg('Чек распечатан.', mtInformation,[mbOK],0);
      Close;
    end
  else
    begin
      if MessageDlg(Format('Ошибка команды "%s" : "%s" !'#13#10' Отменить чек?',[ErrCommand, ErrDescr]),
      mtError, [mbYes, mbNo], 0) = mrYes then
        begin
        DM.Check.Delete;
        PrnCheck.Free;
        end
      else
       DM.Check.Edit;
    end;
end;

procedure TfmCheck.ActionSelectExecute(Sender: TObject);
var
  QS:TFormEnterQty;
  PQty:PDouble;
begin
  with DM.CheckDetail do
  begin
    New(PQty);
    try
    QS:=TFormEnterQty.Create(Self);
    QS.EnterQty:=PQty;
    if QS.ShowModal=mrOk then
      begin
      Append;
      FieldValues['food_id']:=DM.Balances.FieldValues['food_id'];
      FieldByName('qty').AsFloat:=PQty^;
      FieldValues['price_sell']:=DM.Balances.FieldValues['price_sell'];
      FieldValues['warehouse_id']:=DM.Balances.FieldValues['warehouse_id'];
      Post;
      end;
    finally
      QS.Free;
      Dispose(PQty);
    end;
  end;
end;

procedure TfmCheck.cbDiscountTypeChange(Sender: TObject);
begin

  Recalc;
end;

procedure TfmCheck.dbedtDiscountChange(Sender: TObject);
begin
  Recalc;
end;

procedure TfmCheck.DBGridGroupsKeyPress(Sender: TObject; var Key: Char);
begin
  case Ord(Key) of
    VK_RETURN:DBGridRest.SetFocus;
  end;
end;

procedure TfmCheck.DBGridRestDblClick(Sender: TObject);
begin
  ActionSelectExecute(Self);
end;

procedure TfmCheck.DBGridRestKeyPress(Sender: TObject; var Key: Char);
begin
  case Ord(Key) of
    VK_RETURN:ActionSelectExecute(Self);
    VK_ESCAPE:deCache.SetFocus;
  end;

end;

procedure TfmCheck.dblkDiscountTypeCloseUp(Sender: TObject);
begin
  Recalc;
end;

procedure TfmCheck.deCacheChange(Sender: TObject);
begin
  Recalc;
end;

procedure TfmCheck.deCacheEnter(Sender: TObject);
begin
  BitBtnOK.Default:=True;
end;

procedure TfmCheck.deCacheExit(Sender: TObject);
begin

  BitBtnOK.Default:=False;
end;

procedure TfmCheck.DSCheckDetailStateChange(Sender: TObject);
var
  change: Currency;
begin
  if DM.CheckDetail.State = dsBrowse then
    Recalc;
end;

procedure TfmCheck.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DM.Check.FieldByName('isclosed').AsInteger=0 then
    begin
    if MessageDlg('Чек не распечатан.'#13#10'Вы действительно хотите его отменить?',
                   mtConfirmation,[mbYes, mbNo], 0)=mrYes then
      begin
        DM.pFIBDocs.Delete;
        DM.pFIBDocs.Refresh;
        Action:=caFree;
      end
    else
      Action:=caNone;
    end
  else
    Action:=caFree;

end;

procedure TfmCheck.FormShow(Sender: TObject);
begin
  if DM.Check.FieldByName('isclosed').AsInteger<>0 then
    begin
    DBGridDetail.ReadOnly:=true;
    DBLookupComboBox2.ReadOnly:=true;
    DBLookupComboBox1.ReadOnly:=true;
    deCache.ReadOnly:=true;
    DBEdit1.ReadOnly:=true;
    DBNumberEditEh1.ReadOnly:=true;
    DBEdit3.ReadOnly:=true;
    end;

  DM.Balances.Active := false;
  DM.Balances.Active := true;
  //DM.Balances.IndexFieldNames:='food_id';
  DBGridRest.SetFocus;

end;

procedure TfmCheck.Recalc;
var
  Cache, change, CheckSum: Currency;
  DiscountType: Integer;
begin
  try
    with DM.TempQuery do
    begin
      Params[0].Value := DM.Check.FieldValues['id'];
      Open;
      CheckSum := FieldByName('CheckSum').AsCurrency;
      //Discount := DM.DSCheck.DataSet.FieldByName('Discount').AsCurrency;
      Discount := StrToFloatDef(dbedtDiscount.Text, 0);
      DiscountType := DM.DSCheck.DataSet.FieldByName('Discount_types_id').AsInteger;
      //DiscountType := VarToRefObject(dblkDiscountType.KeyValue;
      case DiscountType of
        1: Discount := RoundTo(CheckSum * Discount/100, -DM.RoundDiscountTo);
        2: Discount := RoundTo(Discount, -DM.RoundDiscountTo);
      else
         Discount := 0;
      end;

      TotalSum := CheckSum - Discount;
      LblTotal.Caption := FormatCurr('"ИТОГО: "####0.00', TotalSum);
      lblDiscount.Caption := FormatCurr('"СКИДКА: "####0.00', Discount);
      lblCheckSum.Caption := FormatCurr('"СУММА: "####0.00', CheckSum);
      Close;
    end;

    if Trim(deCache.Text) <> '' then
    begin
      Cache := deCache.Value;
      change := Cache-TotalSum;
      LblChange.Caption := 'СДАЧА: ' + FormatCurr('####0.00', change)
    end;


  except
  end;
end;

procedure TfmCheck.WMRecalc(var Mes: TMessage);
begin
  Recalc;
end;

end.
