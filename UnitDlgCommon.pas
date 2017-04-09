unit UnitDlgCommon;

interface

uses
  Data.DB;

procedure SelectMaterial(ADataSet:TDataSet; InitGrpName:string; FoodIdFldName:string;  QtyFldName:string=''; PriceFldName:string=''; PriceSellFldName:string='');


implementation

uses
  UnitFormMaterials, UnitDM, Vcl.Controls, Vcl.Forms, System.SysUtils;

procedure SelectMaterial(ADataSet:TDataSet;  InitGrpName:string; FoodIdFldName:string; QtyFldName:string=''; PriceFldName:string=''; PriceSellFldName:string='');
var
  FM:TFormMaterials;
begin
  FM:=TFormMaterials.Create(Application);
  FM.WarehouseId:=DM.DSDocs.DataSet.FieldByName('warehouse_id').AsInteger;
  FM.cxTabControl1.TabIndex:=0;
  DM.DSFoodGroups.DataSet.Locate('code', InitGrpName,[]);
  FM.ShowModal;
  if FM.ModalResult=mrOk then
    with ADataSet do
      begin
      if State=dsBrowse then Append;
      case FM.cxTabControl1.TabIndex of
        0:
          begin
          FieldByName(FoodIdFldName).Value:=DM.DSFood.DataSet.FieldValues['ID'];
          FieldByName(QtyFldName).AsFloat := 0.0;
          if not PriceFldName.IsEmpty then
            FieldByName(PriceFldName).AsFloat:=0.0;
          if not PriceSellFldName.IsEmpty then
            FieldByName(PriceSellFldName).AsFloat:=0.0;
          end;
        1:
          begin
          FieldByName(FoodIdFldName).Value:=DM.DSBalances.DataSet.FieldValues['food_id'];
          FieldByName(QtyFldName).Value:=DM.DSBalances.DataSet.FieldValues['qty'];
          if not PriceFldName.IsEmpty then
            FieldByName(PriceFldName).Value:=DM.DSBalances.DataSet.FieldValues['price'];
          if not PriceSellFldName.IsEmpty then
            FieldByName(PriceSellFldName).Value:=DM.DSBalances.DataSet.FieldValues['price_sell'];
          end;
      end;
      end;
  FM.Free;
end;

end.
