unit FormDesigner;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, sPanel, sSkinProvider, frxClass, sDialogs;

type
  TForm2 = class(TForm)
    DesignerPanel: TsPanel;
    sSkinProvider1: TsSkinProvider;
    sOpenDialog1: TsOpenDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    destructor Destroy; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  safe:boolean;
implementation

uses MainUnit, UnitDM, frxDesgn;

{$R *.dfm}

destructor TForm2.Destroy;
begin
  if DM.frxReport1.Designer<>nil then
  begin
    DM.frxReport1.Designer.Close;
    TfrxDesignerForm(DM.frxReport1.Designer).Free;
  end;
  DesignerPanel.Free;
  inherited;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  
  FormMain.MainPanel.Visible:=safe;
  Action:=caFree;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  safe:=FormMain.MainPanel.Visible;
  FormMain.MainPanel.Hide;
end;

end.
