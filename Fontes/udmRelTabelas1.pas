unit udmRelTabelas1;

interface

uses
  SysUtils, Classes, WideStrings, DBXFirebird, DB, SqlExpr,
  Messages, Variants, Graphics, Controls, Forms, Dialogs,
  cxClasses, cxStyles, cxGridTableView, cxContainer, cxEdit,
  FMTBcd, DBClient, Provider, frxClass, frxDBSet,
  frxExportRTF, frxExportXML, frxExportXLS, frxExportPDF, frxDesgn;

type
  TdmRelTabelas1 = class(TDataModule)
    frxReport1: TfrxReport;
    frxSubUnidOrcam: TfrxDBDataset;
    qrySubUnidOrcam: TSQLQuery;
    provSubUnidOrcam: TDataSetProvider;
    cdsSubUnidOrcam: TClientDataSet;
    cdsSubUnidOrcamID: TIntegerField;
    cdsSubUnidOrcamDESCRICAO: TStringField;
    cdsSubUnidOrcamABREVIACAO: TStringField;
    cdsSubUnidOrcamID_UNID_ORCAMENT: TIntegerField;
    cdsSubUnidOrcamDESCR_UNID_ORCAMENT: TStringField;
    cdsSubUnidOrcamID_SETOR: TIntegerField;
    cdsSubUnidOrcamDESCR_SETOR: TStringField;
    cdsSubUnidOrcamCOD_ORGAO_BANCO: TStringField;
    cdsSubUnidOrcamID_EVENTO_BASE: TIntegerField;
    cdsSubUnidOrcamCALC_ATS: TStringField;
    cdsSubUnidOrcamCALC_SAL_FAMILIA: TStringField;
    cdsSubUnidOrcamDESC_IRRF: TStringField;
    cdsSubUnidOrcamPAGA_RESCISAO: TStringField;
    cdsSubUnidOrcamINATIVOS: TStringField;
    cdsSubUnidOrcamGERA_RAIS: TStringField;
    cdsSubUnidOrcamEM_USO: TStringField;
    cdsSubUnidOrcamCOD_CONTAB_UNID_ORCAM: TStringField;
    qryConfigOrgao: TSQLQuery;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    frxConfigOrgao: TfrxDBDataset;
    frxCargoFuncao: TfrxDBDataset;
    qryCargoFuncao: TSQLQuery;
    provCargoFuncao: TDataSetProvider;
    cdsCargoFuncao: TClientDataSet;
    frxEvento: TfrxDBDataset;
    qryEvento: TSQLQuery;
    provEvento: TDataSetProvider;
    cdsEvento: TClientDataSet;
    cdsEventoID: TIntegerField;
    cdsEventoDESCRICAO: TStringField;
    cdsEventoCODIGO: TStringField;
    cdsEventoTIPO: TStringField;
    cdsEventoFORMA_CALC: TStringField;
    cdsEventoID_CATEG: TIntegerField;
    cdsEventoID_CATEG_TCM: TIntegerField;
    cdsEventoPERCENT_HORA_EXTRA: TFMTBCDField;
    cdsEventoHE_SOBRE_HORA_NORMAL: TStringField;
    cdsEventoTIPO_BASE_CALC: TStringField;
    cdsEventoINCIDE_SAL_FAMILIA: TStringField;
    cdsEventoINCIDE_ATS: TStringField;
    cdsEventoINCIDE_FERIAS: TStringField;
    cdsEventoINCIDE_DEC_TERC: TStringField;
    cdsEventoINCIDE_FALTA: TStringField;
    cdsEventoINCIDE_PREVID: TStringField;
    cdsEventoINCIDE_IRRF: TStringField;
    cdsEventoINCIDE_OUTRA_BC1: TStringField;
    cdsEventoINCIDE_OUTRA_BC2: TStringField;
    cdsEventoINCIDE_OUTRA_BC3: TStringField;
    cdsEventoVALOR_FIXO: TFMTBCDField;
    cdsEventoDIVISOR: TFMTBCDField;
    cdsEventoSUBDIVISOR: TFMTBCDField;
    cdsEventoGERA_RAIS: TStringField;
    cdsEventoCOPIA_MES_ANTERIOR: TStringField;
    cdsEventoDESCR_CATEGORIA: TStringField;
    cdsEventoDESCR_FORMA_CALC: TStringField;
    cdsEventoDESCR_BASE_CALC: TStringField;
    cdsEventoDESCR_CATEG_TCM: TStringField;
    frxEstrutOrganiz: TfrxDBDataset;
    qryEstrutOrganiz: TSQLQuery;
    provEstrutOrganiz: TDataSetProvider;
    cdsEstrutOrganiz: TClientDataSet;
    cdsEstrutOrganizID: TIntegerField;
    cdsEstrutOrganizDESCRICAO: TStringField;
    cdsEstrutOrganizABREVIACAO: TStringField;
    cdsEstrutOrganizTIPO_VINCULO: TStringField;
    cdsEstrutOrganizID_UNID_ORCAMENT: TIntegerField;
    cdsEstrutOrganizDESCR_UNID_ORCAMENT: TStringField;
    cdsEstrutOrganizID_SETOR: TIntegerField;
    cdsEstrutOrganizDESCR_SETOR: TStringField;
    cdsEstrutOrganizCOD_ORGAO_BANCO: TStringField;
    cdsEstrutOrganizID_EVENTO_BASE: TIntegerField;
    cdsEstrutOrganizCALC_ATS: TStringField;
    cdsEstrutOrganizCALC_SAL_FAMILIA: TStringField;
    cdsEstrutOrganizDESC_IRRF: TStringField;
    cdsEstrutOrganizPAGA_RESCISAO: TStringField;
    cdsEstrutOrganizINATIVOS: TStringField;
    cdsEstrutOrganizGERA_RAIS: TStringField;
    cdsEstrutOrganizEM_USO: TStringField;
    cdsEstrutOrganizCOD_CONTAB_UNID_ORCAM: TStringField;
    cdsEstrutOrganizID_UNID_GESTORA: TIntegerField;
    cdsEstrutOrganizDESCR_TIPO_VINCULO: TStringField;
    cdsEstrutOrganizDESCR_UNID_GESTORA: TStringField;
    frxTabTarifa: TfrxDBDataset;
    qryTabTarifa: TSQLQuery;
    provTabTarifa: TDataSetProvider;
    cdsTabTarifa: TClientDataSet;
    frxTabOutraTarifa: TfrxDBDataset;
    qryTabOutraTarifa: TSQLQuery;
    provTabOutraTarifa: TDataSetProvider;
    cdsTabOutraTarifa: TClientDataSet;
    cdsEstrutOrganizCONTRIB_INDIVIDUAL: TStringField;
    cdsEstrutOrganizTETO_VENCTO_BASE: TFMTBCDField;
    cdsEstrutOrganizTETO_SALARIO: TFMTBCDField;
    cdsEstrutOrganizCOD_ORGAO_TCM_UO: TIntegerField;
    cdsEstrutOrganizCOD_ORGAO_TCM_UG: TIntegerField;
    qryUnidLotacao: TSQLQuery;
    provUnidLotacao: TDataSetProvider;
    cdsUnidLotacao: TClientDataSet;
    frxUnidLotacao: TfrxDBDataset;
    cdsUnidLotacaoID: TIntegerField;
    cdsUnidLotacaoDESCRICAO: TStringField;
    cdsUnidLotacaoID_TIPO_UNID_LOTACAO: TIntegerField;
    cdsUnidLotacaoDESCR_TIPO_UNID_LOTACAO: TStringField;
    qryDepto: TSQLQuery;
    provDepto: TDataSetProvider;
    cdsDepto: TClientDataSet;
    frxDepto: TfrxDBDataset;
    cdsDeptoID: TIntegerField;
    cdsDeptoDESCRICAO: TStringField;
    cdsCargoFuncaoID: TIntegerField;
    cdsCargoFuncaoDESCRICAO: TStringField;
    cdsCargoFuncaoID_CATEG_FUNCIONAL: TIntegerField;
    cdsCargoFuncaoID_TIPO_CARGO_TCM: TIntegerField;
    cdsCargoFuncaoVENCTO_BASE: TFMTBCDField;
    cdsCargoFuncaoTIPO_SAL: TStringField;
    cdsCargoFuncaoFORMA_CALC: TStringField;
    cdsCargoFuncaoBASE_CALC_HORA_AULA: TIntegerField;
    cdsCargoFuncaoCARGA_HOR_MENSAL: TIntegerField;
    cdsCargoFuncaoQTD_VAGA: TIntegerField;
    cdsCargoFuncaoID_ESCOLARIDADE: TIntegerField;
    cdsCargoFuncaoID_CBO: TIntegerField;
    cdsCargoFuncaoID_FAT_PROG_SAL: TIntegerField;
    cdsCargoFuncaoNUM_ATO_CRIACAO: TStringField;
    cdsCargoFuncaoDATA_ATO_CRIACAO: TDateField;
    cdsCargoFuncaoID_EVENTO_BASE: TIntegerField;
    cdsCargoFuncaoCALC_ATS: TStringField;
    cdsCargoFuncaoCALC_ATS_SOBRE_VENCTO_BASE: TStringField;
    cdsCargoFuncaoCALC_DEC_TERC: TStringField;
    cdsCargoFuncaoCALC_CONTRIB_SINDICAL: TStringField;
    cdsCargoFuncaoSITUACAO: TStringField;
    cdsCargoFuncaoDT_EXTINSAO: TDateField;
    cdsCargoFuncaoOBSERVACAO: TMemoField;
    cdsCargoFuncaoDESCR_CATEG_FUNCIONAL: TStringField;
    cdsCargoFuncaoDESCR_ESCOLARIDADE: TStringField;
    cdsCargoFuncaoDESCR_TIPO_CARGO_TCM: TStringField;
    cdsCargoFuncaoQTD_REF_PROG_SAL: TIntegerField;
    cdsCargoFuncaoDESCR_EVENTO_BASE: TStringField;
    cdsCargoFuncaoCOD_EVENTO_BASE: TStringField;
    cdsCargoFuncaoDESCR_CBO: TStringField;
    cdsCargoFuncaoCOD_CBO: TStringField;
    cdsCargoFuncaoDESCR_SITUACAO: TStringField;
    cdsCargoFuncaoDESCR_TIPO_SAL: TStringField;
    qryEstFuncional: TSQLQuery;
    provEstFuncional: TDataSetProvider;
    cdsEstFuncional: TClientDataSet;
    frxEstFuncional: TfrxDBDataset;
    qryEstFuncionalID: TIntegerField;
    qryEstFuncionalDESCRICAO: TStringField;
    qryEstFuncionalINICIA_SERVIDOR: TStringField;
    qryEstFuncionalCALC_SAL: TStringField;
    qryEstFuncionalTIPO_MOVIM: TStringField;
    qryEstFuncionalCOD_AFAST_PREVID: TStringField;
    qryEstFuncionalCOD_RETORNO_PREVID: TStringField;
    qryEstFuncionalMOVIM_DEFINITIVA: TStringField;
    qryEstFuncionalPAGTO_ENTID_PREVID: TStringField;
    cdsEstFuncionalID: TIntegerField;
    cdsEstFuncionalDESCRICAO: TStringField;
    cdsEstFuncionalINICIA_SERVIDOR: TStringField;
    cdsEstFuncionalCALC_SAL: TStringField;
    cdsEstFuncionalTIPO_MOVIM: TStringField;
    cdsEstFuncionalCOD_AFAST_PREVID: TStringField;
    cdsEstFuncionalCOD_RETORNO_PREVID: TStringField;
    cdsEstFuncionalMOVIM_DEFINITIVA: TStringField;
    cdsEstFuncionalPAGTO_ENTID_PREVID: TStringField;
    cdsSubUnidOrcamTIPO_VINCULO: TStringField;
    cdsSubUnidOrcamTIPO_PREVID: TStringField;
    cdsSubUnidOrcamCONTRIB_INDIVIDUAL: TStringField;
    cdsSubUnidOrcamTETO_VENCTO_BASE: TFMTBCDField;
    cdsSubUnidOrcamTETO_SALARIO: TFMTBCDField;
    cdsSubUnidOrcamID_UNID_GESTORA: TIntegerField;
    cdsSubUnidOrcamDESCR_TIPO_VINCULO: TStringField;
    cdsSubUnidOrcamDESCR_UNID_GESTORA: TStringField;
    cdsSubUnidOrcamCOD_ORGAO_TCM_UO: TIntegerField;
    cdsSubUnidOrcamCOD_ORGAO_TCM_UG: TIntegerField;
    cdsEstrutOrganizTIPO_PREVID: TStringField;
    frxDesigner1: TfrxDesigner;
    qryTabLogradouro: TSQLQuery;
    provTabLogradouro: TDataSetProvider;
    cdsTabLogradouro: TClientDataSet;
    frxTabLogradouro: TfrxDBDataset;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoSIGLA: TStringField;
    cdsConfigOrgaoCNPJ: TStringField;
    cdsConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    cdsConfigOrgaoENDER_LOGRAD_NUM: TStringField;
    cdsConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
    cdsConfigOrgaoENDER_CIDADE: TStringField;
    cdsConfigOrgaoENDER_CEP: TStringField;
    cdsConfigOrgaoENDER_UF: TStringField;
    cdsConfigOrgaoTELEFONES: TStringField;
    cdsConfigOrgaoLOGOMARCA: TBlobField;
    cdsConfigOrgaoRAZAO_SOCIAL2: TStringField;
    cdsConfigOrgaoCNPJ_FTDO: TStringField;
    cdsConfigOrgaoNOME_SYS: TStringField;
    cdsConfigOrgaoTIT_REL1: TStringField;
    cdsConfigOrgaoTIT_REL2: TStringField;
    cdsTabLogradouroID: TIntegerField;
    cdsTabLogradouroDESCRICAO: TStringField;
    qryMapaLogradouro: TSQLQuery;
    provMapaLogradouro: TDataSetProvider;
    cdsMapaLogradouro: TClientDataSet;
    frxMapaLogradouro: TfrxDBDataset;
    cdsMapaLogradouroENDER_ID_DISTRITO: TIntegerField;
    cdsMapaLogradouroENDER_DESCR_DISTRITO: TStringField;
    cdsMapaLogradouroENDER_ID_BAIRRO: TIntegerField;
    cdsMapaLogradouroENDER_DESCR_BAIRRO: TStringField;
    cdsMapaLogradouroENDER_ID_LOGRAD: TIntegerField;
    cdsMapaLogradouroENDER_DESCR_LOGRAD: TStringField;
    cdsTabTarifaID: TIntegerField;
    cdsTabTarifaFORMA_CALCULO: TStringField;
    cdsTabTarifaTIPO_UNID_CONSUM: TStringField;
    cdsTabTarifaQTD_INI: TIntegerField;
    cdsTabTarifaQTD_FIM: TIntegerField;
    cdsTabTarifaVALOR: TFMTBCDField;
    cdsTabTarifaID_VIGENCIA: TIntegerField;
    cdsTabTarifaDESCR_FORMA_CALCULO: TStringField;
    cdsTabTarifaDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsTabTarifaINI_VIGENCIA: TStringField;
    cdsTabTarifaFIM_VIGENCIA: TStringField;
    cdsTabTarifaINI_VIG_FTDO: TStringField;
    cdsTabTarifaFIM_VIG_FTDO: TStringField;
    cdsTabOutraTarifaID: TIntegerField;
    cdsTabOutraTarifaDESCRICAO: TStringField;
    cdsTabOutraTarifaVALOR: TFMTBCDField;
    cdsTabOutraTarifaID_VIGENCIA: TIntegerField;
    cdsTabOutraTarifaINI_VIGENCIA: TStringField;
    cdsTabOutraTarifaFIM_VIGENCIA: TStringField;
    cdsTabOutraTarifaINI_VIG_FTDO: TStringField;
    cdsTabOutraTarifaFIM_VIG_FTDO: TStringField;
    cdsConfigOrgaoQUEBRA_PAG_BAIRRO: TStringField;
    cdsConfigOrgaoVERSAO_SYS: TStringField;
    cdsConfigOrgaonome_fr3: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    pv_sPathRel : String;
  public
    { Public declarations }
    Procedure RelTabTarifas(sAnoMes: String; lVisualizar: Boolean);
    Procedure RelUnidesOrcamentarias(sOrdem: String; lVisualizar: Boolean);
    Procedure RelLogradouro(sOrdem,sQuebraPag: String; lVisualizar: Boolean);
    procedure RelUniLotacao(sTipo, sOrdem: String; lVisualizar: Boolean);
    procedure RelDepto(sOrdem: String; lVisualizar: Boolean);
    Procedure RelCargoFuncao1(sOrdem: String; lVisualizar: Boolean);
    Procedure RelEventos(sTipo,sOrdem: String; lVisualizar: Boolean);
    procedure RelEstadosFuncionais(sOrdem: String; lVisualizar: Boolean);
    procedure RelEstruturaOrganizacional(lVisualizar: Boolean);
    procedure RelTabCargosSalarios(sMultiCategFunc,
      sMultiTipoCargoTCM: widestring; sSituacao: String; lVisualizar: Boolean);
  end;

