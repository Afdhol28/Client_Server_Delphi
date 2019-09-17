unit Udm;

interface

uses
  SysUtils, Classes, DB, ADODB,Dialogs;

type
  Tdm = class(TDataModule)
    koneksi: TADOConnection;
    ds1: TDataSource;
    ADOQuery1: TADOQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
try 

  koneksi.LoginPrompt:=False;
  koneksi.Connected:=False;

  koneksi.ConnectionString:='';
  koneksi.Connected:=True;
  ShowMessage('koneksi berhasil');
except
  Showmessage('koneksi gagal');
end;
end;

end.
, Upenjualan
