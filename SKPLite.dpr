program SKPLite;

uses
  Vcl.Forms,
  MainSrc in 'MainSrc.pas' {Form1},
  JabatanFrm in 'JabatanFrm.pas' {Form2},
  ModulSrc in 'ModulSrc.pas' {DM: TDataModule},
  PegawaiFrm in 'PegawaiFrm.pas' {Form3},
  ConnFrm in 'ConnFrm.pas' {Form4},
  SatkerFrm in 'SatkerFrm.pas' {FrmSatker},
  MyUtils in 'MyUtils.pas',
  MutasiFrm in 'MutasiFrm.pas' {Form5},
  JobFrm in 'JobFrm.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TFrmSatker, FrmSatker);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
