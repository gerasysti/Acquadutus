unit udmRelFinanceiros;

interface

uses
  Windows, Messages, SysUtils, Classes, FMTBcd, DB, frxClass, frxDBSet, SqlExpr,
  Provider, DBClient, Forms, Variants, Controls, StrUtils, StdCtrls, frxRich,
  frxDesgn, frxExportPDF, Graphics, Dialogs, Padrao1, Buttons, ComCtrls,
  Mask, frxExportRTF, frxExportXML, frxChBox;

type
  TdmRelFinanceiros = class(TDataModule)
    qryCalcFatMesResumo: TSQLQuery;
    frxCalcFatMesResumo: TfrxDBDataset;
    frxConfigOrgao: TfrxDBDataset;
    cdsCalcFatMesResumo: TClientDataSet;
    qryResumoCalcFatLograd: TSQLQuery;
    provResumoCalcFatLograd: TDataSetProvider;
    cdsResumoCalcFatLograd: TClientDataSet;
    qryLanctoPagto: TSQLQuery;
    frxLanctoPagto: TfrxDBDataset;
    provCalcFatMesResumo: TDataSetProvider;
    frxReport1: TfrxReport;
    provLanctoPagto: TDataSetProvider;
    cdsLanctoPagto: TClientDataSet;
    frxResumoCalcFatLograd: TfrxDBDataset;
    qryEmit_Arrecad: TSQLQuery;
    provEmit_Arrecad: TDataSetProvider;
    cdsEmit_Arrecad: TClientDataSet;
    frxEmit_Arrecad: TfrxDBDataset;
    qryRequerimento: TSQLQuery;
    provRequerimento: TDataSetProvider;
    cdsRequerimento: TClientDataSet;
    frxRequerimento: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    qryFaturaMensal: TSQLQuery;
    provFaturaMensal: TDataSetProvider;
    cdsFaturaMensal: TClientDataSet;
    frxFaturaMensal: TfrxDBDataset;
    qryLanctoOutroItem: TSQLQuery;
    provLanctoOutroItem: TDataSetProvider;
    cdsLanctoOutroItem: TClientDataSet;
    frxLanctoOutroItem: TfrxDBDataset;
    qryConfigOrgao: TSQLQuery;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    cdsFaturaMensalR_ID_UNID_CONSUM: TIntegerField;
    cdsFaturaMensalR_DT_LIGACAO: TDateField;
    cdsFaturaMensalR_DT_EMISSAO: TDateField;
    cdsFaturaMensalR_DIAS_CONSUMO: TStringField;
    cdsFaturaMensalR_DT_PREV_PROX_LEITURA: TStringField;
    cdsFaturaMensalR_DT_LEITURA: TStringField;
    cdsFaturaMensalR_LEITURA_ANTERIOR: TStringField;
    cdsFaturaMensalR_LEITURA_ATUAL: TStringField;
    cdsFaturaMensalR_CONSUMO_M3: TStringField;
    cdsFaturaMensalR_VOLUME_FATURADO: TStringField;
    cdsFaturaMensalR_DT_VENCIMENTO: TDateField;
    cdsFaturaMensalR_QTD_TORNEIRA: TIntegerField;
    cdsFaturaMensalR_MULTIPLICADOR: TIntegerField;
    cdsFaturaMensalR_VAL_PRINCIPAL: TFMTBCDField;
    cdsFaturaMensalR_VAL_MULTA: TFMTBCDField;
    cdsFaturaMensalR_VAL_OUTRO_DEB: TFMTBCDField;
    cdsFaturaMensalR_VAL_OUTRO_CRED: TFMTBCDField;
    cdsFaturaMensalR_VAL_TOTAL: TFMTBCDField;
    cdsFaturaMensalR_OBSERV_FATURA: TStringField;
    cdsFaturaMensalR_NOME_PESSOA: TStringField;
    cdsFaturaMensalR_CPF_CNPJ_FTDO: TStringField;
    cdsFaturaMensalR_DESCR_TIPO_UNID_CONSUM: TStringField;
    cdsFaturaMensalR_DESCR_FORMA_CALCULO: TStringField;
    cdsFaturaMensalR_NUM_HIDROMETRO: TStringField;
    cdsFaturaMensalR_ENDER_COMPLETO: TStringField;
    cdsFaturaMensalR_ENDER_ID_BAIRRO: TIntegerField;
    cdsFaturaMensalR_ENDER_DESCR_BAIRRO: TStringField;
    cdsFaturaMensalR_ENDER_ID_LOGRAD: TIntegerField;
    cdsFaturaMensalR_ENDER_DESCR_LOGRAD: TStringField;
    cdsFaturaMensalR_ENDER_NUM_LETRA: TStringField;
    cdsFaturaMensalR_ENDER_COMPLEMENTO: TStringField;
    cdsFaturaMensalR_ENDER_COMPLETO2: TStringField;
    cdsFaturaMensalR_ENDER_ID_BAIRRO2: TIntegerField;
    cdsFaturaMensalR_ENDER_DESCR_BAIRRO2: TStringField;
    cdsFaturaMensalR_ENDER_ID_LOGRAD2: TIntegerField;
    cdsFaturaMensalR_ENDER_DESCR_LOGRAD2: TStringField;
    cdsFaturaMensalR_ENDER_NUM_LETRA2: TStringField;
    cdsFaturaMensalR_ENDER_COMPLEMENTO2: TStringField;
    cdsFaturaMensalR_MES_ANO_FTDO: TStringField;
    cdsFaturaMensalR_ID_UNID_CONSUM_FTDO: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO1: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO2: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO3: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO4: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO5: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO6: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO7: TStringField;
    cdsFaturaMensalR_LOCAL_PAGTO8: TStringField;
    cdsCalcFatMesResumoID_DISTRITO: TIntegerField;
    cdsCalcFatMesResumoID_BAIRRO: TIntegerField;
    cdsCalcFatMesResumoDT_EMISSAO: TDateField;
    cdsCalcFatMesResumoDT_VENCIMENTO: TDateField;
    cdsCalcFatMesResumoQTD_UNID_CONSUM_TOTAL: TIntegerField;
    cdsCalcFatMesResumoQTD_UNID_CONSUM_CALC: TIntegerField;
    cdsCalcFatMesResumoVAL_PRINCIPAL: TFMTBCDField;
    cdsCalcFatMesResumoVAL_MULTA: TFMTBCDField;
    cdsCalcFatMesResumoVAL_OUTRO_DEB: TFMTBCDField;
    cdsCalcFatMesResumoVAL_OUTRO_CRED: TFMTBCDField;
    cdsCalcFatMesResumoVAL_TOTAL: TFMTBCDField;
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
    qryConfigOrgaoPASTA_ATUALIZA: TStringField;
    qryConfigOrgaoTIPO_FATURA: TStringField;
    qryConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    qryConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
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
    cdsConfigOrgaoPASTA_ATUALIZA: TStringField;
    cdsConfigOrgaoTIPO_FATURA: TStringField;
    cdsConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    cdsConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
    cdsConfigOrgaoRAZAO_SOCIAL2: TStringField;
    cdsConfigOrgaoNOME_SYS: TStringField;
    cdsConfigOrgaoTIT_REL1: TStringField;
    cdsConfigOrgaoTIT_REL2: TStringField;
    cdsConfigOrgaoTIT_REL3: TStringField;
    qryCalcFatMesResumoID_DISTRITO: TIntegerField;
    qryCalcFatMesResumoID_BAIRRO: TIntegerField;
    qryCalcFatMesResumoDT_EMISSAO: TDateField;
    qryCalcFatMesResumoDT_VENCIMENTO: TDateField;
    qryCalcFatMesResumoQTD_UNID_CONSUM_TOTAL: TIntegerField;
    qryCalcFatMesResumoQTD_UNID_CONSUM_CALC: TIntegerField;
    qryCalcFatMesResumoVAL_PRINCIPAL: TFMTBCDField;
    qryCalcFatMesResumoVAL_MULTA: TFMTBCDField;
    qryCalcFatMesResumoVAL_OUTRO_DEB: TFMTBCDField;
    qryCalcFatMesResumoVAL_OUTRO_CRED: TFMTBCDField;
    qryCalcFatMesResumoVAL_TOTAL: TFMTBCDField;
    qryCalcFatMesResumoDESCR_DISTRITO: TStringField;
    qryCalcFatMesResumoDESCR_BAIRRO: TStringField;
    cdsCalcFatMesResumoDESCR_DISTRITO: TStringField;
    cdsCalcFatMesResumoDESCR_BAIRRO: TStringField;
    cdsLanctoPagtoR_ID_UNID_CONSUM: TIntegerField;
    cdsLanctoPagtoR_NOME_PESSOA: TStringField;
    cdsLanctoPagtoR_DESCR_TIPO_PESSOA: TStringField;
    cdsLanctoPagtoR_CPF_CNPJ_FTDO: TStringField;
    cdsLanctoPagtoR_TIPO_FATURA: TStringField;
    cdsLanctoPagtoR_DESCR_TIPO_FATURA: TStringField;
    cdsLanctoPagtoR_REFERENCIA: TStringField;
    cdsLanctoPagtoR_REF_FTDO: TStringField;
    cdsLanctoPagtoR_DT_PAGTO: TDateField;
    cdsLanctoPagtoR_ID_LOCAL_PAGTO: TIntegerField;
    cdsLanctoPagtoR_DESCR_LOCAL_PAGTO: TStringField;
    cdsLanctoPagtoR_DT_VENCIMENTO: TDateField;
    cdsLanctoPagtoR_VAL_FATURA: TFMTBCDField;
    cdsLanctoPagtoR_VAL_DESCONTO: TFMTBCDField;
    cdsLanctoPagtoR_VAL_PAGTO: TFMTBCDField;
    qryPlanLanctoConsumo: TSQLQuery;
    provPlanLanctoConsumo: TDataSetProvider;
    cdsPlanLanctoConsumo: TClientDataSet;
    frxPlanLanctoConsumo: TfrxDBDataset;
    cdsPlanLanctoConsumoR_ID_LOGRAD: TIntegerField;
    cdsPlanLanctoConsumoR_DESCR_LOGRAD: TStringField;
    cdsPlanLanctoConsumoR_ID_UNID_CONSUM: TIntegerField;
    cdsPlanLanctoConsumoR_DT_LIGACAO: TDateField;
    cdsPlanLanctoConsumoR_NOME_PESSOA: TStringField;
    cdsPlanLanctoConsumoR_CPF_CNPJ: TStringField;
    cdsPlanLanctoConsumoR_DESCR_CATEG: TStringField;
    cdsPlanLanctoConsumoR_NUM_HIDROM: TStringField;
    cdsPlanLanctoConsumoR_ENDER_NUM_LETRA: TStringField;
    cdsPlanLanctoConsumoR_ULT_MES: TStringField;
    cdsPlanLanctoConsumoR_PENULT_MES: TStringField;
    cdsPlanLanctoConsumoR_ULT_LEITURA: TIntegerField;
    cdsPlanLanctoConsumoR_PENULT_LEITURA: TIntegerField;
    cdsPlanLanctoConsumoR_ULT_CONSUMO: TIntegerField;
    cdsPlanLanctoConsumoR_PENULT_CONSUMO: TIntegerField;
    cdsPlanLanctoConsumoR_DT_ULT_LEITURA: TDateField;
    cdsPlanLanctoConsumoR_LEITURA_ANTER: TIntegerField;
    cdsPlanLanctoConsumoR_LEITURA_ATUAL: TIntegerField;
    cdsPlanLanctoConsumoR_CONSUMO_ATUAL: TIntegerField;
    cdsPlanLanctoConsumoR_DT_LEITURA_ATUAL: TDateField;
    cdsPlanLanctoConsumoR_OBSERVACAO: TStringField;
    cdsResumoCalcFatLogradR_ID_DISTRITO: TIntegerField;
    cdsResumoCalcFatLogradR_DESCR_DISTRITO: TStringField;
    cdsResumoCalcFatLogradR_ID_BAIRRO: TIntegerField;
    cdsResumoCalcFatLogradR_DESCR_BAIRRO: TStringField;
    cdsResumoCalcFatLogradR_ID_LOGRAD: TIntegerField;
    cdsResumoCalcFatLogradR_DESCR_LOGRAD: TStringField;
    cdsResumoCalcFatLogradR_QTD_USUARIO: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_CALC: TIntegerField;
    cdsResumoCalcFatLogradR_VAL_PRINCIPAL: TFMTBCDField;
    cdsResumoCalcFatLogradR_VAL_MULTA: TFMTBCDField;
    cdsResumoCalcFatLogradR_VAL_OUTRO_DEB: TFMTBCDField;
    cdsResumoCalcFatLogradR_VAL_OUTRO_CRED: TFMTBCDField;
    cdsResumoCalcFatLogradR_VAL_TOTAL: TFMTBCDField;
    cdsResumoCalcFatLogradR_QTD_TORN: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_IMOVEL: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_TIPO_CONSUM_TORN: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_TIPO_CONSUM_M3: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_CATEG_RESID: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_CATEG_COMER: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_CATEG_INDUSTR: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_CATEG_OUTRA: TIntegerField;
    cdsResumoCalcFatLogradR_QTD_CONSUM_M3: TIntegerField;
    qryListaDeCorte: TSQLQuery;
    provListaDeCorte: TDataSetProvider;
    cdsListaDeCorte: TClientDataSet;
    frxListaDeCorte: TfrxDBDataset;
    cdsListaDeCorteR_ID_LOGRAD: TIntegerField;
    cdsListaDeCorteR_DESCR_LOGRAD: TStringField;
    cdsListaDeCorteR_ID_UNID_CONSUM: TIntegerField;
    cdsListaDeCorteR_NOME_PESSOA: TStringField;
    cdsListaDeCorteR_DESCR_TIPO_PESSOA: TStringField;
    cdsListaDeCorteR_CPF_CNPJ: TStringField;
    cdsListaDeCorteR_ENDER_NUM_LETRA: TStringField;
    cdsListaDeCorteR_DT_LIGACAO: TDateField;
    cdsListaDeCorteR_ANO_MES: TStringField;
    cdsListaDeCorteR_MES_ANO: TStringField;
    cdsListaDeCorteR_DT_VENCTO: TDateField;
    cdsListaDeCorteR_VALOR: TFMTBCDField;
    cdsListaDeCorteR_QTD_MESES: TIntegerField;
    cdsListaDeCorteR_DESCR_CATEG: TStringField;
    qryResumoInadimpBairro: TSQLQuery;
    provResumoInadimpBairro: TDataSetProvider;
    cdsResumoInadimpBairro: TClientDataSet;
    frxResumoInadimpBairro: TfrxDBDataset;
    cdsResumoInadimpBairroR_ID_DISTRITO: TIntegerField;
    cdsResumoInadimpBairroR_DESCR_DISTRITO: TStringField;
    cdsResumoInadimpBairroR_ANO: TStringField;
    cdsResumoInadimpBairroR_MES: TStringField;
    cdsResumoInadimpBairroR_NOME_MES: TStringField;
    cdsResumoInadimpBairroR_ANO_MES: TStringField;
    cdsResumoInadimpBairroR_NOME_BAIRRO01: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO01: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO02: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO02: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO03: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO03: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO04: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO04: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO05: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO05: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO06: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO06: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO07: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO07: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO08: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO08: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO09: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO09: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO10: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO10: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO11: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO11: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO12: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO12: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO13: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO13: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO14: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO14: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO15: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO15: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO16: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO16: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO17: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO17: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO18: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO18: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO19: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO19: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO20: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO20: TFMTBCDField;
    cdsResumoInadimpBairroR_NOME_BAIRRO21: TStringField;
    cdsResumoInadimpBairroR_TOT_BAIRRO21: TFMTBCDField;
    cdsResumoInadimpBairroR_TOT_BAIRRO_ANO_MES: TFMTBCDField;
    cdsListaDeCorteR_NUM_IMOVEL_ID_UC: TStringField;
    qryFatAvulsa: TSQLQuery;
    provFatAvulsa: TDataSetProvider;
    cdsFatAvulsa: TClientDataSet;
    frxFatAvulsa: TfrxDBDataset;
    cdsFatAvulsaR_ID: TIntegerField;
    cdsFatAvulsaR_DT_EMISSAO: TDateField;
    cdsFatAvulsaR_DT_VENCTO: TDateField;
    cdsFatAvulsaR_ID_UC: TIntegerField;
    cdsFatAvulsaR_DESCR_SITUAC: TStringField;
    cdsFatAvulsaR_NOME_PESSOA: TStringField;
    cdsFatAvulsaR_CPF_CNPJ: TStringField;
    cdsFatAvulsaR_DESCR_CATEG: TStringField;
    cdsFatAvulsaR_ENDER_LOGRAD: TStringField;
    cdsFatAvulsaR_ENDER_DESCR_BAIRRO: TStringField;
    cdsFatAvulsaR_DESCR_DISTRITO: TStringField;
    cdsFatAvulsaR_VAL_TOTAL: TFMTBCDField;
    cdsFatAvulsaR_DT_PAGTO: TDateField;
    cdsFatAvulsaR_VAL_PAGO: TFMTBCDField;
    cdsFatAvulsaR_ITEM: TIntegerField;
    cdsFatAvulsaR_COD_ITEM: TIntegerField;
    cdsFatAvulsaR_REF_ITEM: TStringField;
    cdsFatAvulsaR_DESCR_ITEM: TStringField;
    cdsFatAvulsaR_VAL_ITEM: TFMTBCDField;
    cdsFatAvulsaR_DESCONTOS: TFMTBCDField;
    cdsFatAvulsaR_VAL_MULTA: TFMTBCDField;
    cdsFatAvulsaR_VAL_JUROS: TFMTBCDField;
    cdsFatAvulsaR_ITEM_VAL_TOTAL: TFMTBCDField;
    cdsFatAvulsaR_INCIDIR_MULTA: TStringField;
    cdsFatAvulsaR_DESCR_LOCAL_PAGTO: TStringField;
    cdsLanctoOutroItemANO_MES: TStringField;
    cdsLanctoOutroItemID_UNID_CONSUM: TIntegerField;
    cdsLanctoOutroItemID_OUTRO: TIntegerField;
    cdsLanctoOutroItemCOMPLEMENTO: TStringField;
    cdsLanctoOutroItemVALOR: TFMTBCDField;
    cdsLanctoOutroItemTIPO: TStringField;
    cdsLanctoOutroItemDT_EVENTO: TDateField;
    cdsLanctoOutroItemOBSERVACAO: TStringField;
    cdsLanctoOutroItemDESCR_OUTRA_TARIFA: TStringField;
    cdsLanctoOutroItemNOME_PESSOA: TStringField;
    cdsLanctoOutroItemCPF_CNPJ_FTDO: TStringField;
    cdsLanctoOutroItemNUM_HIDROMETRO: TStringField;
    cdsLanctoOutroItemDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsLanctoOutroItemENDER_ID_DISTRITO: TIntegerField;
    cdsLanctoOutroItemENDER_ID_BAIRRO: TIntegerField;
    cdsLanctoOutroItemENDER_DESCR_LOGRADOURO: TStringField;
    cdsLanctoOutroItemENDER_UC_NUM_LETRA: TStringField;
    cdsLanctoOutroItemENDER_COMPLEMENTO: TStringField;
    cdsLanctoOutroItemENDER_DESCR_DISTRITO: TStringField;
    cdsLanctoOutroItemENDER_DESCR_BAIRRO: TStringField;
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
    cdsRequerimentoENDER_ID_DISTRITO_1: TIntegerField;
    cdsRequerimentoENDER_ID_BAIRRO_1: TIntegerField;
    cdsRequerimentoENDER_DESCR_LOGRADOURO: TStringField;
    cdsRequerimentoENDER_UC_NUM_LETRA: TStringField;
    cdsRequerimentoENDER_COMPLEMENTO_1: TStringField;
    cdsRequerimentoENDER_DESCR_DISTRITO_1: TStringField;
    cdsRequerimentoENDER_DESCR_BAIRRO_1: TStringField;
    cdsEmit_ArrecadR_ANO_MES: TStringField;
    cdsEmit_ArrecadR_ANO_MES_DESCR: TStringField;
    cdsEmit_ArrecadR_ID_BAIRRO: TIntegerField;
    cdsEmit_ArrecadR_DESCR_BAIRRO: TStringField;
    cdsEmit_ArrecadR_DT_VENCTO: TDateField;
    cdsEmit_ArrecadR_QTD_CALC: TIntegerField;
    cdsEmit_ArrecadR_QTD_PAG: TIntegerField;
    cdsEmit_ArrecadR_QTD_DIF: TIntegerField;
    cdsEmit_ArrecadR_QTD_DIF_PERC: TFMTBCDField;
    cdsEmit_ArrecadR_VAL_EMITIDO: TFMTBCDField;
    cdsEmit_ArrecadR_VAL_PAGO: TFMTBCDField;
    cdsEmit_ArrecadR_VAL_DIF_PERC: TFMTBCDField;
    cdsEmit_ArrecadR_VAL_DIF: TFMTBCDField;
    cdsFatAvulsaR_OBSERV: TStringField;
    cdsLanctoPagtoR_VAL_EXPEDIENTE: TFMTBCDField;
    cdsLanctoPagtoR_VAL_LIGACAO: TFMTBCDField;
    cdsLanctoPagtoR_VAL_RELIGACAO: TFMTBCDField;
    cdsLanctoPagtoR_VAL_AGUA: TFMTBCDField;
    cdsLanctoPagtoR_VAL_JUROS: TFMTBCDField;
    cdsLanctoPagtoR_VAL_OUTRO_DEB: TFMTBCDField;
    cdsLanctoPagtoR_VAL_PROVA: TFMTBCDField;
    cdsLanctoPagtoR_OK: TStringField;
    frxCheckBoxObject1: TfrxCheckBoxObject;
    qryHistFatura: TSQLQuery;
    provHistFatura: TDataSetProvider;
    cdsHistFatura: TClientDataSet;
    cdsHistFaturaR_ANO_MES: TStringField;
    cdsHistFaturaR_MES_ANO_FTDO: TStringField;
    cdsHistFaturaR_DT_EMISSAO: TDateField;
    cdsHistFaturaR_DT_VENCTO: TDateField;
    cdsHistFaturaR_VAL_FATURA: TFMTBCDField;
    cdsHistFaturaR_DT_PAGTO: TDateField;
    cdsHistFaturaR_VAL_DESCONTO: TFMTBCDField;
    cdsHistFaturaR_VAL_MULTA: TFMTBCDField;
    cdsHistFaturaR_VAL_PAGTO: TFMTBCDField;
    cdsHistFaturaR_ID_LOCAL_PAGTO: TIntegerField;
    cdsHistFaturaR_DESCR_LOCAL_PAGTO: TStringField;
    cdsHistFaturaR_DESCR_SITUACAO: TStringField;
    cdsHistFaturaR_SITUACAO: TStringField;
    frxHistFatura: TfrxDBDataset;
    qryUC_Hist: TSQLQuery;
    qryUC_HistNOME_PESSOA: TStringField;
    qryUC_HistCPF_CNPJ_FTDO: TStringField;
    qryUC_HistDT_LIGACAO: TDateField;
    qryUC_HistNUM_LIGACAO: TStringField;
    qryUC_HistENDER_DESCR_LOGRAD: TStringField;
    qryUC_HistENDER_UC_NUM_LETRA: TStringField;
    qryUC_HistENDER_DESCR_BAIRRO: TStringField;
    qryUC_HistENDER_DESCR_DISTRITO: TStringField;
    qryUC_HistDESCR_TIPO_UNID_CONSUM: TStringField;
    qryUC_HistDESCR_SITUACAO: TStringField;
    qryUC_HistDT_ULT_CORTE: TDateField;
    qryUC_HistDT_ULT_RELIG: TDateField;
    qryUC_HistENDER_ID_DISTRITO: TIntegerField;
    qryUC_HistENDER_ID_BAIRRO: TIntegerField;
    qryUC_HistENDER_ID_LOGRAD: TIntegerField;
    qryUC_HistENDER_ID_DISTRITO2: TIntegerField;
    qryUC_HistENDER_ID_BAIRRO2: TIntegerField;
    qryUC_HistENDER_ID_LOGRAD2: TIntegerField;
    qryUC_HistENDER_DESCR_LOGRAD2: TStringField;
    qryUC_HistENDER_UC_NUM_LETRA2: TStringField;
    qryUC_HistENDER_DESCR_BAIRRO2: TStringField;
    qryUC_HistENDER_DESCR_DISTRITO2: TStringField;
    frxUC_Hist: TfrxDBDataset;
    qryUC_HistID: TIntegerField;
    cdsHistFaturaR_VAL_DEBITO: TFMTBCDField;
    cdsHistFaturaR_SIT_CONT: TIntegerField;
    qryUC_HistID_FTDO: TStringField;
    cdsListaDeCorteR_ENDER_COMPLEMEN: TStringField;
    qryDecAnualQuitaUC: TSQLQuery;
    provDecAnualQuitaUC: TDataSetProvider;
    cdsDecAnualQuitaUC: TClientDataSet;
    frxDecAnualQuitaUC: TfrxDBDataset;
    cdsConfigOrgaoENDER_CEP_FTDO: TStringField;
    cdsConfigOrgaoCNPJ_FTDO: TStringField;
    cdsConfigOrgaoSIGLA2: TStringField;
    cdsDecAnualQuitaUCANO: TStringField;
    cdsDecAnualQuitaUCID_UNID_CONSUM: TIntegerField;
    cdsDecAnualQuitaUCVENCTO_01: TDateField;
    cdsDecAnualQuitaUCVALOR_01: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_01: TDateField;
    cdsDecAnualQuitaUCVENCTO_02: TDateField;
    cdsDecAnualQuitaUCVALOR_02: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_02: TDateField;
    cdsDecAnualQuitaUCVENCTO_03: TDateField;
    cdsDecAnualQuitaUCVALOR_03: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_03: TDateField;
    cdsDecAnualQuitaUCVENCTO_04: TDateField;
    cdsDecAnualQuitaUCVALOR_04: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_04: TDateField;
    cdsDecAnualQuitaUCVENCTO_05: TDateField;
    cdsDecAnualQuitaUCVALOR_05: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_05: TDateField;
    cdsDecAnualQuitaUCVENCTO_06: TDateField;
    cdsDecAnualQuitaUCVALOR_06: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_06: TDateField;
    cdsDecAnualQuitaUCVENCTO_07: TDateField;
    cdsDecAnualQuitaUCVALOR_07: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_07: TDateField;
    cdsDecAnualQuitaUCVENCTO_08: TDateField;
    cdsDecAnualQuitaUCVALOR_08: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_08: TDateField;
    cdsDecAnualQuitaUCVENCTO_09: TDateField;
    cdsDecAnualQuitaUCVALOR_09: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_09: TDateField;
    cdsDecAnualQuitaUCVENCTO_10: TDateField;
    cdsDecAnualQuitaUCVALOR_10: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_10: TDateField;
    cdsDecAnualQuitaUCVENCTO_11: TDateField;
    cdsDecAnualQuitaUCVALOR_11: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_11: TDateField;
    cdsDecAnualQuitaUCVENCTO_12: TDateField;
    cdsDecAnualQuitaUCVALOR_12: TFMTBCDField;
    cdsDecAnualQuitaUCDT_PAGTO_12: TDateField;
    cdsDecAnualQuitaUCVIA_EMITIDA: TStringField;
    cdsDecAnualQuitaUCENDER_ID_LOGRAD: TIntegerField;
    cdsDecAnualQuitaUCENDER_DESCR_LOGRAD: TStringField;
    cdsDecAnualQuitaUCENDER_UC_NUM_LETRA: TStringField;
    cdsDecAnualQuitaUCENDER_COMPLEMENTO: TStringField;
    cdsDecAnualQuitaUCENDER_ID_BAIRRO: TIntegerField;
    cdsDecAnualQuitaUCENDER_ID_DISTRITO: TIntegerField;
    cdsDecAnualQuitaUCENDER_DESCR_DISTRITO: TStringField;
    cdsDecAnualQuitaUCID_UC_FTDO: TStringField;
    cdsDecAnualQuitaUCNOME_PESSOA: TStringField;
    cdsDecAnualQuitaUCCPF_CNPJ: TStringField;
    cdsDecAnualQuitaUCNUM_LIGACAO: TStringField;
    cdsDecAnualQuitaUCNUM_HIDROMETRO: TStringField;
    cdsDecAnualQuitaUCDT_LIGACAO: TDateField;
    cdsDecAnualQuitaUCDT_EMISSAO: TDateField;
    cdsDecAnualQuitaUCENDER_ID_LOGRAD2: TIntegerField;
    cdsDecAnualQuitaUCENDER_UC_NUM_LETRA2: TStringField;
    cdsDecAnualQuitaUCENDER_ID_BAIRRO2: TIntegerField;
    cdsDecAnualQuitaUCENDER_ID_DISTRITO2: TIntegerField;
    cdsDecAnualQuitaUCDESCR_CATEGORIA: TStringField;
    cdsDecAnualQuitaUCENDER_DESCR_LOGRAD2: TStringField;
    cdsDecAnualQuitaUCENDER_DESCR_BAIRRO2: TStringField;
    cdsDecAnualQuitaUCENDER_DESCR_DISTRITO2: TStringField;
    cdsDecAnualQuitaUCENDER_COMPLEMENTO2: TStringField;
    cdsDecAnualQuitaUCNUM_VIA: TLargeintField;
    cdsDecAnualQuitaUCENDER_DESCR_BAIRRO: TStringField;
    cdsConfigOrgaoVERSAO_SYS: TStringField;
    cdsConfigOrgaoNOME_FR3: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsResumoCalcFatLogradAfterScroll(DataSet: TDataSet);
    procedure cdsSUOTotEventoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    pv_sAnoMes  : string[6];
    pv_lGeraTabEventos: Boolean;
    pv_sPathRel : String;
    pv_sOpcaoGPS: string[1];
    procedure GeraTabEventos(sAnoMes, sParcela: String; iIdServidor: Integer);
    procedure CloseTabBeforeProcess;
  public
    { Public declarations }
    procedure RelFaturaCalc(sAnoMes, sBairro, sMultiLograd,
      sUnidConsum: String; lVisualizar: Boolean);
    procedure RelResumoFatCalcDistritoBairro(sMultiDistrito: string; lVisualizar: Boolean);
    procedure RelResumoFatCalcLogradouro(sAnoMes: string; sMultiDistrito,
      sMultiBairro, sMultiLograd: WideString; sSumprimeLograd: string; lVisualizar: Boolean);
    procedure RelLanctoPagto(sDtIni, sDtFim, sMultiLocalPagto,sResumo: string;
      lVisualizar: Boolean);
    procedure RelLanctoConsumo(sAnomes, sBairro: string; sMultiLograd: WideString;
       sPlanLancto: string; lVisualizar: Boolean);
    procedure RelListaDeCorte(sBairro,sMultiLograd: string;
       iQtdMin: Integer; sMesAnoIni, sMesAnoFim: string; lVisualizar: Boolean);
    procedure RelResumoInadimpBairro(sMultiDistrito, sMesAnoIni, sMesAnoFim: string; lVisualizar: Boolean);
    procedure RelFaturasAvulsas(sDtIni, sDtFim, sSituac: string; lVisualizar: Boolean);
    procedure RelLanctoOutroItem(sAnoMes, sDistrito: string; sMultiBairro: WideString; lVisualizar: Boolean);
    procedure RelRequerimentos(sDtIni, sDtFim, sDistrito, sSituac: string; sMultiBairro: WideString;
      lVisualizar: Boolean);
    procedure RelEmitidoArrecadado(sDistrito, sMultiBairro, sAnoMesIni, sAnoMesFim: string;
      lVisualizar: Boolean);
    procedure RelHistoricoFatCalcUC(iUC: Integer; sAnoMesIni, sOpcao: string; lVisualizar: Boolean);
    procedure RelDecAnualQuitacaoUC(iUC: Integer; sBairro, sAno: string; sMultiLograd: WideString;
       lVisualizar: Boolean);

  end;

