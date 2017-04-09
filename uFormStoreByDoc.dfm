object FormStoreByDoc: TFormStoreByDoc
  Left = 0
  Top = 0
  ActiveControl = DBGridEh1
  Caption = 'FormStoreByDoc'
  ClientHeight = 434
  ClientWidth = 613
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 613
    Height = 34
    Align = alTop
    Caption = 'sPanel1'
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sBitBtn1: TsBitBtn
      Left = 1
      Top = 1
      Width = 117
      Height = 32
      Align = alLeft
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 415
    Width = 613
    Height = 19
    Panels = <>
    SkinData.SkinSection = 'STATUSBAR'
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 34
    Width = 613
    Height = 381
    Align = alClient
    Caption = 'sPanel2'
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 611
      Height = 379
      Align = alClient
      DataGrouping.Active = True
      DataGrouping.GroupPanelVisible = True
      DataSource = DSDocMoves
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 0
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'EFFECT_DATE'
          Footers = <>
          Width = 94
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'FOOD'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'GRP'
          Footers = <>
          Width = 148
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRICE'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTY'
          Footers = <>
          Width = 59
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'DEPART'
          Footers = <>
          Width = 155
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'WAREHSE'
          Footers = <>
          Width = 139
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRICE_SELL'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'ISCREDIT'
          Footers = <>
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DSDocMoves: TDataSource
    DataSet = DocMoves
    Left = 440
  end
  object DocMoves: TFDQuery
    Connection = DM.FDConnection1
    SQL.Strings = (
      'SELECT '
      '    store.effect_date,'
      '    food.descr food,'
      '    foodsgroup.descr grp,'
      '    store.price,'
      '    store.qty,'
      '    departments.descr depart,'
      '    warehouse.descr warehse,'
      '    store.price_sell,'
      '    store.int_attr1,'
      '    iif(store.qty<0, 1, 0) iscredit'
      ''
      'FROM store'
      '   LEFT JOIN food ON (store.food_id = food.id)'
      '   LEFT JOIN foodsgroup ON (food.group_id = foodsgroup.id)'
      '   LEFT JOIN departments ON (store.dep_id = departments.id)'
      '   LEFT JOIN warehouse ON (store.warehouse_id = warehouse.id)'
      'where'
      '   store.doc_id=:docid')
    Left = 360
    ParamData = <
      item
        Name = 'DOCID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object DocMovesEFFECT_DATE: TSQLTimeStampField
      FieldName = 'EFFECT_DATE'
      Origin = 'EFFECT_DATE'
    end
    object DocMovesFOOD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FOOD'
      Origin = 'DESCR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DocMovesGRP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRP'
      Origin = 'DESCR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DocMovesPRICE: TFloatField
      FieldName = 'PRICE'
      Origin = 'PRICE'
    end
    object DocMovesQTY: TBCDField
      FieldName = 'QTY'
      Origin = 'QTY'
      Precision = 18
      Size = 3
    end
    object DocMovesDEPART: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DEPART'
      Origin = 'DESCR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DocMovesWAREHSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WAREHSE'
      Origin = 'DESCR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object DocMovesPRICE_SELL: TFloatField
      FieldName = 'PRICE_SELL'
      Origin = 'PRICE_SELL'
    end
    object DocMovesINT_ATTR1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INT_ATTR1'
      Origin = 'INT_ATTR1'
    end
    object DocMovesISCREDIT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ISCREDIT'
      Origin = 'ISCREDIT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
