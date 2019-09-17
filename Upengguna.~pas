unit Upengguna;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, Menus;

type
  TFormPengguna = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button4: TButton;
    ds1: TDataSource;
    pm1: TPopupMenu;
    KlikUntukEdir1: TMenuItem;
    Memo1: TMemo;
    Label5: TLabel;
    Button5: TButton;
    procedure Button4Click(Sender: TObject);
    procedure KlikUntukEdir1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPengguna: TFormPengguna;

implementation

uses Udm;

{$R *.dfm}

procedure TFormPengguna.Button4Click(Sender: TObject);
begin
DBGrid1.DataSource:=ds1;
dm.ADOQuery1.Connection:=dm.koneksi;
with dm.ADOQuery1 do
begin
  Active:=False;
  Close;
  SQL.Clear;
  SQL.Text:='select *from tb_pengguna';
  ExecSQL;
  Active:=True;
end;
end;

procedure TFormPengguna.KlikUntukEdir1Click(Sender: TObject);
begin
begin
if dm.ADOQuery1.Active=true then
begin
  FormPengguna.Show;
  Label1.Visible:=False;
  Edit1.Visible:=False;
  

  FormPengguna.FormStyle:=fsStayOnTop;
  with FormPengguna do
  begin
  	 Edit1.Text:=dm.ADOQuery1['ID_PENGGUNA'] ;
     Edit2.Text:=dm.ADOQuery1['NAMA'] ;
     Edit3.Text:=dm.ADOQuery1['NO_TELP'] ;
     Memo1.Text:=dm.ADOQuery1['ALAMAT'];
end;
end
else
begin
 ShowMessage('gagal loading data ini');
  end
end;
end;

procedure TFormPengguna.Button1Click(Sender: TObject);
begin
dm.ADOQuery1.Connection:=dm.koneksi;
with dm.ADOQuery1 do
begin
  Active:=False;
  Close;
  SQL.Clear;
  SQL.Text:='insert into tb_pengguna values ('+QuotedStr(Edit1.Text)+
  ','+QuotedStr(Edit2.Text)+','+QuotedStr(Edit3.Text)+','+QuotedStr(Memo1.Text)+')';
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
end;
Button4Click(sender);
end;
procedure TFormPengguna.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:=dm.ADOQuery1.FieldByName('id_pengguna').AsString;
Edit2.Text:=dm.ADOQuery1.FieldByName('nama').AsString;
Edit3.Text:=dm.ADOQuery1.FieldByName('no_telp').AsString;
Memo1.Text:=dm.ADOQuery1.FieldByName('alamat').AsString;
end;

procedure TFormPengguna.Button3Click(Sender: TObject);
begin
if MessageDlg('User '+''+dm.ADOQuery1.FieldByName('nama').AsString+
' ini akan dihapus? Lanjutkan?',MTConfirmation,[MByes,MBno],0)=mrYes then
begin
  dm.ADOQuery1.Delete;
end;
Button4Click(sender);
end;

procedure TFormPengguna.Button5Click(Sender: TObject);
begin
try dm.koneksi.BeginTrans;
with dm.ADOQUERY1 do
begin
  SQL.Clear;
  SQL.Text:='EXEC ubahpengguna'+Quotedstr (Edit1.Text)+
  ','+quotedstr(Edit2.Text)+
  ','+quotedstr(Edit3.Text)+
  ','+quotedstr(Memo1.Text);
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

end.
