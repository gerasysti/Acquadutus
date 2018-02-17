unit udmRelUnidConsum;

interface

uses
  Windows, Messages, SysUtils, Classes, FMTBcd, DB, frxClass, frxDBSet, SqlExpr,
  Provider, DBClient, Forms, Variants, Controls, StrUtils, StdCtrls, frxRich,
  frxDesgn, frxExportPDF, Graphics, Dialogs, Padrao1, Buttons, ComCtrls,
  Mask, frxExportRTF, frxExportXML;

type
  TdmRelUnidConsum = class(TDataModule)
    frxReport1: TfrxReport;
    qryConfigOrgao: TSQLQuery;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    frxConfigOrgao: TfrxDBDataset;
    qryUnidConsumLograd: TSQLQuery;
    provUnidConsumLograd: TDataSetProvider;
    cdsUnidConsumLograd: TClientDataSet;
    frxUnidConsumLograd: TfrxDBDataset;
    qryEventoCalc: TSQLQuery;
    frxMovimento: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    cdsUC_EnderCobranca: TClientDataSet;
    qryUC_EnderCobranca: TSQLQuery;
    provUC_EnderCobranca: TDataSetProvider;
    frxUC_EnderCobranca: TfrxDBDataset;
    cdsConfigOrgaoID: TIntegerField;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoSIGLA: TStringField;
    cdsConfigOrgaoCNPJ: TStringField;
    cdsConfigOrgaoENDER_ID_LOGRAD: TIntegerField;
    cdsConfigOrgaoENDER_LOGRAD_NUM: TStringField;
    cdsConfigOrgaoENDER_ID_BAIRRO: TIntegerField;
    cdsConfigOrgaoENDER_CIDADE: TStringField;
    cdsConfigOrgaoENDER_CEP: TStringField;
    cdsConfigOrgaoENDER_UF: TStringField;
    cdsConfigOrgaoLOGOMARCA: TBlobField;
    cdsConfigOrgaoTELEFONES: TStringField;
    cdsConfigOrgaoE_MAIL: TStringField;
    cdsConfigOrgaoTIPO_FATURA: TStringField;
    cdsConfigOrgaoRAZAO_SOCIAL2: TStringField;
    cdsConfigOrgaoCNPJ_FTDO: TStringField;
    cdsConfigOrgaoENDERECO: TStringField;
    cdsConfigOrgaoSIGLA2: TStringField;
    cdsConfigOrgaoENDER_CEP_FTDO: TStringField;
    cdsConfigOrgaoNOME_SYS: TStringField;
    cdsConfigOrgaoPASTA_ATUALIZA: TStringField;
    cdsConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    cdsConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
    qryMovimento: TSQLQuery;
    provMovimento: TDataSetProvider;
    cdsMovimento: TClientDataSet;
    cdsUnidConsumLogradID: TIntegerField;
    cdsUnidConsumLogradID_PESSOA: TIntegerField;
    cdsUnidConsumLogradTIPO_PESSOA: TStringField;
    cdsUnidConsumLogradNUM_LIGACAO: TStringField;
    cdsUnidConsumLogradDT_LIGACAO: TDateField;
    cdsUnidConsumLogradSITUACAO: TStringField;
    cdsUnidConsumLogradENDER_ID_LOGRAD: TIntegerField;
    cdsUnidConsumLogradENDER_NUM: TIntegerField;
    cdsUnidConsumLogradENDER_NUM_LETRA: TStringField;
    cdsUnidConsumLogradENDER_COMPLEMENTO: TStringField;
    cdsUnidConsumLogradENDER_ID_BAIRRO: TIntegerField;
    cdsUnidConsumLogradENDER_ID_DISTRITO: TIntegerField;
    cdsUnidConsumLogradENDER_ID_LOGRAD2: TIntegerField;
    cdsUnidConsumLogradENDER_NUM2: TIntegerField;
    cdsUnidConsumLogradENDER_NUM_LETRA2: TStringField;
    cdsUnidConsumLogradENDER_COMPLEMENTO2: TStringField;
    cdsUnidConsumLogradENDER_ID_BAIRRO2: TIntegerField;
    cdsUnidConsumLogradENDER_ID_DISTRITO2: TIntegerField;
    cdsUnidConsumLogradTIPO_UNID_CONSUM: TStringField;
    cdsUnidConsumLogradFORMA_CALCULO: TStringField;
    cdsUnidConsumLogradNUM_HIDROMETRO: TStringField;
    cdsUnidConsumLogradDT_INSTAL_HIDROM: TDateField;
    cdsUnidConsumLogradQTD_TORNEIRA: TIntegerField;
    cdsUnidConsumLogradMULTIPLICADOR: TIntegerField;
    cdsUnidConsumLogradOBSERV_FATURA: TStringField;
    cdsUnidConsumLogradOBSERVACAO: TMemoField;
    cdsUnidConsumLogradENDER_DESCR_BAIRRO: TStringField;
    cdsUnidConsumLogradENDER_DESCR_LOGRADOURO: TStringField;
    cdsUnidConsumLogradENDER_DESCR_BAIRRO2: TStringField;
    cdsUnidConsumLogradENDER_DESCR_LOGRADOURO2: TStringField;
    cdsUnidConsumLogradNOME_PESSOA: TStringField;
    cdsUnidConsumLogradCPF_CNPJ: TStringField;
    cdsUnidConsumLogradCPF_CNPJ_FTDO: TStringField;
    cdsUnidConsumLogradDESCR_TIPO_PESSOA: TStringField;
    cdsUnidConsumLogradNOME_FANTASIA: TStringField;
    cdsUnidConsumLogradRG_NUM: TStringField;
    cdsUnidConsumLogradRG_ORGAO_EMISSOR: TStringField;
    cdsUnidConsumLogradRG_UF: TStringField;
    cdsUnidConsumLogradRG_DT_EMISSAO: TDateField;
    cdsUnidConsumLogradENDER_DESCR_DISTRITO: TStringField;
    cdsUnidConsumLogradENDER_DESCR_DISTRITO2: TStringField;
    cdsUnidConsumLogradENDER_DESCR_LOGRAD: TStringField;
    cdsUnidConsumLogradENDER_DESCR_LOGRAD2: TStringField;
    cdsUnidConsumLogradDESCR_FORMA_CALCULO: TStringField;
    cdsUnidConsumLogradDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsUnidConsumLogradDESCR_SITUACAO: TStringField;
    cdsConfigOrgaoTIT_REL1: TStringField;
    cdsConfigOrgaoTIT_REL2: TStringField;
    cdsConfigOrgaoTIT_REL3: TStringField;
    qryUnidConsumGeral: TSQLQuery;
    provUnidConsumGeral: TDataSetProvider;
    cdsUnidConsumGeral: TClientDataSet;
    frxUnidConsumGeral: TfrxDBDataset;
    cdsUnidConsumGeralID: TIntegerField;
    cdsUnidConsumGeralID_PESSOA: TIntegerField;
    cdsUnidConsumGeralTIPO_PESSOA: TStringField;
    cdsUnidConsumGeralNUM_LIGACAO: TStringField;
    cdsUnidConsumGeralDT_LIGACAO: TDateField;
    cdsUnidConsumGeralSITUACAO: TStringField;
    cdsUnidConsumGeralENDER_ID_LOGRAD: TIntegerField;
    cdsUnidConsumGeralENDER_NUM: TIntegerField;
    cdsUnidConsumGeralENDER_NUM_LETRA: TStringField;
    cdsUnidConsumGeralENDER_COMPLEMENTO: TStringField;
    cdsUnidConsumGeralENDER_ID_BAIRRO: TIntegerField;
    cdsUnidConsumGeralENDER_ID_DISTRITO: TIntegerField;
    cdsUnidConsumGeralENDER_ID_LOGRAD2: TIntegerField;
    cdsUnidConsumGeralENDER_NUM2: TIntegerField;
    cdsUnidConsumGeralENDER_NUM_LETRA2: TStringField;
    cdsUnidConsumGeralENDER_COMPLEMENTO2: TStringField;
    cdsUnidConsumGeralENDER_ID_BAIRRO2: TIntegerField;
    cdsUnidConsumGeralENDER_ID_DISTRITO2: TIntegerField;
    cdsUnidConsumGeralTIPO_UNID_CONSUM: TStringField;
    cdsUnidConsumGeralFORMA_CALCULO: TStringField;
    cdsUnidConsumGeralNUM_HIDROMETRO: TStringField;
    cdsUnidConsumGeralDT_INSTAL_HIDROM: TDateField;
    cdsUnidConsumGeralQTD_TORNEIRA: TIntegerField;
    cdsUnidConsumGeralMULTIPLICADOR: TIntegerField;
    cdsUnidConsumGeralOBSERV_FATURA: TStringField;
    cdsUnidConsumGeralOBSERVACAO: TMemoField;
    cdsUnidConsumGeralENDER_DESCR_BAIRRO: TStringField;
    cdsUnidConsumGeralENDER_DESCR_LOGRADOURO: TStringField;
    cdsUnidConsumGeralENDER_DESCR_BAIRRO2: TStringField;
    cdsUnidConsumGeralENDER_DESCR_LOGRADOURO2: TStringField;
    cdsUnidConsumGeralNOME_PESSOA: TStringField;
    cdsUnidConsumGeralCPF_CNPJ: TStringField;
    cdsUnidConsumGeralCPF_CNPJ_FTDO: TStringField;
    cdsUnidConsumGeralDESCR_TIPO_PESSOA: TStringField;
    cdsUnidConsumGeralNOME_FANTASIA: TStringField;
    cdsUnidConsumGeralRG_NUM: TStringField;
    cdsUnidConsumGeralRG_ORGAO_EMISSOR: TStringField;
    cdsUnidConsumGeralRG_UF: TStringField;
    cdsUnidConsumGeralRG_DT_EMISSAO: TDateField;
    cdsUnidConsumGeralENDER_DESCR_DISTRITO: TStringField;
    cdsUnidConsumGeralENDER_DESCR_DISTRITO2: TStringField;
    cdsUnidConsumGeralENDER_DESCR_LOGRAD: TStringField;
    cdsUnidConsumGeralENDER_DESCR_LOGRAD2: TStringField;
    cdsUnidConsumGeralDESCR_FORMA_CALCULO: TStringField;
    cdsUnidConsumGeralDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsUnidConsumGeralDESCR_SITUACAO: TStringField;
    cdsUnidConsumGeralENDER_UC_NUM_LETRA: TStringField;
    cdsUnidConsumGeralENDER_UC_NUM_LETRA2: TStringField;
    cdsUnidConsumGeralDT_ULT_CORTE: TDateField;
    cdsUnidConsumGeralDT_ULT_RELIG: TDateField;
    cdsUnidConsumLogradENDER_UC_NUM_LETRA: TStringField;
    cdsUnidConsumLogradENDER_UC_NUM_LETRA2: TStringField;
    cdsUnidConsumLogradDT_ULT_CORTE: TDateField;
    cdsUnidConsumLogradDT_ULT_RELIG: TDateField;
    cdsUC_EnderCobrancaID: TIntegerField;
    cdsUC_EnderCobrancaID_PESSOA: TIntegerField;
    cdsUC_EnderCobrancaTIPO_PESSOA: TStringField;
    cdsUC_EnderCobrancaNUM_LIGACAO: TStringField;
    cdsUC_EnderCobrancaDT_LIGACAO: TDateField;
    cdsUC_EnderCobrancaSITUACAO: TStringField;
    cdsUC_EnderCobrancaENDER_ID_LOGRAD: TIntegerField;
    cdsUC_EnderCobrancaENDER_NUM: TIntegerField;
    cdsUC_EnderCobrancaENDER_NUM_LETRA: TStringField;
    cdsUC_EnderCobrancaENDER_COMPLEMENTO: TStringField;
    cdsUC_EnderCobrancaENDER_ID_BAIRRO: TIntegerField;
    cdsUC_EnderCobrancaENDER_ID_DISTRITO: TIntegerField;
    cdsUC_EnderCobrancaENDER_ID_LOGRAD2: TIntegerField;
    cdsUC_EnderCobrancaENDER_NUM2: TIntegerField;
    cdsUC_EnderCobrancaENDER_NUM_LETRA2: TStringField;
    cdsUC_EnderCobrancaENDER_COMPLEMENTO2: TStringField;
    cdsUC_EnderCobrancaENDER_ID_BAIRRO2: TIntegerField;
    cdsUC_EnderCobrancaENDER_ID_DISTRITO2: TIntegerField;
    cdsUC_EnderCobrancaTIPO_UNID_CONSUM: TStringField;
    cdsUC_EnderCobrancaFORMA_CALCULO: TStringField;
    cdsUC_EnderCobrancaNUM_HIDROMETRO: TStringField;
    cdsUC_EnderCobrancaDT_INSTAL_HIDROM: TDateField;
    cdsUC_EnderCobrancaQTD_TORNEIRA: TIntegerField;
    cdsUC_EnderCobrancaMULTIPLICADOR: TIntegerField;
    cdsUC_EnderCobrancaOBSERV_FATURA: TStringField;
    cdsUC_EnderCobrancaOBSERVACAO: TMemoField;
    cdsUC_EnderCobrancaENDER_DESCR_BAIRRO: TStringField;
    cdsUC_EnderCobrancaENDER_DESCR_LOGRADOURO: TStringField;
    cdsUC_EnderCobrancaENDER_DESCR_BAIRRO2: TStringField;
    cdsUC_EnderCobrancaENDER_DESCR_LOGRADOURO2: TStringField;
    cdsUC_EnderCobrancaNOME_PESSOA: TStringField;
    cdsUC_EnderCobrancaCPF_CNPJ: TStringField;
    cdsUC_EnderCobrancaCPF_CNPJ_FTDO: TStringField;
    cdsUC_EnderCobrancaDESCR_TIPO_PESSOA: TStringField;
    cdsUC_EnderCobrancaNOME_FANTASIA: TStringField;
    cdsUC_EnderCobrancaRG_NUM: TStringField;
    cdsUC_EnderCobrancaRG_ORGAO_EMISSOR: TStringField;
    cdsUC_EnderCobrancaRG_UF: TStringField;
    cdsUC_EnderCobrancaRG_DT_EMISSAO: TDateField;
    cdsUC_EnderCobrancaENDER_DESCR_DISTRITO: TStringField;
    cdsUC_EnderCobrancaENDER_DESCR_DISTRITO2: TStringField;
    cdsUC_EnderCobrancaENDER_DESCR_LOGRAD: TStringField;
    cdsUC_EnderCobrancaENDER_DESCR_LOGRAD2: TStringField;
    cdsUC_EnderCobrancaDESCR_FORMA_CALCULO: TStringField;
    cdsUC_EnderCobrancaDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsUC_EnderCobrancaDESCR_SITUACAO: TStringField;
    cdsUC_EnderCobrancaENDER_UC_NUM_LETRA: TStringField;
    cdsUC_EnderCobrancaENDER_UC_NUM_LETRA2: TStringField;
    cdsUC_EnderCobrancaDT_ULT_CORTE: TDateField;
    cdsUC_EnderCobrancaDT_ULT_RELIG: TDateField;
    frxEstatisticaMovim: TfrxDBDataset;
    cdsEstatisticaMovim: TClientDataSet;
    provEstatisticaMovim: TDataSetProvider;
    qryEstatisticaMovim: TSQLQuery;
    cdsEstatisticaMovimR_ID_DISTRITO: TIntegerField;
    cdsEstatisticaMovimR_DESCR_DISTRITO: TStringField;
    cdsEstatisticaMovimR_ID_BAIRRO: TIntegerField;
    cdsEstatisticaMovimR_DESCR_BAIRRO: TStringField;
    cdsEstatisticaMovimR_ID_LOGRAD: TIntegerField;
    cdsEstatisticaMovimR_DESCR_LOGRAD: TStringField;
    cdsEstatisticaMovimR_QTD_LIGACAO: TIntegerField;
    cdsEstatisticaMovimR_QTD_CORTE: TIntegerField;
    cdsEstatisticaMovimR_QTD_RELIGACAO: TIntegerField;
    cdsEstatisticaMovimR_TOT_LIGACAO_BAIRRO: TIntegerField;
    cdsEstatisticaMovimR_TOT_CORTE_BAIRRO: TIntegerField;
    cdsEstatisticaMovimR_TOT_RELIGACAO_BAIRRO: TIntegerField;
    cdsEstatisticaMovimR_TOT_LIGACAO_DISTRITO: TIntegerField;
    cdsEstatisticaMovimR_TOT_CORTE_DISTRITO: TIntegerField;
    cdsEstatisticaMovimR_TOT_RELIGACAO_DISTRITO: TIntegerField;
    qryEstatisticaGeral: TSQLQuery;
    provEstatisticaGeral: TDataSetProvider;
    cdsEstatisticaGeral: TClientDataSet;
    frxEstatisticaGeral: TfrxDBDataset;
    cdsEstatisticaGeralR_ID_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_DESCR_DISTRITO: TStringField;
    cdsEstatisticaGeralR_ID_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_DESCR_BAIRRO: TStringField;
    cdsEstatisticaGeralR_ID_LOGRAD: TIntegerField;
    cdsEstatisticaGeralR_DESCR_LOGRAD: TStringField;
    cdsEstatisticaGeralR_QTD_LIGACAO: TIntegerField;
    cdsEstatisticaGeralR_QTD_CORTE: TIntegerField;
    cdsEstatisticaGeralR_QTD_RELIGACAO: TIntegerField;
    cdsEstatisticaGeralR_QTD_UNID: TIntegerField;
    cdsEstatisticaGeralR_QTD_AGUARDANDO: TIntegerField;
    cdsEstatisticaGeralR_QTD_ATIVA: TIntegerField;
    cdsEstatisticaGeralR_QTD_CORTADA: TIntegerField;
    cdsEstatisticaGeralR_QTD_DESATIVADA: TIntegerField;
    cdsEstatisticaGeralR_QTD_ISENTA: TIntegerField;
    cdsEstatisticaGeralR_TOT_LIGACAO_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_CORTE_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_RELIGACAO_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_UNID_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_AGUARDANDO_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_ATIVA_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_CORTADA_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_DESATIVADA_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_ISENTA_BAIRRO: TIntegerField;
    cdsEstatisticaGeralR_TOT_LIGACAO_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_CORTE_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_RELIGACAO_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_UNID_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_AGUARDANDO_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_ATIVA_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_CORTADA_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_DESATIVADA_DISTRITO: TIntegerField;
    cdsEstatisticaGeralR_TOT_ISENTA_DISTRITO: TIntegerField;
    cdsEstatisticaMovimR_ID_CATEG: TStringField;
    cdsEstatisticaMovimR_DESCR_CATEG: TStringField;
    cdsMovimentoR_ID_LOGRAD: TIntegerField;
    cdsMovimentoR_DESCR_LOGRAD: TStringField;
    cdsMovimentoR_NUM_IMOVEL: TStringField;
    cdsMovimentoR_ID_UNID_CONSUN: TStringField;
    cdsMovimentoR_DT_MOVIM: TDateField;
    cdsMovimentoR_NOME_RAZAO: TStringField;
    cdsMovimentoR_CPF_CNPJ: TStringField;
    cdsMovimentoR_DESCR_CATEG: TStringField;
    cdsMovimentoR_ID_LANCTO: TIntegerField;
    cdsMovimentoR_OBERV: TStringField;
    cdsMovimentoR_RESID: TIntegerField;
    cdsMovimentoR_COMERC: TIntegerField;
    cdsMovimentoR_INDUSTR: TIntegerField;
    cdsMovimentoR_OUTRO: TIntegerField;
    qryResumoPtsConsum: TSQLQuery;
    provResumoPtsConsum: TDataSetProvider;
    cdsResumoPtsConsum: TClientDataSet;
    frxResumoPtsConsum: TfrxDBDataset;
    cdsResumoPtsConsumR_ID_DISTRITO: TIntegerField;
    cdsResumoPtsConsumR_DESCR_DISTRITO: TStringField;
    cdsResumoPtsConsumR_ID_BAIRRO: TIntegerField;
    cdsResumoPtsConsumR_DESCR_BAIRRO: TStringField;
    cdsResumoPtsConsumR_MULTIPLIC: TIntegerField;
    cdsResumoPtsConsumR_QTD_PTS: TIntegerField;
    cdsResumoPtsConsumR_QTD_RESID: TIntegerField;
    cdsResumoPtsConsumR_QTD_COMERC: TIntegerField;
    cdsResumoPtsConsumR_QTD_INDUSTR: TIntegerField;
    cdsResumoPtsConsumR_QTD_OUTRO: TIntegerField;
    cdsResumoPtsConsumR_QTD_TOTAL: TIntegerField;
    cdsResumoPtsConsumR_VAL_TARIFA1: TFMTBCDField;
    cdsResumoPtsConsumR_VAL_TARIFA2: TFMTBCDField;
    cdsResumoPtsConsumR_VAL_TARIFA3: TFMTBCDField;
    cdsResumoPtsConsumR_VAL_TARIFA4: TFMTBCDField;
    cdsConfigOrgaoVERSAO_SYS: TStringField;
    cdsConfigOrgaoNOME_FR3: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    pv_sTipoFatura    : string[1];
    pv_lGeraTabEventos: Boolean;
    pv_sPathRel       : String;
    pv_sEventos       : WideString;
    pv_sAnoMes        : String[6];
    pv_sParcela       : String[1];
  public
    { Public declarations }
    procedure RelUnidConsumGeral(sMultiDistrito, sMultiBairro, sSituacao: string;
       lVisualizar: Boolean);
    Procedure RelUnidConsumLogradouro(sBairro: string; sMultiLograd: widestring;
      sPessoa, sCategoria, sSituacao, sFormaCalc, sDtLigacaoIni,
      sDtLigacaoFim: String; lVisualizar: Boolean);
    procedure RelUC_EnderCobrDiferente(sBairro: string; sMultiLograd: widestring;
      lVisualizar: Boolean);
    procedure RelProtocolEntregaCCheque(sAnoMes, sParcela: String;
      iUnidGestora: Integer; sSubUnidsOrcams, sUnidsLotacs: WideString;
      lSomenteSemCC, lOrdemUnidLotac, lVisualizar: Boolean);
    Procedure RelMovimCorteRelig(sBairro: string; sMultiLograd: widestring;
      sDtIni, sDtFim, sTipoMovim: String;
      lVisualizar: Boolean);
    procedure RelEstatisticaMovim(sMultiDistrito, sMultiBairro, sMultiLograd: widestring; sDtIni, sDtFim,
      sTipoEstatistica, sSuprimeLograd: String; lVisualizar: Boolean);
    procedure RelResumoPontosConsumo(sBairro, sSituacao: string;
      lVisualizar: Boolean);
  end;