var
  dmRelTabelas1: TdmRelTabelas1;

implementation

uses udmPrincipal, VarGlobais, gsLib;

{$R *.dfm}

procedure TdmRelTabelas1.DataModuleCreate(Sender: TObject);
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

  cdsConfigOrgao.Close;
  cdsSubUnidOrcam.Close;
  cdsCargoFuncao.Close;
  cdsEvento.Close;
  cdsEstrutOrganiz.Close;
  cdsUnidLotacao.Close;
  cdsDepto.Close;
  cdsEstFuncional.Close;
  cdsTabTarifa.Close;
  cdsTabOutraTarifa.Close;

  pv_sPathRel := GetPathRel();
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL2.Value :=
     Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoCNPJ_FTDO.Value := Criptografa(cdsConfigOrgaoCNPJ.Value,'2',14);
  cdsConfigOrgaoCNPJ_FTDO.Value := FormatString('99.999.999/9999-99',cdsConfigOrgaoCNPJ_FTDO.Value);
  cdsConfigOrgaoNOME_SYS.Value:= glb_sSistema;
  cdsConfigOrgaoVERSAO_SYS.Value:= 'Versão: ['+glb_sVersao+']';
  cdsConfigOrgao.Post;
end;

procedure TdmRelTabelas1.DataModuleDestroy(Sender: TObject);
begin
  cdsCargoFuncao.Close;
  cdsEvento.Close;
  cdsSubUnidOrcam.Close;
  cdsConfigOrgao.Close;
