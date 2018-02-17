unit PrintOutrosRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, FMTBcd, frxClass, frxRich, DB, SqlExpr, Provider, DBClient,
  frxDBSet, StdCtrls, Buttons, ExtCtrls, cxRadioGroup;

type
  TfrmPrintOutrosRel = class(TfrmPadrao1)
    Notebook1: TNotebook;
    rbOpRel101: TcxRadioButton;
    rbOpRel102: TcxRadioButton;
    rbOpRel103: TcxRadioButton;
    rbOpRel104: TcxRadioButton;
    Panel: TPanel;
    btnSetup: TBitBtn;
    btnVisualizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    frxConfigOrgao: TfrxDBDataset;
    cdsConfigOrgao: TClientDataSet;
    provConfigOrgao: TDataSetProvider;
    qryConfigOrgao: TSQLQuery;
    qryPortDiaria: TSQLQuery;
    provPortDiaria: TDataSetProvider;
    cdsPortDiaria: TClientDataSet;
    frxPortDiaria: TfrxDBDataset;
    qryOrdenDespesa: TSQLQuery;
    frxRichObject1: TfrxRichObject;
    frxReport1: TfrxReport;
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    pv_sRel: string[1];
    pv_sId1: string;
    pv_sPathRel: WideString;
    procedure Portaria_de_Diaria(lVisualizar: Boolean);
  public
    { Public declarations }
    procedure executa(sRel,sId1: string);
  end;

var
  frmPrintOutrosRel: TfrmPrintOutrosRel;

implementation

uses gsLib, UtilsDb, ConverteNumEmExtenso;

{$R *.dfm}

procedure TfrmPrintOutrosRel.btnVisualizarClick(Sender: TObject);
begin
  if pv_sRel = '1' then
  begin
     if rbOpRel101.Checked then
        Portaria_de_Diaria(TSpeedButton(Sender).Tag=1);
  end;
end;

procedure TfrmPrintOutrosRel.executa(sRel,sId1: string);
begin
   pv_sRel := sRel;
   pv_sId1 := sId1;
   ShowModal;
end;

procedure TfrmPrintOutrosRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsPortDiaria.Close;
  cdsConfigOrgao.Close;
end;

procedure TfrmPrintOutrosRel.FormCreate(Sender: TObject);
begin
  inherited;
  pv_sPathRel := GetPathRel();
end;

procedure TfrmPrintOutrosRel.FormShow(Sender: TObject);
begin
  inherited;
  if pv_sRel = '1' then
  begin
     Caption := 'IMPRIMIR/VISUALIZAR PORTARIA DE DIÁRIA';
     Notebook1.PageIndex := 0;
  end;
end;

procedure TfrmPrintOutrosRel.Portaria_de_Diaria(lVisualizar: Boolean);
Var
  slNome_CNPJ_Orgao: TStringList;  iTemp: integer;begin
  slNome_CNPJ_Orgao := TStringList.Create;
  cdsConfigOrgao.Close;
  cdsPortDiaria.Close;
  qryPortDiaria.Params[0].Value := StrToInt(pv_sId1);
  cdsPortDiaria.Open;
  iTemp := cdsPortDiaria.RecordCount;
  slNome_CNPJ_Orgao := CNPJ_Razao_Social_UG(
     0,cdsPortDiariaID_SUB_UNID_ORCAM_SERVID.Value);
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;

  cdsConfigOrgaoCNPJ_FTDO.Value    := FormatString('99.999.999/9999-99',     slNome_CNPJ_Orgao[0]);  cdsConfigOrgaoRAZAO_SOCIAL2.Value:= slNome_CNPJ_Orgao[1];
  cdsConfigOrgaoENDER_RODAPE.Value := Trim(cdsConfigOrgaoENDER_LOGRAD.Value)+
    ','+Trim(cdsConfigOrgaoENDER_NUM.Value)+' - '+     Trim(cdsConfigOrgaoENDER_BAIRRO.Value)+' - '+
     Trim(cdsConfigOrgaoENDER_CIDADE.Value)+' - CEP: '+
     FormatString('99.999-999',cdsConfigOrgaoENDER_CEP.Value)+' - '+     cdsConfigOrgaoENDER_UF.Value;
  cdsConfigOrgao.Post;

  qryOrdenDespesa.Close;
  qryOrdenDespesa.Params[0].Value := cdsPortDiariaID_ORDEN_DESPESA.Value;  qryOrdenDespesa.Open;

  cdsPortDiaria.Edit;
  cdsPortDiariaNUM_PORTARIA_FTDO.Value := cdsPortDiariaPORTARIA_NUMERO.Value+    '/'+AnoStr(cdsPortDiariaANO_MES.Value);
  cdsPortDiariaTEXTO_CAB_PORTARIA.Value :=
    qryOrdenDespesaTEXTO_CAB_PORT_DIARIA.Value;

  if cdsPortDiariaINI_PERIODO.Value = cdsPortDiariaFIM_PERIODO.Value then
     cdsPortDiariaPERIODO.Value := 'no dia'+cdsPortDiariaINI_PERIODO.AsString  else
     cdsPortDiariaPERIODO.Value := 'no período de '+
       cdsPortDiariaINI_PERIODO.AsString+' à '+
       cdsPortDiariaFIM_PERIODO.AsString;

{
  cdsPortDiariaVAL_UNIT_FTDO.Value := FormatCurr(',0.00',
     cdsPortDiariaVALOR_UNITARIO.AsCurrency);

  cdsPortDiaria
{
  cdsPortDiariaVAL_TOTAL_FTDO.Value := FormatCurr(',0.00',
     cdsPortDiariaTOTAL_PAGO.AsCurrency);
}

  cdsPortDiariaVAL_UNIT_EXTENSO.Value := NumeroEmExtenso(
    cdsPortDiariaVALOR_UNITARIO.AsCurrency);
  cdsPortDiariaVAL_TOTAL_EXTENSO.Value := NumeroEmExtenso(
    cdsPortDiariaTOTAL_PAGO.AsCurrency);
  cdsPortDiariaTEXTO_FECHA_PORTARIA.Value :=
    Trim(qryOrdenDespesaTEXTO_FECHA_PORT_DIARIA.Value)+', em '+
    DataExtenso(cdsPortDiariaPORTARIA_DATA.AsString)+'.';
  cdsPortDiaria.Post;

  frxReport1.LoadFromFile(pv_sPathRel+'PortariaDiaria.fr3');
  frxReport1.ShowReport();

end;

end.
