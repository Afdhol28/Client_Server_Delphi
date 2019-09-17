object FDataBarang: TFDataBarang
  Left = 298
  Top = 161
  Width = 1088
  Height = 860
  Caption = 'FDataBarang'
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
    Left = 168
    Top = 96
    Width = 60
    Height = 13
    Caption = 'ID PRODUK'
  end
  object Label2: TLabel
    Left = 168
    Top = 136
    Width = 79
    Height = 13
    Caption = 'JENIS PRODUK'
  end
  object Label3: TLabel
    Left = 168
    Top = 176
    Width = 80
    Height = 13
    Caption = 'NAMA PRODUK'
  end
  object Label4: TLabel
    Left = 168
    Top = 280
    Width = 187
    Height = 13
    Caption = '*klik kanan pada tabel untuk ubah data'
  end
  object Edit1: TEdit
    Left = 312
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 312
    Top = 128
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 312
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 168
    Top = 304
    Width = 320
    Height = 120
    DataSource = ds1
    PopupMenu = pm1
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 536
    Top = 328
    Width = 105
    Height = 25
    Caption = 'TAMBAH DATA'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 536
    Top = 368
    Width = 121
    Height = 25
    Caption = 'SIMPAN PERUBAHAN'
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 536
    Top = 408
    Width = 97
    Height = 25
    Caption = 'HAPUS DATA'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 280
    Top = 432
    Width = 89
    Height = 25
    Caption = 'TAMPIL DATA'
    TabOrder = 7
    OnClick = Button4Click
  end
  object ds1: TDataSource
    DataSet = dm.ADOQuery1
    Left = 472
    Top = 160
  end
  object pm1: TPopupMenu
    Left = 480
    Top = 208
    object KlikUntukEdir1: TMenuItem
      Caption = 'Klik Untuk Edit'
      OnClick = KlikUntukEdir1Click
    end
  end
end
