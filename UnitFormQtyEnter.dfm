object FormInputQty: TFormInputQty
  Left = 0
  Top = 0
  Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083'-'#1074#1086
  ClientHeight = 344
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ValueListEditor1: TValueListEditor
    Left = 8
    Top = 8
    Width = 345
    Height = 300
    FixedCols = 1
    GridLineWidth = 2
    TabOrder = 0
    TitleCaptions.Strings = (
      #1058#1086#1074#1072#1088
      #1050#1086#1083'-'#1074#1086)
    ColWidths = (
      150
      189)
  end
  object BitBtn1: TBitBtn
    Left = 8
    Top = 314
    Width = 75
    Height = 25
    DoubleBuffered = True
    Kind = bkOK
    ParentDoubleBuffered = False
    TabOrder = 1
  end
  object BitBtn2: TBitBtn
    Left = 278
    Top = 314
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 2
  end
end
