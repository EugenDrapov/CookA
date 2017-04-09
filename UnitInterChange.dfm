object FormInterChange: TFormInterChange
  Left = 0
  Top = 0
  Caption = 'FormInterChange'
  ClientHeight = 473
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TsPanel
    Left = 0
    Top = 36
    Width = 583
    Height = 53
    Align = alTop
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel2: TsLabel
      Left = 1
      Top = 33
      Width = 151
      Height = 19
      Align = alBottom
      Caption = #1052#1086#1078#1085#1086' '#1079#1072#1084#1077#1085#1080#1090#1100' '#1085#1072':'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8542779
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic, fsUnderline]
    end
    object TopLabel: TsLabel
      Left = 1
      Top = 1
      Width = 75
      Height = 19
      Align = alTop
      Caption = 'TopLabel'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8542779
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
    end
    object DBText1: TDBText
      Left = 143
      Top = 93
      Width = 50
      Height = 21
      Alignment = taRightJustify
      DataField = 'lkMES'
      DataSource = DM.DSCalc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8542779
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TsPanel
    Left = 0
    Top = 89
    Width = 583
    Height = 25
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object sDBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 581
      Height = 23
      DataSource = DM.DSInterchange
      Align = alClient
      TabOrder = 0
    end
  end
  object Panel3: TsPanel
    Left = 0
    Top = 114
    Width = 583
    Height = 359
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sDBGrid1: TDBGridEh
      Left = 1
      Top = 1
      Width = 581
      Height = 357
      Align = alClient
      Color = 16511722
      DataSource = DM.DSInterchange
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterParams.Color = clWindow
      IndicatorOptions = [gioShowRowIndicatorEh]
      BackgroundData.Placement = ipBottomLeftEh
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      EditButtonsShowOptions = [sebShowOnlyForCurCellEh]
      SortLocal = True
      TabOrder = 0
      TitleParams.MultiTitle = True
      OnKeyPress = sDBGrid1KeyPress
      Columns = <
        item
          ButtonStyle = cbsNone
          DynProps = <>
          EditButton.Enabled = False
          EditButton.Visible = False
          EditButtons = <
            item
              Action = Action1
              DefaultAction = True
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000010000FF00FF008C6B
                6C0087707000AE877C000D7FA9006F7C88006D7C94001F7ECE000E80AA001180
                A7001081AB00048CB900078DBC000B8DBA000C8DBA00088EBC001285B0007882
                95006092BD005EA8BE000A91C1000F9DCE002087DE0011A7D10030BCDC001F89
                E00059A9DC0044BADD004ABFE00057AEF4004DB1F90049B2FF004EB7FF0057B1
                F60050B6FE0022D7FC0024D7FF0024D8FD0039D7FB0035D8FD004BC6DC0046C6
                E40048D5EE0075D3E90058E9FD006FE6FF0070E6FF0071F9FE007BFFFF008683
                88008B8697008F989B00969594009C919000AD858000AD868500AB939500A49E
                9900B1979400B5A09F008AA5AD00CAA08C00CDAC9300C2A69A00F3BE8000C6AE
                A000CFB7A100D3BBA200F4C88E00F5CB9A00F5D09C00F8D09800DAC5B700E4CC
                A900EFD2A900ECD1AC00F6DAAB00F5DEB500F5E1B600F9E1B100FEEAB900FFF2
                BA00A1C6C8008DE6FA0081F8FE008CFAFD008DFCFE0097FCFD009BFBFD00B8ED
                F600A7FFFF00AAFFFE00ADFFFE00B6F6FF00B1FCFD00B4FFFF00ECDDCC00E8DD
                D600FFF7C600FCF5CD00FCF7D100FAF6D600FFFBD500FEFED600F7F2D900FEFF
                D900FFFEDD00C6F5FF00C6FEFF00D2FFFF00FEF7E000FBFCE100FDFFE100FFFF
                E400E3FEFF00F9F6F200FFFFF400F1FBFC00F5FFFE00FBFFFF00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000605000004080408080A000000000011191A000B2A23272D
                531B080000001116201D0B552C23272E531C1509003207201D000F552C23272B
                3A3F41030112202000000F552C252938606771684236200000000B5F5D6B3B61
                74676A67513D000000000B59181735716A676A63474B360000000F282C23396A
                6A6A6A4C404D360000000B552C2534656A654F455049360000000B552C251343
                6247446E7336000000000B552C25263C3E4B4E483636000000000F55542F3057
                523331020000000000000B77766D5F5C5C5C2F08000000000000001476726C5C
                5A58100000000000000000000F0F0B0F0F0F0000000000000000}
              Style = ebsGlyphEh
            end>
          FieldName = 'FOOD_ID'
          Footers = <>
          LookupParams.KeyFieldNames = 'FOOD_ID'
          LookupParams.LookupCache = False
          LookupParams.LookupDataSet = DM.FoodAll
          LookupParams.LookupDisplayFieldName = 'DESCR'
          LookupParams.LookupKeyFieldNames = 'ID'
          Title.Caption = #1048#1085#1075#1088#1077#1076#1080#1077#1085#1090
          Width = 327
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTY'
          Footers = <>
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1085#1072' 100 '#1087#1086#1088#1094'.'
          Width = 75
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'lkMes'
          Footers = <>
          ReadOnly = True
          Title.Caption = #1045#1076'.'
          Width = 53
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 36
    Align = alTop
    Caption = 'sPanel1'
    ShowCaption = False
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    object sBitBtnOK: TsBitBtn
      Left = 1
      Top = 1
      Width = 88
      Height = 34
      Align = alLeft
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = sBitBtnOKClick
      SkinData.SkinSection = 'BUTTON'
    end
    object sBitBtnCancel: TsBitBtn
      Left = 89
      Top = 1
      Width = 88
      Height = 34
      Align = alLeft
      Caption = #1054#1090#1084#1077#1085#1072
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = sBitBtnCancelClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object ActionManager1: TActionManager
    Left = 424
    Top = 32
    StyleName = 'Platform Default'
    object Action1: TAction
      Caption = 'Action1'
      OnExecute = Action1Execute
    end
  end
end
