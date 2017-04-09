object FormScriptLauncher: TFormScriptLauncher
  Left = 0
  Top = 0
  Caption = 'FormScriptLauncher'
  ClientHeight = 498
  ClientWidth = 714
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 12
  object sCoolBar1: TsCoolBar
    Left = 0
    Top = 0
    Width = 714
    Height = 60
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Bands = <
      item
        Control = ActionToolBar1
        ImageIndex = -1
        MinHeight = 21
        Width = 708
      end>
    SkinData.SkinSection = 'TOOLBAR'
    object ActionToolBar1: TActionToolBar
      Left = 11
      Top = 0
      Width = 699
      Height = 21
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ActionManager = ActionManager1
      Caption = 'ActionToolBar1'
      Color = clMenuBar
      ColorMap.DisabledFontColor = 7171437
      ColorMap.HighlightColor = clWhite
      ColorMap.BtnSelectedFont = clBlack
      ColorMap.UnusedColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -10
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Spacing = 0
    end
  end
  object sStatusBar1: TsStatusBar
    Left = 0
    Top = 472
    Width = 714
    Height = 26
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Panels = <>
    SkinData.SkinSection = 'STATUSBAR'
    ExplicitTop = 477
    ExplicitWidth = 892
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Action = FileExit1
            ImageIndex = 43
          end
          item
            Action = FileOpen1
            ImageIndex = 7
            ShortCut = 16463
          end
          item
            Action = FileSaveAs1
            ImageIndex = 30
          end
          item
            Caption = '-'
          end>
      end
      item
        Items = <
          item
            Action = FileExit1
            ImageIndex = 43
          end
          item
            Action = FileSaveAs1
            Caption = '&Save...'
            ImageIndex = 30
          end
          item
            Action = FileOpen1
            ImageIndex = 7
            ShortCut = 16463
          end
          item
            Caption = '-'
          end
          item
            Action = ActionExe
            Caption = '&Execute'
          end>
        ActionBar = ActionToolBar1
      end>
    Left = 496
    Top = 104
    StyleName = 'Platform Default'
    object FileOpen1: TFileOpen
      Category = 'File'
      Caption = '&Open...'
      Hint = 'Open|Opens an existing file'
      ImageIndex = 7
      ShortCut = 16463
      OnAccept = FileOpen1Accept
    end
    object FileSaveAs1: TFileSaveAs
      Category = 'File'
      Caption = 'Save &As...'
      Hint = 'Save As|Saves the active file with a new name'
      ImageIndex = 30
      BeforeExecute = FileSaveAs1BeforeExecute
      OnAccept = FileSaveAs1Accept
    end
    object FileExit1: TFileExit
      Category = 'File'
      Caption = 'E&xit'
      Hint = 'Exit|Quits the application'
      ImageIndex = 43
    end
    object ActionExe: TAction
      Category = 'Run'
      Caption = 'Execute'
      OnExecute = ActionExeExecute
    end
  end
end
