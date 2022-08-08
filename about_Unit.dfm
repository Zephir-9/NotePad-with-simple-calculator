object AboutForm: TAboutForm
  Left = 403
  Top = 148
  BorderStyle = bsDialog
  Caption = #1054' '#1055#1088#1086#1088#1072#1084#1084#1077
  ClientHeight = 238
  ClientWidth = 487
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 185
    Height = 25
    AutoSize = False
    Caption = 'Programm NotePad'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 0
    Top = 136
    Width = 313
    Height = 97
    AutoSize = False
    Caption = 
      #1055#1088#1077#1076#1085#1072#1079#1085#1072#1095#1077#1085#1072' '#1076#1083#1103' '#1074#1074#1086#1076#1072' '#1080' '#1088#1077#1076'. '#1090#1077#1082#1089#1090#1072'. '#1058#1077#1082#1089#1090' '#1089#1086#1093#1088#1072#1085#1103#1077#1090#1089#1103' '#1074' '#1090#1086#1081' '#1078 +
      #1077' '#1087#1072#1087#1082#1077', '#1095#1090#1086' '#1080' '#1087#1088#1086#1075#1088#1072#1084#1084#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label3: TLabel
    Left = 16
    Top = 56
    Width = 124
    Height = 25
    Caption = 'Author: NULL '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Image1: TImage
    Left = 368
    Top = 16
    Width = 105
    Height = 105
  end
  object Label4: TLabel
    Left = 16
    Top = 88
    Width = 132
    Height = 25
    Caption = 'Version: 0.0.01'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clAqua
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object OkBtn: TButton
    Left = 392
    Top = 192
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 0
    OnClick = OkBtnClick
  end
end