end;

Procedure TdmRelTabelas1.RelTabTarifas(sAnoMes: String; lVisualizar: Boolean);
Var
  i: Integer;
begin
  Screen.cursor := crHourGlass;

  cdsTabTarifa.Close;
  qryTabTarifa.ParamByName('pAnoMesAtual').Value := sAnoMes;
  qryTabTarifa.ParamByName('pAnoMesAtual').Value := sAnoMes;
  cdsTabTarifa.Open;

  cdsTabOutraTarifa.Close;
  qryTabOutraTarifa.ParamByName('pAnoMesAtual').Value := sAnoMes;
  qryTabOutraTarifa.ParamByName('pAnoMesAtual').Value := sAnoMes;
  cdsTabOutraTarifa.Open;
  i := cdsTabOutraTarifa.RecordCount;

  cdsConfigOrgao.Edit;
  cdsConfigOrgaonome_fr3.Value := 'TabTarifa_v2.fr3';
  cdsConfigOrgaoTIT_REL1.Value := 'Tabela de Tarifas - '+glb_sDescrMesAnoTrab;
  cdsConfigOrgaoTIT_REL2.Value := 'Vigência: '+cdsTabTarifaINI_VIG_FTDO.Value+
     ' até '+cdsTabTarifaFIM_VIG_FTDO.Value;
  cdsConfigOrgao.Post;

  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaonome_fr3.Value));
  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

  cdsTabOutraTarifa.Close;
  cdsTabTarifa.Close;

