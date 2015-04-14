unit PegawaiFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids,
  ChildFrm, Vcl.DBGrids, Vcl.ExtCtrls, cyEdit, cyEditDate, Vcl.Buttons,DB;

//type THackGrid = class(TDBGrid);

type
  TForm3 = class(TChildForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label3: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DBGrid1: TDBGrid;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Edit3: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel1: TPanel;
    ComboBox3: TComboBox;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label6: TLabel;
    Panel2: TPanel;
    Bevel1: TBevel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure ComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
    function Dataterisi:boolean;
    Function Kodesatker1(Satker:string):string;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses ModulSrc,MainSrc,Myutils,MutasiFrm;
{$R *.dfm}


{procedure Refresh_PreservePosition;
 var
   rowDelta: Integer;
   row: integer;
   recNo: integer;
   ds : TDataSet;
 begin
   ds := THackGrid(DBGrid1).DataSource.DataSet;

   rowDelta := -1 + THackGrid(DBGrid1).Row;
   row := ds.RecNo;

   ds.Refresh;

   with ds do
   begin
     DisableControls;
     RecNo := row;
     MoveBy(-rowDelta) ;
     MoveBy(rowDelta) ;
     EnableControls;
   end;
 end;}


Function TForm3.Kodesatker1(Satker:string):string;
begin
  with Dm,Qexec do
  begin
     close;
     sql.Clear;
     sql.Text:='Select id_satker from tbl_satker Where Nama_satker=:ast';
     prepare;
     parambyname('ast').Value:=Satker;
     active:=true;
     result:=Fields[0].AsString;
  end;
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
  with dm do
   begin
     qpegawai.Prior;
     DBGrid1DblClick(nil);
   end;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
begin
  with dm do
   begin
     qpegawai.Next;
     DBGrid1DblClick(nil);
   end;
end;

Function TForm3.Dataterisi:boolean;
var
 lengkap:boolean;
begin
  lengkap:=true;
  if lengkap then lengkap:=Edit1.Text<>'';
  if lengkap then lengkap :=Edit2.Text<>'';
  if lengkap then lengkap:= ComboBox1.Text<>'';
  if lengkap then lengkap:= ComboBox2.Text<>'';
  if lengkap then lengkap:=ComboBox3.Text<>'';
  if not lengkap then
    MessageBox(Handle,'Ada data yang belum dimasukan','Peringatan',0) ;
  Result:=lengkap;
end;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
  with DBGrid1 do
   begin
     edit1.Text := Fields[0].AsString;
     edit2.Text := fields[1].AsString;
     combobox1.Text:= fields[2].AsString;
     combobox2.Text:=fields[3].AsString;
     combobox5.Text:=fields[5].AsString;
     combobox4.Text:=fields[6].AsString;
     edit4.Text:= fields[7].Asstring;
     edit5.Text:= fields[8].Asstring;
     edit6.Text:= fields[9].Asstring;
     combobox6.Text:=fields[10].AsString;
     edit3.Text:=fields[11].AsString;
     PageControl1.ActivePage:=TabSheet1;
     Button2.Caption:='Edit';
   end;
end;

procedure TForm3.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13  then
    perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
  Button1Click(self);
  //isiJabatan(combobox1);
  IsiPangkat(combobox2);
  combobox3.Items.Clear;
  isisatker(Combobox3);
  PageControl1.ActivePage:=TabSheet1;
end;

procedure TForm3.Button2Click(Sender: TObject);
var
  buku:TBookmark;
begin
  if button2.Caption='Simpan' then
     begin
       if dataterisi then
        begin
         with dm,Qexec do
          begin
            close;
            sql.Clear;
            sql.Text:='INSERT INTO tbl_pegawai(NIP,Nama,Jabatan,Golongan,satker,Sex,tl,tgl_lahir,tmpt_jabatan,tmt_pangkat,pendidikan,lulus)';
            sql.Add(' VALUES(:nips,:namas,:jabat,:gol,:idsat,:kel,:tempat,:ttl,:tmtjabatan,:tmtgol,:pendidik,:lulusan)');
            prepare;
            parambyname('nips').Value:= Edit1.Text;
            parambyname('namas').Value:=Edit2.Text;
            parambyname('jabat').Value:=ComboBox1.Text;
            parambyname('gol').Value:=ComboBox2.Text;
            parambyname('idsat').Value:=label6.Caption;
            parambyname('kel').Value:=ComboBox5.Text;
            parambyname('tempat').Value:=ComboBox4.Text;
            parambyname('ttl').Value:=edit4.Text;
            parambyname('tmtjabatan').Value:=edit5.Text;
            parambyname('tmtgol').Value:=edit6.Text;
            parambyname('pendidik').Value:=ComboBox6.Text;
            parambyname('lulusan').Value:=Edit3.Text;
            ExecSQL;
            ComboBox3Change(self);
            showmessage('Data tersimpan');
            Button1Click(nil);
          end
        end;
     end
  else if button2.Caption='Edit' then
     begin

        if dataterisi then
         begin
          buku:= dm.QPegawai.GetBookmark;
          DBGrid1.DataSource.DataSet.DisableControls;
           try
             with dm,Qexec do
               begin
                  close;
                  sql.Clear;
                  sql.Text:='Update tbl_pegawai SET Nama=:namas,Jabatan=:jabs,Golongan=:gols,satker=:sat';
                  sql.Add(',Sex=:kel,tl=:tls,tgl_lahir=:lahir,tmpt_jabatan=:tmtjab,tmt_pangkat=:tmtpang,pendidikan=:pend,lulus=:lus');
                  sql.Add(' WHERE NIP=:nips');
                  prepare;
                  parambyname('namas').Value:=edit2.Text;
                  parambyname('jabs').Value:=combobox1.Text;
                  parambyname('gols').Value:=combobox2.Text;
                  parambyname('sat').Value:=label6.Caption;
                  parambyname('kel').Value:=combobox5.Text;
                  parambyname('tls').Value:=combobox4.Text;
                  parambyname('lahir').Value:=edit4.Text;
                  parambyname('tmtjab').Value:=edit5.Text;
                  parambyname('tmtpang').Value:=edit6.Text;
                  parambyname('pend').Value:=combobox6.Text;
                  parambyname('lus').Value:=edit3.Text;
                  parambyname('nips').Value:=edit1.Text;
                  execSQL;
                  ComboBox3Change(self);
                  Showmessage('Data telah diupdate');
                  button2.Caption:='Simpan';
                  Button1Click(nil);
                  if CheckBox1.Checked then
                     Pagecontrol1.ActivePage:=TabSheet2;
                 if dm.QPegawai.BookmarkValid(buku) then
                    dm.QPegawai.GotoBookmark(buku);
                end;
          finally
            dm.QPegawai.FreeBookmark(buku);
            DBGrid1.DataSource.DataSet.EnableControls;
          end;
         end;
     end

 else
    ShowMessage('Tolong perbaiki');
end;



procedure TForm3.Button3Click(Sender: TObject);
begin
 if messagedlg('Ingin menghapus data NIP '+edit1.Text+#13#10+' Atas Nama : '+edit2.Text+' ini?',mtconfirmation,[mbok,mbno],0)=mrok then
   begin
      with Dm,Qexec do
       begin
         close;
         sql.Clear;
         sql.Text:='Delete From tbl_pegawai Where NIP=:nips';
         prepare;
         parambyname('nips').Value:=edit1.Text;
         execsql;
         ComboBox3Change(nil);
         Button1Click(nil);
       end;
   end;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  if Assigned(Form1.FormPegawai) then
    begin
      with Form1 do
      begin
        FormPegawai.Free;
        FormPegawai:=nil;
      end;
    end;
end;

procedure TForm3.Button5Click(Sender: TObject);
var
 nip,nama,jabatan:string;
begin

  if Dataterisi then
    begin
       nip:=edit1.Text;
       nama:=edit2.Text;
       jabatan:= combobox1.Text;
       with Form5 do
        begin
          edit1.Text:= nip;
          edit2.Text:= nama;
          edit5.Text:= jabatan;
          showmodal;
          edit1.ReadOnly:=true;
          edit2.ReadOnly:=true;
          edit5.ReadOnly:=true;
          Position:=poMainFormCenter;
        end;
    end;
end;

procedure TForm3.ComboBox3Change(Sender: TObject);
begin
 if combobox3.text<>'' then
   begin
     label6.Caption:=  Kodesatker1(combobox3.Text);
     with Dm,Qpegawai do
      begin
         if combobox3.Text='Semua' then
            begin
              close;
              sql.Text:='Select * from tbl_pegawai order by satker ASC';
              prepare;
              active:=true;
            end
         else
            begin
              close;
              sql.Clear;
              sql.Text:='Select * from tbl_pegawai where satker=:sat order by jabatan ASC';
              prepare;
              parambyname('sat').value:=label6.Caption;
              active:=true;
            end;

      end;
   end;
end;

procedure TForm3.ComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    ComboBox3Change(self);
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  Edit1.Text:='';
  Edit2.Text:='';
  edit3.Text:='';
  edit4.Text:='';
  edit5.Text:='';
  edit6.Text:='';
  ComboBox1.ItemIndex:=-1;
  ComboBox2.ItemIndex:=-1;
  combobox4.text:='';
  combobox5.text:='';
  combobox6.text:='';
  Edit1.SetFocus;
end;

end.
