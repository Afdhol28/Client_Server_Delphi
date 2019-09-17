unit Upenjualan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls;

type
  TFormPenjualan = class(TForm)
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    btn1: TButton;
    Button4: TButton;
    Button5: TButton;
    GroupBox1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure btn1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
  
    { Public declarations }
  end;

var
  FormPenjualan: TFormPenjualan;

implementation

{$R *.dfm}



procedure TFormPenjualan.btn1Click(Sender: TObject);
begin
Edit8.Clear;
Edit9.Clear;
Edit10.Clear;
end;

procedure TFormPenjualan.Button4Click(Sender: TObject);
var
  harga,pembayaran,kembali,total: real;
  jumlah: integer;
  begin
    if ((Edit8.Text='')or(Edit9.Text='')or (Edit10.Text =''))
    then
    begin
      messageDlg('Ada yang belum terisi, cek kembali...',mtError,[mbOk],0);
      Edit8.SetFocus ;
      exit;
    end;
  harga:=StrToFloat(Edit8.Text);
  jumlah:=StrToInt(Edit9.Text);
  pembayaran:=StrToFloat(Edit10.Text);

  total:=harga*jumlah;
  kembali:=pembayaran-total;
  Label12.Caption:=FormatFloat('Rp #,###,#0.00',total);
  Label13.Caption:=FormatFloat('Rp #,###,#0.00',kembali);

end;

procedure TFormPenjualan.Button5Click(Sender: TObject);
begin
Close;
end;

end.
