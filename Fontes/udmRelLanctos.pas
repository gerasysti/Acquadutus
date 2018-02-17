unit udmRelLanctos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels, StrUtils,
  FMTBcd, DB, frxClass, frxDBSet, SqlExpr, Provider, frxDesgn, DBClient,
  frxExportPDF, frxExportRTF, frxExportXML;

type
  TdmRelLanctos = class(TDataModule)
    frxReport1: TfrxReport;
    qryCgaHorProfLancto: TSQLQuery;
    provCgaHorProfLancto: TDataSetProvider;
    cdsCgaHorProfLancto: TClientDataSet;
    frxCgaHorProfLancto: TfrxDBDataset;
    qryConfigOrgao: TSQLQuery;
    qryConfigOrgaoRAZAO_SOCIAL: TStringField;
    qryConfigOrgaoSIGLA: TStringField;
    qryConfigOrgaoCNPJ: TStringField;
    qryConfigOrgaoTIPO_ORGAO: TIntegerField;
    qryConfigOrgaoENDER_LOGRAD: TStringField;
    qryConfigOrgaoENDER_NUM: TStringField;
    qryConfigOrgaoENDER_BAIRRO: TStringField;
    qryConfigOrgaoENDER_CIDADE: TStringField;
    qryConfigOrgaoENDER_CEP: TStringField;
    qryConfigOrgaoENDER_UF: TStringField;
    qryConfigOrgaoTELEFONE: TStringField;
    qryConfigOrgaoNOME_DIR_DRH: TStringField;
    qryConfigOrgaoCOD_CNAE: TIntegerField;
    qryConfigOrgaoCOD_FPAS: TIntegerField;
    qryConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField;
    qryConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField;
    qryConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField;
    qryConfigOrgaoBRASAO: TBlobField;
    qryConfigOrgaoDESCR_TIPO_ORGAO: TStringField;
    qryConfigOrgaoLOGO_ADMIN: TBlobField;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoSIGLA: TStringField;
    cdsConfigOrgaoCNPJ: TStringField;
    cdsConfigOrgaoTIPO_ORGAO: TIntegerField;
    cdsConfigOrgaoENDER_LOGRAD: TStringField;
    cdsConfigOrgaoENDER_NUM: TStringField;
    cdsConfigOrgaoENDER_BAIRRO: TStringField;
    cdsConfigOrgaoENDER_CIDADE: TStringField;
    cdsConfigOrgaoENDER_CEP: TStringField;
    cdsConfigOrgaoENDER_UF: TStringField;
    cdsConfigOrgaoTELEFONE: TStringField;
    cdsConfigOrgaoNOME_DIR_DRH: TStringField;
    cdsConfigOrgaoCOD_CNAE: TIntegerField;
    cdsConfigOrgaoCOD_FPAS: TIntegerField;
    cdsConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField;
    cdsConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField;
    cdsConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField;
    cdsConfigOrgaoBRASAO: TBlobField;
    cdsConfigOrgaoLOGO_ADMIN: TBlobField;
    cdsConfigOrgaoDESCR_TIPO_ORGAO: TStringField;
    cdsConfigOrgaoNOME_SYS: TStringField;
    cdsConfigOrgaoTITULO_REL1: TWideStringField;
    cdsConfigOrgaoTITULO_REL2: TWideStringField;
    frxConfigOrgao: TfrxDBDataset;
    qryCgaHorProfLancto2: TSQLQuery;
    provCgaHorProfLancto2: TDataSetProvider;
    cdsCgaHorProfLancto2: TClientDataSet;
    frxCgaHorProfLancto2: TfrxDBDataset;
    frxLanctoEvento: TfrxDBDataset;
    qryLanctoEvento: TSQLQuery;
    provLanctoEvento: TDataSetProvider;
    cdsLanctoEvento: TClientDataSet;
    qryCgaHorProfLanctoANO_MES: TStringField;
    qryCgaHorProfLanctoID_SERVIDOR: TIntegerField;
    qryCgaHorProfLanctoID_UNID_LOTACAO: TIntegerField;
    qryCgaHorProfLanctoQTD_H_AULA_NORMAL: TIntegerField;
    qryCgaHorProfLanctoQTD_H_AULA_SUBSTIT: TIntegerField;
    qryCgaHorProfLanctoQTD_H_AULA_OUTRA1: TIntegerField;
    qryCgaHorProfLanctoQTD_FALTA: TIntegerField;
    qryCgaHorProfLanctoOBSERVACAO: TStringField;
    qryCgaHorProfLanctoNOME_SERVIDOR: TStringField;
    qryCgaHorProfLanctoID_SUB_UNID_ORCAM: TIntegerField;
    qryCgaHorProfLanctoDESCR_SUB_UNID_ORCAM: TStringField;
    qryCgaHorProfLanctoID_CARGO: TIntegerField;
    qryCgaHorProfLanctoDESCR_CARGO: TStringField;
    qryCgaHorProfLanctoDESCR_UNID_LOTACAO: TStringField;
    qryCgaHorProfLanctoID_UNID_GESTORA: TIntegerField;
    qryCgaHorProfLanctoEFETIVO: TStringField;
    qryCgaHorProfLanctoDESCR_EFETIVO: TStringField;
    qryCgaHorProfLanctoID_EST_FUNCIONAL: TIntegerField;
    qryCgaHorProfLanctoDESCR_EST_FUNCIONAL: TStringField;
    qryCgaHorProfLanctoDT_ADMISSAO: TDateField;
    qryCgaHorProfLanctoDESCR_SUB_UNID_ORCAM2: TStringField;
    qryCgaHorProfLanctoID_SITUACAO_TCM: TIntegerField;
    cdsCgaHorProfLanctoANO_MES: TStringField;
    cdsCgaHorProfLanctoID_SERVIDOR: TIntegerField;
    cdsCgaHorProfLanctoID_UNID_LOTACAO: TIntegerField;
    cdsCgaHorProfLanctoQTD_H_AULA_NORMAL: TIntegerField;
    cdsCgaHorProfLanctoQTD_H_AULA_SUBSTIT: TIntegerField;
    cdsCgaHorProfLanctoQTD_H_AULA_OUTRA1: TIntegerField;
    cdsCgaHorProfLanctoQTD_FALTA: TIntegerField;
    cdsCgaHorProfLanctoOBSERVACAO: TStringField;
    cdsCgaHorProfLanctoNOME_SERVIDOR: TStringField;
    cdsCgaHorProfLanctoID_SUB_UNID_ORCAM: TIntegerField;
    cdsCgaHorProfLanctoDESCR_SUB_UNID_ORCAM: TStringField;
    cdsCgaHorProfLanctoID_CARGO: TIntegerField;
    cdsCgaHorProfLanctoDESCR_CARGO: TStringField;
    cdsCgaHorProfLanctoDESCR_UNID_LOTACAO: TStringField;
    cdsCgaHorProfLanctoID_UNID_GESTORA: TIntegerField;
    cdsCgaHorProfLanctoEFETIVO: TStringField;
    cdsCgaHorProfLanctoDESCR_EFETIVO: TStringField;
    cdsCgaHorProfLanctoID_EST_FUNCIONAL: TIntegerField;
    cdsCgaHorProfLanctoDESCR_EST_FUNCIONAL: TStringField;
    cdsCgaHorProfLanctoDT_ADMISSAO: TDateField;
    cdsCgaHorProfLanctoDESCR_SUB_UNID_ORCAM2: TStringField;
    cdsCgaHorProfLanctoID_SITUACAO_TCM: TIntegerField;
    qryCgaHorProfLanctoID_SERVID_FTDO: TStringField;
    cdsCgaHorProfLanctoID_SERVID_FTDO: TStringField;
    qryCgaHorProfLancto2ANO_MES: TStringField;
    qryCgaHorProfLancto2ID_SERVIDOR: TIntegerField;
    qryCgaHorProfLancto2ID_UNID_LOTACAO: TIntegerField;
    qryCgaHorProfLancto2QTD_H_AULA_NORMAL: TIntegerField;
    qryCgaHorProfLancto2QTD_H_AULA_SUBSTIT: TIntegerField;
    qryCgaHorProfLancto2QTD_H_AULA_OUTRA1: TIntegerField;
    qryCgaHorProfLancto2QTD_FALTA: TIntegerField;
    qryCgaHorProfLancto2OBSERVACAO: TStringField;
    qryCgaHorProfLancto2NOME_SERVIDOR: TStringField;
    qryCgaHorProfLancto2ID_SUB_UNID_ORCAM: TIntegerField;
    qryCgaHorProfLancto2DESCR_SUB_UNID_ORCAM: TStringField;
    qryCgaHorProfLancto2ID_CARGO: TIntegerField;
    qryCgaHorProfLancto2DESCR_CARGO: TStringField;
    qryCgaHorProfLancto2DESCR_UNID_LOTACAO: TStringField;
    qryCgaHorProfLancto2ID_UNID_GESTORA: TIntegerField;
    qryCgaHorProfLancto2EFETIVO: TStringField;
    qryCgaHorProfLancto2DESCR_EFETIVO: TStringField;
    qryCgaHorProfLancto2ID_EST_FUNCIONAL: TIntegerField;
    qryCgaHorProfLancto2DESCR_EST_FUNCIONAL: TStringField;
    qryCgaHorProfLancto2DT_ADMISSAO: TDateField;
    qryCgaHorProfLancto2DESCR_SUB_UNID_ORCAM2: TStringField;
    qryCgaHorProfLancto2ID_SERVID_FTDO: TStringField;
    qryCgaHorProfLancto2ID_SITUACAO_TCM: TIntegerField;
    cdsCgaHorProfLancto2ANO_MES: TStringField;
    cdsCgaHorProfLancto2ID_SERVIDOR: TIntegerField;
    cdsCgaHorProfLancto2ID_UNID_LOTACAO: TIntegerField;
    cdsCgaHorProfLancto2QTD_H_AULA_NORMAL: TIntegerField;
    cdsCgaHorProfLancto2QTD_H_AULA_SUBSTIT: TIntegerField;
    cdsCgaHorProfLancto2QTD_H_AULA_OUTRA1: TIntegerField;
    cdsCgaHorProfLancto2QTD_FALTA: TIntegerField;
    cdsCgaHorProfLancto2OBSERVACAO: TStringField;
    cdsCgaHorProfLancto2NOME_SERVIDOR: TStringField;
    cdsCgaHorProfLancto2ID_SUB_UNID_ORCAM: TIntegerField;
    cdsCgaHorProfLancto2DESCR_SUB_UNID_ORCAM: TStringField;
    cdsCgaHorProfLancto2ID_CARGO: TIntegerField;
    cdsCgaHorProfLancto2DESCR_CARGO: TStringField;
    cdsCgaHorProfLancto2DESCR_UNID_LOTACAO: TStringField;
    cdsCgaHorProfLancto2ID_UNID_GESTORA: TIntegerField;
    cdsCgaHorProfLancto2EFETIVO: TStringField;
    cdsCgaHorProfLancto2DESCR_EFETIVO: TStringField;
    cdsCgaHorProfLancto2ID_EST_FUNCIONAL: TIntegerField;
    cdsCgaHorProfLancto2DESCR_EST_FUNCIONAL: TStringField;
    cdsCgaHorProfLancto2DT_ADMISSAO: TDateField;
    cdsCgaHorProfLancto2DESCR_SUB_UNID_ORCAM2: TStringField;
    cdsCgaHorProfLancto2ID_SERVID_FTDO: TStringField;
    cdsCgaHorProfLancto2ID_SITUACAO_TCM: TIntegerField;
    frxDesigner1: TfrxDesigner;
    qryLanctoEventoR_ID_SERVIDOR: TIntegerField;
    qryLanctoEventoR_ID_SERVID_FTOD: TStringField;
    qryLanctoEventoR_NOME_SERVIDOR: TStringField;
    qryLanctoEventoR_DT_ADMISSAO: TDateField;
    qryLanctoEventoR_ID_CARGO: TIntegerField;
    qryLanctoEventoR_DESCR_CARGO: TStringField;
    qryLanctoEventoR_TIPO_SALARIO: TStringField;
    qryLanctoEventoR_EFETIVO: TStringField;
    qryLanctoEventoR_ID_SITUAC_TCM: TIntegerField;
    qryLanctoEventoR_ID_SUB_UNID_ORCAMENT: TIntegerField;
    qryLanctoEventoR_DESCR_SUB_UNID_ORCAM: TStringField;
    qryLanctoEventoR_ID_EST_FUNCIONAL: TIntegerField;
    qryLanctoEventoR_DESCR_EST_FUNCIONAL: TStringField;
    qryLanctoEventoR_ID_EVENTO: TIntegerField;
    qryLanctoEventoR_DESCR_EVENTO: TStringField;
    qryLanctoEventoR_TIPO_EVENTO: TStringField;
    qryLanctoEventoR_COD_EVENTO: TStringField;
    qryLanctoEventoR_ID_CATEG_EVENTO: TIntegerField;
    qryLanctoEventoR_QTD: TFMTBCDField;
    qryLanctoEventoR_VALOR: TFMTBCDField;
    qryLanctoEventoR_OBSERVACAO: TStringField;
    qryLanctoEventoR_ORIGEM_LANCTO: TStringField;
    cdsLanctoEventoR_ID_SERVIDOR: TIntegerField;
    cdsLanctoEventoR_ID_SERVID_FTOD: TStringField;
    cdsLanctoEventoR_NOME_SERVIDOR: TStringField;
    cdsLanctoEventoR_DT_ADMISSAO: TDateField;
    cdsLanctoEventoR_ID_CARGO: TIntegerField;
    cdsLanctoEventoR_DESCR_CARGO: TStringField;
    cdsLanctoEventoR_TIPO_SALARIO: TStringField;
    cdsLanctoEventoR_EFETIVO: TStringField;
    cdsLanctoEventoR_ID_SITUAC_TCM: TIntegerField;
    cdsLanctoEventoR_ID_SUB_UNID_ORCAMENT: TIntegerField;
    cdsLanctoEventoR_DESCR_SUB_UNID_ORCAM: TStringField;
    cdsLanctoEventoR_ID_EST_FUNCIONAL: TIntegerField;
    cdsLanctoEventoR_DESCR_EST_FUNCIONAL: TStringField;
    cdsLanctoEventoR_ID_EVENTO: TIntegerField;
    cdsLanctoEventoR_DESCR_EVENTO: TStringField;
    cdsLanctoEventoR_TIPO_EVENTO: TStringField;
    cdsLanctoEventoR_COD_EVENTO: TStringField;
    cdsLanctoEventoR_ID_CATEG_EVENTO: TIntegerField;
    cdsLanctoEventoR_QTD: TFMTBCDField;
    cdsLanctoEventoR_VALOR: TFMTBCDField;
    cdsLanctoEventoR_OBSERVACAO: TStringField;
    cdsLanctoEventoR_ORIGEM_LANCTO: TStringField;
    frxPDFExport1: TfrxPDFExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsServidor2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    pv_lGeraTabEventos: Boolean;
    pv_sPathRel : String;
    pv_sEventos : WideString;
    procedure CloseTabsBeforeProcess;
  public
    { Public declarations }
    procedure RelEventosPorServidor(sEventos,sSubUnidOrcams,sCargos,
       sVinculo,sOrigem: String; lVisualizar: Boolean);
    procedure RelLanctoCargaHorProf(iUnidGestora: Integer; sSubUnidOrcams,
      sUnidsLotacao, sCargos, sVinculo: String; lVisualizar: Boolean);
    procedure RelLanctoCargaHorProf2(sUnidsLotacao, sCargos, sVinculo: String;
       lVisualizar: Boolean);
  end;

