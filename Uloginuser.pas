unit Uloginuser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormloguser = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Formloguser: TFormloguser;

implementation

uses Udm, Uutama;

{$R *.dfm}

procedure TFormloguser.Button1Click(Sender: TObject);
begin

with dm.ADOQuery1 do
  begin
    close;
    sql.clear;
    sql.Text:='select * from tb_user where username='+quotedstr(Edit1.Text);
    Open;
  End;
if dm.ADOQuery1.RecordCount = 0 then
  begin
    Messagedlg('Identitas tidak ditemukan !',mtwarning,[mbok],0);
    Edit1.Text:='';
    Edit2.Text:='';
    Edit1.setfocus;
  End
else
if dm.ADOQuery1.FieldByName('password').AsString <> Edit2.Text then
  begin
    Messagedlg('Identitas atau Katasandi yang anda masukan salah !',mtwarning,[mbok],0);
    Edit1.Text:='';
    Edit2.Text:='';
    Edit1.setfocus;
  end
else
  begin
    Messagedlg('Identitas Dikenal, Anda Berhasil Masuk ',mtwarning,[mbok],0);
   formutama.Show;
  end

end;


end.
