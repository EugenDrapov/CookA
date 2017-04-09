object FormExportSetup: TFormExportSetup
  Left = 250
  Top = 108
  BorderStyle = bsSingle
  Caption = 'Choices Dialog'
  ClientHeight = 526
  ClientWidth = 786
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -9
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 11
  object sPanel4: TsPanel
    Left = 0
    Top = 0
    Width = 786
    Height = 526
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Caption = 'sPanel4'
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    object sSplitter1: TsSplitter
      Left = 289
      Top = 1
      Width = 5
      Height = 524
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      SkinData.SkinSection = 'SPLITTER'
    end
    object sPanel2: TsPanel
      Left = 294
      Top = 1
      Width = 491
      Height = 524
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      Caption = 'sPanel2'
      TabOrder = 0
      SkinData.SkinSection = 'PANEL'
      object sPageControl1: TsPageControl
        Left = 1
        Top = 1
        Width = 489
        Height = 522
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        ActivePage = sTabSheet1
        Align = alClient
        TabOrder = 0
        SkinData.SkinSection = 'PAGECONTROL'
        object sTabSheet1: TsTabSheet
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = #1047#1072#1087#1088#1086#1089
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object sGroupBox2: TsGroupBox
            Left = 0
            Top = 0
            Width = 481
            Height = 496
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alClient
            Caption = #1058#1077#1082#1089#1090' '#1079#1072#1087#1088#1086#1089#1072
            TabOrder = 0
            SkinData.SkinSection = 'GROUPBOX'
            Checked = False
          end
        end
        object Параметры: TsTabSheet
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object sGroupBox1: TsGroupBox
            Left = 0
            Top = 0
            Width = 481
            Height = 220
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Align = alTop
            Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1072#1088#1072#1084#1077#1090#1088#1086#1074
            TabOrder = 0
            SkinData.SkinSection = 'GROUPBOX'
            Checked = False
            object DstLabel: TLabel
              Left = 190
              Top = 16
              Width = 144
              Height = 16
              AutoSize = False
              Caption = #1042#1099#1073#1088#1072#1085#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
            end
            object ExAllBtn: TSpeedButton
              Left = 161
              Top = 104
              Width = 23
              Height = 23
              Caption = '<<'
              Enabled = False
              OnClick = ExcAllBtnClick
            end
            object ExcludeBtn: TSpeedButton
              Left = 161
              Top = 78
              Width = 23
              Height = 24
              Caption = '<'
              Enabled = False
              OnClick = ExcludeBtnClick
            end
            object IncAllBtn: TSpeedButton
              Left = 161
              Top = 53
              Width = 23
              Height = 23
              Caption = '>>'
              OnClick = IncAllBtnClick
            end
            object IncludeBtn: TSpeedButton
              Left = 161
              Top = 29
              Width = 23
              Height = 24
              Caption = '>'
              OnClick = IncludeBtnClick
            end
            object SrcLabel: TLabel
              Left = 12
              Top = 16
              Width = 142
              Height = 16
              AutoSize = False
              Caption = #1044#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
            end
            object DstList: TListBox
              Left = 190
              Top = 29
              Width = 143
              Height = 181
              ItemHeight = 11
              MultiSelect = True
              TabOrder = 0
            end
            object SrcList: TListBox
              Left = 12
              Top = 29
              Width = 142
              Height = 180
              ItemHeight = 11
              MultiSelect = True
              Sorted = True
              TabOrder = 1
            end
          end
        end
        object sTabSheet2: TsTabSheet
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = #1060#1072#1081#1083' '#1096#1072#1073#1083#1086#1085#1072
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object edtTemplate: TsEdit
            Left = 13
            Top = 30
            Width = 372
            Height = 20
            Margins.Left = 2
            Margins.Top = 2
            Margins.Right = 2
            Margins.Bottom = 2
            Color = 16511722
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -10
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'edtTemplate'
            SkinData.SkinSection = 'EDIT'
            BoundLabel.Active = True
            BoundLabel.Caption = #1060#1072#1081#1083' '#1096#1072#1073#1083#1086#1085#1072' ('#1086#1090#1085#1086#1089#1080#1090#1077#1083#1100#1085#1086' $exe\config\export\)'
            BoundLabel.Font.Charset = DEFAULT_CHARSET
            BoundLabel.Font.Color = 8542779
            BoundLabel.Font.Height = -14
            BoundLabel.Font.Name = 'Tahoma'
            BoundLabel.Font.Pitch = fpFixed
            BoundLabel.Font.Style = [fsUnderline]
            BoundLabel.Layout = sclTopLeft
          end
        end
      end
    end
    object sPanel1: TsPanel
      Left = 1
      Top = 1
      Width = 288
      Height = 524
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'sPanel1'
      TabOrder = 1
      SkinData.SkinSection = 'PANEL'
      object sPanel5: TsPanel
        Left = 1
        Top = 461
        Width = 286
        Height = 28
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alBottom
        Caption = 'sPanel5'
        TabOrder = 0
        SkinData.SkinSection = 'PANEL'
        object SpeedButton1: TSpeedButton
          Left = 1
          Top = 1
          Width = 115
          Height = 26
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = ActionNew
          Align = alLeft
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1073#1083#1086#1082
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFF2222222
            222222222222222FFFFFFFFFF2222222222222222222222FFFFFFFFFF2222222
            222222222222222FFFFFFFFFF2222222222222222222222FFFFFFFFFF2222222
            222222222222222FFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFF222222FFFFFFFFFFFFFFFFFFFFFFFFF
            F222222FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object SpeedButton2: TSpeedButton
          Left = 116
          Top = 1
          Width = 109
          Height = 26
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = ActionDelete
          Align = alLeft
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1073#1083#1086#1082
          Glyph.Data = {
            76020000424D7602000000000000760000002800000020000000200000000100
            0400000000000002000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFF9999999999999999999999999999FFFF9999999999
            999999999999999999FFFF9999999999999999999999999999FFFF9999999999
            999999999999999999FFFF9999999999999999999999999999FFFF9999999999
            999999999999999999FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
      end
      object sPanel6: TsPanel
        Left = 1
        Top = 1
        Width = 286
        Height = 33
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        Caption = 'sPanel6'
        TabOrder = 1
        SkinData.SkinSection = 'PANEL'
        object SpeedButton3: TSpeedButton
          Left = 1
          Top = 1
          Width = 102
          Height = 31
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Action = ActionNewPacket
          Align = alLeft
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            000000000000B48D8AFFB28A88FFB18A87FFB18885FFB08784FFAF8683FFAE85
            82FFAE8481FFAD8380FFAB817FFFAA807DFFAA807CFFA97F7BFFA97D7AFFA87C
            79FFA77B78FFA77B78FFA77A77FFA67976FF0000000000000000000000000000
            000000000000B58E8BFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFA77A77FF0000000000000000000000000000
            000000000000B58F8CFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
            FDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFE
            FDFFFEFEFDFFFEFEFDFFFEFEFDFFA77B78FF0000000000000000000000000000
            000000000000B7928EFFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFEFC
            FBFFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFEFCFBFFFEFC
            FBFFFEFCFBFFFEFCFBFFFEFCFBFFA97D79FF0000000000000000000000000000
            000000000000B89390FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
            F8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFBF8FFFEFB
            F8FFFEFBF8FFFEFBF8FFFEFBF8FFA97E7AFF0000000000000000000000000000
            000000000000B99492FFFEFAF6FFFEFAF6FFFEFAF6FFFEFAF6FFFEFAF6FFFEFA
            F6FFFEFAF6FFFEFAF6FFFEFAF6FFFEFAF6FFFEFAF6FFFEFAF6FFFEFAF6FFFEFA
            F6FFFEFAF6FFFEFAF6FFFEFAF6FFAA7F7CFF0000000000000000000000000000
            000000000000BB9793FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9
            F4FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9F4FFFEF9
            F4FFFEF9F4FFFEF9F4FFFEF9F4FFAA807DFF0000000000000000000000000000
            000000000000BB9895FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8
            F1FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8F1FFFEF8
            F1FFFEF8F1FFFEF8F1FFFEF8F1FFAB827FFF0000000000000000000000000000
            000000000000BD9996FFFEF6EFFFFEF6EFFFFEF6EFFFFEF6EFFFFEF6EFFFFEF6
            EFFFFEF6EFFFFEF6EFFFFEF6EFFFFEF6EFFFFEF6EFFFFEF6EFFFFEF6EFFFFEF6
            EFFFFEF6EFFFFEF6EFFFFEF6EFFFAD8380FF0000000000000000000000000000
            000000000000BD9B98FFFEF5EDFFFEF5EDFFFEF5EDFFFEF5EDFFFEF5EDFFFEF5
            EDFFFEF5EDFFFEF5EDFFFEF5EDFFFEF5EDFFFEF5EDFFFEF5EDFFFEF5EDFFFEF5
            EDFFFEF5EDFFFEF5ECFFFDF4ECFFAD8481FF0000000000000000000000000000
            000000000000BF9D9AFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4
            EAFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4EAFFFEF4
            EAFFFEF4EAFFFDF3E9FFFDF3E9FFAF8582FF0000000000000000000000000000
            000000000000C09E9BFFFEF3E8FFFEF3E8FFFEF3E8FFFEF3E8FFFEF3E8FFFEF3
            E8FFFEF3E8FFFEF3E8FFFEF3E8FFFEF3E8FFFEF3E8FFFEF3E8FFFEF3E8FFFEF3
            E8FFFDF2E7FFFDF2E7FFFDF1E6FFAF8784FF0000000000000000000000000000
            000000000000C1A09CFFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2
            E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF2E6FFFFF1E5FFFEF1
            E5FFFEF1E5FFFEF0E4FFF9ECDEFFB18886FF0000000000000000000000000000
            000000000000C2A19EFFFFF0E3FFFFF0E3FFFFF0E3FFFFF0E3FFFFF0E3FFFFF0
            E3FFFFF0E3FFFFF0E3FFFFF0E3FFFFF0E3FFFFF0E3FFFFF0E3FFFEEFE2FFFEEF
            E2FFFDEFE1FFF9EADBFFF0E2D1FFB28A87FF0000000000000000000000000000
            000000000000C4A39FFFFFEFE1FFFFEFE1FFFFEFE1FFFFEFE1FFFFEFE1FFFFEF
            E1FFFFEFE1FFFFEFE1FFFFEFE1FFFFEFE1FFFFEFE1FFFEEEE0FFFEEEE0FFFDED
            DFFFF8E8D8FFEFE0CEFFE5D6C1FFB38C89FF0000000000000000000000000000
            000000000000C4A4A1FFFFEEDFFFFFEEDFFFFFEEDFFFFFEEDFFFFFEEDFFFFFEE
            DFFFFFEEDFFFFFEEDFFFFFEEDFFFFFEEDEFFFEEDDEFFFEEDDEFFFDECDCFFF7E6
            D5FFEEDECBFFE4D4BEFFD9C9B1FFB58E8BFF0000000000000000000000000000
            000000000000C5A5A2FFFFEDDCFFFFEDDCFFFFEDDCFFFFEDDCFFFFEDDCFFFFED
            DCFFFFEDDCFFFFEDDCFFFFEDDCFFFEECDBFFFEECDBFFFDEAD9FFF6E5D2FFEDDC
            C7FFE3D2BBFFD8C8AEFFCCBDA1FFB68F8CFF0000000000000000000000000000
            000000000000C6A7A3FFFFECDAFFFFECDAFFFFECDAFFFFECDAFFFFECDAFFFFEC
            DAFFFFECDAFFFFEBDAFFFEEBD9FFFEEBD9FFFCE9D7FFF6E3CFFFEDDAC4FFE2D0
            B8FFD7C6ABFFD9CBB4FFE5D4C1FFAB8884EF0000000000000000000000000000
            000000000000C7A8A4FFFFEAD8FFFFEAD8FFFFEAD8FFFFEAD8FFFFEAD8FFFFEA
            D8FFFFEAD7FFFEE9D7FFFEE9D7FFFCE7D4FFF5E1CCFFF7EEE4FFFEFEFEFFFEFE
            FDFFFEF8F2FFF2E0D6FFC5A59FFF614D4C860000000000000000000000000000
            000000000000C7A8A5FFFFE9D5FFFFE9D5FFFFE9D5FFFFE9D5FFFFE9D5FFFFE9
            D5FFFEE8D4FFFEE8D4FFFBE6D1FFF4DFC9FFEBD7BEFFF4EDE3FFFEFDFCFFFEF7
            F0FFEAD5CCFFBF9C98FF4A3C3A66000000000000000000000000000000000000
            000000000000C8AAA7FFFFE8D3FFFFE8D3FFFFE8D3FFFFE8D3FFFFE7D2FFFEE7
            D2FFFEE7D2FFFBE4CEFFF3DDC6FFEAD5BBFFDFCAAFFFFAF6F1FFFEF6EEFFDFC6
            BEFF826A67AF342A294600000000000000000000000000000000000000000000
            000000000000C9ABA8FFFFE7D1FFFFE7D1FFFFE7D1FFFFE6D0FFFEE6D0FFFEE6
            CFFFFAE2CBFFF3DBC3FFE9D3B8FFDEC9ACFFE5D6C2FFFAF0E7FFD4B8B1FF705C
            5B96110E0E170000000000000000000000000000000000000000000000000000
            000000000000CAABA8FFFFE6CFFFFFE6CFFFFFE6CFFFFEE5CEFFFEE5CEFFFAE1
            C9FFF1DAC0FFE8D1B6FFDDC7AAFFD5C1A3FFF0E1D7FFCDAFABFF655453860000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000CAACA9FFC9ABA8FFC9ABA8FFC9AAA7FFC9A9A6FFC8A8A5FFC7A8
            A5FFC6A7A4FFC5A6A3FFC5A5A2FFC4A4A1FF9F8482CF4E414066000000000000
            0000000000000000000000000000000000000000000000000000}
        end
        object SpeedButton4: TSpeedButton
          Left = 103
          Top = 1
          Width = 109
          Height = 31
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alLeft
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1087#1072#1082#1077#1090
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000029
            0066006600FF006600FF006600FF006600FFA4948CFFA4948CFFA4948CFFA494
            8CFFA4948CFFA4948CFFA4948CFFA4948CFFA4948CFFA4948CFFA4948CFF0066
            00FF006600FF006600FF006600FF002900660000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF767657FFE9E2E2FFD5CCCCFFD1C0
            BFFFE9DAD8FFF6F0EDFFF6F1EFFFEBE6E6FFE3E7E6FFE3E7E6FF72904CFF406D
            08FF40790DFF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF4E7D28FFE9E2E2FF006600FF0066
            00FF0A990AFFF7EDEAFFFFFFFDFFFBF8F5FFF3F8F6FFF3F8F6FF72904CFF4169
            08FF40790DFF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF527C2DFFE9E2E2FF006600FF0066
            00FF0A990AFFEADFDDFFFBFAF7FFFEFAF7FFFDFFFCFFFDFFFFFF72904CFF4169
            08FF40790DFF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF517D2CFFE9E2E2FF006600FF0066
            00FF0A990AFFDACECDFFF0EFEDFFFBF7F5FFFFFFFFFFFDFFFFFF72904CFF4169
            08FF40790DFF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF51802DFFE9E2E2FF006600FF0066
            00FF0A990AFFC1B4B3FFDEDEDCFFF2EDEAFFFFFFFFFFFDFFFFFF72904CFF4266
            08FF407A0CFF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF53822EFFE9E2E2FF006600FF0066
            00FF0A990AFFA39B9AFFBAC0BFFFDDDEDBFFFDFFFFFFFDFFFFFF72904CFF425F
            09FF3F770BFF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF4E8C25FFE9E2E2FFE9E2E2FFE9E2
            E2FFE9E2E2FFE9E2E2FFE9E2E2FFE9E2E2FFE9E2E2FFE9E2E2FF72904CFF4179
            09FF40830FFF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF009900FF009900FF009900FF0099
            00FF009900FF009900FF009900FF009900FF009900FF009900FF009900FF0099
            00FF009900FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FF009900FF009900FF009900FF009900FF009900FF0099
            00FF009900FF009900FF009900FF009900FF009900FF009900FF009900FF0099
            00FF009900FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0
            B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0B1FFB1D0
            B1FFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFDFDFFFEFDFDFFFFFEFEFFFFFEFEFFFFFE
            FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFDFDFFFDFC
            FCFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFCDCDCDFFCDCDCDFFCDCD
            CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFCDCDCDFFCDCDCDFFCDCD
            CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFCDCDCDFFCDCDCDFFCDCD
            CDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFCDCDCDFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000066
            00FF009900FF009900FFB1D0B1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFB1D0B1FF009900FF009900FF006600FF0000000000000000000000000029
            0066006600FF006600FFB1D0B1FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
            FEFFB1D0B1FF006600FF006600FF002900660000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = sBitBtn1Click
        end
      end
      object sPanel3: TsPanel
        Left = 1
        Top = 489
        Width = 286
        Height = 34
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alBottom
        Caption = 'sPanel3'
        ShowCaption = False
        TabOrder = 2
        SkinData.SkinSection = 'PANEL'
        object sBitBtn1: TsBitBtn
          Left = 14
          Top = 4
          Width = 97
          Height = 26
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Kind = bkOK
          NumGlyphs = 2
          TabOrder = 0
          OnClick = sBitBtn1Click
          SkinData.SkinSection = 'BUTTON'
        end
        object sBitBtn2: TsBitBtn
          Left = 134
          Top = 5
          Width = 97
          Height = 26
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Kind = bkCancel
          NumGlyphs = 2
          TabOrder = 1
          SkinData.SkinSection = 'BUTTON'
        end
      end
      object sPanel7: TsPanel
        Left = 1
        Top = 34
        Width = 286
        Height = 50
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alTop
        Caption = 'sPanel7'
        ShowCaption = False
        TabOrder = 3
        SkinData.SkinSection = 'PANEL'
        object sLabel1: TsLabel
          Left = 1
          Top = 23
          Width = 22
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'UID:'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object lblUid: TsLabel
          Left = 1
          Top = 37
          Width = 25
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alBottom
          Caption = 'lblUid'
          ParentFont = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8542779
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = []
        end
        object cbPackets: TsComboBox
          Left = 1
          Top = 1
          Width = 284
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alTop
          Alignment = taLeftJustify
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          SkinData.SkinSection = 'COMBOBOX'
          VerticalAlignment = taAlignTop
          Color = 16511722
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemIndex = -1
          ParentFont = False
          TabOrder = 0
          Text = 'cbPackets'
          OnCloseUp = cbPacketsCloseUp
        end
      end
      object sPanel8: TsPanel
        Left = 1
        Top = 84
        Width = 286
        Height = 377
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Caption = 'sPanel8'
        TabOrder = 4
        SkinData.SkinSection = 'PANEL'
        object BlocksListBox: TsListBox
          Left = 1
          Top = 1
          Width = 284
          Height = 375
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Align = alClient
          Color = 16511722
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BlocksListBoxClick
          BoundLabel.Font.Charset = DEFAULT_CHARSET
          BoundLabel.Font.Color = clWindowText
          BoundLabel.Font.Height = -13
          BoundLabel.Font.Name = 'Tahoma'
          BoundLabel.Font.Style = []
          SkinData.SkinSection = 'EDIT'
        end
      end
    end
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = FileSaveAs1
            ImageIndex = 30
            ShowCaption = False
          end
          item
            Action = FileOpen1
            ImageIndex = 7
            ShowCaption = False
            ShortCut = 16463
          end>
        AutoSize = False
      end
      item
        Items = <
          item
            Action = FileSaveAs1
            ImageIndex = 30
          end
          item
            Action = FileOpen1
            ImageIndex = 7
            ShortCut = 16463
          end>
      end
      item
        Items = <
          item
            Action = EditDelete1
            ImageIndex = 5
            ShortCut = 46
          end
          item
            Action = EditUndo1
            ImageIndex = 3
            ShortCut = 16474
          end
          item
            Action = EditPaste1
            ImageIndex = 2
            ShortCut = 16470
          end
          item
            Action = EditCopy1
            ImageIndex = 1
            ShortCut = 16451
          end
          item
            Action = EditCut1
            ImageIndex = 0
            ShortCut = 16472
          end>
      end
      item
        Items = <
          item
            Action = SearchFindFirst1
          end
          item
            Action = SearchReplace1
            ImageIndex = 32
          end
          item
            Action = EditSelectAll1
            ShortCut = 16449
          end
          item
            Action = SearchFindNext1
            ImageIndex = 33
            ShortCut = 114
          end
          item
            Action = SearchFind1
            ImageIndex = 34
            ShortCut = 16454
          end>
      end>
    Left = 232
    Top = 120
    StyleName = 'Platform Default'
    object FileOpen1: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 7
      ShortCut = 16463
    end
    object FileSaveAs1: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 30
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cu&t'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Paste'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = 'Select &All'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Undo'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = '&Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
    object SearchFind1: TSearchFind
      Category = 'Search'
      Caption = '&Find...'
      Hint = 'Find|Finds the specified text'
      ImageIndex = 34
      ShortCut = 16454
    end
    object SearchFindNext1: TSearchFindNext
      Category = 'Search'
      Caption = 'Find &Next'
      Hint = 'Find Next|Repeats the last find'
      ImageIndex = 33
      ShortCut = 114
    end
    object SearchReplace1: TSearchReplace
      Category = 'Search'
      Caption = '&Replace'
      Hint = 'Replace|Replaces specific text with different text'
      ImageIndex = 32
    end
    object SearchFindFirst1: TSearchFindFirst
      Category = 'Search'
      Caption = 'F&ind First'
      Hint = 'Find First|Finds the first occurance of specified text'
    end
    object ActionNew: TAction
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = ActionNewExecute
    end
    object ActionDelete: TAction
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnExecute = ActionDeleteExecute
    end
    object ActionNewPacket: TAction
      Caption = #1053#1086#1074#1099#1081' '#1087#1072#1082#1077#1090
      OnExecute = ActionNewPacketExecute
    end
  end
  object Q1: TpFIBQuery
    Left = 128
    Top = 128
  end
end