var
  dmRelLanctos: TdmRelLanctos;

implementation

uses VarGlobais, udmPrincipal, uTeste, gsLib, UtilsDb;

{$R *.dfm}

procedure TdmRelLanctos.DataModuleCreate(Sender: TObject);
begin

  CloseTabsBeforeProcess;
  pv_lGeraTabEventos := False;

  pv_sPathRel := GetPathRel();

  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoNOME_SYS.Value:= glb_sSistema+' - Ver. '+glb_sVersao;
  cdsConfigOrgao.Post;
end;

procedure TdmRelLanctos.DataModuleDestroy(Sender: TObject);
begin
  cdsConfigOrgao.Close;
  cdsCgaHorProfLancto.Close;
  cdsCgaHorProfLancto2.Close;
  cdsLanctoEvento.Close;
end;

procedure TdmRelLanctos.RelLanctoCargaHorProf(iUnidGestora: Integer;
  sSubUnidOrcams,sUnidsLotacao,sCargos,sVinculo: String; lVisualizar: Boolean);
begin

  sSubUnidOrcams := AjustaTextoParamVarios(sSubUnidOrcams);
  sUnidsLotacao  := AjustaTextoParamVarios(sUnidsLotacao);
  sCargos        := AjustaTextoParamVarios(sCargos);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL.Value := Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoTITULO_REL1.Value:= 'LANÇTO DA CARGA/HORÁRIA DOS PROFESSORES '+
     'POR SUB-UNID. ORÇAMENTÁRIA'+' - REF. : '+glb_sDescrMesAnoTrab;
  cdsConfigOrgaoTITULO_REL2.Value:= 'UNID. GESTORA: '+
     Pesquisa('UNID_GESTORA','ID',IntToStr(iUnidGestora),'DESCRICAO','');
  cdsConfigOrgao.Post;

  cdsCgaHorProfLancto.Close;
  qryCgaHorProfLancto.ParamByName('pe_Ano_Mes').Value            := glb_sAnoMesTrab;
  qryCgaHorProfLancto.ParamByName('pe_Unid_Gestora').Value       := iUnidGestora;
  qryCgaHorProfLancto.ParamByName('pe_multi_s_u_o').Value  := sSubUnidOrcams;
  qryCgaHorProfLancto.ParamByName('pe_multi_unid_lotac').Value   := sUnidsLotacao;
  qryCgaHorProfLancto.ParamByName('pe_multi_unid_lotac2').Value  := sUnidsLotacao;
  qryCgaHorProfLancto.ParamByName('pe_multi_cargo').Value        := sCargos;
  qryCgaHorProfLancto.ParamByName('pe_multi_cargo2').Value       := sCargos;
  qryCgaHorProfLancto.ParamByName('pe_situac_tcm_ini').Value     := 1;
  qryCgaHorProfLancto.ParamByName('pe_situac_tcm_fim').Value     := 99;
  if sVinculo <> '0' then
  begin
     if sVinculo = '1' then // efetivos
     begin
        qryCgaHorProfLancto.ParamByName('pe_situac_tcm_ini').Value  := 20;
        qryCgaHorProfLancto.ParamByName('pe_situac_tcm_fim').Value  := 20;
     end else
     if sVinculo = '1' then // comissionados
     begin
        qryCgaHorProfLancto.ParamByName('pe_situac_tcm_ini').Value  := 10;
        qryCgaHorProfLancto.ParamByName('pe_situac_tcm_fim').Value  := 10;
     end else
     begin
        qryCgaHorProfLancto.ParamByName('pe_situac_tcm_ini').Value  := 61;
        qryCgaHorProfLancto.ParamByName('pe_situac_tcm_fim').Value  := 62;
     end;
  end;
  cdsCgaHorProfLancto.Open;

  pv_lGeraTabEventos := True;

  frxReport1.LoadFromFile(pv_sPathRel+'LanctoCargaHorProf1.fr3');
  Screen.Cursor := crDefault;

  frxReport1.PrepareReport(True);
  if lVisualizar then
     frxReport1.ShowReport()
  else
     frxReport1.Print;