var
  dmRelUnidConsum: TdmRelUnidConsum;

implementation

uses VarGlobais, udmPrincipal, uTeste, gsLib, UtilsDb;

{$R *.dfm}

procedure TdmRelUnidConsum.DataModuleCreate(Sender: TObject);
Var
  iConta: integer;
begin

  for iConta := 0 to ComponentCount - 1 do
  begin
     if Components[iConta] is TClientDataSet then
        TClientDataSet(Components[iConta]).Close;
     if (Components[iConta] is TSQLQuery) and
        (TSQLQuery(Components[iConta]).Active) then
        TSQLQuery(Components[iConta]).Close;
  end;

  pv_lGeraTabEventos := False;
  cdsConfigOrgao.Close;
  cdsUnidConsumLograd.Close;
  //qryEventoCalc.Close;

  pv_sPathRel := GetPathRel();

  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL2.Value :=
     Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoCNPJ.Value :=
     Criptografa(cdsConfigOrgaoCNPJ.Value,'2',14);
  cdsConfigOrgaoCNPJ_FTDO.Value :=
     Criptografa(cdsConfigOrgaoSIGLA.Value,'2',10);
  cdsConfigOrgaoCNPJ_FTDO.Value :=
     FormatString('99.999.999/9999-99',cdsConfigOrgaoCNPJ.Value);
  cdsConfigOrgaoENDER_CEP_FTDO.Value := FormatString('99.999-999',
     cdsConfigOrgaoENDER_CEP.Value);
  cdsConfigOrgaoENDERECO.Value := cdsConfigOrgaoENDER_DESCR_LOGRAD.Value+
     ', '+cdsConfigOrgaoENDER_LOGRAD_NUM.Value;
  cdsConfigOrgaoNOME_SYS.Value  := glb_sSistema;
  cdsConfigOrgaoVERSAO_SYS.Value:= 'Versão: ['+glb_sVersao+']';

  cdsConfigOrgao.Post;
