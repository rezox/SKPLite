unit JobFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit5: TEdit;
    SimpanBtn: TButton;
    BaruBtn: TButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    CloseBtn: TButton;
    EditBtn: TButton;
    procedure CloseBtnClick(Sender: TObject);
    procedure BaruBtnClick(Sender: TObject);
    procedure SimpanBtnClick(Sender: TObject);
    procedure EditBtnClick(Sender: TObject);
  private
    { Private declarations }
    Function Datakosong:boolean;
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation
uses ModulSrc;
{$R *.dfm}

Function TForm6.Datakosong:boolean;
var
 ada:boolean;
begin
  ada:=true;
  if ada then ada:=edit1.Text<>'';
  if ada then ada:=edit2.Text<>'';
  if ada then ada:=edit5.Text<>'';
  if not ada then
    ShowMessage('Data Belum lengkap terisi!!!');
  result:=ada;
end;

procedure TForm6.EditBtnClick(Sender: TObject);
begin
  if not edit1.ReadOnly then
     edit1.ReadOnly:=true;
  if dataKososng then
    begin
      with Dm,Qexec do
       begin
         close;
         sql.Clear;
         sql.Text:='Update tblposisi SET Nama_posisi=:namapos,Keterangan=' +
            ':ket,create_date=:tgl Where id_posisi=:idpos';
         prepare;
         parambyname('namapos').Value:=edit2.Text;
         parambyname('ket').Value:=edit5.Text;
         parambyname('tgl').Value:=DateToStr(Now);
         parambyname('idpos').Value:=edit1.Text;
         ExecSQL;
         tblposisi.Close;
         tblposisi.Open;
         edit1.Text:='';
         edit2.Text:='';
         edit5.Text:='';
         edit1.ReadOnly:=false;
       end;
    end;
end;

procedure TForm6.SimpanBtnClick(Sender: TObject);
begin
   if Datakosong then
     begin
       with Dm,Qexec do
        begin
          close;
          sql.Clear;
          sql.Text:='Insert Into tblposisi(id_posisi,Nama_posisi,Keterangan,' +
             'create_date) VALUES(:idpos,:posisi,:ket,:tglpos)';
          prepare;
          parambyname('idpos').Value:=edit1.Text;
          parambyname('posisi').Value:=edit2.Text;
          parambyname('ket').Value:=edit5.Text;
          parambyname('tglpos').Value:=DateToStr(Now);
          ExecSQL;
          tblposisi.Close;
          tblposisi.Open;
          edit1.Text:='';
          edit2.Text:='';
          edit5.Text:='';
        end;
     end;
end;

procedure TForm6.BaruBtnClick(Sender: TObject);
begin
   Edit1.Text:='';
   edit2.Text:='';
   edit5.text:='';
   edit1.SetFocus;
end;

procedure TForm6.CloseBtnClick(Sender: TObject);
begin
  Close;
end;

end.
