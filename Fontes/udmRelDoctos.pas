unit udmRelDoctos;

interface

uses
  Windows, Messages, SysUtils, Classes, FMTBcd, DB, frxClass, frxDBSet, SqlExpr,
  Provider, DBClient, Forms, Variants, Controls, StrUtils, StdCtrls, frxRich,
  frxDesgn, frxExportPDF, Graphics, Dialogs, Padrao1, Buttons, ComCtrls,
  Mask, frxExportRTF, frxExportXML, frxBarcode;

type
  TdmRelDoctos = class(TDataModule)
    frxReport1: TfrxReport;
    qryConfigOrgao: TSQLQuery;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    frxConfigOrgao: TfrxDBDataset;
    qryFatura: TSQLQuery;
    provFatura: TDataSetProvider;
    cdsFatura: TClientDataSet;
    frxFatura: TfrxDBDataset;
    qryLocalPagto: TSQLQuery;
    mTbEvento: TClientDataSet;
    frxEvento: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    cdsServidorPECC: TClientDataSet;
    qryServidorPECC: TSQLQuery;
    provServidorPECC: TDataSetProvider;
    frxServidorPECC: TfrxDBDataset;
    qryServidorPECCANO_MES: TStringField;
    qryServidorPECCID_SERVIDOR: TIntegerField;
    qryServidorPECCID_SUB_UNID_ORCAMENT: TIntegerField;
    qryServidorPECCID_CARGO: TIntegerField;
    qryServidorPECCID_CARGO2: TIntegerField;
    qryServidorPECCDT_ADMISSAO: TDateField;
    qryServidorPECCID_UNID_LOTACAO: TIntegerField;
    qryServidorPECCID_DEPTO: TIntegerField;
    qryServidorPECCEFETIVO: TStringField;
    qryServidorPECCID_SITUACAO_TCM: TIntegerField;
    qryServidorPECCID_EST_FUNCIONAL: TIntegerField;
    qryServidorPECCQTD_DIAS_TRAB: TIntegerField;
    qryServidorPECCDT_MOVIM1: TDateField;
    qryServidorPECCTIPO_MOVIM1: TStringField;
    qryServidorPECCDT_MOVIM2: TDateField;
    qryServidorPECCTIPO_MOVIM2: TStringField;
    qryServidorPECCCALC_PREVID: TStringField;
    qryServidorPECCCALC_IRRF: TStringField;
    qryServidorPECCBLOQ_LANCTO_EVENTO_AUTO: TStringField;
    qryServidorPECCTEMPO_SERVICO: TStringField;
    qryServidorPECCID_PROGRES_SAL: TIntegerField;
    qryServidorPECCQTD_DEPEND_SAL_FAM: TIntegerField;
    qryServidorPECCQTD_DEPEND_P_ALIMENT: TIntegerField;
    qryServidorPECCQTD_DEPEND_IRRF: TIntegerField;
    qryServidorPECCCARGA_HOR_MENSAL: TIntegerField;
    qryServidorPECCCALC_VENCTO_BASE: TStringField;
    qryServidorPECCVENCTO_BASE_CARGO: TFMTBCDField;
    qryServidorPECCTIPO_SAL: TStringField;
    qryServidorPECCFORMA_CALC_SAL: TStringField;
    qryServidorPECCBC_HORA_AULA: TIntegerField;
    qryServidorPECCDESCR_TIPO_SAL: TStringField;
    qryServidorPECCDESCR_SUB_UND_ORCAM: TStringField;
    qryServidorPECCDESCR_CARGO: TStringField;
    qryServidorPECCDESCR_UNID_LOTACAO: TStringField;
    qryServidorPECCDESCR_DEPTO: TStringField;
    qryServidorPECCDESCR_SITUAC_TCM: TStringField;
    qryServidorPECCDESCR_EST_FUNCIONAL: TStringField;
    qryServidorPECCMOVIM_DEFINITIVA: TStringField;
    qryServidorPECCDESCR_EFETIVO: TStringField;
    qryServidorPECCID_UNID_GESTORA: TIntegerField;
    qryServidorPECCNOME_SERVIDOR: TStringField;
    qryServidorPECCDESCR_SUB_UNID_ORCAM2: TStringField;
    qryServidorPECCMES_ANO: TStringField;
    qryServidorPECCEF_PAGTO_ENTID_PREVID: TStringField;
    qryServidorPECCCALC_ATS_SOBRE_VENCTO_BASE: TStringField;
    qryServidorPECCANO_MES_1: TStringField;
    qryServidorPECCPARCELA: TStringField;
    qryServidorPECCID_SERVIDOR_1: TIntegerField;
    qryServidorPECCCH_CALC_FALTA_PROF: TIntegerField;
    qryServidorPECCBC_SAL_FAM: TFMTBCDField;
    qryServidorPECCBC_ATS: TFMTBCDField;
    qryServidorPECCBC_FERIAS: TFMTBCDField;
    qryServidorPECCBC_DEC_TERC: TFMTBCDField;
    qryServidorPECCBC_FALTA: TFMTBCDField;
    qryServidorPECCBC_PREVID: TFMTBCDField;
    qryServidorPECCBC_IRRF: TFMTBCDField;
    qryServidorPECCBC_OUTRA1: TFMTBCDField;
    qryServidorPECCBC_OUTRA2: TFMTBCDField;
    qryServidorPECCBC_OUTRA3: TFMTBCDField;
    qryServidorPECCTOT_VENCTO: TFMTBCDField;
    qryServidorPECCTOT_DESCONTO: TFMTBCDField;
    qryServidorPECCSAL_LIQUIDO: TFMTBCDField;
    qryServidorPECCDT_PAGTO: TDateField;
    qryServidorPECCID_SUB_UNID_ORCAM: TIntegerField;
    qryServidorPECCID_CARGO_1: TIntegerField;
    qryServidorPECCMES_ANO_1: TStringField;
    qryServidorPECCID_UNID_GESTORA_1: TIntegerField;
    qryServidorPECCDESCR_PARCELA: TStringField;
    qryServidorPECCEFETIVO_1: TStringField;
    cdsServidorPECCANO_MES: TStringField;
    cdsServidorPECCID_SERVIDOR: TIntegerField;
    cdsServidorPECCID_SUB_UNID_ORCAMENT: TIntegerField;
    cdsServidorPECCID_CARGO: TIntegerField;
    cdsServidorPECCID_CARGO2: TIntegerField;
    cdsServidorPECCDT_ADMISSAO: TDateField;
    cdsServidorPECCID_UNID_LOTACAO: TIntegerField;
    cdsServidorPECCID_DEPTO: TIntegerField;
    cdsServidorPECCEFETIVO: TStringField;
    cdsServidorPECCID_SITUACAO_TCM: TIntegerField;
    cdsServidorPECCID_EST_FUNCIONAL: TIntegerField;
    cdsServidorPECCQTD_DIAS_TRAB: TIntegerField;
    cdsServidorPECCDT_MOVIM1: TDateField;
    cdsServidorPECCTIPO_MOVIM1: TStringField;
    cdsServidorPECCDT_MOVIM2: TDateField;
    cdsServidorPECCTIPO_MOVIM2: TStringField;
    cdsServidorPECCCALC_PREVID: TStringField;
    cdsServidorPECCCALC_IRRF: TStringField;
    cdsServidorPECCBLOQ_LANCTO_EVENTO_AUTO: TStringField;
    cdsServidorPECCTEMPO_SERVICO: TStringField;
    cdsServidorPECCID_PROGRES_SAL: TIntegerField;
    cdsServidorPECCQTD_DEPEND_SAL_FAM: TIntegerField;
    cdsServidorPECCQTD_DEPEND_P_ALIMENT: TIntegerField;
    cdsServidorPECCQTD_DEPEND_IRRF: TIntegerField;
    cdsServidorPECCCARGA_HOR_MENSAL: TIntegerField;
    cdsServidorPECCCALC_VENCTO_BASE: TStringField;
    cdsServidorPECCVENCTO_BASE_CARGO: TFMTBCDField;
    cdsServidorPECCTIPO_SAL: TStringField;
    cdsServidorPECCFORMA_CALC_SAL: TStringField;
    cdsServidorPECCBC_HORA_AULA: TIntegerField;
    cdsServidorPECCDESCR_TIPO_SAL: TStringField;
    cdsServidorPECCDESCR_SUB_UND_ORCAM: TStringField;
    cdsServidorPECCDESCR_CARGO: TStringField;
    cdsServidorPECCDESCR_UNID_LOTACAO: TStringField;
    cdsServidorPECCDESCR_DEPTO: TStringField;
    cdsServidorPECCDESCR_SITUAC_TCM: TStringField;
    cdsServidorPECCDESCR_EST_FUNCIONAL: TStringField;
    cdsServidorPECCMOVIM_DEFINITIVA: TStringField;
    cdsServidorPECCDESCR_EFETIVO: TStringField;
    cdsServidorPECCID_UNID_GESTORA: TIntegerField;
    cdsServidorPECCNOME_SERVIDOR: TStringField;
    cdsServidorPECCDESCR_SUB_UNID_ORCAM2: TStringField;
    cdsServidorPECCMES_ANO: TStringField;
    cdsServidorPECCEF_PAGTO_ENTID_PREVID: TStringField;
    cdsServidorPECCCALC_ATS_SOBRE_VENCTO_BASE: TStringField;
    cdsServidorPECCANO_MES_1: TStringField;
    cdsServidorPECCPARCELA: TStringField;
    cdsServidorPECCID_SERVIDOR_1: TIntegerField;
    cdsServidorPECCCH_CALC_FALTA_PROF: TIntegerField;
    cdsServidorPECCBC_SAL_FAM: TFMTBCDField;
    cdsServidorPECCBC_ATS: TFMTBCDField;
    cdsServidorPECCBC_FERIAS: TFMTBCDField;
    cdsServidorPECCBC_DEC_TERC: TFMTBCDField;
    cdsServidorPECCBC_FALTA: TFMTBCDField;
    cdsServidorPECCBC_PREVID: TFMTBCDField;
    cdsServidorPECCBC_IRRF: TFMTBCDField;
    cdsServidorPECCBC_OUTRA1: TFMTBCDField;
    cdsServidorPECCBC_OUTRA2: TFMTBCDField;
    cdsServidorPECCBC_OUTRA3: TFMTBCDField;
    cdsServidorPECCTOT_VENCTO: TFMTBCDField;
    cdsServidorPECCTOT_DESCONTO: TFMTBCDField;
    cdsServidorPECCSAL_LIQUIDO: TFMTBCDField;
    cdsServidorPECCDT_PAGTO: TDateField;
    cdsServidorPECCID_SUB_UNID_ORCAM: TIntegerField;
    cdsServidorPECCID_CARGO_1: TIntegerField;
    cdsServidorPECCMES_ANO_1: TStringField;
    cdsServidorPECCID_UNID_GESTORA_1: TIntegerField;
    cdsServidorPECCDESCR_PARCELA: TStringField;
    cdsServidorPECCEFETIVO_1: TStringField;
    qryConfigOrgaoID: TIntegerField;
    qryConfigOrgaoRAZAO_SOCIAL: TStringField;
    qryConfigOrgaoSIGLA: TStringField;
    qryConfigOrgaoCNPJ: TStringField;
    qryConfigOrgaoENDER_ID_LOGRAD: TIntegerField;
    qryConfigOrgaoENDER_LOGRAD_NUM: TStringField;
    qryConfigOrgaoENDER_ID_BAIRRO: TIntegerField;
    qryConfigOrgaoENDER_CIDADE: TStringField;
    qryConfigOrgaoENDER_CEP: TStringField;
    qryConfigOrgaoENDER_UF: TStringField;
    qryConfigOrgaoLOGOMARCA: TBlobField;
    qryConfigOrgaoTELEFONES: TStringField;
    qryConfigOrgaoE_MAIL: TStringField;
    qryConfigOrgaoTIPO_FATURA: TStringField;
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
    qryConfigOrgaoPASTA_ATUALIZA: TStringField;
    qryConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    qryConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
    cdsConfigOrgaoPASTA_ATUALIZA: TStringField;
    cdsConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    cdsConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
    qryItemFatura: TSQLQuery;
    provItemFatura: TDataSetProvider;
    cdsItemFatura: TClientDataSet;
    mTbEventoCodigo: TMemoField;
    mTbEventoDescricao: TMemoField;
    mTbEventoValor: TMemoField;
    cdsItemFaturaR_ID_ITEM: TIntegerField;
    cdsItemFaturaR_DESCR_ITEM: TStringField;
    cdsItemFaturaR_VAL_ITEM: TFMTBCDField;
    cdsItemFaturaR_TIPO: TStringField;
    cdsItemFaturaR_COD_ITEM: TStringField;
    cdsFaturaR_ID_UNID_CONSUM: TIntegerField;
    cdsFaturaR_DT_LIGACAO: TDateField;
    cdsFaturaR_DT_EMISSAO: TDateField;
    cdsFaturaR_DIAS_CONSUMO: TStringField;
    cdsFaturaR_DT_PREV_PROX_LEITURA: TStringField;
    cdsFaturaR_DT_LEITURA: TStringField;
    cdsFaturaR_LEITURA_ANTERIOR: TStringField;
    cdsFaturaR_LEITURA_ATUAL: TStringField;
    cdsFaturaR_CONSUMO_M3: TStringField;
    cdsFaturaR_VOLUME_FATURADO: TStringField;
    cdsFaturaR_DT_VENCIMENTO: TDateField;
    cdsFaturaR_QTD_TORNEIRA: TIntegerField;
    cdsFaturaR_MULTIPLICADOR: TIntegerField;
    cdsFaturaR_VAL_PRINCIPAL: TFMTBCDField;
    cdsFaturaR_VAL_MULTA: TFMTBCDField;
    cdsFaturaR_VAL_OUTRO_DEB: TFMTBCDField;
    cdsFaturaR_VAL_OUTRO_CRED: TFMTBCDField;
    cdsFaturaR_VAL_TOTAL: TFMTBCDField;
    cdsFaturaR_OBSERV_FATURA: TStringField;
    cdsFaturaR_NOME_PESSOA: TStringField;
    cdsFaturaR_CPF_CNPJ_FTDO: TStringField;
    cdsFaturaR_DESCR_TIPO_UNID_CONSUM: TStringField;
    cdsFaturaR_DESCR_FORMA_CALCULO: TStringField;
    cdsFaturaR_NUM_HIDROMETRO: TStringField;
    cdsFaturaR_ENDER_COMPLETO: TStringField;
    cdsFaturaR_ENDER_ID_BAIRRO: TIntegerField;
    cdsFaturaR_ENDER_DESCR_BAIRRO: TStringField;
    cdsFaturaR_ENDER_ID_LOGRAD: TIntegerField;
    cdsFaturaR_ENDER_DESCR_LOGRAD: TStringField;
    cdsFaturaR_ENDER_NUM_LETRA: TStringField;
    cdsFaturaR_ENDER_COMPLEMENTO: TStringField;
    cdsFaturaR_ENDER_COMPLETO2: TStringField;
    cdsFaturaR_ENDER_ID_BAIRRO2: TIntegerField;
    cdsFaturaR_ENDER_DESCR_BAIRRO2: TStringField;
    cdsFaturaR_ENDER_ID_LOGRAD2: TIntegerField;
    cdsFaturaR_ENDER_DESCR_LOGRAD2: TStringField;
    cdsFaturaR_ENDER_NUM_LETRA2: TStringField;
    cdsFaturaR_ENDER_COMPLEMENTO2: TStringField;
    cdsFaturaR_MES_ANO_FTDO: TStringField;
    cdsFaturaR_ID_UNID_CONSUM_FTDO: TStringField;
    cdsFaturaR_LOCAL_PAGTO1: TStringField;
    cdsFaturaR_LOCAL_PAGTO2: TStringField;
    cdsFaturaR_LOCAL_PAGTO3: TStringField;
    cdsFaturaR_LOCAL_PAGTO4: TStringField;
    cdsFaturaR_LOCAL_PAGTO5: TStringField;
    cdsFaturaR_LOCAL_PAGTO6: TStringField;
    cdsFaturaR_LOCAL_PAGTO7: TStringField;
    cdsFaturaR_LOCAL_PAGTO8: TStringField;
    cdsFaturaR_ANO_MES: TStringField;
    frxBarCodeObject1: TfrxBarCodeObject;
    mTbEventoNUM_COD_BARRAS: TStringField;
    mTbEventoTEXT_COD_BARRAS: TStringField;
    mTbEventoFAT_EM_ABERTO: TMemoField;
    qryFatEmAberto: TSQLQuery;
    mTbEventoFAT_EM_ABERTO2: TMemoField;
    mTbEventoIMP_REAVISO: TStringField;
    mTbEventoDT_CORTE: TStringField;
    qryFaturaAvulsa: TSQLQuery;
    provFaturaAvulsa: TDataSetProvider;
    cdsFaturaAvulsa: TClientDataSet;
    frxFaturaAvulsa: TfrxDBDataset;
    cdsFaturaAvulsaID_FATURA: TIntegerField;
    cdsFaturaAvulsaID: TIntegerField;
    cdsFaturaAvulsaID_ITEM: TIntegerField;
    cdsFaturaAvulsaDESCR_ITEM: TStringField;
    cdsFaturaAvulsaREF_FTDO: TStringField;
    cdsFaturaAvulsaREFERENCIA: TStringField;
    cdsFaturaAvulsaVAL_PRINCIPAL: TFMTBCDField;
    cdsFaturaAvulsaVAL_MULTA: TFMTBCDField;
    cdsFaturaAvulsaVAL_DESCONTO: TFMTBCDField;
    cdsFaturaAvulsaVAL_TOTAL: TFMTBCDField;
    cdsFaturaAvulsaDT_EMISSAO: TDateField;
    cdsFaturaAvulsaDT_VENCIMENTO: TDateField;
    cdsFaturaAvulsaVALOR_TOTAL: TFMTBCDField;
    cdsFaturaAvulsaNOME_PESSOA: TStringField;
    cdsFaturaAvulsaCPF_CNPJ_FTDO: TStringField;
    cdsFaturaAvulsaNOME_PESSOA_1: TStringField;
    cdsFaturaAvulsaENDER_DESCR_LOGRAD: TStringField;
    cdsFaturaAvulsaENDER_UC_NUM_LETRA: TStringField;
    cdsFaturaAvulsaENDER_COMPLEMENTO: TStringField;
    cdsFaturaAvulsaENDER_DESCR_BAIRRO: TStringField;
    cdsFaturaAvulsaENDER_DESCR_DISTRITO: TStringField;
    cdsFaturaAvulsaDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsFaturaAvulsaID_UNID_CONSUM: TIntegerField;
    frxFatAvulsaAux: TfrxDBDataset;
    cdsFaturaAvulsaID_UC_FTDO: TStringField;
    provFatEmAberto: TDataSetProvider;
    cdsFatEmAberto: TClientDataSet;
    cdsFatEmAbertoID_UNID_CONSUM: TIntegerField;
    cdsFatEmAbertoANO_MES: TStringField;
    cdsFatEmAbertoMES_ANO_FTDO: TStringField;
    cdsFatEmAbertoDT_VENCIMENTO: TDateField;
    cdsFatEmAbertoVAL_TOTAL: TFMTBCDField;
    cdsFatEmAbertoANO_MES_DESCEND: TLargeintField;
    mTbFatAvulsaAux: TClientDataSet;
    mTbFatAvulsaAuxLOCAL1: TStringField;
    mTbFatAvulsaAuxLOCAL2: TStringField;
    mTbFatAvulsaAuxLOCAL3: TStringField;
    mTbFatAvulsaAuxLOCAL4: TStringField;
    mTbFatAvulsaAuxLOCAL5: TStringField;
    mTbFatAvulsaAuxLOCAL6: TStringField;
    mTbFatAvulsaAuxCOD_BARRAS_NUM: TStringField;
    mTbFatAvulsaAuxCOD_BARRAS_TEXT: TStringField;
    qryRequerimento: TSQLQuery;
    provRequerimento: TDataSetProvider;
    cdsRequerimento: TClientDataSet;
    qryLocalPagtoID: TIntegerField;
    qryLocalPagtoDESCRICAO: TStringField;
    qryLocalPagtoID_ENTID_FINANC: TIntegerField;
    qryLocalPagtoCOD_BANCO: TStringField;
    qryLocalPagtoATIVO: TStringField;
    frxRequerimento: TfrxDBDataset;
    cdsRequerimentoID: TIntegerField;
    cdsRequerimentoDATA_REQUER: TDateField;
    cdsRequerimentoID_PESSOA: TIntegerField;
    cdsRequerimentoID_SERVICO: TIntegerField;
    cdsRequerimentoID_UNID_CONSUM: TIntegerField;
    cdsRequerimentoNUM_PROTOCOLO: TStringField;
    cdsRequerimentoNUM_LIVRO: TStringField;
    cdsRequerimentoDATA_PROTOCOL: TDateField;
    cdsRequerimentoDATA_DESPACHO: TDateField;
    cdsRequerimentoSITUACAO: TStringField;
    cdsRequerimentoSERVID_RESPONSAV: TStringField;
    cdsRequerimentoOBSERVACAO: TStringField;
    cdsRequerimentoDESCR_SERVICO: TStringField;
    cdsRequerimentoNOME_PESSOA: TStringField;
    cdsRequerimentoENDER_ID_LOGRAD: TIntegerField;
    cdsRequerimentoENDER_NUM_LETRA: TStringField;
    cdsRequerimentoENDER_ID_BAIRRO: TIntegerField;
    cdsRequerimentoENDER_ID_DISTRITO: TIntegerField;
    cdsRequerimentoENDER_DESCR_LOGRAD: TStringField;
    cdsRequerimentoENDER_DESCR_BAIRRO: TStringField;
    cdsRequerimentoENDER_DESCR_DISTRITO: TStringField;
    cdsRequerimentoENDER_COMPLEMENTO: TStringField;
    cdsRequerimentoCPF_CNPJ: TStringField;
    cdsRequerimentoDESCR_SITUACAO: TStringField;
    cdsRequerimentoENDER_UC_NUM_LETRA: TStringField;
    cdsRequerimentoNUM_LIGACAO: TStringField;
    cdsRequerimentoRG_NUM: TStringField;
    cdsRequerimentoRG_ORGAO_EMISSOR: TStringField;
    cdsRequerimentoRG_UF: TStringField;
    cdsRequerimentoENDER_CIDADE: TStringField;
    cdsRequerimentoENDER_UF: TStringField;
    cdsFaturaR_NUM_LIGACAO: TStringField;
    cdsConfigOrgaoMENSAGEM: TMemoField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsFaturaAfterScroll(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsFaturaAvulsaAfterOpen(DataSet: TDataSet);
    procedure cdsFaturaAvulsaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    pv_sModFatura     : string[1];
    pv_lGeraTabEventos: Boolean;
    pv_sPathRel       : String;
    pv_sEventos       : WideString;
    pv_sAnoMes        : String[6];
    pv_sParcela       : String[1];
    procedure GeraTabEventos(sAnoMes: String; iUnidConsum: Integer;
       sConsumo_m3,sObservFatura: string; crValPrincipal: Currency);
  public
    { Public declarations }
    Procedure RelFatura(sAnoMes, sBairro, sMultiLograd,
      sUnidConsum, sTipoFatura,sSomenteAbertas: String; sMsg: WideString;
      lVisualizar: Boolean);
    Procedure ImpFaturaAvulsa(iNum: Integer; sModFat, sDtVencto: string; crValor: Currency;
      lVisualizar: Boolean);
    procedure ImprimeRequerimento(iNum: Integer; lVisualizar: Boolean);

  end;

var
  dmRelDoctos: TdmRelDoctos;

implementation

uses VarGlobais, udmPrincipal, uTeste, gsLib, UtilsDb;

{$R *.dfm}

procedure TdmRelDoctos.cdsFaturaAfterScroll(DataSet: TDataSet);
Begin

  if pv_lGeraTabEventos then
     GeraTabEventos(pv_sAnoMes,cdsFaturaR_ID_UNID_CONSUM.Value,
        DataSet.FieldByName('r_consumo_m3').Value,
        DataSet.FieldByName('r_observ_fatura').Value,
        DataSet.FieldByName('r_val_principal').AsCurrency);
{
                          2         3         4
                          0123456789012345678901234
                          AAAAMMDD999999AAAAMM00000
                                                  1
}

end;

procedure TdmRelDoctos.cdsFaturaAvulsaAfterOpen(DataSet: TDataSet);
Var
  iConta : Integer;
  sValor : string[11];
  sIdEmpresa: string[4];
  sDtVencto: string[10];
  sDigVerGeral: string[1];
  sTextCodBarras1,
  sTextCodBarras2,
  sTextCodBarras3,
  sTextCodBarras4: string[12];
begin
  qryLocalPagto.Close;
  qryLocalPagto.Open;
  mTbFatAvulsaAux.CreateDataSet;
  mTbFatAvulsaAux.Open;
  mTbFatAvulsaAux.Insert;
  while not qryLocalPagto.eof do
  begin
     iConta := 1;
     while (not qryLocalPagto.eof) and
        (iConta <= 6) do
     begin
       if iConta = 1 then
          mTbFatAvulsaAuxLOCAL1.Value := qryLocalPagtoDESCRICAO.Value
       else
       if iConta = 2 then
          mTbFatAvulsaAuxLOCAL2.Value := '| '+qryLocalPagtoDESCRICAO.Value
       else
       if iConta = 3 then
          mTbFatAvulsaAuxLOCAL3.Value := qryLocalPagtoDESCRICAO.Value
       else
       if iConta = 4 then
          mTbFatAvulsaAuxLOCAL4.Value := '| '+qryLocalPagtoDESCRICAO.Value
       else
       if iConta = 5 then
          mTbFatAvulsaAuxLOCAL5.Value := qryLocalPagtoDESCRICAO.Value
       else
       if iConta = 6 then
          mTbFatAvulsaAuxLOCAL6.Value := '| '+qryLocalPagtoDESCRICAO.Value;
       qryLocalPagto.Next;
       Inc(iConta)
     end;
  end;
  sValor                  := CurrToStrZeros(cdsFaturaAvulsaVALOR_TOTAL.AsCurrency,11);
  sIdEmpresa              := Pesquisa('CONFIG_ORGAO','ID','1','COD_FEBRABAN','');
  sDtVencto               := RightStr(cdsFaturaAvulsaDT_VENCIMENTO.AsString,4)+
                             Copy(cdsFaturaAvulsaDT_VENCIMENTO.AsString,4,2)+
                             LeftStr(cdsFaturaAvulsaDT_VENCIMENTO.AsString,2);
  if Trim(sIdEmpresa) <> '' then
  begin
     mTbFatAvulsaAuxCOD_BARRAS_NUM.Value := '8'+'2'+'6'+sValor+sIdEmpresa+
        sDtVencto+PreencheZeros(cdsFaturaAvulsaID_FATURA.AsString,8)+'000000001';
     sDigVerGeral    := CalcDigMod10(Trim(Trim(mTbFatAvulsaAuxCOD_BARRAS_NUM.Value)));

     mTbFatAvulsaAuxCOD_BARRAS_TEXT.Value := LeftStr(mTbFatAvulsaAuxCOD_BARRAS_NUM.Value,3)+sDigVerGeral+
        RightStr(Trim(mTbFatAvulsaAuxCOD_BARRAS_NUM.Value),40);
  // 99999999999 99999999999 99999999999 99999999999
  // 12345678901 23456789012 34567890123 45678901234

     sTextCodBarras1 := LeftStr(mTbFatAvulsaAuxCOD_BARRAS_TEXT.Value,11);
     sTextCodBarras1 := Trim(sTextCodBarras1) + CalcDigMod10(Trim(sTextCodBarras1));

     sTextCodBarras2 := Copy(mTbFatAvulsaAuxCOD_BARRAS_TEXT.Value,12,11);
     sTextCodBarras2 := Trim(sTextCodBarras2) + CalcDigMod10(Trim(sTextCodBarras2));

     sTextCodBarras3 := Copy(mTbFatAvulsaAuxCOD_BARRAS_TEXT.Value,23,11);
     sTextCodBarras3 := Trim(sTextCodBarras3) + CalcDigMod10(Trim(sTextCodBarras3));

     sTextCodBarras4 := RightStr(mTbFatAvulsaAuxCOD_BARRAS_TEXT.Value,11);
     sTextCodBarras4 := Trim(sTextCodBarras4) + CalcDigMod10(Trim(sTextCodBarras4));

     mTbFatAvulsaAuxCOD_BARRAS_TEXT.Value := FormatString('999999.99999',LeftStr(sTextCodBarras1,11))+'-'+
        RightStr(sTextCodBarras1,1)+'  '+
        FormatString('999999.99999',LeftStr(sTextCodBarras2,11))+'-'+
        RightStr(sTextCodBarras2,1)+'  '+
        FormatString('999999.99999',LeftStr(sTextCodBarras3,11))+'-'+
        RightStr(sTextCodBarras3,1)+'  '+
        FormatString('999999.99999',LeftStr(sTextCodBarras4,11))+'-'+
        RightStr(sTextCodBarras4,1);

  end;

  mTbFatAvulsaAux.Post;
  qryLocalPagto.Close;
end;

procedure TdmRelDoctos.cdsFaturaAvulsaCalcFields(DataSet: TDataSet);
begin
  cdsFaturaAvulsaID_UC_FTDO.Value := FormatString('99.999-9',cdsFaturaAvulsaID_UNID_CONSUM.AsString);
end;

procedure TdmRelDoctos.DataModuleCreate(Sender: TObject);
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
  cdsFatura.Close;

  pv_sPathRel := GetPathRel();

  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL2.Value :=
     Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoCNPJ.Value :=
     Criptografa(cdsConfigOrgaoCNPJ.Value,'2',14);
  cdsConfigOrgaoSIGLA2.Value :=
     Criptografa(cdsConfigOrgaoSIGLA.Value,'2',10);
  cdsConfigOrgaoCNPJ_FTDO.Value :=
     FormatString('99.999.999/9999-99',cdsConfigOrgaoCNPJ.Value);
  cdsConfigOrgaoENDER_CEP_FTDO.Value := FormatString('99.999-999',
     cdsConfigOrgaoENDER_CEP.Value);
  cdsConfigOrgaoENDERECO.Value := cdsConfigOrgaoENDER_DESCR_LOGRAD.Value+
     ', '+cdsConfigOrgaoENDER_LOGRAD_NUM.Value;
  cdsConfigOrgaoNOME_SYS.Value:= glb_sSistema+' - Ver. '+glb_sVersao;
  cdsConfigOrgao.Post;
end;

procedure TdmRelDoctos.DataModuleDestroy(Sender: TObject);
begin
  cdsConfigOrgao.Close;
  mTbEvento.Close;
  mTbFatAvulsaAux.Close;
end;

Procedure TdmRelDoctos.RelFatura(sAnoMes, sBairro, sMultiLograd,
  sUnidConsum, sTipoFatura, sSomenteAbertas: String;
  sMsg: WideString; lVisualizar: Boolean);
Var
  mem1: TMemo;
  iConta,
  iTam,
  iTemp,
  iTemp2,
  iUnidConsumIni,
  iUnidConsumFim: Integer;
  sTextTemp: string;
  sAnoMesIni: string[6];
  sDistrito: string;
begin

  Screen.Cursor := crHourGlass;

  pv_sModFatura := sTipoFatura; // Código de Barras ou SEM

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoMENSAGEM.Value := sMsg;
  cdsConfigOrgao.Post;

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);
  mTbEvento.CreateDataSet;
  mTbEvento.Open;

  pv_lGeraTabEventos := True;
  pv_sAnoMes := sAnoMes;

  iUnidConsumIni := 1;
  iUnidConsumFim := 9999999;
  if sUnidConsum <> '0' then
  begin
     iUnidConsumIni := StrToInt(sUnidConsum);
     iUnidConsumFim := iUnidConsumIni;
  end;

  sAnoMesIni := DecMesAno(glb_sAnoMesTrab,'2');
  for iConta := 1 to 60 do
     sAnoMesIni := DecMesAno(sAnoMesIni,'2');

  cdsFatEmAberto.Close;
  cdsFatEmAberto.IndexFieldNames := 'id_unid_consum;ANO_MES_DESCEND';
  qryFatEmAberto.ParamByName('pUC_Ini').Value := iUnidConsumIni;
  qryFatEmAberto.ParamByName('pUC_Fim').Value := iUnidConsumFim;
  qryFatEmAberto.ParamByName('pAnoMesIni').Value := sAnoMesIni;
  qryFatEmAberto.ParamByName('pAnoMesTrab').Value := sAnoMes;
  cdsFatEmAberto.Open;

  cdsFatura.Close;
  qryFatura.ParamByName('pAnoMes').Value   := sAnoMes;
  qryFatura.ParamByName('pDistrito').AsString:= Trim(sDistrito);
  qryFatura.ParamByName('pBairro').AsString:= Trim(sBairro);
  qryFatura.ParamByName('pMultiLograd').AsString := sMultiLograd;
  qryFatura.ParamByName('pUnidConsumIni').Value:= iUnidConsumIni;
  qryFatura.ParamByName('pUnidConsumFim').Value:= iUnidConsumFim;
  qryFatura.ParamByName('pSomenteAbertas').Value:= sSomenteAbertas;
  cdsFatura.IndexFieldNames := 'r_ender_id_lograd2;r_ender_num_letra2';
  cdsFatura.Open;

  if cdsFatura.RecordCount = 0 then
  begin
     Mensagem('Não há Unid. Consumidora(s) p/ imprimir Fatura(s) ...',
        'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
     Screen.Cursor := crDefault;
     exit;
  end;

  frxReport1.LoadFromFile(pv_sPathRel+'FaturaModelo'+sTipoFatura+'.fr3'); // 1, 2 ou 3

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

Procedure TdmRelDoctos.ImpFaturaAvulsa(iNum: Integer; sModFat, sDtVencto: string; crValor: Currency;
  lVisualizar: Boolean);
Var
  iConta: Integer;
  sIdEmpresa: string;
  sValor: string[15];
  sTextCodBarra: string;
  sDigVerGeral: string[1];
  aTextCodBarras: Array[1..4] of string[11];
  sTextCodBarras1,
  sTextCodBarras2,
  sTextCodBarras3,
  sTextCodBarras4: string[12];

  sNumTA: string[8];
begin

  if sModFat = '0' then
     sModFat := '1';

  pv_sModFatura := sModFat;

  sNumTA := PreencheZeros(IntToStr(iNum),8);

  cdsFaturaAvulsa.Close;
  qryFaturaAvulsa.ParamByName('pIdFat').Value := iNum;
  cdsFaturaAvulsa.Open;

  mTbFatAvulsaAux.Close;
  mTbFatAvulsaAux.CreateDataSet;
  mTbFatAvulsaAux.Open;
  mTbFatAvulsaAux.Insert;

  qryLocalPagto.Close;
  qryLocalPagto.Open;
  iConta := 0;
  while not qryLocalPagto.eof do
  begin
     if qryLocalPagtoATIVO.Value = 'S' then
     begin
        Inc(iConta);
        if iConta = 1 then
           mTbFatAvulsaAuxLOCAL1.Value := qryLocalPagtoDESCRICAO.Value
        else if iConta = 2 then
           mTbFatAvulsaAuxLOCAL2.Value := qryLocalPagtoDESCRICAO.Value
        else if iConta = 3 then
           mTbFatAvulsaAuxLOCAL3.Value := qryLocalPagtoDESCRICAO.Value
        else if iConta = 4 then
           mTbFatAvulsaAuxLOCAL4.Value := qryLocalPagtoDESCRICAO.Value
        else if iConta = 5 then
           mTbFatAvulsaAuxLOCAL5.Value := qryLocalPagtoDESCRICAO.Value
        else
           mTbFatAvulsaAuxLOCAL6.Value := qryLocalPagtoDESCRICAO.Value;
     end;
     qryLocalPagto.Next;
  end;

  if sModFat = '3' then // Com Código de Barras
  begin
     sIdEmpresa := Pesquisa('CONFIG_ORGAO','ID','1','COD_FEBRABAN','');

     sValor              := CurrToStrZeros(crValor,11);
     sIdEmpresa          := PreencheZeros(sIdEmpresa,4);
     sDtVencto           := RightStr(sDtVencto,4)+
                            Copy(sDtVencto,4,2)+
                            LeftStr(sDtVencto,2);

     sTextCodBarra       := '8'+'2'+'6'+sValor+sIdEmpresa+sDtVencto+sNumTA+'000000001';

     //'8'+'2'+'6'+sValor+sIdEmpresa+
     //                       sDtVencto+sCodUC+cdsFaturaR_ANO_MES.Value+'00000';

     sDigVerGeral:= CalcDigMod10(Trim(sTextCodBarra));
     sTextCodBarra       := LeftStr(sTextCodBarra,3)+sDigVerGeral+
                            RightStr(Trim(sTextCodBarra),40);
     For iConta := 1 To 4 Do
     Begin
        aTextCodBarras[iConta] := Copy(sTextCodBarra,(iConta*11)-10,11);
        aTextCodBarras[iConta] := aTextCodBarras[iConta] +
                                  CalcDigMod10(Trim(aTextCodBarras[iConta]));
     End;

     sTextCodBarra := Trim(sTextCodBarra);
     mTbFatAvulsaAuxCOD_BARRAS_NUM.Value := sTextCodBarra;

     sTextCodbarras1 := LeftStr(sTextCodBarra,11)+CalcDigMod10(LeftStr(sTextCodBarra,11));
     sTextCodbarras2 := Copy(sTextCodBarra,12,11)+CalcDigMod10(Copy(sTextCodBarra,12,11));
     sTextCodbarras3 := Copy(sTextCodBarra,23,11)+CalcDigMod10(Copy(sTextCodBarra,23,11));
     sTextCodbarras4 := Copy(sTextCodBarra,34,11)+CalcDigMod10(Copy(sTextCodBarra,34,11));

     mTbFatAvulsaAuxCOD_BARRAS_TEXT.Value:= LeftStr(sTextCodbarras1,11)+'-'+RightStr(sTextCodbarras1,1)+' '+
        LeftStr(sTextCodbarras2,11)+'-'+RightStr(sTextCodbarras2,1)+' '+
        LeftStr(sTextCodbarras3,11)+'-'+RightStr(sTextCodbarras3,1)+' '+
        LeftStr(sTextCodbarras4,11)+'-'+RightStr(sTextCodbarras4,1);

  end;

  mTbFatAvulsaAux.Post;

  if sModFat = '1' then
     frxReport1.LoadFromFile(pv_sPathRel+'FaturaAvulsaMod1.fr3')
  else if sModFat = '2' then
     frxReport1.LoadFromFile(pv_sPathRel+'FaturaAvulsaMod2.fr3')
  else if sModFat = '3' then
     frxReport1.LoadFromFile(pv_sPathRel+'FaturaAvulsaMod3.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelDoctos.GeraTabEventos(sAnoMes: String; iUnidConsum: Integer;
  sConsumo_m3,sObservFatura: string; crValPrincipal: Currency);
Var
  memCod,
  memDescr,
  memVal,
  memFatEmAberto,
  memFatEmAberto2: TStrings;
  iContaV,
  iContaD: Integer;
  sCod: string[3];
  sDescricao: string[60];
  sQuant: string[9];
  sValorV: string[15];
  sValor,
  sIdEmpresa,
  sTextCodBarra: string;
  sDtVencto: string[10];
  sDigVerGeral: string[1];
  iConta: Integer;
  sCodUC: string[6];
  sImpReaviso: string[1];
  dDtCorte: TDate;
  sTextCodbarras1,
  sTextCodbarras2,
  sTextCodbarras3,
  sTextCodbarras4: string[12];
begin

  if pv_sModFatura = '3' then // Com Código de Barras
  begin
     sIdEmpresa := Pesquisa('CONFIG_ORGAO','ID','1','COD_FEBRABAN','');
     sCodUC     := PreencheZeros(cdsFaturaR_ID_UNID_CONSUM.AsString,6);
     cdsFatura.Edit;
     sValor              := CurrToStrZeros(cdsFaturaR_VAL_TOTAL.AsCurrency,11);
     sIdEmpresa          := PreencheZeros(sIdEmpresa,4);
     sDtVencto           := RightStr(cdsFaturaR_DT_VENCIMENTO.AsString,4)+
                            Copy(cdsFaturaR_DT_VENCIMENTO.AsString,4,2)+
                            LeftStr(cdsFaturaR_DT_VENCIMENTO.AsString,2);
     sTextCodBarra       := '8'+'2'+'6'+sValor+sIdEmpresa+
                            sDtVencto+sCodUC+cdsFaturaR_ANO_MES.Value+'00000';

     sDigVerGeral:= CalcDigMod10(Trim(sTextCodBarra));
     sTextCodBarra       := LeftStr(sTextCodBarra,3)+sDigVerGeral+
                            RightStr(Trim(sTextCodBarra),40);
  end;

  if not pv_lGeraTabEventos then exit;

  mTbEvento.EmptyDataSet;
  mTbEvento.Close;
  mTbEvento.Open;

  memCod  := TStringList.Create;
  memDescr:= TStringList.Create;
  memVal  := TStringList.Create;

  memFatEmAberto := TStringList.Create;
  memFatEmAberto2:= TStringList.Create;

  iContaV := 0;

    if iUnidConsum = 110221 then
  begin
    iConta := 0;
    sImpReaviso := 'N';
  end;

  cdsItemFatura.Close;
  qryItemFatura.ParamByName('pAnoMes').Value := sAnoMes;
  qryItemFatura.ParamByName('pUnidConsum').Value := iUnidConsum;
  qryItemFatura.ParamByName('pConsum_m3').Value := sConsumo_m3;
  qryItemFatura.ParamByName('pObservFatura').Value := sObservFatura;
  qryItemFatura.ParamByName('pValPrincipal').AsCurrency := crValPrincipal;
  try
     cdsItemFatura.Open;
  except
     Mensagem('Unid. Consumidora: '+IntToStr(iUnidConsum),'ERRO !!!',
       MB_OK+MB_ICONERROR);
  end;

  while (not cdsItemFatura.eof) do
  begin
     if Trim(cdsItemFaturaR_COD_ITEM.AsString) = '' then
     begin
       cdsItemFatura.Next;
       Continue;
     end;

     sCod := cdsItemFaturaR_COD_ITEM.AsString;
     sDescricao := cdsItemFaturaR_DESCR_ITEM.Value;
     if cdsItemFaturaR_VAL_ITEM.AsCurrency > 0 then
        sValorV:= FormatCurr(',0.00',cdsItemFaturaR_VAL_ITEM.AsCurrency)+' '+
           cdsItemFaturaR_TIPO.Value
     else
        sValorV:= ' ';

     Inc(iContaV);

     memCod.Add(sCod);
     memDescr.Add(sDescricao);
     memVal.Add(sValorV);

     cdsItemFatura.Next;

  end;

  cdsFatEmAberto.FindKey([iUnidConsum]);
  iConta := 0;
  while (not cdsFatEmAberto.eof) and
     (cdsFatEmAbertoID_UNID_CONSUM.Value = iUnidConsum) do
  begin
     Inc(iConta);
     dDtCorte := cdsFatEmAbertoDT_VENCIMENTO.Value + 15;
     if iConta <= 3 then
        memFatEmAberto.Add('Ref.: '+cdsFatEmAbertoMES_ANO_FTDO.Value+' - R$ '+
           PutSpacesLeft(FormatCurr(',0.00',cdsFatEmAbertoVAL_TOTAL.AsCurrency),7))
     else if iConta <= 6 then
        memFatEmAberto2.Add('Ref.: '+cdsFatEmAbertoMES_ANO_FTDO.Value+' - R$ '+
           PutSpacesLeft(FormatCurr(',0.00',cdsFatEmAbertoVAL_TOTAL.AsCurrency),7))
     else
        break;
     cdsFatEmAberto.Next;
  end;
  if iConta > 0 then
     sImpReaviso := 'S'
  else
     sImpReaviso := 'N';

  mTbEvento.Insert;
  mTbEventoCodigo.Text   := memCod.Text;
  mTbEventoDescricao.Text:= memDescr.Text;
  mTbEventoValor.Text    := memVal.Text;
  if pv_sModFatura = '3' then
  begin

     sTextCodBarra := Trim(sTextCodBarra);
     mTbEventoNUM_COD_BARRAS.Value := sTextCodBarra;

     sTextCodbarras1 := LeftStr(sTextCodBarra,11)+CalcDigMod10(LeftStr(sTextCodBarra,11));
     sTextCodbarras2 := Copy(sTextCodBarra,12,11)+CalcDigMod10(Copy(sTextCodBarra,12,11));
     sTextCodbarras3 := Copy(sTextCodBarra,23,11)+CalcDigMod10(Copy(sTextCodBarra,23,11));
     sTextCodbarras4 := Copy(sTextCodBarra,34,11)+CalcDigMod10(Copy(sTextCodBarra,34,11));

// 11111111111222222222223333333333344444444444
// 826900000000322005772011606080460911201605000000
// 123456789012345678901234567890123456789012345678
//          1         2         3         4
     mTbEventoTEXT_COD_BARRAS.Value := LeftStr(sTextCodBarras1,11)+'-'+
                                     RightStr(sTextCodBarras1,1)+'  '+
                                     LeftStr(sTextCodBarras2,11)+'-'+
                                     RightStr(sTextCodBarras2,1)+'  '+
                                     LeftStr(sTextCodBarras3,11)+'-'+
                                     RightStr(sTextCodBarras3,1)+'  '+
                                     LeftStr(sTextCodBarras4,11)+'-'+
                                     RightStr(sTextCodBarras4,1);

  end;
  mTbEventoFAT_EM_ABERTO.Value := memFatEmAberto.Text;
  mTbEventoFAT_EM_ABERTO2.Value:= memFatEmAberto2.Text;
  mTbEventoDT_CORTE.Value      := DateToStr(dDtCorte);
  mTbEventoIMP_REAVISO.Value   := sImpReaviso;

  mTbEvento.Post;

  FreeAndNil(memCod);
  FreeAndNil(memDescr);
  FreeAndNil(memVal);
  FreeAndNil(memFatEmAberto);
  FreeAndNil(memFatEmAberto2);

end;

Procedure TdmRelDoctos.ImprimeRequerimento(iNum: Integer; lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;

  cdsRequerimento.Close;
  qryRequerimento.ParamByName('pId').Value := iNum;
  cdsRequerimento.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'Requerimento.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

end.
