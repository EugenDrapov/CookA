unit frmEnterQty;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, DBCtrlsEh;

type
  TFormEnterQty = class(TForm)
    DBText1: TDBText;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    edtEnterQty: TDBNumberEditEh;
    Label2: TLabel;
    DBText2: TDBText;
    Label3: TLabel;
    BitBtnOK: TBitBtn;
    BitBtnCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnOKClick(Sender: TObject);
  private
    { Private declarations }
    CloseResult:TModalResult;
  public
    { Public declarations }
    EnterQty:PDouble;
    procedure DoCancelPress;
  end;

var
  FormEnterQty: TFormEnterQty;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormEnterQty.BitBtnOKClick(Sender: TObject);
var
  errCode: Integer;
  V:Double;
begin
  BitBtnOK.SetFocus;
  EnterQty^ := edtEnterQty.Value;
  if EnterQty^>DM.Balances.FieldByName('qty').AsFloat then
    if MessageDlg('Кол-во больше остатка!', mtWarning, [mbCancel, mbOK], 0)=mrOk then
      begin
      CloseResult:=mrOk;
      end
    else
      CloseResult:=mrCancel;
end;

procedure TFormEnterQty.DoCancelPress;
begin
  BitBtnCancel.SetFocus;
  BitBtnCancel.Click;
end;

procedure TFormEnterQty.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  case CloseResult of
    mrCancel:
      begin
      Action:=caNone;
      ModalResult:=mrNone;
      edtEnterQty.SetFocus;
      end
  else
    Action:=caFree
  end;
  CloseResult:=mrClose;
end;

procedure TFormEnterQty.FormShow(Sender: TObject);
begin
  EnterQty^:=1.0;
  edtEnterQty.Value:=EnterQty^;
  CloseResult:=ModalResult;
  edtEnterQty.SetFocus;
end;

end.