end;

procedure TdmRelUnidConsum.DataModuleDestroy(Sender: TObject);
begin
  cdsConfigOrgao.Close;
end;

Procedure TdmRelUnidConsum.RelUnidConsumGeral(sMultiDistrito, sMultiBairro, sSituacao: string;
  lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;

  if sMultiDistrito = '' then sMultiDistrito := '0';
  if sMultiBairro = ''   then sMultiBairro := '0';

  if sSituacao = '0' then
     sSituacao := 'T'
  else
     sSituacao := IntToStr(StrToInt(sSituacao)-1);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoNOME_FR3.Value := 'UnidConsumGeral_V2.fr3';
  cdsConfigOrgaoTIT_REL1.Value := 'Unidades Consumidoras (Ordem Alfabética) ';
  if sMultiDistrito = '0' then
     cdsConfigOrgaoTIT_REL2.Value := 'Todos os Distritos'
  else
     cdsConfigOrgaoTIT_REL2.Value := 'Distrito(s): '+sMultiDistrito;
  if sMultiBairro = '0' then
     cdsConfigOrgaoTIT_REL3.Value := 'Todos os Bairrios'
  else
     cdsConfigOrgaoTIT_REL3.Value := 'Bairro(s): '+sMultiBairro;
  cdsConfigOrgao.Post;

  sMultiDistrito := AjustaTextoParamVarios(sMultiDistrito);
  sMultiBairro := AjustaTextoParamVarios(sMultiBairro);

  cdsUnidConsumGeral.Close;
  qryUnidConsumGeral.ParamByName('pMultiDistrito').AsString := sMultiDistrito;
  qryUnidConsumGeral.ParamByName('pMultiBairro').AsString := sMultiBairro;
  if sSituacao <> 'T' then
  begin
     cdsUnidConsumGeral.Filter := 'SITUACAO = '+QuotedStr(sSituacao);
     cdsUnidConsumGeral.Filtered := True;
  end;
  cdsUnidConsumGeral.Open;

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaoNOME_FR3.Value));

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

