object NotePad: TNotePad
  Left = 501
  Top = 228
  Width = 819
  Height = 751
  Caption = #1041#1083#1086#1082#1085#1086#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 705
    Height = 601
    Color = clBackground
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Square721 BT'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Memo1Change
  end
  object BtnSave: TButton
    Left = 8
    Top = 600
    Width = 150
    Height = 40
    Caption = 'Save'
    TabOrder = 1
    OnClick = BtnSaveClick
  end
  object BtnLoad: TButton
    Left = 184
    Top = 600
    Width = 150
    Height = 40
    Caption = 'Load'
    TabOrder = 2
    OnClick = BtnLoadClick
  end
  object BtnClear: TButton
    Left = 360
    Top = 600
    Width = 150
    Height = 40
    Caption = 'Clear'
    TabOrder = 3
    OnClick = BtnClearClick
  end
  object BtnExit: TButton
    Left = 536
    Top = 600
    Width = 150
    Height = 40
    Caption = 'Exit'
    TabOrder = 4
    OnClick = BtnExitClick
  end
  object MainMenu1: TMainMenu
    Left = 648
    Top = 16
    object File1: TMenuItem
      Caption = 'File'
      object SaveOpt: TMenuItem
        Caption = 'Save'
        OnClick = SaveOptClick
      end
      object LoadOpt: TMenuItem
        Caption = 'Load'
        OnClick = LoadOptClick
      end
      object ClearOpt: TMenuItem
        Caption = 'Clear'
        OnClick = ClearOptClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ExitOpt: TMenuItem
        Caption = 'Exit'
        OnClick = ExitOptClick
      end
    end
    object HelpSel: TMenuItem
      Caption = 'Help'
      object AboutOpt: TMenuItem
        Caption = 'About Programm'
        OnClick = AboutOptClick
      end
    end
    object CalcSel: TMenuItem
      Caption = 'Calculator'
      OnClick = CalcSelClick
    end
    object FarenSel: TMenuItem
      Caption = 'Farengeit'
      OnClick = FarenSelClick
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 608
    Top = 16
    object SavePU: TMenuItem
      Caption = 'Save'
      OnClick = SavePUClick
    end
    object LoadPU: TMenuItem
      Caption = 'Load'
      Enabled = False
      OnClick = LoadPUClick
    end
    object ClearPU: TMenuItem
      Caption = 'Clear'
      OnClick = ClearPUClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object ExitPU: TMenuItem
      Caption = 'Exit'
      OnClick = ExitPUClick
    end
  end
end
