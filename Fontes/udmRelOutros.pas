unit udmRelOutros;

interface

uses
  Windows, Messages, SysUtils, Classes, FMTBcd, DB, frxClass, frxDBSet, SqlExpr,
  Provider, DBClient, Forms, Variants, Controls, StrUtils, StdCtrls, frxRich,
  frxDesgn, frxExportPDF, Graphics, Dialogs, Padrao1, Buttons, ComCtrls,
  Mask, frxExportRTF, frxExportXML;

type
  TdmRelOutros = class(TDataModule)
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
    qryInconsistProcess: TSQLQuery;
    provInconsistProcess: TDataSetProvider;
    cdsInconsistProcess: TClientDataSet;
    frxInconsistProcess: TfrxDBDataset;
    frxRichObject1: TfrxRichObject;
    cdsConfigOrgaoMEMO1: TMemoField;
    cdsConfigOrgaoMEMO2: TMemoField;
    cdsConfigOrgaoMSG_CONTRA_CHEQUE: TWideStringField;
    cdsConfigOrgaoRAZAO_SOCIAL2: TStringField;
    cdsConfigOrgaoCNPJ_FTDO: TStringField;
    frxDesigner1: TfrxDesigner;
    frxPDFExport1: TfrxPDFExport;
    cdsInconsistProcessID: TIntegerField;
    cdsInconsistProcessTIPO_PROCESS: TStringField;
    cdsInconsistProcessID_SERVIDOR: TIntegerField;
    cdsInconsistProcessREFERENCIA: TStringField;
    cdsInconsistProcessTIPO_INCONSIST: TStringField;
    cdsInconsistProcessID_SUB_UNID_ORCAM: TIntegerField;
    cdsInconsistProcessDESCRICAO: TStringField;
    cdsInconsistProcessDESCR_TIPO_INCONSIST: TStringField;
    cdsInconsistProcessNOME_SERVIDOR: TStringField;
    qryInconsistProcessID: TIntegerField;
    qryInconsistProcessTIPO_PROCESS: TStringField;
    qryInconsistProcessID_SERVIDOR: TIntegerField;
    qryInconsistProcessREFERENCIA: TStringField;
    qryInconsistProcessTIPO_INCONSIST: TStringField;
    qryInconsistProcessID_SUB_UNID_ORCAM: TIntegerField;
    qryInconsistProcessDESCRICAO: TStringField;
    qryInconsistProcessDESCR_TIPO_INCONSIST: TStringField;
    qryInconsistProcessNOME_SERVIDOR: TStringField;
    qryInconsistProcessDESCR_SUB_UNID_ORCAM: TStringField;
    cdsInconsistProcessDESCR_SUB_UNID_ORCAM: TStringField;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cdsConfigOrgaoAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    pv_sPathRel       : String;
    pv_sEventos       : WideString;
    pv_sAnoMes        : String[6];
    pv_sParcela       : String[1];
  public
    { Public declarations }
    Procedure RelInconsistencias(sReferencia, sTipo: String; sMultiSUO: WideString;
       iServidIni,iServidFim: Integer; lVisualizar: Boolean);
  end;

var
  dmRelOutros: TdmRelOutros;


implementation

uses VarGlobais, udmPrincipal, uTeste, gsLib, UtilsDb;

{$R *.dfm}

procedure TdmRelOutros.cdsConfigOrgaoAfterOpen(DataSet: TDataSet);
begin
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

procedure TdmRelOutros.DataModuleCreate(Sender: TObject);
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
  cdsInconsistProcess.Close;

  pv_sPathRel := GetPathRel();

  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;

end;

procedure TdmRelOutros.DataModuleDestroy(Sender: TObject);
begin
  cdsConfigOrgao.Close;
end;

Procedure TdmRelOutros.RelInconsistencias(sReferencia, sTipo: String;
  sMultiSUO: WideString; iServidIni,iServidFim: Integer; lVisualizar: Boolean);
Var
  sDescrTipoProcess: string;
begin

  sMultiSUO := AjustaTextoParamVarios(sMultiSUO);
  if sTipo = '1' then
     sDescrTipoProcess := 'CÁLCULO DA FOLHA DE PAGTO';

  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTITULO_REL1.Value:= 'RELATÓRIOS DE INCONSISTÊNCIAS DO PROCESSAMENTO';
  cdsConfigOrgaoTITULO_REL2.Value:= sDescrTipoProcess+' - REF. : '+glb_sDescrMesAnoTrab;
  cdsConfigOrgao.Post;

  cdsInconsistProcess.Close;
  qryInconsistProcess.ParamByName('pRef').Value      := sReferencia;
  qryInconsistProcess.ParamByName('pTipo').Value     := sTipo;
  qryInconsistProcess.ParamByName('pMultiSUO').Value := sMultiSUO;
  qryInconsistProcess.ParamByName('pServidIni').Value:= iServidIni;
  qryInconsistProcess.ParamByName('pServidFim').Value:= iServidFim;
  cdsInconsistProcess.Open;

  if cdsInconsistProcess.RecordCount = 0 then
  begin
     Mensagem('Não há Inconsistências p/ relatar ...',
        'Parabéns !!!',MB_OK+MB_ICONEXCLAMATION);
     exit;
  end;

  frxReport1.LoadFromFile(pv_sPathRel+'InconsistProcess.fr3');
  Screen.Cursor := crDefault;

  frxReport1.PrepareReport(True);
  if lVisualizar then
     frxReport1.ShowReport()
  else
     frxReport1.Print;

end;

end.
