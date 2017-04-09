object AboutBox: TAboutBox
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 251
  ClientWidth = 475
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sGauge1: TsGauge
    Left = 7
    Top = 221
    Width = 462
    Height = 24
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    SkinData.SkinSection = 'GAUGE'
    ForeColor = clBlack
    Suffix = '%'
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 459
    Height = 209
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object Image1: TImage
      Left = 2
      Top = 2
      Width = 455
      Height = 205
      Align = alClient
      Center = True
      Stretch = True
      ExplicitWidth = 293
    end
  end
end