var
  dmRelFinanceiros: TdmRelFinanceiros;

implementation

uses VarGlobais, udmPrincipal, uTeste, gsLib, UtilsDb;

{$R *.dfm}

procedure TdmRelFinanceiros.cdsResumoCalcFatLogradAfterScroll(DataSet: TDataSet);
begin
{
   if DataSet.FieldByName('ano_mes').IsNull then exit;
   GeraTabEventos(DataSet.FieldByName('ano_mes').Value,
                  DataSet.FieldByName('parcela').Value,
                  DataSet.FieldByName('id_servidor').Value);
}
end;

procedure TdmRelFinanceiros.cdsSUOTotEventoAfterScroll(DataSet: TDataSet);
Var
   crBCEmpregador,
   crValPrincipal,
   crValSAT,
   crValFAP,
   crPrevidPatronal,
   crValPrevidServidor,
   crTotVenctos,
   crTotDesctos: Currency;
   slUnidGestora: TStringList;
   crValSalFam,
   crOutrasDeducFPAS,
   crTotDeducoes,
   crValLiquido: Currency;
begin
end;

procedure TdmRelFinanceiros.DataModuleCreate(Sender: TObject);
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
  CloseTabBeforeProcess;
{
  mTbEventoCalc.CreateDataSet;
  mTbEventoCalc.IndexFieldNames:= 'Id';
  mTbTotEvento.CreateDataSet;
  mTbTotEvento.IndexFieldNames := 'Id';
}

  pv_sPathRel := GetPathRel();

  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;

  cdsConfigOrgaoCNPJ_FTDO.Value := FormatString('99.999.999/9999-99',
     Criptografa(cdsConfigOrgaoCNPJ.Value,'2',14));
  cdsConfigOrgaoRAZAO_SOCIAL2.Value := Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoSIGLA2.Value        := Criptografa(cdsConfigOrgaoSIGLA.Value,'2',10);
  cdsConfigOrgaoNOME_SYS.Value      := glb_sSistema;
  cdsConfigOrgaoVERSAO_SYS.Value    := 'Versão: ['+glb_sVersao+']';
  cdsConfigOrgaoender_CEP_FTDO.Value:= FormatString('99.999-999',cdsConfigOrgaoEnder_CEP.Value);
  cdsConfigOrgao.Post;
