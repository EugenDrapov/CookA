object FrameInvoice: TFrameInvoice
  Left = 0
  Top = 0
  Width = 182
  Height = 84
  TabOrder = 0
  object sBitBtn1: TsBitBtn
    AlignWithMargins = True
    Left = 20
    Top = 5
    Width = 159
    Height = 25
    Margins.Left = 20
    Margins.Top = 5
    Margins.Bottom = 5
    Action = FormMain.ActionInvoice
    Align = alTop
    Caption = #1055#1088#1080#1093#1086#1076#1085#1072#1103' '#1085#1072#1082#1083#1072#1076#1085#1072#1103
    TabOrder = 0
    Images = FormMain.ImageList1
    SkinData.SkinSection = 'BUTTON'
    ExplicitLeft = 3
    ExplicitTop = 6
    ExplicitWidth = 173
  end
  object BitBtn1: TBitBtn
    AlignWithMargins = True
    Left = 20
    Top = 40
    Width = 159
    Height = 25
    Margins.Left = 20
    Margins.Top = 5
    Margins.Bottom = 5
    Action = FormMain.ActionInventory
    Align = alTop
    Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103
    TabOrder = 1
    ExplicitTop = 38
    ExplicitWidth = 75
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'PANEL'
    Left = 152
    Top = 56
  end
end
