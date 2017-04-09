object FormCalc: TFormCalc
  Left = 0
  Top = 0
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1094#1080#1103
  ClientHeight = 703
  ClientWidth = 1076
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 648
    Width = 1076
    Height = 55
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 928
      Top = 6
      Width = 127
      Height = 43
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 20
      Margins.Bottom = 5
      Align = alRight
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 786
      Top = 6
      Width = 127
      Height = 43
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1076
    Height = 41
    Align = alTop
    Caption = 'Panel2'
    ShowCaption = False
    TabOrder = 1
    object DBText1: TDBText
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 90
      Height = 33
      Align = alLeft
      AutoSize = True
      DataField = 'DESCR'
      DataSource = DM.DSBrand
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = False
      ExplicitHeight = 25
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1076
    Height = 607
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 26
      Width = 1074
      Height = 580
      Align = alClient
      AllowedOperations = [alopUpdateEh, alopDeleteEh, alopAppendEh]
      DataSource = DM.DSCalc
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      OddRowColor = clInactiveBorder
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      PopupMenu = PopupMenu1
      EditButtonsShowOptions = [sebShowOnlyForCurCellEh]
      TabOrder = 0
      TitleParams.BorderInFillStyle = True
      TitleParams.Color = clBtnFace
      TitleParams.FillStyle = cfstThemedEh
      TitleParams.Font.Charset = DEFAULT_CHARSET
      TitleParams.Font.Color = clWindowText
      TitleParams.Font.Height = -11
      TitleParams.Font.Name = 'Tahoma'
      TitleParams.Font.Style = [fsBold]
      TitleParams.MultiTitle = True
      TitleParams.ParentFont = False
      Columns = <
        item
          DynProps = <>
          EditButton.Enabled = False
          EditButton.Style = ebsEllipsisEh
          EditButtons = <
            item
              Action = ActionCalcOpenFood
              DefaultAction = True
              Style = ebsEllipsisEh
            end>
          FieldName = 'lkFood'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTY'
          Footers = <>
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1085#1072' 100 '#1087#1086#1088#1094'.'
          Width = 83
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'lkMES'
          Footers = <>
          ReadOnly = True
          TextEditing = False
          Title.Caption = #1045#1076'.'
          Width = 61
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 1074
      Height = 25
      DataSource = DM.DSCalc
      Align = alTop
      TabOrder = 1
    end
  end
  object ActionManager1: TActionManager
    Left = 456
    Top = 8
    StyleName = 'Platform Default'
    object ActionCalcOpenFood: TAction
      Caption = #1042#1099#1073#1086#1088' '#1080#1085#1075#1088#1077#1076#1080#1077#1085#1090#1072
      OnExecute = ActionCalcOpenFoodExecute
    end
    object ActionCalcOpenInterchange: TAction
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1079#1072#1084#1077#1085#1099
      OnExecute = ActionCalcOpenInterchangeExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 176
    object ActionCalcOpenInterchange1: TMenuItem
      Action = ActionCalcOpenInterchange
    end
    object ActionCalcOpenFood1: TMenuItem
      Action = ActionCalcOpenFood
    end
  end
end
