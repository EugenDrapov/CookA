object FormBalanceDetail: TFormBalanceDetail
  Left = 0
  Top = 0
  Caption = 'FormBalanceDetail'
  ClientHeight = 535
  ClientWidth = 770
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 770
    Height = 535
    Align = alClient
    Caption = 'sPanel1'
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sPanel2: TsPanel
      Left = 1
      Top = 1
      Width = 768
      Height = 43
      Align = alTop
      Caption = 'sPanel2'
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 44
      Width = 768
      Height = 490
      Align = alClient
      DataGrouping.Active = True
      DataGrouping.Color = clMoneyGreen
      DataGrouping.Footers = <
        item
          Visible = True
          ColumnItems = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
              Color = clCream
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ValueType = gfvSumEh
            end
            item
              Color = clCream
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ValueType = gfvSumEh
            end
            item
              Color = clCream
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              ValueType = gfvSumEh
            end>
          ShowFunctionName = True
          RunTimeCustomizable = True
        end>
      DataGrouping.FootersDefValues.ShowFunctionName = True
      DataGrouping.GroupPanelVisible = True
      DataGrouping.ParentColor = False
      DataGrouping.GroupRowDefValues.FooterInGroupRow = True
      DataSource = DataSource1
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      ReadOnly = True
      TabOrder = 1
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Warehouse'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'EFFECT_DATE'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Doc'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'Invoice'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTYINCOME'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTYOUTCOME'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'REST'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object MemTableEh1: TMemTableEh
    Active = True
    AggregatesActive = True
    Params = <>
    DataDriver = DataSetDriverEh1
    ReadOnly = True
    Left = 568
    Top = 368
    object MemTableEh1WAREHOUSE_ID: TIntegerField
      FieldName = 'WAREHOUSE_ID'
    end
    object MemTableEh1EFFECT_DATE: TDateField
      FieldName = 'EFFECT_DATE'
    end
    object MemTableEh1DOC_ID: TIntegerField
      FieldName = 'DOC_ID'
    end
    object MemTableEh1INVOICE_ID: TIntegerField
      FieldName = 'INVOICE_ID'
    end
    object MemTableEh1QTYINCOME: TBCDField
      FieldName = 'QTYINCOME'
      Precision = 18
      Size = 0
    end
    object MemTableEh1QTYOUTCOME: TBCDField
      FieldName = 'QTYOUTCOME'
      Precision = 18
      Size = 0
    end
    object MemTableEh1REST: TBCDField
      FieldName = 'REST'
      Precision = 18
      Size = 0
    end
    object MemTableEh1Warehouse: TStringField
      FieldKind = fkLookup
      FieldName = 'Warehouse'
      LookupDataSet = DM.WareHouseAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'WAREHOUSE_ID'
      Size = 50
      Lookup = True
    end
    object MemTableEh1Doc: TStringField
      FieldKind = fkLookup
      FieldName = 'Doc'
      LookupDataSet = DM.DocsAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'DOC_ID'
      Size = 150
      Lookup = True
    end
    object MemTableEh1Invoice: TStringField
      FieldKind = fkLookup
      FieldName = 'Invoice'
      LookupDataSet = DM.DocsAll
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCR'
      KeyFields = 'INVOICE_ID'
      Size = 150
      Lookup = True
    end
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = DM.BalancesDetail
    Left = 464
    Top = 368
  end
  object DataSource1: TDataSource
    DataSet = MemTableEh1
    Left = 656
    Top = 368
  end
end
