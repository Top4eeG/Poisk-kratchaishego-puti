object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsNone
  Caption = #1069#1082#1088#1072#1085' '#1079#1072#1075#1088#1091#1079#1082#1080
  ClientHeight = 600
  ClientWidth = 800
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 600
    Align = alClient
    TabOrder = 0
  end
  object MediaPlayer1: TMediaPlayer
    Left = 288
    Top = 288
    Width = 253
    Height = 30
    DoubleBuffered = True
    Display = Panel1
    FileName = 
      'D:\'#1044#1077#1083#1092#1080' '#1087#1088#1086#1077#1082#1090#1099'\'#1055#1088#1086#1077#1082#1090#1099'\'#1050#1091#1088#1089#1086#1074#1086#1081' '#1087#1088#1086#1077#1082#1090' '#1088#1072#1073#1086#1095#1080#1081'\Win32\Debug\'#1040#1085#1080 +
      #1084#1082#1072'-'#1087#1088#1072#1074#1080#1083#1100#1085#1072#1103'.wmv'
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 1
  end
end
