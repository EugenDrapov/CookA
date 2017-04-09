unit MainUnit;

interface

uses
  Classes, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
   Vcl.ComCtrls, Vcl.Menus, acAlphaImageList,
  System.ImageList, Vcl.ImgList, Vcl.Controls, Vcl.DBActns, Vcl.StdActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.DBCtrls, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, sLabel, sDBText, EhLibVCL, GridsEh, DBAxisGridsEh,
  DBGridEh, Vcl.Forms, sScrollBox, sFrameBar, Vcl.ExtCtrls, sSplitter,
  System.Types, Vcl.DBGrids, Data.DB, Winapi.Messages, UnitDM, Vcl.Mask,
  sMaskEdit, sCustomComboEdit, sToolEdit;

type


  TFormMain = class(TForm)
    ActionManager1: TActionManager;
    MainMenu1: TMainMenu;
    StatusBar1: TStatusBar;
    PeriodPanel: TPanel;
    Label1: TLabel;
    ActionCriteria: TAction;
    ActionReport: TAction;
    ActionDesignReport: TAction;
    ImageList1: TImageList;
    NavigatorPanel: TPanel;
    MainPanel: TPanel;
    ActionFood: TAction;
    ActionBrand: TAction;
    ActionCalc: TAction;
    ActionInvoice: TAction;
    ActionMenu: TAction;
    MainDBGrid: TDBGridEh;
    PanelMasterFld: TPanel;
    Splitter1: TsSplitter;
    sFrameBar1: TsFrameBar;
    DateTimePicker1: TsDateEdit;
    DateTimePicker2: TsDateEdit;
    ActionClients: TAction;
    InfoDBText: TsDBText;
    TopPanel: TPanel;
    sToolBar1: TToolBar;
    ToolBtnPrint: TToolButton;
    sAlphaImageList1: TsAlphaImageList;
    PopupMenuPrintBtn: TPopupMenu;
    sSpeedButton1: TSpeedButton;
    ActionInterval: TAction;
    WindowClose1: TWindowClose;
    File1: TMenuItem;
    Exit1: TMenuItem;
    Window1: TMenuItem;
    ArrangeAll1: TMenuItem;
    Cascade1: TMenuItem;
    ile1: TMenuItem;
    WindowArrange1: TWindowArrange;
    WindowTileVertical1: TWindowTileVertical;
    WindowCascade1: TWindowCascade;
    WindowArrange2: TWindowArrange;
    FileExit1: TFileExit;
    N1: TMenuItem;
    N2: TMenuItem;
    ActionRegPrn: TAction;
    DataSetInsert2: TDataSetInsert;
    DataSetDelete2: TDataSetDelete;
    DataSetPost1: TDataSetPost;
    line11: TMenuItem;
    N3: TMenuItem;
    ActionRepDesigner: TAction;
    GroupImageList: TImageList;
    ActionTotalSail: TAction;
    Action2: TAction;
    Panel1: TPanel;
    Splitter3: TSplitter;
    Panel2: TPanel;
    Splitter4: TSplitter;
    sDBNavigator1: TDBNavigator;
    sDBNavigator2: TDBNavigator;
    sDBText1: TDBText;
    sLabel1: TLabel;
    sLabel2: TLabel;
    sDBText2: TDBText;
    ActionWarehouse: TAction;
    ActionDepart: TAction;
    ActionWriteOff: TAction;
    ActionRereg: TAction;
    N4: TMenuItem;
    N5: TMenuItem;
    ActionMovement: TAction;
    ActionShowMoves: TAction;
    PopupMenu1: TPopupMenu;
    N6: TMenuItem;
    N7: TMenuItem;
    Script1: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    Panel3: TPanel;
    sLabel3: TsLabel;
    sDBText3: TDBText;
    sDBNavigator3: TDBNavigator;
    Action1: TAction;
    Action3: TAction;
    N10: TMenuItem;
    ActionClientFoodPrice: TAction;
    N11: TMenuItem;
    N12: TMenuItem;
    MainDBNavigator: TDBNavigator;
    ActionFirm: TAction;
    ActionInventory: TAction;
    procedure ActionCriteriaExecute(Sender: TObject);
    procedure ActionReportExecute(Sender: TObject);
    procedure ActionDesignReportExecute(Sender: TObject);
    procedure ActionFoodExecute(Sender: TObject);
    procedure ActionBrandExecute(Sender: TObject);
    procedure ActionCalcExecute(Sender: TObject);
    procedure ActionInvoiceExecute(Sender: TObject);
    procedure DateTimePickerCloseUp(Sender: TObject);
    procedure ActionMenuExecute(Sender: TObject);
    procedure DateTimePickerExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MainDBGridDblClick(Sender: TObject);
    procedure MainDBGridDrawColumnCell_1(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DateTimePicker1AcceptDate(Sender: TObject; var aDate: TDateTime;
      var CanAccept: Boolean);
    procedure ActionClientsExecute(Sender: TObject);
    procedure sFrameBar1Items0CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure sFrameBar1Items1CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure ActionIntervalExecute(Sender: TObject);
    procedure sFrameBar1Items3CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure sFrameBar1Items4FrameDestroy(Sender: TObject;
      var Frame: TCustomFrame; var CanDestroy: Boolean);
    procedure ActionRegPrnExecute(Sender: TObject);
    procedure PrintExecute(Sender: TObject);
    procedure ActionRepDesignerExecute(Sender: TObject);
    procedure sFrameBar1Items4CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);
    procedure ActionTotalSailExecute(Sender: TObject);
    procedure ActionWarehouseExecute(Sender: TObject);
    procedure ActionDepartExecute(Sender: TObject);
    procedure ActionWriteOffExecute(Sender: TObject);
    procedure ActionReregExecute(Sender: TObject);
    procedure ActionMovementExecute(Sender: TObject);
    procedure ActionShowMovesExecute(Sender: TObject);
    procedure dxBarButtonCopyClick(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure MainDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
    procedure Script1Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure ActionClientFoodPriceExecute(Sender: TObject);
    procedure ActionFirmExecute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure ActionInventoryExecute(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure sFrameBar1Items2CreateFrame(Sender: TObject;
      var Frame: TCustomFrame);

  private
    { Private declarations }
    EditByDialog:boolean;
    FCurrentDataSource: TDataSource;
    FCurrentTypeDoc: Integer;
    procedure SetCurrentDataSource(const Value: TDataSource);
    procedure SetCurrentTypeDoc(const Value: Integer);
    procedure LMDataChange(var AMsg:TMessage); message LM_BEFORINSERT;
  public
    { Public declarations }
    IsInProcess:boolean;
    IsShow:boolean;
    property CurrentTypeDoc: Integer read FCurrentTypeDoc write SetCurrentTypeDoc;

    property  CurrentDataSource: TDataSource  read FCurrentDataSource write SetCurrentDataSource;
    procedure AttacheMainDBGrid(DS: TDataSource);
    procedure MainRefresh;
    function CanDo:Boolean;
    procedure OpenEditForm;
    procedure DoPeriodChange;
    constructor Create(AOwner: TComponent); override;

  end;

var
  FormMain: TFormMain;

implementation

uses  UnitFormRecieve,
  UnitFrameCataloges, UnitFrameInvoice, DateUtils,
  UnitIntervalWiz, UnitReports, sTreeView, frxDesgn, UnitFrameSails,
  UnitFormTotalSail, UnitFormSellPrice, UnitFormMaterials, UnitFormWriteOff,
  UnitFormRereg, UnitTransfer, uFormStoreByDoc, UnitExportEngine,
  frmExportSetup, fmScriptLauncher, frmExport, frmClientFoodPrice, Unit1,
  UnitFormPrnFrms, FormDesigner, System.SysUtils, Vcl.Dialogs, Vcl.Graphics,
  UnitInterChange, UnitFormCalc, UnitFormInventory, frmOLAP, UnitFrameMenu;
{$R *.dfm}

procedure TFormMain.ActionTotalSailExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  CurrentTypeDoc := 5;
  CurrentDataSource := DM.DSDocs;
  InfoDBText.DataSource := DM.DSDoctype;
  InfoDBText.DataField := 'descr';
  EditByDialog:=true;
  MainRefresh;
end;

procedure TFormMain.ActionWarehouseExecute(Sender: TObject);
begin
  CurrentTypeDoc := 0;
  Self.Caption := TAction(Sender).Caption;
  CurrentDataSource := DM.DSWareHouse;
  InfoDBText.DataSource := nil;
  InfoDBText.DataField := '';
  InfoDBText.Caption := 'Склады';
  EditByDialog:=false;
  MainRefresh;
end;

procedure TFormMain.ActionWriteOffExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  InfoDBText.DataSource := DM.DSDoctype;
  InfoDBText.DataField := 'descr';
  CurrentTypeDoc := 6;
  CurrentDataSource := DM.DSDocs;
  EditByDialog:=true;
  MainRefresh;
end;

procedure TFormMain.Action2Execute(Sender: TObject);
begin
   if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  InfoDBText.DataSource := DM.DSDoctype;
  InfoDBText.DataField := 'descr';
  CurrentTypeDoc := 4;
  CurrentDataSource := DM.DSDocs;
  EditByDialog:=False;
  MainRefresh;
end;

procedure TFormMain.Action3Execute(Sender: TObject);
var
  FCP: TFormSellPrice;
begin
  if CurrentDataSource=DM.DSClients then
    begin
    FCP := TFormSellPrice.Create(Self);
    FCP.TblMame:='CLIENTS';
    FCP.ShowModal;
    end;
end;

procedure TFormMain.ActionBrandExecute(Sender: TObject);
begin
  CurrentTypeDoc := 0;
  Self.Caption := TAction(Sender).Caption;
  CurrentDataSource := DM.DSBrand;
  InfoDBText.DataSource := nil;
  InfoDBText.DataField := '';
  InfoDBText.Caption := 'Блюда';
  EditByDialog:=False;
  MainRefresh;
end;

procedure TFormMain.ActionCalcExecute(Sender: TObject);
var
  FC: TFormCalc;
begin
  if not CanDo then  Exit;
  CurrentTypeDoc := 0;
  Self.Caption := TAction(Sender).Caption + ' => ' + DM.DSBrand.DataSet.FieldValues
    ['DESCR'];
  //CurrentDataSource := DM.DSCalc;
  InfoDBText.DataSource := DM.DSBrand;
  InfoDBText.DataField := 'descr';
  EditByDialog:=true;
  //AttacheMainDBGrid(DM.DSCalc);
  FC:=TFormCalc.Create(Self);
  FC.ShowModal;
end;

procedure TFormMain.ActionClientFoodPriceExecute(Sender: TObject);
var
  FCP: TFormClientFoodPrice;
begin
  if CurrentDataSource=DM.DSClients then
    begin
    FCP := TFormClientFoodPrice.Create(Self);
    FCP.ShowModal;
    end;
end;

procedure TFormMain.ActionClientsExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  CurrentTypeDoc := 0;
  Self.Caption := TAction(Sender).Caption;
  CurrentDataSource := DM.DSClients;
  InfoDBText.DataSource := nil;
  InfoDBText.DataField := '';
  InfoDBText.Caption := 'Клиенты';
  EditByDialog:=false;
  MainRefresh;
end;

procedure TFormMain.ActionCriteriaExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  if Assigned(CurrentDataSource) then
  begin
//    FormCriteria.DS := CurrentDataSource.DataSet;
//    FormCriteria.ShowModal;
  end;
end;

procedure TFormMain.ActionDepartExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  CurrentTypeDoc := 0;
  Self.Caption := TAction(Sender).Caption;
  CurrentDataSource := DM.DSDepartments;
  InfoDBText.DataSource := nil;
  InfoDBText.DataField := '';
  InfoDBText.Caption := 'Подразделения';
  EditByDialog:=false;
  MainRefresh;
end;

procedure TFormMain.ActionDesignReportExecute(Sender: TObject);
var
  i: Integer;
begin
  i := 1;
end;

procedure TFormMain.ActionFirmExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  CurrentTypeDoc := 0;
  Self.Caption := TAction(Sender).Caption;
  CurrentDataSource := DM.DSCompany;
  InfoDBText.DataSource := nil;
  InfoDBText.DataField := '';
  InfoDBText.Caption := 'Организации';
  EditByDialog:=false;
  MainRefresh;
end;

procedure TFormMain.ActionFoodExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  InfoDBText.DataSource := nil;
  InfoDBText.DataField := '';
  CurrentTypeDoc := 0;
  CurrentDataSource := DM.DSFood;
  OpenEditForm;
end;

procedure TFormMain.ActionIntervalExecute(Sender: TObject);
var fi:TFormInervalWiz;
    MainVisible:boolean;
begin
  MainVisible:=MainPanel.Visible;
  MainPanel.Hide;
  fi:=TFormInervalWiz.Create(Application);
  fi.Show;
  fi.ModalResult:=0;
  repeat
    Application.HandleMessage;
    if Application.Terminated then fi.ModalResult:=mrCancel;
  until fi.ModalResult<>0;
  if fi.ModalResult=mrOk then
    begin
    DateTimePicker1.Date:=fi.Date1.Date;
    DateTimePicker2.Date:=fi.Date2.Date;
    DoPeriodChange;
    end;
  fi.Free;
  MainPanel.Visible:=MainVisible;
  if MainVisible then
    begin
    MainRefresh;
    end;
end;

procedure TFormMain.ActionInventoryExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  InfoDBText.DataSource := DM.DSDoctype;
  InfoDBText.DataField := 'descr';
  CurrentTypeDoc := 8;
  CurrentDataSource := DM.DSDocs;
  EditByDialog:=true;
  MainRefresh;
end;

procedure TFormMain.ActionInvoiceExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  InfoDBText.DataSource := DM.DSDoctype;
  InfoDBText.DataField := 'descr';
  CurrentTypeDoc := 1;
  CurrentDataSource := DM.DSDocs;
  EditByDialog:=true;
  MainRefresh;
end;

procedure TFormMain.ActionMenuExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  CurrentTypeDoc := 2;
  CurrentDataSource := DM.DSDocs;
  InfoDBText.DataSource := DM.DSDoctype;
  InfoDBText.DataField := 'descr';
  EditByDialog:=true;
  MainRefresh;
end;

procedure TFormMain.ActionMovementExecute(Sender: TObject);
begin
  if not CanDo then  Exit;
  Self.Caption := TAction(Sender).Caption;
  InfoDBText.DataSource := DM.DSDoctype;
  InfoDBText.DataField := 'descr';
  CurrentTypeDoc := 7;
  CurrentDataSource := DM.DSDocs;
  EditByDialog:=true;
  MainRefresh;
end;

procedure TFormMain.PrintExecute(Sender: TObject);
var
  id:integer;
begin
  with DM, DM.DSConfPrn.DataSet do
    begin
      Locate('id', TMenuItem(Sender).Tag, []);
      frxReport1.LoadFromFile(DM.ExePath+'\Templates\'
                +FieldByName('REPORTFILE').AsString);
      id:=CurrentDataSource.DataSet.FieldByName('id').AsInteger;
      frxReport1.Variables.AddVariable('v','vdocid', id);
      frxReport1.ShowReport;
    end;
end;

procedure TFormMain.Script1Click(Sender: TObject);
var
  FSL:TFormScriptLauncher;
begin
  FSL:=TFormScriptLauncher.Create(MainPanel);
  FSL.Show;
 // FSL.SynEditor.SetFocus;
end;

procedure TFormMain.SetCurrentDataSource(const Value: TDataSource);
begin
  if FCurrentDataSource<>Value then
    begin
    if Assigned(FCurrentDataSource) then
      begin
      if FCurrentDataSource.DataSet.State in dsEditModes  then
        FCurrentDataSource.DataSet.Post;
      //FCurrentDataSource.DataSet.Close;
      end;
    FCurrentDataSource := Value;
//    if Assigned(Value) then
//      begin
//      Value.DataSet.Open;
//      end;
    end;
end;

procedure TFormMain.SetCurrentTypeDoc(const Value: Integer);
begin
  FCurrentTypeDoc := Value;
  if Value>0 then
    DM.DSDoctype.DataSet.Locate('id', Value, []);
end;

procedure TFormMain.ActionRegPrnExecute(Sender: TObject);
var
  F:TFormPrnFrms;
begin
  F:=TFormPrnFrms.Create(Application);
  F.Show;
end;

procedure TFormMain.ActionRepDesignerExecute(Sender: TObject);
var
  FD:TForm2;
  Designer:TfrxDesignerForm;
  S:string;
begin
  //FD:=TForm2.Create(Application);
  //frxReport1.EngineOptions.DestroyForms:=false;
  //DM.frxDBDataset1.FieldAliases;
  //DM.frxReport1.DesignReportInPanel(FD.DesignerPanel);
  S:=ExtractFilePath(Application.ExeName)+'\Template';
  DM.frxReport1.DesignReport;

  //FD.Show;
end;

procedure TFormMain.ActionReportExecute(Sender: TObject);
var
  id:integer;
  db,de:string;
begin
  with DM, DM.DSConfPrn.DataSet do
    begin
      Locate('id', ActionReport.Tag, []);
      frxReport1.Clear;
      frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'Templates\'
                +FieldByName('REPORTFILE').AsString);
      id:=CurrentDataSource.DataSet.FieldByName('id').AsInteger;
      db:=QuotedStr(DateToStr(DateTimePicker1.Date));
      de:=QuotedStr(DateToStr(DateTimePicker2.Date));
      frxReport1.EngineOptions.DestroyForms:=false;
      frxReport1.Variables.AddVariable('v','dep_id', DSDepartments.DataSet.FieldByName('id').AsInteger);
      frxReport1.Variables.AddVariable('v','vdocid', id);
      frxReport1.Variables.AddVariable('v','beginperiod', db);
      frxReport1.Variables.AddVariable('v','endperiod', de);
      frxReport1.ShowReport(true);
    end;
end;

procedure TFormMain.ActionReregExecute(Sender: TObject);
var
  RR:TFormRereg;
begin
  RR:=TFormRereg.Create(Self);
  RR.ShowModal;
end;

procedure TFormMain.ActionShowMovesExecute(Sender: TObject);
var
  FDM:TFormStoreByDoc;
begin
  if CurrentTypeDoc>0 then
    begin
    FDM:=TFormStoreByDoc.Create(Self);
    FDM.docid:=DM.DSDocs.DataSet.FieldByName('id').AsInteger;
    FDM.ShowModal;
    end;
end;

procedure TFormMain.AttacheMainDBGrid(DS: TDataSource);
var
  pui:TMenuItem;
  i: Integer;
begin
  if EditByDialog then
    begin
    MainDBGrid.Options:=MainDBGrid.Options+[DBGridEh.dgRowSelect]
    end
  else
    begin
    MainDBGrid.Options:=MainDBGrid.Options-[DBGridEh.dgRowSelect];
    MainDBGrid.Options:=MainDBGrid.Options+[DBGridEh.dgEditing];
    end;
  MainDBGrid.DataSource := DS;
  MainDBNavigator.DataSource := DS;
  //dxBarDBNavigator1.DataSource:=DS;
  //Print button menu
  PopupMenuPrintBtn.Items.Clear;
  ActionReport.Tag:=0;
  ActionReport.Caption:='()';
  ActionReport.Enabled:=false;
  if CurrentTypeDoc>0 then
  with DM.DSConfPrn.DataSet, PopupMenuPrintBtn.Items do
    begin
      First;
      while not Eof do
      begin
        ActionReport.Enabled:=True;
        pui:=TMenuItem.Create(PopupMenuPrintBtn);
        pui.Caption:=FieldByName('descr').AsString;
        pui.OnClick:=PrintExecute;
        pui.Tag:=FieldByName('id').AsInteger;
        Add(pui);
        if Boolean(FieldByName('DFLT').AsInteger) then
          begin
          ActionReport.Tag:=FieldByName('id').AsInteger;
          ActionReport.Caption:=FieldByName('DESCR').AsString;
          end;
        Next;
      end;
    end;
  for i:=0 to MainDBGrid.Columns.Count-1 do
    begin
      MainDBGrid.Columns[i].Title.TitleButton:=true;
      if (UpperCase(MainDBGrid.Columns[i].FieldName)='SUMMA')
         or (UpperCase(MainDBGrid.Columns[i].FieldName)='QTY') then
        begin
        MainDBGrid.FooterRowCount:=1;
        MainDBGrid.Columns[i].Footer.DisplayFormat:='#0.,##';
        MainDBGrid.Columns[i].Footer.ValueType:=fvtSum;
        end;
    end;


end;

function TFormMain.CanDo: Boolean;
begin
  Result:=MainPanel.Showing;
end;

constructor TFormMain.Create(AOwner: TComponent);
begin
  inherited;
  IsShow:=false;
end;

procedure TFormMain.DateTimePickerExit(Sender: TObject);
begin
  DoPeriodChange;
end;

procedure TFormMain.DoPeriodChange;
begin
  DM.BeginPeriod := StartOfTheDay(DateTimePicker1.Date);
  DM.EndPeriod   := EndOfTheDay(DateTimePicker2.Date);
end;

procedure TFormMain.dxBarButtonCopyClick(Sender: TObject);
var
  docid:integer;
begin
  if CurrentTypeDoc=2 then
    with CurrentDataSource.DataSet do
    begin
    DM.TempQuery.Close;
    DM.TempQuery.SQL.Text:='select new_id from CopyMenu(:docid)';
    DM.TempQuery.Prepare;
    DM.TempQuery.ParamByName('docid').Value:=FieldValues['id'];
    DM.TempQuery.ExecSQL;
    docid:=DM.TempQuery.FieldByName('new_id').AsInteger;
    DM.TempQuery.Close;
    Refresh;
    if Locate('id', docid, []) then
      begin
      Application.ProcessMessages;
      OpenEditForm;
      end
    else
      begin
      ShowMessage('Документ не найден');
      end;
    end;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  IsShow:=true;
  CurrentTypeDoc := 0;
  CurrentDataSource := nil;
  MainDBGrid.DataSource := nil;
  MainDBNavigator.DataSource := nil;
  //dxBarDBNavigator1.DataSource := nil;
  DateTimePicker1.Date:=StartOfTheMonth(Now);
  DateTimePicker2.Date:=Now;
  DoPeriodChange;
end;

procedure TFormMain.LMDataChange(var AMsg: TMessage);
begin
  OpenEditForm;
end;

procedure TFormMain.DateTimePicker1AcceptDate(Sender: TObject;
  var aDate: TDateTime; var CanAccept: Boolean);
begin
  DoPeriodChange;
end;

procedure TFormMain.DateTimePickerCloseUp(Sender: TObject);
begin
  DoPeriodChange;
end;

procedure TFormMain.MainDBGridDblClick(Sender: TObject);
begin
  OpenEditForm;
end;

procedure TFormMain.MainDBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
var
  GrState:TGridDrawState;
begin
  GrState:=State;
  case CurrentTypeDoc of
    2:
      begin
        if not (gdSelected in GrState) then
          with TDBGridEh(Sender).DataSource.DataSet, TDBGridEh(Sender), TDBGridEh(Sender).Canvas do
            if FieldByName('tag1').AsInteger<>0 then
            begin
              Brush.Color := clRed;
              Font.Color := clWebWheat;
            end
            else if FieldByName('tag2').AsInteger<>0 then
            begin
              Brush.Color := clWebWheat;
              Font.Color := clBlack;
            end;

      end;
  end; // case
  TDBGridEh(Sender).DefaultDrawDataCell(Rect, Column.Field, GrState);
end;

procedure TFormMain.MainDBGridDrawColumnCell_1
  (Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  case CurrentTypeDoc of
    2:
      begin
        if gdSelected in State then
          Exit;
        with TDBGrid(Sender).DataSource.DataSet, TDBGrid(Sender), TDBGrid
          (Sender).Canvas do
          if FieldByName('tag1').AsBoolean then
          begin
            Brush.Color := clWebRed;
            Font.Color := clWebYellow;
            Font.Style:=Font.Style + [fsBold];
           // DefaultDrawDataCell(Rect, Column.Field, DBGrids.);
          end
          else if FieldByName('tag2').AsBoolean then
          begin
            Brush.Color := clWebWheat;
            Font.Color := clBlack;
            //DefaultDrawDataCell(Rect, Column.Field, TGridDrawState(State));
          end;
      end;
  end; // case
end;

procedure TFormMain.MainRefresh;
var
  i: Integer;
begin
  if not Assigned(CurrentDataSource) then
    Exit;
  IsInProcess:=true;
  AttacheMainDBGrid(CurrentDataSource);
  IsInProcess:=false;
end;

procedure TFormMain.N12Click(Sender: TObject);
begin
  TFormOLAP.Create(Self).ShowModal;
end;

procedure TFormMain.N7Click(Sender: TObject);
var
  Ex:TExport;
  FES:TFormExportSetup;
begin
    {
    Ex:=TExport.Create(ExtractFileDir(Application.ExeName)+'\config\export\expproba.xml');
      Ex.DataBase:=DM.pFIBDatabase1;
      Ex.QryParams.ClearValues;
      Ex.Generate;
      Ex.ResultXMLDoc.Encoding:='windows-1251';
      Ex.ResultXMLDoc.SaveToFile(ExtractFileDir(Application.ExeName)+'\config\export\Result.xml');
      Ex.Free;
      ShowMessage('Преобразование закончено.');
  }
  MainPanel.Hide;
  FES:=TFormExportSetup.Create(MainDBGrid);
  FES.ShowModal;
  FES.Free;
  MainPanel.Show;
end;

procedure TFormMain.N8Click(Sender: TObject);
var
  FE:TFormExport;
begin
  MainPanel.Hide;
  FE:=TFormExport.Create(MainDBGrid);
  FE.ShowModal;
  FE.Free;
  MainPanel.Show;
end;

procedure TFormMain.N9Click(Sender: TObject);
var
  Obj:TComponent;
  i:Integer;
begin
//  if DM.pFIBWriteTransaction.InTransaction then
//    DM.pFIBWriteTransaction.Commit;
//  if DM.pFIBTransaction1.InTransaction then
//    DM.pFIBTransaction1.Commit;
//  DM.FillSql;
//  for i:=0 to DM.ComponentCount-1 do
//    begin
//    Obj:=DM.Components[i];
//    if Obj is TpFIBDataSet then
//      if not Assigned(TpFIBDataSet(Obj).DataSource) then
//        if (TpFIBDataSet(Obj)<>DM.Balances) and (TpFIBDataSet(Obj)<>DM.FoodDep) then
//          begin
//          TpFIBDataSet(Obj).Active:=true;
//          end;
//    end;
//  DM.period_id:=0;
end;

procedure TFormMain.OpenEditForm;
var
  FR: TFormRecieve;
  CF: TFormInterChange;
  FTS:TFormTotalSail;
  FSP:TFormMaterials;
  FW:TFormWriteOff;
  FT:TFormTransfer;
  FI:TFormInventory;
begin
  if not (CurrentDataSource.DataSet.State in dsEditModes) then
    case CurrentTypeDoc of
      0:
        if CurrentDataSource = DM.DSBrand then
          ActionCalc.Execute
        else if CurrentDataSource = DM.DSCalc then
          begin
  //        MainPanel.Hide;
  //        CF := TFormInterChange.Create(MainDBGrid);
  //        CF.Caption:='Калькуляция '+DM.DSBrand.DataSet.FieldByName('descr').AsString;
  //        CF.TopLabel.Caption:=CF.Caption;
  //        CF.ShowModal;
  //        MainPanel.Show;
          end
         else if CurrentDataSource = DM.DSFood then
          begin
          MainPanel.Hide;
          FSP := TFormMaterials.Create(Self);
          FSP.ShowModal;
          FSP.Free;
          MainPanel.Show;

          end;
      1:
        begin
          MainPanel.Hide;
          FR := TFormRecieve.Create(MainDBGrid);
        end;
      2:
        begin
          if DM.DSDocs.DataSet.State in dsEditModes then
            DM.DSDocs.DataSet.Post;

        end;
       5:
        begin
          MainPanel.Hide;
          FTS := TFormTotalSail.Create(MainDBGrid);
          FTS.Show;
        end;
        6:
        begin
          MainPanel.Hide;
          FW := TFormWriteOff.Create(MainDBGrid);
          FW.Show;
        end;
        7:
        begin
          MainPanel.Hide;
          FT := TFormTransfer.Create(MainDBGrid);
          FT.Show;
        end;
        8:
        begin
          MainPanel.Hide;
          FI := TFormInventory.Create(MainDBGrid);
          FI.Show;
        end;
    end;

end;

procedure TFormMain.sFrameBar1Items0CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame:=TFrameCataloges.Create(nil);
end;

procedure TFormMain.sFrameBar1Items1CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame:=TFrameInvoice.Create(nil);
end;

procedure TFormMain.sFrameBar1Items2CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame:=TFrameMenu.Create(nil);
end;

procedure TFormMain.sFrameBar1Items3CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame:=TFrameReports.Create(nil);
  TFrameReports(Frame).ActionRepCancelRefresh.Execute;
end;

procedure TFormMain.sFrameBar1Items4CreateFrame(Sender: TObject;
  var Frame: TCustomFrame);
begin
  Frame:=TFrameSails.Create(nil);
end;

procedure TFormMain.sFrameBar1Items4FrameDestroy(Sender: TObject;
  var Frame: TCustomFrame; var CanDestroy: Boolean);
var
  TV:TTreeNodes;
  i:Integer;
begin
  TV:=TFrameReports(Frame).ReportsTree.Items;
  for i := 0 to TV.Count - 1 do
    begin
    TSchemaNode(TV[i].Data).Free;
    TV[i].Data:=nil;
    end;
  TFrameReports(Frame).XMLDocument1.Active:=false;
  TFrameReports(Frame).XMLDocument1.Free;
  TFrameReports(Frame).ReportsTree.Items.Clear;
  TFrameReports(Frame).ReportsTree.Destroy;
  CanDestroy:=true;
end;

end.
