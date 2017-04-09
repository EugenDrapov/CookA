unit UnitFormRepNodeEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sComboBox, sEdit, sSkinProvider, sLabel,
   sSpeedButton, sDialogs, UnitReports;

type
  TFormRepNodeEdit = class(TForm)
    sLabel1: TsLabel;
    sSkinProvider1: TsSkinProvider;
    EdtCaption: TsEdit;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sComboBox1: TsComboBox;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sOpenDialog1: TsOpenDialog;
    EditReportFile: TsEdit;
    BtnChooseReport: TsSpeedButton;
    EdtHint: TsEdit;
    sLabel4: TsLabel;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnChooseReportClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    FNode: TSchemaNode;
    FHint:string;
    FNodeCaption:string;
    FNodeKind:TNodeKind;
    FReport:string;
    procedure SetNode(const Value: TSchemaNode);
  public
    { Public declarations }
    property Node:TSchemaNode  read FNode write SetNode;
  end;

var
  FormRepNodeEdit: TFormRepNodeEdit;

implementation

{$R *.dfm}

procedure TFormRepNodeEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRepNodeEdit.FormCreate(Sender: TObject);
begin
  sOpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'Template\';
end;

procedure TFormRepNodeEdit.FormShow(Sender: TObject);
begin
   EdtCaption.Text:=FNodeCaption;
   sComboBox1.ItemIndex:=Ord(FNodeKind);
   EditReportFile.Text := FReport;
   EdtHint.Text:=FHint;
   sComboBox1Change(nil);
end;

procedure TFormRepNodeEdit.sBitBtn1Click(Sender: TObject);
begin
  with FNode do
  begin
    Caption:=EdtCaption.Text;
    Hint:=EdtHint.Text;
    //NodeKind:=TNodeKind(sComboBox1.ItemIndex);
    ReportFile:=EditReportFile.Text;
  end;
end;

procedure TFormRepNodeEdit.sComboBox1Change(Sender: TObject);
var index:Integer;
begin
  index:=sComboBox1.ItemIndex;
  FNodeKind:=TNodeKind(index);
  case index of
    0:begin
      FReport:='';
      EditReportFile.Enabled:=false;
      BtnChooseReport.Enabled:=false;
      end;
    1:begin
      EditReportFile.Enabled:=true;
      BtnChooseReport.Enabled:=true;
      end;
  end;
end;

procedure TFormRepNodeEdit.SetNode(const Value: TSchemaNode);
begin
  FNode := Value;
  FNodeCaption:=Value.Caption;
  FHint:=Value.Hint;
  FReport:=Value.ReportFile;
  FNodeKind:=Value.NodeKind;
end;

procedure TFormRepNodeEdit.BtnChooseReportClick(Sender: TObject);
begin
if sOpenDialog1.Execute(Handle) then
    EditReportFile.Text:=sOpenDialog1.FileName;
end;

end.
