object FormSellPrice: TFormSellPrice
  Left = 0
  Top = 0
  Caption = 'FormSellPrice'
  ClientHeight = 396
  ClientWidth = 635
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
  object sToolBar1: TsToolBar
    Left = 0
    Top = 0
    Width = 635
    Height = 23
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ButtonHeight = 18
    ButtonWidth = 18
    Caption = 'sToolBar1'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    SkinData.SkinSection = 'TOOLBAR'
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 377
    Width = 635
    Height = 19
    Panels = <>
    SkinData.SkinSection = 'STATUSBAR'
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 94
    Width = 635
    Height = 283
    Align = alClient
    Caption = 'sPanel1'
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sDBNavigator1: TsDBNavigator
      Left = 1
      Top = 1
      Width = 633
      Align = alTop
      FullRepaint = False
      TabOrder = 0
      SkinData.SkinSection = 'TOOLBAR'
      DataSource = DM.DSFoodHistoryValues
    end
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 26
      Width = 633
      Height = 256
      Align = alClient
      DataSource = DM.DSFoodHistoryValues
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh]
      TabOrder = 1
      Columns = <
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'REG_DATE'
          Footers = <>
          Title.Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'FVALUE'
          Footers = <>
          Title.Caption = #1062#1077#1085#1072
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 23
    Width = 635
    Height = 71
    Align = alTop
    Caption = 'sPanel2'
    ShowCaption = False
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    object sDBText1: TsDBText
      Left = 8
      Top = 6
      Width = 58
      Height = 17
      ParentFont = False
      ShowAccelChar = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8542779
      Font.Height = -14
      Font.Name = 'Tahoma'
      Font.Style = []
      DataField = 'DESCR'
      DataSource = DM.DSFood
    end
    object sDBText2: TsDBText
      Left = 276
      Top = 28
      Width = 52
      Height = 14
      ParentFont = False
      ShowAccelChar = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8542779
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      DataField = 'FLD_NAME'
      DataSource = DM.DSFoodHistory
    end
    object sComboBox1: TsComboBox
      Left = 8
      Top = 33
      Width = 262
      Height = 22
      Alignment = taLeftJustify
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Color = 16511722
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = -1
      ParentFont = False
      TabOrder = 0
      Text = 'sComboBox1'
      OnCloseUp = sComboBox1CloseUp
    end
  end
end
