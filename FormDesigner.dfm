object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'FormDesigner'
  ClientHeight = 319
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DesignerPanel: TsPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 319
    Align = alClient
    Caption = 'DesignerPanel'
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
  end
  object sSkinProvider1: TsSkinProvider
    AddedTitle.Font.Charset = DEFAULT_CHARSET
    AddedTitle.Font.Color = clNone
    AddedTitle.Font.Height = -11
    AddedTitle.Font.Name = 'Tahoma'
    AddedTitle.Font.Style = []
    SkinData.SkinSection = 'FORM'
    TitleButtons = <>
    Left = 464
    Top = 40
  end
  object sOpenDialog1: TsOpenDialog
    DefaultExt = 'fr3'
    Filter = 'FR3|*.fr3'
    InitialDir = 'Template'
    Left = 472
    Top = 104
  end
end
