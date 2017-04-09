object FrameSails: TFrameSails
  Left = 0
  Top = 0
  Width = 180
  Height = 68
  TabOrder = 0
  object sBitBtn1: TsBitBtn
    Left = 32
    Top = 8
    Width = 137
    Height = 25
    Action = FormMain.Action2
    Caption = #1063#1077#1082#1080
    TabOrder = 0
    Images = FormMain.ImageList1
    SkinData.SkinSection = 'BUTTON'
  end
  object sBitBtn2: TsBitBtn
    Left = 32
    Top = 32
    Width = 137
    Height = 25
    Action = FormMain.ActionTotalSail
    Caption = #1047#1072#1082#1088#1099#1090#1080#1103' '#1089#1084#1077#1085
    TabOrder = 1
    Images = FormMain.ImageList1
    SkinData.SkinSection = 'BUTTON'
  end
  object sFrameAdapter1: TsFrameAdapter
    SkinData.SkinSection = 'GROUPBOX'
    Left = 8
    Top = 16
  end
end
