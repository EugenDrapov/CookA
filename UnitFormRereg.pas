unit UnitFormRereg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sMemo, Buttons, sBitBtn, ComCtrls, acProgressBar, sLabel,
  sCheckBox, sGroupBox, ExtCtrls, sPanel, pFIBStoredProc, FIBQuery, pFIBQuery,
  DB, FIBDataSet, pFIBDataSet, FIBDatabase, pFIBDatabase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TFormRereg = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sGroupBox1: TsGroupBox;
    flgReciept: TsCheckBox;
    flgWriteOff: TsCheckBox;
    flgSale: TsCheckBox;
    lblInfo: TsLabel;
    ProgressBar1: TsProgressBar;
    sBitBtn1: TsBitBtn;
    sBitBtn2: TsBitBtn;
    MemoMsg: TsMemo;
    sp_Register: TFDStoredProc;
    TransWrite: TFDTransaction;
    QryR: TFDQuery;
    flgInventory: TCheckBox;
    procedure sBitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure RegisterDocs(aQry:TFDQuery);
  end;

var
  FormRereg: TFormRereg;

implementation

uses UnitDM, MainUnit, DateUtils;
{$R *.dfm}

procedure TFormRereg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormRereg.RegisterDocs(aQry: TFDQuery);
var
  cnt: Integer;
begin
  cnt:=0;
  with aQry do
    begin
      while not Eof do
      begin
        MemoMsg.Lines.Append(Format('%s №%s от %s',[FieldByName('doctype').AsString, FieldByName('code').AsString, DateToStr(FieldByName('docdate').AsDateTime)]));
        Inc(cnt);
        ProgressBar1.Position := Round(100 * cnt / RecordCount);
        sp_Register.ParamByName('idoc_id').AsInteger := FieldByName('id').AsInteger;
        sp_Register.ExecProc;
        Application.ProcessMessages;
        Next
      end;
    end;
end;

procedure TFormRereg.sBitBtn1Click(Sender: TObject);
var
  old_ChkClose: Integer;
  S:string;
  cnt: Integer;
  start, finish: Cardinal;
begin
  ProgressBar1.Position := 0;
  ProgressBar1.Visible := true;
  with QryR do
  begin
    Close;
    ParamByName('BD').AsDateTime := StartOfTheDay(DM.BeginPeriod);
    ParamByName('ED').AsDateTime := EndOfTheDay(DM.EndPeriod);

    MemoMsg.Clear;
    S:='';
    if flgReciept.Checked then
     begin
     S:=S+',1';
     end;
    if flgSale.Checked then
     begin
     S:=S+',4';
     end;
    if flgWriteOff.Checked then
     begin
     S:=S+',6';
     end;
    if flgInventory.Checked then
     begin
     S:=S+',8';
     end;
    S:=S.Substring(1);
    ParamByName('doct').AsString := S;
    start := GetTickCount;
    Open;
    Last;
    First;
    //Reregistering
    sp_Register.Transaction.StartTransaction;
    try
      RegisterDocs(QryR);
      finish := GetTickCount;
      MemoMsg.Lines.Append('Время выполнения '+FloatToStr(Abs(finish-start)/1000)+' сек');
      Close;
    except
      begin
      sp_Register.Transaction.Rollback;
      raise
      end;
    end;
    MemoMsg.Lines.Append('Принятие изменений...');
    sp_Register.Transaction.Commit;
  end;


  ProgressBar1.Visible := false;
  ProgressBar1.Position := 0;
  ShowMessage('Перерегистрация закончена.');
end;

end.
