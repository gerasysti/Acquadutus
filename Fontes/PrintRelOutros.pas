unit PrintRelOutros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, StdCtrls, cxRadioGroup, ExtCtrls, Buttons, FMTBcd, frxRich,
  frxClass, frxDBSet, DBClient, Provider, DB, SqlExpr, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxCheckBox, frxDesgn, frxExportPDF;

type
  TfrmPrintRelOutros = class(TfrmPadrao1)
    Panel: TPanel;
    Notebook1: TNotebook;
    rbOpRel101: TcxRadioButton;
    rbOpRel102: TcxRadioButton;
    rbOpRel103: TcxRadioButton;
    rbOpRel104: TcxRadioButton;
    qryPortDiaria: TSQLQuery;
    provPortDiaria: TDataSetProvider;
    frxPortDiaria: TfrxDBDataset;
    qryOrdenDespesa: TSQLQuery;
    qryConfigOrgao: TSQLQuery;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    frxConfigOrgao: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxRichObject1: TfrxRichObject;
    cdsPortDiaria: TClientDataSet;
    qryPortDiariaID: TIntegerField;
    qryPortDiariaID_SERVIDOR: TIntegerField;
    qryPortDiariaPORTARIA_NUMERO: TStringField;
    qryPortDiariaPORTARIA_DATA: TDateField;
    qryPortDiariaMOTIVO: TStringField;
    qryPortDiariaDESTINO: TStringField;
    qryPortDiariaINI_PERIODO: TDateField;
    qryPortDiariaFIM_PERIODO: TDateField;
    qryPortDiariaQTD_DIAS: TLargeintField;
    qryPortDiariaVALOR_UNITARIO: TFMTBCDField;
    qryPortDiariaTOTAL_PAGO: TFMTBCDField;
    qryPortDiariaDATA_PAGTO: TDateField;
    qryPortDiariaANO_MES: TStringField;
    qryPortDiariaID_CARGO_SERVID: TIntegerField;
    qryPortDiariaID_SUB_UNID_ORCAM_SERVID: TIntegerField;
    qryPortDiariaID_ORDEN_DESPESA: TIntegerField;
    qryPortDiariaOBSERVACAO: TMemoField;
    qryPortDiariaNOME_SERVIDOR: TStringField;
    qryPortDiariaNOME_ORDEN_DESPESA: TStringField;
    qryPortDiariaDESCR_SUB_UNID_ORCAM: TStringField;
    qryPortDiariaDESCR_CARGO_SERVID: TStringField;
    cdsPortDiariaID: TIntegerField;
    cdsPortDiariaID_SERVIDOR: TIntegerField;
    cdsPortDiariaPORTARIA_NUMERO: TStringField;
    cdsPortDiariaPORTARIA_DATA: TDateField;
    cdsPortDiariaMOTIVO: TStringField;
    cdsPortDiariaDESTINO: TStringField;
    cdsPortDiariaINI_PERIODO: TDateField;
    cdsPortDiariaFIM_PERIODO: TDateField;
    cdsPortDiariaQTD_DIAS: TLargeintField;
    cdsPortDiariaVALOR_UNITARIO: TFMTBCDField;
    cdsPortDiariaTOTAL_PAGO: TFMTBCDField;
    cdsPortDiariaDATA_PAGTO: TDateField;
    cdsPortDiariaANO_MES: TStringField;
    cdsPortDiariaID_CARGO_SERVID: TIntegerField;
    cdsPortDiariaID_SUB_UNID_ORCAM_SERVID: TIntegerField;
    cdsPortDiariaID_ORDEN_DESPESA: TIntegerField;
    cdsPortDiariaOBSERVACAO: TMemoField;
    cdsPortDiariaNOME_SERVIDOR: TStringField;
    cdsPortDiariaNOME_ORDEN_DESPESA: TStringField;
    cdsPortDiariaDESCR_SUB_UNID_ORCAM: TStringField;
    cdsPortDiariaDESCR_CARGO_SERVID: TStringField;
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
    qryConfigOrgaoLOGO_ADMIN: TBlobField;
    qryConfigOrgaoDESCR_TIPO_ORGAO: TStringField;
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
    cdsConfigOrgaoCNPJ_FTDO: TStringField;
    cdsConfigOrgaoENDER_RODAPE: TWideStringField;
    qryOrdenDespesaID: TIntegerField;
    qryOrdenDespesaNOME: TStringField;
    qryOrdenDespesaCARGO: TStringField;
    qryOrdenDespesaSEXO: TStringField;
    qryOrdenDespesaATIVO: TStringField;
    qryOrdenDespesaTEXTO_CAB_PORT_DIARIA: TMemoField;
    qryOrdenDespesaTEXTO_FECHA_PORT_DIARIA: TStringField;
    cdsPortDiariaNUM_PORTARIA_FTDO: TStringField;
    cdsPortDiariaTEXTO_CAB_PORTARIA: TMemoField;
    cdsPortDiariaPERIODO: TStringField;
    cdsPortDiariaVAL_UNIT_FTDO: TStringField;
    cdsPortDiariaVAL_TOTAL_FTDO: TStringField;
    cdsPortDiariaVAL_UNIT_EXTENSO: TWideStringField;
    cdsPortDiariaVAL_TOTAL_EXTENSO: TWideStringField;
    cdsPortDiariaTEXTO_FECHA_PORTARIA: TWideStringField;
    cdsPortDiariaCARGO_ORDEN_DESPESA: TStringField;
    cdsConfigOrgaoRAZAO_SOCIAL2: TStringField;
    cdsPortDiariaID_SERVID_FTDO: TStringField;
    cdsPortDiariaCPF_FTDO: TStringField;
    cdsConfigOrgaoTIPO_PODER: TStringField;
    cdsPortDiariaDT_PAGTO_EXTENSO: TStringField;
    chkDtPagtoBranco: TcxCheckBox;
    frxPDFExport1: TfrxPDFExport;
    frxDesigner1: TfrxDesigner;
    btnSair: TBitBtn;
    btnImprimir: TBitBtn;
    btnVisualizar: TBitBtn;
    btnSetup: TBitBtn;
    qryServidor: TSQLQuery;
    qryServidorID_SUB_UNID_ORCAMENT: TIntegerField;
    qryServidorDESCR_SUB_UNID_ORCAMENT: TStringField;
    qryServidorID_CARGO_ATUAL: TIntegerField;
    qryServidorDESCR_CARGO_ATUAL: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
    procedure rbOpRel101Enter(Sender: TObject);
    procedure btnSetupClick(Sender: TObject);
  private
    { Private declarations }
    pv_sPathRel: WideString;
    pv_sRel: string[1];
    pv_sId1: string;
    procedure Portaria_de_Diaria(lVisualizar: Boolean);
  public
    { Public declarations }
    procedure executa(sRel, sId1: string);
  end;

