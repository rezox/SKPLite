unit ConnFrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,StdCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
uses Modulsrc;
{$R *.dfm}



procedure TForm4.Button1Click(Sender: TObject);
begin

  if OpenDialog1.Execute then
     begin
       OpenDialog1.InitialDir:=ExtractFilePath(Application.exename);
       Edit1.Text:= OpenDialog1.FileName;
     end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
   if (Button2.Caption = 'Disconnect') then
    begin
      dm.MyConn.Connected:=false;
      Button2.Caption:='Connect'
    end
   else
    begin
       with Dm,MyConn do
       begin
         Database:=Edit1.Text;
         LibraryLocation:='F:\Delphi\sqlite3.dll';
         user:=Edit2.Text;
         password:=Edit3.Text;
         Connect;
         if not tbljabatan.Active then
           tbljabatan.Active:=true;
         if not tblpejabat.Active then
           tblpejabat.Active:=true;
         if not tblsatker.Active then
           tblsatker.Active:=true;
         Button2.Caption:='Disconnect';
       end;
    end;

end;

procedure TForm4.Button3Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
  if not Dm.MyConn.Connected then
    Button2.Caption:='Connect'
  else
  begin
    Edit2.Text:='';
    Edit3.Text:='';
    Edit1.Text:='';
  end;
end;

end.