end;

procedure TdmRelFinanceiros.DataModuleDestroy(Sender: TObject);
begin
  cdsConfigOrgao.Close;
  cdsCalcFatMesResumo.Close;
  cdsDecAnualQuitaUC.Close;
  {
  qryEventoCalc.Close;
  mTbEventoCalc.Close;
  mTbTotEvento.Close;
  cdsTotEventoMes.Close;
  }
end;

procedure TdmRelFinanceiros.RelResumoFatCalcDistritoBairro(sMultiDistrito: String;
   lVisualizar: Boolean);
begin

  sMultiDistrito := AjustaTextoParamVarios(sMultiDistrito);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'RESUMO DE FATURAS CALCULADAS';
  cdsConfigOrgaoTIT_REL2.Value:= 'REF. : '+glb_sDescrMesAnoTrab;
  cdsConfigOrgao.Post;

  cdsCalcFatMesResumo.Close;
  qryCalcFatMesResumo.ParamByName('pAnoMes').Value         := glb_sAnoMesTrab;
  qryCalcFatMesResumo.ParamByName('pMultiDistrito').Value  := sMultiDistrito;
  qryCalcFatMesResumo.ParamByName('pMultiDistrito2').Value := sMultiDistrito;
  cdsCalcFatMesResumo.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'ResumoCalcDistritoBairro.fr3');
  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.RelResumoFatCalcLogradouro(sAnoMes: string; sMultiDistrito,
   sMultiBairro, sMultiLograd: WideString; sSumprimeLograd: string; lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;
  sMultiDistrito := AjustaTextoParamVarios(sMultiDistrito);
  sMultiBairro := AjustaTextoParamVarios(sMultiBairro);
  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'RESUMO GERAL DO CÁLCULO DAS FATURAS';
  cdsConfigOrgaoTIT_REL2.Value:= 'MÊS/ANO: '+glb_sDescrMesAnoTrab;
  cdsConfigOrgao.Post;

  cdsResumoCalcFatLograd.Close;
  qryResumoCalcFatLograd.ParamByName('pAnoMes').Value          := glb_sAnoMesTrab;
  qryResumoCalcFatLograd.ParamByName('pMultiDistrito').AsString:= sMultiDistrito;
  qryResumoCalcFatLograd.ParamByName('pMultiBairro').AsString  := sMultiBairro;
  qryResumoCalcFatLograd.ParamByName('pMultiLograd').AsString  := sMultiLograd;
  cdsResumoCalcFatLograd.Open;

  if sSumprimeLograd = 'S' then
    frxReport1.LoadFromFile(pv_sPathRel+'ResumoCalcBairro.fr3')
  else
    frxReport1.LoadFromFile(pv_sPathRel+'ResumoCalcLogradouro.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.RelLanctoPagto(sDtIni,sDtFim,sMultiLocalPagto,sResumo:
   string; lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;
  sMultiLocalPagto := AjustaTextoParamVarios(sMultiLocalPagto);

  cdsConfigOrgao.Edit;
  if sResumo <> 'S' then
     cdsConfigOrgaoNOME_FR3.Value := 'LanctoPagtoNominal.fr3'
  Else
     cdsConfigOrgaoNOME_FR3.Value := 'LanctoPagtoResumo.fr3';
  cdsConfigOrgaoTIT_REL1.Value:= 'Pagamentos Efetuados por Data e Local';
  cdsConfigOrgao.Post;

  cdsLanctoPagto.Close;
  qryLanctoPagto.ParamByName('pDtIni').Value   := StrToDate(sDtIni);
  qryLanctoPagto.ParamByName('pDtFim').Value   := StrToDate(sDtFim);
  qryLanctoPagto.ParamByName('pMultiLocalPagto').Value := Trim(sMultiLocalPagto);
  cdsLanctoPagto.Open;

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaoNOME_FR3.Value));

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.RelResumoInadimpBairro(sMultiDistrito,sMesAnoIni,sMesAnoFim: string;
   lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;
  sMultiDistrito := AjustaTextoParamVarios(sMultiDistrito);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'RESUMO DA INADIMPLÊNCIA POR BAIRRO';

  cdsConfigOrgao.Post;

  cdsResumoInadimpBairro.Close;
  qryResumoInadimpBairro.ParamByName('pMultiDistrito').AsString := Trim(sMultiDistrito);
  qryResumoInadimpBairro.ParamByName('pAnoMesIni').Value   := RightStr(sMesAnoIni,4)+LeftStr(sMesAnoIni,2);
  qryResumoInadimpBairro.ParamByName('pAnoMesFim').Value   := RightStr(sMesAnoFim,4)+LeftStr(sMesAnoFim,2);
  cdsResumoInadimpBairro.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'ResumoInadimpBairro.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.RelFaturasAvulsas(sDtIni,sDtFim,sSituac: string;
   lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'RELAÇÃO DE FATURAS AVULSAS - SITUACAO: '+
    iIf(sSituac='0','TODAS',iIf(sSituac='1','EM ABERTO','QUITADAS'));
  cdsConfigOrgaoTIT_REL2.Value:= 'PERÍODO DE: '+sDtIni+' A '+sDtFim;
  cdsConfigOrgao.Post;

  cdsFatAvulsa.Close;
  qryFatAvulsa.ParamByName('pDtIni').Value := StrToDate(sDtIni);
  qryFatAvulsa.ParamByName('pDtFim').Value   := StrToDate(sDtFim);
  qryFatAvulsa.ParamByName('pSituacao').Value   := sSituac;
  cdsFatAvulsa.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'FaturaAvulsaLista.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.RelLanctoOutroItem(sAnoMes, sDistrito: string; sMultiBairro: WideString;
   lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;
  sDistrito := Trim(sDistrito);
  sMultiBairro := AjustaTextoParamVarios(sMultiBairro);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'LANÇAMENTOS DE OUTROS ÍTENS / SERVIÇOS: '+glb_sDescrMesAnoTrab;
  cdsConfigOrgaoTIT_REL2.Value:= 'DISTRITO: '+sDistrito+' - '+
     Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','');
  cdsConfigOrgao.Post;

  cdsLanctoOutroItem.Close;
  qryLanctoOutroItem.ParamByName('pAnoMes').Value := sAnoMes;
  qryLanctoOutroItem.ParamByName('pDistrito').Value   := StrToInt(sDistrito);
  qryLanctoOutroItem.ParamByName('pMultiBairro').Value   := sMultiBairro;
  cdsLanctoOutroItem.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'LanctoOutroItem.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.RelRequerimentos(sDtIni,sDtFim,sDistrito,sSituac: string; sMultiBairro: WideString;
   lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;
  sDistrito := Trim(sDistrito);
  sMultiBairro := AjustaTextoParamVarios(sMultiBairro);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'REQUERIMENTOS DO PERÍODO: '+sDtIni+'  A '+sDtFim;
  cdsConfigOrgaoTIT_REL2.Value:= 'DISTRITO: '+sDistrito+' - '+
     Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','');
  cdsConfigOrgao.Post;

  cdsRequerimento.Close;
  qryRequerimento.ParamByName('pDtIni').Value := StrToDate(sDtIni);
  qryRequerimento.ParamByName('pDtFim').Value := StrToDate(sDtFim);
  qryRequerimento.ParamByName('pSituacIni').Value := '0';
  qryRequerimento.ParamByName('pSituacFim').Value := '9';
  if sSituac <> '0' then
  begin
    qryRequerimento.ParamByName('pSituacIni').Value := sSituac;
    qryRequerimento.ParamByName('pSituacFim').Value := sSituac;
  end;
  qryRequerimento.ParamByName('pDistrito').Value   := StrToInt(sDistrito);
  qryRequerimento.ParamByName('pMultiBairro').Value:= sMultiBairro;
  cdsRequerimento.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'RequerimentosLista.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;


procedure TdmRelFinanceiros.RelEmitidoArrecadado(sDistrito,sMultiBairro,sAnoMesIni,sAnoMesFim: string;
   lVisualizar: Boolean);
begin

  Screen.Cursor := crHourGlass;
  sDistrito := Trim(sDistrito);
  sMultiBairro := AjustaTextoParamVarios(sMultiBairro);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'DEMONSTRATIVO EMITIDO X ARRECADADO';
  cdsConfigOrgaoTIT_REL2.Value:= 'DISTRITO: '+sDistrito+' - '+
     Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','');
  cdsConfigOrgao.Post;

  cdsEmit_Arrecad.Close;
  qryEmit_Arrecad.ParamByName('pDistrito').Value   := StrToInt(sDistrito);
  qryEmit_Arrecad.ParamByName('pMultiBairro').Value:= sMultiBairro;
  qryEmit_Arrecad.ParamByName('pAnoMesIni').Value := InverteAnoMes(sAnoMesIni,'1');
  qryEmit_Arrecad.ParamByName('pAnoMesFim').Value := InverteAnoMes(sAnoMesFim,'1');
  cdsEmit_Arrecad.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'EmitidoArrecadado.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.RelListaDeCorte(sBairro,sMultiLograd: string;
   iQtdMin: Integer; sMesAnoIni, sMesAnoFim: string; lVisualizar: Boolean);
