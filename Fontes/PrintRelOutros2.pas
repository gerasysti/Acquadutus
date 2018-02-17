unit PrintRelOutros2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, frxDesgn, frxClass, frxExportPDF, SqlExpr, Provider,
  DBClient, frxDBSet, StdCtrls, DBCtrls;

type
  TfrmPrintRelOutros2 = class(TForm)
    frxConfigOrgao: TfrxDBDataset;
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
    provConfigOrgao: TDataSetProvider;
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
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxDesigner1: TfrxDesigner;
    qryFichaCadServidor: TSQLQuery;
    qryFichaCadServidorID: TIntegerField;
    qryFichaCadServidorNOME_SERVIDOR: TStringField;
    qryFichaCadServidorMATRICULA: TIntegerField;
    qryFichaCadServidorPIS_PASEP_PF: TStringField;
    qryFichaCadServidorCPF_PF: TStringField;
    qryFichaCadServidorDESCR_EFETIVO: TStringField;
    qryFichaCadServidorDT_CONCURSO: TDateField;
    qryFichaCadServidorDT_ADMISSAO: TDateField;
    qryFichaCadServidorDT_READMISSAO: TDateField;
    qryFichaCadServidorID_SUB_UNID_ORCAMENT: TIntegerField;
    qryFichaCadServidorDESCR_SUB_UNID_ORCAMENT: TStringField;
    qryFichaCadServidorID_UNID_LOTACAO: TIntegerField;
    qryFichaCadServidorDESCR_UNID_LOTACAO: TStringField;
    qryFichaCadServidorID_CARGO_ORIGEM: TIntegerField;
    qryFichaCadServidorDESCR_CARGO_ORIGEM: TStringField;
    qryFichaCadServidorID_CARGO_ATUAL: TIntegerField;
    qryFichaCadServidorDESCR_CARGO_ATUAL: TStringField;
    qryFichaCadServidorCARGA_HOR_MENSAL: TIntegerField;
    qryFichaCadServidorID_DEPTO: TIntegerField;
    qryFichaCadServidorDESCR_DEPTO: TStringField;
    qryFichaCadServidorID_EST_FUNCIONAL: TIntegerField;
    qryFichaCadServidorDESCR_EST_FUNCIONAL: TStringField;
    qryFichaCadServidorID_ESCOLARIDADE: TIntegerField;
    qryFichaCadServidorDESCR_ESCOLARIDADE: TStringField;
    qryFichaCadServidorFORMACAO_CONS: TStringField;
    qryFichaCadServidorOBSERVACAO: TMemoField;
    qryFichaCadServidorSEXO: TStringField;
    qryFichaCadServidorDT_NASCIMENTO: TDateField;
    qryFichaCadServidorNATURALID: TStringField;
    qryFichaCadServidorDESCR_ESTADO_CIVIL: TStringField;
    qryFichaCadServidorRG_NUM: TStringField;
    qryFichaCadServidorRG_ORGAO_EMISSOR: TStringField;
    qryFichaCadServidorRG_UF: TStringField;
    qryFichaCadServidorRG_DT_EMISSAO: TDateField;
    qryFichaCadServidorTIT_ELEITOR_NUM: TStringField;
    qryFichaCadServidorTIT_ELEITOR_ZONA: TStringField;
    qryFichaCadServidorTIT_ELEITOR_SECAO: TStringField;
    qryFichaCadServidorRESERVISTA: TStringField;
    qryFichaCadServidorCNH_NUM: TStringField;
    qryFichaCadServidorCNH_DT_VENCTO: TDateField;
    qryFichaCadServidorFILIACAO_PAI: TStringField;
    qryFichaCadServidorFILIACAO_MAE: TStringField;
    qryFichaCadServidorCONJUGE_NOME: TStringField;
    qryFichaCadServidorCONJUGE_CPF: TStringField;
    qryFichaCadServidorENDER_LOGRAD: TStringField;
    qryFichaCadServidorENDER_NUM: TStringField;
    qryFichaCadServidorENDER_BAIRRO: TStringField;
    qryFichaCadServidorENDER_CIDADE: TStringField;
    qryFichaCadServidorENDER_UF: TStringField;
    qryFichaCadServidorTELEFONE: TStringField;
    qryFichaCadServidorFOTO: TBlobField;
    provFichaCadServidor: TDataSetProvider;
    cdsFichaCadServidor: TClientDataSet;
    cdsFichaCadServidorID: TIntegerField;
    cdsFichaCadServidorNOME_SERVIDOR: TStringField;
    cdsFichaCadServidorMATRICULA: TIntegerField;
    cdsFichaCadServidorPIS_PASEP_PF: TStringField;
    cdsFichaCadServidorCPF_PF: TStringField;
    cdsFichaCadServidorDESCR_EFETIVO: TStringField;
    cdsFichaCadServidorDT_CONCURSO: TDateField;
    cdsFichaCadServidorDT_ADMISSAO: TDateField;
    cdsFichaCadServidorDT_READMISSAO: TDateField;
    cdsFichaCadServidorID_SUB_UNID_ORCAMENT: TIntegerField;
    cdsFichaCadServidorDESCR_SUB_UNID_ORCAMENT: TStringField;
    cdsFichaCadServidorID_UNID_LOTACAO: TIntegerField;
    cdsFichaCadServidorDESCR_UNID_LOTACAO: TStringField;
    cdsFichaCadServidorID_CARGO_ORIGEM: TIntegerField;
    cdsFichaCadServidorDESCR_CARGO_ORIGEM: TStringField;
    cdsFichaCadServidorID_CARGO_ATUAL: TIntegerField;
    cdsFichaCadServidorDESCR_CARGO_ATUAL: TStringField;
    cdsFichaCadServidorCARGA_HOR_MENSAL: TIntegerField;
    cdsFichaCadServidorID_DEPTO: TIntegerField;
    cdsFichaCadServidorDESCR_DEPTO: TStringField;
    cdsFichaCadServidorID_EST_FUNCIONAL: TIntegerField;
    cdsFichaCadServidorDESCR_EST_FUNCIONAL: TStringField;
    cdsFichaCadServidorID_ESCOLARIDADE: TIntegerField;
    cdsFichaCadServidorDESCR_ESCOLARIDADE: TStringField;
    cdsFichaCadServidorFORMACAO_CONS: TStringField;
    cdsFichaCadServidorOBSERVACAO: TMemoField;
    cdsFichaCadServidorSEXO: TStringField;
    cdsFichaCadServidorDT_NASCIMENTO: TDateField;
    cdsFichaCadServidorNATURALID: TStringField;
    cdsFichaCadServidorDESCR_ESTADO_CIVIL: TStringField;
    cdsFichaCadServidorRG_NUM: TStringField;
    cdsFichaCadServidorRG_ORGAO_EMISSOR: TStringField;
    cdsFichaCadServidorRG_UF: TStringField;
    cdsFichaCadServidorRG_DT_EMISSAO: TDateField;
    cdsFichaCadServidorTIT_ELEITOR_NUM: TStringField;
    cdsFichaCadServidorTIT_ELEITOR_ZONA: TStringField;
    cdsFichaCadServidorTIT_ELEITOR_SECAO: TStringField;
    cdsFichaCadServidorRESERVISTA: TStringField;
    cdsFichaCadServidorCNH_NUM: TStringField;
    cdsFichaCadServidorCNH_DT_VENCTO: TDateField;
    cdsFichaCadServidorFILIACAO_PAI: TStringField;
    cdsFichaCadServidorFILIACAO_MAE: TStringField;
    cdsFichaCadServidorCONJUGE_NOME: TStringField;
    cdsFichaCadServidorCONJUGE_CPF: TStringField;
    cdsFichaCadServidorENDER_LOGRAD: TStringField;
    cdsFichaCadServidorENDER_NUM: TStringField;
    cdsFichaCadServidorENDER_BAIRRO: TStringField;
    cdsFichaCadServidorENDER_CIDADE: TStringField;
    cdsFichaCadServidorENDER_UF: TStringField;
    cdsFichaCadServidorTELEFONE: TStringField;
    cdsFichaCadServidorFOTO: TBlobField;
    cdsFichaCadServidorID_FTDO: TStringField;
    cdsFichaCadServidorPIS_PASEP_FTDO: TStringField;
    cdsFichaCadServidorCPF_FTDO: TStringField;
    cdsFichaCadServidorCART_IDENTIDADE: TStringField;
    cdsFichaCadServidorCART_HABILITACAO: TStringField;
    cdsFichaCadServidorENDERECO: TStringField;
    frxFichaCadServidor: TfrxDBDataset;
    qryItemFichaCad: TSQLQuery;
    qryItemFichaCadR_ITEM: TStringField;
    qryItemFichaCadR_DESCR_ITEM: TStringField;
    qryItemFichaCadR_TIT_COL1: TStringField;
    qryItemFichaCadR_TIT_COL2: TStringField;
    qryItemFichaCadR_TIT_COL3: TStringField;
    qryItemFichaCadR_TIT_COL4: TStringField;
    qryItemFichaCadR_TIT_COL5: TStringField;
    qryItemFichaCadR_TIT_COL6: TStringField;
    qryItemFichaCadR_TIT_COL7: TStringField;
    qryItemFichaCadR_COL1: TIntegerField;
    qryItemFichaCadR_COL2: TStringField;
    qryItemFichaCadR_COL3: TStringField;
    qryItemFichaCadR_COL4: TStringField;
    qryItemFichaCadR_COL5: TStringField;
    qryItemFichaCadR_COL6: TStringField;
    qryItemFichaCadR_COL7: TStringField;
    provItemFichaCad: TDataSetProvider;
    cdsItemFichaCad: TClientDataSet;
    cdsItemFichaCadR_ITEM: TStringField;
    cdsItemFichaCadR_DESCR_ITEM: TStringField;
    cdsItemFichaCadR_TIT_COL1: TStringField;
    cdsItemFichaCadR_TIT_COL2: TStringField;
    cdsItemFichaCadR_TIT_COL3: TStringField;
    cdsItemFichaCadR_TIT_COL4: TStringField;
    cdsItemFichaCadR_TIT_COL5: TStringField;
    cdsItemFichaCadR_TIT_COL6: TStringField;
    cdsItemFichaCadR_TIT_COL7: TStringField;
    cdsItemFichaCadR_COL1: TIntegerField;
    cdsItemFichaCadR_COL2: TStringField;
    cdsItemFichaCadR_COL3: TStringField;
    cdsItemFichaCadR_COL4: TStringField;
    cdsItemFichaCadR_COL5: TStringField;
    cdsItemFichaCadR_COL6: TStringField;
    cdsItemFichaCadR_COL7: TStringField;
    frxItemFichaCad: TfrxDBDataset;
    frxFichaCadObs: TfrxDBDataset;
    mTbFichaCadObs: TClientDataSet;
    mTbFichaCadObsITEM: TStringField;
    mTbFichaCadObsDESCR_ITEM: TStringField;
    mTbFichaCadObsTEXTO: TStringField;
    DBMemo1: TDBMemo;
    DataSource1: TDataSource;
    mTbFichaCadObsLINHA: TIntegerField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    pv_sPathRel: WideString;
  public
    { Public declarations }
     procedure RelFichaCadIndividual(sIdServidor: String; lVisualizar: Boolean);
  end;

