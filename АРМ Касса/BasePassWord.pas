unit BasePassWord;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons;

type
  TBasePasswordDlg = class(TForm)
    Label1: TLabel;
    Password: TEdit;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label2: TLabel;
    Label3: TLabel;
    User: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BasePasswordDlg: TBasePasswordDlg;

implementation

{$R *.dfm}

end.
 