Procedure TdmRelUnidConsum.RelUnidConsumLogradouro(sBairro: string;
  sMultiLograd: widestring; sPessoa, sCategoria, sSituacao, sFormaCalc,
  sDtLigacaoIni, sDtLigacaoFim: String;
  lVisualizar: Boolean);
Var
  sDistrito: string;
begin

  cdsConfigOrgao.Edit;

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  cdsConfigOrgaoNOME_FR3.Value := 'UnidConsumLogradouro_V2.fr3';
  cdsConfigOrgaoTIT_REL1.Value := 'Unidades Consumidoras do Distrito: '+
     Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','');
  cdsConfigOrgaoTIT_REL1.Value := cdsConfigOrgaoTIT_REL1.Value + ' - Bairro: '+
     Pesquisa('BAIRRO','ID',sBairro,'DESCRICAO','');
  if sCategoria <> '0' then
     cdsConfigOrgaoTIT_REL2.Value := 'Categoria: '+DescrCategoria(sCategoria)
  else
     cdsConfigOrgaoTIT_REL2.Value := 'Todas as Categorias';
  if sSituacao <> '0' then
     cdsConfigOrgaoTIT_REL2.Value := cdsConfigOrgaoTIT_REL2.Value + ' - Situação: '+DescrSituacao(sSituacao)
  else
     cdsConfigOrgaoTIT_REL2.Value := cdsConfigOrgaoTIT_REL2.Value + ' - Todas as Situações';

  cdsConfigOrgaoTIT_REL3.Value := '';
  cdsConfigOrgao.Post;

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);

  if sSituacao = '0' then
     sSituacao := 'T'
  else
     sSituacao := IntToStr(StrToInt(sSituacao)-1);

  cdsUnidConsumLograd.Close;
  qryUnidConsumLograd.ParamByName('pDistrito').AsString   := Trim(sDistrito);
  qryUnidConsumLograd.ParamByName('pBairro').AsString   := Trim(sBairro);
  qryUnidConsumLograd.ParamByName('pMultiLograd').AsString:= sMultiLograd;
  qryUnidConsumLograd.ParamByName('pTipoPessoaIni').AsString := 'F';
  qryUnidConsumLograd.ParamByName('pTipoPessoaFim').AsString := 'J';
  qryUnidConsumLograd.ParamByName('pTipoUnidIni').Value:= '0';
  qryUnidConsumLograd.ParamByName('pTipoUnidFim').Value:= '9';
  if sCategoria <> '0' then
  begin
     qryUnidConsumLograd.ParamByName('pTipoUnidIni').Value:= sCategoria;
     qryUnidConsumLograd.ParamByName('pTipoUnidFim').Value:= sCategoria;
  end;
  qryUnidConsumLograd.ParamByName('pSituacIni').Value:= '0';
  qryUnidConsumLograd.ParamByName('pSituacFim').Value:= '9';
  if sSituacao <> 'T' then
  begin
    qryUnidConsumLograd.ParamByName('pSituacIni').Value:= sSituacao;
    qryUnidConsumLograd.ParamByName('pSituacFim').Value:= sSituacao;
  end;

  qryUnidConsumLograd.ParamByName('pFormaCalcIni').Value:= '1';
  qryUnidConsumLograd.ParamByName('pFormaCalcFim').Value:= '2';
  qryUnidConsumLograd.ParamByName('pDtLigacaoIni').Value:= StrToDate('01/01/1901');
  qryUnidConsumLograd.ParamByName('pDtLigacaoFim').Value:= StrToDate('31/12/2099');
  if not EmptyData(sDtLigacaoIni) then
     qryUnidConsumLograd.ParamByName('pDtLigacaoIni').Value:= StrToDate(sDtLigacaoIni);
  if not EmptyData(sDtLigacaoFim) then
     qryUnidConsumLograd.ParamByName('pDtLigacaoFim').Value:= StrToDate(sDtLigacaoFim);
  cdsUnidConsumLograd.Open;

  if cdsUnidConsumLograd.RecordCount = 0 then
  begin
     Mensagem('Não há Unid. Consumidora(s) p/ imprimir ...',
        'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
     exit;
  end;

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaoNOME_FR3.Value));

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

