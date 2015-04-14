unit MainSrc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,JabatanFrm,
  PegawaiFrm;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Form1: TMenuItem;
    abelJabatan1: TMenuItem;
    DataPegawai1: TMenuItem;
    Exit1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    Satker1: TMenuItem;
    Setti1: TMenuItem;
    Config2: TMenuItem;
    Lock1: TMenuItem;
    About1: TMenuItem;
    N1: TMenuItem;
    Exit2: TMenuItem;
    procedure abelJabatan1Click(Sender: TObject);
    procedure DataPegawai1Click(Sender: TObject);
    procedure Satker1Click(Sender: TObject);
    procedure Config2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     Procedure RefreshKoneksi;
  public
    { Public declarations }
    FormJabatan : TForm2;
    FormPegawai : TForm3;

  end;

var
  Form1: TForm1;

implementation
uses  Modulsrc, ConnFrm, SatkerFrm;
{$R *.dfm}

Procedure TForm1.RefreshKoneksi;
begin
  with DM do
   begin
     if not MyConn.Connected then
       begin
         Myconn.Connected:=false;
         Myconn.Connected:=true;
       end;
     if not (tbljabatan.Active) or not (tblsatker.Active) or not (tblpejabat.Active) then
      begin
        tbljabatan.Close;
        tblsatker.Close;
        tblpejabat.Close;
        tbljabatan.Active:=true;
        tblsatker.Active:=true;
        tblpejabat.Active:=true;
      end

   end;
end;

procedure TForm1.abelJabatan1Click(Sender: TObject);
begin
  if not Assigned(FormJabatan) then
  begin
    FormJabatan := TForm2.Create(Application, Panel2);
    FormJabatan.Show;
    Panel2.Height := Panel2.Height-1;
  end;
end;

procedure TForm1.Config2Click(Sender: TObject);
begin
  Form4.showmodal;
end;

procedure TForm1.DataPegawai1Click(Sender: TObject);
begin
   if not Assigned(FormPegawai) then
  begin
    FormPegawai := TForm3.Create(Application, Panel2);
    FormPegawai.Show;
    Panel2.Height := Panel2.Height-1;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  RefreshKoneksi;
end;

procedure TForm1.Satker1Click(Sender: TObject);
begin
  Frmsatker.showmodal;
end;

end.
