program Acquadutus;

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  gsLib in 'gsLib.pas',
  UtilsDb in 'UtilsDb.pas',
  Padrao1 in 'Padrao1.pas' {frmPadrao1},
  Login in 'Login.pas' {frmLogin},
  AjudaSobre in 'AjudaSobre.pas' {frmSobre},
  CadTabPadrao in 'CadTabPadrao.pas' {frmCadTabPadrao},
  AddEditPadrao in 'AddEditPadrao.pas' {frmAddEditPadrao},
  AddEditContaBanco in 'AddEditContaBanco.pas' {frmAddEditContaBanco},
  TabCidade in 'TabCidade.pas' {frmTabCidade},
  TabContaBanco in 'TabContaBanco.pas' {frmTabContaBanco},
  AddEditCidade in 'AddEditCidade.pas' {frmAddEditCidade},
  CadPadrao in 'CadPadrao.pas' {frmCadPadrao},
  CalcFaturaAvulsa in 'CalcFaturaAvulsa.pas' {frmCalcFaturaAvulsa},
  FindFavorecido in 'FindFavorecido.pas' {frmFindFavorecido},
  SelecionaPadrao in 'SelecionaPadrao.pas' {frmSelecionaPadrao},
  AddEditPessoa in 'AddEditPessoa.pas' {frmAddEditPessoa},
  FindRequerimento in 'FindRequerimento.pas' {frmFindRequerimento},
  CadTabPadrao2 in 'CadTabPadrao2.pas' {frmCadTabPadrao2},
  TabTarifa in 'TabTarifa.pas' {frmTabTarifa},
  AddEditTarifa2 in 'AddEditTarifa2.pas' {frmAddEditTarifa2},
  AddEditTarifa1 in 'AddEditTarifa1.pas' {frmAddEditTarifa1},
  ListaUnidConsumidora in 'ListaUnidConsumidora.pas' {frmListagemUnidConsumidora},
  fmeLogradouro in 'fmeLogradouro.pas' {frmeLogradouro: TFrame},
  fmeFiltraCategSituacao in 'fmeFiltraCategSituacao.pas' {frmeFiltraCategSituac: TFrame},
  LanctoPagto in 'LanctoPagto.pas' {frmLanctoPagto},
  AddEditPadrao2 in 'AddEditPadrao2.pas' {frmAddEditPadrao2},
  AddEditLanPagto in 'AddEditLanPagto.pas' {frmAddEditLanPagto},
  SelecionaMesAno in 'SelecionaMesAno.pas' {frmSelecionaMesAno},
  TabUsuario in 'TabUsuario.pas' {frmTabUsuario},
  AddEditUsuario in 'AddEditUsuario.pas' {frmAddEditUsuario},
  LanctoLeituraHidrometro in 'LanctoLeituraHidrometro.pas' {frmLanctoLeituraHidrom},
  AddEditLanLeituraHidrometro in 'AddEditLanLeituraHidrometro.pas' {frmAddEditLanLeituraHidrom},
  AlteraSenha in 'AlteraSenha.pas' {frmAlteraSenha},
  fmeBairro in 'fmeBairro.pas' {frmeBairro: TFrame},
  CalcTarifaIndividual in 'CalcTarifaIndividual.pas' {frmCalcTarifaIndividual},
  PrintRelDiversos in 'PrintRelDiversos.pas' {frmPrintRelDiversos},
  CorrigeBaixaFaturas in 'CorrigeBaixaFaturas.pas' {frmCorrigeBaixa},
  udmRelUnidConsum in 'udmRelUnidConsum.pas' {dmRelUnidConsum: TDataModule},
  Configuracao in 'Configuracao.pas' {frmConfiguracao},
  fmeMultiLogradouro in 'fmeMultiLogradouro.pas' {frmeMultiLogradouro: TFrame},
  udmRelFinanceiros in 'udmRelFinanceiros.pas' {dmRelFinanceiros: TDataModule},
  udmRelDoctos in 'udmRelDoctos.pas' {dmRelTabela: TDataModule},
  LanctoOutroItemFatura in 'LanctoOutroItemFatura.pas' {frmLanctoOutroItemFatura},
  AddEditLanOutroItemFatura in 'AddEditLanOutroItemFatura.pas' {frmAddEditLanOutroItem},
  LanctoCorteReligacao in 'LanctoCorteReligacao.pas' {frmLanctoCorteReligacao},
  AddEditLanCorteReligacao in 'AddEditLanCorteReligacao.pas' {frmAddEditLanCorteReligacao},
  fmeLocalPagto in 'fmeLocalPagto.pas' {frmeLocalPagto: TFrame},
  fmeDistrito in 'fmeDistrito.pas' {frmeDistrito: TFrame},
  LanctoRequerimento in 'LanctoRequerimento.pas' {frmLanctoRequerimento},
  AddFaturasEmAberto in 'AddFaturasEmAberto.pas' {frmAddFatEmAberto},
  HistoricoLanctoLeitura in 'HistoricoLanctoLeitura.pas' {frmHistLanctoLeitura},
  fmeUnidConsumidora in 'fmeUnidConsumidora.pas' {frmeUnidConsum: TFrame},
  HistoricoCorteReligacao in 'HistoricoCorteReligacao.pas' {frmHistCorteRelig},
  fmeMultiLocalPagto in 'fmeMultiLocalPagto.pas' {frmeMultiLocalPagto: TFrame},
  fmeMultiDistrito in 'fmeMultiDistrito.pas' {frmeMultiDistrito: TFrame},
  VarGlobais in 'VarGlobais.pas',
  fmePeriodoDatas in 'fmePeriodoDatas.pas' {frmePeriodoDt: TFrame},
  fmeMultiBairro in 'fmeMultiBairro.pas' {frmeMultiBairro: TFrame},
  SelectMultiPadrao in 'SelectMultiPadrao.pas' {frmSelectMultiPadrao},
  ImportArqPagtoTxt in 'ImportArqPagtoTxt.pas' {frmLanctoImportar},
  FindFaturaAvulsa in 'FindFaturaAvulsa.pas' {frmFindFaturaAvulsa},
  udmRelTabelas1 in 'udmRelTabelas1.pas' {dmRelTabelas1: TDataModule},
  SelectMultiLocalPagto in 'SelectMultiLocalPagto.pas' {frmSelectMultiLocalPagto},
  CriaUsuarioBanco in 'CriaUsuarioBanco.pas' {frmCriaUsuarioBanco},
  CadFavorecido in 'CadFavorecido.pas' {frmCadFavorecido},
  FindUnidConsumidora in 'FindUnidConsumidora.pas' {frmFindUnidConsum},
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  AddEditItemFaturaAvulsa in 'AddEditItemFaturaAvulsa.pas' {frmAddEditItemFatAvulsa},
  CalcTarifaBairro in 'CalcTarifaBairro.pas' {frmCalcTarifaBairro},
  SelecionaOrgao in 'SelecionaOrgao.pas' {frmSelectOrgao},
  MsgDialog in 'MsgDialog.pas' {frmMsgDialog},
  EditorComandosSQL in 'EditorComandosSQL.pas' {frmEditComandosSQL},
  SelectMultiLogradouro in 'SelectMultiLogradouro.pas' {frmSelectMultiLograd},
  TabEntidFinanceira in 'TabEntidFinanceira.pas' {frmEntidFinanc},
  AddEditEntidFinanc in 'AddEditEntidFinanc.pas' {frmAddEditEntidFinanc},
  TabLogradouro in 'TabLogradouro.pas' {frmTabLogradouro},
  AddEditBairro in 'AddEditBairro.pas' {frmAddEditBairro},
  FindPessoa in 'FindPessoa.pas' {frmFindPessoa},
  CadUnidConsumidora in 'CadUnidConsumidora.pas' {frmCadUnidConsumidora},
  MudarPessoaDaUnidConsum in 'MudarPessoaDaUnidConsum.pas' {frmMudarPessoaUC},
  DecAnualQuitacao in 'DecAnualQuitacao.pas' {frmDecAnualQuita},
  GraficoResumoFinanceiro in 'GraficoResumoFinanceiro.pas' {frmGrfcoResumFinanc},
  HistoricoFaturaCalcPaga in 'HistoricoFaturaCalcPaga.pas' {frmHistFatura},
  DecAnualQuitacaoUC in 'DecAnualQuitacaoUC.pas' {frmDecAnualQuitaUC},
  AddEditLocalPagto in 'AddEditLocalPagto.pas' {frmAddEditLocalPagto},
  AtualizadorSistemaNovo in 'AtualizadorSistemaNovo.pas' {frmAtualizadorSistema},
  udmTabelas in 'udmTabelas.pas' {dmTabelas: TDataModule};

Var
  iConta,
  iConta2: integer;

{$R *.res}

begin
  Application.Title := 'ACQUADUTU$';
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmSobre, frmSobre);
  Application.CreateForm(TfrmFindUnidConsum, frmFindUnidConsum);
  Application.CreateForm(TfrmPrintRelDiversos, frmPrintRelDiversos);
  Application.CreateForm(TfrmMsgDialog, frmMsgDialog);
  Application.CreateForm(TdmTabelas, dmTabelas);
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