Procedure TdmRelUnidConsum.RelMovimCorteRelig(sBairro: string; sMultiLograd: widestring;
  sDtIni, sDtFim, sTipoMovim: String; lVisualizar: Boolean);
Var
  sDistrito: string;
begin

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoNOME_FR3.Value := 'UC_MovimCorteRelig_V2.fr3';
  cdsConfigOrgaoTIT_REL2.Value := 'Unidades Consumidoras do Distrito: '+
     Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','');
  cdsConfigOrgaoTIT_REL2.Value := cdsConfigOrgaoTIT_REL2.Value + ' - Bairro: '+
     Pesquisa('BAIRRO','ID',sBairro,'DESCRICAO','');
  if sTipoMovim = '1' then
     cdsConfigOrgaoTIT_REL3.Value := 'Ligadas'
  else if sTipoMovim = '2' then
     cdsConfigOrgaoTIT_REL3.Value := 'Cortadas'
  else
     cdsConfigOrgaoTIT_REL3.Value := 'Religadas';
  cdsConfigOrgaoTIT_REL3.Value := cdsConfigOrgaoTIT_REL3.Value +' No Período de '+sDtIni+' a '+sDtFim;
  cdsConfigOrgao.Post;

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);

  cdsMovimento.Close;
  qryMovimento.ParamByName('pMovim').AsString := sTipoMovim;
  qryMovimento.ParamByName('pDtIni').Value:= StrToDate('01/01/1901');
  qryMovimento.ParamByName('pDtFim').Value:= StrToDate('31/12/2099');
  if not EmptyData(sDtIni) then
     qryMovimento.ParamByName('pDtIni').Value:= StrToDate(sDtIni);
  if not EmptyData(sDtFim) then
     qryMovimento.ParamByName('pDtFim').Value:= StrToDate(sDtFim);
  qryMovimento.ParamByName('pBairro').AsString   := Trim(sBairro);
  qryMovimento.ParamByName('pMultiLograd').AsString:= sMultiLograd;
  cdsMovimento.Open;

  if cdsMovimento.RecordCount = 0 then
  begin
     Mensagem('Não há Unid. Consumidora(s) p/ imprimir ...',
        'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
     exit;
  end;

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaoNOME_FR3.Value));

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