Var
   sDistrito: string;

begin

  Screen.Cursor := crHourGlass;

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'DISTRITO: '+Trim(sDistrito)+' - '+
    Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','')+' / BAIRRO: '+sBairro+
    ' - '+Pesquisa('BAIRRO','ID',sBairro,'DESCRICAO','');
  cdsConfigOrgaoTIT_REL2.Value:= 'L I S T A   D E   C O R T E';

  cdsConfigOrgao.Post;

  cdsListaDeCorte.Close;
  cdsListaDeCorte.IndexFieldNames := 'r_descr_lograd;R_NUM_IMOVEL_ID_UC;r_ano_mes';
  qryListaDeCorte.ParamByName('pDistrito').AsString := Trim(sDistrito);
  qryListaDeCorte.ParamByName('pBairro').AsString   := Trim(sBairro);
  qryListaDeCorte.ParamByName('pMultiLograd').Value := sMultiLograd;
  qryListaDeCorte.ParamByName('pQtdMin').Value      := iQtdMin;
  qryListaDeCorte.ParamByName('pAnoMesIni').Value   := RightStr(sMesAnoIni,4)+LeftStr(sMesAnoIni,2);
  qryListaDeCorte.ParamByName('pAnoMesFim').Value   := RightStr(sMesAnoFim,4)+LeftStr(sMesAnoFim,2);
  cdsListaDeCorte.Open;

  frxReport1.LoadFromFile(pv_sPathRel+'ListaDeCorte.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;


procedure TdmRelFinanceiros.GeraTabEventos(sAnoMes,sParcela: String;
  iIdServidor: Integer);
begin
{
  if not pv_lGeraTabEventos then exit;

  mTbEventoCalc.EmptyDataSet;
  qryEventoCalc.Close;
  qryEventoCalc.ParamByName('pAno_Mes').Value := sAnoMes;
  qryEventoCalc.ParamByName('pParcela').Value := sParcela;
  qryEventoCalc.ParamByName('pid_servidor').Value := iIdServidor;
  qryEventoCalc.Open;
  while (not qryEventoCalc.eof) and
        (qryEventoCalcTIPO_EVENTO2.Value = '1')  do
  begin
     mTbEventoCalc.Append;
     mTbEventoCalcId.Value := mTbEventoCalc.RecordCount+1;
     mTbEventoCalcCodVencto.Value   := qryEventoCalcCOD_EVENTO.Value;
     mTbEventoCalcDescrVencto.Value := qryEventoCalcDESCR_EVENTO.Value;
     mTbEventoCalcObservVencto.Value:= qryEventoCalcOBSERVACAO.Value;
     mTbEventoCalcQtdVencto.Value   := FormatCurr('0,0.00',qryEventoCalcQTD.AsCurrency);
     mTbEventoCalcValorVencto.Value := FormatCurr('0,0.00',qryEventoCalcVALOR.AsCurrency);
     mTbEventoCalc.Post;
     qryEventoCalc.Next;
  end;
  mTbEventoCalc.First;
  while not qryEventoCalc.eof do
  begin
     if mTbEventoCalc.eof then
     begin
        mTbEventoCalc.Append;
        mTbEventoCalcId.Value := mTbEventoCalc.RecordCount+1;
     end else
        mTbEventoCalc.Edit;
     mTbEventoCalcCodDesc.Value   := qryEventoCalcCOD_EVENTO.Value;
     mTbEventoCalcDescrDesc.Value := qryEventoCalcDESCR_EVENTO.Value;
     mTbEventoCalcObservDesc.Value:= qryEventoCalcOBSERVACAO.Value;
     mTbEventoCalcQtdDesc.Value   := FormatCurr('0,0.00',qryEventoCalcQTD.AsCurrency);
     mTbEventoCalcValorDesc.Value := FormatCurr('0,0.00',qryEventoCalcVALOR.AsCurrency);
     mTbEventoCalc.Post;
     mTbEventoCalc.Next;
     qryEventoCalc.Next;
  end;

  qryEventoCalc.Close;
}

end;

procedure TdmRelFinanceiros.RelLanctoConsumo(sAnomes, sBairro: string; sMultiLograd: WideString;
   sPlanLancto: string; lVisualizar: Boolean);
Var
  sDistrito: string;
begin
  Screen.Cursor := crHourGlass;

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);

  cdsPlanLanctoConsumo.Close;
  qryPlanLanctoConsumo.ParamByName('pAnoMes').Value := sAnomes;
  qryPlanLanctoConsumo.ParamByName('pDistrito').AsString := Trim(sDistrito) ;
  qryPlanLanctoConsumo.ParamByName('pBairro').AsString := Trim(sBairro) ;
  qryPlanLanctoConsumo.ParamByName('pMultiLograd').Value := sMultiLograd;
  qryPlanLanctoConsumo.ParamByName('pPlanLancto').Value := sPlanLancto;
  cdsPlanLanctoConsumo.Open;

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value:= 'Planilha p/ Lançto do Consumo (m³) - '+DescrMesAno(sAnomes);
  cdsConfigOrgaoTIT_REL2.Value:= 'Distrito: '+sDistrito+' - '+Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','')+
     ' / Bairro: '+sBairro+' - '+Pesquisa('BAIRRO','ID',sBairro,'DESCRICAO','');
  cdsConfigOrgao.Post;

  Screen.Cursor := crDefault;


  if sPlanLancto = 'S' then
     frxReport1.LoadFromFile(pv_sPathRel+'PlanLanctoConsumo_v2.fr3')
  else
     frxReport1.LoadFromFile(pv_sPathRel+'LanctoConsumo_v2.fr3');

  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

