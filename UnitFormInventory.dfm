object FormInventory: TFormInventory
  Left = 0
  Top = 0
  Caption = 'FormInventory'
  ClientHeight = 673
  ClientWidth = 993
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 161
    Width = 993
    Height = 3
    Cursor = crVSplit
    Align = alTop
    ExplicitWidth = 362
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 993
    Height = 161
    Align = alTop
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 432
      Height = 159
      Align = alLeft
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      Checked = False
      object DBEditEh1: TDBEditEh
        Left = 288
        Top = 16
        Width = 121
        Height = 21
        ControlLabel.Width = 31
        ControlLabel.Height = 13
        ControlLabel.Caption = #1053#1086#1084#1077#1088
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 10
        ControlLabelLocation.Position = lpLeftCenterEh
        DataField = 'CODE'
        DataSource = DM.DSDocs
        DynProps = <>
        EditButtons = <>
        TabOrder = 0
        Visible = True
      end
      object DBDateTimeEditEh1: TDBDateTimeEditEh
        Left = 288
        Top = 56
        Width = 121
        Height = 21
        ControlLabel.Width = 26
        ControlLabel.Height = 13
        ControlLabel.Caption = #1044#1072#1090#1072
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 10
        ControlLabelLocation.Position = lpLeftCenterEh
        DataField = 'DOCDATE'
        DataSource = DM.DSDocs
        DynProps = <>
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 1
        Visible = True
      end
      object DBLookupComboboxEh1: TDBLookupComboboxEh
        Left = 248
        Top = 96
        Width = 161
        Height = 21
        ControlLabel.Width = 32
        ControlLabel.Height = 13
        ControlLabel.Caption = #1057#1082#1083#1072#1076
        ControlLabel.Visible = True
        ControlLabelLocation.Spacing = 10
        ControlLabelLocation.Position = lpLeftCenterEh
        DynProps = <>
        DataField = 'WAREHOUSE_ID'
        DataSource = DM.DSDocs
        EditButtons = <>
        KeyField = 'ID'
        ListField = 'DESCR'
        ListSource = DM.DSWareHouse
        TabOrder = 2
        Visible = True
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 622
    Width = 993
    Height = 51
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 856
      Top = 6
      Width = 116
      Height = 39
      Margins.Top = 5
      Margins.Right = 20
      Margins.Bottom = 5
      Action = ActionCancel
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      AlignWithMargins = True
      Left = 712
      Top = 6
      Width = 131
      Height = 39
      Margins.Top = 5
      Margins.Right = 10
      Margins.Bottom = 5
      Action = ActionOK
      Align = alRight
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      AlignWithMargins = True
      Left = 31
      Top = 6
      Width = 170
      Height = 39
      Margins.Left = 30
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Action = ActionFillInventory
      Align = alLeft
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1086#1089#1090#1072#1090#1082#1072#1084#1080
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 164
    Width = 993
    Height = 458
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 991
      Height = 415
      Align = alClient
      DataSource = DM.DSInventory
      DynProps = <>
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      SortLocal = True
      TabOrder = 0
      Columns = <
        item
          ButtonStyle = cbsNone
          DynProps = <>
          EditButton.Visible = False
          EditButtons = <
            item
              DefaultAction = True
              Glyph.Data = {
                36050000424D3605000000000000360400002800000010000000100000000100
                0800000000000001000000000000000000000001000000000000FF00FF008C6B
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
              OnClick = DBGridEh1Columns0EditButtons0Click
            end>
          FieldName = 'FOOD_ID'
          Footers = <>
          LookupParams.KeyFieldNames = 'FOOD_ID'
          LookupParams.LookupDataSet = DM.FoodAll
          LookupParams.LookupDisplayFieldName = 'DESCR'
          LookupParams.LookupKeyFieldNames = 'ID'
          ReadOnly = True
          Title.TitleButton = True
          Width = 368
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTY'
          Footers = <>
          Title.TitleButton = True
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'QTY_FACT'
          Footers = <>
        end
        item
          DynProps = <>
          EditButtons = <>
          FieldName = 'PRICE'
          Footers = <>
          Title.TitleButton = True
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 416
      Width = 991
      Height = 41
      Align = alBottom
      Caption = 'Panel4'
      TabOrder = 1
      object DBNavigator1: TDBNavigator
        Left = 1
        Top = 1
        Width = 560
        Height = 39
        DataSource = DM.DSInventory
        Align = alLeft
        TabOrder = 0
      end
    end
  end
  object ActionList1: TActionList
    Left = 832
    Top = 40
    object ActionFillInventory: TAction
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1086#1089#1090#1072#1090#1082#1072#1084#1080
      OnExecute = ActionFillInventoryExecute
    end
    object ActionOK: TAction
      Caption = 'OK'
      OnExecute = ActionOKExecute
    end
    object ActionCancel: TAction
      Caption = #1054#1090#1084#1077#1085#1072
      OnExecute = ActionCancelExecute
    end
  end
end
