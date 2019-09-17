unit Udatabarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, DB, ADODB, Menus;

type
  TFDataBarang = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ds1: TDataSource;
    pm1: TPopupMenu;
    KlikUntukEdir1: TMenuItem;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure KlikUntukEdir1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDataBarang: TFDataBarang;

implementation
 uses Udm;
{$R *.dfm}

procedure TFDataBarang.Button1Click(Sender: TObject);
begin
dm.ADOQuery1.Connection:=dm.koneksi;
with dm.ADOQuery1 do
begin
  Active:=False;
  Close;
  SQL.Clear;
  SQL.Text:='insert into tb_barang values ('+QuotedStr(Edit1.Text)+
  ','+QuotedStr(Edit2.Text)+','+QuotedStr(Edit3.Text)+')';
  ExecSQL;
end;
begin
if(application.MessageBox('Ingin menambah data?','Konfirmasi',MB_YesNo)=ID_yes) then
    begin
      showmessage('Data berhasil Ditambahkan');
    end
  else
    begin
      showmessage('Data gagal ditambahkan');
    end;
Button4Click(sender);
end;
end;

procedure TFDataBarang.Button4Click(Sender: TObject);
begin
DBGrid1.DataSource:=ds1;
dm.ADOQuery1.Connection:=dm.koneksi;
with dm.ADOQuery1 do
begin
  Active:=False;
  Close;
  SQL.Clear;
  SQL.Text:='select *from tb_barang';
  ExecSQL;
  Active:=True;
end;
end;

procedure TFDataBarang.KlikUntukEdir1Click(Sender: TObject);
begin
begin
if dm.ADOQuery1.Active=true then
begin
  FDataBarang.Show;
  Label1.Visible:=False;
  Edit1.Visible:=False;
  
  FDataBarang.FormStyle:=fsStayOnTop;
  with FDataBarang do
  begin
  	 Edit1.Text:=dm.ADOQuery1['ID_PRODUK'] ;
     Edit2.Text:=dm.ADOQuery1['JENIS_PRODUK'] ;
     Edit3.Text:=dm.ADOQuery1['NAMA_PRODUK'] ;
end;
end
else
begin
 ShowMessage('gagal loading data ini');
  end
end;
end;

procedure TFDataBarang.Button2Click(Sender: TObject);
begin
try dm.koneksi.BeginTrans;
with dm.ADOQUERY1 do
begin
  SQL.Clear;
  SQL.Text:='EXEC ubahproduk'+Quotedstr (Edit1.Text)+
  ','+quotedstr(Edit2.Text)+
  ','+quotedstr(Edit3.Text);
  ExecSQL;
end;
 dm.koneksi.CommitTrans;
 except
   dm.koneksi.RollbackTrans;
end;
 if(application.MessageBox('Yakin untuk mengubah data?','Konfirmasi',MB_YesNo)=ID_yes) then
    begin
      showmessage('Data berhasil Diubah');
    end
  else
    begin
      showmessage('Data gagal diubah');
    end;
Button4Click(sender);
end;

procedure TFDataBarang.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=dm.ADOQuery1.FieldByName('id_produk').AsString;
Edit2.Text:=dm.ADOQuery1.FieldByName('jenis_produk').AsString;
Edit3.Text:=dm.ADOQuery1.FieldByName('nama_produk').AsString;
end;

procedure TFDataBarang.Button3Click(Sender: TObject);
begin
if MessageDlg('Produk '+''+dm.ADOQuery1.FieldByName('nama_produk').AsString+
' ini akan dihapus? Lanjutkan?',MTConfirmation,[MByes,MBno],0)=mrYes then
begin
  dm.ADOQuery1.Delete;
end;
Button4Click(sender);
end;
end.