Procedure TdmRelUnidConsum.RelEstatisticaMovim(sMultiDistrito,sMultiBairro,
  sMultiLograd: widestring;
  sDtIni, sDtFim, sTipoEstatistica, sSuprimeLograd: String;
  lVisualizar: Boolean);
begin

  cdsConfigOrgao.Edit;
  if EmptyData(sDtIni) then
     sDtIni := '01/01/1901';
  if EmptyData(sDtFim) then
     sDtFim := '31/12/2099';

  if sTipoEstatistica = '1' then
  begin
     if sSuprimeLograd = 'N' then
        cdsConfigOrgaoNOME_FR3.Value := 'UC_EstatisticaGeral_v2.fr3'
     else
        cdsConfigOrgaoNOME_FR3.Value := 'UC_EstatisticaGeral2_v2.fr3';
  end else
  begin
     if sSuprimeLograd = 'N' then
        cdsConfigOrgaoNOME_FR3.Value := 'UC_EstatisticaMovimento_v2.fr3'
     else
        cdsConfigOrgaoNOME_FR3.Value := 'UC_EstatisticaMovimento2_v2.fr3';
  end;

  if sTipoEstatistica = '1' then
     cdsConfigOrgaoTIT_REL2.Value := 'Estatística Geral das Unidades Consumidoras'
  else
     cdsConfigOrgaoTIT_REL2.Value := 'Estatística de Movimento das Unidades Consumidoras';
  cdsConfigOrgaoTIT_REL3.Value := 'Período de '+sDtIni+' a '+sDtFim;
  cdsConfigOrgao.Post;

  sMultiDistrito:= AjustaTextoParamVarios(sMultiDistrito);
  sMultiBairro  := AjustaTextoParamVarios(sMultiBairro);
  sMultiLograd  := AjustaTextoParamVarios(sMultiLograd);

  if sTipoEstatistica = '1' then
  begin
     cdsEstatisticaGeral.Close;
     qryEstatisticaGeral.ParamByName('pDtIni').Value:= StrToDate(sDtIni);
     qryEstatisticaGeral.ParamByName('pDtFim').Value:= StrToDate(sDtFim);
     qryEstatisticaGeral.ParamByName('pMultiDistrito').AsString   := Trim(sMultiDistrito);
     qryEstatisticaGeral.ParamByName('pMultiBairro').AsString   := Trim(sMultiBairro);
     qryEstatisticaGeral.ParamByName('pMultiLograd').AsString:= sMultiLograd;
     cdsEstatisticaGeral.Open;
  end else
  begin
     cdsEstatisticaMovim.Close;
     qryEstatisticaMovim.ParamByName('pDtIni').Value:= StrToDate(sDtIni);
     qryEstatisticaMovim.ParamByName('pDtFim').Value:= StrToDate(sDtFim);
     qryEstatisticaMovim.ParamByName('pMultiDistrito').AsString   := Trim(sMultiDistrito);
     qryEstatisticaMovim.ParamByName('pMultiBairro').AsString   := Trim(sMultiBairro);
     qryEstatisticaMovim.ParamByName('pMultiLograd').AsString:= sMultiLograd;
     cdsEstatisticaMovim.Open;
  end;

  {
  if cdsEstatistica2.RecordCount = 0 then
  begin
     Mensagem('Não há Movimento p/ imprimir ...',
        'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
     exit;
  end;
  }

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaoNOME_FR3.Value));

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelUnidConsum.RelProtocolEntregaCCheque(sAnoMes, sParcela: String; iUnidGestora: Integer;
  sSubUnidsOrcams, sUnidsLotacs: WideString; lSomenteSemCC, lOrdemUnidLotac, lVisualizar: Boolean);
