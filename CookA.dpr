program CookA;

uses
  Forms,
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  MainUnit in 'MainUnit.pas' {FormMain},
  UnitFormRecieve in 'UnitFormRecieve.pas' {FormRecieve},
  UnitInterChange in 'UnitInterChange.pas' {FormInterChange},
  UnitFrameInvoice in 'UnitFrameInvoice.pas' {FrameInvoice: TFrame},
  UnitFrameCataloges in 'UnitFrameCataloges.pas' {FrameCataloges: TFrame},
  UnitIntervalWiz in 'UnitIntervalWiz.pas' {FormInervalWiz},
  UnitFrameRepBalance in 'UnitFrameRepBalance.pas' {FrameRepBalance: TFrame},
  UnitFormRepNodeEdit in 'UnitFormRepNodeEdit.pas' {FormRepNodeEdit},
  UnitFormPrnFrms in 'UnitFormPrnFrms.pas' {FormPrnFrms},
  FormDesigner in 'FormDesigner.pas' {Form2},
  UnitFrameSails in 'UnitFrameSails.pas' {FrameSails: TFrame},
  UnitFormMaterials in 'UnitFormMaterials.pas' {FormMaterials},
  UnitFormTotalSail in 'UnitFormTotalSail.pas' {FormTotalSail},
  UnitFormQtyEnter in 'UnitFormQtyEnter.pas' {FormInputQty},
  UnitFormSellPrice in 'UnitFormSellPrice.pas' {FormSellPrice},
  UnitFormWriteOff in 'UnitFormWriteOff.pas' {FormWriteOff},
  UnitFormRereg in 'UnitFormRereg.pas' {FormRereg},
  UnitTransfer in 'UnitTransfer.pas' {FormTransfer},
  uFormStoreByDoc in 'uFormStoreByDoc.pas' {FormStoreByDoc},
  UnitFormBalanceDetail in 'UnitFormBalanceDetail.pas' {FormBalanceDetail},
  UnitExportEngine in 'UnitExportEngine.pas',
  frmExportSetup in 'frmExportSetup.pas' {FormExportSetup},
  fmScriptLauncher in 'fmScriptLauncher.pas' {FormScriptLauncher},
  frmExport in 'frmExport.pas' {FormExport},
  ExportClasses in 'ExportClasses.pas',
  frmClientFoodPrice in 'frmClientFoodPrice.pas' {FormClientFoodPrice},
  Unit1 in 'Unit1.pas' {Form1},
  UnitReports in 'UnitReports.pas' {FrameReports: TFrame},
  UnitFormCalc in 'UnitFormCalc.pas' {FormCalc},
  UnitFormInventory in 'UnitFormInventory.pas' {FormInventory},
  frmOLAP in 'frmOLAP.pas' {FormOLAP},
  UnitFrameMenu in 'UnitFrameMenu.pas' {FrameMenu: TFrame},
  UnitDlgCommon in 'UnitDlgCommon.pas',
  ABOUT in 'ABOUT.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  AboutBox:=TAboutBox.Create(nil);
  AboutBox.Show;
  AboutBox.Update;

  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormInventory, FormInventory);
  Application.CreateForm(TFormOLAP, FormOLAP);
  Application.CreateForm(TAboutBox, AboutBox);
  //Application.CreateForm(TFormMenuDetail, FormMenuDetail);
  //Application.CreateForm(TForm2, Form2);
  //Application.CreateForm(TForm2, Form2);
  //Application.CreateForm(TFormPrnFrms, FormPrnFrms);
  //Application.CreateForm(TFormRepNodeEdit, FormRepNodeEdit);
  //Application.CreateForm(TFormRegisterReports, FormRegisterReports);
  //Application.CreateForm(TFormInervalWiz, FormInervalWiz);
  //Application.CreateForm(TFormCalc, FormCalc);
  //Application.CreateForm(TFormRecieve, FormRecieve);
  //Application.CreateForm(TFormMenuDetail, FormMenuDetail);
  AboutBox.Hide;
  AboutBox.Free;
  Application.Run;
end.