end;

procedure TdmRelLanctos.RelLanctoCargaHorProf2(sUnidsLotacao,sCargos,
  sVinculo: String; lVisualizar: Boolean);
begin

  sUnidsLotacao := AjustaTextoParamVarios(sUnidsLotacao);
  sCargos       := AjustaTextoParamVarios(sCargos);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL.Value := Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoTITULO_REL1.Value:= 'LANÇTO DA CARGA/HORÁRIA DOS PROFESSORES POR ESCOLA';
  cdsConfigOrgaoTITULO_REL2.Value:= 'REF. : '+glb_sDescrMesAnoTrab;
  cdsConfigOrgao.Post;

  cdsCgaHorProfLancto2.Close;
  //qryCgaHorProfLancto2.Params.Clear;
  qryCgaHorProfLancto2.ParamByName('pe_Ano_Mes').Value         := glb_sAnoMesTrab;
  qryCgaHorProfLancto2.ParamByName('pe_multi_unid_lotac').Value:= sUnidsLotacao;
  qryCgaHorProfLancto2.ParamByName('pe_multi_s_u_o').Value     := '0';
  qryCgaHorProfLancto2.ParamByName('pe_multi_s_u_o2').Value    := '0';
  qryCgaHorProfLancto2.ParamByName('pe_multi_Cargo').Value     := sCargos;
  qryCgaHorProfLancto2.ParamByName('pe_multi_cargo2').Value    := sCargos;
  qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_ini').Value  := 1;
  qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_fim').Value  := 99;
  if sVinculo <> '0' then
  begin
     if sVinculo = '1' then // efetivos
     begin
        qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_ini').Value  := 20;
        qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_fim').Value  := 20;
     end else
     if sVinculo = '1' then // comissionados
     begin
        qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_ini').Value  := 10;
        qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_fim').Value  := 10;
     end else
     begin
        qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_ini').Value  := 61;
        qryCgaHorProfLancto2.ParamByName('pe_situac_tcm_fim').Value  := 62;
     end;
  end;

  cdsCgaHorProfLancto2.IndexFieldNames := 'DESCR_UNID_LOTACAO;NOME_SERVIDOR;'+
     'ID_SERVIDOR';
  try
     try
        cdsCgaHorProfLancto2.Open;
        pv_lGeraTabEventos := True;

        frxReport1.LoadFromFile(pv_sPathRel+'LanctoCargaHorProf2.fr3');
        Screen.Cursor := crDefault;
        frxReport1.PrepareReport(True);
        if lVisualizar then
           frxReport1.ShowReport()
        else
           frxReport1.Print;
     except
        Mensagem('NÃO foi possível Exibir/Imprimir o Relatório ...',
           'E r r o !!!',MB_OK+MB_ICONERROR);
     end;
  finally
     cdsCgaHorProfLancto.Close;
  end;

