object FormSetUser: TFormSetUser
  Left = 228
  Top = 165
  Width = 1088
  Height = 563
  Caption = 'FormSetUser'
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
    Left = 336
    Top = 128
    Width = 31
    Height = 13
    Caption = 'NAMA'
  end
  object Label2: TLabel
    Left = 336
    Top = 176
    Width = 61
    Height = 13
    Caption = 'USERNAME'
  end
  object Label3: TLabel
    Left = 336
    Top = 224
    Width = 63
    Height = 13
    Caption = 'PASSWORD'
  end
  object Label4: TLabel
    Left = 336
    Top = 272
    Width = 109
    Height = 13
    Caption = 'RETYPE PASSWORD'
  end
  object Label5: TLabel
    Left = 680
    Top = 264
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 528
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 528
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 528
    Top = 216
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 528
    Top = 264
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = Edit4Change
  end
  object Button1: TButton
    Left = 416
    Top = 336
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 336
    Top = 384
    Width = 465
    Height = 120
    DataSource = ds1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 608
    Top = 344
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 6
    OnClick = Button2Click
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = dm.koneksi
    CursorType = ctStatic
    DataSource = dm.ds1
    Parameters = <>
    SQL.Strings = (
      'select *from tb_user')
    Left = 368
    Top = 72
  end
  object ds1: TDataSource
    DataSet = ADOQuery1
    Left = 472
    Top = 72
  end
  object ADOQuery2: TADOQuery
    Connection = dm.koneksi
    Parameters = <>
    Left = 592
    Top = 72
  end
end
