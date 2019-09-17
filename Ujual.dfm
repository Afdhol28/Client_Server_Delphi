object FormJual: TFormJual
  Left = 186
  Top = 168
  Width = 1088
  Height = 563
  Caption = 'FormJual'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 168
    Top = 128
    Width = 96
    Height = 13
    Caption = 'KODE PENJUALAN'
  end
  object Label2: TLabel
    Left = 168
    Top = 176
    Width = 85
    Height = 13
    Caption = 'HARGA SATUAN'
  end
  object Label3: TLabel
    Left = 168
    Top = 232
    Width = 69
    Height = 13
    Caption = 'JUMLAH BELI'
  end
  object Label4: TLabel
    Left = 168
    Top = 288
    Width = 66
    Height = 13
    Caption = 'NAMA KASIR'
  end
  object Label5: TLabel
    Left = 168
    Top = 344
    Width = 51
    Height = 13
    Caption = 'TANGGAL'
  end
  object Edit1: TEdit
    Left = 336
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 336
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 336
    Top = 224
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 336
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 336
    Top = 336
    Width = 186
    Height = 21
    Date = 43236.349028912040000000
    Time = 43236.349028912040000000
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 568
    Top = 144
    Width = 320
    Height = 120
    DataSource = dm.ds1
    PopupMenu = PopupMenu1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 936
    Top = 136
    Width = 105
    Height = 25
    Caption = 'TAMBAH DATA'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 936
    Top = 176
    Width = 121
    Height = 25
    Caption = 'SIMPAN PERUBAHAN'
    TabOrder = 7
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 936
    Top = 216
    Width = 97
    Height = 25
    Caption = 'HAPUS DATA'
    TabOrder = 8
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 680
    Top = 272
    Width = 89
    Height = 25
    Caption = 'TAMPIL DATA'
    TabOrder = 9
    OnClick = Button4Click
  end
  object ds1: TDataSource
    DataSet = dm.ADOQuery1
    Left = 760
    Top = 112
  end
  object PopupMenu1: TPopupMenu
    Left = 720
    Top = 112
    object KlikUntukUbahData1: TMenuItem
      Caption = 'Klik Untuk Ubah Data'
      OnClick = KlikUntukUbahData1Click
    end
  end
end
