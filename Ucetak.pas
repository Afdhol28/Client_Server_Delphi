unit Ucetak;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, StdCtrls, ExtCtrls;

type
  TFormCetak = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRBand5: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    Button1: TButton;
    QRLabel7: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel8: TQRLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCetak: TFormCetak;

implementation

uses Udm;

{$R *.dfm}

procedure TFormCetak.Button1Click(Sender: TObject);
begin
with dm.ADOQuery1 do
begin
   active:=False;
   Close;
   sql.clear;
   SQL.Text:='select *from tb_barang,tb_pengguna,tb_penjualan';
   Active:=True;
end;
QuickRep1.DataSet:=dm.ADOQuery1;
QRDBText1.DataSet:=dm.ADOQuery1; QRDBText1.DataField:='id_produk';
QRDBText2.DataSet:=dm.ADOQuery1; QRDBText2.DataField:='nama_produk';
QRDBText3.DataSet:=dm.ADOQuery1; QRDBText3.DataField:='jenis_produk';
QRDBText4.DataSet:=dm.ADOQuery1; QRDBText4.DataField:='nama';
QRDBText5.DataSet:=dm.ADOQuery1; QRDBText5.DataField:='kd_penjualan';
QRDBText6.DataSet:=dm.ADOQuery1; QRDBText6.DataField:='total_jual';
QRDBText7.DataSet:=dm.ADOQuery1; QRDBText7.DataField:='tanggal';
QuickRep1.Preview;
end;
end.