end;

procedure TdmRelLanctos.RelEventosPorServidor(sEventos,sSubUnidOrcams,sCargos,
   sVinculo,sOrigem: String; lVisualizar: Boolean);
begin

  sEventos      := AjustaTextoParamVarios(sEventos);
  sSubUnidOrcams:= AjustaTextoParamVarios(sSubUnidOrcams);
  sCargos       := AjustaTextoParamVarios(sCargos);

  pv_sEventos := sEventos;

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL.Value := Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoTITULO_REL1.Value:= 'E V E N T O S   L A N Ç A D O S  ( P /   O R Í G E M )';
  cdsConfigOrgaoTITULO_REL2.Value:= 'REF. : '+glb_sDescrMesAnoTrab+
                                    ' - PARCELA: '+glb_sDescrParcela;
  cdsConfigOrgao.Post;

  cdsLanctoEvento.Close;
  qryLanctoEvento.ParamByName('pAnoMes').Value     := glb_sAnoMesTrab;
  qryLanctoEvento.ParamByName('pParcela').Value    := glb_sParcela;
  qryLanctoEvento.ParamByName('pMultiEvento').Value:= sEventos;
  qryLanctoEvento.ParamByName('pOpcao').Value      := sOrigem;
  qryLanctoEvento.ParamByName('pMultiSUO').Value   := sSubUnidOrcams;
  qryLanctoEvento.ParamByName('pMultiCargo').Value := sCargos;
  qryLanctoEvento.ParamByName('pVinculo').Value    := sVinculo;
  cdsLanctoEvento.Open;

  pv_lGeraTabEventos := True;

  frxReport1.LoadFromFile(pv_sPathRel+'EventosPorServidor.fr3');
  Screen.Cursor := crDefault;

  frxReport1.PrepareReport(True);
  if lVisualizar then
     frxReport1.ShowReport()
  else
     frxReport1.Print;

