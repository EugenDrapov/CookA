unit UnitFormPrnFrms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, acDBGrid, DBCtrls, sDBLookupComboBox, sDialogs,
  sSkinProvider, StdCtrls, Buttons, sBitBtn, sSpeedButton, ImgList,
  acAlphaImageList;

type
  TFormPrnFrms = class(TForm)
    sDBLookupComboBox1: TsDBLookupComboBox;
    sSkinProvider1: TsSkinProvider;
    sOpenDialog1: TsOpenDialog;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    sAlphaImageList1: TsAlphaImageList;
    sBitBtn3: TsBitBtn;
    sBitBtn4: TsBitBtn;
    sBitBtn5: TsBitBtn;
    sDBGrid1: TsDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure sDBGrid1DblClick(Sender: TObject);
    procedure sBitBtn1Click(Sender: TObject);
    procedure sBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    safe:boolean;
  public
    { Public declarations }
  end;

var
  FormPrnFrms: TFormPrnFrms;

implementation

uses UnitDM, MainUnit, DB;

{$R *.dfm}

procedure TFormPrnFrms.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if sDBGrid1.DataSource.DataSet.State<>dsBrowse then
    sDBGrid1.DataSource.DataSet.Cancel;
  FormMain.MainPanel.Visible:=safe;
  Action:=caFree;
end;

procedure TFormPrnFrms.FormShow(Sender: TObject);
begin
  safe:=FormMain.MainPanel.Visible;
  FormMain.MainPanel.Hide;
  with sDBLookupComboBox1, sDBLookupComboBox1.ListSource.DataSet do
    begin
      KeyValue:=FieldByName('ID').AsInteger;
    end;
end;

procedure TFormPrnFrms.sBitBtn1Click(Sender: TObject);
begin
  if sDBGrid1.DataSource.DataSet.State<>dsBrowse then
    sDBGrid1.DataSource.DataSet.Post;
  Close;
end;

procedure TFormPrnFrms.sBitBtn2Click(Sender: TObject);
begin
  if sDBGrid1.DataSource.DataSet.State<>dsBrowse then
    sDBGrid1.DataSource.DataSet.Cancel;
  Close;
end;

procedure TFormPrnFrms.sDBGrid1DblClick(Sender: TObject);
begin
  if sDBGrid1.SelectedField.FieldName='REPORTFILE' then
  with sDBGrid1.DataSource.DataSet do
    begin
      sOpenDialog1.InitialDir:=ExtractFilePath(Application.ExeName)+'Template\';
      if sOpenDialog1.Execute(Handle) then
          begin
            Edit;
            FieldByName('reportfile').AsString:=ExtractFileName(sOpenDialog1.FileName);
          end;
    end;
end;

end.
