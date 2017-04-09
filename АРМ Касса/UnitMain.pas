unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdActns, Menus, ComCtrls, ActnMan, ExtCtrls, ImgList, ToolWin, ActnCtrls,
  GridsEh, DBGridEh, UnitDM, Grids, DBGrids,
  PlatformDefaultStyleActnCtrls, StdCtrls, IniFiles, DBCtrls,
  System.Actions, System.ImageList, Data.DB;

type
  TFormMain = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    ActionToolBar1: TActionToolBar;
    ImageList1: TImageList;
    Panel1: TPanel;
    N1: TMenuItem;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    LblCasher: TLabel;
    DBText1: TDBText;
    ActionManager1: TActionManager;
    FileExit1: TFileExit;
    Action1: TAction;
    ActionWorkStation: TAction;
    ActionSettings: TAction;
    ActionZreport: TAction;
    ActionXreport: TAction;
    ActionReprint: TAction;
    ActionRepbyDepart: TAction;
    ActionContinuePrint: TAction;
    DataSource1: TDataSource;
    ActionTest: TAction;
    procedure Action1Execute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActionWorkStationExecute(Sender: TObject);
    procedure ActionZreportExecute(Sender: TObject);
    procedure ActionXreportExecute(Sender: TObject);
    procedure ActionRepbyDepartExecute(Sender: TObject);
    procedure ActionReprintExecute(Sender: TObject);
    procedure ActionContinuePrintExecute(Sender: TObject);
    procedure ActionTestExecute(Sender: TObject);
  private
    { Private declarations }
    FIni:TIniFile;
    FPassword: Integer;
    FUser: string;
    FSysPassword: Integer;
    procedure SetPassword(const Value: Integer);
    procedure SetUser(const Value: string);
    procedure SetSysPassword(const Value: Integer);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property IniFile:TIniFile read FIni;
    property Password:Integer read FPassword;
    property SysPassword:Integer read FSysPassword write SetSysPassword;
    property User:string read FUser write SetUser;
  end;

var
  FormMain: TFormMain;

implementation

uses frmCheck , PassWordCash, frmWorkStationSettings, UnitCheckPrn,
  uBasePrnDriver, uSettings;

{$R *.dfm}

procedure TFormMain.Action1Execute(Sender: TObject);
var
  FC:TfmCheck;
begin
  while MessageDlg('Открыть новый чек?', mtConfirmation, [mbYes, mbNo], 0)=mrYes do
    begin
    DM.pFIBDocs.Append;
    DM.Check.Append;
    DM.Check.FieldValues['cache_income']:=0.0;
    FC:=TfmCheck.Create(nil);
    dm.ActiveFormHandle:=FC.Handle;
    FC.ShowModal;
    end;

end;

procedure TFormMain.ActionContinuePrintExecute(Sender: TObject);
begin
//  with TCheckPrn.Create do
//    try
//      ContinuePrint;
//    finally
//      Free
//    end;
//  Form1.Show;
end;

procedure TFormMain.ActionRepbyDepartExecute(Sender: TObject);
begin
  with TCheckPrn.Create do
    try
      PrintReportBySections;
    finally
      Free
    end;
end;

procedure TFormMain.ActionReprintExecute(Sender: TObject);
begin
  with TCheckPrn.Create do
    try
      Reprint;
    finally
      Free
    end;
end;

procedure TFormMain.ActionTestExecute(Sender: TObject);
begin
  with TCheckPrn.Create do
    try
      if not CheckErr(OpenPrn, 'Open') then
        begin
        OutString('TEST', taCenter, True);
        OutString('Простая строка.');
        OutString('ИТОГОВАЯ',taLeftJustify, True,0,0,1234.56);
        ClosePrn;
        end;
    finally
      Free;
    end;
end;

procedure TFormMain.ActionWorkStationExecute(Sender: TObject);
var
  FWS:TFormWorkStationSettings;
begin
  Self.Hide;
  FWS:=TFormWorkStationSettings.Create(Self);
  try
    FWS.ShowModal;
  finally
    FWS.Free;
    Self.Show;
  end;
end;

procedure TFormMain.ActionXreportExecute(Sender: TObject);
begin
  with TCheckPrn.Create do
    try
      PrintReport;
    finally
      Free
    end;
end;

procedure TFormMain.ActionZreportExecute(Sender: TObject);
begin
  with TCheckPrn.Create do
    try
      CloseSession;
    finally
      Free
    end;
end;

constructor TFormMain.Create(AOwner: TComponent);
begin
  inherited;
  
end;

destructor TFormMain.Destroy;
begin
  FIni.Free;
  inherited;
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  PW:TCashPasswordDlg;
  pass:PInteger;
  usrno:Integer;
  flg:boolean;
begin
  if not DM.FDConnection1.Connected then
    begin
    MessageDlg('Нет соединения с сервером!', mtError, [mbClose], 0);
    Exit;
    end;
  DM.Organization.Locate('id', Settings.General.Company, []);
  DM.Departments.ApplyMaster;
  DM.Departments.Locate('id', Settings.General.Department, []);
//
//  if Driver.FindDevice<>0 then
//      begin
//      MessageDlg('ККМ не обнаружена!', mtError, [mbClose], 0);
//      Exit;
//      end;
//  FSysPassword:=IniFile.ReadInteger('Adm', 'password', 0);
//  FSysPassword:=Lo(FSysPassword)*256+HiByte(FSysPassword);
//  New(pass);
//  try
//    PW:=TCashPasswordDlg.Create(Self);
//    PW.PResult := pass;
//    repeat
//      if PW.ShowModal = mrOk then
//        FPassword:=pass^
//      else
//        begin
//        FPassword:=0;
//        User:='<Не авторизован>'
//        end;
//      flg:=false;
////      Driver.Password:=Password;
////      Driver.Connect;
////      if Driver.Connected then
////        begin
//        if Driver.GetShortECRStatus=0 then
//          with Driver do
//            begin
////            usrno:=OperatorNumber;
////            TableNumber:=2;
////            RowNumber:=usrno;
////            FieldNumber:=2;
//////            Driver.Password:=SysPassword;
////            GetFieldStruct;
////            ReadTable;
////            User:=ValueOfFieldString;
////            Driver.Password:=Password;
//            flg:=true;
//            end;
////        end;
//    until (Password=0) or flg;
//  finally
//    Dispose(pass);
//  end;

end;

procedure TFormMain.SetPassword(const Value: Integer);
begin
  FPassword := Value;
end;

procedure TFormMain.SetSysPassword(const Value: Integer);
begin
  FSysPassword := Value;
end;

procedure TFormMain.SetUser(const Value: string);
begin
  FUser := Value;
  LblCasher.Caption:='Кассир: '+Value;
end;

end.
