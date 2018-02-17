unit udmTeste;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr,
  Variants, Controls, Forms, frxClass, frxDBSet;

type
  TdmTeste = class(TDataModule)
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
    qryHistFinancServidor: TSQLQuery;
    qryHistFinancServidorANO_MES_PARCELA: TStringField;
    qryHistFinancServidorMES_ANO: TStringField;
    qryHistFinancServidorDESCR_PARCELA: TStringField;
    qryHistFinancServidorANO_MES: TStringField;
    qryHistFinancServidorPARCELA: TStringField;
    qryHistFinancServidorID_SERVIDOR: TIntegerField;
    qryHistFinancServidorTOT_VENCTO: TFMTBCDField;
    qryHistFinancServidorTOT_DESCONTO: TFMTBCDField;
    qryHistFinancServidorSAL_LIQUIDO: TFMTBCDField;
    qryHistFinancServidorID_SUB_UNID_ORCAMENT: TIntegerField;
    qryHistFinancServidorDESCR_SUB_UND_ORCAM: TStringField;
    qryHistFinancServidorID_CARGO: TIntegerField;
    qryHistFinancServidorDESCR_CARGO: TStringField;
    qryHistFinancServidorDT_ADMISSAO: TDateField;
    qryHistFinancServidorID_UNID_LOTACAO: TIntegerField;
    qryHistFinancServidorDESCR_UNID_LOTACAO: TStringField;
    qryHistFinancServidorDESCR_EFETIVO: TStringField;
    qryHistFinancServidorID_PROGRES_SAL: TIntegerField;
    qryHistFinancServidorVENCTO_BASE_CARGO: TFMTBCDField;
    qryHistFinancServidorDESCR_TIPO_SAL: TStringField;
    qryHistFinancServidorID_EST_FUNCIONAL: TIntegerField;
    qryHistFinancServidorDESCR_EST_FUNCIONAL: TStringField;
    provHistFinancServidor: TDataSetProvider;
    cdsHistFinancServidor: TClientDataSet;
    cdsHistFinancServidorANO_MES_PARCELA: TStringField;
    cdsHistFinancServidorMES_ANO: TStringField;
    cdsHistFinancServidorDESCR_PARCELA: TStringField;
    cdsHistFinancServidorANO_MES: TStringField;
    cdsHistFinancServidorPARCELA: TStringField;
    cdsHistFinancServidorID_SERVIDOR: TIntegerField;
    cdsHistFinancServidorTOT_VENCTO: TFMTBCDField;
    cdsHistFinancServidorTOT_DESCONTO: TFMTBCDField;
    cdsHistFinancServidorSAL_LIQUIDO: TFMTBCDField;
    cdsHistFinancServidorID_SUB_UNID_ORCAMENT: TIntegerField;
    cdsHistFinancServidorDESCR_SUB_UND_ORCAM: TStringField;
    cdsHistFinancServidorID_CARGO: TIntegerField;
    cdsHistFinancServidorDESCR_CARGO: TStringField;
    cdsHistFinancServidorDT_ADMISSAO: TDateField;
    cdsHistFinancServidorID_UNID_LOTACAO: TIntegerField;
    cdsHistFinancServidorDESCR_UNID_LOTACAO: TStringField;
    cdsHistFinancServidorDESCR_EFETIVO: TStringField;
    cdsHistFinancServidorID_PROGRES_SAL: TIntegerField;
    cdsHistFinancServidorVENCTO_BASE_CARGO: TFMTBCDField;
    cdsHistFinancServidorDESCR_TIPO_SAL: TStringField;
    cdsHistFinancServidorID_EST_FUNCIONAL: TIntegerField;
    cdsHistFinancServidorDESCR_EST_FUNCIONAL: TStringField;
    mTbHFEventoCalc: TClientDataSet;
    mTbHFEventoCalcId: TIntegerField;
    mTbHFEventoCalcCodVencto: TStringField;
    mTbHFEventoCalcDescrVencto: TStringField;
    mTbHFEventoCalcObservVencto: TStringField;
    mTbHFEventoCalcQtdVencto: TStringField;
    mTbHFEventoCalcValorVencto: TStringField;
    mTbHFEventoCalcCodDesc: TStringField;
    mTbHFEventoCalcDescrDesc: TStringField;
    mTbHFEventoCalcObservDesc: TStringField;
    mTbHFEventoCalcQtdDesc: TStringField;
    mTbHFEventoCalcValorDesc: TStringField;
    qryHFEventoCalc: TSQLQuery;
    qryHFEventoCalcANO_MES: TStringField;
    qryHFEventoCalcPARCELA: TStringField;
    qryHFEventoCalcID_SERVIDOR: TIntegerField;
    qryHFEventoCalcID_EVENTO: TIntegerField;
    qryHFEventoCalcQTD: TFMTBCDField;
    qryHFEventoCalcVALOR: TFMTBCDField;
    qryHFEventoCalcOBSERVACAO: TStringField;
    qryHFEventoCalcDESCR_EVENTO: TStringField;
    qryHFEventoCalcTIPO_EVENTO: TStringField;
    qryHFEventoCalcID_CATEG_EVENTO: TIntegerField;
    qryHFEventoCalcCOD_EVENTO: TStringField;
    qryHFEventoCalcTIPO_EVENTO2: TStringField;
    frxReport1: TfrxReport;
    frxConfigOrgao: TfrxDBDataset;
    frxHistFinancServidor: TfrxDBDataset;
    frxmHFEventoCalc: TfrxDBDataset;
    procedure cdsHistFinancServidorAfterScroll(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    pv_sPathRel : String;
    procedure GeraTabEventos(sAnoMes, sParcela: String; iIdServidor: Integer);
  public
    { Public declarations }
    procedure RelHistFinancServidor(sIdServidor, sMesAnoIni, sMesAnoFim: String;
      lVisualizar: Boolean);
  end;

var
  dmTeste: TdmTeste;

implementation

uses gsLib, UtilsDb;

{$R *.dfm}

procedure TdmTeste.cdsHistFinancServidorAfterScroll(DataSet: TDataSet);
begin
{
   GeraTabEventos(DataSet.FieldByName('ano_mes').Value,
                  DataSet.FieldByName('parcela').Value,
                  DataSet.FieldByName('id_servidor').Value);
}
end;

procedure TdmTeste.RelHistFinancServidor(sIdServidor, sMesAnoIni,
  sMesAnoFim: String; lVisualizar: Boolean);
begin

{
  if (Trim(sIdServidor) = '') or
     (Trim(sMesAnoIni) = '') or (Trim(sMesAnoFim) = '') then exit;

  Screen.Cursor := crHourGlass;
  mTbEventoCalc.Open;

  sMesAnoIni := ExtraiPonto(sMesAnoIni);
  sMesAnoFim := ExtraiPonto(sMesAnoFim);

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL.Value := Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoTITULO_REL1.Value:= 'HISTÓRICO FINANCEIRO DO SERVIDOR - PERÍODO DE: '+
      FormatString('99/999',sMesAnoIni)+' A '+FormatString('99/999',sMesAnoFim);
  cdsConfigOrgaoTITULO_REL2.Value:= FormatString('999.999-9',PreencheZeros(sIdServidor,7))+
     ' - '+Pesquisa('SERVIDOR','ID',sIdServidor,'NOME_SERVIDOR','');
  cdsConfigOrgao.Post;

  cdsHistFinancServidor.Close;
  qryHistFinancServidor.ParamByName('pIdServidor').Value := StrToInt(Trim(sIdServidor));
  qryHistFinancServidor.ParamByName('pAnoMesIni').Value  := InverteAnoMes(sMesAnoIni,'1');
  qryHistFinancServidor.ParamByName('pAnoMesFim').Value  := InverteAnoMes(sMesAnoFim,'1');
  cdsHistFinancServidor.Open;

  Screen.Cursor := crDefault;
  frxReport1.LoadFromFile(pv_sPathRel+'HistFinancServidor.fr3');
  //frxReport1.LoadFromFile(pv_sPathRel+'HistServid_Teste.fr3');
  Screen.Cursor := crDefault;
  frxReport1.ShowReport();
}

end;

procedure TdmTeste.DataModuleCreate(Sender: TObject);
begin
{
  mTbEventoCalc.CreateDataSet;
  cdsConfigOrgao.Open;
}
end;

procedure TdmTeste.DataModuleDestroy(Sender: TObject);
begin
{
  mTbEventoCalc.Close;
  cdsHistFinancServidor.Close;
  cdsConfigOrgao.Close;
  FreeAndNil(mTbEventoCalc);
}
end;

procedure TdmTeste.GeraTabEventos(sAnoMes,sParcela: String; iIdServidor: Integer);
begin

{
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

end.
