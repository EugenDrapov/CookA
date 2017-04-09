unit frmWorkStationSettings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEh, StdCtrls, Mask, DBCtrlsEh, DBLookupEh, Buttons, ExtCtrls,
  Vcl.ComCtrls, Data.Bind.Components, Data.Bind.ObjectScope, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  System.ImageList, Vcl.ImgList;

type
  TFormWorkStationSettings = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    lkOrg: TDBLookupComboboxEh;
    Label2: TLabel;
    lkDep: TDBLookupComboboxEh;
    Label5: TLabel;
    edtDiscountRoundTo: TEdit;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    PanelPrinters: TPanel;
    rgrpPrinterMode: TRadioGroup;
    StaticText1: TStaticText;
    cbPrinterName: TComboBox;
    StaticText2: TStaticText;
    cbBaudRate: TComboBox;
    TabSheet4: TTabSheet;
    edtDBName: TEdit;
    StaticText3: TStaticText;
    GroupBox1: TGroupBox;
    StaticText4: TStaticText;
    edtFinishFeedCnt: TEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    edtAddress: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateControls;
    procedure UpdateSettings;
    procedure FillPrintersList;
    procedure FillBaudRateList;
  end;

var
  FormWorkStationSettings: TFormWorkStationSettings;

implementation

uses UnitDM, UnitMain, uSettings, Printers, Math;

{$R *.dfm}

procedure TFormWorkStationSettings.BitBtn1Click(Sender: TObject);
begin
  UpdateSettings;
end;

procedure TFormWorkStationSettings.FillBaudRateList;
var
  i: Integer;
  B:Integer;
begin
  B:=2400;
  with cbBaudRate.Items do
    begin
    for i := 0 to 4 do
      begin
      Append(IntToStr(B));
      B:=B*2;
      end;
      Append('57600');
      Append('115200');
    end;
end;

procedure TFormWorkStationSettings.FillPrintersList;
var
  i: Integer;
begin
  cbPrinterName.Items.Assign(Printer.Printers);
  with cbPrinterName.Items do
    for i := 1 to 9 do
      Append('COM'+IntToStr(i));
end;

procedure TFormWorkStationSettings.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if ModalResult=mrOk then
    begin

    end;
  Action:=caFree;
end;

procedure TFormWorkStationSettings.FormShow(Sender: TObject);
var
  i:Integer;
begin
  FillPrintersList;
  FillBaudRateList;
  UpdateControls;
//  with FormMain.IniFile do
//    begin
//    i:=ReadInteger('WorkStationSettings', 'Company', DM.Organization.FieldByName('id').AsInteger);
//    DM.Organization.Locate('id', Company, []);
//    i:=ReadInteger('WorkStationSettings', 'Department', DM.Departments.FieldByName('id').AsInteger);
//    DM.Departments.Locate('id', i, []);
//    Driver.PortNumber := ReadInteger('PrinterConnection', 'COMPort', 1) - 1;
//    Driver.BaudRate := ReadInteger('PrinterConnection', 'BaudRate', 115200);
////    cbCOMPort.ItemIndex := Driver.PortNumber - 1;
////    cbBoudRate.ItemIndex := Driver.BaudRate;
//    edtDiscountRoundTo.Text := IntToStr(DM.RoundDiscountTo);
//    end;
end;

procedure TFormWorkStationSettings.UpdateControls;
begin
  with Settings.General do // General
    begin
    DM.Organization.Locate('id', Company, []);
    DM.Departments.Locate('id', Department, []);
    end;
  with Settings.PrinterConnection do
    begin
    rgrpPrinterMode.ItemIndex := PrinterMode;
    cbPrinterName.Text := PrinterName;
    cbBaudRate.ItemIndex := BaudRate;
    edtFinishFeedCnt.Text := IntToStr(FinishFeedLinesCnt);
    edtAddress.Text := Address;
    end;
  with Settings.CalcRules do
    begin
    edtDiscountRoundTo.Text := IntToStr(RoundDiscountTo);
    end;
  with Settings.DBParams do
    begin
    edtDBName.Text := DBName;
    end;
end;

procedure TFormWorkStationSettings.UpdateSettings;
begin
  with Settings.General do // General
    begin
    Company := DM.Organization.FieldByName('id').AsInteger;
    Department := DM.Departments.FieldByName('id').AsInteger;
    end;
  with Settings.PrinterConnection do
    begin
    PrinterMode := rgrpPrinterMode.ItemIndex;
    PrinterName:=cbPrinterName.Text;
    BaudRate := cbBaudRate.ItemIndex;
    FinishFeedLinesCnt := StrToInt(edtFinishFeedCnt.Text);
    Address := edtAddress.Text;
    end;
  with Settings.CalcRules do
    begin
    RoundDiscountTo := StrToInt(edtDiscountRoundTo.Text);
    end;
  with Settings.DBParams do
    begin
    edtDBName.Text := DBName;
    end;
  Settings.Flush;
end;

end.
