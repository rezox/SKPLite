unit ModulSrc;

interface

uses
  System.SysUtils, System.Classes, Data.DB, DBAccess, MemDS,
  ZAbstractTable,ZSqlUpdate, ZDataset, ZAbstractRODataset,
  ZAbstractDataset , ZAbstractConnection, ZConnection;

type
  TDM = class(TDataModule)
    MyConn: TZConnection;
    Qexec: TZQuery;
    tblpejabat: TZTable;
    DsPegawai: TDataSource;
    tbljabatan: TZTable;
    DsJabatan: TDataSource;
    tblsatker: TZTable;
    Dssatker: TDataSource;
    tbljabatangolongan: TWideStringField;
    tbljabatanpangkat: TWideStringField;
    tbljabatanjabatan: TWideStringField;
    QTemp: TZQuery;
    tblsatkerid_satker: TWideStringField;
    tblsatkerNama_satker: TWideStringField;
    tblsatkersatker_lengkap: TWideStringField;
    tblsatkeralamat: TWideStringField;
    tblsatkerwebsite: TWideStringField;
    tblsatkeremail: TWideStringField;
    tblsatkertelp: TWideStringField;
    tblsatkerfax: TWideStringField;
    QPegawai: TZQuery;
    TblPosisi: TZTable;
    DsPosisi: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
    function Cekidada(machine:TZQuery;idcari:string):string;
   // function EksekusiSQL(machine: TZQuery; _SQL: string): boolean;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}


Function TDm.Cekidada(machine:TZQuery; idcari: string):string;
begin
  result:= machine.FieldByName(idcari).toString;
end;

end.
