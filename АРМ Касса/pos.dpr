program pos;

uses
  Forms,
  UnitMain in 'UnitMain.pas' {FormMain},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  frmCheck in 'frmCheck.pas' {fmCheck},
  DrvFRLib_TLB in 'DrvFRLib_TLB.pas',
  untShtrih500Driver in 'untShtrih500Driver.pas',
  frmEnterQty in 'frmEnterQty.pas' {FormEnterQty},
  UnitCheckPrn in 'UnitCheckPrn.pas',
  frmWorkStationSettings in 'frmWorkStationSettings.pas' {FormWorkStationSettings},
  PassWordCash in 'PassWordCash.pas' {CashPasswordDlg},
  BasePassWord in 'BasePassWord.pas' {BasePasswordDlg},
  S500DrvLib_TLB in 'S500DrvLib_TLB.pas',
  uPrinterDriver in 'uPrinterDriver.pas',
  uSettings in 'uSettings.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
