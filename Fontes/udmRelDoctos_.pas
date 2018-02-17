unit udmRelDoctos_;

interface

uses
  Windows, Messages, SysUtils, Classes, FMTBcd, DB, frxClass, frxDBSet, SqlExpr,
  Provider, DBClient, Forms, Variants, Controls, StrUtils, StdCtrls, frxRich,
  frxDesgn, frxExportPDF, Graphics, Dialogs, Padrao1, Buttons, ComCtrls,
  Mask;

type
  TdmRelDoctos_ = class(TDataModule)
    frxReport1: TfrxReport;
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
    qryServidor: TSQLQuery;
    qryServidorR_ID_SUB_UNID_ORCAMENT: TIntegerField;
    qryServidorR_DESCR_SUB_UND_ORCAM: TStringField;
    qryServidorR_ID_SERVIDOR: TIntegerField;
    qryServidorR_ID_SERVID_FTDO: TStringField;
    qryServidorR_NOME_SERVIDOR: TStringField;
    qryServidorR_NOME_ID_SERVIDOR: TStringField;
    qryServidorR_ID_CARGO: TIntegerField;
    qryServidorR_DESCR_CARGO: TStringField;
    qryServidorR_VENCTO_BASE_CARGO: TFMTBCDField;
    qryServidorR_DESCR_TIPO_SAL: TStringField;
    qryServidorR_DT_ADMISSAO: TDateField;
    qryServidorR_ID_UNID_LOTACAO: TIntegerField;
    qryServidorR_DESCR_UNID_LOTACAO: TStringField;
    qryServidorR_ID_EST_FUNCIONAL: TIntegerField;
    qryServidorR_DESCR_EST_FUNCIONAL: TStringField;
    qryServidorR_DESCR_SITUAC_TCM: TStringField;
    qryServidorR_EFETIVO: TStringField;
    qryServidorR_DESCR_EFETIVO: TStringField;
    qryServidorR_VENCTO_BASE: TFMTBCDField;
    qryServidorR_SAL_FAM: TFMTBCDField;
    qryServidorR_OUTROS_VENCTOS: TFMTBCDField;
    qryServidorR_PREVID: TFMTBCDField;
    qryServidorR_IRRF: TFMTBCDField;
    qryServidorR_OUTROS_DESCS: TFMTBCDField;
    qryServidorR_TOT_VENCTO: TFMTBCDField;
    qryServidorR_TOT_DESCONTO: TFMTBCDField;
    qryServidorR_SAL_LIQUIDO: TFMTBCDField;
    qryServidorR_BC_SAL_FAM: TFMTBCDField;
    qryServidorR_BC_ATS: TFMTBCDField;
    qryServidorR_BC_FERIAS: TFMTBCDField;
    qryServidorR_BC_DEC_TERC: TFMTBCDField;
    qryServidorR_BC_FALTA: TFMTBCDField;
    qryServidorR_BC_PREVID: TFMTBCDField;
    qryServidorR_BC_IRRF: TFMTBCDField;
    qryServidorR_BC_OUTRA1: TFMTBCDField;
    qryServidorR_BC_OUTRA2: TFMTBCDField;
    qryServidorR_BC_OUTRA3: TFMTBCDField;
    qryServidorR_ATIVO: TIntegerField;
    qryServidorR_QTD_DEPEND_IRRF: TIntegerField;
    qryServidorR_DT_PAGTO: TDateField;
    qryServidorR_CONTA_CORRENTE: TStringField;
    qryServidorR_AGENCIA: TStringField;
    qryServidorR_COD_BANCO: TStringField;
    provServidor: TDataSetProvider;
    cdsServidor: TClientDataSet;
    cdsServidorR_ID_SUB_UNID_ORCAMENT: TIntegerField;
    cdsServidorR_DESCR_SUB_UND_ORCAM: TStringField;
    cdsServidorR_ID_SERVIDOR: TIntegerField;
    cdsServidorR_ID_SERVID_FTDO: TStringField;
    cdsServidorR_NOME_SERVIDOR: TStringField;
    cdsServidorR_NOME_ID_SERVIDOR: TStringField;
    cdsServidorR_ID_CARGO: TIntegerField;
    cdsServidorR_DESCR_CARGO: TStringField;
    cdsServidorR_VENCTO_BASE_CARGO: TFMTBCDField;
    cdsServidorR_DESCR_TIPO_SAL: TStringField;
    cdsServidorR_DT_ADMISSAO: TDateField;
    cdsServidorR_ID_UNID_LOTACAO: TIntegerField;
    cdsServidorR_DESCR_UNID_LOTACAO: TStringField;
    cdsServidorR_ID_EST_FUNCIONAL: TIntegerField;
    cdsServidorR_DESCR_EST_FUNCIONAL: TStringField;
    cdsServidorR_DESCR_SITUAC_TCM: TStringField;
    cdsServidorR_EFETIVO: TStringField;
    cdsServidorR_DESCR_EFETIVO: TStringField;
    cdsServidorR_VENCTO_BASE: TFMTBCDField;
    cdsServidorR_SAL_FAM: TFMTBCDField;
    cdsServidorR_OUTROS_VENCTOS: TFMTBCDField;
    cdsServidorR_PREVID: TFMTBCDField;
    cdsServidorR_IRRF: TFMTBCDField;
    cdsServidorR_OUTROS_DESCS: TFMTBCDField;
    cdsServidorR_TOT_VENCTO: TFMTBCDField;
    cdsServidorR_TOT_DESCONTO: TFMTBCDField;
    cdsServidorR_SAL_LIQUIDO: TFMTBCDField;
    cdsServidorR_BC_SAL_FAM: TFMTBCDField;
    cdsServidorR_BC_ATS: TFMTBCDField;
    cdsServidorR_BC_FERIAS: TFMTBCDField;
    cdsServidorR_BC_DEC_TERC: TFMTBCDField;
    cdsServidorR_BC_FALTA: TFMTBCDField;
    cdsServidorR_BC_PREVID: TFMTBCDField;
    cdsServidorR_BC_IRRF: TFMTBCDField;
    cdsServidorR_QTD_DEPEND_IRRF: TIntegerField;
    cdsServidorR_BC_OUTRA1: TFMTBCDField;
    cdsServidorR_BC_OUTRA2: TFMTBCDField;
    cdsServidorR_BC_OUTRA3: TFMTBCDField;
    cdsServidorR_ATIVO: TIntegerField;
    cdsServidorR_DT_PAGTO: TDateField;
    cdsServidorR_CONTA_CORRENTE: TStringField;
    cdsServidorR_AGENCIA: TStringField;
    cdsServidorR_COD_BANCO: TStringField;
    frxServidor: TfrxDBDataset;
    qryEventoCalc: TSQLQuery;
    qryEventoCalcANO_MES: TStringField;
    qryEventoCalcPARCELA: TStringField;
    qryEventoCalcID_SERVIDOR: TIntegerField;
    qryEventoCalcID_EVENTO: TIntegerField;
    qryEventoCalcQTD: TFMTBCDField;
    qryEventoCalcVALOR: TFMTBCDField;
    qryEventoCalcOBSERVACAO: TStringField;
    qryEventoCalcDESCR_EVENTO: TStringField;
    qryEventoCalcTIPO_EVENTO: TStringField;
    qryEventoCalcID_CATEG_EVENTO: TIntegerField;
    qryEventoCalcCOD_EVENTO: TStringField;
    qryEventoCalcTIPO_EVENTO2: TStringField;
    frxRichObject1: TfrxRichObject;
    qryServidorR_TIPO_REG: TStringField;
    cdsServidorR_TIPO_REG: TStringField;
    cdsConfigOrgaoMEMO1: TMemoField;
    cdsConfigOrgaoMEMO2: TMemoField;
    mTbEvento: TClientDataSet;
    mTbEventoCod_V: TMemoField;
    mTbEventoDescr_V: TMemoField;
    mTbEventoQtd_V: TMemoField;
    mTbEventoValor_V: TMemoField;
    mTbEventoCod_D: TMemoField;
    mTbEventoDescr_D: TMemoField;
    mTbEventoQtd_D: TMemoField;
    mTbEventoValor_D: TMemoField;
    frxEvento: TfrxDBDataset;
    mTbEventoId: TIntegerField;
    qryServidorR_RG_NUM: TStringField;
    qryServidorR_RG_ORGAO_EMISSOR: TStringField;
    qryServidorR_RG_UF: TStringField;
    qryServidorR_IDENTIDADE: TStringField;
    qryServidorR_CPF: TStringField;
    qryServidorR_PIS_PASEP: TStringField;
    qryServidorR_VAL_DEDUCOES_IRRF: TFMTBCDField;
    qryServidorR_FELICIT_NIVER: TStringField;
    cdsServidorR_RG_NUM: TStringField;
    cdsServidorR_RG_ORGAO_EMISSOR: TStringField;
    cdsServidorR_RG_UF: TStringField;
    cdsServidorR_IDENTIDADE: TStringField;
    cdsServidorR_CPF: TStringField;
    cdsServidorR_PIS_PASEP: TStringField;
    cdsServidorR_VAL_DEDUCOES_IRRF: TFMTBCDField;
    cdsServidorR_FELICIT_NIVER: TStringField;
    cdsConfigOrgaoMSG_CONTRA_CHEQUE: TWideStringField;
    cdsConfigOrgaoRAZAO_SOCIAL2: TStringField;
    cdsConfigOrgaoCNPJ_FTDO: TStringField;
    qryServidorR_TIPO_PAGTO: TStringField;
    cdsServidorR_TIPO_PAGTO: TStringField;
    frxDesigner1: TfrxDesigner;
    frxPDFExport1: TfrxPDFExport;
    qryServidorR_ID_DEPTO: TIntegerField;
    qryServidorR_DESCR_DEPTO: TStringField;
    cdsServidorR_ID_DEPTO: TIntegerField;
    cdsServidorR_DESCR_DEPTO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsServidorAfterScroll(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    pv_lGeraTabEventos: Boolean;
    pv_sPathRel       : String;
    pv_sEventos       : WideString;
    pv_sAnoMes        : String[6];
    pv_sParcela       : String[1];
    procedure GeraTabEventos(sAnoMes, sParcela: String; iIdServidor: Integer);
  public
    { Public declarations }
    Procedure RelConta_Cheque(sAnoMes, sParcela: String; iUnidGestora: Integer;
       sSubUnidsOrcams,sUnidsLotacs,sMsg: WideString; sIdServidor,sTipoCC: String;
       lSomenteSemCC,lOrdemUnidLotac,lVisualizar: Boolean);
  end;

var
  dmRelDoctos_: TdmRelDoctos_;

implementation

uses VarGlobais, udmPrincipal, uTeste, gsLib, UtilsDb;

{$R *.dfm}

procedure TdmRelDoctos_.cdsServidorAfterScroll(DataSet: TDataSet);
begin
  if pv_lGeraTabEventos then
     GeraTabEventos(pv_sAnoMes,pv_sParcela,DataSet.FieldByName('r_id_servidor').Value);
end;

procedure TdmRelDoctos_.DataModuleCreate(Sender: TObject);
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
  cdsServidor.Close;
  qryEventoCalc.Close;

  pv_sPathRel := GetPathRel();

  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL2.Value :=
     Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoCNPJ.Value :=
     Criptografa(cdsConfigOrgaoCNPJ.Value,'2',14);
  cdsConfigOrgaoCNPJ_FTDO.Value :=
     FormatString('99.999.999/9999-99',cdsConfigOrgaoCNPJ.Value);
  cdsConfigOrgaoNOME_SYS.Value:= glb_sSistema+' - Ver. '+glb_sVersao;
  cdsConfigOrgao.Post;

end;

procedure TdmRelDoctos_.DataModuleDestroy(Sender: TObject);
begin
  cdsConfigOrgao.Close;
  mTbEvento.Close;
end;

Procedure TdmRelDoctos_.RelConta_Cheque(sAnoMes, sParcela: String; iUnidGestora: Integer;
  sSubUnidsOrcams,sUnidsLotacs,sMsg: WideString; sIdServidor,sTipoCC: String;
  lSomenteSemCC,lOrdemUnidLotac,lVisualizar: Boolean);
Var
  mem1: TMemo;
  iConta,
  iTam,
  iTemp,
  iTemp2,
  iServidorIni,
  iServidorFim: Integer;
  sTextTemp: string;
begin

  mTbEvento.CreateDataSet;
  mTbEvento.Open;

  pv_lGeraTabEventos := True;
  pv_sAnoMes := sAnoMes;
  pv_sParcela:= sParcela;

  sSubUnidsOrcams := AjustaTextoParamVarios(sSubUnidsOrcams);
  sUnidsLotacs    := AjustaTextoParamVarios(sUnidsLotacs);

  iServidorIni := 1;
  iServidorFim := 9999999;
  if sIdServidor <> '0' then
  begin
     iServidorIni := StrToInt(sIdServidor);
     iServidorFim := iServidorIni;
  end;

  {
  if not Empty(sCargos) then
  begin
     if LeftStr(Trim(sCargos),1) <> ';'  then
        sCargos := ';'+Trim(sCargos);
     if RightStr(Trim(sCargos),1) <> ';'  then
        sCargos := Trim(sCargos)+';';
  end else
     sCargos := '0';
  }

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTITULO_REL1.Value:= 'DEMONSTRATIVO DE PAGAMENTO DE SALÁRIO '+
     '(CONTRA-CHEQUE)';
  cdsConfigOrgaoTITULO_REL2.Value:= 'REF. : '+glb_sDescrMesAnoTrab;
  cdsConfigOrgaoMSG_CONTRA_CHEQUE.Value:= sMsg;
  cdsConfigOrgao.Post;

  {
  mem1 := TMemo.Create(Nil);
  mem1.Lines.Add('');
  sTextTemp := cdsConfigOrgaoRAZAO_SOCIAL.Value;
  mem1.Lines[0] := sTextTemp;
  iTam := Length(Trim(sTextTemp))+1;
  iTemp := 101 - iTam;
  mem1.Lines[0] := sTextTemp + ' '+Copy(sTextTemp,iTam,iTemp);


  iTemp := 101 - iTam;
  sTextTemp := RightStr()


  for iConta := 1 to 12 do
  begin


     mem1.Lines[0] := cdsConfigOrgaoRAZAO_SOCIAL.Value;

  end;
  }

  cdsServidor.Close;
  if not lOrdemUnidLotac then
     cdsServidor.IndexFieldNames := 'R_DESCR_SUB_UND_ORCAM;R_ID_SUB_UNID_ORCAMENT;'+
        'R_NOME_SERVIDOR;R_ID_SERVIDOR'
  else
     cdsServidor.IndexFieldNames := 'R_DESCR_UNID_LOTACAO;'+
        'r_descr_depto;R_NOME_SERVIDOR;R_ID_SERVIDOR';
  qryServidor.ParamByName('pAnoMes').Value        := sAnoMes;
  qryServidor.ParamByName('pParcela').Value       := sParcela;
  qryServidor.ParamByName('pUnidGestora').Value   := iUnidGestora;
  qryServidor.ParamByName('pSubUnidsOrcams').Value:= sSubUnidsOrcams;
  qryServidor.ParamByName('pUnidsLotacoes').Value := sUnidsLotacs;
  qryServidor.ParamByName('pCargos').Value        := '0';
  qryServidor.ParamByName('pEstFuncionais').Value := '0';
  qryServidor.ParamByName('pIdServidIni').Value   := iServidorIni;
  qryServidor.ParamByName('pIdServidFim').Value   := iServidorFim;
  qryServidor.ParamByName('pTipoPagIni').Value    := '1';
  qryServidor.ParamByName('pTipoPagFim').Value    := '9';
  if lSomenteSemCC = True then
     qryServidor.ParamByName('pTipoPagFim').Value := '1';
  cdsServidor.Open;

  if cdsServidor.RecordCount = 0 then
  begin
     Mensagem('Não há Servidores p/ imprimir Contra-Cheque ...',
        'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
     exit;
  end;

  {
  frmTeste := TfrmTeste.Create(Self);
  frmTeste.DataSource1.DataSet := cdsServidor;
  frmTeste.ShowModal;
  FreeAndNil(frmTeste);
  }

  if sTipoCC = '1' then
     frxReport1.LoadFromFile(pv_sPathRel+'ContraCheque3.fr3')
  else if sTipoCC = '4' then
     frxReport1.LoadFromFile(pv_sPathRel+'ContraCheque4.fr3');
  Screen.Cursor := crDefault;

  frxReport1.PrepareReport(True);
  if lVisualizar then
     frxReport1.ShowReport()
  else
     frxReport1.Print;

end;

procedure TdmRelDoctos_.GeraTabEventos(sAnoMes,sParcela: String; iIdServidor: Integer);
Var
  memCodV,
  memDescrV,
  memQtdV,
  memValV,
  memCodD,
  memDescrD,
  memQtdD,
  memValD: TStrings;
  iContaV,
  iContaD: Integer;
begin

  if not pv_lGeraTabEventos then exit;

  mTbEvento.EmptyDataSet;
  mTbEvento.Close;
  mTbEvento.Open;

  memCodV  := TStringList.Create;
  memDescrV:= TStringList.Create;
  memQtdV  := TStringList.Create;
  memValV  := TStringList.Create;
  memCodD  := TStringList.Create;
  memDescrD:= TStringList.Create;
  memQtdD  := TStringList.Create;
  memValD  := TStringList.Create;

  iContaV := 0;
  qryEventoCalc.Close;
  qryEventoCalc.ParamByName('pAno_Mes').Value := sAnoMes;
  qryEventoCalc.ParamByName('pParcela').Value := sParcela;
  qryEventoCalc.ParamByName('pid_servidor').Value := iIdServidor;
  qryEventoCalc.Open;
  while (not qryEventoCalc.eof) and
        (qryEventoCalcTIPO_EVENTO2.Value = '1')  do
  begin
     Inc(iContaV);
     memCodV.Add(qryEventoCalcCOD_EVENTO.Value);
     memDescrV.Add(qryEventoCalcDESCR_EVENTO.Value+' '+
                   qryEventoCalcOBSERVACAO.Value);
     memQtdV.Add(FormatCurr('0.00',qryEventoCalcQTD.AsCurrency));
     memValV.Add(FormatCurr(',0.00',qryEventoCalcVALOR.AsCurrency));
     memCodD.Add('');
     memDescrD.Add('');
     memQtdD.Add('');
     memValD.Add('');
     qryEventoCalc.Next;
  end;
  iContaD := 0;
  while not qryEventoCalc.eof do
  begin
     Inc(iContaD);
     if iContaD > iContaV then
     begin
        memCodD.Add(qryEventoCalcCOD_EVENTO.Value);
        memDescrD.Add(qryEventoCalcDESCR_EVENTO.Value+' '+
                    qryEventoCalcOBSERVACAO.Value);
        memQtdD.Add(FormatCurr('0.00',qryEventoCalcQTD.AsCurrency));
        memValD.Add(FormatCurr(',0.00',qryEventoCalcVALOR.AsCurrency));
     end else
     begin
        memCodD[iContaD-1] := qryEventoCalcCOD_EVENTO.Value;
        memDescrD[iContaD-1] := qryEventoCalcDESCR_EVENTO.Value+' '+
           qryEventoCalcOBSERVACAO.Value;
        memQtdD[iContaD-1] := FormatCurr('0.00',qryEventoCalcQTD.AsCurrency);
        memValD[iContaD-1] := FormatCurr(',0.00',qryEventoCalcVALOR.AsCurrency);
     end;
     qryEventoCalc.Next;
  end;

  qryEventoCalc.Close;

  mTbEvento.Insert;
  mTbEventoCod_V.Text  := memCodV.Text;
  mTbEventoDescr_V.Text:= memDescrV.Text;
  mTbEventoQtd_V.Text  := memQtdV.Text;
  mTbEventoValor_V.Text:= memValV.Text;
  mTbEventoCod_D.Text  := memCodD.Text;
  mTbEventoDescr_D.Text:= memDescrD.Text;
  mTbEventoQtd_D.Text  := memQtdD.Text;
  mTbEventoValor_D.Text:= memValD.Text;
  mTbEvento.Post;

  FreeAndNil(memCodV);
  FreeAndNil(memDescrV);
  FreeAndNil(memQtdV);
  FreeAndNil(memValV);
  FreeAndNil(memCodD);
  FreeAndNil(memDescrD);
  FreeAndNil(memQtdD);
  FreeAndNil(memValD);

end;

end.
