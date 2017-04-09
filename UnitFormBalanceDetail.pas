unit UnitFormBalanceDetail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  DB, ExtCtrls,
  sPanel, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, MemTableDataEh,
  DataDriverEh, MemTableEh, GridsEh, DBAxisGridsEh, DBGridEh, DynVarsEh,
  EhLibVCL;

type
  TFormBalanceDetail = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    DBGridEh1: TDBGridEh;
    MemTableEh1: TMemTableEh;
    DataSetDriverEh1: TDataSetDriverEh;
    DataSource1: TDataSource;
    MemTableEh1WAREHOUSE_ID: TIntegerField;
    MemTableEh1EFFECT_DATE: TDateField;
    MemTableEh1DOC_ID: TIntegerField;
    MemTableEh1INVOICE_ID: TIntegerField;
    MemTableEh1QTYINCOME: TBCDField;
    MemTableEh1QTYOUTCOME: TBCDField;
    MemTableEh1REST: TBCDField;
    MemTableEh1Warehouse: TStringField;
    MemTableEh1Doc: TStringField;
    MemTableEh1Invoice: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBalanceDetail: TFormBalanceDetail;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormBalanceDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.DSBalancesDetail.DataSet.Close;
end;

procedure TFormBalanceDetail.FormCreate(Sender: TObject);
begin
  with DM.DSBalancesDetail.DataSet do
    begin
    Open;
    end;
end;

end.
