program ConfigOrgao;

uses
  Forms,
  gsLib in 'gsLib.pas',
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  ConfigOrgaoPrincipal in 'ConfigOrgaoPrincipal.pas' {frmPrincipal};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
