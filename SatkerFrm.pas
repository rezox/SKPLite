unit SatkerFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmSatker = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label6: TLabel;
    Edit8: TEdit;
    DBGrid1: TDBGrid;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure Cleardata;
  public
    { Public declarations }
  end;

var
  FrmSatker: TFrmSatker;

implementation
 uses Modulsrc;
{$R *.dfm}

procedure TFrmSatker.Cleardata;
var
 i:integer;
begin
  for i := 1 to ComponentCount-1  do
    begin
      if Components[i] is Tedit then
        TEdit(Components[i]).Text:='';

    end;
    Edit1.SetFocus;
end;

procedure TFrmSatker.DBGrid1DblClick(Sender: TObject);
begin
  with DBGrid1 do
  begin
    Edit1.Text:=fields[0].AsString;
    Edit2.Text:=fields[1].AsString;
    Edit6.Text:=fields[2].AsString;
    Edit3.Text:=fields[3].AsString;
    Edit4.Text:=fields[4].AsString;
    Edit5.Text:=fields[5].AsString;
    Edit7.Text:=fields[6].AsString;
    Edit8.Text:=fields[7].AsString;
    PageControl1.ActivePage:=Tabsheet1;
    Button2.Caption:='Edit'

  end;
end;

procedure TFrmSatker.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TFrmSatker.FormShow(Sender: TObject);
begin
  PageControl1.ActivePage:=TabSheet1;
  Cleardata;
end;

procedure TFrmSatker.Button1Click(Sender: TObject);
begin
  Cleardata;
end;

procedure TFrmSatker.Button2Click(Sender: TObject);
begin
  if Button2.Caption='Simpan' then
   begin
      with dm,Qexec do
       begin
        Close;
        sql.Clear;
        sql.Text:='INSERT INTO tbl_satker(id_satker,Nama_satker,satker_lengkap,alamat,website,email,telp,fax) VALUES(:idsatker,:namapa,:fullpa,' +
                  ':alamat,:web,:mail,:tlp,:faks)';
        prepare;
        parambyname('idsatker').Value:=Edit1.Text;
        parambyname('namapa').Value:=Edit2.Text;
        parambyname('fullpa').Value:=Edit6.Text;
        parambyname('alamat').Value:=Edit3.Text;
        parambyname('web').Value:=Edit4.Text;
        parambyname('mail').Value:=Edit5.Text;
        parambyname('tlp').Value:=Edit7.Text;
        parambyname('faks').Value:=Edit8.Text;
        ExecSQL;
        tblsatker.close;
        tblsatker.open;
        Cleardata;
       end;
   end
  else
    begin
      with dm,qexec do
      begin
        Close;
        sql.Clear;
        sql.Text:='UPDATE tbl_satker SET nama_satker=:a,satker_lengkap=:b,' +
           'alamat=:c,website=:d,email=:e,telp=:f,fax=:g Where id_satker=:h';
        prepare;
        parambyname('a').Value:=Edit2.Text;
        parambyname('b').Value:=Edit6.Text;
        parambyname('c').Value:=Edit3.Text;
        parambyname('d').Value:=Edit4.Text;
        parambyname('e').Value:=Edit5.Text;
        parambyname('f').Value:=Edit7.Text;
        parambyname('g').Value:=Edit8.Text;
        parambyname('h').Value:=Edit1.Text;
        ExecSQL;
        tblsatker.Close;
        tblsatker.Open;
        Cleardata;
        Button2.Caption:='Simpan';
      end;
    end;

end;

procedure TFrmSatker.Button3Click(Sender: TObject);
var
 hasil:string;
begin
 // hasil:=dm.Cekidada('Select id_satker from tbl_satker','W22-1');
end;

procedure TFrmSatker.Button4Click(Sender: TObject);
begin
  Close;
end;

end.