procedure TdmRelFinanceiros.CloseTabBeforeProcess;
begin
  cdsConfigOrgao.Close;
  cdsCalcFatMesResumo.Close;
  {
  qryEventoCalc.Close;
  cdsSUOTotEvento.Close;
  cdsTotEventoMes.Close;
  cdsGPS.Close;
  cdsHistFinancServidor.Close;
  cdsTotEventosGeral.Close;
  }
end;

Procedure TdmRelFinanceiros.RelFaturaCalc(sAnoMes, sBairro, sMultiLograd,
  sUnidConsum: String; lVisualizar: Boolean);
Var
  mem1: TMemo;
  iConta,
  iTam,
  iTemp,
  iTemp2,
  iUnidConsumIni,
  iUnidConsumFim: Integer;
  sTextTemp: string;
  sDistrito: string;
begin

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL1.Value := 'RELAÇÃO DE FATURAS CALCULADAS P/ LOGRADOURO';

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  cdsConfigOrgaoTIT_REL2.Value := 'DISTRITO: '+Trim(sDistrito)+' - ['+
     Pesquisa('DISTRITO','ID',sDistrito,'DESCRICAO','')+'] - '+
     'BAIRRO: '+Trim(sBairro)+' - ['+
     Pesquisa('BAIRRO','ID',sBairro,'DESCRICAO','')+']';
  cdsConfigOrgaoTIT_REL3.Value := 'REFERENTE AO MÊS/ANO: '+
     DescrMesAno(sAnoMes);

  sDistrito := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  cdsConfigOrgao.Post;

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);
  pv_lGeraTabEventos := False;
  pv_sAnoMes := sAnoMes;

  iUnidConsumIni := 1;
  iUnidConsumFim := 9999999;
  if sUnidConsum <> '0' then
  begin
     iUnidConsumIni := StrToInt(sUnidConsum);
     iUnidConsumFim := iUnidConsumIni;
  end;

  cdsFaturaMensal.Close;
  qryFaturaMensal.ParamByName('pAnoMes').Value   := sAnoMes;
  qryFaturaMensal.ParamByName('pDistrito').AsString:= Trim(sDistrito);
  qryFaturaMensal.ParamByName('pBairro').AsString:= Trim(sBairro);
  qryFaturaMensal.ParamByName('pMultiLograd').AsString := sMultiLograd;
  qryFaturaMensal.ParamByName('pUnidConsumIni').Value:= iUnidConsumIni;
  qryFaturaMensal.ParamByName('pUnidConsumFim').Value:= iUnidConsumFim;
  qryFaturaMensal.ParamByName('pSomenteAbertas').Value:= 'N';
  cdsFaturaMensal.Open;

  if cdsFaturaMensal.RecordCount = 0 then
  begin
     Mensagem('Não há Unid. Consumidora(s) p/ imprimir Fatura(s) ...',
        'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
     exit;
  end;

  frxReport1.LoadFromFile(pv_sPathRel+'FaturaMensalCalculada.fr3');

  Screen.Cursor := crDefault;

  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;

Procedure TdmRelFinanceiros.RelHistoricoFatCalcUC(iUC: Integer; sAnoMesIni, sOpcao: string;
  lVisualizar: Boolean);
Begin
  Screen.Cursor := crHourGlass;

  cdsConfigOrgao.Edit;
  if sOpcao = '0' then
     cdsConfigOrgaoTIT_REL1.Value := 'HISTÓRICO DE FATURAS CALCULADAS DA UNIDADE CONSUMIDORA'
  else
     cdsConfigOrgaoTIT_REL1.Value := 'DÉBITO DA UNIDADE CONSUMIDORA';
  cdsConfigOrgao.Post;

  qryUC_Hist.Close;
  qryUC_Hist.Params[0].Value := iUC;
  qryUC_Hist.Open;

  if Trim(sAnoMesIni) = '' then
     sAnoMesIni := '011985';

  cdsHistFatura.Filtered := False;
  cdsHistFatura.Close;
  qryHistFatura.ParamByName('pUnidConsum').Value := iUC;
  qryHistFatura.ParamByName('pAnoMesIni').Value := sAnoMesIni;
  qryHistFatura.ParamByName('pDataHoje').Value := Date;
  cdsHistFatura.Open;

  if sOpcao = '1' then // somente o débito
  begin
     cdsHistFatura.Filter := 'R_SITUACAO = '+QuotedStr('1');
     cdsHistFatura.Filtered := True;
  end;

  Screen.Cursor := crDefault;

  frxReport1.LoadFromFile(pv_sPathRel+'HistoricoFaturaCalculada.fr3');
  frxReport1.ShowReport();

end;

Procedure TdmRelFinanceiros.RelDecAnualQuitacaoUC(iUC: Integer; sBairro, sAno: string;
  sMultiLograd: WideString; lVisualizar: Boolean);
Var
  sDistrito: string[3];
  iUC_Ini,
  iUC_fim: Integer;
  sTextSQL: string;
Begin

  Screen.Cursor := crHourGlass;

  sMultiLograd := AjustaTextoParamVarios(sMultiLograd);

  iUC_Ini := 13;
  iUC_fim := 9999999;
  if iUC > 0 then
  begin
     sBairro     := Pesquisa('UNID_CONSUMIDORA','ID',IntToStr(iUC),'ENDER_ID_BAIRRO','');
     sMultiLograd:= ';'+Pesquisa('UNID_CONSUMIDORA','ID',IntToStr(iUC),'ENDER_ID_LOGRAD','')+';';
     iUC_Ini     := iUC;
     iUC_fim     := iUC;
  end;

  sDistrito    := Pesquisa('BAIRRO','ID',sBairro,'ID_DISTRITO','');

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTIT_REL2.Value := '01/02/'+sAno+' a '+'31/01/'+(IntToStr(StrToInt(sAno)+1));
  cdsConfigOrgaoTIT_REL3.Value := Trim(cdsConfigOrgaoENDER_CIDADE.Value)+'-'+
    Trim(cdsConfigOrgaoENDER_UF.Value)+', '+DataExtenso(DateToStr(Date));
  cdsConfigOrgao.Post;

  cdsDecAnualQuitaUC.Close;
  cdsDecAnualQuitaUC.IndexFieldNames := 'ender_id_distrito2;ender_id_bairro2;ender_id_lograd2;ender_uc_num_letra2';
  qryDecAnualQuitaUC.ParamByName('Ano').Value        := sAno;
  qryDecAnualQuitaUC.ParamByName('Bairro').Value     := StrToInt(sBairro);
  qryDecAnualQuitaUC.ParamByName('Distrito').Value   := StrToInt(sDistrito);
  qryDecAnualQuitaUC.ParamByName('MultiLograd').Value:= sMultiLograd;
  qryDecAnualQuitaUC.ParamByName('UC_Ini').Value     := iUC_Ini;
  qryDecAnualQuitaUC.ParamByName('UC_Fim').Value     := iUC_fim;
  cdsDecAnualQuitaUC.Open;

  Screen.Cursor := crDefault;

  frxReport1.LoadFromFile(pv_sPathRel+'DecAnualQuitacaoUC.fr3');
  frxReport1.ShowReport();

  cdsDecAnualQuitaUC.Close;

end;

end.


