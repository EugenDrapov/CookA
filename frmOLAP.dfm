object FormOLAP: TFormOLAP
  Left = 0
  Top = 0
  Caption = 'FormOLAP'
  ClientHeight = 778
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1106
    Height = 778
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1058#1072#1073#1083#1080#1094#1072
      object fcxSliceGridToolbar1: TfcxSliceGridToolbar
        Left = 0
        Top = 0
        Width = 1098
        Height = 33
        AutoSize = True
        ButtonHeight = 33
        ButtonWidth = 33
        Caption = 'fcxSliceGridToolbar1'
        TabOrder = 0
        Version = '2.4.3'
        SliceGrid = fcxSliceGrid1
        object Button1: TButton
          Left = 545
          Top = 0
          Width = 88
          Height = 33
          Align = alLeft
          Caption = #1055#1077#1095#1072#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
      end
      object fcxSliceGrid1: TfcxSliceGrid
        Left = 0
        Top = 33
        Width = 1098
        Height = 717
        Version = '2.4.3'
        DefaultRowHeight = 14
        Align = alClient
        Slice = fcxSlice1
        Styles.CaptionArea.TextColor = clBlack
        Styles.CaptionArea.FillColor = 15466495
        Styles.CaptionArea.GradientColor = clWhite
        Styles.CaptionArea.Font.Charset = DEFAULT_CHARSET
        Styles.CaptionArea.Font.Color = clWindowText
        Styles.CaptionArea.Font.Height = -11
        Styles.CaptionArea.Font.Name = 'Tahoma'
        Styles.CaptionArea.Font.Style = []
        Styles.CaptionArea.GradientDirection = tgdHorizontal
        Styles.HeaderArea.TextColor = clBlack
        Styles.HeaderArea.FillColor = clBtnFace
        Styles.HeaderArea.Font.Charset = DEFAULT_CHARSET
        Styles.HeaderArea.Font.Color = clWindowText
        Styles.HeaderArea.Font.Height = -11
        Styles.HeaderArea.Font.Name = 'Tahoma'
        Styles.HeaderArea.Font.Style = []
        Styles.HeaderCells.TextColor = clBlack
        Styles.HeaderCells.FillColor = clBtnFace
        Styles.HeaderCells.Font.Charset = DEFAULT_CHARSET
        Styles.HeaderCells.Font.Color = clWindowText
        Styles.HeaderCells.Font.Height = -11
        Styles.HeaderCells.Font.Name = 'Tahoma'
        Styles.HeaderCells.Font.Style = []
        Styles.HeaderCellsSelected.TextColor = clBtnText
        Styles.HeaderCellsSelected.FillColor = clBtnShadow
        Styles.HeaderCellsSelected.Font.Charset = DEFAULT_CHARSET
        Styles.HeaderCellsSelected.Font.Color = clWindowText
        Styles.HeaderCellsSelected.Font.Height = -11
        Styles.HeaderCellsSelected.Font.Name = 'Tahoma'
        Styles.HeaderCellsSelected.Font.Style = []
        Styles.DataArea.TextColor = clGray
        Styles.DataArea.FillColor = clWindow
        Styles.DataArea.Font.Charset = DEFAULT_CHARSET
        Styles.DataArea.Font.Color = clWindowText
        Styles.DataArea.Font.Height = -11
        Styles.DataArea.Font.Name = 'Tahoma'
        Styles.DataArea.Font.Style = []
        Styles.DataCells.TextColor = clBlack
        Styles.DataCells.FillColor = clWhite
        Styles.DataCells.Font.Charset = DEFAULT_CHARSET
        Styles.DataCells.Font.Color = clWindowText
        Styles.DataCells.Font.Height = -11
        Styles.DataCells.Font.Name = 'Tahoma'
        Styles.DataCells.Font.Style = []
        Styles.DataCellsSelected.TextColor = clHighlightText
        Styles.DataCellsSelected.FillColor = clHighlight
        Styles.DataCellsSelected.Font.Charset = DEFAULT_CHARSET
        Styles.DataCellsSelected.Font.Color = clWindowText
        Styles.DataCellsSelected.Font.Height = -11
        Styles.DataCellsSelected.Font.Name = 'Tahoma'
        Styles.DataCellsSelected.Font.Style = []
        Styles.StatusArea.TextColor = clBlack
        Styles.StatusArea.FillColor = clBtnFace
        Styles.StatusArea.Font.Charset = DEFAULT_CHARSET
        Styles.StatusArea.Font.Color = clWindowText
        Styles.StatusArea.Font.Height = -11
        Styles.StatusArea.Font.Name = 'Tahoma'
        Styles.StatusArea.Font.Style = []
        Styles.ActiveDimension.TextColor = clCaptionText
        Styles.ActiveDimension.FillColor = clActiveCaption
        Styles.ActiveDimension.GradientColor = clGradientActiveCaption
        Styles.ActiveDimension.Font.Charset = DEFAULT_CHARSET
        Styles.ActiveDimension.Font.Color = clWindowText
        Styles.ActiveDimension.Font.Height = -11
        Styles.ActiveDimension.Font.Name = 'Tahoma'
        Styles.ActiveDimension.Font.Style = []
        Styles.ActiveDimension.GradientDirection = tgdHorizontal
        Styles.InactiveDimension.TextColor = clInactiveCaptionText
        Styles.InactiveDimension.FillColor = clInactiveCaption
        Styles.InactiveDimension.GradientColor = clGradientInactiveCaption
        Styles.InactiveDimension.Font.Charset = DEFAULT_CHARSET
        Styles.InactiveDimension.Font.Color = clWindowText
        Styles.InactiveDimension.Font.Height = -11
        Styles.InactiveDimension.Font.Name = 'Tahoma'
        Styles.InactiveDimension.Font.Style = []
        Styles.InactiveDimension.GradientDirection = tgdHorizontal
        Styles.Measure.TextColor = clCaptionText
        Styles.Measure.FillColor = clGreen
        Styles.Measure.GradientColor = clMoneyGreen
        Styles.Measure.Font.Charset = DEFAULT_CHARSET
        Styles.Measure.Font.Color = clWindowText
        Styles.Measure.Font.Height = -11
        Styles.Measure.Font.Name = 'Tahoma'
        Styles.Measure.Font.Style = []
        Styles.Measure.GradientDirection = tgdHorizontal
        Styles.DataCellsTotals.TextColor = clBlack
        Styles.DataCellsTotals.FillColor = 15466495
        Styles.DataCellsTotals.GradientColor = clWhite
        Styles.DataCellsTotals.Font.Charset = DEFAULT_CHARSET
        Styles.DataCellsTotals.Font.Color = clWindowText
        Styles.DataCellsTotals.Font.Height = -11
        Styles.DataCellsTotals.Font.Name = 'Tahoma'
        Styles.DataCellsTotals.Font.Style = []
        Styles.FieldsItem.TextColor = clCaptionText
        Styles.FieldsItem.FillColor = clMoneyGreen
        Styles.FieldsItem.Font.Charset = DEFAULT_CHARSET
        Styles.FieldsItem.Font.Color = clWindowText
        Styles.FieldsItem.Font.Height = -11
        Styles.FieldsItem.Font.Name = 'Tahoma'
        Styles.FieldsItem.Font.Style = []
        TabOrder = 1
        CaptionZone.Visible = True
      end
    end
  end
  object fcxDBDataSetStore: TfcxDBDataSet
    Version = '2.4.3'
    DataSet = Store
    Left = 280
    Top = 64
  end
  object fcxDataSource1: TfcxDataSource
    Version = '2.4.3'
    DataSet = fcxDBDataSetStore
    Fields = <
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <>
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'DESCR'
            SourceFieldProperties.DataField.CubeFieldName = 'WAREHOUSE'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = 'WAREHOUSE'
            SourceFieldProperties.IdField.DataFieldName = 'ID'
            SourceFieldProperties.DataSet = fcxDBDataSetWarehouses
          end>
        SourceFieldProperties.CaptionSourceAttribute = 'WAREHOUSE'
        SourceFieldProperties.OrderSourceAttribute = 'WAREHOUSE'
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'WAREHSE_ID'
        SourceFieldProperties.DataField.CubeFieldName = 'WAREHSE_ID'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1057#1082#1083#1072#1076
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <>
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'DOC_DESCR'
            SourceFieldProperties.DataField.CubeFieldName = 'REGISTRATOR'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1072#1090#1086#1088
            SourceFieldProperties.IdField.DataFieldName = 'DOC_ID'
            SourceFieldProperties.DataSet = fcxDBDataSetDocs
          end>
        SourceFieldProperties.CaptionSourceAttribute = 'REGISTRATOR'
        SourceFieldProperties.OrderSourceAttribute = 'REGISTRATOR'
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'REGISTRATOR_ID'
        SourceFieldProperties.DataField.CubeFieldName = 'REGISTRATOR_ID'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1056#1077#1075#1080#1089#1090#1088#1072#1090#1086#1088
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.DateSplitPaths = [odt_Year, odt_Month, odt_Day, odt_Quarter]
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'MOMENT'
        SourceFieldProperties.DataField.CubeFieldName = 'MOMENT'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1044#1072#1090#1072
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'OPERATION'
        SourceFieldProperties.DataField.CubeFieldName = 'OPERATION'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1054#1087#1077#1088#1072#1094#1080#1103
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <>
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'DOC_DESCR'
            SourceFieldProperties.DataField.CubeFieldName = 'INVOICE'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1087#1088#1080#1093#1086#1076#1086#1074#1072#1085#1080#1103
            SourceFieldProperties.IdField.DataFieldName = 'DOC_ID'
            SourceFieldProperties.DataSet = fcxDBDataSetDocs
          end>
        SourceFieldProperties.CaptionSourceAttribute = 'INVOICE'
        SourceFieldProperties.OrderSourceAttribute = 'INVOICE'
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'INVOICE_ID'
        SourceFieldProperties.DataField.CubeFieldName = 'INVOICE_ID'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1044#1086#1082#1091#1084#1077#1085#1090' '#1086#1087#1088#1080#1093#1086#1076#1086#1074#1072#1085#1080#1103
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <>
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'DESCR'
            SourceFieldProperties.DataField.CubeFieldName = 'ITEM_INGR'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090
            SourceFieldProperties.IdField.DataFieldName = 'ID'
            SourceFieldProperties.DataSet = fcxDBDataSetItems
          end
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <
              item
                SourceFieldType = fcxsft_Reference
                SourceFieldProperties.SplitProperty.Attributes = <>
                SourceFieldProperties.DataField.Convert = False
                SourceFieldProperties.DataField.DataFieldName = 'DESCR'
                SourceFieldProperties.DataField.CubeFieldName = 'ITEM_INGR_GROUP'
                SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
                SourceFieldProperties.DataField.CubeFieldSize = 0
                SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1043#1088#1091#1087#1087#1072' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090#1072
                SourceFieldProperties.IdField.DataFieldName = 'ID'
                SourceFieldProperties.DataSet = fcxDBDataSetItemsGroup
              end>
            SourceFieldProperties.CaptionSourceAttribute = 'ITEM_INGR_GROUP'
            SourceFieldProperties.OrderSourceAttribute = 'ITEM_INGR_GROUP'
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'GROUP_ID'
            SourceFieldProperties.DataField.CubeFieldName = 'ITEM_INGR_GROUP_ID'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1043#1088#1091#1087#1087#1072' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090#1072
            SourceFieldProperties.IdField.DataFieldName = 'ID'
            SourceFieldProperties.DataSet = fcxDBDataSetItems
          end>
        SourceFieldProperties.CaptionSourceAttribute = 'ITEM_INGR'
        SourceFieldProperties.OrderSourceAttribute = 'ITEM_INGR'
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'ITEM_INGR_ID'
        SourceFieldProperties.DataField.CubeFieldName = 'ITEM_INGR_ID'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <>
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'DESCR'
            SourceFieldProperties.DataField.CubeFieldName = 'ITEM_PROD'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1055#1088#1086#1076#1091#1082#1094#1080#1103
            SourceFieldProperties.IdField.DataFieldName = 'ID'
            SourceFieldProperties.DataSet = fcxDBDataSetItems
          end
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <
              item
                SourceFieldType = fcxsft_Reference
                SourceFieldProperties.SplitProperty.Attributes = <>
                SourceFieldProperties.DataField.Convert = False
                SourceFieldProperties.DataField.DataFieldName = 'DESCR'
                SourceFieldProperties.DataField.CubeFieldName = 'ITEM_PROD_GROUP'
                SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
                SourceFieldProperties.DataField.CubeFieldSize = 0
                SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1043#1088#1091#1087#1087#1072' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
                SourceFieldProperties.IdField.DataFieldName = 'ID'
                SourceFieldProperties.DataSet = fcxDBDataSetItemsGroup
              end>
            SourceFieldProperties.CaptionSourceAttribute = 'ITEM_PROD_GROUP'
            SourceFieldProperties.OrderSourceAttribute = 'ITEM_PROD_GROUP'
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'GROUP_ID'
            SourceFieldProperties.DataField.CubeFieldName = 'ITEM_PROD_GROUP_ID'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1043#1088#1091#1087#1087#1072' '#1087#1088#1086#1076#1091#1082#1094#1080#1080
            SourceFieldProperties.IdField.DataFieldName = 'ID'
            SourceFieldProperties.DataSet = fcxDBDataSetItems
          end>
        SourceFieldProperties.CaptionSourceAttribute = 'ITEM_PROD'
        SourceFieldProperties.OrderSourceAttribute = 'ITEM_PROD'
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'ITEM_PROD_ID'
        SourceFieldProperties.DataField.CubeFieldName = 'ITEM_PROD_ID'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1055#1088#1086#1076#1091#1082#1094#1080#1103
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'COST_PRICE'
        SourceFieldProperties.DataField.CubeFieldName = 'COST_PRICE'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1062#1077#1085#1072' '#1089#1077#1073#1077#1089#1090'.'
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'SELL_PRICE'
        SourceFieldProperties.DataField.CubeFieldName = 'SELL_PRICE'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <>
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'DESCR'
            SourceFieldProperties.DataField.CubeFieldName = 'ITEM'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
            SourceFieldProperties.IdField.DataFieldName = 'ID'
            SourceFieldProperties.DataSet = fcxDBDataSetItems
          end
          item
            SourceFieldType = fcxsft_Reference
            SourceFieldProperties.SplitProperty.Attributes = <
              item
                SourceFieldType = fcxsft_Reference
                SourceFieldProperties.SplitProperty.Attributes = <>
                SourceFieldProperties.DataField.Convert = False
                SourceFieldProperties.DataField.DataFieldName = 'DESCR'
                SourceFieldProperties.DataField.CubeFieldName = 'ITEM_GROUP'
                SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
                SourceFieldProperties.DataField.CubeFieldSize = 0
                SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1043#1088#1091#1087#1087#1072' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099
                SourceFieldProperties.IdField.DataFieldName = 'ID'
                SourceFieldProperties.DataSet = fcxDBDataSetItemsGroup
              end>
            SourceFieldProperties.CaptionSourceAttribute = 'ITEM_GROUP'
            SourceFieldProperties.OrderSourceAttribute = 'ITEM_GROUP'
            SourceFieldProperties.DataField.Convert = False
            SourceFieldProperties.DataField.DataFieldName = 'GROUP_ID'
            SourceFieldProperties.DataField.CubeFieldName = 'ITEM_GROUP_ID'
            SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
            SourceFieldProperties.DataField.CubeFieldSize = 0
            SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1043#1088#1091#1087#1087#1072' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1099
            SourceFieldProperties.IdField.DataFieldName = 'ID'
            SourceFieldProperties.DataSet = fcxDBDataSetItems
          end>
        SourceFieldProperties.CaptionSourceAttribute = 'ITEM'
        SourceFieldProperties.OrderSourceAttribute = 'ITEM'
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'ITEM_ID'
        SourceFieldProperties.DataField.CubeFieldName = 'ITEM_ID'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'QTY'
        SourceFieldProperties.DataField.CubeFieldName = 'QTY'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1050#1086#1083'-'#1074#1086
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'COST_SUM'
        SourceFieldProperties.DataField.CubeFieldName = 'COST_SUM'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1057#1077#1073#1077#1089#1090#1086#1080#1084#1086#1089#1090#1100
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'SAIL_SUM'
        SourceFieldProperties.DataField.CubeFieldName = 'SAIL_SUM'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1055#1088#1086#1076#1072#1078#1072
      end
      item
        SourceFieldType = fcxsft_Reference
        SourceFieldProperties.SplitProperty.Attributes = <>
        SourceFieldProperties.DataField.Convert = False
        SourceFieldProperties.DataField.DataFieldName = 'IS_CREDIT'
        SourceFieldProperties.DataField.CubeFieldName = 'IS_CREDIT'
        SourceFieldProperties.DataField.CubeFieldType = fcdt_NotImplemented
        SourceFieldProperties.DataField.CubeFieldSize = 0
        SourceFieldProperties.DataField.CubeFieldDisplayLabel = #1042#1080#1076' '#1076#1074#1080#1078#1077#1085#1080#1103
      end>
    Left = 432
    Top = 168
  end
  object fcxCube1: TfcxCube
    Version = '2.4.3'
    DataSource = fcxDataSource1
    CubeSource = fccs_DataSource
    Formats.BooleanFormat.DecSeparator = ','
    Formats.BooleanFormat.FormatStr = 'False,True'
    Formats.BooleanFormat.Kind = fkBoolean
    Formats.DateFormat.DecSeparator = ','
    Formats.DateFormat.FormatStr = 'dd/MM/yyyy'
    Formats.DateFormat.Kind = fkDateTime
    Formats.TimeFormat.DecSeparator = ','
    Formats.TimeFormat.FormatStr = 'h:mm'
    Formats.TimeFormat.Kind = fkDateTime
    Formats.DateTimeFormat.DecSeparator = ','
    Formats.DateTimeFormat.FormatStr = 'dd/MM/yyyy'
    Formats.DateTimeFormat.Kind = fkDateTime
    Formats.FloatFormat.DecSeparator = ','
    Formats.FloatFormat.FormatStr = '%2.2n'
    Formats.FloatFormat.Kind = fkNumeric
    Formats.CurrencyFormat.DecSeparator = ','
    Formats.CurrencyFormat.FormatStr = '%2.2m'
    Formats.CurrencyFormat.Kind = fkNumeric
    Formats.IntegerFormat.DecSeparator = ','
    Formats.IntegerFormat.FormatStr = '%g'
    Formats.IntegerFormat.Kind = fkNumeric
    Formats.TextFormat.DecSeparator = ','
    Formats.PercentFormat.DecSeparator = ','
    Formats.PercentFormat.FormatStr = '%2.2n'
    Formats.PercentFormat.Kind = fkNumeric
    Formats.DatePathFormat.MonthDisplayFormat = mdf_Long
    Formats.DatePathFormat.WeekDayDisplayFormat = wddf_Long
    Formats.DatePathFormat.QuarterDisplayFormat = qdf_System
    Formats.DatePathFormat.WeekNumberDisplayFormat = wndf_System
    AfterOpen = fcxCube1AfterOpen
    Left = 432
    Top = 64
  end
  object fcxSlice1: TfcxSlice
    Version = '2.4.3'
    Cube = fcxCube1
    FieldsOrder = fcfloByFieldDisplayLabel
    Settings.XAxisSettings.GrandTotalPosition = fctp_After
    Settings.YAxisSettings.GrandTotalPosition = fctp_After
    Settings.AxisFieldSettings.TotalPosition = fctp_After
    Left = 576
    Top = 72
  end
  object Store: TFDQuery
    BeforeOpen = StoreBeforeOpen
    Connection = DM.FDConnection1
    Transaction = DM.TrRead
    SQL.Strings = (
      'select'
      '    S.dep_id department_id,'
      '    S.warehouse_id warehse_id,'
      '    S.doc_id registrator_id,'
      '    cast(S.EFFECT_DATE as date) MOMENT,'
      '    op.descr operation,'
      '    S.int_attr1 invoice_id,'
      '    case'
      '        when S.operation_id=2 then S.food_id'
      '        else null'
      '    end Item_ingr_id,'
      '    coalesce(DR.food_id, S.food_id) Item_prod_id,'
      '    coalesce(S.PRICE, 0) COST_PRICE,'
      '    coalesce(S.PRICE_SELL, 0) SELL_PRICE,'
      '    S.Food_id Item_id,'
      '    case'
      '        when S.qty > 0 then '#39#1055#1088#1080#1093#1086#1076#39
      '        else '#39#1056#1072#1089#1093#1086#1076#39
      '    end is_credit,'
      '    sum(ABS(S.QTY)) QTY,'
      '    sum(coalesce(S.PRICE, 0) * ABS(S.QTY)) COST_SUM,'
      '    sum(coalesce(S.price_sell, 0) * ABS(S.QTY)) SAIL_SUM'
      'from'
      '    STORE  S'
      '    inner join operations op on (S.operation_id=op.id)'
      '    left join store DR on (dr.id = S.int_attr2)'
      'where'
      '    S.effect_date between :bd and :ed'
      'group by'
      '    department_id,'
      '    warehse_id,'
      '    registrator_id,'
      '    MOMENT,'
      '    operation,'
      '    invoice_id,'
      '    Item_prod_id,'
      '    Item_ingr_id,'
      '    Item_id,'
      '    is_credit,'
      '    COST_PRICE,'
      '    SELL_PRICE')
    Left = 168
    Top = 56
    ParamData = <
      item
        Name = 'BD'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'ED'
        DataType = ftDateTime
        ParamType = ptInput
        Value = Null
      end>
    object StoreDEPARTMENT_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'DEPARTMENT_ID'
      Origin = 'DEPARTMENT_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreWAREHSE_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'WAREHSE_ID'
      Origin = 'WAREHSE_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreREGISTRATOR_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'REGISTRATOR_ID'
      Origin = 'REGISTRATOR_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreMOMENT: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'MOMENT'
      Origin = 'MOMENT'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreOPERATION: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERATION'
      Origin = 'OPERATION'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object StoreINVOICE_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INVOICE_ID'
      Origin = 'INVOICE_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreITEM_INGR_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_INGR_ID'
      Origin = 'ITEM_INGR_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreITEM_PROD_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_PROD_ID'
      Origin = 'ITEM_PROD_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreCOST_PRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST_PRICE'
      Origin = 'COST_PRICE'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreSELL_PRICE: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SELL_PRICE'
      Origin = 'SELL_PRICE'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreITEM_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ITEM_ID'
      Origin = 'ITEM_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreQTY: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTY'
      Origin = 'QTY'
      ProviderFlags = []
      ReadOnly = True
      Precision = 18
      Size = 3
    end
    object StoreCOST_SUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'COST_SUM'
      Origin = 'COST_SUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreSAIL_SUM: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SAIL_SUM'
      Origin = 'SAIL_SUM'
      ProviderFlags = []
      ReadOnly = True
    end
    object StoreIS_CREDIT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IS_CREDIT'
      Origin = 'IS_CREDIT'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 6
    end
  end
  object Foods: TFDQuery
    IndexFieldNames = 'ID;GROUP_ID'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select'
      '   id,'
      '   descr,'
      '   group_id'
      'from'
      '   food')
    Left = 164
    Top = 112
    object FoodsID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FoodsDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
    object FoodsGROUP_ID: TIntegerField
      FieldName = 'GROUP_ID'
      Origin = 'GROUP_ID'
    end
  end
  object fcxDBDataSetItems: TfcxDBDataSet
    Version = '2.4.3'
    DataSet = Foods
    Left = 276
    Top = 120
  end
  object FoodGroups: TFDQuery
    IndexFieldNames = 'ID'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select'
      '  id,'
      '  descr'
      'from'
      '  foodsgroup')
    Left = 164
    Top = 176
  end
  object fcxDBDataSetItemsGroup: TfcxDBDataSet
    Version = '2.4.3'
    DataSet = FoodGroups
    Left = 284
    Top = 176
  end
  object DocsView: TFDQuery
    IndexFieldNames = 'DOC_ID'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select'
      '    DOC_ID,'
      '    DOC_DESCR'
      'from'
      '    VIEW_DOCS_HEADER')
    Left = 164
    Top = 240
    object DocsViewDOC_ID: TIntegerField
      FieldName = 'DOC_ID'
      Origin = 'DOC_ID'
    end
    object DocsViewDOC_DESCR: TStringField
      FieldName = 'DOC_DESCR'
      Origin = 'DOC_DESCR'
      Size = 77
    end
  end
  object Warehouses: TFDQuery
    IndexFieldNames = 'ID'
    Connection = DM.FDConnection1
    SQL.Strings = (
      'select'
      '    ID,'
      '    DESCR'
      'from'
      '    WAREHOUSE')
    Left = 164
    Top = 304
    object WarehousesID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object WarehousesDESCR: TStringField
      FieldName = 'DESCR'
      Origin = 'DESCR'
      Size = 50
    end
  end
  object fcxDBDataSetDocs: TfcxDBDataSet
    Version = '2.4.3'
    DataSet = DocsView
    Left = 284
    Top = 240
  end
  object fcxDBDataSetWarehouses: TfcxDBDataSet
    Version = '2.4.3'
    DataSet = Warehouses
    Left = 284
    Top = 312
  end
  object frxReport1: TfrxReport
    Version = '5.4.4'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42528.396339814800000000
    ReportOptions.LastChange = 42528.676854652770000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 900
    Top = 88
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 151.181200000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 1
        object TfcxpCross1: TfcxpCrossView
          Align = baClient
          Width = 120.000000000000000000
          Height = 76.000000000000000000
          SliceGridProvider = fcxpSliceGridProvider1
          SliceGridProviderName = 'fcxpSliceGridProvider1'
          Schema = {}
          Memos = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C666363726F73733E3C
            63656C6C6D656D6F733E3C54666378704D656D6F56696577204C6566743D2230
            2220546F703D223138222057696474683D22383022204865696768743D223138
            22205265737472696374696F6E733D22382220416C6C6F774578707265737369
            6F6E733D2246616C736522204672616D652E5479703D223135222048416C6967
            6E3D2268615269676874222056416C69676E3D22766143656E74657222204772
            616469656E74436F6C6F723D22302220546578743D22222F3E3C2F63656C6C6D
            656D6F733E3C63656C6C6865616465726D656D6F732F3E3C636F6C756D6E6D65
            6D6F732F3E3C636F6C756D6E746F74616C6D656D6F732F3E3C636F726E65726D
            656D6F733E3C54666378704D656D6F56696577204C6566743D22302220546F70
            3D2230222057696474683D223022204865696768743D22313822205265737472
            696374696F6E733D22382220416C6C6F7745787072657373696F6E733D224661
            6C736522204672616D652E5479703D223135222048416C69676E3D2268614365
            6E746572222056416C69676E3D22766143656E74657222204772616469656E74
            436F6C6F723D22302220546578743D22222F3E3C54666378704D656D6F566965
            77204C6566743D22302220546F703D2230222057696474683D22383022204865
            696768743D22313822205265737472696374696F6E733D22382220416C6C6F77
            45787072657373696F6E733D2246616C736522204672616D652E5479703D2231
            35222048416C69676E3D22686143656E746572222056416C69676E3D22766143
            656E74657222204772616469656E74436F6C6F723D22302220546578743D2222
            2F3E3C54666378704D656D6F56696577204C6566743D22302220546F703D2231
            38222057696474683D223022204865696768743D223022205265737472696374
            696F6E733D22382220416C6C6F7745787072657373696F6E733D2246616C7365
            22204672616D652E5479703D223135222048416C69676E3D22686143656E7465
            72222056416C69676E3D22766143656E74657222204772616469656E74436F6C
            6F723D22302220546578743D22222F3E3C2F636F726E65726D656D6F733E3C72
            6F776D656D6F732F3E3C726F77746F74616C6D656D6F732F3E3C2F666363726F
            73733E}
          MemoSizes = {
            3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
            662D3822207374616E64616C6F6E653D226E6F223F3E3C6D656D6F5F73697A65
            733E3C686561645F636F6C5F73697A65733E3C686561645F636F6C5F73697A65
            20583D22302220593D223138222F3E3C2F686561645F636F6C5F73697A65733E
            3C686561645F726F775F73697A65732F3E3C636F6C5F73697A65733E3C636F6C
            5F73697A6520583D22302220593D223830222F3E3C2F636F6C5F73697A65733E
            3C726F775F73697A65733E3C726F775F73697A6520583D2231382220593D2231
            38222F3E3C2F726F775F73697A65733E3C2F6D656D6F5F73697A65733E}
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object fcxpComponents1: TfcxpComponents
    Version = '2.4.3'
    Left = 988
    Top = 88
  end
  object fcxpSliceGridProvider1: TfcxpSliceGridProvider
    Version = '2.4.3'
    SliceGrid = fcxSliceGrid1
    UserName = 'fcxpSliceGridProvider1'
    PaintSizes.AutoSizeStyle = ssBySlice
    Left = 996
    Top = 152
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 892
    Top = 160
  end
  object fcxBIFFExport1: TfcxBIFFExport
    Version = '2.4.3'
    Left = 764
    Top = 152
  end
end
