object FormTotalSail: TFormTotalSail
  Left = 0
  Top = 0
  Caption = 'FormTotalSail'
  ClientHeight = 654
  ClientWidth = 843
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sSplitter1: TsSplitter
    Left = 0
    Top = 238
    Width = 843
    Height = 6
    Cursor = crVSplit
    Align = alTop
    SkinData.SkinSection = 'SPLITTER'
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 843
    Height = 238
    Align = alTop
    ShowCaption = False
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sLabel1: TsLabel
      Left = 1
      Top = 34
      Width = 841
      Height = 21
      Align = alTop
      Alignment = taCenter
      Caption = #1047#1072#1082#1088#1099#1090#1080#1077' '#1089#1084#1077#1085#1099
      ParentFont = False
      Layout = tlCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8542779
      Font.Height = -18
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ExplicitWidth = 152
    end
    object sCoolBar1: TsCoolBar
      Left = 1
      Top = 1
      Width = 841
      Height = 33
      Bands = <>
      SkinData.SkinSection = 'TOOLBAR'
    end
    object sGroupBox1: TsGroupBox
      Left = 1
      Top = 55
      Width = 318
      Height = 182
      Align = alLeft
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      Checked = False
      object sDBEdit1: TsDBEdit
        Left = 177
        Top = 17
        Width = 135
        Height = 22
        Color = 16511722
        DataField = 'CODE'
        DataSource = DM.DSDocs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        SkinData.SkinSection = 'EDIT'
        BoundLabel.Active = True
        BoundLabel.Caption = #1053#1086#1084#1077#1088
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = 8542779
        BoundLabel.Font.Height = -12
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
      end
      object sDBLookupComboBox1: TsDBLookupComboBox
        Left = 93
        Top = 72
        Width = 219
        Height = 22
        Color = 16511722
        DataField = 'WAREHOUSE_ID'
        DataSource = DM.DSDocs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'DESCR'
        ListSource = DM.DSWareHouse
        ParentFont = False
        TabOrder = 1
        BoundLabel.Active = True
        BoundLabel.Caption = #1057#1082#1083#1072#1076' ('#1086#1090#1076#1077#1083')'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = 8542779
        BoundLabel.Font.Height = -12
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        SkinData.SkinSection = 'COMBOBOX'
      end
      object sDBLookupComboBox2: TsDBLookupComboBox
        Left = 93
        Top = 109
        Width = 217
        Height = 21
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Color = 16511722
        DataField = 'CLIENT_ID'
        DataSource = DM.DSDocs
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'ID'
        ListField = 'DESCR'
        ListSource = DM.DSClients
        ParentFont = False
        TabOrder = 2
        BoundLabel.Active = True
        BoundLabel.Caption = #1050#1083#1080#1077#1085#1090':'
        BoundLabel.Font.Charset = DEFAULT_CHARSET
        BoundLabel.Font.Color = 8542779
        BoundLabel.Font.Height = -11
        BoundLabel.Font.Name = 'Tahoma'
        BoundLabel.Font.Style = []
        SkinData.SkinSection = 'COMBOBOX'
      end
      object DBDateTimeEditEh3: TDBDateTimeEditEh
        Left = 176
        Top = 40
        Width = 136
        Height = 21
        DataField = 'DOCDATE'
        DataSource = DM.DSDocs
        DynProps = <>
        EditButtons = <>
        Kind = dtkDateEh
        TabOrder = 3
        Visible = True
      end
    end
    object sGroupBox2: TsGroupBox
      Left = 319
      Top = 55
      Width = 523
      Height = 182
      Align = alClient
      TabOrder = 2
      SkinData.SkinSection = 'GROUPBOX'
      Checked = False
      object cxLabel1: TLabel
        Left = 4
        Top = 145
        Width = 20
        Height = 13
        Caption = 'KKM'
        Transparent = True
      end
      object sGroupBox3: TsGroupBox
        Left = 6
        Top = 69
        Width = 204
        Height = 69
        Caption = #1057#1084#1077#1085#1072':'
        TabOrder = 0
        SkinData.SkinSection = 'GROUPBOX'
        Checked = False
        object cxLabel2: TLabel
          Left = 18
          Top = 18
          Width = 7
          Height = 13
          Caption = #1057
        end
        object cxLabel3: TLabel
          Left = 10
          Top = 42
          Width = 15
          Height = 13
          Caption = #1055#1054
        end
        object DBDateTimeEditEh1: TDBDateTimeEditEh
          Left = 35
          Top = 17
          Width = 144
          Height = 21
          DataField = 'DATESTART'
          DataSource = DM.DSTotalSail
          DynProps = <>
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 0
          Visible = True
        end
        object DBDateTimeEditEh2: TDBDateTimeEditEh
          Left = 35
          Top = 41
          Width = 144
          Height = 21
          DataField = 'DATEFINAL'
          DataSource = DM.DSTotalSail
          DynProps = <>
          EditButtons = <>
          Kind = dtkDateEh
          TabOrder = 1
          Visible = True
        end
      end
      object sDBCheckBox1: TsDBCheckBox
        Left = 6
        Top = 44
        Width = 169
        Height = 20
        Caption = #1056#1091#1095#1085#1086#1077' '#1079#1072#1082#1088#1099#1090#1080#1077' ('#1073#1077#1079' '#1095#1077#1082#1086#1074')'
        TabOrder = 1
        SkinData.SkinSection = 'CHECKBOX'
        ImgChecked = 0
        ImgUnchecked = 0
        DataField = 'IS_MANUAL'
        DataSource = DM.DSTotalSail
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object sDBNavigator1: TsDBNavigator
        Left = 2
        Top = 15
        Width = 519
        Height = 23
        Align = alTop
        FullRepaint = False
        TabOrder = 3
        SkinData.SkinSection = 'TOOLBAR'
        DataSource = DM.DSTotalSail
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel, nbRefresh]
      end
      object DBComboBoxEh1: TDBComboBoxEh
        Left = 40
        Top = 144
        Width = 145
        Height = 21
        DataField = 'KKM_ID'
        DataSource = DM.DSTotalSail
        DynProps = <>
        EditButtons = <>
        TabOrder = 2
        Visible = True
      end
    end
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 635
    Width = 843
    Height = 19
    Panels = <>
    SkinData.SkinSection = 'STATUSBAR'
  end
  object sPanel2: TsPanel
    Left = 0
    Top = 244
    Width = 843
    Height = 391
    Align = alClient
    Caption = 'sPanel2'
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object sPageControl1: TsPageControl
      Left = 1
      Top = 1
      Width = 841
      Height = 389
      ActivePage = sTabSheet1
      Align = alClient
      TabOrder = 0
      SkinData.SkinSection = 'PAGECONTROL'
      object sTabSheet1: TsTabSheet
        Caption = #1055#1088#1086#1076#1072#1078#1080
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 833
          Height = 78
          Align = alTop
          Caption = 'Panel1'
          TabOrder = 0
          object CoolBar1: TCoolBar
            Left = 1
            Top = 1
            Width = 831
            Height = 76
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            AutoSize = True
            BandMaximize = bmDblClick
            Bands = <
              item
                Control = sPanel3
                ImageIndex = -1
                MinHeight = 30
                Width = 825
              end
              item
                Control = sDBNavigator2
                ImageIndex = -1
                MinHeight = 40
                Width = 825
              end>
            DockSite = True
            DoubleBuffered = True
            ParentDoubleBuffered = False
            object sDBNavigator2: TsDBNavigator
              Left = 11
              Top = 32
              Width = 816
              Height = 40
              Align = alClient
              FullRepaint = False
              TabOrder = 0
              SkinData.SkinSection = 'TOOLBAR'
              DataSource = DM.DSTotalSailDetail
              BeforeAction = sDBNavigator2BeforeAction
            end
            object sPanel3: TsPanel
              Left = 11
              Top = 0
              Width = 816
              Height = 30
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Caption = 'sPanel3'
              TabOrder = 1
              SkinData.SkinSection = 'PANEL'
              object sToolBar1: TsToolBar
                Left = 1
                Top = 1
                Width = 814
                Height = 28
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alClient
                AutoSize = True
                ButtonHeight = 38
                ButtonWidth = 97
                Caption = 'sToolBar1'
                DoubleBuffered = True
                Images = FormMain.sAlphaImageList1
                List = True
                ParentDoubleBuffered = False
                ShowCaptions = True
                TabOrder = 0
                SkinData.SkinSection = 'TOOLBAR'
                object ToolButton1: TToolButton
                  Left = 0
                  Top = 0
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Action = ActionAutoFill
                end
                object ToolButton2: TToolButton
                  Left = 97
                  Top = 0
                  Margins.Left = 2
                  Margins.Top = 2
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Action = ActionPrint
                end
              end
            end
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 78
          Width = 833
          Height = 283
          Align = alClient
          Caption = 'Panel2'
          TabOrder = 1
          object DBGridEh1: TDBGridEh
            Left = 1
            Top = 1
            Width = 831
            Height = 281
            Align = alClient
            DataSource = DM.DSTotalSailDetail
            DynProps = <>
            IndicatorOptions = [gioShowRowIndicatorEh]
            TabOrder = 0
            Columns = <
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'ID'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'TOTALSAIL_ID'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'FOOD_ID'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'QTY'
                Footers = <>
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
                FieldName = 'PRICE_SELL'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'SUMMA'
                Footers = <>
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'MARGIN_SUM'
                Footers = <>
                Width = 83
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object sTabSheet2: TsTabSheet
        Caption = #1063#1077#1082#1080
        SkinData.CustomColor = False
        SkinData.CustomFont = False
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGridChecks: TsDBGrid
          Left = 0
          Top = 0
          Width = 833
          Height = 361
          Align = alClient
          Color = 16511722
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          SkinData.SkinSection = 'EDIT'
        end
      end
    end
  end
  object ActionManager1: TActionManager
    Images = FormMain.sAlphaImageList1
    Left = 40
    Top = 40
    StyleName = 'Platform Default'
    object ActionGoodsOpen: TAction
      Caption = #1055#1086#1076#1073#1086#1088
      OnExecute = ActionGoodsOpenExecute
    end
    object ActionPrint: TAction
      Caption = #1055#1077#1095#1072#1090#1100
      ImageIndex = 4
      OnExecute = ActionPrintExecute
    end
    object ActionAutoFill: TAction
      Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
      ImageIndex = 3
      OnExecute = btnAutoFillClick
    end
  end
  object Qry: TpFIBQuery
    Left = 696
    Top = 144
    qoAutoCommit = True
    qoStartTransaction = True
    qoTrimCharFields = True
  end
end
