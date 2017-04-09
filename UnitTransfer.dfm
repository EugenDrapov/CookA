object FormTransfer: TFormTransfer
  Left = 0
  Top = 0
  Caption = 'FormTransfer'
  ClientHeight = 553
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 16
  object sSplitter1: TsSplitter
    Left = 0
    Top = 135
    Width = 809
    Height = 6
    Cursor = crVSplit
    Align = alTop
    SkinData.SkinSection = 'SPLITTER'
  end
  object ToolPanel: TsPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 39
    Align = alTop
    Caption = 'ToolPanel'
    ShowCaption = False
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object BitBtnOK: TsBitBtn
      Left = 1
      Top = 1
      Width = 99
      Height = 37
      Align = alLeft
      Kind = bkOK
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtnOKClick
      SkinData.SkinSection = 'BUTTON'
    end
    object BitBtnCancel: TsBitBtn
      Left = 100
      Top = 1
      Width = 98
      Height = 37
      Align = alLeft
      Caption = #1054#1090#1084#1077#1085#1072
      Kind = bkCancel
      NumGlyphs = 2
      TabOrder = 1
      OnClick = BitBtnCancelClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
  object DetailPanel: TsPanel
    Left = 0
    Top = 141
    Width = 809
    Height = 412
    Align = alClient
    Caption = 'DetailPanel'
    ShowCaption = False
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object DetailToolPanel: TsPanel
      Left = 1
      Top = 1
      Width = 807
      Height = 25
      Align = alTop
      Caption = 'DetailToolPanel'
      ShowCaption = False
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
    end
    object sPanel1: TsPanel
      Left = 1
      Top = 26
      Width = 807
      Height = 385
      Align = alClient
      Caption = 'GridPanel'
      ShowCaption = False
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object sDBNavigator1: TsDBNavigator
        Left = 1
        Top = 1
        Width = 805
        Height = 24
        Align = alTop
        FullRepaint = False
        TabOrder = 0
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = DM.DSTransferDetail
      end
      object DBGridEh1: TDBGridEh
        Left = 1
        Top = 25
        Width = 805
        Height = 359
        Align = alClient
        DataSource = DM.DSTransferDetail
        DynProps = <>
        FooterRowCount = 1
        FooterParams.Color = cl3DLight
        GridLineParams.VertEmptySpaceStyle = dessNonEh
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghEnterAsTab, dghIncSearch, dghPreferIncSearch, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove]
        SumList.Active = True
        TabOrder = 1
        TitleParams.MultiTitle = True
        TitleParams.RowLines = 2
        Columns = <
          item
            ButtonStyle = cbsNone
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <
              item
                Action = ActionOpenMaterials
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
            FieldName = 'Food'
            Footers = <>
            Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100'|'#1058#1086#1074#1072#1088
            Title.TitleButton = True
            Width = 190
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'PRICE'
            Footer.DisplayFormat = '#0.,##'
            Footers = <>
            Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100'|'#1062#1077#1085#1072
            Width = 63
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'QTY'
            Footers = <>
            Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100'|'#1050#1086#1083'-'#1074#1086
            Width = 66
          end
          item
            ButtonStyle = cbsNone
            DynProps = <>
            EditButton.Visible = False
            EditButtons = <
              item
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
                OnClick = DBGridEh1Columns4EditButtons0Click
              end>
            FieldName = 'TargetFood'
            Footers = <>
            Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100'|'#1058#1086#1074#1072#1088
            Title.TitleButton = True
            Width = 191
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'TARGET_QTY'
            Footers = <>
            Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100'|'#1050#1086#1083'-'#1074#1086
            Width = 60
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'SUMMA'
            Footer.DisplayFormat = '#0.,##'
            Footer.ValueType = fvtSum
            Footers = <>
            Width = 65
          end>
        object RowDetailData: TRowDetailPanelControlEh
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
        end
      end
    end
  end
  object HeaderPanel: TsPanel
    Left = 0
    Top = 39
    Width = 809
    Height = 96
    Align = alTop
    Caption = 'HeaderPanel'
    ShowCaption = False
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sGroupBox2: TsGroupBox
      Left = 290
      Top = 1
      Width = 518
      Height = 94
      Align = alClient
      Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
      TabOrder = 0
      SkinData.SkinSection = 'GROUPBOX'
      Checked = False
      object sDBLookupComboBox1: TsDBLookupComboBox
        Left = 6
        Top = 26
        Width = 232
        Height = 20
        Color = 16511722
        DataField = 'TARGET_DEPARTMENT'
        DataSource = DM.DSTransfer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'DESCR'
        ListSource = DSDepartmentsList
        ParentFont = False
        TabOrder = 0
        BoundLabel.Active = True
        BoundLabel.Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = 8542779
        BoundLabel.Font.Height = -10
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        SkinData.SkinSection = 'COMBOBOX'
      end
      object sDBLookupComboBox3: TsDBLookupComboBox
        Left = 8
        Top = 61
        Width = 229
        Height = 25
        Color = 16511722
        DataField = 'TARGET_WAREHOUSE'
        DataSource = DM.DSTransfer
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -14
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'DESCR'
        ListSource = DSWarehouseList
        ParentFont = False
        TabOrder = 1
        BoundLabel.Active = True
        BoundLabel.Caption = #1057#1082#1083#1072#1076' ('#1086#1090#1076#1077#1083')'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = 8542779
        BoundLabel.Font.Height = -10
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 1
      Width = 289
      Height = 94
      Align = alLeft
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      Checked = False
      object sDBEdit1: TsDBEdit
        Left = 161
        Top = 14
        Width = 122
        Height = 20
        Color = 16511722
        DataField = 'CODE'
        DataSource = DM.DSDocs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1053#1086#1084#1077#1088
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = 8542779
        BoundLabel.Font.Height = -10
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
      end
      object sDBDateEdit1: TDBDateTimeEditEh
        Left = 160
        Top = 40
        Width = 121
        Height = 20
        AutoSize = False
        DataField = 'DOCDATE'
        DataSource = DM.DSDocs
        DynProps = <>
        EditButtons = <>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dtkDateEh
        ParentFont = False
        TabOrder = 1
        Visible = True
      end
      object sDBLookupComboBox2: TsDBLookupComboBox
        Left = 87
        Top = 66
        Width = 199
        Height = 20
        Color = 16511722
        DataField = 'WAREHOUSE_ID'
        DataSource = DM.DSDocs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -10
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'DESCR'
        ListSource = DM.DSWareHouse
        ParentFont = False
        TabOrder = 2
        BoundLabel.Active = True
        BoundLabel.Caption = #1057#1082#1083#1072#1076' ('#1086#1090#1076#1077#1083')'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = 8542779
        BoundLabel.Font.Height = -10
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        SkinData.SkinSection = 'COMBOBOX'
      end
    end
  end
  object ActionManager1: TActionManager
    Left = 280
    Top = 264
    StyleName = 'Platform Default'
    object ActionOpenMaterials: TAction
      Caption = #1055#1086#1076#1073#1086#1088
      OnExecute = ActionOpenMaterialsExecute
    end
  end
  object DepartmentsList: TpFIBDataSet
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    KPP,'
      '    EXTKEY,'
      '    COMPANY_ID'
      'FROM'
      '    DEPARTMENTS '
      'where( '
      '    COMPANY_ID=:mas_id'
      '     ) and (     DEPARTMENTS.ID = :OLD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    DESCR,'
      '    KPP,'
      '    EXTKEY,'
      '    COMPANY_ID'
      'FROM'
      '    DEPARTMENTS '
      'where'
      '    COMPANY_ID=:mas_id')
    AutoCommit = True
    DataSource = DM.DSCompany
    Left = 256
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object WarehouseList: TpFIBDataSet
    RefreshSQL.Strings = (
      'SELECT'
      '    ID,'
      '    EXTKEY,'
      '    DESCR,'
      '    DEP_ID,'
      '    SECTION'
      'FROM'
      '    WAREHOUSE '
      'WHERE( '
      '    DEP_ID=:MAS_ID'
      '     ) and (     WAREHOUSE.ID = :OLD_ID'
      '     )'
      '    ')
    SelectSQL.Strings = (
      'SELECT'
      '    ID,'
      '    EXTKEY,'
      '    DESCR,'
      '    DEP_ID,'
      '    SECTION'
      'FROM'
      '    WAREHOUSE '
      'WHERE'
      '    DEP_ID=:MAS_ID')
    AutoCommit = True
    DataSource = DSDepartmentsList
    Left = 408
    WaitEndMasterScroll = True
    dcForceMasterRefresh = True
    dcForceOpen = True
  end
  object DSDepartmentsList: TDataSource
    DataSet = DepartmentsList
    Left = 336
  end
  object DSWarehouseList: TDataSource
    DataSet = WarehouseList
    Left = 480
  end
end