begin

end;

Procedure TdmRelUnidConsum.RelUC_EnderCobrDiferente(sBairro: string;
  sMultiLograd: widestring; lVisualizar: Boolean);
Var
  sDistrito: string;
begin

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoNOME_FR3.Value := 'UC_EnderCobrDiferente_V2.fr3';
  cdsConfigOrgaoTIT_REL2.Value := 'Unidades Consumidoras com Endereço de Cobrança Diferente';
  cdsConfigOrgaoTIT_REL3.Value := 'Distrito: '+sDistrito+' - '+Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','')+
     ' - Bairro: '+sBairro+' - '+Pesquisa('BAIRRO','ID',sBairro,'DESCRICAO','');
  cdsConfigOrgao.Post;

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);

  cdsUC_EnderCobranca.Close;
  qryUC_EnderCobranca.ParamByName('pDistrito').AsString   := Trim(sDistrito);
  qryUC_EnderCobranca.ParamByName('pBairro').AsString     := Trim(sBairro);
  qryUC_EnderCobranca.ParamByName('pMultiLograd').AsString:= sMultiLograd;
  cdsUC_EnderCobranca.Open;

  if cdsUC_EnderCobranca.RecordCount = 0 then
  begin
     Mensagem('Não há Unid. Consumidora(s) p/ imprimir ...',
        'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
     exit;
  end;

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaoNOME_FR3.Value));

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

