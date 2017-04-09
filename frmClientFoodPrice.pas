unit frmClientFoodPrice;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sDBNavigator, ExtCtrls, sSplitter, sPanel, DB;

type
  TFormClientFoodPrice = class(TForm)
    sPanel1: TsPanel;
    sSplitter1: TsSplitter;
    sPanel3: TsPanel;
    procedure cxGrid1DBTableView1FOOD_IDPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure dxBarButtonCopyClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormClientFoodPrice: TFormClientFoodPrice;

implementation

uses UnitDM, UnitFormMaterials;

{$R *.dfm}

procedure TFormClientFoodPrice.cxGrid1DBTableView1FOOD_IDPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
var
  FM:TFormMaterials;
begin
  FM:=TFormMaterials.Create(Self);
  FM.WarehouseId:=0;
  FM.cxTabControl1.TabIndex:=0;
  if FM.ShowModal=mrOk then
    with DM.ClientFoodPrice do
    begin
      if State=dsBrowse then  Edit;
      FieldByName('food_id').Value:=DM.DSFood.DataSet.FieldValues['ID'];
    end;
  FM.Free;
end;

procedure TFormClientFoodPrice.dxBarButtonCopyClick(Sender: TObject);
begin
  DM.ClientFoodPrice.CopyRecord(DM.ClientFoodPrice);
end;

procedure TFormClientFoodPrice.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.ClientFoodPrice.Close;
  Action:=caFree;
end;

procedure TFormClientFoodPrice.FormShow(Sender: TObject);
begin
  DM.ClientFoodPrice.Open;
end;

end.
