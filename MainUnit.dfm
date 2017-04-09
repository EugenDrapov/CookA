object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 734
  ClientWidth = 943
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 19
  object Splitter1: TsSplitter
    Left = 217
    Top = 90
    Height = 625
    SkinData.SkinSection = 'SPLITTER'
    ExplicitTop = 89
    ExplicitHeight = 646
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 715
    Width = 943
    Height = 19
    Panels = <>
    ParentColor = True
    ParentFont = True
    UseSystemFont = False
  end
  object NavigatorPanel: TPanel
    Left = 0
    Top = 90
    Width = 217
    Height = 625
    Align = alLeft
    ParentColor = True
    TabOrder = 1
    object sFrameBar1: TsFrameBar
      Left = 1
      Top = 1
      Width = 215
      Height = 623
      HorzScrollBar.Range = 177
      HorzScrollBar.Visible = False
      VertScrollBar.Range = 156
      VertScrollBar.Tracking = True
      Align = alClient
      AutoScroll = False
      Color = clMenuBar
      ParentColor = False
      TabOrder = 0
      SkinData.SkinSection = 'BAR'
      ActiveFrameIndex = -1
      Spacing = 0
      AutoFrameSize = False
      Images = GroupImageList
      Items = <
        item
          DisplayName = 'TsTitleItem'
          ImageIndex = 0
          Caption = #1050#1072#1090#1072#1083#1086#1075#1080
          Cursor = crDefault
          SkinSection = 'BARTITLE'
          TextAlignment = taLeftJustify
          OnCreateFrame = sFrameBar1Items0CreateFrame
        end
        item
          DisplayName = 'TsTitleItem'
          ImageIndex = 1
          Caption = #1054#1087#1077#1088#1072#1094#1080#1080' '#1087#1088#1080#1093#1086#1076#1085#1099#1077
          Cursor = crDefault
          SkinSection = 'BARTITLE'
          TextAlignment = taLeftJustify
          OnCreateFrame = sFrameBar1Items1CreateFrame
        end
        item
          DisplayName = 'TsTitleItem'
          ImageIndex = 2
          Caption = #1054#1087#1077#1088#1072#1094#1080#1080' '#1088#1072#1089#1093#1086#1076#1085#1099#1077
          Cursor = crDefault
          SkinSection = 'BARTITLE'
          TextAlignment = taLeftJustify
          OnCreateFrame = sFrameBar1Items2CreateFrame
        end
        item
          DisplayName = 'TsTitleItem'
          ImageIndex = 3
          Caption = #1054#1090#1095#1077#1090#1099
          Cursor = crDefault
          SkinSection = 'BARTITLE'
          TextAlignment = taLeftJustify
          OnCreateFrame = sFrameBar1Items3CreateFrame
          OnFrameDestroy = sFrameBar1Items4FrameDestroy
        end
        item
          DisplayName = 'TsTitleItem'
          ImageIndex = 4
          Caption = #1055#1088#1086#1076#1072#1078#1072
          Cursor = crDefault
          SkinSection = 'BARTITLE'
          TextAlignment = taLeftJustify
          OnCreateFrame = sFrameBar1Items4CreateFrame
        end>
    end
  end
  object MainPanel: TPanel
    Left = 223
    Top = 90
    Width = 720
    Height = 625
    Align = alClient
    Caption = 'MainPanel'
    ParentColor = True
    ShowCaption = False
    TabOrder = 2
    object MainDBGrid: TDBGridEh
      Left = 1
      Top = 25
      Width = 718
      Height = 599
      Align = alClient
      Color = 16511722
      DefaultDrawing = False
      DynProps = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterRowCount = 1
      FooterParams.Color = clWindow
      GridLineParams.VertEmptySpaceStyle = dessNonEh
      IndicatorOptions = [gioShowRowIndicatorEh]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghIncSearch, dghPreferIncSearch, dghDblClickOptimizeColWidth, dghDialogFind, dghColumnResize, dghColumnMove]
      ParentFont = False
      PopupMenu = PopupMenu1
      SumList.Active = True
      SumList.VirtualRecords = True
      TabOrder = 0
      TitleParams.FillStyle = cfstThemedEh
      OnDblClick = MainDBGridDblClick
      OnDrawColumnCell = MainDBGridDrawColumnCell
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object PanelMasterFld: TPanel
      Left = 1
      Top = 1
      Width = 718
      Height = 24
      Align = alTop
      TabOrder = 1
      object InfoDBText: TsDBText
        Left = 1
        Top = 1
        Width = 99
        Height = 22
        Align = alLeft
        AutoSize = True
        Caption = 'InfoDBText'
        ParentFont = False
        ShowAccelChar = False
        Layout = tlCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8542779
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ExplicitHeight = 21
      end
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 943
    Height = 65
    Align = alTop
    TabOrder = 3
    object sToolBar1: TToolBar
      Left = 1
      Top = 1
      Width = 941
      Height = 63
      Align = alClient
      ButtonHeight = 66
      ButtonWidth = 65
      Ctl3D = False
      DisabledImages = sAlphaImageList1
      DoubleBuffered = True
      Flat = False
      GradientEndColor = clBlue
      Images = ImageList1
      ParentDoubleBuffered = False
      ShowCaptions = True
      TabOrder = 0
      Transparent = False
      Wrapable = False
      object ToolBtnPrint: TToolButton
        Left = 0
        Top = 0
        Action = ActionReport
        AllowAllUp = True
        AutoSize = True
        DropdownMenu = PopupMenuPrintBtn
        EnableDropdown = True
        Style = tbsDropDown
      end
      object PeriodPanel: TPanel
        Left = 84
        Top = 0
        Width = 253
        Height = 66
        Align = alLeft
        Alignment = taLeftJustify
        ParentColor = True
        TabOrder = 0
        object Label1: TLabel
          Left = 1
          Top = 13
          Width = 63
          Height = 19
          Caption = #1055#1077#1088#1080#1086#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sSpeedButton1: TSpeedButton
          Left = 197
          Top = 1
          Width = 55
          Height = 64
          Action = ActionInterval
          Align = alRight
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000050000
            000E000000130000001300000013000000130000001300000013000000130000
            00130000001300000013000000130000000E0000000500000000000000050000
            000E000000130000001300000013000000130000001300000013000000130000
            00130000001300000013000000130000000E00000005000000000000000E0000
            002B0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
            003A0000003A0000003A0000003A0000002B0000000E000000000000000E0000
            002B0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
            003A0000003A0000003A0000003A0000002B0000000E00000000938470FF9384
            70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
            70FF938470FF938470FF938470FF0000003A000000180000000A938470FF9384
            70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
            70FF938470FF938470FF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF938470FF938470FFFFFF
            FFFFFFFFFFFFFFFFFFFF938470FF0000003A000000220000001D938470FFFFFF
            FFFFFFFFFFFFFFFFFFFF938470FF938470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF2E1CCFFF2E0CBFFF2DEC9FFF0DDC7FFFFFFFFFF938470FF938470FFFFFF
            FFFFF0DDC7FFFFFFFFFF938470FF0000003A0000ADFF0000001D938470FFFFFF
            FFFFF0DDC7FFFFFFFFFF938470FF938470FFFFFFFFFFF2E1CCFFF2E0CBFFF2DE
            C9FFF0DDC7FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF3E2CFFFF2E1CCFFF2E0CBFFF2DEC9FFFFFFFFFF938470FF938470FFFFFF
            FFFFF2DECAFFFFFFFFFF938470FF0000003A0000ADFF0000000A938470FFFFFF
            FFFFF2DECAFFFFFFFFFF938470FF938470FFFFFFFFFFF3E2CFFFF2E1CCFFF2E0
            CBFFF2DEC9FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF3E2D0FFF3E2CFFFF3E1CCFFF2E0CBFFFFFFFFFF938470FF938470FFFFFF
            FFFFF2E0CBFFFFFFFFFF938470FF0000003A000000180000000A938470FFFFFF
            FFFFF2E0CBFFFFFFFFFF938470FF938470FFFFFFFFFFF3E2D0FFF3E2CFFFF3E1
            CCFFF2E0CBFFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF4E3D3FFF3E3D0FFF3E2CFFFF3E1CCFFFFFFFFFF938470FF938470FFFFFF
            FFFFF3E1CEFFFFFFFFFF938470FF0000003A000000220000001D938470FFFFFF
            FFFFF3E1CEFFFFFFFFFF938470FF938470FFFFFFFFFFF4E3D3FFF3E3D0FFF3E2
            CFFFF3E1CCFFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF4E5D4FFF4E3D3FFF3E3D0FFF3E2CFFFFFFFFFFF938470FF938470FFFFFF
            FFFFF3E2D0FFFFFFFFFF938470FF0000003A0000ADFF0000001D938470FFFFFF
            FFFFF3E2D0FFFFFFFFFF938470FF938470FFFFFFFFFFF4E5D4FFF4E3D3FFF3E3
            D0FFF3E2CFFFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF4E6D7FFF4E5D4FFF4E3D3FFF3E3D0FFFFFFFFFF938470FF938470FFFFFF
            FFFFF4E3D1FFFFFFFFFF938470FF0000003A0000ADFF0000000A938470FFFFFF
            FFFFF4E3D1FFFFFFFFFF938470FF938470FFFFFFFFFFF4E6D7FFF4E5D4FFF4E3
            D3FFF3E3D0FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF6E7D8FFF4E6D7FFF4E5D4FFF4E5D3FFFFFFFFFF938470FF938470FFFFFF
            FFFFF4E5D4FFFFFFFFFF938470FF0000003A000000180000000A938470FFFFFF
            FFFFF4E5D4FFFFFFFFFF938470FF938470FFFFFFFFFFF6E7D8FFF4E6D7FFF4E5
            D4FFF4E5D3FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF6E9DAFFF6E7D8FFF4E6D7FFA7B48FFF2A5E20FF25581BFF938470FFFFFF
            FFFFF4E6D7FFFFFFFFFF938470FF0000003A000000220000001D938470FFFFFF
            FFFFF4E6D7FFFFFFFFFF938470FF938470FF2A5E20FF295D1FFF9AAC84FFF4E6
            D7FFF4E5D4FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFF6EADCFFE6DECBFF72915FFF1F5516FF165A11FF1F5516FF938470FFFFFF
            FFFFF6E7D8FFFFFFFFFF938470FF0000003A0000ADFF0000001D938470FFFFFF
            FFFFF6E7D8FFFFFFFFFF938470FF938470FF1F5516FF145A10FF1F5516FF6488
            53FFE5DCC9FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFC7CCB1FF406E33FF1F5916FF157913FF0E780FFF1F5516FF1F5516FF1F55
            16FF406E33FFFFFFFFFF938470FF0000003A0000ADFF0000000A938470FFFFFF
            FFFFF6E9DAFF417237FF1F5516FF1F5516FF1F5516FF0D760EFF126910FF1F56
            16FF406E33FFCEDCCBFF938470FF0000003D0000001900000003938470FF9FBA
            99FF295D1FFF1F6818FF18A71DFF1DAB20FF119715FF127611FF10670DFF0F5D
            0DFF1F5516FFFFFFFFFF938470FF0000003A000000180000000A938470FFFFFF
            FFFFF7EADDFF1F5516FF118911FF119112FF159516FF139114FF19951CFF1177
            11FF1B5C13FF2A5E20FF63724AFF00000045000000290000000B466735FF1F55
            16FF2A8B2AFF2DD138FF35CC3AFF33C636FF29BB2DFF1EA31FFF158B16FF0C6D
            0DFF1F5516FFFFFFFFFF938470FF0000003A000000220000001D938470FFFFFF
            FFFFF7EBE0FF1F5516FF18A418FF2DBA30FF34C439FF31C035FF2DB72FFF1FA3
            22FF118111FF166312FF1F5516FF14350EBA00000032000000101F5516FF43A3
            43FF5BE269FF52D959FF50D956FF46D44BFF3BCF40FF2AB72BFF1CA01EFF0F7D
            10FF1F5516FFFFFFFFFF938470FF0000003A0000ADFF0000001D938470FFFFFF
            FFFFF7EDE1FF1F5516FF1DC123FF3FCC41FF46D74CFF41D345FF39CA3DFF2FBD
            33FF22A724FF0F7B10FF125C0FFF1F5516FF000000290000000B466735FF1F55
            16FF57A559FF83EB93FF6BE377FF59DE64FF41D74AFF2BC22EFF1DAD20FF1090
            13FF1F5516FFFFFFFFFF938470FF0000003A0000ADFF0000000A938470FFFFFF
            FFFFF8EEE3FF1F5516FF35DC47FF55D95DFF60E26AFF58DD62FF49D750FF35C9
            37FF19A41AFF186D14FF1F5516FF13350EB60000001900000003938470FF90AF
            8AFF1F5516FF458241FF92E5A3FF6CE680FF3DDE55FF1FCC2CFF13B61CFF1199
            16FF1F5516FFFFFFFFFF938470FF0000003A000000180000000A938470FFFFFF
            FFFFF8EFE6FF1F5516FF80E08BFF89EB9FFF80EF9CFF4CE266FF48D750FF26BB
            26FF1F6A18FF1F5516FF5B6F44FF0000003A0000001300000000938470FFFFFF
            FFFFCAD1BBFF35672AFF275D1EFF6AC578FF56E570FF1F5516FF1F5516FF1F55
            16FF295D1FFFFFFFFFFF938470FF0000003A000000220000001D938470FFFFFF
            FFFFFAF0E7FF2A5E20FF1F5516FF1F5516FF1F5516FF44E36AFF30B236FF215B
            18FF356629FFCEDCCBFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFAF3EDFFEAE9DAFF58824CFF1F5516FF3F9A43FF1F5516FF737857FFBDD0
            BAFFFAF2EAFFFFFFFFFF938470FF0000003A0000ADFF0000001D938470FFFFFF
            FFFFFAF2EAFFFFFFFFFF938470FF938470FF1F5516FF329940FF1F5516FF668B
            58FFE9E6D7FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFBF4EEFFFBF3EDFFFAF3EAFF8EA97FFF1F5516FF25581BFF938470FFFFFF
            FFFFFBF3EDFFFFFFFFFF938470FF0000003A0000ADFF0000000A938470FFFFFF
            FFFFFBF3EDFFFFFFFFFF938470FF938470FF2A5E20FF295D20FF9DB490FFFAF3
            EAFFFAF2E9FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFBF6F0FFFBF4EEFFFBF3EDFFFAF3EAFFFFFFFFFF938470FF938470FFFFFF
            FFFFFBF4EEFFFFFFFFFF938470FF0000003A000000180000000A938470FFFFFF
            FFFFFBF4EEFFFFFFFFFF938470FF938470FFFFFFFFFFFBF6F0FFFBF4EEFFFBF3
            EDFFFAF3EAFFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFCF7F2FFFBF6F0FFFBF4EEFFFBF4EDFFFFFFFFFF938470FF938470FFFFFF
            FFFFFBF6F0FFFFFFFFFF938470FF0000003A000000220000001D938470FFFFFF
            FFFFFBF6F0FFFFFFFFFF938470FF938470FFFFFFFFFFFCF7F2FFFBF6F0FFFBF4
            EEFFFBF4EDFFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFCF8F4FFFCF7F2FFFBF6F0FFFBF4EEFFFFFFFFFF938470FF938470FFFFFF
            FFFFFCF8F3FFFFFFFFFF938470FF0000003A0000ADFF0000001D938470FFFFFF
            FFFFFCF8F3FFFFFFFFFF938470FF938470FFFFFFFFFFFCF8F4FFFCF7F2FFFBF6
            F0FFFBF4EEFFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFCFAF6FFFCF8F4FFFCF7F2FFFBF6F0FFFFFFFFFF938470FF938470FFFFFF
            FFFFFCFAF6FFFFFFFFFF938470FF0000003A0000ADFF0000000A938470FFFFFF
            FFFFFCFAF6FFFFFFFFFF938470FF938470FFFFFFFFFFFCFAF6FFFCF8F4FFFCF7
            F2FFFBF6F0FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFEFBF8FFFCFAF6FFFCF8F4FFFCF7F2FFFFFFFFFF938470FF938470FFFFFF
            FFFFFEFBF7FFFFFFFFFF938470FF0000003A000000180000000A938470FFFFFF
            FFFFFEFBF7FFFFFFFFFF938470FF938470FFFFFFFFFFFEFBF8FFFCFAF6FFFCF8
            F4FFFCF7F2FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFEFCFAFFFEFBF8FFFCFAF6FFFCF8F4FFFFFFFFFF938470FF938470FFFFFF
            FFFFFEFCFAFFFFFFFFFF938470FF0000003A000000220000001D938470FFFFFF
            FFFFFEFCFAFFFFFFFFFF938470FF938470FFFFFFFFFFFEFCFAFFFEFBF8FFFCFA
            F6FFFCF8F4FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFEFEFCFFFEFCFAFFFEFBF8FFFCFAF7FFFFFFFFFF938470FF938470FFFFFF
            FFFFFEFEFCFFFFFFFFFF938470FF0000003A0000ADFF0000001D938470FFFFFF
            FFFFFEFEFCFFFFFFFFFF938470FF938470FFFFFFFFFFFEFEFCFFFEFCFAFFFEFB
            F8FFFCFAF7FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFFFFFEFFFFFEFCFFFEFCFBFFFEFBF8FFFFFFFFFF938470FF938470FFFFFF
            FFFFFFFFFEFFFFFFFFFF938470FF0000003A0000ADFF0000000A938470FFFFFF
            FFFFFFFFFEFFFFFFFFFF938470FF938470FFFFFFFFFFFFFFFEFFFFFEFCFFFEFC
            FBFFFEFBF8FFFFFFFFFF938470FF0000003A0000001300000000938470FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF938470FF938470FFFFFF
            FFFFFFFFFFFFFFFFFFFF938470FF0000002B0000000E00000000938470FFFFFF
            FFFFFFFFFFFFFFFFFFFF938470FF938470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF938470FF0000002B0000000E00000000938470FF9384
            70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
            70FF938470FF938470FF938470FF0000000E0000000500000000938470FF9384
            70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
            70FF938470FF938470FF938470FF0000000E0000000500000000}
          ParentFont = False
        end
        object DateTimePicker1: TsDateEdit
          Left = 70
          Top = 11
          Width = 121
          Height = 21
          AutoSize = False
          EditMask = '!99/99/9999;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          Text = '  .  .    '
          OnExit = DateTimePickerExit
          CheckOnExit = True
          GlyphMode.Blend = 0
          GlyphMode.Grayed = False
          OnCloseUp = DateTimePickerCloseUp
        end
        object DateTimePicker2: TsDateEdit
          Left = 70
          Top = 38
          Width = 121
          Height = 21
          AutoSize = False
          EditMask = '!99/99/9999;1; '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 1
          Text = '  .  .    '
          OnExit = DateTimePickerExit
          CheckOnExit = True
          GlyphMode.Blend = 0
          GlyphMode.Grayed = False
          OnCloseUp = DateTimePickerCloseUp
        end
      end
      object Panel1: TPanel
        Left = 337
        Top = 0
        Width = 185
        Height = 66
        Align = alLeft
        ShowCaption = False
        TabOrder = 1
        object sDBText1: TDBText
          Left = 1
          Top = 17
          Width = 183
          Height = 30
          Align = alClient
          Color = clBtnFace
          DataField = 'DESCR'
          DataSource = DM.DSCompany
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitLeft = -1
          ExplicitTop = 11
        end
        object sLabel1: TLabel
          Left = 1
          Top = 1
          Width = 183
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 84
        end
        object sDBNavigator1: TDBNavigator
          Left = 1
          Top = 47
          Width = 183
          Height = 18
          DataSource = DM.DSCompany
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
      end
      object Splitter3: TSplitter
        Left = 522
        Top = 0
        Height = 66
      end
      object Panel3: TPanel
        Left = 525
        Top = 0
        Width = 179
        Height = 66
        Align = alLeft
        ShowCaption = False
        TabOrder = 3
        object sLabel3: TsLabel
          Left = 1
          Top = 1
          Width = 177
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
          Color = clBlue
          ParentColor = False
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ExplicitWidth = 99
        end
        object sDBText3: TDBText
          Left = 1
          Top = 17
          Width = 177
          Height = 30
          Align = alClient
          DataField = 'DESCR'
          DataSource = DM.DSDepartments
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 53
          ExplicitHeight = 16
        end
        object sDBNavigator3: TDBNavigator
          Left = 1
          Top = 47
          Width = 177
          Height = 18
          DataSource = DM.DSDepartments
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 704
        Top = 0
        Width = 179
        Height = 66
        Align = alLeft
        ShowCaption = False
        TabOrder = 2
        object sLabel2: TLabel
          Left = 1
          Top = 1
          Width = 177
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = #1057#1082#1083#1072#1076
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 39
        end
        object sDBText2: TDBText
          Left = 1
          Top = 17
          Width = 177
          Height = 30
          Align = alClient
          DataField = 'DESCR'
          DataSource = DM.DSWareHouse
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 53
          ExplicitHeight = 16
        end
        object sDBNavigator2: TDBNavigator
          Left = 1
          Top = 47
          Width = 177
          Height = 18
          DataSource = DM.DSWareHouse
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Align = alBottom
          TabOrder = 0
        end
      end
      object Splitter4: TSplitter
        Left = 883
        Top = 0
        Height = 66
      end
    end
  end
  object MainDBNavigator: TDBNavigator
    Left = 0
    Top = 65
    Width = 943
    Height = 25
    Align = alTop
    TabOrder = 4
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            ChangesAllowed = [caModify, caMove]
            Background.Data = {
              07544269746D617076060000424D760600000000000036040000280000001800
              0000180000000100080000000000400200000000000000000000000100000001
              0000000000000101010002020200030303000404040005050500060606000707
              070008080800090909000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F
              0F00101010001111110012121200131313001414140015151500161616001717
              170018181800191919001A1A1A001B1B1B001C1C1C001D1D1D001E1E1E001F1F
              1F00202020002121210022222200232323002424240025252500262626002727
              270028282800292929002A2A2A002B2B2B002C2C2C002D2D2D002E2E2E002F2F
              2F00303030003131310032323200333333003434340035353500363636003737
              370038383800393939003A3A3A003A4042003A464B003A4C53003D5861004162
              6D00446B7800487785004C8190004F899900528FA1005597A900579CAE0059A0
              B3005CA5B80060A8BB0061ABBF0063B1C60064B4CA0064B7CE0063B8D00066BB
              D20068BDD50066BFD70063C1DB0062C5DF0062C8E30060C9E5005DCCE9005BCF
              ED0058D2F00056D4F30053D5F50051D5F6004BD6F80044D7FA003CD6FB0032D5
              FB002AD5FC0027D4FC0023D4FD001DD3FD001AD2FD0018D2FD0016D1FC0014D0
              FC0016D0FB0018CDF8001ACBF6001BC8F3001CC5F0001FBFEC0021BBE80024B6
              E50026B1E00025AEDC0024ACD90024A8D60022A4D1001FA0CC001A9AC5001895
              C0001791BC00168CB7001389B3001285AF001082AD000F81AB000F81AB000F81
              AB000F81AB001182AC001485AE001888B100208FB6002593B9002895BB002997
              BD002B99BE002F9DC30036A5CA003CACD00040B2D50045B8DB0048BDE1004CC0
              E40050C4E70057CAEB0060D1F00069D7F4006DDAF50076DEF7007CE0F80081E2
              F90086E4FA008FE6FA009BEAFC00A2EBFB00ACECFA00BFEDF800CCEEF700D6ED
              F400DCEBF100E0E9EF00E5E5EE00E6D9EE00EAB9F000F189F500F84FF800FB23
              FB00FD0EFD00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
              FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F90A
              F900F414F400E52DE500D04BD000BA6ABA00AC7FAC00A28BA2009C919C009993
              9800979497009694950094939400959494009594940096959500979595009996
              96009B9898009D9999009F9A9A00A19C9C00A49E9E00A5A0A000A6A1A100A8A3
              A400AAA6A600ACA7A700ADA8A800AFA9A900B1AAAA00B5AAAA00B9AAAA00BCAB
              AB00BDABAB00C0AFAF00C2B3B300C6B8B800CBBCBC00C9C0C000CAC3C300CBC2
              C200BFBFBFBFBFBFBFBFBFBF7D78747DBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBF755E908C7DBFBFBFBFBFBFBFBFBFBFBFBFBF7D8C73797D7872787385
              837D848B8D7DBFBFBFBFBFBFBFBF858D705F6D7276625D8E89939A548B7DBFBF
              BFBFBFBFBFBF7D8C5285767861655E94888A864D997DBFBFBFBFBF7D838A8495
              9A99925C5F64605B95979D9E9E86857DBFBFBF869C958593989A96945D62635D
              94999C9A9477918E79BFBF8384788A92969A98945C6065615F626767676C7375
              7ABFBF7D71706F9193999A954B49474B6C6767676767676775BFBF7D7870708F
              929750EDFBF4EDF5EE8C67676767676D7DBFBF7D8974708E5695EBA2FEF4EDF9
              FCEF69675F5A917A7DBFBF7D7670706F9093F4A2FEF4EDF9FCF8539A9D9E9E50
              7DBFBF7D787370708F92F4A2FEF4EDF9FCF854989C9E9B4D7DBFBFBFBF7D7870
              8D91F4A2FEF4EDF9FCF854959A867DBFBFBFBFBFBFBF79707090F4A2FEF4EDF9
              FCF855949983BFBFBFBFBFBFBFBF7D797987F4A2FEF4EDF9FCF88887887DBFBF
              BFBFBFBFBFBFBFBFBFBFF4A2FEF4EDF9FCF8BFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFF4A2FEF4EDF9FCF8BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFF4FDEAE5E3E2
              EEF6BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFE2F4FEF4ECF0F5E2BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFEFA0A3FEF3ECF6ECBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFECA0A2FEFBEEEEEABFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFEFA2A2FEF4
              E7BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFE2E2E2E2BFBFBFBFBFBFBFBF
              BFBF}
            BackgroundLayout = blLeftBanner
            Items = <
              item
                ContextItems = <
                  item
                    Caption = 'ActionClientItem0'
                  end>
                Caption = '&ActionClientItem0'
                CommandStyle = csComboBox
                CommandProperties.Width = -1
              end
              item
                Caption = 'A&ctionClientItem1'
              end
              item
                Caption = 'Ac&tionClientItem2'
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
        AutoSize = False
      end
      item
        Items = <
          item
            ChangesAllowed = [caModify]
            Items = <
              item
                Caption = '&ActionClientItem0'
              end>
            Caption = '&ActionClientItem0'
            KeyTip = 'F'
          end>
        AutoSize = False
      end
      item
      end
      item
        Items = <
          item
            BackgroundLayout = blTile
            Action = ActionCriteria
            ImageIndex = 6
          end
          item
            Caption = '-'
          end
          item
            BackgroundLayout = blTile
            Action = ActionReport
            ImageIndex = 1
          end
          item
            Action = ActionDesignReport
            ImageIndex = 2
          end
          item
            Caption = '-'
          end>
      end
      item
      end>
    Images = ImageList1
    Left = 88
    Top = 312
    StyleName = 'Platform Default'
    object ActionCriteria: TAction
      Category = #1054#1090#1073#1086#1088
      Caption = #1054#1090#1073#1086#1088
      ImageIndex = 6
      OnExecute = ActionCriteriaExecute
    end
    object ActionReport: TAction
      Category = #1054#1090#1095#1077#1090
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 0
      OnExecute = ActionReportExecute
    end
    object ActionDesignReport: TAction
      Category = #1054#1090#1095#1077#1090
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      ImageIndex = 2
      OnExecute = ActionDesignReportExecute
    end
    object ActionFood: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075#1080
      Caption = #1055#1088#1086#1076#1091#1082#1090#1099
      OnExecute = ActionFoodExecute
    end
    object ActionBrand: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075#1080
      Caption = #1041#1083#1102#1076#1072
      OnExecute = ActionBrandExecute
    end
    object ActionCalc: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075#1080
      Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1094#1080#1103
      OnExecute = ActionCalcExecute
    end
    object ActionInvoice: TAction
      Category = #1054#1087#1077#1088#1072#1094#1080#1080
      Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
      OnExecute = ActionInvoiceExecute
    end
    object ActionMenu: TAction
      Category = #1054#1087#1077#1088#1072#1094#1080#1080
      Caption = #1052#1077#1085#1102'-'#1090#1088#1077#1073#1086#1074#1072#1085#1080#1077
      OnExecute = ActionMenuExecute
    end
    object ActionClients: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075#1080
      Caption = #1050#1083#1080#1077#1085#1090#1099
      OnExecute = ActionClientsExecute
    end
    object ActionInterval: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1048#1085#1077#1088#1074#1072#1083
      OnExecute = ActionIntervalExecute
    end
    object WindowClose1: TWindowClose
      Caption = 'C&lose'
      Enabled = False
      Hint = 'Close'
    end
    object WindowArrange1: TWindowArrange
      Caption = '&Arrange'
      Enabled = False
    end
    object WindowTileVertical1: TWindowTileVertical
      Caption = '&Tile Vertically'
      Enabled = False
      Hint = 'Tile Vertical'
      ImageIndex = 16
    end
    object WindowCascade1: TWindowCascade
      Caption = '&Cascade'
      Enabled = False
      Hint = 'Cascade'
      ImageIndex = 17
    end
    object WindowArrange2: TWindowArrange
      Caption = '&Arrange'
      Enabled = False
    end
    object FileExit1: TFileExit
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object ActionRegPrn: TAction
      Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1087#1077#1095#1072#1090#1085#1099#1093' '#1092#1086#1088#1084
      OnExecute = ActionRegPrnExecute
    end
    object DataSetInsert2: TDataSetInsert
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 3
    end
    object DataSetDelete2: TDataSetDelete
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 2
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 4
      DataSource = DM.DSConfPrn
    end
    object ActionRepDesigner: TAction
      Caption = #1055#1086#1089#1090#1088#1086#1080#1090#1077#1083#1100' '#1086#1090#1095#1077#1090#1086#1074
      ImageIndex = 5
      OnExecute = ActionRepDesignerExecute
    end
    object ActionTotalSail: TAction
      Category = #1055#1088#1086#1076#1072#1078#1080
      Caption = #1047#1072#1082#1088#1099#1090#1080#1103' '#1089#1084#1077#1085
      OnExecute = ActionTotalSailExecute
    end
    object Action2: TAction
      Category = #1055#1088#1086#1076#1072#1078#1080
      Caption = #1063#1077#1082#1080
      OnExecute = Action2Execute
    end
    object ActionWarehouse: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075#1080
      Caption = #1057#1082#1083#1072#1076#1099
      OnExecute = ActionWarehouseExecute
    end
    object ActionDepart: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075#1080
      Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      OnExecute = ActionDepartExecute
    end
    object ActionWriteOff: TAction
      Category = #1054#1087#1077#1088#1072#1094#1080#1080
      Caption = #1057#1087#1080#1089#1072#1085#1080#1077
      OnExecute = ActionWriteOffExecute
    end
    object ActionRereg: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1055#1077#1088#1077#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1086#1087#1077#1088#1072#1094#1080#1081
      OnExecute = ActionReregExecute
    end
    object ActionMovement: TAction
      Category = #1054#1087#1077#1088#1072#1094#1080#1080
      Caption = #1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1077
      OnExecute = ActionMovementExecute
    end
    object ActionShowMoves: TAction
      Category = #1057#1077#1088#1074#1080#1089
      Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      OnExecute = ActionShowMovesExecute
    end
    object Action1: TAction
      Category = #1055#1088#1086#1076#1072#1078#1080
      Caption = 'Action1'
    end
    object Action3: TAction
      Caption = #1062#1077#1085#1099', '#1089#1082#1080#1076#1082#1080
      ImageIndex = 8
      OnExecute = Action3Execute
    end
    object ActionClientFoodPrice: TAction
      Caption = #1062#1077#1085#1099' '#1087#1088#1086#1076#1072#1078#1080' '#1087#1086' '#1090#1086#1074#1072#1088#1072#1084
      OnExecute = ActionClientFoodPriceExecute
    end
    object ActionFirm: TAction
      Category = #1050#1072#1090#1072#1083#1086#1075#1080
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      OnExecute = ActionFirmExecute
    end
    object ActionInventory: TAction
      Category = #1054#1087#1077#1088#1072#1094#1080#1080
      Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
      OnExecute = ActionInventoryExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 16
    Top = 368
    object File1: TMenuItem
      Caption = #1060#1072#1081#1083
      object Exit1: TMenuItem
        Action = FileExit1
        Caption = #1042#1099#1093#1086#1076
      end
    end
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N2: TMenuItem
        Action = ActionRegPrn
        Bitmap.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000004B0000004B
          0000004B0000004B0000004B0000004B0000004B0000004B0000004B0000004B
          0000004B0000004B0000004B0000004B0000004B0000004B0000004B0000004B
          0000004B0000004B0000004B0000004B0000004B0000004B0000004D00000156
          030003610600056E0A00067A0D000783100007881100088B1200088E12000A91
          15000B9518000C9719000C9619000C9418000C9218000D9019000F8D1B001186
          1D00147D1E00187221001C642300235027002A3B2C002F2F2F00303030003131
          3100323232003333330034343400353535003636360037373700383838003939
          39003A3A3A003B3B3B003C3C3C003D3D3D003E3E3E003F3F3F00404040004141
          41004242420043434300444444004545450046464600474747005E3F5E009E26
          9E00DA0FDA00F703F700FD00FD00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00F208
          FC00E611FA00DA19F800D021F600BD2FF500AC3CF400974CF100855AEF00736A
          EF005F7BF0005188F3004792F500449BF70043A1F90047A7FA004FADFA0057B2
          FA005EB7FA0064BBFB0065BEFB0060BBFB005CB9FA0058B7F90052B3F8004AAD
          F60040A5F200389CEC003194E7002F90E3002C8ADB002983D500257DCF002277
          CA001E6EC1001964B600155CAE001356A7000F50A0000E4C9C000D4A9A000C49
          98000C4897000C4897000C4996000C4995000C4A95000C4E90000E5786000F61
          7C00116D6F0013835800158F4B001799410019A13B0019A637001BA937001DAD
          38001FB13B0021B33D0024B7420027BB47002ABF4C002CC250002FC6550032C8
          590034CB5C0035CC5E0036CE610039D065003AD2670039D16600828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          828282828282828282820C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C82828282
          82820CFEFDFCF9F8F6F5F3F1F0EF23232322200C8282828282820C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C8282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          8282828282828282828282820C0C0C0C0C0C0C0C0C828282828282828282E3E3
          828282820CFEF9F4F023211F0C8282828282828282E3D7E3828282820CFEFDF8
          F3EF23200C82828282828282E3D6C7E3E3E3E3820C0C0C0C0C0C0C0C0C828282
          828282E3D5C7C7C6D4D5E3828282828282828282828282828282E3D5CCD0C7C7
          C6D4E382828282828282828282828282828282E3D5CCC7C7C6C5E3820C0C0C0C
          0C0C0C0C0C0C0C0C0C0C8282E3D5CCE3E3E3E3820CFEFEFEFEFDF9F6F3F0EF23
          210C828282E3D5E3828282820CFEFEFEFEFFFAF7F4F1EF23220C82828282E3E3
          828282820C0C0C0C0C0C0C0C0C0C0C0C0C0C8282828282828282828282828282
          8282828282828282828282828282828282828282828282828282828282828282
          82820C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C8282828282820CFEFEFEFCF9
          F7F5F3F1EF23232220201F0C8282828282820C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C82828282828282828282828282828282828282828282828282828282
          8282828282828282828282828282828282828282828282828282}
      end
      object N3: TMenuItem
        Action = ActionRepDesigner
        Bitmap.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          0800000000004002000000000000000000000001000000010000000000000101
          0100020202000303030004040400050505000606060007070700080808000909
          09000A0A0A000B0B0B000C0C0C000D0D0D000E0E0E000F0F0F00101010001111
          1100121212001313130014141400151515001C1C1C0027272700373737004746
          4700535252005D5D5D00656465006A6A6A006E6E6E0072717100757575007777
          7700797979007B7A7A007C7C7C007E7C7C007E7D7D00817F7F00858181008783
          83008C8585008E8788008F8889008C8A8B00928B8B00938D8D00958E8E009591
          9100969393009794940097959500989696009A979700A3979700A8969600AB96
          9600AD989800AE9A9A00B09D9D00B2A0A000B6A5A500BEAAAA00BEADAD00BDAE
          AE00BBB1B100B8ACAD00B0AAAE00A1AAB10093A9B5007AA6B80061A4BD0051A3
          C10046A2C40040A3C7003EA7CC003CABD2003AAED70034ACD90031ACDB002DAA
          DA0029A7D80023A4D8001EA2D8001CA1D700199FD6001BA3D90019A7DE0018AE
          E30014B7EA0013BAEE0011BDF1000FBFF4000EC1F6000CC2F9000BC3FB000AC4
          FC000AC5FC000CC6FD0010C6FC0014C7FB001DC9FB0026CBFA002DCCFA0035CE
          F9003BCFF9003ECFF90041D0F90046CFF7004AD2F8004FD3F80051D4F80054D3
          F60058D4F6005CD5F60060D6F60062D7F70064D8F70069DCF9006DDEFA0072DF
          FA0075DFF90077E1FA007DE2FA0085E3FA008FE4F90099E4F700A8E6F500B2E6
          F300BAE7F200C5E5ED00CCE4EB00D2E4E900DAE3E600DFE4E500E3E4E500E4E4
          E500E5E4E500E4E1E400E2DDE200E3D2E200E6BCE500EAA7E900EF85EE00F555
          F500FB1EFB00FD08FD00FE01FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00FE00
          FE00FE00FE00FE00FE00F006F900D312ED00B021DE008034CA005944BA003B51
          AD00225BA20014619C000C649900086597000666960006669500056695000566
          9500056695000667960006699800076B9A00086D9D000970A0000A72A1000B73
          A3000B74A4000C75A5000D77A7000F78A800117AA800137CA900147EAB00147F
          AD001381AE001582B0001685B3001588B800148ABA001489BA00B8B8B8B8B8B8
          B8B8B8B8E8F4FEE8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8FE675156
          E8B8B8B8B8B8B8B8B8B8B8B8B8B8E853FEF0E8F456F4FEF6EEE8F34B4CE8B8B8
          B8B8B8B8B8B8F653545C5956FB656851FD727D4E4BE8B8B8B8B8B8B8B8B8E84B
          4DF7FBF46563676CFAFDF84A7AE8B8B8B8B8B8E8EEFDF2737C7B6D6966636669
          7376818282F8F6E8B8B8B8F77E73F671787C776C686564686F7B7E7D70F94E51
          F0B8B8EEF2F5FE6D767C786F6966636566656161615AFEFEEFB8B8E85656534E
          727B7B73484A2D4B5B61616161616161FFB8B8E8F35657506D76472D3E352C37
          2D52616161616159E8B8B8E8FBFE56526D74298C42352C3A3F305D61666A4EEE
          E8B8B8E8F95656544E71358A42352C3A3F394D7C80828249E8B8B8E8F5FE5656
          506D358A42352C3A3F394E787E827E4AE8B8B8B8B8E8F356534E358A42352C3A
          3F394E737DF7E8B8B8B8B8B8B8B8F156554F358A42352C3A3F394E6F7BEEB8B8
          B8B8B8B8B8B8E8F1F1FA358A42352C3A3F39FBF9FBE8B8B8B8B8B8B8B8B8B8B8
          B8B8358A42352C3A3F39B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8358A42352C3A
          3F39B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B83544292624232E38B8B8B8B8B8B8
          B8B8B8B8B8B8B8B8B8B8213642362B303022B8B8B8B8B8B8B8B8B8B8B8B8B8B8
          B8B8308A8D42322B382BB8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B82B8A8A42442D
          2E29B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8308C8C423626B8B8B8B8B8B8B8
          B8B8B8B8B8B8B8B8B8B8B8B821212121B8B8B8B8B8B8B8B8B8B8}
      end
    end
    object Window1: TMenuItem
      Caption = #1054#1082#1085#1072
      object ile1: TMenuItem
        Action = WindowTileVertical1
      end
      object Cascade1: TMenuItem
        Action = WindowCascade1
      end
      object ArrangeAll1: TMenuItem
        Action = WindowArrange2
      end
    end
    object N4: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N5: TMenuItem
        Action = ActionRereg
      end
      object N8: TMenuItem
        Caption = #1069#1082#1089#1087#1086#1088#1090
        OnClick = N8Click
      end
      object N7: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1101#1082#1089#1087#1086#1088#1090#1072
        OnClick = N7Click
      end
      object Script1: TMenuItem
        Caption = 'Script'
        OnClick = Script1Click
      end
      object N9: TMenuItem
        Caption = #1047#1072#1092#1080#1082#1089#1080#1088#1086#1074#1072#1090#1100' '#1074#1089#1077' '#1090#1088#1072#1085#1079#1072#1082#1094#1080#1080
        OnClick = N9Click
      end
    end
    object N12: TMenuItem
      Caption = #1040#1085#1072#1083#1080#1090#1080#1082#1072
      OnClick = N12Click
    end
  end
  object ImageList1: TImageList
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Left = 88
    Top = 368
    Bitmap = {
      494C01010900B400980320002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000008000000060000000010020000000000000C0
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007B7970007B7970007B7970007B7970007B7970007B7970007B7970007B79
      7000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B7970007B7970007B79
      70009C9A9600ADACAA00BDBDBC00C7C5C500C4C3C300BABAB700AAA8A6009A96
      92007B7970007B7970007B797000000000000000000000000000000000000000
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
      00000000000000000000000000007B7970007B7970009C9A9600C5C4C300D3D3
      D300D3D3D300CECECE00CACACA00C7C5C500C5C4C300C7C5C500CDC5C400CDC5
      C400D1C5C500C2B6B500969391007B7970007B79700000000000000000000000
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
      000000000000000000007B797000908F8B00CDCCCB00DDDCDC00DADAD900C4C3
      C30096939100726F6C006D686600524A42005B50460076675C0076675C009187
      8300BBA8A600D6C5C500D6C5C500C7B9B8008F8A86007B797000000000000000
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
      0000000000007B797000A8A7A300E4E3E300E0E0DF00CCCBCA00858482006765
      5D00AFA68F00E0D6BB00FCF3DB00F5EEE20092A7E400FDF9E100F2E7D900E0D6
      BB00A39984007A6E6500B5A4A100DDC6C500DDC6C500A69B98007B7970000000
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
      00007B797000B8B6B400E8E7E700E4E3E3009E9D9C0064625D00C0BEA600FCF3
      DB00FEFAEE00FEFCFA00FEFBF800ECEBEB00073BFE00E5E7E700FFFFFF00FFFF
      FF00FFFEFD00F5EEE20092897B007A6E6500D5BAB900E1C6C500B5A4A1007B79
      7000000000000000000000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000007B79
      7000AAA8A600ECEBEB00E8E7E7009693910088867B00F5F2CF00FDF6E600FEFA
      F200FCF3DB00F7DBBB00F4D1A800E9C49B00DBB49B00F2C99F00F4D1A800F9E4
      CA00FBF5ED00FFFFFF00FFFEFD00CCCAB5006B605900DBBCB900E1C6C500A69B
      98007B7970000000000000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B797000908F
      8B00EFEEEE00ECEBEB009A989800A2A29200FFFFDB00FEFAEE00FDF6E600F8E2
      BD00F5D2A200F3CB9A00F1C49200F1C18D00EFBC8700EFB98300EFBA8600F1C4
      9200F7DBAF00FCF3DB00FFFFFA00FFFFFF00E2DFD30076675C00DBBCB900E6C6
      C5008F8A86007B79700000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B797000DADA
      D900EFEEEE00B5B5B4006D886B0015791800A0C88E00FDF9E100FBECC200F9E5
      BA00F8E2B500F6DAAC00F5D5A600F4CE9E00F2C79500F1C18D00F0BE8A00F1C2
      9000F5D2A200F9E5BA00FCF3DB00FFFEF500FFFFFF00CCCAB50089766B00E6C6
      C500D5BAB9007B79700000000000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B797000A2A19F00F3F2
      F200E0E0DF0065786400107513002EA43E0005740900A0C88E00FDF5CD00FDF5
      CD00FCF3CA00FCF0C700FBECC200F9E5BA00F7DBAF00F4D1A000F2C79500F1C4
      9200F3CB9A00F6D7A900F8E2B500FBEFCF00FEFBF600FFFEFD009E8D7B00B49A
      9600EAC6C600A39692007B797000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B797000DADAD900F3F2
      F200889B8700107513003DC25C0067FA97003DC25C0005740900A0C88E00FFFF
      D900FFFFD900FFFED800FEFBD500FDF7D000FCF0C700F9E5BA00F6D7A900F3CB
      9A00F2C79500F3CB9A00F4D1A000F4D1A000F9E4CA00FFFEFE00F2E7D9007667
      5C00EAC6C600D4B7B5007D7C7400000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B797000F6F5F500DEE3
      DC000E7312002EA43E0077F8A00067FA970067FA97003DC25C00157A1700D0E4
      B200FFFFD900FFFFD900FFFFD900FFFFD900FEFBD500FDF5CD00FAE9BE00F6DA
      AC00F3CC9B00F1C49200F1C29000F1C18D00F1C49200FBF1E200FFFEFD009E8D
      7B00B49A9600EDC7C6007B797000000000000000000000000000000000000000
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
      0000000000000000000000000000000000007B797000A8A7A300E4EDE3002683
      2A00419C48008BEDA30077F1990077F1990067FA970067FA97003DC25C001378
      1600D0E4B200FFFFD900FFFFD900FFFFD900FFFFD900FFFED800FDF7D000FAE9
      BE00F6DAAC00F2C89600F0BE8A00EFBA8600EFB98300F7DBBB00FFFFFF00D4C5
      B1007B797000EDC7C600A39692007B7970000000000000000000000000000000
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
      0000000000000000000000000000000000007B797000BABAB70034883600419C
      48009BE6A8008BEDA30086E79B0079E7930069E788005CEE86005CEE86003DC2
      5C0010751300D0E4B200FFFFD900FFFFD900FFFFD900FFFFD900FFFFD900FDF7
      D000FAE9BE00F5D5A600F1C49200EFBA8600EFB98300F2C99F00FEFBF800F2E7
      D90062585600EDC7C600C0A8A5007B7970000000000000000000000000000000
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
      000000000000000000000000000000000000737869002E883200419C4800B9E7
      BD00A9E6B1009BE6A80086E79B0079E7930069E7880069E7880055E77B0055E7
      7B003DC25C0013781600C5DAAA007473680066665D0080807100FFFFD900FFFE
      D800FDF5CD00F9E5BA00F5D5A600F2C89600EFBA8600F1C29000FBF1E200F5EE
      E20044413D00EAC6C600DBBCB9007B7970000000000000000000000000000000
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
      0000000000000000000000000000000000001B721D0005710A0005710A000571
      0A0005710A0081DC8F0093E2A0008ADD950077DF8A002EA43E0005710A000571
      0A0005710A0005710A000E7312002A3F2B00C2C1C100908F8B00595952006666
      5D0066665D0066665D0066665D00DCD3B700F1C18D00EFBA8600B8ADBF00CFD5
      D9004C4A4700EDC7C600EDC5C4007B7970000000000000000000000000000000
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
      0000000000000000000000000000000000007B797000F6F5F500F6F5F500ABAB
      AA0005710A008ADD95009BE6A8008ADD950081DC8F002EA43E0089B98300FFFF
      F100FFFFDB00FFFFD90099998600333333007D7D7D006D686600333333003333
      33003333330037363500403C3800D2C8A800F1C29000E8B78C00073BFE007490
      E9004C4A4700EDC7C600EDC5C4007B7970000000000000000000000000000000
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
      0000000000000000000000000000000000007B797000E5E4E300F6F5F500AEAD
      AD001E7C20008ECA9200A9E6B1009BDEA1008ADD950043A84800419C4800FFFE
      FE00FFFFEE00FFFFDB00E7E2C6004C4A47003333330033333300333333007473
      680099998600A3998400B4A28400E9C49B00F1C29000F1C49200FBF5ED00E7E2
      C6004C4A4700EDC7C600DBBCB9007B7970000000000000000000000000000000
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
      0000000000000000000000000000000000007B797000C5C4C300F6F5F500C2C1
      C1003488360069B86B00B9E7BD00A9E0AC0097DB9C004DB4540026832A00FFFE
      FD00FFFFFF00FFFFF100FFFFDB00FFFFD900FFFFD90066665D00333333004441
      3D00B3B39B00FEFBD500FBECC200F6D7A900F2C79500F4D1A800FEFAF200DCD3
      B7006D686600EDC5C400C0A8A5007B7970000000000000000000000000000000
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
      0000000000000000000000000000000000007B797000A8A7A300F6F5F500D3D3
      D300498A4B0054A25700CCEBCC00B9E7BD00A3DBA40074CC780005710A00E4ED
      E300FFFFFF00FFFFFF00FFFEF500FFFEDF00FFFFD900FFFFD900808071003333
      330033333300B3B39B00FDF5CD00F6DAAC00F3CB9A00F9E2C500FDF6E600AFA6
      8F008E7F7E00EDC7C600A39692007B7970000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B797000F6F5F500ECEB
      EB006D886B0022822300D8F0D800CCEBCC00B6E2B700A3DBA4000E82120093C5
      9400FFFFFF00FFFFFF00FFFFFF00FFFFFA00FFFFE900FFFFDB00FFFFD9008080
      71003333330033333300B3B39B00FCF3CA00F6D7A900FBF1E200FBEFCF007473
      6800BBA8A600EDC7C6007B797000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007D7C7400DADAD900F3F2
      F200AEBBAE0005710A00B1DBB200D8F0D800CCEBCC00B6E2B70043A848002683
      2A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF800FFFFE900FFFE
      DF008080710037363500373635008C8C7C00FDF9E100FCF3DB00CAC2A600726F
      6C00EAC6C600D4B7B5007B797000000000000000000000000000000000000000
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
      000000000000000000000000000000000000000000007B797000A2A19F00F3F2
      F200E4E3E3003F82420054A25700D8F0D800D8F0D800CCEBCC00A3DBA4000E7C
      130089B98300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FA00FFFFEE00C0BEA60044413D00726F6C00F5F1DB00F5EDC8007A797300B5A4
      A100EAC6C600A39692007B797000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B797000DADA
      D900EFEEEE00AEBBAE0005710A00B1DBB200D8F0D800D8F0D800CAEACB0069B8
      6B0005710A00A2CBA200FFFEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFF100CCCAB500F5F1DB00FEFBD500A2A2920091878300E6C6
      C500D5BAB9007B79700000000000000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000000000007B797000908F
      8B00EFEEEE00ECEBEB005E9360002E883200CCE9CC00D8F0D800D8F0D800CCEB
      CC0043A8480005710A0093C59400FFFFFF00FFFFFA00FFFFF800FFFFFF00FFFF
      FF00FFFFFF00FFFFFA00FFFEDF00FFFED800CCCAB50087807F00DAC1C000E6C6
      C5008F8A86007B79700000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000007B79
      7000AAA8A600ECEBEB00E8E7E700498A4B002E883200B1DBB200D8F0D800D8F0
      D800CAEACB0080C482000E7C130026832A0047997200A2CBA200C0DBC100C0DB
      C100FFFEFE00FFFFE900FFFED800B6B4A3008B868500DAC1C000E6C6C500A69B
      98007B7970000000000000000000000000000000000000000000000000000000
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
      00007B797000B8B6B400E8E7E700E4E3E300569258000574090054A2570093C5
      9400CAEACB00CAEACB00B6E2B70069B86B000E7C130005710A0005710A00157A
      1700FFFEDF00E7E2C6009A9992009A969200DAC1C000E1C6C500B5A4A1007B79
      7000000000000000000000000000000000000000000000000000000000000000
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
      0000000000007B797000A8A7A300E4E3E300E0E0DF00AEBBAE00498A4B001075
      130005710A0005710A0005710A0005710A002282230062A2550089B98300CCCA
      B500A8A7A3009A989800C2B6B500DDC6C500DDC6C500A69B98007B7970000000
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
      000000000000000000007B797000908F8B00CDCCCB00DDDCDC00DADAD900CECE
      CE00BABAB700ABABAA00A2A19F009A9898009A989800A2A19F00A2A19F00AFAB
      AA00C7B9B800D6C5C500D6C5C500C7B9B8008F8A86007B797000000000000000
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
      00000000000000000000000000007B7970007B7970009C9A9600C5C4C300D3D3
      D300D3D3D300CECECE00CACACA00C7C5C500C5C4C300C7C5C500CDC5C400CDC5
      C400D1C5C500C2B6B5009A9692007B7970007B79700000000000000000000000
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
      000000000000000000000000000000000000000000007B7970007B7970007B79
      70009C9A9600ADACAA00BDBDBC00C7C5C500C4C3C300BABAB700AAA8A6009A96
      92007B7970007B7970007B797000000000000000000000000000000000000000
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
      00007B7970007B7970007B7970007B7970007B7970007B7970007B7970007B79
      7000000000000000000000000000000000000000000000000000000000000000
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
      000000000000000000000000000108080804212121053F3F3F05606060058686
      8605A9A9A905CFCFCF05EFEFEF04FEFEFE010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000050000000E000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      0013000000130000000E0000000500000000000000050000000E000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      0013000000130000000E00000005000000000000000000000000000000000000
      000014A4FF2014A4FF6014A4FF9F14A4FFBF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF14A4FFFF14A4FFFF139DF4FF938470FF938470FF938470FF938470FF9384
      70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
      70FF938470FF938470FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000002B0000000E000000000000000E0000002B0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000002B0000000E00000000000000000000000014A4FF3014A4
      FFAF14A4FFFF23ACFFFF3FBAFFFF4BC1FFFF41C0FFF733BFFFF72EC1FFFF31C2
      FFFF33C4FFFF35C5FFFF2CB8F4F7938470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFEEDDD5FFAD6645FFB67455FFF7EEEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF938470FF00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FF938470FF938470FF9384
      70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
      70FF938470FF0000003A000000180000000A938470FF938470FF938470FF9384
      70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
      70FF938470FF0000003A00000013000000000000000014A4FF6014A4FFFF17A5
      FFFF3EB8FFFB6DCFFFFF8ADCFFFF80DCFFFF6CD9FFFF55D4FFFF4AD1FFFF4ED4
      FFFF51D5FFFF53D7FFFF51CEF4FF938470FFFFFFFFFFE3E3DCFFE1E1D9FFE0DE
      D7FF974422FF9D4116FF902F08FFAB6E50FFD7D1C9FFD4CFC6FFD3CEC2FFD0CB
      C0FFFFFFFFFF938470FF00000000000000008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF938470FF938470FFFFFFFFFFFFFFFFFFFFFF
      FFFF938470FF0000003A000000220000001D938470FFFFFFFFFFFFFFFFFFFFFF
      FFFF938470FF938470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFEF0D9EFFFF19A9
      FFFF4EC7FFFF78D9FFFF90E1FFFF83DEFFFF6AD8FFFF50D0FFFF43CEFFFF47D0
      FFFF4AD1FFFF4CD3FFFF4ACAF4FF938470FFFFFFFFFFE1E1D9FFFFFEFCFFDDBB
      AAFF96370EFFB5622FFFA64A18FF902F0AFFF2E2D5FFF8EFE5FFF8EEE2FFCFC9
      BDFFFFFFFFFF938470FF00000000000000008C381600FFF0E200FFEFDE00FFEE
      DD00FFEEDA00FFEBD700FFEBD500FFE9D100FFE7CF00FFE7CC00FFE5C900FFE3
      C600FFE2C500FFE0C000FEE0BD00FEDEBA00FEDCB700FEDAB600FEDAB400FED8
      AF00FED8AD00FED5AA00FED5A900FED4A600FED3A300FED3A100FED0A000FED0
      9E00FECF9C00FECE9900FECE99008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF2E1CCFFF2E0
      CBFFF2DEC9FFF0DDC7FFFFFFFFFF938470FF938470FFFFFFFFFFF0DDC7FFFFFF
      FFFF938470FF0000003A0000ADFF0000001D938470FFFFFFFFFFF0DDC7FFFFFF
      FFFF938470FF938470FFFFFFFFFFF2E1CCFFF2E0CBFFF2DEC9FFF0DDC7FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF10A0FFFF21B7
      FFFF4ECAFFFF76D9FFFF8EE1FFFF81DEFFFF66D7FFFF4ACEFFFF3ECAFFFF41CC
      FFFF43CEFFFF45CFFFFF43C6F4FF938470FFFFFFFFFFE0DED7FFFEFBFAFFAD64
      42FFBD6931FFC27338FFB86028FF9F3E0DFFBA7A5AFFF8EEE2FFF7EBDEFFCCC6
      BBFFFFFFFFFF938470FF00000000000000008C381600FFF2E500FFF0E200FFEF
      DE00FFEDDC00FFEDD900FFEBD700FEEAD400FFE7D100FFE7CF00FEE6CA00FFE5
      C900FFE2C500FEE1C100FEE1BF00FEE0BD00FEDEBA00FEDAB600FEDAB400FED9
      B100FED8AD00FED7AB00FED5AA00FED4A600FED3A500FED1A100FED0A000FED0
      A000FECF9D00FECF9C00FECE99008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF3E2CFFFF2E1
      CCFFF2E0CBFFF2DEC9FFFFFFFFFF938470FF938470FFFFFFFFFFF2DECAFFFFFF
      FFFF938470FF0000003A0000ADFF0000000A938470FFFFFFFFFFF2DECAFFFFFF
      FFFF938470FF938470FFFFFFFFFFF3E2CFFFF2E1CCFFF2E0CBFFF2DEC9FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF2CB8FFFF1FB7
      FFFF4CCAFFFF74D9FFFF8CE1FFFF7FDEFFFF63D5FFFF45CCFFFF37C7FFFF3AC9
      FFFF3CCAFFFF3ECAFFFF3CC2F4FF938470FFFFFFFFFFDDDCD4FFEBD9CEFF993B
      0FFFD18441FFCF803FFFC26D31FFB65A1DFF92320AFFEFDCCCFFF6EADCFFCBC4
      B7FFFFFFFFFF938470FF00000000000000008C381600FFF3E700FFF2E500FFF0
      E200FFEFDE00FFEEDA00FFEBD700FFEBD500FFE9D100FFE7CF00FFE7CC00FEE6
      CA00FFE3C600FEE2C400FEE1BF00FEE0BD00FEDEBB00FFDDB800FEDAB600FED9
      B100FED9B100FED8AD00FED5AA00FED5A900FED4A600FED3A500FED1A100FED0
      A000FED09E00FECF9D00FECF9A008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF3E2D0FFF3E2
      CFFFF3E1CCFFF2E0CBFFFFFFFFFF938470FF938470FFFFFFFFFFF2E0CBFFFFFF
      FFFF938470FF0000003A000000180000000A938470FFFFFFFFFFF2E0CBFFFFFF
      FFFF938470FF938470FFFFFFFFFFF3E2D0FFF3E2CFFFF3E1CCFFF2E0CBFFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF38BDFFFF22B7
      FFFF4BCAFFFF72D8FFFF8AE1FFFF7BDEFFFF5ED5FFFF41CBFFFF33C7FFFF35C7
      FFFF36C7FFFF37C7FFFF35BFF4FF938470FFFFFFFFFFDCD9D1FFAD6441FFC476
      41FFD9975AFFC16F36FF9E3F11FFC46D2BFFA6440EFFB87857FFF6E7D8FFC9C1
      B5FFFFFFFFFF938470FF00000000000000008C381600FFF3E700FFF2E500FFF2
      E500FFF0E200817E7F00817E7F00817E7F00817E7F00FFE9D100FFE7CF00FFE7
      CC00FFE5C900FFE2C500817E7F00817E7F00817E7F00817E7F00FEDCB700FEDA
      B600FED9B100FED8B000FED8AD00817E7F00817E7F00817E7F00817E7F00FED3
      A100FED0A000FECF9D00FECF9C008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF4E3D3FFF3E3
      D0FFF3E2CFFFF3E1CCFFFFFFFFFF938470FF938470FFFFFFFFFFF3E1CEFFFFFF
      FFFF938470FF0000003A000000220000001D938470FFFFFFFFFFF3E1CEFFFFFF
      FFFF938470FF938470FFFFFFFFFFF4E3D3FFF3E3D0FFF3E2CFFFF3E1CCFFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF41C0FFFF25B8
      FFFF53CAFFFF78D9FFFF8EE1FFFF7DDEFFFF5DD5FFFF3ECBFFFF2FC6FFFF30C6
      FFFF32C6FFFF33C6FFFF31BFF4FF938470FFFFFFFFFFDAD7CEFF92340DFFE1AC
      7AFFE1AA77FF973911FF963D18FFC46E2EFFBB5E1EFF92320AFFEDD5C2FFC7BF
      B2FFFFFFFFFF938470FFA7BDCE13000000008C381600FFF4EA00FFF3E700FFF3
      E500FFF0E200FFEFDE00FFEEDD00FFEDDC00FFEBD700FEEAD400FFE9D100FFE7
      CF00FEE6CA00FFE3C600FFE2C500FEE1C100FEE0BD00FEE0BD00FFDDB800FEDA
      B600FEDCB400FED9B100FED8AF00FED7AB00FED5A900FED4A600FED3A500FED3
      A300FED1A100FED0A000FECF9D008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF4E5D4FFF4E3
      D3FFF3E3D0FFF3E2CFFFFFFFFFFF938470FF938470FFFFFFFFFFF3E2D0FFFFFF
      FFFF938470FF0000003A0000ADFF0000001D938470FFFFFFFFFFF3E2D0FFFFFF
      FFFF938470FF938470FFFFFFFFFFF4E5D4FFF4E3D3FFF3E3D0FFF3E2CFFFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF48C4FFFF23B7
      FFFF51CAFFFF79D9FFFF92E2FFFF87E0FFFF6EDAFFFF55D4FFFF4AD1FFFF4ED4
      FFFF51D5FFFF54D7FFFF51CFF4FF938470FFFFFFFFFFD8D4CBFF8E300CFF993E
      16FF993E16FFB46D4BFFD8B097FF9E4011FFC46C29FFA4410CFFB77553FFC5BC
      B0FFFFFFFFFF938470FFB2C6D40EB7CAD7048C381600FFF6EB00FFF4EA00FFF3
      E700FFF2E5002D56F8002D56F8002D56F8002D56F800FFEBD500FEEAD400FFE9
      D000FFE7CC00FFE5CA008B2803008B2803008B2803008B280300FEDEBB00FEDC
      B700FEDAB600FEDAB400FED9B1000182BF000182BF000182BF000182BF00FED3
      A500FED1A100FED0A000FED09E008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FFFFFF000000FF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF4E6D7FFF4E5
      D4FFF4E3D3FFF3E3D0FFFFFFFFFF938470FF938470FFFFFFFFFFF4E3D1FFFFFF
      FFFF938470FF0000003A0000ADFF0000000A938470FFFFFFFFFFF4E3D1FFFFFF
      FFFF938470FF938470FFFFFFFFFFF4E6D7FFF4E5D4FFF4E3D3FFF3E3D0FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF51C7FFFF22B7
      FFFF4FCAFFFF77D9FFFF90E1FFFF83DEFFFF6AD8FFFF50D1FFFF44CEFFFF48D0
      FFFF4AD1FFFF4DD3FFFF4BCBF4FF938470FFFFFFFFFFD7D1C9FFFAF2E9FFF8EF
      E5FFF8EEE2FFF7EBDEFFF6EADCFF9D4722FFBF682AFFB25418FF902F08FFBFAF
      9FFFFFFFFFFF938470FF00000000000000008C381600FFF7EE00FFF4EB00FFF4
      EA00FFF3E7002D56F8002D56F8002D56F8002D56F800FFEBD700FFEBD500FFE9
      D100FEE9CE00FFE7CC008B2803008B2803008B2803008B280300FEE0BD00FEDE
      BA00FFDDB800FEDCB400FED9B1000182BF000182BF000182BF000182BF00FED3
      A500FED3A500FED1A100FED0A0008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF6E7D8FFF4E6
      D7FFF4E5D4FFF4E5D3FFFFFFFFFF938470FF938470FFFFFFFFFFF4E5D4FFFFFF
      FFFF938470FF0000003A000000180000000A938470FFFFFFFFFFF4E5D4FFFFFF
      FFFF938470FF938470FFFFFFFFFFF6E7D8FFF4E6D7FFF4E5D4FFF4E5D3FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF5ACBFFFF20B7
      FFFF4DCAFFFF76D9FFFF8EE1FFFF81DEFFFF66D7FFFF4ACEFFFF3ECBFFFF41CC
      FFFF43CEFFFF45CFFFFF44C6F4FF938470FFFFFFFFFFD4CFC6FFF8EFE5FFF8EE
      E2FFF7EBDEFFF6EADCFFF6E7D8FFD5AB90FF9A3B0FFFB65C22FF963307FFA063
      43FFFFFFFFFF938470FF00000000000000008C381600FFF7F000FFF6EB00FFF4
      EA00FFF3E7002D56F8002D56F8002D56F8002D56F800FFEDD900FFEBD700FEEA
      D400FFE9D000FFE7CF008B2803008B2803008B2803008B280300FEE1BF00FEDE
      BB00FFDDB800FEDCB700FEDAB4000182BF000182BF000182BF000182BF00FED4
      A600FED3A500FED1A100FED1A1008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF6E9DAFFF6E7
      D8FFF4E6D7FFA7B48FFF2A5E20FF25581BFF938470FFFFFFFFFFF4E6D7FFFFFF
      FFFF938470FF0000003A000000220000001D938470FFFFFFFFFFF4E6D7FFFFFF
      FFFF938470FF938470FF2A5E20FF295D1FFF9AAC84FFF4E6D7FFF4E5D4FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF64CFFFFF1FB7
      FFFF4BCAFFFF89DDFFFFA1E5FFFFA3E3FFFF97E0FFFF81D8FFFF7ED7FFFF7DD7
      FFFF7DD8FFFF7BD8FFFF76CFF4FF938470FFFFFFFFFFD3CEC2FFF8EEE2FFF7EB
      DEFFF6EADCFFF6E7D8FFF4E5D4FFF3E3D1FF9C4520FFB05723FF9F4010FF8727
      05FFF7EEEAFF938470FF00000000000000008C381600FFF7F000FFF7EE00FFF6
      EB00FFF4EA002D56F8002D56F8002D56F8002D56F800FFEDDC00FFEDD900FFEB
      D700FFE9D100FFE7CF008B2803008B2803008B2803008B280300FFE0C000FEE0
      BD00FEDEBB00FFDDB800FEDAB6000182BF000182BF000182BF000182BF00FED5
      A900FED4A600FED3A500FED1A1008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000FF000000FF000000FF000000FF000000FF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFF6EADCFFE6DE
      CBFF72915FFF1F5516FF165A11FF1F5516FF938470FFFFFFFFFFF6E7D8FFFFFF
      FFFF938470FF0000003A0000ADFF0000001D938470FFFFFFFFFFF6E7D8FFFFFF
      FFFF938470FF938470FF1F5516FF145A10FF1F5516FF648853FFE5DCC9FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF6ED3FFFF5DCB
      FFFFA3E0FFFF82D4FFFF69CEFFFF52C6FFFF4AC4FFFF48C2FFFF45C2FFFF42C2
      FFFF40C1FFFF3DC0FFFF36B7F4FF938470FFFFFFFFFFD0CBC0FFCFC9BDFFCCC6
      BBFFCBC4B7FFC9C1B5FFC7BFB2FFC5BCB0FFB28C76FF92330CFFA04417FF8825
      03FFBD8165FF938470FF00000000000000008C381600FFF8F200FFF7F000FFF7
      EE00FFF6EB00FFF3E700FFF2E500FFF0E200FFF0E000FFEEDD00FFEEDA00FFEB
      D700FEEAD400FFE9D100FFE7CF00FEE6CA00FFE5C900FFE3C600FEE2C400FFE0
      C000FEE0BD00FEDEBB00FEDCB700FEDCB400FFD9B000FED8AF00FED8AD00FED5
      AA00FED4A600FED4A600FED3A5008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFC7CCB1FF406E
      33FF1F5916FF157913FF0E780FFF1F5516FF1F5516FF1F5516FF406E33FFFFFF
      FFFF938470FF0000003A0000ADFF0000000A938470FFFFFFFFFFF6E9DAFF4172
      37FF1F5516FF1F5516FF1F5516FF0D760EFF126910FF1F5616FF406E33FFCEDC
      CBFF938470FF0000003D00000019000000030000000014A4FFFFC0E9FFFF93D8
      FFFF6FCBFFFF6BCCFFFF73D0FFFF6BD0FFFF56CAFFFF3CC1FFFF2FC1FFFF31C2
      FFFF34C5FFFF35C4FFFF30BAF4FF938470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F4B28FF9C4118FF8B2B
      07FF882806FF938470FF00000000000000008C381600FFFAF300FFF8F200FFF7
      EE00FFF6EB00FFF4EA00FFF3E700FFF2E500FFF0E200FFEFDE00FFEDDC00FFED
      D900FFEBD700FEEAD400FFE9D000FEE9CE00FFE5CA00FFE5C900FFE2C500FEE2
      C400FEE0BD00FEDEBB00FEDEBA00FEDAB600FEDAB400FED9B000FED9AD00FED7
      AB00FED5AA00FED4A600FED3A5008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FF9FBA99FF295D1FFF1F68
      18FF18A71DFF1DAB20FF119715FF127611FF10670DFF0F5D0DFF1F5516FFFFFF
      FFFF938470FF0000003A000000180000000A938470FFFFFFFFFFF7EADDFF1F55
      16FF118911FF119112FF159516FF139114FF19951CFF117711FF1B5C13FF2A5E
      20FF63724AFF00000045000000290000000B0000000014A4FFFFD4EFFFFF60C6
      FFFF51C1FFFF6DCEFFFF89DCFFFF7FDCFFFF69D7FFFF54D4FFFF4AD1FFFF4ED4
      FFFF52D5FFFF54D7FFFF51CFF4FF938470FF938470FF938470FF938470FF9384
      70FF938470FF938470FF938470FF938470FF938470FF8F684CFF862806FF8423
      02FF822303FF938470FF00000000000000008C381600FFFAF600FFFAF300FFF7
      F000FFF7EE00817E7F00817E7F00817E7F00817E7F00FFF0E200FFEFDE00FFEE
      DA00FFEBD700FFEBD500817E7F00817E7F00817E7F00817E7F00FFE3C600FEE2
      C400FFE0C000FEE0BD00FEDEBB00817E7F00817E7F00817E7F00817E7F00FED8
      AD00FED7AB00FED5A900FED4A6008C3816000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000466735FF1F5516FF2A8B2AFF2DD1
      38FF35CC3AFF33C636FF29BB2DFF1EA31FFF158B16FF0C6D0DFF1F5516FFFFFF
      FFFF938470FF0000003A000000220000001D938470FFFFFFFFFFF7EBE0FF1F55
      16FF18A418FF2DBA30FF34C439FF31C035FF2DB72FFF1FA322FF118111FF1663
      12FF1F5516FF14350EBA00000032000000100000000014A4FFF32EADFFFF1CA9
      FFFF50C9FFFF79D9FFFF91E2FFFF82DEFFFF69D8FFFF4FD0FFFF44CEFFFF48D0
      FFFF4AD1FFFF4DD3FFFF4CCEF8FF41B1D5FF41B2D8FF3DB1DAFF34ABDAFF28A7
      E0FF1599E9FF2FAAF3FF16A3FBF3FEFEFE070000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFAF600FFFAF600FFF8
      F200FFF8EF00FFF7EE00FFF4EB00FFF3E700FFF3E700FFF0E200FFEFDE00FFEE
      DD00FFEDDC00FFEBD700FEEAD400FFE9D100FFE7CF00FEE6CA00FFE5C900FFE3
      C600FEE2C400FEE1BF00FEE0BD00FEDEBA00FEDCB700FEDAB600FEDAB400FED8
      AF00FED8AD00FED5AA00FED5A9008C3816000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F5516FF43A343FF5BE269FF52D9
      59FF50D956FF46D44BFF3BCF40FF2AB72BFF1CA01EFF0F7D10FF1F5516FFFFFF
      FFFF938470FF0000003A0000ADFF0000001D938470FFFFFFFFFFF7EDE1FF1F55
      16FF1DC123FF3FCC41FF46D74CFF41D345FF39CA3DFF2FBD33FF22A724FF0F7B
      10FF125C0FFF1F5516FF000000290000000B0000000014A4FFFF0FA0FFFF23B7
      FFFF50CBFFFF78D9FFFF8FE2FFFF80DEFFFF65D5FFFF49CEFFFF3ECBFFFF41CC
      FFFF43CEFFFF45CFFFFF46CFFFFF46CFFFFF46CFFFFF41CBFFFF36C4FEFF2CBA
      F8FF23AFF3FF0F97F4FF14A1FBFFFEFEFE070000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFAF700FFFAF600FFF8
      F200FFF7F000BD828100BD828100BD828100BD828100FFF2E500FFF0E200FFEF
      DE00FFEEDD00FFEDD900D9640100D9640100D9640100D9640100FEE6CA00FFE5
      C900FFE2C500FEE1C100FFE0C00000820100008201000082010000820100FED9
      B100FED8AD00FED7AB00FED5A9008C3816000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000466735FF1F5516FF57A559FF83EB
      93FF6BE377FF59DE64FF41D74AFF2BC22EFF1DAD20FF109013FF1F5516FFFFFF
      FFFF938470FF0000003A0000ADFF0000000A938470FFFFFFFFFFF8EEE3FF1F55
      16FF35DC47FF55D95DFF60E26AFF58DD62FF49D750FF35C937FF19A41AFF186D
      14FF1F5516FF13350EB600000019000000030000000014A4FFFF2BBAFFFF22B7
      FFFF4FCBFFFF76D9FFFF8CE2FFFF7DDEFFFF60D5FFFF44CCFFFF38C7FFFF3AC9
      FFFF3DCAFFFF3ECBFFFF3FCBFFFF40CBFFFF3FCBFFFF3AC7FFFF31C1FFFF28BB
      FFFF21B6FFFF11A0FEFF14A3FEFFFEFEFE070000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFAF800FFFAF600FFFA
      F600FFF8F200BD828100BD828100BD828100BD828100FFF3E700FFF2E500FFF0
      E200FFEEDD00FFEDDC00D9640100D9640100D9640100D9640100FFE7CC00FFE5
      C900FFE3C600FEE2C400FEE1C10000820100008201000082010000820100FEDA
      B400FED9B000FED8AD00FED5AA008C3816000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF000000
      FF000000FF000000FF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FF90AF8AFF1F5516FF4582
      41FF92E5A3FF6CE680FF3DDE55FF1FCC2CFF13B61CFF119916FF1F5516FFFFFF
      FFFF938470FF0000003A000000180000000A938470FFFFFFFFFFF8EFE6FF1F55
      16FF80E08BFF89EB9FFF80EF9CFF4CE266FF48D750FF26BB26FF1F6A18FF1F55
      16FF5B6F44FF0000003A00000013000000000000000014A4FFFF37BDFFFF23B8
      FFFF4ECBFFFF74D9FFFF8AE1FFFF7ADEFFFF5DD5FFFF41CBFFFF34C7FFFF35C7
      FFFF36C7FFFF37C7FFFF38C7FFFF38C7FFFF38C7FFFF34C5FFFF2DC0FFFF27BB
      FFFF28BCFFFF16A9FFFF14A4FFFFFEFEFE020000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFBFA00FFFBF700FFFA
      F700FFFAF300BD828100BD828100BD828100BD828100FFF3E700FFF3E700FFF0
      E200FFF0E000FFEEDD00D9640100D9640100D9640100D9640100FFE7CF00FFE7
      CC00FFE5C900FFE2C500FEE2C40000820100008201000082010000820100FEDC
      B400FED9B100FFD9B000FED8AD008C3816000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFCAD1BBFF3567
      2AFF275D1EFF6AC578FF56E570FF1F5516FF1F5516FF1F5516FF295D1FFFFFFF
      FFFF938470FF0000003A000000220000001D938470FFFFFFFFFFFAF0E7FF2A5E
      20FF1F5516FF1F5516FF1F5516FF44E36AFF30B236FF215B18FF356629FFCEDC
      CBFF938470FF0000003A00000013000000000000000014A4FFFF40C1FFFF28B8
      FFFF55CBFFFF79D9FFFF8EE2FFFF7DDEFFFF5AD5FFFF3CCBFFFF2FC6FFFF31C6
      FFFF32C6FFFF33C6FFFF33C7FFFF35C9FFFF3DCCFFFF40CCFFFF3FCBFFFF3CC9
      FFFF30C1FFFF16A7FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFCFB00FFFBFA00FFFB
      F700FFFAF600BD828100BD828100BD828100BD828100FFF4EA00FFF3E700FFF2
      E500FFF0E200FFEFDE00D9640100D9640100D9640100D9640100FFE9D000FFE7
      CF00FEE6CA00FFE5C900FEE2C40000820100008201000082010000820100FEDC
      B700FEDAB400FFD9B000FED8AF008C3816000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFAF3EDFFEAE9
      DAFF58824CFF1F5516FF3F9A43FF1F5516FF737857FFBDD0BAFFFAF2EAFFFFFF
      FFFF938470FF0000003A0000ADFF0000001D938470FFFFFFFFFFFAF2EAFFFFFF
      FFFF938470FF938470FF1F5516FF329940FF1F5516FF668B58FFE9E6D7FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF48C4FFFF26B8
      FFFF54CBFFFF7BDAFFFF92E2FFFF87E0FFFF6DD9FFFF55D4FFFF4BD1FFFF4AD1
      FFFF4DD4FFFF54D7FFFF56D8FFFF56D8FFFF56D8FFFF50D4FFFF43CEFFFF37C6
      FFFF2DBFFFFF14A6FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFCFB00FFFBFA00FFFB
      FA00FFFBF700FFFAF600FFF8F200FFF7F000FFF7EE00FFF6EB00FFF4EA00FFF3
      E700FFF2E500FFF0E200FFEFDE00FFEDDC00FFEBD700FFEBD500FFE9D100FFE7
      CF00FFE7CC00FFE5CA00FFE3C600FEE2C400FEE1C100FEE0BD00FEDEBB00FFDD
      B800FEDCB400FEDAB400FED9B0008C3816000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFBF4EEFFFBF3
      EDFFFAF3EAFF8EA97FFF1F5516FF25581BFF938470FFFFFFFFFFFBF3EDFFFFFF
      FFFF938470FF0000003A0000ADFF0000000A938470FFFFFFFFFFFBF3EDFFFFFF
      FFFF938470FF938470FF2A5E20FF295D20FF9DB490FFFAF3EAFFFAF2E9FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF51C7FFFF24B7
      FFFF52CBFFFF79D9FFFF91E2FFFF83DEFFFF69D8FFFF4FD1FFFF45CFFFFF48D0
      FFFF4BD1FFFF4DD3FFFF4FD4FFFF4FD4FFFF4ED4FFFF49D0FFFF3ECAFFFF33C2
      FFFF29BBFFFF13A3FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFEFC00FFFCFC00FFFB
      FA00FFFAF800FFFAF600FFFAF300FFF8F200FFF7F000FFF7EE00FFF4EB00FFF4
      EA00FFF2E500FFF2E500FFF0E200FFEEDD00FFEEDA00FFEBD700FFEBD500FFE9
      D100FFE7CF00FEE6CA00FFE5C900FFE2C500FFE2C500FFE0C000FEE0BD00FFDD
      B800FEDCB700FEDCB400FEDAB4008C3816000000000000000000000000000000
      0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFBF6F0FFFBF4
      EEFFFBF3EDFFFAF3EAFFFFFFFFFF938470FF938470FFFFFFFFFFFBF4EEFFFFFF
      FFFF938470FF0000003A000000180000000A938470FFFFFFFFFFFBF4EEFFFFFF
      FFFF938470FF938470FFFFFFFFFFFBF6F0FFFBF4EEFFFBF3EDFFFAF3EAFFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF5ACBFFFF23B7
      FFFF50CBFFFF77D9FFFF8FE2FFFF80DEFFFF65D5FFFF4ACEFFFF3FCBFFFF41CC
      FFFF44CEFFFF46CFFFFF47D0FFFF47D0FFFF47D0FFFF42CCFFFF38C6FFFF2EC0
      FFFF25B8FFFF11A0FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600FFFEFE00FFFEFC00FFFC
      FB00FFFBFA00FFFAF800FFFAF600FFFAF600FFF8F200FFF7F000FFF6EB00FFF4
      EA00FFF3E700FFF2E500FFF0E200FFEFDE00FFEDDC00FFEDD900FFEBD500FFE9
      D100FFE7D100FFE7CF00FEE6CA00FFE5C900FFE2C500FEE1C100FEE1BF00FEDE
      BB00FFDDB800FEDAB600FEDAB4008C3816000000000000000000000000000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFCF7F2FFFBF6
      F0FFFBF4EEFFFBF4EDFFFFFFFFFF938470FF938470FFFFFFFFFFFBF6F0FFFFFF
      FFFF938470FF0000003A000000220000001D938470FFFFFFFFFFFBF6F0FFFFFF
      FFFF938470FF938470FFFFFFFFFFFCF7F2FFFBF6F0FFFBF4EEFFFBF4EDFFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF64CFFFFF21B7
      FFFF4ECBFFFF86DCFFFFA4E6FFFF9CE2FFFF92DEFFFF88DAFFFF7DD7FFFF7DD7
      FFFF7BD8FFFF7BD8FFFF7BD8FFFF81DCFFFF74D8FFFF5FD1FFFF42C7FFFF2ABC
      FFFF22B6FFFF0F9EFFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600CB631200CB631200CB63
      1200CB631200CB631200CB631200CB631200CB631200CB631200CB631200CB63
      1200CB631200CB631200CB631200CB631200CB631200CB631200CB631200CB63
      1200C95E0E00D8762700CA5F0F00CB631200D36E1E00D4702000CB631200984C
      1D00734D4B00A64D1100CB6312008C3816000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFCF8F4FFFCF7
      F2FFFBF6F0FFFBF4EEFFFFFFFFFF938470FF938470FFFFFFFFFFFCF8F3FFFFFF
      FFFF938470FF0000003A0000ADFF0000001D938470FFFFFFFFFFFCF8F3FFFFFF
      FFFF938470FF938470FFFFFFFFFFFCF8F4FFFCF7F2FFFBF6F0FFFBF4EEFFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFF6DD3FFFF5ECB
      FFFF9DDEFFFF89D7FFFF6DCFFFFF5BCAFFFF49C2FFFF46C2FFFF43C2FFFF41C1
      FFFF3EC0FFFF3BBFFFFF38BFFFFF35BCFFFF42C2FFFF4FC6FFFF6BCEFFFF7DD4
      FFFF41C1FFFF0E9EFFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600D9792A00D9792A00D979
      2A00D9792A00D9792A00D9792A00D9792A00D9792A00D9792A00D9792A00D979
      2A00D9792A00D9792A00D9792A00D9792A00D9792A00D9792A00D9792A00D979
      2A00E38C4100FCB87900E58E4300D9792A00F4AA6700F6AC6A00E07419006959
      77001C4DF2008E5F5100D9792A008C3816000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000938470FFFFFFFFFFFCFAF6FFFCF8
      F4FFFCF7F2FFFBF6F0FFFFFFFFFF938470FF938470FFFFFFFFFFFCFAF6FFFFFF
      FFFF938470FF0000003A0000ADFF0000000A938470FFFFFFFFFFFCFAF6FFFFFF
      FFFF938470FF938470FFFFFFFFFFFCFAF6FFFCF8F4FFFCF7F2FFFBF6F0FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFFBFE9FFFF97D9
      FFFF6DCBFFFF67CAFFFF66CCFFFF64CCFFFF60CCFFFF5DCBFFFF5ACAFFFF57C9
      FFFF53C7FFFF4FC6FFFF4BC5FFFF47C4FFFF42C1FFFF3CBDFFFF32B7FFFF2FB2
      FFFF62C6FFFF48B6FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600EB995000EB995000EB99
      5000EB995000EB995000EB995000EB995000EB995000EB995000EB995000EB99
      5000EB995000EB995000EB995000EB995000EB995000EB995000EB995000EB99
      5000EF9F5700F4AA6500EFA05700EB995000F2A65F00F3A66000EB995000BB8A
      6C008E7E9300CC8E5F00EB9950008C3816000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000938470FFFFFFFFFFFEFBF8FFFCFA
      F6FFFCF8F4FFFCF7F2FFFFFFFFFF938470FF938470FFFFFFFFFFFEFBF7FFFFFF
      FFFF938470FF0000003A000000180000000A938470FFFFFFFFFFFEFBF7FFFFFF
      FFFF938470FF938470FFFFFFFFFFFEFBF8FFFCFAF6FFFCF8F4FFFCF7F2FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFFFD4EFFFFF8BD4
      FFFF88D5FFFF86D5FFFF82D7FFFF80D7FFFF7BD5FFFF77D4FFFF74D3FFFF6FD1
      FFFF6BD0FFFF67CFFFFF63CEFFFF5DCBFFFF58CAFFFF51C6FFFF48C0FFFF40BA
      FFFF36B4FFFF91D7FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000008C381600E0965E00E0965E00E096
      5E00E0965E00E0965E00E0965E00E0965E00E0965E00E0965E00E0965E00E096
      5E00E0965E00E0965E00E0965E00E0965E00E0965E00E0965E00E0965E00E096
      5E00E0965E00E0965E00E0965E00E0965E00E0965E00E0965E00E0965E00E096
      5E00E0965E00E0965E00E0965E008C3816000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000000000000000000000000000938470FFFFFFFFFFFEFCFAFFFEFB
      F8FFFCFAF6FFFCF8F4FFFFFFFFFF938470FF938470FFFFFFFFFFFEFCFAFFFFFF
      FFFF938470FF0000003A000000220000001D938470FFFFFFFFFFFEFCFAFFFFFF
      FFFF938470FF938470FFFFFFFFFFFEFCFAFFFEFBF8FFFCFAF6FFFCF8F4FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FFEF9DDCFFFFC1E9
      FFFFACE2FFFFA6E1FFFFA1E1FFFF9EE1FFFF99E0FFFF95DEFFFF8FDCFFFF8ADA
      FFFF86D9FFFF81D8FFFF7BD5FFFF77D4FFFF72D3FFFF6ACFFFFF62CAFFFF5DC6
      FFFF84D4FFFF60C5FFFF14A4FFEF000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C3816008C3816008C3816008C3816008C3816008C38
      16008C3816008C3816008C381600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFEFEFCFFFEFC
      FAFFFEFBF8FFFCFAF7FFFFFFFFFF938470FF938470FFFFFFFFFFFEFEFCFFFFFF
      FFFF938470FF0000003A0000ADFF0000001D938470FFFFFFFFFFFEFEFCFFFFFF
      FFFF938470FF938470FFFFFFFFFFFEFEFCFFFEFCFAFFFEFBF8FFFCFAF7FFFFFF
      FFFF938470FF0000003A00000013000000000000000014A4FF6014A4FFFF70CC
      FFFFD5F0FFFCD9F2FFFFCCEFFFFFC2EDFFFFBAEAFFFFB4E7FFFFAFE6FFFFA9E5
      FFFFA4E3FFFF9EE1FFFF98E0FFFF93DDFFFF93DDFFFF9CE0FFFFA5E1FFFFA0DE
      FFFB47BCFFFF14A4FFFF14A4FF60000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFFFFFEFFFFFE
      FCFFFEFCFBFFFEFBF8FFFFFFFFFF938470FF938470FFFFFFFFFFFFFFFEFFFFFF
      FFFF938470FF0000003A0000ADFF0000000A938470FFFFFFFFFFFFFFFEFFFFFF
      FFFF938470FF938470FFFFFFFFFFFFFFFEFFFFFEFCFFFEFCFBFFFEFBF8FFFFFF
      FFFF938470FF0000003A0000001300000000000000000000000014A4FF4014A4
      FFBF14A4FFFF3EB8FFFF74CEFFFF9FDEFFFFB2E5FFF7E5F7FFFFE1F6FFFFDDF4
      FFFFD9F3FFFFD7F2FFFFD7F2FFFFA0DEFFFB8FD8FFFF67C9FFFF2EB1FFFF14A4
      FFFF14A4FFAF14A4FF3000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF938470FF938470FFFFFFFFFFFFFFFFFFFFFF
      FFFF938470FF0000002B0000000E00000000938470FFFFFFFFFFFFFFFFFFFFFF
      FFFF938470FF938470FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF938470FF0000002B0000000E000000000000000000000000000000000000
      000014A4FF2014A4FF6014A4FF9F14A4FFBF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFBF14A4FF9F14A4FF6014A4
      FF20000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000938470FF938470FF938470FF9384
      70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
      70FF938470FF0000000E0000000500000000938470FF938470FF938470FF9384
      70FF938470FF938470FF938470FF938470FF938470FF938470FF938470FF9384
      70FF938470FF0000000E0000000500000000FFFFFF00000000050000000E0000
      0013000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000130000001300000013000000130000
      0013000000130000001300000013000000190101013B0000002F000000200000
      0009FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000000000000000000000000000000000000000000010000000E0000000F0000
      0001000000000000000000000000000000120000003D0000003B000000360000
      0017000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF000000000E0000002B0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000003A0000003A0000003A0000003A0000003A0000003A0000
      003A0000003A0000003A0000003A7D7D7EAAB5B4B5E7282828A80000002F0000
      000EFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000000000000000000000000000000000080000003500000043000000440000
      002D0000000F00000011000000170000002B0000003F0000003D0000003A0000
      00310000000E0000000600000001000000010000000B00000011000000070000
      0001000000000000000000000000FFFFFF000000000000000000000000000000
      000014A4FF2014A4FF6014A4FF9F14A4FFBF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFBF14A4FF9F14A4FF6014A4
      FF20000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014A4FF2014A4FF6014A4FF9F14A4FFBF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFBF14A4FF9F14A4FF6014A4
      FF2000000000018601AF058905FF058905FF058905FF008601AF000000000000
      000000000000000000000000000000000000FFFFFF007A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A7AFF7A7A
      7AFF7A7A7AFF7A7A7AFF888989FFD5D5D5FFB0B0B0FF7A797AE7000000290000
      000BFFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000C4E8EC31A9DCE2C76ECFD9FF37AEBDDC0000
      0044000000430000004200000042000000400000003E0000003B000000380000
      0035000000310000002C000000230000001D000000220000001F0000001A0000
      000E000000000000000000000000FFFFFF00000000000000000014A4FF3014A4
      FFAF14A4FFFF23ACFFFF3FBAFFFF4BC1FFFF41C0FFF733BFFFF72EC1FFFF31C2
      FFFF33C4FFFF35C5FFFF2DC0FFF724B8FFF727B7FFFF1EB0FFFF18A9FFFF14A4
      FFFF14A4FFAF14A4FF4000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014A4FF3014A4
      FFAF14A4FFFF23ACFFFF3FBAFFFF4BC1FFFF41C0FFF733BFFFF72EC1FFFF31C2
      FFFF33C4FFFF35C5FFFF2DC0FFF724B8FFF727B7FFFF1EB0FFFF18A9FFFF14A4
      FFFF14A4FFAF058905FF18B520FF0EA113FF0FAF17FF058905FF000000000000
      000000000000000000000000000000000000FFFFFF00818181FFFCFCFCFFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8F8FFF8F8
      F8FFF8F8F8FFD0D0D0FFC0C1C1FFC2C2C2FF808181FF989A9AC5000000150000
      0004FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000A00000010B5D7DA35B3E5EBF06ECFD9FF39B9C9FF2DAABEFF1C76
      8794000000410000004088A6AA879AD8DFE75C9AA08500000039000000360000
      0033000000300000002D0000002900000025000000220000001D000000190000
      0008000000000000000000000000FFFFFF000000000014A4FF6014A4FFFF17A5
      FFFF3EB8FFFB6DCFFFFF8ADCFFFF80DCFFFF6CD9FFFF55D4FFFF4AD1FFFF4ED4
      FFFF51D5FFFF53D7FFFF55D7FFFF55D8FFFF48D0FFFF3BC9FFFF28BBFFFF1AAC
      FFFC16A6FFFF14A4FFFF148FDE791B4A74040000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF6014A4FFFF17A5
      FFFF3EB8FFFB6DCFFFFF8ADCFFFF80DCFFFF6CD9FFFF55D4FFFF4AD1FFFF4ED4
      FFFF51D5FFFF53D7FFFF55D7FFFF55D8FFFF48D0FFFF3BC9FFFF28BBFFFF1AAC
      FFFC16A6FFFF058905FF24B72BFF119611FF19B120FF058905FF000000000000
      000000000000000000000000000000000000FFFFFF00898989FFF2F2F2FFE4E4
      E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
      E5FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4E4FFE4E4
      E4FFD3D3D3FFB1B2B2FFCDCECEFF7D7D7DFFA0A2A2DB4142422B000000050000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      000B617F82567BC2CABF8ACED7F272C6D2FF3DB1C1FF2DAABEFF249AB0FF1E7E
      92F325808B939DBFC29EAAE3E9FF87D7E0FF63CCD7FF3FB8C6E6000000340000
      00310000002E0000002B0000002700000024000000200000001C000000180000
      0012000000070000000000000000FFFFFF000000000014A4FFEF0D9EFFFF19A9
      FFFF4EC7FFFF78D9FFFF90E1FFFF83DEFFFF6AD8FFFF50D0FFFF43CEFFFF47D0
      FFFF4AD1FFFF4CD3FFFF4DD3FFFF4DD3FFFF4DD3FFFF47D0FFFF3DC9FFFF2EBF
      FFFF18AAFFFF11A0FFFF14A3FCF32A597F3C315E831400000000000000000000
      0000000000000000000000000000000000000000000014A4FFEF0D9EFFFF19A9
      FFFF4EC7FFFF78D9FFFF90E1FFFF83DEFFFF6AD8FFFF50D0FFFF43CEFFFF47D0
      FFFF4AD1FFFF4CD3FFFF4DD3FFFF4DD3FFFF4DD3FFFF47D0FFFF3DC9FFFF2EBF
      FFFF18AAFFFF058905FF34C03AFF1EA01EFF26B82DFF058905FF000000000000
      000000000000000000000000000000000000FFFFFF008F8F8FFFF2F2F2FFE5E5
      E5FFE5E5E5FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6
      E6FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4E4FFDEDE
      DEFFADAEAEFFD0D1D1FF7C7C7CFFA2A2A2FF2828284600000014000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000009ECA
      CE3786D5DEF143B6C4FF6CD7E4FF7CE4EFFF6BC9D6FF249AB0FF1E8094FF2994
      A4FF52BBC8FF8FCFD9FF87D7E0FF63CCD7FF41BFCDFF2CA9BDFF176170650000
      002F0000002C0000002900000025000000220000001E0000001A000000160000
      00120000000D0000000800000004FFFFFF000000000014A4FFFF10A0FFFF21B7
      FFFF4ECAFFFF76D9FFFF8EE1FFFF81DEFFFF66D7FFFF4ACEFFFF3ECAFFFF41CC
      FFFF43CEFFFF45CFFFFF46CFFFFF46CFFFFF45CFFFFF41CCFFFF36C5FFFF2DBF
      FFFF24B7FFFF0F9EFFFF14A4FFFF426E9040446F91404873932C507999040000
      0000000000000000000000000000000000000000000014A4FFFF10A0FFFF21B7
      FFFF4ECAFFFF76D9FFFF8EE1FFFF81DEFFFF66D7FFFF4ACEFFFF3ECAFFFF41CC
      FFFF43CEFFFF45CFFFFF46CFFFFF46CFFFFF45CFFFFF41CCFFFF36C5FFFF2DBF
      FFFF24B7FFFF058905FF43C94AFF2BAA2BFF33C039FF058905FF507999040000
      000000000000000000000000000000000000FFFFFF00959595FFF2F2F2FFE6E6
      E6FFE7E7E7FFE7E7E7FFE7E7E7FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8
      E8FFE8E8E8FFE7E7E7FFE7E7E7FFE7E7E7FFE6E6E6FFE6E6E6FFE5E5E5FFAEAE
      AEFFCCCDCDFF7F8080FFA7A9A9FF969696FF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B8D9DF3093D9
      E1EF44BDCBFF31A6B5FF5FC7D4FF7AE4EFFF87E6F1FF3D96A7FF2994A4FF38BA
      C8FF5EC2CFFF7CE4EFFF62C5D3FF45B7C6FF2CA9BDFF218EA4FF13505D630000
      002C0000002900000026000000230000001F0000001C00000018000000140000
      00100000000B0000000700000002FFFFFF000000000014A4FFFF2CB8FFFF1FB7
      FFFF4CCAFFFF74D9FFFF8CE1FFFF7FDEFFFF63D5FFFF45CCFFFF37C7FFFF3AC9
      FFFF3CCAFFFF3ECAFFFF3FCBFFFF3FCBFFFF122B9FFF070782FF070782FF0707
      82FF070782FF070782FF070782FF070782FF070782FF070782FF070782FF0707
      82FF070782FF070782FF00007BCF000000000000000014A4FFFF2CB8FFFF1FB7
      FFFF4CCAFFFF74D9FFFF8CE1FFFF7FDEFFFF63D5FFFF45CCFFFF37C7FFFF3AC9
      FFFF3CCAFFFF3ECAFFFF3FCBFFFF3FCBFFFF109931FF058905FF058905FF0589
      05FF058905FF29AC2BFF56D15BFF38B438FF3EC644FF13A016FF058905FF0589
      05FF058905FF058905FF008400BF00000000FFFFFF009A9A9AFFF3F3F3FFE8E8
      E8FFE8E8E8FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9E9FFE9E9
      E9FFE9E9E9FFE9E9E9FFE9E9E9FFE8E8E8FFE8E8E8FFE7E7E7FFC1C1C1FFBFC0
      C0FF878787FFA1A1A1FFE5E6E6FF9A9A9AFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B4E5ECC9ACE8
      F0FF4AB1BFFF5CB9C5FF9BDEE7FF79E3EFFF85E6F0FF88DDE8FF82D1DCFF67C2
      CEFF7FD7E2FF7EE4EFFF70E1EEFF4EBBCCFF218EA4FF1C7586FF2D9CA9CA1138
      3D360000002600000023000000200000001D0000001900000015000000120000
      000D000000090000000500000001FFFFFF000000000014A4FFFF38BDFFFF22B7
      FFFF4BCAFFFF72D8FFFF8AE1FFFF7BDEFFFF5ED5FFFF41CBFFFF33C7FFFF35C7
      FFFF36C7FFFF37C7FFFF38C7FFFF38C7FFFF070782FF9797FBFF7575F3FF7272
      F3FF6E6EF3FF6A6AF3FF4141E9FF2C2CDCFF2323D3FF1919C6FF1010B8FF0707
      AAFF02029FFF0101A6FF070782FF000000000000000014A4FFFF38BDFFFF22B7
      FFFF4BCAFFFF72D8FFFF8AE1FFFF7BDEFFFF5ED5FFFF41CBFFFF33C7FFFF35C7
      FFFF36C7FFFF37C7FFFF38C7FFFF38C7FFFF058905FF8FE993FF96E999FF99EA
      9DFF96EA99FF8BE78FFF70DD73FF47C046FF43C648FF39C441FF2BBC32FF1DB4
      24FF0FAB17FF06A70DFF058905FF00000000FFFFFF00A0A0A0FFF4F4F4FFE9E9
      E9FFEAEAEAFFEAEAEAFFEAEAEAFFEBEBEBFFEBEBEBFFEBEBEBFFCAC9CAFFB7B4
      B6FF8C888AFF8C888AFF8C888AFF9A9899FFB7B6B7FFCFCFCFFFB5B6B6FF9191
      91FF989A9AFFDBDCDCFFF2F2F2FF9F9F9FFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B0E5ECEFB3EF
      F6FFB8EBF1FFBDEEF3FFC3F3F8FF8CE7F1FF83E5F0FF8FE8F2FF9CEBF3FF9DEB
      F3FF8FE8F2FF80E5F0FF72E2EEFF52BBCAFF1C7586FF2FA2B1FF39BCCAFF34AE
      BBE41D656E4C2D8993595CB0BD8E2E4E542800000017000000130000000F0000
      000B000000070000000300000000FFFFFF000000000014A4FFFF41C0FFFF25B8
      FFFF53CAFFFF78D9FFFF8EE1FFFF7DDEFFFF5DD5FFFF3ECBFFFF2FC6FFFF30C6
      FFFF32C6FFFF33C6FFFF33C7FFFF38CAFFFF070782FF8F8FFAFF5252EEFF5050
      EEFF4B4BEDFF4C4CEFFF5050F0FF3232E5FF1111CFFF0A0AC0FF0606B1FF0303
      A1FF000093FF00009EFF070782FF000000000000000014A4FFFF41C0FFFF25B8
      FFFF53CAFFFF78D9FFFF8EE1FFFF7DDEFFFF5DD5FFFF3ECBFFFF2FC6FFFF30C6
      FFFF32C6FFFF33C6FFFF33C7FFFF38CAFFFF058905FF93E695FF8EE08EFF92E2
      92FF8FE28FFF82DC82FF6FD46FFF5BCF5AFF47C147FF35B135FF27A627FF199C
      19FF0D910DFF069C0AFF058905FF00000000FFFFFF00A4A4A4FFF5F5F5FFEBEB
      EBFFEBEBEBFFECECECFFECECECFFECECECFFEBEBEBFFC0BFBFFF969394FFA9A8
      A8FFCFCDCDFFD9D9D9FFCDCCCCFFB2AFB0FF878385FF959394FFA1A0A1FF9192
      92FFDDDDDDFFE7E7E7FFF3F3F3FFA4A4A4FF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B3DFE670B2EF
      F6FFB8F1F7FFBEF1F7FFC3F3F8FFB3EFF6FF81E5F0FF8EE8F1FF9AEAF3FF9EEB
      F4FF91E8F2FF82E5F0FF74E2EEFF61D0DEFF319EACFF39BCCAFF35B2C0FF2E9F
      AEFF30A2B1FF57C1CFFF72C4D2FF70BDCBB600000014000000100000000C0000
      0009000000040000000100000000FFFFFF000000000014A4FFFF48C4FFFF23B7
      FFFF51CAFFFF79D9FFFF92E2FFFF87E0FFFF6EDAFFFF55D4FFFF4AD1FFFF4ED4
      FFFF51D5FFFF54D7FFFF55D8FFFF56D8FFFF070782FF9D9DFCFF7E7EF6FF7E7E
      F6FF7979F6FF7676F6FF7272F6FF7070F6FF6A6AF2FF4141DEFF2222CBFF0D0D
      B8FF0303A6FF0101A6FF070782FFB7CAD7040000000014A4FFFF48C4FFFF23B7
      FFFF51CAFFFF79D9FFFF92E2FFFF87E0FFFF6EDAFFFF55D4FFFF4AD1FFFF4ED4
      FFFF51D5FFFF54D7FFFF55D8FFFF56D8FFFF058905FFADF3B0FFB5F4B6FFBAF6
      BBFFB5F4B7FFA9F0ABFF90E692FF6BD06BFF68D86CFF5BD860FF42CA49FF2CBD
      34FF16B01DFF0BAC13FF058905FFB7CAD704FFFFFF00A8A8A8FFF5F5F5FFECEC
      ECFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF9E9D9EFFA7A5A4FFE2E1E1FFFFFF
      FEFFFFFFFEFFFFFFFEFFFFFFFEFFFBFBFAFFE8E7E8FFAAA6A8FF757374FFB6B6
      B6FFE9E9E9FFE9E9E9FFF3F3F3FFA8A8A8FF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000A9E3E99FA5E2
      E9FFB8F0F6FF81CAD4FFB3E8EEFFC7F3F8FF93E9F2FF8CE7F1FF98EAF3FF9FEB
      F4FF93E9F2FF84E6F0FF76E3EEFF68E0EDFF56D1DFFF3CB1C0FF2E9FAEFF2F99
      A8FF51BAC9FF71C4D2FF75C5D3FF73C3D2FF57AFC0960000000D000000090000
      0005000000020000000000000000FFFFFF000000000014A4FFFF51C7FFFF22B7
      FFFF4FCAFFFF77D9FFFF90E1FFFF83DEFFFF6AD8FFFF50D1FFFF44CEFFFF48D0
      FFFF4AD1FFFF4DD3FFFF4ED4FFFF4ED4FFFF162D9FFF070782FF070782FF0707
      82FF070782FF070782FF070782FF070782FF070782FF070782FF070782FF0707
      82FF070782FF070782FF00007BCF000000000000000014A4FFFF51C7FFFF22B7
      FFFF4FCAFFFF77D9FFFF90E1FFFF83DEFFFF6AD8FFFF50D1FFFF44CEFFFF48D0
      FFFF4AD1FFFF4DD3FFFF4ED4FFFF4ED4FFFF149C33FF058905FF058905FF0589
      05FF058905FF3FB440FFA3EEA5FF7AD87AFF78E07EFF27AD29FF058905FF0589
      05FF058905FF058905FF008401BF00000000FFFFFF00ACACACFFF6F6F6FFEDED
      EDFFEEEEEEFFEEEEEEFFE9E8E8FFB9B8B9FFBCB9B5FFF1EDE9FFFEFCF9FFFEFC
      F9FFFEFCF9FFFEFCFAFFFEFCFAFFFEFDFAFFFEFDFBFFF2F1EFFFBCB7B8FF938F
      90FFDCDCDCFFEAEAEAFFF4F4F4FFABABABFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BAE3E98F65C7D2FFB1E9
      EFFFB5F0F6FF7CC0CBFF88CAD4FFC6F3F8FFBFF1F7FF8DE0EAFF8FDEE9FFA5E9
      F0FF98E9F2FF87E6F1FF78E3EFFF6AE0EDFF5CDDEBFF4DD5E5FF3BAABAFF33CB
      DDFF32C1D3FF6FBECCFF74C4D2FF5BB7C9FF2A97ACC20000000A000000060000
      0002000000000000000000000000FFFFFF000000000014A4FFFF5ACBFFFF20B7
      FFFF4DCAFFFF76D9FFFF8EE1FFFF81DEFFFF66D7FFFF4ACEFFFF3ECBFFFF41CC
      FFFF43CEFFFF45CFFFFF47CFFFFF47D0FFFF47CFFFFF42CCFFFF38C6FFFF2EC0
      FFFF25B8FFFF11A0FFFF14A4FFFF7697B0020000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF5ACBFFFF20B7
      FFFF4DCAFFFF76D9FFFF8EE1FFFF81DEFFFF66D7FFFF4ACEFFFF3ECBFFFF41CC
      FFFF43CEFFFF45CFFFFF47CFFFFF47D0FFFF47CFFFFF42CCFFFF38C6FFFF2EC0
      FFFF25B8FFFF058905FFA7F0ABFF83DA83FF80E284FF058905FF000000000000
      000000000000000000000000000000000000FFFFFF00AFAFAFFFF7F7F7FFEFEF
      EFFFEFEFEFFFF0F0F0FFD4D2D3FF918D8AFFEAE4DDFFFEF8F0FFFEF9F4FFFEF9
      F4FFFEFAF4FFFEFAF5FFFEFAF5FFFEFAF5FFFEFAF6FFFEFBF6FFE9E6E2FF938F
      90FFB3B3B3FFEBEBEBFFF5F5F5FFAFAFAFFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2E9F0BFABE9F0FFADEB
      F2FFB2EFF6FFB1EDF3FFB5EBF2FFCDF1F5FFBEE8EEFF84DCE7FF81DDE9FF7DD8
      E3FF74D3DFFF7DD9E3FF7DE3EEFF6CE0EDFF5EDDEBFF4FDAEAFF41D7E8FF33D4
      E6FF2ACADDFF3BB5C7FF5DB7C8FF2C98ADFF1A73844700000006000000030000
      0000000000000000000000000000FFFFFF000000000014A4FFFF64CFFFFF1FB7
      FFFF4BCAFFFF89DDFFFFA1E5FFFFA3E3FFFF97E0FFFF81D8FFFF7ED7FFFF7DD7
      FFFF7DD8FFFF7BD8FFFF7BD8FFFF7DD9FFFF81DCFFFF66D3FFFF47C9FFFF2ABC
      FFFF22B6FFFF0F9FFFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF64CFFFFF1FB7
      FFFF4BCAFFFF89DDFFFFA1E5FFFFA3E3FFFF97E0FFFF81D8FFFF7ED7FFFF7DD7
      FFFF7DD8FFFF7BD8FFFF7BD8FFFF7DD9FFFF81DCFFFF66D3FFFF47C9FFFF2ABC
      FFFF22B6FFFF058905FFA7EFAAFF84DA84FF81E186FF058905FF000000000000
      000000000000000000000000000000000000FFFFFF00B2B2B2FFF7F7F7FFF0F0
      F0FFF0F0F0FFF1F1F1FFB0AEAFFFC5BCB3FFFDF1E3FFFDF5ECFFFEF7EFFFFEF7
      EFFFFEF7EFFFFEF7F0FFFEF7F0FFFEF8F0FFFEF8F1FFFEF8F1FFFCF6EFFFC4BE
      BDFF888787FFECECECFFF5F5F5FFB1B1B1FF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9E9EFAFA4ECF4FFA8ED
      F4FFB0EFF6FFB6F0F6FFC2F1F6FFBBE7EEFFC8F4F9FFB7EFF6FFA0EAF2FFA9EC
      F3FF99EAF3FF7CDFEAFF6AD3DEFF70DCE8FF60DEECFF53D6E4FF3ECFE0FF35D5
      E6FF2BCCDFFF27BCCFFF319BAEFF2FA3B2FF37B2BF4400000003000000000000
      0000000000000000000000000000FFFFFF000000000014A4FFFF6ED3FFFF5DCB
      FFFFA3E0FFFF82D4FFFF69CEFFFF52C6FFFF4AC4FFFF48C2FFFF45C2FFFF42C2
      FFFF40C1FFFF3DC0FFFF39BFFFFF35BDFFFF3DC0FFFF4AC4FFFF65CBFFFF7DD3
      FFFF4EC5FFFF0E9EFFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF6ED3FFFF5DCB
      FFFFA3E0FFFF82D4FFFF69CEFFFF52C6FFFF4AC4FFFF48C2FFFF45C2FFFF42C2
      FFFF40C1FFFF3DC0FFFF39BFFFFF35BDFFFF3DC0FFFF4AC4FFFF65CBFFFF7DD3
      FFFF4EC5FFFF058905FF9FEDA1FF7ED77EFF7AE080FF058905FF000000000000
      000000000000000000000000000000000000FFFFFF00B4B4B4FFF8F8F8FFF1F1
      F1FFF1F1F1FFF2F2F2FF979594FFE7DACCFFFCEDDAFFFDF4E9FFFDF4EAFFFDF4
      EAFFFDF5EAFFFDF5EBFFFDF5EBFFFDF5EBFFFDF5ECFFFDF5ECFFFDF6ECFFD6D0
      CBFF888787FFE6E6E6FFF6F6F6FFB4B4B4FF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6E7EA30ABEAF2DFA5EC
      F4FFACEEF5FFB4EFF6FFB8E8EFFFBFF1F6FFD0F4F8FFDFF1F4FFADD5DAFFADD7
      DCFF9FD7DDFF9FE5EDFF7FE3EEFF66D5E1FF67D7E3FF4DC0CFFF33B3C5FF34CC
      DDFF2BCFE1FF2BB7C9FF33A3B2FF39BCCAFF37B6C4DF00000000000000000000
      0000000000000000000000000000FFFFFF000000000014A4FFFFC0E9FFFF93D8
      FFFF6FCBFFFF6BCCFFFF73D0FFFF6BD0FFFF56CAFFFF3CC1FFFF2FC1FFFF31C2
      FFFF34C5FFFF35C4FFFF32C1FFFF35C2FFFF36C0FFFF37BFFFFF34BAFFFF31B4
      FFFF5CC4FFFF49B5FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFFC0E9FFFF93D8
      FFFF6FCBFFFF6BCCFFFF73D0FFFF6BD0FFFF56CAFFFF3CC1FFFF2FC1FFFF31C2
      FFFF34C5FFFF35C4FFFF32C1FFFF35C2FFFF36C0FFFF37BFFFFF34BAFFFF31B4
      FFFF5CC4FFFF058905FF92EA97FF7BDC7FFF70DD77FF058905FF000000000000
      000000000000000000000000000000000000FFFFFF00B6B6B6FFF8F8F8FFF2F2
      F2FFF3F3F3FFF3F3F3FF837E7BFFF3E2CEFFFBE8D2FFFDF2E4FFFDF2E5FFFDF2
      E5FFFDF2E5FFFDF2E6FFFDF2E6FFFDF2E6FFFDF3E7FFFDF3E7FFFDF1E4FFE5DC
      D1FF8B8789FFE1E1E1FFF6F6F6FFB6B6B6FF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CDE2E710AAEA
      F1EFA8EDF5FFB0EFF5FFBAEAF1FFBEF1F7FFDDF1F3FFDDDEDEFFDEDEDEFFE2E2
      E2FFDDE2E2FFB7D0D3FF8EBFC4FF71D8E4FF66D5E1FF58CFDDFF3AC0D2FF37CF
      E0FF2CD0E2FF33B1C2FF39BCCAFF37B6C4FF32A8B6FF2C9DAD60000000000000
      0000000000000000000000000000FFFFFF000000000014A4FFFFD4EFFFFF60C6
      FFFF51C1FFFF6DCEFFFF89DCFFFF7FDCFFFF69D7FFFF54D4FFFF4AD1FFFF4ED4
      FFFF52D5FFFF54D7FFFF55D8FFFF4FD4FFFF48D0FFFF37C6FFFF24B7FFFF25B2
      FFFF2DB1FFFF93D8FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFFD4EFFFFF60C6
      FFFF51C1FFFF6DCEFFFF89DCFFFF7FDCFFFF69D7FFFF54D4FFFF4AD1FFFF4ED4
      FFFF52D5FFFF54D7FFFF55D8FFFF4FD4FFFF48D0FFFF37C6FFFF24B7FFFF25B2
      FFFF2DB1FFFF1F9C31FF058905FF058905FF058905FF038804BF000000000000
      000000000000000000000000000000000000FFFFFF00B8B8B8FFF9F9F9FFF3F3
      F3FFF4F4F4FFF4F4F4FF8C8783FFEBD5BCFFFAE4C9FFFCEFDFFFFCEFE0FFFDEF
      E0FFFDEFE0FFFDF0E1FFFDF0E1FFFCEDDCFFFCECDAFFFCEDDCFFFDF0E1FFDBD2
      C8FF888787FFEFEFEFFFF7F7F7FFB8B8B8FF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000B0E8
      EFAFA4ECF4FFACEEF5FFB2E9F0FFC0EDF2FFDDDEDEFFDFDFDFFFE3E3E3FFE8E8
      E8FFEEEEEEFFF5F5F5FFE1E5E6FF7D999CFF53ACB6FF5CC0CAFF49D0DFFF3BD6
      E7FF2ED2E4FF2AC1D3FF39AEBDFF32A8B6FF2A9EAFFF2BA8BCFF35B7C7DF31AC
      BD9F00000000FFFFFF00FFFFFF00FFFFFF000000000014A4FFF32EADFFFF1CA9
      FFFF50C9FFFF79D9FFFF91E2FFFF82DEFFFF69D8FFFF4FD0FFFF44CEFFFF48D0
      FFFF4AD1FFFF4DD3FFFF4ED3FFFF4ED4FFFF4DD3FFFF47CFFFFF3DC9FFFF2DBF
      FFFF17A9FFFF32B2FFFF14A4FFEF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFF32EADFFFF1CA9
      FFFF50C9FFFF79D9FFFF91E2FFFF82DEFFFF69D8FFFF4FD0FFFF44CEFFFF48D0
      FFFF4AD1FFFF4DD3FFFF4ED3FFFF4ED4FFFF4DD3FFFF47CFFFFF3DC9FFFF2DBF
      FFFF17A9FFFF32B2FFFF14A4FFEF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BABABAFFF9F9F9FFF4F4
      F4FFF5F5F5FFF5F5F5FF9D9B9AFFC8B49DFFFAE2C6FFFBE5CCFFFBE5CCFFFBE6
      CDFFFBE8D2FFFBE7D0FFFBEAD5FFFCEDDBFFFCEEDDFFFCEEDEFFFCEEDEFFC8C0
      B9FF949393FFF0F0F0FFF7F7F7FFBABABAFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000090D7DF209CDD
      E5EF9FEBF3FFA8EDF5FFBDE3E8FFDCDCDCFFDFDFDFFFE3E3E3FFE9E9E9FFEFEF
      EFFFF6F6F6FFFCFCFCFFF8F8F8FFDADBDBFF7D9597FF429FA9FF51B1BBFF3BCF
      DFFF2FD3E5FF29C6D9FF31AABBFF2A9EAFFF2BA8BCFF35B7C7FF34B6C6FF2BA8
      BDFF259DB430FFFFFF00FFFFFF00FFFFFF000000000014A4FFFF0FA0FFFF23B7
      FFFF50CBFFFF78D9FFFF8FE2FFFF80DEFFFF65D5FFFF49CEFFFF3ECBFFFF41CC
      FFFF43CEFFFF45CFFFFF46CFFFFF46CFFFFF46CFFFFF41CBFFFF36C5FFFF2DBF
      FFFF24B7FFFF0F9EFFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF0FA0FFFF23B7
      FFFF50CBFFFF78D9FFFF8FE2FFFF80DEFFFF65D5FFFF49CEFFFF3ECBFFFF41CC
      FFFF43CEFFFF45CFFFFF46CFFFFF46CFFFFF46CFFFFF41CBFFFF36C5FFFF2DBF
      FFFF24B7FFFF0F9EFFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BBBBBBFFFAFAFAFFF5F5
      F5FFF5F5F5FFF6F6F6FFC8C6C7FF837E7BFFF8E0C4FFFBE9D3FFFCEEDDFFFCEE
      DDFFFCEEDDFFFCEEDDFFFCEEDDFFFCEEDDFFFCEEDDFFFCEEDDFFEEE2D3FFA69F
      9DFFC0C0C0FFF1F1F1FFF8F8F8FFBBBBBBFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000D6E8EB5993E9
      F2FF99EAF3FFBCE5EAFFDDDDDDFFE0E0E0FFE4E4E4FFE9E9E9FFF0F0F0FFF7F7
      F7FFFCFCFCFFF8F8F8FFEFEFEFFFDCDCDCFFA0A8A9FF53969DFF4EADB7FF47C3
      D0FF31D3E4FF2AC8DBFF28B6C9FF2EA1B5FF37A6B7FF35B3C4FF2BA8BDFF2397
      AEFF1F859980FFFFFF00FFFFFF00FFFFFF000000000014A4FFFF2BBAFFFF22B7
      FFFF4FCBFFFF76D9FFFF8CE2FFFF7DDEFFFF60D5FFFF44CCFFFF38C7FFFF3AC9
      FFFF3DCAFFFF3ECBFFFF3FCBFFFF40CBFFFF3FCBFFFF3AC7FFFF31C1FFFF28BB
      FFFF21B6FFFF11A1FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF2BBAFFFF22B7
      FFFF4FCBFFFF76D9FFFF8CE2FFFF7DDEFFFF60D5FFFF44CCFFFF38C7FFFF3AC9
      FFFF3DCAFFFF3ECBFFFF3FCBFFFF40CBFFFF3FCBFFFF3AC7FFFF31C1FFFF28BB
      FFFF21B6FFFF11A1FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BCBCBCFFFAFAFAFFF6F6
      F6FFF6F6F6FFF7F7F7FFE1E0E0FF928C8AFFA59581FFF9E3CAFFFCEEDDFFFCEE
      DDFFFCEEDDFFFCEEDDFFFCEEDDFFFCEEDDFFFCEEDDFFF6E9D9FFCBC1B8FF948D
      8CFFEBEBEBFFF2F2F2FFF8F8F8FFBCBCBCFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000B1EC
      F3DFC1E1E4FFDDDDDDFFE0E0E0FFE5E5E5FFEAEAEAFFF1F1F1FFF8F8F8FFFCFC
      FCFFF6F6F6FFEFEFEFFFE7E7E7FFCCCCCCFFB2B3B3FF54848AFF3DA7B3FF57BC
      C8FF32D2E4FF2ACBDDFF26BACEFF22AABEFF1E9AAFFF2B95AAFF2397AEFF1D7F
      92FF196C7D8FFFFFFF00FFFFFF00FFFFFF000000000014A4FFFF37BDFFFF23B8
      FFFF4ECBFFFF74D9FFFF8AE1FFFF7ADEFFFF5DD5FFFF41CBFFFF34C7FFFF35C7
      FFFF36C7FFFF37C7FFFF38C7FFFF38C7FFFF38C7FFFF34C5FFFF2DC0FFFF27BB
      FFFF28BCFFFF16A9FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF37BDFFFF23B8
      FFFF4ECBFFFF74D9FFFF8AE1FFFF7ADEFFFF5DD5FFFF41CBFFFF34C7FFFF35C7
      FFFF36C7FFFF37C7FFFF38C7FFFF38C7FFFF38C7FFFF34C5FFFF2DC0FFFF27BB
      FFFF28BCFFFF16A9FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BDBDBDFFFBFBFBFFF7F7
      F7FFF7F7F7FFF7F7F7FFF8F8F8FFE1E0E0FF857D79FFA49380FFF2E2CFFFFCEE
      DDFFFCEEDDFFFCEEDDFFFCEEDDFFFCEEDDFFEFE3D3FFC1B7ACFF948D8CFFD5D5
      D5FFF3F3F3FFF3F3F3FFF8F8F8FFBDBDBDFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000DCDCDC10DEDE
      DEAFDDDDDDFFE1E1E1FFE5E5E5FFEBEBEBFFF2F2F2FFF9F9F9FFFCFCFCFFF5F5
      F5FFEEEEEEFFE6E6E6FFDEDEDEFFBFBFBFFFA7A7A7FF558086FF3BA1ADFF5FC2
      CDFF32C9DBFF2BCDDFFF27BDD0FF23ACC0FF1F9CB1FF238EA2FF208093FF1869
      79CF17637210FFFFFF00FFFFFF00FFFFFF000000000014A4FFFF40C1FFFF28B8
      FFFF55CBFFFF79D9FFFF8EE2FFFF7DDEFFFF5AD5FFFF3CCBFFFF2FC6FFFF31C6
      FFFF32C6FFFF33C6FFFF33C7FFFF35C9FFFF3DCCFFFF40CCFFFF3FCBFFFF3CC9
      FFFF30C1FFFF16A7FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF40C1FFFF28B8
      FFFF55CBFFFF79D9FFFF8EE2FFFF7DDEFFFF5AD5FFFF3CCBFFFF2FC6FFFF31C6
      FFFF32C6FFFF33C6FFFF33C7FFFF35C9FFFF3DCCFFFF40CCFFFF3FCBFFFF3CC9
      FFFF30C1FFFF16A7FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BEBEBEFFFBFBFBFFF7F7
      F7FFF8F8F8FFF8F8F8FFF8F8F8FFF9F9F9FFDFDCDEFF948B8AFF8C8074FFBAAE
      9FFFD2C6B7FFDACEC0FFD6CABBFFBAAFA3FF9E948CFF9E948CFFD7D6D6FFF5F5
      F5FFF4F4F4FFF3F3F3FFF9F9F9FFBEBEBEFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B2B2B210CDCDCDCFD5D5
      D5FFCFCFCFFFDBDBDBFFECECECFFF3F3F3FFFAFAFAFFFBFBFBFFF4F4F4FFEDED
      EDFFE5E5E5FFDDDDDDFFD2D2D2FFACACACFF9A9A9AFF528086FF379CA8FF51C3
      CFFF49CBDBFF2BCEE1FF27BFD2FF23AFC3FF1F9EB3FF1E8EA4FF267484DF1763
      721000000000FFFFFF00FFFFFF00FFFFFF000000000014A4FFFF48C4FFFF26B8
      FFFF54CBFFFF7BDAFFFF92E2FFFF87E0FFFF6DD9FFFF55D4FFFF4BD1FFFF4AD1
      FFFF4DD4FFFF54D7FFFF56D8FFFF56D8FFFF56D8FFFF50D4FFFF43CEFFFF37C6
      FFFF2DBFFFFF14A6FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF48C4FFFF26B8
      FFFF54CBFFFF7BDAFFFF92E2FFFF87E0FFFF6DD9FFFF55D4FFFF4BD1FFFF4AD1
      FFFF4DD4FFFF54D7FFFF56D8FFFF56D8FFFF56D8FFFF50D4FFFF43CEFFFF37C6
      FFFF2DBFFFFF14A6FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BFBFBFFFFBFBFBFFF8F8
      F8FFF8F8F8FFF9F9F9FFF9F9F9FFF9F9F9FFFAFAFAFFF0EFF0FFCBC7C9FFA9A4
      A3FF9C9491FF9C9491FF9C9491FF9F9A99FFB9B8B8FFECECECFFF6F6F6FFF6F6
      F6FFF5F5F5FFF4F4F4FFF9F9F9FFBFBFBFFF0000003A00000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C670F2F2F2FFF2F2
      F2FFE8E8E8FFD5D5D5FFD8D8D8FFFBFBFBFFFBFBFBFFF3F3F3FFECECECFFE4E4
      E4FFDCDCDCFFD0D0D0FFC2C2C2FF9B9B9BFF959595FF477F89FF399FACFF46C6
      D4FF4ACBDBFF2DD0E2FF28C2D5FF24B1C5FF389FAEFF2C8A99FF1D7281DF196E
      7F3000000000FFFFFF00FFFFFF00FFFFFF000000000014A4FFFF51C7FFFF24B7
      FFFF52CBFFFF79D9FFFF91E2FFFF83DEFFFF69D8FFFF4FD1FFFF45CFFFFF48D0
      FFFF4BD1FFFF4DD3FFFF4FD4FFFF4FD4FFFF4ED4FFFF49D0FFFF3ECAFFFF33C2
      FFFF29BBFFFF13A3FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF51C7FFFF24B7
      FFFF52CBFFFF79D9FFFF91E2FFFF83DEFFFF69D8FFFF4FD1FFFF45CFFFFF48D0
      FFFF4BD1FFFF4DD3FFFF4FD4FFFF4FD4FFFF4ED4FFFF49D0FFFF3ECAFFFF33C2
      FFFF29BBFFFF13A3FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BFBFBFFFFCFCFCFFF8F8
      F8FFF9F9F9FFF9F9F9FFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
      FAFFF1F1F1FFEAEAEAFFF9F9F9FFF9F9F9FFF8F8F8FFF8F8F8FFF7F7F7FFF6F6
      F6FFF5F5F5FFF4F4F4FFF9F9F9FFBFBFBFFF0000003900000013000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DCDCDC80FFFFFFFFFDFD
      FDFFF8F8F8FFEDEDEDFFDADADAFFD8D8D8FFF2F2F2FFEBEBEBFFE3E3E3FFDADA
      DAFFCFCFCFFFC2C2C2FFABABABFF959595FF7C9295FF277786FF47B2BEFF4FCE
      DBFF4CCBDBFF2ED2E3FF29C4D7FF25B4C7FF2D92A2FF1D7180FF1A6E7FFF1D7F
      92EF2190A640FFFFFF00FFFFFF00FFFFFF000000000014A4FFFF5ACBFFFF23B7
      FFFF50CBFFFF77D9FFFF8FE2FFFF80DEFFFF65D5FFFF4ACEFFFF3FCBFFFF41CC
      FFFF44CEFFFF46CFFFFF47D0FFFF47D0FFFF47D0FFFF42CCFFFF38C6FFFF2EC0
      FFFF25B8FFFF11A0FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF5ACBFFFF23B7
      FFFF50CBFFFF77D9FFFF8FE2FFFF80DEFFFF65D5FFFF4ACEFFFF3FCBFFFF41CC
      FFFF44CEFFFF46CFFFFF47D0FFFF47D0FFFF47D0FFFF42CCFFFF38C6FFFF2EC0
      FFFF25B8FFFF11A0FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00BFBFBFFFFCFCFCFFF9F9
      F9FFF9F9F9FFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFAFAFAFFFAFAFAFFFAFAFAFFF9F9F9FFFAFAFAFFEEEEEEFFF0F0F0FFF7F7
      F7FFF6F6F6FFF5F5F5FFFAFAFAFFC5C5C5FF000000300000000E000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D8D843F9F9F9FFFFFF
      FFFFFCFCFCFFF6F6F6FFEAEAEAFFD6D6D6FFD1D1D1FFE2E2E2FFD9D9D9FFCDCD
      CDFFC1C1C1FFB3B3B3FF999999FF819EA2FF2B7582FF449CA7FF4EBECAFF66D4
      E1FF42CBDBFF2FD3E5FF29C6D9FF25B6CAFF28899AFF1A6E7FFF1D7F92FF2190
      A6FF2295ACAFFFFFFF00FFFFFF00FFFFFF000000000014A4FFFF64CFFFFF21B7
      FFFF4ECBFFFF86DCFFFFA4E6FFFF9CE2FFFF92DEFFFF88DAFFFF7DD7FFFF7DD7
      FFFF7BD8FFFF7BD8FFFF7BD8FFFF81DCFFFF74D8FFFF5FD1FFFF42C7FFFF2ABC
      FFFF22B6FFFF0F9EFFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF64CFFFFF21B7
      FFFF4ECBFFFF86DCFFFFA4E6FFFF9CE2FFFF92DEFFFF88DAFFFF7DD7FFFF7DD7
      FFFF7BD8FFFF7BD8FFFF7BD8FFFF81DCFFFF74D8FFFF5FD1FFFF42C7FFFF2ABC
      FFFF22B6FFFF0F9EFFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C0FFFCFCFCFFF9F9
      F9FFFAFAFAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFB6B6B6FF7E7E7EFF8686
      86FF989898FFC1C1C1FFE5E5E5FFC7C7C7EC0000001B00000006000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF01E1E1E1E0FEFE
      FEFFFDFDFDFFF9F9F9FFF1F1F1FFE3E3E3FFCBCBCBFFCFCFCFFFCCCCCCFFBFBF
      BFFFB4B4B4FFA1A1A1FFAECCCFFFA1EAF2FF64BBC5FF56B5BFFF5FCCD8FF65CB
      D9FF3FD6E6FF31D4E5FF2AC9DBFF26B8CCFF24A7BBFF25889BFF2190A6FF218F
      A5FF1C7A8C60FFFFFF00FFFFFF00FFFFFF000000000014A4FFFF6DD3FFFF5ECB
      FFFF9DDEFFFF89D7FFFF6DCFFFFF5BCAFFFF49C2FFFF46C2FFFF43C2FFFF41C1
      FFFF3EC0FFFF3BBFFFFF38BFFFFF35BCFFFF42C2FFFF4FC6FFFF6BCEFFFF7DD4
      FFFF41C1FFFF0E9EFFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFF6DD3FFFF5ECB
      FFFF9DDEFFFF89D7FFFF6DCFFFFF5BCAFFFF49C2FFFF46C2FFFF43C2FFFF41C1
      FFFF3EC0FFFF3BBFFFFF38BFFFFF35BCFFFF42C2FFFF4FC6FFFF6BCEFFFF7DD4
      FFFF41C1FFFF0E9EFFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C0FFFCFCFCFFFAFA
      FAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFF9F9F9FFB8B8B8FFD3D3D3FFFCFC
      FCFFFBFBFBFFEFEFEFFFCDCDCDF77E7E7E490000000900000001000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CCCCCC43EEEE
      EEFFF9F9F9FFF8F8F8FFF3F3F3FFE8E8E8FFD6D6D6FFC1C1C1FFBEBEBEFFB4B4
      B4FFACACACFFB1D2D6FFA4E4EBFFA2E4ECFF7AD7E3FF64C3CFFF6ECFDCFF44C6
      D6FF40D5E5FF34D5E6FF2ACBDEFF26BBCEFF22ABBFFF2499AEFF2D8DA1FF1A70
      81CF17637210FFFFFF00FFFFFF00FFFFFF000000000014A4FFFFBFE9FFFF97D9
      FFFF6DCBFFFF67CAFFFF66CCFFFF64CCFFFF60CCFFFF5DCBFFFF5ACAFFFF57C9
      FFFF53C7FFFF4FC6FFFF4BC5FFFF47C4FFFF42C1FFFF3CBDFFFF32B7FFFF2FB2
      FFFF62C6FFFF48B6FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFFBFE9FFFF97D9
      FFFF6DCBFFFF67CAFFFF66CCFFFF64CCFFFF60CCFFFF5DCBFFFF5ACAFFFF57C9
      FFFF53C7FFFF4FC6FFFF4BC5FFFF47C4FFFF42C1FFFF3CBDFFFF32B7FFFF2FB2
      FFFF62C6FFFF48B6FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C0FFFCFCFCFFFAFA
      FAFFFAFAFAFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFBFBFBFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFCACACAFFD5D5D5FFFBFB
      FBFFEEEEEEFFCECECEFF8A8A8A590000000B0000000100000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000D4D4
      D491EDEDEDFFF0F0F0FFEEEEEEFFE7E7E7FFD8D8D8FFC0C0C0FFB3B3B3FFB1B6
      B6FFB0DEE3FFBBF1F7FFB9F1F7FFAFEEF5FF9AEAF3FF6FE1EDFF67DFEBFF3BAB
      BBFF39C2D3FF36D5E6FF2BCDE0FF30ABBDFF27A9BCFF249CB0FF207282CF1763
      721000000000FFFFFF00FFFFFF00FFFFFF000000000014A4FFFFD4EFFFFF8BD4
      FFFF88D5FFFF86D5FFFF82D7FFFF80D7FFFF7BD5FFFF77D4FFFF74D3FFFF6FD1
      FFFF6BD0FFFF67CFFFFF63CEFFFF5DCBFFFF58CAFFFF51C6FFFF48C0FFFF40BA
      FFFF36B4FFFF91D7FFFF14A4FFFF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFFFD4EFFFFF8BD4
      FFFF88D5FFFF86D5FFFF82D7FFFF80D7FFFF7BD5FFFF77D4FFFF74D3FFFF6FD1
      FFFF6BD0FFFF67CFFFFF63CEFFFF5DCBFFFF58CAFFFF51C6FFFF48C0FFFF40BA
      FFFF36B4FFFF91D7FFFF14A4FFFF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C0FFFCFCFCFFFAFA
      FAFFFAFAFAFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFD5D5D5FFF1F1F1FFEEEE
      EEFFCECECEFF9C9C9C760000000C000000020000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF01D4D4D4A2E4E4E4FFE0E0E0FFDDDDDDFFD3D3D3FFBFBFBFFFB2B2B2EFA8DB
      E2EFACEEF5FFB1E9F0FFB6F0F6FFACEEF5FFA2ECF4FF7DE4EFFF63DFECFF52D8
      E7FF44D3E3FF38D6E7FF2FC2D4FF217D90FF258A9FFF2F95AAEF176372100000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000014A4FFEF9DDCFFFFC1E9
      FFFFACE2FFFFA6E1FFFFA1E1FFFF9EE1FFFF99E0FFFF95DEFFFF8FDCFFFF8ADA
      FFFF86D9FFFF81D8FFFF7BD5FFFF77D4FFFF72D3FFFF6ACFFFFF62CAFFFF5DC6
      FFFF84D4FFFF60C5FFFF14A4FFEF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FFEF9DDCFFFFC1E9
      FFFFACE2FFFFA6E1FFFFA1E1FFFF9EE1FFFF99E0FFFF95DEFFFF8FDCFFFF8ADA
      FFFF86D9FFFF81D8FFFF7BD5FFFF77D4FFFF72D3FFFF6ACFFFFF62CAFFFF5DC6
      FFFF84D4FFFF60C5FFFF14A4FFEF000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C0FFFCFCFCFFFAFA
      FAFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFBFBFBFFFBFBFBFFFAFAFAFFFAFAFAFFE6E6E6FFEEEEEEFFD0D0
      D0FF9C9C9C760000000C00000002000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000FFFFFF01D7D7D755D5D5D5E2CACACAFFC0C0C0FFB6B6B6CFB2B2B220A7D0
      D820A5E1E9BF75B6C2CF96D0DA8098D7E1DF9FEBF4FF92E8F2FF6BE0EDFF57DC
      EAFF48D9E9FF3AD6E7FF30C4D5FF258A9FFF249CB3EF249DB530000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000014A4FF6014A4FFFF70CC
      FFFFD5F0FFFCD9F2FFFFCCEFFFFFC2EDFFFFBAEAFFFFB4E7FFFFAFE6FFFFA9E5
      FFFFA4E3FFFF9EE1FFFF98E0FFFF93DDFFFF93DDFFFF9CE0FFFFA5E1FFFFA0DE
      FFFB47BCFFFF14A4FFFF14A4FF60000000000000000000000000000000000000
      0000000000000000000000000000000000000000000014A4FF6014A4FFFF70CC
      FFFFD5F0FFFCD9F2FFFFCCEFFFFFC2EDFFFFBAEAFFFFB4E7FFFFAFE6FFFFA9E5
      FFFFA4E3FFFF9EE1FFFF98E0FFFF93DDFFFF93DDFFFF9CE0FFFFA5E1FFFFA0DE
      FFFB47BCFFFF14A4FFFF14A4FF60000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C0FFFEFEFEFFFDFD
      FDFFFDFDFDFFFDFDFDFFFDFDFDFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
      FEFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFEDEDEDFFCECECEFFA0A0
      A0730000000B0000000200000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      00000000000000000000FFFFFF02B9B9B941B2B2B240B2B2B210000000000000
      000000000000000000000000000074AEBB1093DEE7EF91E8F2FF65B5C3FF2679
      8BFF3A95A69F3CD2E3FF2ED3E4FF31A1B6EF249DB53000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00000000000000000014A4FF4014A4
      FFBF14A4FFFF3EB8FFFF74CEFFFF9FDEFFFFB2E5FFF7E5F7FFFFE1F6FFFFDDF4
      FFFFD9F3FFFFD7F2FFFFD7F2FFFFA0DEFFFB8FD8FFFF67C9FFFF2EB1FFFF14A4
      FFFF14A4FFAF14A4FF3000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000014A4FF4014A4
      FFBF14A4FFFF3EB8FFFF74CEFFFF9FDEFFFFB2E5FFF7E5F7FFFFE1F6FFFFDDF4
      FFFFD9F3FFFFD7F2FFFFD7F2FFFFA0DEFFFB8FD8FFFF67C9FFFF2EB1FFFF14A4
      FFFF14A4FFAF14A4FF3000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00C0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0
      C0FFC0C0C0FFC0C0C0FFC0C0C0FFC0C0C0FFC5C5C5FFC9C9C9F4ABABAB5A0000
      0008000000020000000000000000000000000000000000000000000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007ABECA6081D1DCBF5CAAB9FF1A72
      84600000000042ABBC503EADBE70488FA0100000000000000000000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000014A4FF2014A4FF6014A4FF9F14A4FFBF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFBF14A4FF9F14A4FF6014A4
      FF20000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000014A4FF2014A4FF6014A4FF9F14A4FFBF14A4FFFF14A4FFFF14A4FFFF14A4
      FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFFF14A4FFBF14A4FF9F14A4FF6014A4
      FF20000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000600000000100010000000000000600000000000000000000
      000000000000000000000000FFFFFF00FFF00FFF000000000000000000000000
      FF8001FF000000000000000000000000FE00007F000000000000000000000000
      FC00003F000000000000000000000000F800001F000000000000000000000000
      F000000F000000000000000000000000E0000007000000000000000000000000
      C0000003000000000000000000000000C0000003000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000080000001000000000000000000000000
      8000000100000000000000000000000080000001000000000000000000000000
      C0000003000000000000000000000000C0000003000000000000000000000000
      E0000007000000000000000000000000F000000F000000000000000000000000
      F800001F000000000000000000000000FC00003F000000000000000000000000
      FE00007F000000000000000000000000FF8001FF000000000000000000000000
      FFF00FFF000000000000000000000000FFFC00FFFFFFFFFFFFFFFFFF00000000
      80000003FFFFFFFFFFFFFFFF0000000080000003FFFFFFFFFFFFFFFF00000000
      8000000000000000FFF83FFF000000008000000000000000FFF83FFF00000000
      8000000000000000FFF83FFF000000008000000000000000FFF83FFF00000000
      8000000000000000FFF83FFF000000008000000000000000FFF83FFF00000000
      8000000000000000FFF83FFF000000008000000000000000FFF83FFF00000000
      8000000000000000FFF01FFF000000008000000300000000FFF01FFF00000000
      8000000300000000FFE00FFF000000008000000300000000FFE007FF00000000
      8000000300000000FFC007FF00000000800000FF00000000FF8003FF00000000
      800000FF00000000FF8001FF00000000800000FF00000000FF0001FF00000000
      800000FF00000000FE0000FF00000000800001FF00000000FE00007F00000000
      800001FF00000000FC00007F00000000800001FF00000000FC00003F00000000
      800001FF00000000F800001F00000000800001FF00000000F000001F00000000
      800001FF00000000F000000F00000000800001FF00000000E000000700000000
      800001FF00000000E000000700000000800001FF80000001C000000300000000
      800001FFFFFFFFFFFFFFFFFF00000000800001FFFFFFFFFFFFFFFFFF00000000
      800001FFFFFFFFFFFFFFFFFF00000000000000001F0E0FFEFFFFFFFFFFFFFFFF
      000000001E00000E800001FF8000083F000000007E00000E800001FF8000003F
      000000007000000E800000008000003E0000001060000006800000008000003E
      0000003060000000800000008000001E00000030400000008000000080000000
      0000003040000000800000008000000000000030400000028000000080000000
      0000003040000002800000008000000000000030400000068000000080000000
      000000300000000E800000008000003E000000300000001E800001FF8000003F
      000000300000003E800001FF8000003F000000300000007E800001FF8000003F
      000000304000003E800001FF8000003F0000003060000008800001FF800001FF
      0000003040000000800001FF800001FF0000003040000000800001FF800001FF
      0000003060000000800001FF800001FF0000003040000000800001FF800001FF
      0000003000000008800001FF800001FF0000003000000008800001FF800001FF
      0000003000000000800001FF800001FF0000003000000000800001FF800001FF
      0000003000000000800001FF800001FF0000003040000000800001FF800001FF
      0000007060000008800001FF800001FF000000F060000018800001FF800001FF
      000001F070000038800001FF800001FF000003F07C3E0078800001FF800001FF
      000007F07FFF08F8800001FF800001FF00000000000000000000000000000000
      000000000000}
  end
  object sAlphaImageList1: TsAlphaImageList
    DrawingStyle = dsTransparent
    Height = 32
    Width = 32
    Items = <
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000000467414D410000
          B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
          75300000EA6000003A980000176F925FC5460000020F4944415478DAD4954D6B
          135114869F34C98450031352908090D8821F2B63B31037E24A14DCF91F9A8DA0
          FD1F42055701772E5CBB712524C12282A49D851B176A420729A42937C994C94C
          EECC75919990686313ED2C3C9BCBDCC3BCCF39EFBD3327A69422CA5821E28801
          34AB94809D60EF6E988C6B3A9E2BB6CB159E9F2534CF8958B38A0ED4F29B8F4B
          7AE106E9B51228073842B476F9F6EE19C0E57285D6F48B41517AF0686C6E2971
          1A20013CCDE46F97F2376F0103F03F4D927A619D74EE1276D7DC0F0A99849629
          92CA14918EC0EE1A02C8CE033C29DCD906D5F92DD97EFF0A5863FDDE0B3D9529
          92CE95828C0F6A084A018ABD97197D9E750940D75280E3CC2484F999C1E121D7
          1FED114F2641D9E0FD18DBA71CF01DC03BF39013008C5C180D279BDE6848FBC3
          6B36EEBF259EF4C0B7A684DD4078B1EB9D00B08F0EF04EBE30E8B601E81E18E4
          AE55B870F12A78DF037117945CFA9A2600BE7EAC127A1CD774361EEC90CE6641
          EE833A01B578C5A702AE3CACA1ADF6411D83EA816FC0C8F927E11980B69A06B7
          317578F2DCBEE4F1212B09CEF1B90ACF027C0FA41DC9BF28E8408194D10254B4
          001F3CF99F5B142D20842C199E74B084B920608170877D2C6132E89958C2C41D
          F60560006FFE0A605B9D89A06D7542C13AD000EAE50AC6C480AD3F005CABC58A
          74C6823D938130C3D65BBF08B6961EFACD2AB560D087ED3682B55EAE2016159A
          37F47F0E00BF0602DA921659ED0000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
          F8000000097048597300000B1300000B1301009A9C180000000467414D410000
          B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
          75300000EA6000003A980000176F925FC546000003E44944415478DAB495CD6F
          546514C67FE7DEDB19684B5B5B21A5689504A8B030D4F0118D428D2E35D17F40
          DC0874C53F604C948D1B438C8B2A81448D51134322C64442828A2EB02602A508
          A47C58A0B4339D4E3B1F773AF7CEBDEF7B5C8C96193AB560C2D9DDF7BCB9CF7B
          9EF33CE788AAF230C3E12187000C0F75BF09EC49B8E981DAA47137622A851777
          0EA67E5EEE47B54C88C8C299373CD4BDD54DB61F7AF2F9031DEDBDDB418BA816
          01983A7F8CD4C8C903401DC0F0507707B0B5E628079C6F04EC01877AFADFEA58
          B5D6C1467FD42557F73D436AE4E46BC343DD9A70D33599F4926C2C0248B8E981
          D57DFDD8786C51D26D4AD2FFC6C788D383DAC91A3E2C68081AA2045CFA7A7049
          EA3C00333FBA34B78C03E3F7DF54A92F44CE1D16DDFCCAFB0FAC8E723EC3F8AF
          1F2C77CDF300929DCF11A64F634DBC9C54F0A72F7367F41B92ED7D3CB1FB0889
          F60D847E8644DB269ABB9EF2518DD556B8F0C5865689A7131E007119C2106A00
          F41EA2B04A217D919989DFE91D38CAAA75BB719C08C1604C0971A36BD6642700
          7237BEEB3295A07BDB3E5BF6FE7D9986016A62A4FA895A5315864071F62AE9F1
          53B4F60CB0E9F5D37809103B87D50A8AA2F10CAED7E9A3390032973E5D07EEF7
          0B4D26C841188031186329F929A6C68FD7D5D0FBC247AC7A7C3BAE771B5BC9A3
          5A7D808883B593A86D414D0113E6BD60EE7A9BAA7BF02E40E50EB13198B8C25F
          7F1E65E3AB3FB265E73B2016715CC41134BE88E828260840E5AEEA45C0CEA0A6
          05352D4C8F1EEF3151E5D68EC1DC35DDBF003081B106DF1FC74D76B2F2913568
          F00B6A2D180003D65469AB93A1A022108710CF8303C53B171F05E7BD3A1F6003
          621393B9798ADE5D1F42741D53CE026EBD49EFD178B5450251844615CA854C73
          90CFB4596D3E5A07608D25B631E234D1FED82E4CFE045840EC22DB354040E308
          2A11D9AB67D62ACE899D83A95CBD93D512946EB3A2630B62E6B041119CA6FB70
          2D2802718CC601C5F4D81AC57D7BD1A850B5CCDDFE89F52F7D86162F8335D50A
          FEDB750B28620CA5F48DB6B812FA3BF6173E5F3C8BA2086F65372D5D9B31535F
          FDC3BD596E8DA08E83231EAEB8CC4E8CF428EEB70D875D61E61ACDABB721C1CD
          2A9F4243AEC5F170C40111D45A4C1C919BBE4450CE1194665728CEBB0D015237
          CEB2FEE52FB1851190A6C67428D838642E7B8B527E92C09F2128CDA25A9903C6
          AC267FD8B13F7BA521C0CACEA76969ED42E7F37725A94AA990C2CF4D52F63304
          A559E2C8079531E01C7056243AE14A78A57FAF56C05F7A1FAC7FF620C5AB4798
          2FA698CFA708CB39C2720EB56415CE835C00F9CD734AC7FAF7A979A0A57FEEB0
          EC35B6F51390ACE24C0267404E5A4D9EAAD5F3FF0955E5EF01002B770A3C0E8B
          4FA80000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB0000000467414D410000B18E7CFB51
          93000000206348524D00007A25000080830000F9FF000080E9000075300000EA
          6000003A980000176F925FC546000005314944415478DAAC97CD6F134718C67F
          BBDEB5377688ED98F86313DB09488022992A871C90281724A4DE38F7C2AD87F6
          52A97F04AAD423FF0552857A08121C500EE90529DC0202077BE398B0D81B4C70
          FD31F6EEF482B736761227E595465ACDBE3BFBCCF33CF3CE8C22A5C4B22CC939
          4355555455FDA752A9FC74E3C68D3F010178C7E54B29C73BCAE5B294524ACFF3
          A4E779D2B22CE9799E9C14839CE1D66AB5E4C1C1817CFAF4E96F4004504F0230
          DCD4492F26259EF4CE755D62B1188542E18F8D8D8D5F80F049204618FCBAE3F1
          E3C76796A1DD6EA3280AD16894B5B5B5DF3736367E9E168432F080E7FD275B20
          10C075DDA901844221745D2791482084A0D168F0E4C9931FEFDDBBF717D002E4
          A91EF03C4FBAAE2B5DD7959665F9CFAEEB8EBCFBBAF5FB7D592C16A56DDB7E5E
          BBDD96D56AB5FDE0C1831F80194039CE03DF8401D775D9DFDF47D334666666B8
          78F122E1709876BBEDE4F3F9EF80DA97D531C68036E85C5E5E6600A25AAD92CF
          E74FFDB194124551104290CD660904027EBFEBBA743A9D04B0007C1E00F83AB4
          C143B95C1E61C0B2AC6367EB791EBAAE9F0A505114BE48706CB20F209FCFFBF4
          54AB5572B99C3F881002C771383C3CA4D3E98C008D46A398A6E9031A8CA1AA2A
          954A8561FD4F04303CE34020C0DEDE9E3FE35AAD46B7DB25994C924AA5D0340D
          CFF3F8FCF9338EE3E0380EE1709848243289014E0520A5249FCFFB1E78F7EE1D
          B95C8E66B3C9F6F6363333335CBF7E1D551D5DD6B3B3B32493490E0F0FA9D7EB
          A45229A2D1E8D824CEC5806559D8B64D381CE6EAD5AB0483C16307C96432E8BA
          4EB158646161C137E33431B20A064BEFE0E080603048B7DBA5502820A5440871
          E240737373341A0D745D279D4EA369DAB1469EC8806DDB006C6F6F532814B06D
          9B743A3DD8EDC674555515455146748EC56294CB65866BCA547B819492643249
          2291E0CE9D3B7E7D8FC5626385637803EAF57A08211042D0EBF5300C83402040
          2693219BCD8E97DD932418364C2010A0DFEF631806AAAA8EE93FC9DD03509EE7
          B1B7B787AEEB670390CBE5E8F7FBBE1C9148847EBF8FA669F47ABDA9E81442A0
          AA2AA669621806A552E9FC0C1886C1D1D111A669FA7A9FC680E338B45A2D6AB5
          1AC0545ED00689D96CD667E0C3870FA45229767777999F9F47D3B4538B4ABFDF
          C7B66D96979749A552E8BACEEEEEEEF40C7C299B3E03CD6693783C8EE33898A6
          4928143A96012104EFDFBFF79918ACA83331B0B4B4E43350ABD5C8643200BC7A
          F58A56ABC5D2D21286618CD13EF879A552616565C5FF4ED775DEBC79333D80FD
          FDFD110606338AC7E374BB5D8AC522E17098F9F97982C12042088E8E8EB06D9B
          5028443299A45EAFA3288A5F37CECC8010024551FCBA3E1C1F3F7EA4D56AF1F6
          ED5BBFCF300C4CD36476769666B349A7D3E1D3A74FACACAC108944D8D9D9990E
          C0E04433CCC040C791644DC334CD8987D26EB74B3A9DA652A9605916172E5C98
          9E01D775595C5C4408C1E6E626854281858585639D3FA9C04829A956AB5CBE7C
          99D7AF5FA3EBFAD90054AB55005657577D239E35745DC7711CAE5DBBC6CECE0E
          894482B5B5B5D9172F5E28271ECBB7B6B6E4FAFA3ADD6ED7D73B1E8F9FEBAAD6
          6EB769341ACCCDCDF1F2E54B229148F1FEFDFB771F3D7AF41AE87DCD9E22A564
          737353DEBA756BE450BAB8B878DEEB22F57A9D4EA783A228944A25344DFBFBE6
          CD9B77818F52CAFE44099E3D7B363248B158E4FF442814E2CA952BA4D3694AA5
          D225E0E2974BCA3880DBB76F47812C10E51BC6C3870F7F5D5D5DFD7E6B6B6B13
          080281891E5014453FEDF87CCE08AEAFAF5F7AFEFC7913F804D852CAF670C2BF
          030023356EB08D6317150000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1300000B1301009A9C1800000A4F694343505068
          6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
          DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
          114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
          7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
          11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
          07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
          801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
          7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
          450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
          305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
          99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
          99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
          BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
          EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
          E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
          814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
          582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
          00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
          6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
          44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
          801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
          3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
          21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
          46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
          74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
          6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
          128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
          51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
          37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
          DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
          E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
          B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
          DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
          197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
          0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
          E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
          C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
          D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
          744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
          AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
          53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
          4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
          35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
          8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
          4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
          6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
          A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
          67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
          DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
          1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
          9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
          D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
          EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
          7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
          F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
          0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
          D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
          C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
          17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
          8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
          91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
          31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
          C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
          2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
          B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
          6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
          1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
          66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
          CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
          61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
          FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
          D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
          F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
          625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
          F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
          E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
          9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
          DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
          D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
          058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
          AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
          1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
          D0A7FB93199393FF040398F3FC63332DDB0000000467414D410000B18E7CFB51
          93000000206348524D00007A25000080830000F9FF000080E9000075300000EA
          6000003A980000176F925FC5460000040F4944415478DAB4964D4F1B5718851F
          930082507045208991B170511B12AC486D12DA8D17ADD445512BFA91B2F1B262
          C34F60CFAE4BC4A61BA42CA2A0440DD04614088612C91110A76D682C0AD4C880
          E346C876F8B0C766E6ED02706CCF30C6441CE96A66EE6866CE3DF33EF75E8B88
          70A8A9A9A9371745686767E797F6F6F65B800268C77926F35D11C934AFD72B22
          22AAAACA8BB17BA2AAAA689A96D35455CD69D168546666666464642408D40067
          8E6B40442831BAD9DFDF0F80A669BA262299735555492412B85C2EAC56AB6378
          78F84FA0FAB8260063035D5D5D85A33B502412616D6D8DB6B636AC566BE3D0D0
          D0B3624C58F26B20647102703D35CB5CD98D822FD85E9DE7A6CBC935D7554404
          9FCFC7C6C6C6446767E7B7C0D6513571F8DDB3F9373C6E3BA9548A9569E8FCE4
          22BBBBBBC462B1230DFCBD538E7F7E16FFFC2CCDCDCD343535A1AAEA67401D90
          0212C74EC0EBF5CA5AC97B3909C4C34BB45E2C39091CC462B1D18E8E8EAF8DE8
          30A460727252444492C9A4BC18BB278AA248301894D3A0C3900211E1F67488C1
          27FF0170D71761C4B772AA74E80C78DC76BEBB5907C0ADB67ADADB9A4E958E9C
          1A9898989070E9FB8635502C1D6AF8191F5D6DA2A5A5C5900E11D17414689A86
          C76DA7AFAF0F3EB8C437D76BD9D850585F5FD7D161B1584C53181F3FCBE0E020
          8D8D8DA674E424303A3A2AAF2AAEE812B87AC1423E1D663AFF4E19E59614B184
          0625A5EC282A000E4B10B7DB7D03581691A82E015555F1B8ED6C6D6DB1FE043A
          3E7C97EDED160281001EB71D4551F8F777F8FEE30BBA04B207924DD6E1756565
          255EEF32405976EDE97EC1EDE9D0FE48819F9F46898797B8524F4EFF5D5FE404
          B3C2260DA25F6C730CECEDEDE171DB89C562BC9C832FAF55137338595E5EC6E3
          B6934C2609CEECD3614642F6F1B0555555F1E8D13F850D648F74F88FD7C4C32B
          5C3E2F39FD87F344718A72A95002E9741A8FDBCEE6E626AFFCF045EB39B61C4E
          16171775749851609440757535636381C206B247FAEBF31DE2E1159AADFBB551
          E3FA0A52B3DC9FDB3C410271EA34CDDC402A95E207B79D482442F42FF8FC7239
          0987938585051D1D4026857C028C52B05AAD3C7CF8DCDC403299CC49E0B78042
          3CBC82E39C9E8EE2B5855555CD0D288A92F3AF3F6D3E43DAE1C4EFF7EBE8C84E
          E0A87920FBBCB6B696070F9E9A1B4824F6F70EDDDDDD04C6EF63B3D9585D5D35
          A4A378ED52B1B757D8404F4FCF9B8EC979005A5B5B7574145A15F313A8AFAFE7
          CE9DC7E6067A7B7B6B00FBC10622A3818181C7F97414AD40082D95323770B042
          85809785E828761EB0D96CFCB458D840FAA051888EA2B51442519482060C6544
          C77112C8564343033FCE264F66C0888E9328997C0B03467464F67506691C5739
          3B229317551BD17142C5819088BC2EC640295071707C5BA5818488A401FE1F00
          555574C6572FC7550000000049454E44AE426082}
      end
      item
        ImageFormat = ifPNG
        ImgData = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000097048597300000B1300000B1301009A9C180000000467414D410000
          B18E7CFB5193000000206348524D00007A25000080830000F9FF000080E90000
          75300000EA6000003A980000176F925FC546000007BE4944415478DAC4976B6C
          5BE519C77FB68F7D92F812A74EE234499DB6D0D24B4293343445B450DA95569D
          D8BA4DEA26409D368D2F08B14D1A20ED23624362B702EDD83E4025BA4D13DA55
          2A8352B5836A6B03691A278134366D4962A7BE24B57D8EED1C5FCE651F6207A7
          750794497BA4473AE7D539EFFFFF7FDEE77D9EF7351986C1FFD34CD5060FBDF0
          4E83D96CE9D5B4E2EDC06A8BC57AA7C96472DB6C355B01F2792570ECD8B30706
          DF3F711998076E598500F0D2E17FF50A82F590AE6B1E41B06D70386CD81D22EE
          865A2C5681862607451D9C1E27050D26CE4FDEB17BF723BF1D7CFFC463C004A0
          7CD14808878F9C1D1F18BC6A2845C3508A86912D184652318C58C6304292615C
          4E18C6C539C3188D19C67B53AA71F4D8A8F1B5AF3FFE32705B59C8AD98A5FCE0
          F5FA26ED75ED0FAD5DD784D96CA6A8B3C4551D8ADA82AB98111C75D4EACE3BDE
          3EF1DABF81D8AD46A14CC0F0FBDF89F6F5EDE9F33436DEE6F6D81780346E2052
          766C225A5615AD58C5F1F1810BC03540FFBC04CC15CF99D9D9F0D18BE331D4B2
          E20AD5C52A64ECBEE5F46FDDB71BB803A8BF95085412D05F7CE189E3C9841C9B
          BB365F5D797909B40582269793FA46AFA3A777E70EC07BDD7C9F9B00C07C3A9D
          3C199E96AAAAAE1619CB3237DD9BEEDB022C076ABE28012D9188FEFD5A3CBD44
          B5FA5FF2C1A877D3BE62AD0F68039C5F9400E15070209D9ABF51F14DF241ABA9
          A3A9A9BD0168011CFF8B4A281C3E7276BAFFC12DCB75B385820E05ADBA177530
          0C3086DF21F0C1F10F5B5B97AB569B2DA716D570229178F3A7CF3DFB27200BA8
          9F5A072ACCD8B3F7E037EB5B1ADB4CA27883EACA881806A46626B93CF816CE9A
          9AE607F6EE6C59B9B2A3BDB5AD7583015FE9DCD8B52E9BCD5E8C44222940BB69
          29BE9E80AEEB9256A510A91A24676799098E13FDE843663E388F5EC86177D4A2
          78DCF887C7D971FFDD98CD16EAEB5D38EC8EFD6E77FDE6951D2B9FFECB5FFFFC
          26205F5F2B9610F8E52F0E35582C966F984C13EDD2AC877A6717AA0E5313E35C
          1A1E6426384E72668ADA5A11B7DBC5C6F51DB4B636D1D4ECA1A1A11EA7B38E68
          34467373138220D0D9B5014FE3B215A258F3AAD7EB7DE9E5DFFCFA57C06CE592
          98CAC056ABF5198BC57270CDDA35AE0E9F8F33031F33383CC2A5E1416C362B2E
          9783C6A665B4B636D1DCD288C7E3C6E57250532B022672B93C524A667636C1B2
          652E367577A2EB3A866190C96419F18F72EEDCD923AF1E7DE579E06A9984F0E2
          0B87770A827074CDDA35BE9E9E6E1C8E8544DE2DD6F0C1F933DC7D4F0F2D2D4D
          343635E076BBA8B3D762B198291655D2728650284A3C3A47767E9E66AF87952B
          57E0EB685BB2A60E879D8D9DEB0987C35F05DE0232400240B05AADA776EDDA89
          AFC3B7E4276F4B33CFFCE4692E0C0D63B509E89A4E36AB100E4589C7AF716D36
          81D96266D56A1F77F56FC2D7D186C56241D775745D47D3340CC3209F2F204912
          894412552DD600AB81B14502008542A1EA16B1D96C74F76CE2F4A977191D0920
          4B69BC2D8DACF0B5B26FDFFD385D2E745D5B045D0839140A45D2E934B22C93CF
          17C8E7F32413494451B40176C0B62409C7C6C68844A36CDFBEAD2A891DF76FA7
          A5C58BAFA39DDADADA0AC04F7696A2E448A7D3A4522972B9FC42595535645946
          5114DC6E37AAAABA00B172FB9B0136766E201A8970F2ED93689A568584958D9D
          EBB1DBED8B63AAAA924CA6989A9A667C7C828F3EBA44341A2397CB2F2ABE72E5
          326FBC719C96E52DD4D9EB104591AEAE3B570375656C014010043675DFC9887F
          94378EFF835D5FDAB9086618068651064C924A49C8B244363BBFB489A81A8AA2
          90CD668946A30C0C9CE3D4E95328CA3C0F3DFCF062D43A7C1D2BC6C646DDA548
          288B75E07A12FD5BFBB15A0564394D32992493C9DC0058282EAC6F3E97479625
          FC23230C0C9C25180C2EF9F6C2D010ADAD6DF8FDC35747C746A74B4B202C4640
          D77404AB80288AF46EEE65F8829FF706DEA3CE5E87AEEB148BC5455055552916
          8B64B31982C120E17018FF889F7038B40474D7AE5D8B2E4932E31F5E54254992
          A7A7A72E968A5101409065F96F7EFFE8FE2DFD7D58AD566C36135BEFDEC2D0F9
          0BC8928C58232E4E3A737586A3475F21140AA328F337E44A25A8D3F94967763A
          9D34367A04AFB7795D5F5FDF53434343E9DFFFE177D3806A02DA9EFCD153AF76
          77F73CD0D3DB8DDB5D0F989024894B972EDF00F2E0835FFE4CA09596CBE5999B
          9B23168DA1693AA954EAE31FFCF089EF007E0198FBD9CF9FFFFE238F1C7C5251
          94EFDEB7E35E1A1A1A1045F1A63DBC12D4E5722DD474936989E77239E2F15922
          57234892AC068281783C1E8B9C3E7D2A108FC7AF002EC0563E0F8840DB8103DF
          7A6CDB3DDB1EBFF7DEEDA2DD6167622250B1CF15724A8E443241575727AB56AD
          C26C5E00339BCD984C26142547241221341D26140AE5028189E8D973678381C0
          C42430074481192052EA07F1F22EC803D3AFBFFEC743F1786C06786EF5EA5562
          269D59C8F27C9E7038ACBE7BE69F894020187EF47B8FB6C736C49BB7F4DF8528
          8A84C3334C7E3CC9D4D45425E815200E8480E912B8546AC959A00818A62AE703
          4FDFE6BE3D7BF6ECFD712C1623180CCC8D8C8E4C4A92942CFD3C0B640E1EFCF6
          FECDBD7DBB73B99C36317131560574AAA434510256AADD1B4C3739273600EB80
          35A5F7B992CBA54E56003CC046E0F6D23C91CF0AFAA9B7E3D2785D295128DD80
          E74B3DBC7C13B69688BA4BDFA73F2B68A5FD6700621944F54EFC7B8400000000
          49454E44AE426082}
      end>
    Left = 88
    Top = 424
    Bitmap = {
      494C010100000800080001000100FFFFFFFF0400FFFFFFFFFFFFFFFF424D7600
      0000000000007600000028000000040000000100000001000400000000000400
      0000000000000000000000000000000000000000000000008000008000000080
      8000800000008000800080800000C0C0C000808080000000FF0000FF000000FF
      FF00FF000000FF00FF00FFFF0000FFFFFF0000000000}
  end
  object PopupMenuPrintBtn: TPopupMenu
    Left = 152
    Top = 256
    object line11: TMenuItem
      Caption = 'ActionPrint'
    end
  end
  object GroupImageList: TImageList
    Height = 24
    Width = 24
    Left = 152
    Top = 312
    Bitmap = {
      494C010105000800B40118001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000003000000001002000000000000048
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000793D2A008644240086442400753A2A0000000000000000000000
      00000000000000000000000000000F68C3000F68C3000F68C3000F68C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008644
      240086442400CC670000CE650000CE650000CA640000753A2A00753A2A000000
      0000000000000F68C3000F68C3000A7EEB000A7DEC000073EA00006EE6000F68
      C3000F68C3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A55B2600D476
      1600D16B0000CB630100D4761600D57A1D00CC670000CF630000CB6301007545
      3500136DC8002794EF00319BF40064B1F4001786ED003C97EF0067ACF2001B82
      EB000071EA000F68C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A55B2600DE862B00D57A
      1D00D8873300EFCEAC00FFFCFA00FFFFFF00F9E9D800DE954C00D26100006B6F
      72002398F3002FA0F60051AEF500ACD7FA00B8D9F900E1EFFD00D0E6FB00B8D9
      F9000E78E9000071EA000F68C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A55B2600E18B3600DE8F
      4000FDF1E500FCF5EE00E5AE7600DF9D5C00F0D3B600DE8F4000B25C0F002A83
      D20044B5FF003AA6F60036A2F50063B4F600E2F2FE004CA3F200047CEB003C97
      EF002488EC000070E9000F68C300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AE5D1C00E6994A00EAA55E00F5D9
      BD00FFFFFF00EFCEAC00E2A46600E2A46600CF6E0D00D2610000A071430036A2
      F5004EB9FB0044AEF70036A2F5002398F300CCE7FC0045A3F2000C82ED000C82
      ED00097BEA000376EA000073E9000B6BCD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD691F00EAA55E00EDB07200FEFB
      F700FCF3EA00EDC29600EEC59B00EDC29600D8873300D86700006B6F720044B5
      FF0056BFFC0049B2F90049B2F90086C8F900E2F2FE00A0D1F90064B1F4001889
      EE001283EC000A7EEB000376EA00086DD4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD691F00F0AF6B00F2B67900FEF5
      EB00FEFAF600FEFAF600FEFAF600EEC59B00E1A25E00DA6C0000897A6B004ABA
      FF005DC6FF0051BBFB004EB6F90098D3FB00F8FDFF0098CFFA0063B4F6002090
      F0001A8AEE001384EC000A7DEC000A6DD2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD600B00F0B27400F3B06B00F6CF
      A800FFFFFF00EEBC8800E18B3600DE862B00DE954C00E6994A00A071430047AF
      FE0066CDFF005BC3FE004EB9FB0056BAFA00F1F9FE0051AEF5002398F3002999
      F4002292F1001A8AEE001283EC000E6DCC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD600B00FCC58B00F2B6
      7900F9E9D800FFFFFF00FCE3CC00F5D9BD00FEFBF700FDF1E500E18B36005C9D
      DE0067D1FF0067D1FF005DC6FF0058BDFC00E2F2FE0066BBF8005AB5F700ACD7
      FA002495F1002292F100136DC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD600B00F2B67900FCC5
      8B00F5B97B00F8D9B800FDF1E500FEF5EB00FCE3CC00B89558007F6817003364
      370020765A00398F8B004CA8C30056C1FF007CCEFF00A4D8FC0098D3FB0086C8
      F9002C9DF5002794EF00136DC800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BD600B00EDB0
      7200FCC58B00F8BB7B00FBB77400E1A25E005364190002670500008D1200049B
      0C00049B0C00018C0400036B060020765A004DB4E6005BC3FE0056BAFA003EAD
      F90035A0F0001775D10000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BD60
      0B00BD600B00E79F6100DB9F620030651C00008D120001B4140000B106005BD0
      670061D16C0000B1060001B51200018C0400116328004BAEE30047AFFE001775
      D1001775D1000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BD600B002C4D07000C9626000FBD2E0036C14800ACE5B100FEFA
      F600DDF5E400ACE5B1002BBD390005B71600059307000E5F3F001775D1000000
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
      000000000000000000000878210026C14D0026C14D00F6FCF700A6E3AD00FEFA
      F6007CD685008CDC9900E7F8E90018B7260005B716000E5F3F00000000000000
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
      00000000000002670A0022A7480029C35D003DC56400ADE7BB001AB93800FEFA
      F6005FCD6B0013B62600FFFFFF003EC34B0001B51200089D1500044E05000000
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
      0000000000000B7716002DBC610031C56B0029C35D0018BC450008B53200FEFA
      F6009AE0A400A6E3AD00EAF9EE001DB82B0004B2150008A71700045408000000
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
      0000000000000D8B1A002DBC610031C56B002AC1650046C97700BAEBCB00FEFA
      F600EAF9EE00ADE7BB0034C0470004B215000AB61B0008A71700045408000000
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
      0000000000000B8E150028B6550031C56B0034C46C00DDF5E400BAEBCB00FEFA
      F6007AD7950001B2250001B2250013B626000AB61B00089D1500044E05000000
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
      000000000000000000000FA11D002FC46B0046C97700FFFFFF0055CE8400FEFA
      F6007AD7950044C86A007AD795001AB9380011BC2B0005570A00000000000000
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
      000000000000000000000FA11D0029BE5D002FC46B00BAEBCB00DDF5E400FEFA
      F600BAEBCB00EAF9EE00ADE7BB0018BC45001AAC380005570A00000000000000
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
      000000000000000000000000000014A8280029BE5D0031C56D0078D99F00FEFA
      F600CAF1DA0078D99F0029C6620021B64A000B6C160000000000000000000000
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
      00000000000000000000000000000000000010A4200010A4200022BC5A002EC1
      66002EC1660022BC5A000B7716000B7716000000000000000000000000000000
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
      000000000000000000000000000000000000000000000000000010A4200011A0
      24000C9626000D8B1A0000000000000000000000000000000000000000000000
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000019ACF00019ACF00019ACF00019ACF0000000000000000000000
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
      0000019ACF006BCAE9006AD2F70048C2EE001DA9DB00019ACF00019ACF00019A
      CF00019ACF000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB660100CB660100CB660100CB66
      0100CB660100CB660100CB660100CB660100CB660100CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000019ACF0030AED90090E1FD006ED8FF0075DBFF0078DDFF0074DAFF0046C0
      ED0020ABDC00019ACF00019ACF00019ACF00019ACF00019ACF00000000000000
      000000000000000000000000000000000000FEFBF700FEF8F100FEF6EC00FEF2
      E400FEEFDE00FEEBD600FEE9D000FCE6CA00FCE6CA00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB660000CB660000CB660000CB66
      0000CB660000CB660000CB660000CB660000CB660000CB660000CB660000CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A35228000000000000000000000000000000
      0000019ACF0014A4D40074CEEF0072DAFF006FD8FE0070D8FE0070D8FE0073DA
      FF0078DDFF0076DBFF0076DBFF0055C7F2003BBAE80037B7E600019ACF00019A
      CF0000000000000000000000000000000000FEFBF800FEF9F400FEF7EF00FEF3
      E600FEF1E100FEEDDA00FEEAD300FDE8CE00FCE6CA00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFCF900FEFAF500FEF9F200FEF6
      EC00FEF3E600FEF1E000FEEEDB00FEECD600FEE9D100FEE8CD00FEE6CB00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FEF7EF00FEF5EA00FEF4
      E800FEF2E400FEF0DF00FEEEDC00FEEBD600FEEAD400FEE8D000FEE7CD00FDE5
      C900FDE3C500FEE1C100FEDFBD00FEDEBB00FDDDB900FDDBB400FDDAB200FDD8
      AF00FDD7AD00FDD6AB00FDD6AB00A35228000000000000000000000000000000
      0000019ACF001CA7D70041B6DE0087E4FF0071DCFE0075DCFE0075DCFE0075DC
      FE0075DCFE0075DCFE0076DDFE0077DEFF0079DEFF007BE0FF006ED7FB00019A
      CF0000000000000000000000000000000000FEFBF900FEFBF700FEF8F100FEF5
      EA00FEF2E400FEEFDE00FEEBD600FEE9D200FCE6CA00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFB00FEFCF800FEFAF300FEF7
      ED00FEF4E800FEF2E300FEF0DF00FEEDD900FEEBD400FEE9CF00FEE7CC00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FEF8F100FEF6ED00FEF5
      EA00FEF3E60073727300FEEFDE00FEEEDB00FEEBD60073727300FEE7CE00FEE6
      CB00FDE4C70073727300FEE1C100FEDFBD00FDDDB90073727300FDDBB400FDDA
      B200FDD8AF0073727300FDD6AB00A35228000000000000000000000000000000
      0000019ACF0039B5DE001BA6D50091E4FA0078E3FF007CE2FE007BE2FE007BE2
      FE007BE2FE007BE2FE007BE2FE007BE2FE007BE2FE007DE3FE0074DDFB003DBD
      E600019ACF00000000000000000000000000FEFBF900FEFBF900FEFAF500FEF7
      EF00FEF4E800FEF1E100FEEEDC00FEEBD600FDE8CE00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC00FEFCF900FEFBF600FEF8
      F000FEF6EC00FEF4E700FEF1E000FEEEDB00FEECD600FEEAD200FEE8CD00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FEF9F200FEF7EF007372
      7300737273007372730073727300737273007372730073727300737273007372
      7300737273007372730073727300737273007372730073727300737273007372
      7300737273007372730073727300A352280000000000019ACF00019ACF00019A
      CF00019ACF0045BCE60021A8D80062C9E70087EDFF0080E8FE0082E8FE0083E8
      FE0082E8FE0082E8FE0082E8FE0082E8FE0082E8FE0083E9FE0079E3FA006FDE
      F600019ACF00000000000000000000000000FEFBF900FEFBF900FEFBF700FEF8
      F200FEF6EC00FEF2E400FEEFDE00FEECD800FEE9D200CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC00FEFDFA00FEFBF700FEFA
      F300FEF7ED00FEF5E900FEF2E300FEEFDD00FEEDD900FEEAD300FEE9CF00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FEFAF500FEF9F2007372
      7300FEF6ED00FEF4E800B9CBF200195BF600102E7C00FEEDD9009FCF9900048C
      03000C561300FDE4C800D5C4BF00C7724400813E2900FEDEBB00A4CBF500195B
      F600143C6E00FDD8AF00FDD7AD00A3522800019ACF006BCAE9006AD2F70048C2
      EE00019ACF004BC1EB0048BCEA0028ACD8009AF3FC0084EFFF0087F0FF0087F0
      FF0087EFFF0088EFFF0088EFFF0088EFFF0088EFFF008AF0FF0080E9FB006EDF
      F4006FDFF400019ACF0000000000000000009933000099330000993300009933
      00009933000099330000993300009933000099330000CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC00FEFDFC00FEFDFA00FEFA
      F400FEF8F000FEF5EA00FEF4E700FEF0DF00FEEEDB00FEECD600FEE9D100CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FEFBF700737273007372
      7300FEF6ED00FEF4E800B9CBF200195BF600102E7C00FEEDD9009FCF9900048C
      03000C561300FEE6CB00D5C4BF00C7724400813E2900FEDEBB00A4CBF500195B
      F600143C6E00FDD9B100FDD8AF00A3522800019ACF0030AED90090E1FD006ED8
      FF00019ACF0052C4EE0060C9FA0023A9DA005CC5E300A7F6FC009FF6FD009DF7
      FE009AF9FE0090F7FF008CF5FF008EF5FF008EF5FF008FF6FF0086EFFB0071E4
      F4009DFDFF00019ACF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000057
      00000000000000000000CB660100993300009933000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000993300009933000099330000CB660000000000000000
      000001650000000000000000000000000000A3522800FEFCF800FEFAF5007372
      7300FEF7EF00FEF5EA00B9CBF200195BF600102E7C00FEEEDC009FCF9900048C
      03000C561300FEE7CD00D5C4BF00C7724400813E2900FEE0BE00A4CBF500195B
      F600143C6E00FDDAB200FDD8AF00A3522800019ACF0014A4D40074CEEF0072DA
      FF00019ACF0065C9F20068D0FF0056C4F70022A9DB001AA5D5001DA7D50020A7
      D6002FAFD90098E7F500ACFAFF00A0F8FF009FF7FF00A1F8FF0098F2FB0084E6
      F400B5FFFF0093EBF500019ACF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005700000057
      00000000000000000000CB660100FEFBF700FEF8F100FEF6EC00FEF3E600FEF0
      E000FEECD800FEEAD300FDE7CD00FCE6CA00FEFDFC00FEFDFA00FEFCF800FEFB
      F600FEF9F200FEF7ED00FEF5EA00FEF4E700FEF1E200FEEFDD00FEEEDB00FEEC
      D700FEEBD400FEE9CF00FEE7CC00FEE6CB00FEE5CB00CB660000000000000000
      000001650000016500000000000000000000A3522800FEFCF900737273007372
      7300FEF8F100FEF7EF00B9CBF200195BF600102E7C00FEEFDE009FCF9900048C
      03000C561300FEE8CF00D5C4BF00C7724400813E2900FEE1C100A4CBF500195B
      F600143C6E00FDDBB400FDDAB200A3522800019ACF001CA7D70041B6DE0087E4
      FF00019ACF0072D0F30073D8FF006ED5FE0069D2FD0059C8F60055C7F30051C5
      F20039B7E60022A7D70080D1E900D4FAFE00C9F9FF00C5FAFF00BAF3FB00A3E6
      F300DBFFFF00D2F8FC0038B3DB00019ACF000000000000000000000000000000
      000000000000000000000000000000000000000000000057000092D89F000057
      00000000000000000000CB660100FEFBF800FEF9F400FEF7EF00FEF4E800FEF1
      E100FEEEDC00FEEBD600FDE8CE00FCE6CA00FEFDFC00FEFDFB00FEFCF900FEFB
      F600FEF9F300FEF7EF00FEF6EC00FEF4E700FEF2E300FEF1E000FEEFDC00FEED
      D900FEEBD400FEE9D100FEE8CD00FEE7CC00FEE5CB00CB660000000000000000
      0000016500005EA676000165000000000000A3522800FEFCF900FEFBF8007372
      7300FEF9F200FEF8F100B9CBF200195BF600102E7C00FEF1E1009FCF9900048C
      03000C561300FEE9D200FEE7CD00FEE6CB00FDE4C700FEE2C300A4CBF500195B
      F600143C6E00FDDCB600FDDAB200A3522800019ACF0039B5DE001BA6D50091E4
      FA00019ACF0079D5F3007DE2FF0078DFFE0078E0FE0078DFFE0077DFFE0076DF
      FE0076DEFE005DCEF4001EA8D80036AFD900B3E1F000DEF5FA00DBF5FA00D1F0
      F800F2FFFF00FEFFFF0091D7EC00019ACF000000000000000000000000000000
      0000000000000000000000000000000000000057000092D89F0092D89F000057
      00000000000000000000CB660100FEFBF900FEF9F400FEF7EF00FEF5EA00FEF2
      E400FEEFDE00FEECD800FEE9D200FDE7CB00FEFDFC00FEFDFC00FDFCFA00FEFB
      F600FEF9F300FEF8F000FEF6EC00FEF4E800FEF3E400FEF1E000FEEFDD00FEED
      D900FEEBD400FEEAD200FEE8CE00FEE7CC00FEE5CB00CB660000000000000000
      0000016500005EA676005EA6760001650000A3522800FEFCF900737273007372
      7300FEFAF500FEF9F200B9CBF200195BF600102E7C00FEF2E4009FCF9900048C
      03000C561300FEEAD400FEE8D000FEE7CD00FDE5C900FDE3C500A4CBF500195B
      F600143C6E00FDDCB600FDDBB400A3522800019ACF0045BCE60021A8D80062C9
      E700019ACF007DDBF30085EDFF0081E8FF0081E8FF0081E9FF0081E9FF007FE8
      FF007DE8FF007EE8FF0077E4FC003EBEE50013A4D500019ACF00019ACF00019A
      CF00019ACF00019ACF00019ACF00019ACF000000000000000000000000000000
      000000000000000000000000000000000000000000000057000092D89F000057
      00000000000000000000CB660100FEFBF900FEFBF800FEF8F200FEF6ED00FEF4
      E800FEF0E000FEEDDA00FEEAD300FDE7CD00FEFDFC00FEFDFC00FEFDFB00FEFB
      F700FEFAF400FEF8F100FEF7ED00FEF5EA00FEF3E600FEF1E200FEF0DF00FEEE
      DA00FEECD600FEEAD300FEE9D000FEE7CC00FEE6CB00CB660000000000000000
      0000016500005EA676000165000000000000A3522800FEFCF900FEFCF9007372
      7300FEFBF700FEF9F200B9CBF200195BF600102E7C00FEF3E6009FCF9900048C
      03000C561300FEEBD600FEE9D200FEE8CF00FEE6CB00FDE4C700A4CBF500195B
      F600143C6E00FDDDB900FDDCB600A3522800019ACF004BC1EB0048BCEA0028AC
      D800019ACF008EE4F4008FF8FF008CF3FF008CF3FF008CF3FF008AF2FF0097F9
      FF00A3FFFF00A0FEFF009FFEFF009EFEFF009CFDFF00A0FFFF007AE8F700019A
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000005700000057
      00000000000000000000CB660100FEFBF900FEFBF800FEF9F400FEF7EF00FEF4
      E800FEF1E100FEEEDC00FEEBD600FEE9D000FEFDFC00FEFDFC00FEFDFB00FEFC
      F800FEFBF600FEF9F200FEF7ED00FEF6EC00FEF3E600FEF2E300FEF0DF00FEEF
      DC00FEECD700FEEBD400FEE9D000FEE8CD00FEE7CC00CB660000000000000000
      000001650000016500000000000000000000A3522800FEFCF900737273007372
      7300FEFCF800FEFAF500B9CBF200195BF600102E7C00FEF4E8009FCF9900048C
      03000C561300FEEDD900FEEBD600FEE9D200FEE7CD00FEE6CB00FDE3C500FEE2
      C300FEE0BE00FEDEBB00FDDDB900A3522800019ACF0052C4EE0060C9FA0023A9
      DA00019ACF0096DEEF00A9FFFF008DFBFF0091FBFF0091FBFF0097FDFF0085E8
      F400019ACF00019ACF00019ACF00019ACF00019ACF00019ACF00019ACF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000057
      00000000000000000000CB660100993300009933000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      0000993300009933000099330000993300009933000099330000993300009933
      00009933000099330000993300009933000099330000CB660000000000000000
      000001650000000000000000000000000000A3522800FEFCF900FEFCF9007372
      7300FEFCF900FEFCF800B9CBF200195BF600102E7C00FEF5EA009FCF9900048C
      03000C561300FEEEDB00FEEDD900FEEAD400FEE8D000FEE6CB00FDE5C900FDE3
      C500FEE1C100FEDFBD00FEDEBB00A3522800019ACF0065C9F20068D0FF0056C4
      F70022A9DB00019ACF00C4F5FA00AFFFFF00ADFFFF00AEFFFF009DF3F900019A
      CF009FF7FF00A1F8FF0098F2FB0084E6F400B5FFFF0093EBF500019ACF000000
      0000000000000000000000000000000000009933000099330000993300009933
      00009933000099330000993300009933000099330000CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFA00FEFBF600FEF8F100FEF6
      EC00FEF3E600FEF1E000FEEEDB00FEECD600FEEAD200FEE8CD00FEE6CB00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FEFCF900737273007372
      7300FEFCF900FEFCF900FEFAF500FEF9F200FEF8F100FEF6ED009FCF9900048C
      03000C561300FEEFDE00FEEEDB00FEEBD600FEE9D200FEE8CF00FEE6CB00FDE4
      C700FEE2C300FEE0BE00FEDFBD00A3522800019ACF0072D0F30073D8FF006ED5
      FE0069D2FD0059C8F600019ACF00019ACF00019ACF00019ACF00019ACF00D4FA
      FE00C9F9FF00C5FAFF00BAF3FB00A3E6F300DBFFFF00D2F8FC0038B3DB00019A
      CF0000000000000000000000000000000000FEFBF700FEF8F100FEF6EC00FEF2
      E400FEEFDE00FEEBD600FEE9D000FCE6CA00FCE6CA00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC00FEFCF800FEFAF300FEF7
      ED00FEF5E900FEF3E400FEEFDD00FEEDD900FEEAD300FEE9CF00FEE6CB00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800FEFCF900FEFCF9007372
      7300FEFCF900FEFCF900FEFBF800FEFAF500FEF9F200FEF7EF00FEF6ED00FEF4
      E800FEF2E400FEF0DF00FEEFDE00FEEDD900FEEBD600FEE9D200FEE7CD00FDE5
      C900FDE3C500FEE1C100FEE0BE00A3522800019ACF0079D5F3007DE2FF0078DF
      FE0078E0FE0078DFFE0077DFFE0076DFFE0076DEFE005DCEF4001EA8D80036AF
      D900B3E1F000DEF5FA00DBF5FA00D1F0F800F2FFFF00FEFFFF0091D7EC00019A
      CF0000000000000000000000000000000000FEFBF800FEF9F400FEF7EF00FEF3
      E600FEF1E100FEEDDA00FEEAD300FDE8CE00FCE6CA00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC00FEFCF900FEFAF500FEF8
      F100FEF6EC00FEF3E600FEF0DF00FEEEDB00FEECD600FEEAD200FEE7CC00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800EAC07900EAC07900EAC0
      7900EAC07900EAC07900EAC07900EAC07900EAC07900EAC07900EAC07900EAC0
      7900EAC07900EAC07900EAC07900EAC07900EAC07900EAC07900EAC07900EAC0
      7900EAC07900EAC07900EAC07900A3522800019ACF007DDBF30085EDFF0081E8
      FF0081E8FF0081E9FF0081E9FF007FE8FF007DE8FF007EE8FF0077E4FC003EBE
      E50013A4D500019ACF00019ACF00019ACF00019ACF00019ACF00019ACF00019A
      CF0000000000000000000000000000000000FEFBF900FEFBF700FEF8F100FEF5
      EA00FEF2E400FEEFDE00FEEBD600FEE9D200FCE6CA00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC00FEFDFB00FEFBF700FEFA
      F300FEF6EC00FEF4E800FEF2E300FEEFDD00FEEDD900FEEBD400FEE9CF00CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800D1751D00D4761A00D476
      1A00D4761A00D4761A00D4761A00D4761A00D4761A00D4761A00D4761A00D476
      1A00D4761A00D4761A00D4761A00F1C08000DE8C3F00D77C2300F1C08000DE8C
      3F00C77244001C56DA00D1751D00A3522800019ACF008EE4F4008FF8FF008CF3
      FF008CF3FF008CF3FF008AF2FF0097F9FF00A3FFFF00A0FEFF009FFEFF009EFE
      FF009CFDFF00A0FFFF007AE8F700019ACF000000000000000000000000000000
      000000000000000000000000000000000000FEFBF900FEFBF900FEFAF500FEF7
      EF00FEF4E800FEF1E100FEEEDC00FEEBD600FDE8CE00CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFDFC00FEFDFC00FEFCF900FEFB
      F600FEF8F000FEF6EC00FEF3E600FEF0DF00FEEEDA00FEECD600FEE9D000CB66
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A3522800C7724400D4814100D481
      4100D4814100D4814100D4814100D4814100D4814100D4814100D4814100D481
      4100D4814100D4814100D4814100F1C08000DE8C3F00D4761A00F1C08000DE8C
      3F00BA663D001C56DA00C7724400A3522800019ACF0096DEEF00A9FFFF008DFB
      FF0091FBFF0091FBFF0097FDFF0085E8F400019ACF00019ACF00019ACF00019A
      CF00019ACF00019ACF00019ACF00000000000000000000000000000000000000
      000000000000000000000000000000000000FEFBF900FEFBF900FEFBF700FEF8
      F200FEF6EC00FEF2E400FEEFDE00FEECD800FEE9D200CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB660000CB660000CB660000CB66
      0000CB660000CB660000CB660000CB660000CB660000CB660000CB660000CB66
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A3522800A3522800A3522800A3522800A3522800A352
      2800A3522800A3522800A35228000000000000000000019ACF00C4F5FA00AFFF
      FF00ADFFFF00AEFFFF009DF3F900019ACF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CB660100CB660100CB660100CB66
      0100CB660100CB660100CB660100CB660100CB660100CB660100000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000019ACF00019A
      CF00019ACF00019ACF00019ACF00000000000000000000000000000000000000
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
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000300000000100010000000000400200000000000000000000
      000000000000000000000000FFFFFF00F87E1F000000000000000000E0180700
      0000000000000000C00003000000000000000000800001000000000000000000
      8000010000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080000100
      0000000000000000800001000000000000000000C00003000000000000000000
      E00007000000000000000000F8001F000000000000000000FC003F0000000000
      00000000F8001F000000000000000000F8001F000000000000000000F8001F00
      0000000000000000F8001F000000000000000000FC003F000000000000000000
      FC003F000000000000000000FE007F000000000000000000FF00FF0000000000
      00000000FFC3FF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF87FFFFF
      FFFFFFFFFFFFFFFFF007FF003FFFFFFFFFFFFFFFF0003F003FFF000FFF000000
      F0000F003FFF000FFF000000F0000F003FFF000FFF000000F00007003FFF000F
      FF000000800007003FFF000FFF000000000003003FFF000FFF000000000003FF
      EC00000037000000000001FFCC00000033000000000000FF8C00000031000000
      000000FF0C00000030000000000000FF8C0000003100000000000FFFCC000000
      3300000000001FFFEC0000003700000000001F003FFF000FFF00000000000F00
      3FFF000FFF00000000000F003FFF000FFF00000000000F003FFF000FFF000000
      0000FF003FFF000FFF0000000001FF003FFF000FFF80000180FFFF003FFFFFFF
      FFFFFFFFC1FFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenu1: TPopupMenu
    Images = ImageList1
    Left = 16
    Top = 312
    object N6: TMenuItem
      Action = ActionShowMoves
    end
    object N10: TMenuItem
      Action = Action3
    end
    object N11: TMenuItem
      Action = ActionClientFoodPrice
    end
  end
end