Procedure TdmRelUnidConsum.RelResumoPontosConsumo(sBairro, sSituacao: string; lVisualizar: Boolean);
Var
  sDistrito: string;
begin

  if Trim(sBairro) = '' then
  Begin
    sBairro   := '0';
    sDistrito := '0';
  End else
    sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  if sSituacao = '0' then
     sSituacao := 'T'
  else
     sSituacao := IntToStr(StrToInt(sSituacao)-1);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoNOME_FR3.Value := 'ResumoPontosConsumo.fr3';
  cdsConfigOrgaoTIT_REL1.Value := 'Resumo de Unidaes  Consumidoras por Pontos de Consumo (Torneiras)';
  cdsConfigOrgaoTIT_REL2.Value := 'Situação: '+iIf(sSituacao='T','Todas (Geral)',
    iIf(sSituacao='1','Somente as Ativas',iIf(sSituacao='2','Somente as Inativas',
      iIf(sSituacao='3','Somente as Desativadas','Somente as que Aguardam Ligação')))) ;
  cdsConfigOrgao.Post;

  cdsResumoPtsConsum.Close;
  qryResumoPtsConsum.ParamByName('Distrito').AsString := Trim(sDistrito);
  qryResumoPtsConsum.ParamByName('Bairro').AsString   := Trim(sBairro);
  qryResumoPtsConsum.ParamByName('situacao').AsString := sSituacao;
  cdsResumoPtsConsum.Open;

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaoNOME_FR3.Value));

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

  cdsResumoPtsConsum.Close;

end;

end.