end;

Procedure TdmRelTabelas1.RelUnidesOrcamentarias(sOrdem: String; lVisualizar: Boolean);
begin
  Screen.cursor := crHourGlass;
  {
  cdsUnidOrcament.Close;
  cdsUnidOrcament.IndexFieldNames := sOrdem;
  cdsUnidOrcament.Open;
  frxReport1.LoadFromFile(pv_sPathRel+'UnidOrcamentaria.fr3');
  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;
  }
end;

Procedure TdmRelTabelas1.RelLogradouro(sOrdem,sQuebraPag: String; lVisualizar: Boolean);
begin
  Screen.cursor := crHourGlass;

  cdsConfigOrgao.Edit;
  if sOrdem <> '2' then
  begin
     cdsConfigOrgaonome_fr3.Value := 'TabLogradouro_v2.fr3';
     cdsConfigOrgaoTIT_REL1.Value := 'Tabela de Logradouros';
     cdsConfigOrgaoTIT_REL2.Value := 'Ordem '+iIf(sOrdem='0','Numérica','Alfabética');
     cdsTabLogradouro.Close;
     cdsTabLogradouro.IndexFieldNames := iIf(sOrdem='0','ID','DESCRICAO');
     cdsTabLogradouro.Open;
  end else
  begin
     cdsConfigOrgaonome_fr3.Value := 'MapaLogradouro_v2.fr3';
     cdsConfigOrgaoTIT_REL1.Value := 'Mapa de Logradouros';
     cdsConfigOrgaoTIT_REL2.Value := 'Por Distrito/Bairro';
     cdsConfigOrgaoQUEBRA_PAG_BAIRRO.Value := sQuebraPag;
     cdsMapaLogradouro.Close;
     cdsMapaLogradouro.Open;
  end;
  cdsConfigOrgao.Post;
  frxReport1.LoadFromFile(pv_sPathRel+Trim(cdsConfigOrgaonome_fr3.Value));

  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

  cdsTabLogradouro.Close;
  cdsMapaLogradouro.Close;

