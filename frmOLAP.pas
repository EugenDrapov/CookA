unit frmOLAP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, fcxCustomExport,
  fcxExportBIFF, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ToolWin, Vcl.ComCtrls, fcxCustomToolbar, fcxSliceGridToolbar, fcxControl,
  fcxZone, fcxCustomGrid, fcxSliceGrid, fcxComponent, fcxSlice, fcxCube,
  fcxDataSource, Vcl.StdCtrls, fcxpSliceGridReport, frxClass, fcxpComponents,
  frxExportXLS;

type
  TFormOLAP = class(TForm)
    fcxDBDataSetStore: TfcxDBDataSet;
    fcxDataSource1: TfcxDataSource;
    fcxCube1: TfcxCube;
    fcxSlice1: TfcxSlice;
    Store: TFDQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Foods: TFDQuery;
    FoodsID: TIntegerField;
    FoodsDESCR: TStringField;
    fcxSliceGridToolbar1: TfcxSliceGridToolbar;
    fcxSliceGrid1: TfcxSliceGrid;
    fcxDBDataSetItems: TfcxDBDataSet;
    FoodGroups: TFDQuery;
    FoodsGROUP_ID: TIntegerField;
    fcxDBDataSetItemsGroup: TfcxDBDataSet;
    StoreDEPARTMENT_ID: TIntegerField;
    StoreWAREHSE_ID: TIntegerField;
    StoreREGISTRATOR_ID: TIntegerField;
    StoreMOMENT: TDateField;
    StoreOPERATION: TStringField;
    StoreINVOICE_ID: TIntegerField;
    StoreITEM_INGR_ID: TIntegerField;
    StoreITEM_PROD_ID: TIntegerField;
    StoreCOST_PRICE: TFloatField;
    StoreSELL_PRICE: TFloatField;
    StoreITEM_ID: TIntegerField;
    StoreQTY: TBCDField;
    StoreCOST_SUM: TFloatField;
    StoreSAIL_SUM: TFloatField;
    DocsView: TFDQuery;
    Warehouses: TFDQuery;
    fcxDBDataSetDocs: TfcxDBDataSet;
    fcxDBDataSetWarehouses: TfcxDBDataSet;
    DocsViewDOC_ID: TIntegerField;
    DocsViewDOC_DESCR: TStringField;
    WarehousesID: TFDAutoIncField;
    WarehousesDESCR: TStringField;
    frxReport1: TfrxReport;
    fcxpComponents1: TfcxpComponents;
    fcxpSliceGridProvider1: TfcxpSliceGridProvider;
    Button1: TButton;
    StoreIS_CREDIT: TStringField;
    frxXLSExport1: TfrxXLSExport;
    fcxBIFFExport1: TfcxBIFFExport;
    procedure fcxCube1AfterOpen(Sender: TObject);
    procedure StoreBeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOLAP: TFormOLAP;

implementation

{$R *.dfm}

uses UnitDM, fcxTypes, MainUnit;

procedure TFormOLAP.Button1Click(Sender: TObject);
begin
  frxReport1.LoadFromFile('olap.fr3');
  frxReport1.ShowReport;
end;

procedure TFormOLAP.fcxCube1AfterOpen(Sender: TObject);
begin
  fcxSlice1.BeginUpdate;
  fcxSlice1.MeasuresContainer.AddMeasure(fcxSlice1.SliceFieldByName['QTY'], 'QTY', 'Кол-во', af_Sum);
  fcxSlice1.MeasuresContainer.AddMeasure(fcxSlice1.SliceFieldByName['COST_SUM'], 'COST_SUM', 'Себестоимость', af_Sum);
  fcxSlice1.MeasuresContainer.AddMeasure(fcxSlice1.SliceFieldByName['SAIL_SUM'], 'SAIL_SUM', 'Сумма продаж', af_Sum);
  fcxSlice1.MeasuresContainer.AddCalcMeasure('MARGIN_SUM', 'Маржа', af_Formula, 'OnGet_MARGIN_SUM_1'
    , 'Result := ABS(measures[''SAIL_SUM''].currentvalue) - ABS(measures[''COST_SUM''].currentvalue)');
  fcxSlice1.EndUpdate;
end;

procedure TFormOLAP.StoreBeforeOpen(DataSet: TDataSet);
begin
  Store.ParamByName('BD').AsDateTime := DM.BeginPeriod;
  Store.ParamByName('ED').AsDateTime := DM.EndPeriod;
end;

procedure TFormOLAP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFormOLAP.FormShow(Sender: TObject);
begin
  fcxCube1.Open;
end;

end.
