unit MyUtils;

interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,DB,
  CommCtrl;


  Function Kodesatker(satker:string): String;
  procedure IsiJabatan(cmb:TComboBox);
  procedure IsiPangkat(cmdpangkat:TComboBox);
  procedure isiSatker(tcombo:TCombobox);

implementation
uses Modulsrc;

procedure IsiSatker(tcombo:TCombobox);
var
 i:integer;
begin
  tcombo.Items.Clear;
  tcombo.Text:='';
  with dm,qtemp do
    begin
      close;
      sql.Clear;
      sql.Text:='select nama_satker from tbl_satker order by id_satker asc';
      prepare;
      Open;
      while not Eof do
        begin
          tcombo.Items.Add(fields.Fields[0].AsString);
          Next;
        end;
    end;

end;

Function Kodesatker(Satker:string):string;
var
 i:integer;
begin
  with Dm,Qexec do
  begin
     close;
     sql.Clear;
     sql.Text:='Select id_satker Where Nama_satker=:ast';
     prepare;
     parambyname('ast').Value:=Satker;
     Open;
     result:=Fields[0].AsString;
  end;
end;

Procedure IsiJabatan(cmb:TComboBox);
var
 i:integer;
 maxi:integer;
begin
  with Dm do
  begin
    for i :=  1 to 17 do
      begin
        if tbljabatanjabatan.AsString<>'-' then
         begin
           cmb.Items.Add(tbljabatanjabatan.AsString);
         end;
        tbljabatan.Next;
      end;
  end;
end;

procedure isiPangkat(cmdpangkat:TCombobox);
var
 i:integer;
 maxi:integer;
begin
  cmdpangkat.Items.Clear;
  with Dm do
  begin
    for i :=  1 to 17 do
      begin
        cmdpangkat.Items.Add(tbljabatanpangkat.AsString);
        tbljabatan.Next;
      end;
  end;
end;

{
 procedure SelCombo(sql:ansiString;Q:TSQLQuery; var Combo:TComboBox);
var i: integer;
begin
  Q.Close;
  Q.SQL.Text:='';
  Q.Open(sql);
  Combo.Text:='';
  while not Q.Eof do begin
    Combo.Items.Add(Q.Fields.Fields[0].AsString);
    Q.Next;
  end;
  Q.Close;
end;
}


end.
