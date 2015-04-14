unit JabatanFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,DB,
  Vcl.Grids, Vcl.DBGrids,ChildFrm, Vcl.Buttons,CommCtrl;

type
  TPageControl = class(Vcl.ComCtrls.TPageControl)
  private
    procedure TCMAdjustRect(var Msg: TMessage); message TCM_ADJUSTRECT;
  end;

  TForm2 = class(TChildForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button4: TButton;
    DBGrid1: TDBGrid;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Modulsrc,MainSrc;
{$R *.dfm}

procedure TPageControl.TCMAdjustRect(var Msg: TMessage);
begin
  inherited;
  if Msg.WParam = 0 then
    InflateRect(PRect(Msg.LParam)^, 4, 4)
  else
    InflateRect(PRect(Msg.LParam)^, -4, -4);
end;


procedure TForm2.Button1Click(Sender: TObject);
begin
  if Button1.Caption='Edit' then
    begin
      with dm,Qexec do
      begin
        close;
        sql.Clear;
        sql.Text:='UPDATE tbl_jabatan SET pangkat=:b,jabatan=:c WHERE golongan=:a';
        prepare;
        parambyname('b').Value:=Edit2.Text;
        parambyname('c').Value:=Edit3.Text;
        parambyname('a').Value:=Edit1.Text;
        ExecSQL;
        tblJabatan.Close;
        tbljabatan.Open;
        Edit1.Text:='';
        Edit2.Text:='';
        Edit3.Text:='';
        Button1.Caption:='Simpan';
      end;
    end
  else
     begin
      with DM,Qexec do
        begin
          Close;
          sql.Clear;
          sql.Text:='INSERT INTO tbl_jabatan VALUES (:gol,:pkt,:jab)';
          //params[0].DataType:=ftString;
          //params[1].DataType:=ftString;
          //params[2].DataType:=ftString;
          prepare;
          parambyname('gol').Value:=Edit1.Text;
          parambyname('pkt').Value:=Edit2.Text;
          parambyname('jab').Value:=Edit3.Text;
          ExecSQL;
          Tblpejabat.Close;
          Tblpejabat.Open;
          Edit1.Text:='';
          Edit2.Text:='';
          Edit3.Text:='';
          Edit1.SetFocus;
        end;
     end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  if MessageDlg('Mau menghapus data golongan '+Edit1.Text+' ini?',mtInformation,[
     mbOK,mbCancel],0)=mrok then
  begin
    with dm,qexec do
    begin
      Close;
      sql.Clear;
      sql.Text:='Delete From tbl_jabatan Where  golongan=:a';
      prepare;
      parambyname('a').Value:=Edit1.Text ;
      EXecSQL;
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      Edit1.SetFocus;
      tblpejabat.Close;
      tblpejabat.Open;
    end;
  end;

end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  if Assigned(Form1.FormJabatan) then
  begin
     with Form1 do
     begin
       FormJabatan.Free;
       FormJabatan:=nil;
     end;
  end;

end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Edit1.SetFocus;
  Edit1.Text:='';
  Edit2.Text:='';
  Edit3.Text:='';
  if Button1.Caption='Edit' then
    Button1.Caption:='Simpan'
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  ShowMessage(DBGrid1.Fields[0].AsString);
end;

procedure TForm2.DBGrid1DblClick(Sender: TObject);
begin
  with DbGrid1 do
  begin
    Edit1.Text:=fields[0].AsString;
    Edit2.Text:=fields[1].AsString;
    Edit3.Text:=fields[2].AsString;
    Button1.Caption:='Edit';
    PageControl1.ActivePage:=TabSheet1;
  end;
end;

procedure TForm2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 then
    Perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Button1.Caption:='Simpan';
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  if dm.tbljabatan.Eof then
   begin
     ShowMessage('Data terakhir..atau data kosong!!');
   end
  else
    begin
      with DBGrid1 do
      begin

       Edit1.Text:=fields[0].AsString;
       Edit2.Text:=fields[1].AsString;
       Edit3.Text:=fields[2].AsString;

      end;
    end;
end;

end.
