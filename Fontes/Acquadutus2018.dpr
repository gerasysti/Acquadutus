program Acquadutus2018;

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  VarGlobais in 'VarGlobais.pas',
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  gsLib in 'gsLib.pas',
  UtilsDb in 'UtilsDb.pas',
  Padrao1 in 'Padrao1.pas' {frmPadrao1},
  AjudaSobre in 'AjudaSobre.pas' {frmSobre},
  Login in 'Login.pas' {frmLogin},
  udmRelFinanceiros in 'udmRelFinanceiros.pas' {dmRelFinanceiros: TDataModule},
  udmRelDoctos in 'udmRelDoctos.pas' {dmRelDoctos: TDataModule},
  CriaUsuarioBanco in 'CriaUsuarioBanco.pas' {frmCriaUsuarioBanco},
  SelecionaOrgao in 'SelecionaOrgao.pas' {frmAddEditCidade},
  Configuracao in 'Configuracao.pas' {frmConfiguracao},
  AlteraSenha in 'AlteraSenha.pas' {frmAlteraSenha},
  udmTabelas in 'udmTabelas.pas' {dmTabelas},
  CadTabPadrao in 'CadTabPadrao.pas' {frmCadTabPadrao},
  CadPadrao in 'CadPadrao.pas' {frmCadPadrao},
  AtualizadorSistemaNovo in 'AtualizadorSistemaNovo.pas' {frmAtualizadorSistema},
  EditorComandosSQL in 'EditorComandosSQL.pas' {frmEditorComandosSQL},
  CorrigeBaixaFaturas in 'CorrigeBaixaFaturas.pas' {frmCorrigeBaixa},
  SelecionaMesAno in 'SelecionaMesAno.pas' {frmSelecionaMesAno},
  TabUsuario in 'TabUsuario.pas' {frmTabUsuario},
  TabCidade in 'TabCidade.pas' {frmTabCidade},
  TabLocalPagto in 'TabLocalPagto.pas' {frmTabLocalPagto},
  TabDistrito in 'TabDistrito.pas' {frmTabDistrito},
  TabBairro in 'TabBairro.pas' {frmTabBairro},
  TabLogradouro in 'TabLogradouro.pas' {frmTabLogradouro},
  SelecionaPadrao in 'SelecionaPadrao.pas' {frmSelecionaPadrao},
  SelecionaPadraoMulti in 'SelecionaPadraoMulti.pas' {frmSelecionaPadraoMulti},
  SelecionaCidade in 'SelecionaCidade.pas' {frmSelecionaCidade},
  SelecionaDistrito in 'SelecionaDistrito.pas' {frmSelecionaDistrito},
  SelecionaBairro in 'SelecionaBairro.pas' {frmSelecionaBairro},
  SelecionaLogradouro in 'SelecionaLogradouro.pas' {frmSelecionaLogradouro},
  SelecionaLocalPagto in 'SelecionaLocalPagto.pas' {frmSelecionaLocalPagto},
  AddEditPadrao in 'AddEditPadrao.pas' {frmAddEditPadrao},
  AddEditPadrao2 in 'AddEditPadrao2.pas' {frmAddEditPadrao2},
  CadTabPadrao2 in 'CadTabPadrao2.pas' {frmCadTabPadrao2},
  AddEditUsuario in 'AddEditUsuario.pas' {frmAddEditUsuario},
  AddEditCidade in 'AddEditCidade.pas' {frmAddEditCidade},
  AddEditLocalPagto in 'AddEditLocalPagto.pas' {frmAddEditLocalPagto},
  AddEditDistrito in 'AddEditDistrito.pas' {frmAddEditDistrito},
  AddEditBairro in 'AddEditBairro.pas' {frmAddEditBairro},
  AddEditLogradouro in 'AddEditLogradouro.pas' {frmAddEditLogradouro},
  TabTarifa in 'TabTarifa.pas' {frmCadTabPadrao2},
  AddEditTarifa1 in 'AddEditTarifa1.pas' {frmAddEditTarifa1},
  AddEditTarifa2 in 'AddEditTarifa2.pas' {frmAddEditTarifa2},
  fmeUnidConsumidora in 'fmeUnidConsumidora.pas' {frmeUnidConsum},
  FindUnidConsumidora in 'FindUnidConsumidora.pas' {frmFindUnidConsum},
  fmeDistrito in 'fmeDistrito.pas' {frmeDistrito},
  fmeBairro in 'fmeBairro.pas' {frmeBairro},
  fmeLogradouro in 'fmeLogradouro.pas' {frmeLogradouro},
  fmeMultiDistrito in 'fmeMultiDistrito.pas' {frmeMultiDistrito},
  fmeMultiBairro in 'fmeMultiBairro.pas' {frmeMultiBairro},
  fmeMultiLogradouro in 'fmeMultiLogradouro.pas' {frmeMultiLogradouro},
  fmeMultiLocalPagto in 'fmeMultiLocalPagto.pas' {frmeMultiLocalPagto},
  fmeFiltraCategSituacao in 'fmeFiltraCategSituacao.pas' {frmeFiltraCategSituac},
  fmeLocalPagto in 'fmeLocalPagto.pas' {frmeLocalPagto},
  fmePeriodoDatas in 'fmePeriodoDatas.pas' {frmePeriodoDt},
  ListaUnidConsumidora in 'ListaUnidConsumidora.pas' {frmListagemUnidConsumidora},
  DetalhaFatura in 'DetalhaFatura.pas' {frmDetalhaFatura},
  HistoricoFaturaCalcPaga in 'HistoricoFaturaCalcPaga.pas' {frmHistFatura},
  HistoricoCorteReligacao in 'HistoricoCorteReligacao.pas' {frmHistCorteRelig},
  DecAnualQuitacaoUC in 'DecAnualQuitacaoUC.pas' {frmDecAnualQuitaUC},
  CadUnidConsumidora in 'CadUnidConsumidora.pas' {frmCadUndidConsumidora},
  MudarPessoaDaUnidConsum in 'MudarPessoaDaUnidConsum.pas' {frmCadUnidConsumidora},
  FindPessoa in 'FindPessoa.pas' {frmFindPessoa},
  AddEditPessoa in 'AddEditPessoa.pas' {frmAddEditPessoa},
  SelecionaMultiDistrito in 'SelecionaMultiDistrito.pas' {frmSelecionaMultiDistrito},
  SelecionaMultiBairro in 'SelecionaMultiBairro.pas' {frmSelecionaMultiBairro},
  SelecionaMultiLogradouro in 'SelecionaMultiLogradouro.pas' {frmSelecionaMultiLogradouro},
  SelecionaMultiLocalPagto in 'SelecionaMultiLocalPagto.pas' {frmSelecionaMultiLocalPagto},
  PrintRelDiversos in 'PrintRelDiversos.pas' {frmPrintRelDiversos},
  DecAnualQuitacao in 'DecAnualQuitacao.pas' {frmDecAnualQuita},
  LanctoRequerimento in 'LanctoRequerimento.pas' {frmLanctoRequerimento},
  CalcTarifaBairro in 'CalcTarifaBairro.pas' {frmCalcTarifaBairro},
  CalcTarifaIndividual in 'CalcTarifaIndividual.pas' {frmCalcTarifaIndividual},
  CalcFaturaAvulsa in 'CalcFaturaAvulsa.pas' {frmCalcFaturaAvulsa},
  ImportArqPagtoTxt in 'ImportArqPagtoTxt.pas' {frmLanctoImportar},
  SelecionaServicoRequerimento in 'SelecionaServicoRequerimento.pas' {frmSelecionaItemFatura},
  SelecionaItemFatura in 'SelecionaItemFatura.pas' {frmSelecionaItemFatura},
  AddEditItemFaturaAvulsa in 'AddEditItemFaturaAvulsa.pas' {frmAddEditItemFatAvulsa},
  LanctoLeituraHidrometro in 'LanctoLeituraHidrometro.pas' {frmLanctoLeituraHidrom},
  LanctoOutroItemFatura in 'LanctoOutroItemFatura.pas' {frmLanctoOutroItemFatura},
  LanctoCorteReligacao in 'LanctoCorteReligacao.pas' {frmLanctoCorteReligacao},
  LanctoPagto in 'LanctoPagto.pas' {frmLanctoPagto};

Var
  iConta,
  iConta2: integer;

{$R *.res}

begin

  Application.Title := 'ACQUADUTU$2018';
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmTabelas, dmTabelas);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmPrintRelDiversos, frmPrintRelDiversos);
  Application.CreateForm(TfrmFindUnidConsum, frmFindUnidConsum);
  frmSobre.Show;
  frmSobre.Update;

  frmSobre.VerificaVersao('N');

  iConta := 1;
  while iConta <= 10000 do
  begin
    iConta2:= 1;
    while iConta2 <= 100000 do
    begin
       Inc(iConta2);
    end;
    Inc(iConta);
  end;

  Application.Run;

end.