var
  frmPrintRelOutros: TfrmPrintRelOutros;

implementation

uses gsLib, ConverteNumEmExtenso, UtilsDb, VarGlobais;

{$R *.dfm}

procedure TfrmPrintRelOutros.btnSetupClick(Sender: TObject);
begin
  frxReport1.DesignReport();
end;

procedure TfrmPrintRelOutros.btnVisualizarClick(Sender: TObject);
begin
  if pv_sRel = '1' then
  begin
     Portaria_de_Diaria(TSpeedButton(Sender).Tag=1);
  end;
end;

procedure TfrmPrintRelOutros.executa(sRel,sId1: string);
begin
   pv_sRel := sRel;
   pv_sId1 := sId1;
   ShowModal;
end;

procedure TfrmPrintRelOutros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsPortDiaria.Close;
  cdsConfigOrgao.Close;
end;

procedure TfrmPrintRelOutros.FormCreate(Sender: TObject);
begin
  inherited;
  pv_sPathRel := GetPathRel();
end;

procedure TfrmPrintRelOutros.FormShow(Sender: TObject);
Var
   sOperConfigRel: string[1];
begin
  inherited;
  sOperConfigRel := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperExecut),
     'CONFIG_RELS','');
  btnSetup.Enabled := (sOperConfigRel='S');
  if pv_sRel = '1' then
  begin
     Caption := 'IMPRIMIR/VISUALIZAR PORTARIA DE DIÁRIA';
     Notebook1.PageIndex := 0;
  end;