end;

Procedure TdmRelTabelas1.RelUniLotacao(sTipo,sOrdem: String; lVisualizar: Boolean);
begin
  Screen.cursor := crHourGlass;
  cdsUnidLotacao.Close;
  cdsUnidLotacao.IndexFieldNames := sOrdem;
  qryUnidLotacao.ParamByName('pTipoIni').Value := 1;
  qryUnidLotacao.ParamByName('pTipoFim').Value := 9999;
  if Trim(sTipo) <> '' then
  begin
    qryUnidLotacao.ParamByName('pTipoIni').Value := StrToInt(sTipo);
    qryUnidLotacao.ParamByName('pTipoFim').Value := StrToInt(sTipo);
  end;
  cdsUnidLotacao.Open;
  frxReport1.LoadFromFile(pv_sPathRel+'UnidLotacao.fr3');
  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;


end;

Procedure TdmRelTabelas1.RelDepto(sOrdem: String; lVisualizar: Boolean);
begin
  Screen.cursor := crHourGlass;
  cdsDepto.Close;
  cdsDepto.IndexFieldNames := sOrdem;
  cdsDepto.Open;
  frxReport1.LoadFromFile(pv_sPathRel+'Depto.fr3');
  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;
end;

Procedure TdmRelTabelas1.RelCargoFuncao1(sOrdem: String; lVisualizar: Boolean);
begin
  Screen.cursor := crHourGlass;
  cdsCargoFuncao.Close;
  cdsCargoFuncao.IndexFieldNames := sOrdem;
  cdsCargoFuncao.Open;
  frxReport1.LoadFromFile(pv_sPathRel+'CargoFuncao1.fr3');
  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;