var
  frmPrintRelOutros2: TfrmPrintRelOutros2;

implementation

uses gsLib, VarGlobais;

{$R *.dfm}

procedure TfrmPrintRelOutros2.FormCreate(Sender: TObject);
Var
  iConta: Integer;
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
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL.Value :=
  Criptografa(cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoNOME_SYS.Value:= glb_sSistema+' - Ver. '+glb_sVersao;
  cdsConfigOrgao.Post;
  pv_sPathRel := GetPathRel();
end;

procedure TfrmPrintRelOutros2.RelFichaCadIndividual(sIdServidor: String;
   lVisualizar: Boolean);
Var
  iConta: Integer;
begin
  Screen.Cursor := crHourGlass;

  mTbFichaCadObs.CreateDataSet;

  sIdServidor := Trim(ExtraiPonto(sIdServidor));
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTITULO_REL1.Value:= 'DEPARTAMENTO DE RECURSOS HUMANOS';
  cdsConfigOrgaoTITULO_REL2.Value:= 'FICHA CADASTRAL DO SERVIDOR';
  cdsConfigOrgao.Post;

  cdsFichaCadServidor.Close;
  qryFichaCadServidor.ParamByName('pServidor').AsString:= sIdServidor;
  cdsFichaCadServidor.Open;
  cdsFichaCadServidor.Edit;
  cdsFichaCadServidorID_FTDO.Value := FormatString('99999-9',
     cdsFichaCadServidorID.AsString);
  cdsFichaCadServidorPIS_PASEP_FTDO.Value := FormatString('999.99999-99-9',
     cdsFichaCadServidorPIS_PASEP_PF.Value);
  cdsFichaCadServidorCPF_FTDO.Value := FormatString('999.999.999-99',
     cdsFichaCadServidorCPF_PF.Value);
  cdsFichaCadServidorCART_IDENTIDADE.Value :=
     cdsFichaCadServidorRG_NUM.Value+' / '+
     cdsFichaCadServidorRG_ORGAO_EMISSOR.Value+'-'+
     cdsFichaCadServidorRG_UF.Value+' - '+
     ValData(cdsFichaCadServidorRG_DT_EMISSAO.AsString);
  cdsFichaCadServidorCART_HABILITACAO.Value :=
     cdsFichaCadServidorCNH_NUM.Value+' - '+
     ValData(cdsFichaCadServidorCNH_DT_VENCTO.AsString);
  cdsFichaCadServidorENDERECO.Value := cdsFichaCadServidorENDER_LOGRAD.AsString+
     ', '+cdsFichaCadServidorENDER_NUM.Value+' - '+
     cdsFichaCadServidorENDER_BAIRRO.Value+' - '+
     cdsFichaCadServidorENDER_CIDADE.Value+'-'+
     cdsFichaCadServidorENDER_UF.Value;
  cdsFichaCadServidor.Post;

  mTbFichaCadObs.Open;
  for iConta := 0 to DBMemo1.Lines.Count - 1 do
  begin
     if Trim(DBMemo1.Lines[iConta]) <> '' then
     begin
        mTbFichaCadObs.Insert;
        mTbFichaCadObsITEM.Value := '09';
        mTbFichaCadObsDESCR_ITEM.Value := 'OBSERVAÇÕES';
        mTbFichaCadObsLINHA.Value := iConta;
        mTbFichaCadObsTEXTO.Value := DBMemo1.Lines[iConta];
        mTbFichaCadObs.Post;
     end;
  end;
  mTbFichaCadObs.IndexFieldNames := 'LINHA';
  mTbFichaCadObs.First;

  cdsItemFichaCad.Close;
  qryItemFichaCad.ParamByName('pServidor').AsString:= sIdServidor;
  cdsItemFichaCad.Open;

  Screen.Cursor := crDefault;

  frxReport1.LoadFromFile(pv_sPathRel+'FichaCadServidor.fr3');
  Screen.Cursor := crDefault;
  frxReport1.PrepareReport(True);
  if lVisualizar then
     frxReport1.ShowReport()
  else
     frxReport1.Print;

end;


end.