end;

procedure TfrmPrintRelOutros.Portaria_de_Diaria(lVisualizar: Boolean);
Var
   slNomeCNPJ_Orgao: TStringList;
   iTemp: Integer;
   sIdPessoaFisica: string;
   sCPF_Servid: string[11];
begin
   slNomeCNPJ_Orgao:= TStringList.Create;

   cdsConfigOrgao.Close;
   cdsConfigOrgao.Open;

   cdsPortDiaria.Close;
   qryPortDiaria.Params[0].Value := StrToInt(pv_sId1);
   cdsPortDiaria.Open;
   if cdsPortDiariaID_SUB_UNID_ORCAM_SERVID.IsNull then
   begin
      qryServidor.Close;
      qryServidor.ParamByName('pServidor').Value :=
         cdsPortDiariaID_SERVIDOR.Value;
      qryServidor.Open;
      cdsPortDiaria.Edit;
      cdsPortDiariaID_SUB_UNID_ORCAM_SERVID.Value :=
         qryServidorID_SUB_UNID_ORCAMENT.Value;
      cdsPortDiariaDESCR_SUB_UNID_ORCAM.Value :=
         qryServidorDESCR_SUB_UNID_ORCAMENT.Value;
      cdsPortDiariaID_CARGO_SERVID.Value :=
         qryServidorID_CARGO_ATUAL.Value;
      cdsPortDiariaDESCR_CARGO_SERVID.Value :=
         qryServidorDESCR_CARGO_ATUAL.Value;
      cdsPortDiaria.Post;
   end;

   iTemp := cdsPortDiaria.RecordCount;

   slNomeCNPJ_Orgao := CNPJ_Razao_Social_UG(0,
      cdsPortDiariaID_SUB_UNID_ORCAM_SERVID.Value);

   qryOrdenDespesa.Close;
   qryOrdenDespesa.Params[0].Value := cdsPortDiariaID_ORDEN_DESPESA.Value;
   qryOrdenDespesa.Open;

   cdsConfigOrgao.Edit;
   cdsConfigOrgaoCNPJ_FTDO.Value := FormatString('99.999.999/9999-99',
      slNomeCNPJ_Orgao[0]);
   cdsConfigOrgaoRAZAO_SOCIAL2.Value := slNomeCNPJ_Orgao[1];
   cdsConfigOrgaoENDER_RODAPE.Value  := Trim(cdsConfigOrgaoENDER_LOGRAD.Value)+','+
      cdsConfigOrgaoENDER_NUM.Value+' - '+
      cdsConfigOrgaoENDER_BAIRRO.Value+' - '+
      cdsConfigOrgaoENDER_CIDADE.Value+' - CEP: '+
      FormatString('99.999-999',cdsConfigOrgaoENDER_CEP.Value)+' - '+
      cdsConfigOrgaoENDER_UF.Value;
   if (cdsConfigOrgaoTIPO_ORGAO.Value = 1) or
      (cdsConfigOrgaoTIPO_ORGAO.Value = 2) then
      cdsConfigOrgaoTIPO_PODER.Value := 'deste Poder Executivo'
   else if cdsConfigOrgaoTIPO_ORGAO.Value = 3 then
      cdsConfigOrgaoTIPO_PODER.Value := 'deste Poder Legislativo'
   else if cdsConfigOrgaoTIPO_ORGAO.Value = 4 then
      cdsConfigOrgaoTIPO_PODER.Value := 'desta Autarquia Municipal';

   cdsConfigOrgao.Post;

   cdsPortDiaria.Edit;
   cdsPortDiariaID_SERVID_FTDO.Value := FormatString('999.999-9',
      cdsPortDiariaID_SERVIDOR.AsString);
   cdsPortDiariaNUM_PORTARIA_FTDO.Value :=
      cdsPortDiariaPORTARIA_NUMERO.Value+'/'+
      AnoStr(cdsPortDiariaANO_MES.Value);
   sIdPessoaFisica := Pesquisa('SERVIDOR','ID',cdsPortDiariaID_SERVIDOR.AsString,
      'ID_PESSOA_FISICA','');
   sCPF_Servid := Pesquisa('PESSOA_FISICA','ID',sIdPessoaFisica,'CPF','');
   cdsPortDiariaCPF_FTDO.Value := FormatString('999.999.999-99',sCPF_Servid);
   cdsPortDiariaTEXTO_CAB_PORTARIA.Value :=
      qryOrdenDespesaTEXTO_CAB_PORT_DIARIA.Value;
   if cdsPortDiariaINI_PERIODO.Value = cdsPortDiariaFIM_PERIODO.Value then
      cdsPortDiariaPERIODO.Value := 'no dia '+cdsPortDiariaINI_PERIODO.AsString
   else
      cdsPortDiariaPERIODO.Value := 'no período de '+
         cdsPortDiariaINI_PERIODO.AsString+' à '+
         cdsPortDiariaFIM_PERIODO.AsString;
   cdsPortDiariaVAL_UNIT_FTDO.Value :=
      FormatCurr(',0.00',cdsPortDiariaVALOR_UNITARIO.AsCurrency);
   cdsPortDiariaVAL_TOTAL_FTDO.Value :=
      FormatCurr(',0.00',cdsPortDiariaTOTAL_PAGO.AsCurrency);
   cdsPortDiariaVAL_UNIT_EXTENSO.Value :=
      '('+Trim(NumeroEmExtenso(cdsPortDiariaVALOR_UNITARIO.AsCurrency))+')';
   cdsPortDiariaVAL_TOTAL_EXTENSO.Value :=
      '('+Trim(NumeroEmExtenso(cdsPortDiariaTOTAL_PAGO.AsCurrency))+')';
   cdsPortDiariaTEXTO_FECHA_PORTARIA.Value :=
      qryOrdenDespesaTEXTO_FECHA_PORT_DIARIA.Value+', em '+
      DataExtenso(cdsPortDiariaPORTARIA_DATA.AsString);
   cdsPortDiariaCARGO_ORDEN_DESPESA.Value :=
      qryOrdenDespesaCARGO.Value;
   if rbOpRel102.Checked then
      if chkDtPagtoBranco.Checked then
         cdsPortDiariaDT_PAGTO_EXTENSO.Value := cdsConfigOrgaoENDER_CIDADE.Value+
            '-'+cdsConfigOrgaoENDER_UF.Value+
            ', em _______ de _______________________ de __________.'
      else
         cdsPortDiariaDT_PAGTO_EXTENSO.Value := cdsConfigOrgaoENDER_CIDADE.Value+
            '-'+cdsConfigOrgaoENDER_UF.Value+', em '+DataExtenso(
            cdsPortDiariaDATA_PAGTO.AsString);
   cdsPortDiaria.Post;

   if rbOpRel101.Checked then
      frxReport1.LoadFromFile(pv_sPathRel+'PortariaDiaria.fr3')
   else if rbOpRel102.Checked then
      frxReport1.LoadFromFile(pv_sPathRel+'ReciboPagtoDiaria.fr3');

  frxReport1.PrepareReport(True);
  if lVisualizar then
     frxReport1.ShowReport()
  else
     frxReport1.Print;

end;


procedure TfrmPrintRelOutros.rbOpRel101Enter(Sender: TObject);
begin
  chkDtPagtoBranco.Enabled := (TcxRadioButton(Sender).Tag = 2);
end;

end.
