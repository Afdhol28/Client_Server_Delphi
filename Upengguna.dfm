object FormPengguna: TFormPengguna
  Left = 215
  Top = 157
  Width = 1088
  Height = 679
  Caption = 'FormPengguna'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 168
    Top = 320
    Width = 187
    Height = 13
    Caption = '*klik kanan pada tabel untuk ubah data'
  end
  object DBGrid1: TDBGrid
    Left = 144
    Top = 344
    Width = 449
    Height = 169
    DataSource = dm.ds1
    PopupMenu = pm1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object Button1: TButton
    Left = 640
    Top = 376
    Width = 89
    Height = 25
    Caption = 'TAMBAH DATA'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 640
    Top = 456
    Width = 89
    Height = 25
    Caption = 'HAPUS DATA'
    TabOrder = 2
    OnClick = Button3Click
  end
  object GroupBox1: TGroupBox
    Left = 136
    Top = 32
    Width = 457
    Height = 233
    Caption = 'DATA PENGGUNA'
    TabOrder = 3
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 75
      Height = 13
      Caption = 'ID PENGGUNA'
    end
    object Label2: TLabel
      Left = 40
      Top = 72
      Width = 31
      Height = 13
      Caption = 'NAMA'
    end
    object Label3: TLabel
      Left = 40
      Top = 104
      Width = 69
      Height = 13
      Caption = 'NO TELEPON'
    end
    object Label4: TLabel
      Left = 40
      Top = 136
      Width = 43
      Height = 13
      Caption = 'ALAMAT'
    end
    object Edit1: TEdit
      Left = 208
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 208
      Top = 72
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 208
      Top = 104
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Memo1: TMemo
      Left = 208
      Top = 136
      Width = 153
      Height = 73
      Lines.Strings = (
        'Memo1')
      TabOrder = 3
    end
  end
  object Button4: TButton
    Left = 320
    Top = 536
    Width = 113
    Height = 25
    Caption = 'TAMPIL DATA'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 640
    Top = 416
    Width = 145
    Height = 25
    Caption = 'SIMPAN PERUBAHAN'
    TabOrder = 5
    OnClick = Button5Click
  end
  object ds1: TDataSource
    DataSet = dm.ADOQuery1
    Left = 624
    Top = 160
  end
  object pm1: TPopupMenu
    Left = 632
    Top = 208
    object KlikUntukEdir1: TMenuItem
      Caption = 'Klik Untuk Edit'
      OnClick = KlikUntukEdir1Click
    end
  end
end
