unit PassWordCash;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons;

type
  TCashPasswordDlg = class(TForm)
    lblMsg: TLabel;
    Password: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function GetMsgText: string;
    procedure SetMsgText(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    PResult:PInteger;
  published
    property MsgText:string read GetMsgText write SetMsgText;
  end;

var
  CashPasswordDlg: TCashPasswordDlg;

implementation

uses Dialogs;

{$R *.dfm}

procedure TCashPasswordDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TCashPasswordDlg.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if ModalResult=mrOk then
  try
     PResult^:=StrToInt(Password.Text);
  except
     Dialogs.MessageDlg('Не верный пароль!', mtError, [mbClose], 0);
     CanClose:=false;
  end;
end;

function TCashPasswordDlg.GetMsgText: string;
begin
  Result:=lblMsg.Caption;
end;

procedure TCashPasswordDlg.SetMsgText(const Value: string);
begin
  lblMsg.Caption:=Value;
end;

end.
 