end;

Procedure TdmRelTabelas1.RelEventos(sTipo,sOrdem: String; lVisualizar: Boolean);
begin
  Screen.cursor := crHourGlass;
  cdsEvento.Close;
  cdsEvento.IndexFieldNames := sOrdem;
  cdsEvento.Filtered := false;
  if sTipo <> 'T' then
  begin
     cdsEvento.Filter   := 'TIPO = '+QuotedStr(sTipo);
     cdsEvento.Filtered := True;
  end;
  cdsEvento.Open;
  frxReport1.LoadFromFile(pv_sPathRel+'Evento1.fr3');
  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;
end;

Procedure TdmRelTabelas1.RelEstadosFuncionais(sOrdem: String; lVisualizar: Boolean);
begin
  Screen.cursor := crHourGlass;
  cdsEstFuncional.Close;
  cdsEstFuncional.IndexFieldNames := sOrdem;
  cdsEstFuncional.Open;
  frxReport1.LoadFromFile(pv_sPathRel+'EstadoFuncional.fr3');
  Screen.Cursor := crDefault;
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;
end;

Procedure TdmRelTabelas1.RelEstruturaOrganizacional(lVisualizar: Boolean);
begin
  cdsEstrutOrganiz.Close;
  cdsEstrutOrganiz.Open;
  frxReport1.LoadFromFile(pv_sPathRel+'EstruturaOrganizacional.fr3');
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;
end;

Procedure TdmRelTabelas1.RelTabCargosSalarios(sMultiCategFunc,
  sMultiTipoCargoTCM: widestring; sSituacao: String; lVisualizar: Boolean);
begin

  sMultiCategFunc    := AjustaTextoParamVarios(sMultiCategFunc);
  sMultiTipoCargoTCM := AjustaTextoParamVarios(sMultiTipoCargoTCM);
  {
  cdsTabCargoSal.Close;
  qryTabCargoSal.ParamByName('pMultiCategFuncional').Value:= sMultiCategFunc;
  qryTabCargoSal.ParamByName('pMultiTipoCargoTCM').Value  := sMultiTipoCargoTCM;
  qryTabCargoSal.ParamByName('pSituacao').Value           := sSituacao;

  cdsTabCargoSal.Open;
  }
  frxReport1.LoadFromFile(pv_sPathRel+'TabCargosSalarios.fr3');
  if lVisualizar then
     frxReport1.ShowReport()
  else
  begin
     frxReport1.PrepareReport(True);
     frxReport1.Print;
  end;

end;


end.
