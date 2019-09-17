object FormLogin: TFormLogin
  Left = 223
  Top = 133
  Width = 1088
  Height = 563
  Caption = 'FormLogin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 312
    Top = 176
    Width = 61
    Height = 13
    Caption = 'USERNAME'
  end
  object Label2: TLabel
    Left = 312
    Top = 216
    Width = 63
    Height = 13
    Caption = 'PASSWORD'
  end
  object Edit1: TEdit
    Left = 440
    Top = 176
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 440
    Top = 216
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 352
    Top = 280
    Width = 75
    Height = 25
    Caption = 'LOGIN'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 496
    Top = 280
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 3
    OnClick = Button2Click
  end
end