end;

procedure TdmRelLanctos.cdsServidor2AfterScroll(DataSet: TDataSet);
begin

{
  if not pv_lGeraTabEventos then exit;

  if mTbLanctoEvento.RecordCount > 0 then
     mTbLanctoEvento.EmptyDataSet;

  cdsLanctoEventoM.Close;
  qryLanctoEventoM.ParamByName('pAno_Mes').Value := glb_sAnoMesTrab;
  qryLanctoEventoM.ParamByName('pParcela').Value := glb_sParcela;
  qryLanctoEventoM.ParamByName('pid_servidor').Value := cdsServidor2ID_SERVIDOR.Value;
  qryLanctoEventoM.ParamByName('pTextEventos').Value := pv_sEventos;
  qryLanctoEventoM.ParamByName('pTextEventos2').Value:= pv_sEventos;
  cdsLanctoEventoM.Open;
  while not cdsLanctoEventoM.eof  do
  begin
     mTbLanctoEvento.Append;
     mTbLanctoEventoId.Value              := mTbLanctoEvento.RecordCount+1;
     mTbLanctoEventoCodEventoM.Value      := cdsLanctoEventoMCOD_EVENTO.Value;
     mTbLanctoEventoDescrEventoM.Value    := cdsLanctoEventoMDESCR_EVENTO.Value;
     mTbLanctoEventoObservEventoM.Value   := cdsLanctoEventoMOBSERVACAO.Value;
     mTbLanctoEventoTipoEventoM.Value     := cdsLanctoEventoMTIPO_EVENTO.Value;
     mTbLanctoEventoQtdEventoM.Value      := cdsLanctoEventoMQTD.AsCurrency;
     mTbLanctoEventoValorEventoM.Value    := cdsLanctoEventoMVALOR.AsCurrency;
     mTbLanctoEventoParticipaEventoM.Value:= cdsLanctoEventoMPARTICIPA.Value;
     mTbLanctoEvento.Post;
     cdsLanctoEventoM.Next;
  end;

  cdsLanctoEventoF.Close;
  qryLanctoEventoF.ParamByName('pid_servidor').Value := cdsServidor2ID_SERVIDOR.Value;
  qryLanctoEventoF.ParamByName('pTextEventos').Value := pv_sEventos;
  qryLanctoEventoF.ParamByName('pTextEventos2').Value:= pv_sEventos;
  cdsLanctoEventoF.Open;
  mTbLanctoEvento.First;
  while not cdsLanctoEventoF.eof  do
  begin
     if mTbLanctoEvento.Eof then
     begin
        mTbLanctoEvento.Append;
        mTbLanctoEventoId.Value := mTbLanctoEvento.RecordCount+1;
     end else
        mTbLanctoEvento.Edit;
     mTbLanctoEventoCodEventoF.Value        := cdsLanctoEventoFCOD_EVENTO.Value;
     mTbLanctoEventoDescrEventoF.Value      := cdsLanctoEventoFDESCR_EVENTO.Value;
     mTbLanctoEventoObservEventoF.Value     := cdsLanctoEventoFOBSERVACAO.Value;
     mTbLanctoEventoTipoEventoF.Value       := cdsLanctoEventoFTIPO_EVENTO.Value;
     mTbLanctoEventoQtdEventoF.Value        := cdsLanctoEventoFQTD.AsCurrency;
     mTbLanctoEventoValorEventoF.Value      := cdsLanctoEventoFVALOR.AsCurrency;
     mTbLanctoEventoIniValidadeEventoF.Value:= cdsLanctoEventoFINI_VALIDADE.Value;
     mTbLanctoEventoFimValidadeEventoF.Value:= cdsLanctoEventoFFIM_VALIDADE.Value;
     mTbLanctoEventoParticipaEventoF.Value  := cdsLanctoEventoFPARTICIPA.Value;
     mTbLanctoEventoDecTercEventoF.Value    := cdsLanctoEventoFCALC_DEC_TERC.Value;
     mTbLanctoEvento.Post;
     mTbLanctoEvento.Next;
     cdsLanctoEventoF.Next;
  end;

  cdsLanctoEventoM.Close;
  cdsLanctoEventoF.Close;
}
end;

procedure TdmRelLanctos.CloseTabsBeforeProcess;
begin
   cdsConfigOrgao.Close;
   cdsCgaHorProfLancto.Close;
   cdsCgaHorProfLancto2.Close;
   cdsLanctoEvento.Close;
end;

end.

