unit HistoricoFaturaCalcPaga;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  DBClient, Provider, SqlExpr, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, ExtCtrls, cxContainer, Buttons, cxTextEdit, cxMaskEdit,
  cxLabel, fmeUnidConsumidora, cxCurrencyEdit, frxClass, frxDBSet, frxExportXML,
  frxExportRTF, frxExportPDF, StrUtils, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator;

type
  TfrmHistFatura = class(TfrmPadrao1)
    Bevel1: TBevel;
    Panel1: TPanel;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    qryUnidConsum: TSQLQuery;
    qryUnidConsumNOME_PESSOA: TStringField;
    qryUnidConsumCPF_CNPJ_FTDO: TStringField;
    qryUnidConsumDT_LIGACAO: TDateField;
    qryUnidConsumNUM_LIGACAO: TStringField;
    qryUnidConsumENDER_DESCR_LOGRAD: TStringField;
    qryUnidConsumENDER_UC_NUM_LETRA: TStringField;
    qryUnidConsumENDER_DESCR_BAIRRO: TStringField;
    qryUnidConsumENDER_DESCR_DISTRITO: TStringField;
    qryUnidConsumDESCR_TIPO_UNID_CONSUM: TStringField;
    qryUnidConsumDESCR_SITUACAO: TStringField;
    qryUnidConsumDT_ULT_CORTE: TDateField;
    qryUnidConsumDT_ULT_RELIG: TDateField;
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
    dsHistFatura: TDataSource;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    GridTableDBTableView1Column5: TcxGridDBColumn;
    cdsHistFaturaR_DESCR_SITUACAO: TStringField;
    GridTableDBTableView1Column6: TcxGridDBColumn;
    GridTableDBTableView1Column9: TcxGridDBColumn;
    frmeUnidConsum1: TfrmeUnidConsum;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edMesAnoIni: TcxMaskEdit;
    edEndereco: TcxTextEdit;
    cxLabel8: TcxLabel;
    edCategoria: TcxTextEdit;
    edUltCorte: TcxTextEdit;
    edUltRelig: TcxTextEdit;
    edDtLigacao: TcxTextEdit;
    edNumLigacao: TcxTextEdit;
    edSituacao: TcxTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    btnListar: TBitBtn;
    edQtdFatEmAberto: TcxCurrencyEdit;
    edValTotalEmAberto: TcxCurrencyEdit;
    btnLimpar: TButton;
    btnImpHist: TBitBtn;
    btnImpDeb: TBitBtn;
    btnImp2ViaFat: TBitBtn;
    btnCancelFat: TBitBtn;
    btnDetFat: TBitBtn;
    BitBtn5: TBitBtn;
    cdsHistFaturaR_SITUACAO: TStringField;
    frxReport1: TfrxReport;
    frxHistFatura: TfrxDBDataset;
    qryConfigOrgao: TSQLQuery;
    frxConfigOrgao: TfrxDBDataset;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    qryUnidConsumENDER_ID_DISTRITO: TIntegerField;
    qryUnidConsumENDER_ID_BAIRRO: TIntegerField;
    qryUnidConsumENDER_ID_LOGRAD: TIntegerField;
    qryConfigOrgaoRAZAO_SOCIAL: TStringField;
    qryConfigOrgaoTIPO_FATURA: TStringField;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoTIPO_FATURA: TStringField;
    cdsConfigOrgaoRAZAO_SOCIAL2: TStringField;
    cdsConfigOrgaoNOME_SISTEMA: TStringField;
    cdsConfigOrgaoTITULO_REL1: TStringField;
    cdsConfigOrgaoQTD_FAT_ABERTO: TIntegerField;
    cdsConfigOrgaoTOT_FAT_ABERTO: TCurrencyField;
    btnHistCorteRelig: TButton;
    qryUnidConsumENDER_ID_DISTRITO2: TIntegerField;
    qryUnidConsumENDER_ID_BAIRRO2: TIntegerField;
    qryUnidConsumENDER_ID_LOGRAD2: TIntegerField;
    qryUnidConsumENDER_DESCR_LOGRAD2: TStringField;
    qryUnidConsumENDER_UC_NUM_LETRA2: TStringField;
    qryUnidConsumENDER_DESCR_BAIRRO2: TStringField;
    qryUnidConsumENDER_DESCR_DISTRITO2: TStringField;
    cdsHistFaturaR_VAL_DEBITO: TFMTBCDField;
    cdsHistFaturaR_SIT_CONT: TIntegerField;
    btnDecAnualQuita: TBitBtn;
    procedure frmeUnidConsum1edIdExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnListarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure frmeUnidConsum1edIdPropertiesChange(Sender: TObject);
    procedure frmeUnidConsum1sb1Click(Sender: TObject);
    procedure btnDetFatClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnImpHistClick(Sender: TObject);
    procedure btnImp2ViaFatClick(Sender: TObject);
    procedure btnImpDebClick(Sender: TObject);
    procedure cdsConfigOrgaoCalcFields(DataSet: TDataSet);
    procedure cdsHistFaturaAfterScroll(DataSet: TDataSet);
    procedure btnCancelFatClick(Sender: TObject);
    procedure btnHistCorteReligClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnDecAnualQuitaClick(Sender: TObject);
  private
    { Private declarations }
    pv_sPathRel : string;
    procedure HabilitaBotoes(lOpcao: Boolean);
  public
    { Public declarations }
    pb_iIdUnidConsum: Integer;
  end;

var
  frmHistFatura: TfrmHistFatura;

implementation

uses udmPrincipal, gsLib, DetalhaFatura, VarGlobais, udmRelDoctos, HistoricoCorteReligacao, udmRelFinanceiros,
  DecAnualQuitacaoUC;

{$R *.dfm}

procedure TfrmHistFatura.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmHistFatura.btnCancelFatClick(Sender: TObject);
Var
  sSQL_Text: string;
begin
  if not Confirma('DESEJA REALMENTE CANCELAR O CÁLCULO DESSA FATURA ?') then exit;

  sSQL_Text := 'delete from calc_fatura_mensal where '+
    '(id_unid_consum = '+qryUnidConsum.Params[0].AsString+') and '+
    '(ano_mes = '+QuotedStr(cdsHistFaturaR_ANO_MES.Value)+')';

  try
    dmPrincipal.SConPrincipal.ExecuteDirect(sSQL_Text);

    edQtdFatEmAberto.Value  := edQtdFatEmAberto.Value - 1;
    edValTotalEmAberto.Value:= edValTotalEmAberto.Value - cdsHistFaturaR_VAL_DEBITO.AsCurrency;
    cdsHistFatura.Delete;

  except

     Mensagem('NÃO FOI POSSÍVEL CANCELAR O CÁLCULO DESSA FATURA ...','E R R O !!!',
        MB_OK+MB_ICONERROR);

  end;

end;

procedure TfrmHistFatura.btnDecAnualQuitaClick(Sender: TObject);
begin

  frmDecAnualQuitaUC := TfrmDecAnualQuitaUC.Create(Self);
  frmDecAnualQuitaUC.pb_iUC := qryUnidConsum.Params[0].Value;
  frmDecAnualQuitaUC.pb_sAno := RightStr(edMesAnoIni.Text,4);
  frmDecAnualQuitaUC.ShowModal;
  FreeAndNil(frmDecAnualQuitaUC);

end;

procedure TfrmHistFatura.btnDetFatClick(Sender: TObject);
begin
  frmDetalhaFatura := TfrmDetalhaFatura.Create(Self);
  frmDetalhaFatura.pb_iIdUnidConsum := qryUnidConsum.Params[0].Value;
  frmDetalhaFatura.pb_sAnoMes       := cdsHistFaturaR_ANO_MES.Value;
  frmDetalhaFatura.ShowModal;
  FreeAndNil(frmDetalhaFatura);
end;

procedure TfrmHistFatura.btnImp2ViaFatClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   dmRelDoctos := TdmRelDoctos.Create(Self);
   dmRelDoctos.RelFatura(cdsHistFaturaR_ANO_MES.Value,
      qryUnidConsumENDER_ID_BAIRRO2.AsString,
      qryUnidConsumENDER_ID_LOGRAD2.AsString,
      Trim(ExtraiPonto(frmeUnidConsum1.edId.Text)),
      cdsConfigOrgaoTIPO_FATURA.Value,'S','',True);
   FreeAndNil(dmRelDoctos);
   Screen.Cursor := crDefault;
end;

procedure TfrmHistFatura.btnImpDebClick(Sender: TObject);
begin
{
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoQTD_FAT_ABERTO.AsVariant := edQtdFatEmAberto.Value;
  cdsConfigOrgaoTOT_FAT_ABERTO.AsCurrency := edValTotalEmAberto.Value;
  cdsConfigOrgaoTITULO_REL1.Value := 'F A T U R A S   I N A D I M P L E N T E S';
  cdsConfigOrgao.Post;
  cdsHistFatura.DisableControls;
  cdsHistFatura.Filter := 'R_SITUACAO = '+QuotedStr('1');
  cdsHistFatura.Filtered := True;
  frxReport1.LoadFromFile(pv_sPathRel+'HistoricoFaturaCalculada.fr3');
  frxReport1.ShowReport();
  cdsHistFatura.Filtered := False;
  cdsHistFatura.EnableControls;
}
end;

procedure TfrmHistFatura.btnImpHistClick(Sender: TObject);
Var
  sAnoMes: string[6];
  sSituac: string[1];
begin

  sAnoMes := InverteAnoMes(edMesAnoIni.Text,'1');
  sSituac := IntToStr(TBitBtn(Sender).Tag);

  dmRelFinanceiros.RelHistoricoFatCalcUC(StrToInt(Trim(ExtraiPonto(frmeUnidConsum1.edId.Text))),
     sAnoMes,sSituac,True);

{
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoTITULO_REL1.Value := Caption;
  cdsConfigOrgaoQTD_FAT_ABERTO.AsVariant := edQtdFatEmAberto.Value;
  cdsConfigOrgaoTOT_FAT_ABERTO.AsCurrency := edValTotalEmAberto.Value;
  cdsConfigOrgao.Post;
  cdsHistFatura.DisableControls;
  frxReport1.LoadFromFile(pv_sPathRel+'HistoricoFaturaCalculada.fr3');
  frxReport1.ShowReport();
  cdsHistFatura.EnableControls;
}
end;

procedure TfrmHistFatura.btnLimparClick(Sender: TObject);
begin
  edQtdFatEmAberto.Value  := 0;
  edValTotalEmAberto.Value:= 0;
  cdsHistFatura.Close;
  HabilitaBotoes(True);
  edMesAnoIni.SetFocus;
end;

procedure TfrmHistFatura.btnListarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if Trim(edMesAnoIni.Text) = '' then
     edMesAnoIni.Text := '011985';

  cdsHistFatura.Close;
  qryHistFatura.ParamByName('pUnidConsum').Value :=
     qryUnidConsum.ParamByName('pId').Value;
  qryHistFatura.ParamByName('pAnoMesIni').Value :=
     InverteAnoMes(edMesAnoIni.Text,'1');
  qryHistFatura.ParamByName('pDataHoje').Value := Date;
  cdsHistFatura.Open;
  edQtdFatEmAberto.Value  := 0;
  edValTotalEmAberto.Value:= 0;
  while not cdsHistFatura.eof do
  begin
     if cdsHistFaturaR_SITUACAO.Value = '1' then
     begin
       edQtdFatEmAberto.Value  := edQtdFatEmAberto.Value + 1;
       edValTotalEmAberto.Value:= edValTotalEmAberto.Value +
          cdsHistFaturaR_VAL_DEBITO.AsCurrency;
     end;
     cdsHistFatura.Next;
  end;
  Screen.Cursor := crDefault;
  HabilitaBotoes(False);
  cdsHistFatura.First;
  GridTable.SetFocus;
end;

procedure TfrmHistFatura.btnHistCorteReligClick(Sender: TObject);
begin
  inherited;
  frmHistCorteRelig := TfrmHistCorteRelig.Create(Self);
  frmHistCorteRelig.pb_iIdUnidConsum := StrToInt(Trim(ExtraiPonto(frmeUnidConsum1.edId.Text)));
  frmHistCorteRelig.ShowModal;
  FreeAndNil(frmHistCorteRelig);
end;

procedure TfrmHistFatura.cdsConfigOrgaoCalcFields(DataSet: TDataSet);
begin
  //if cdsConfigOrgao.Active = False then exit;
  cdsConfigOrgaoRAZAO_SOCIAL2.Value := Criptografa(
    cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoNOME_SISTEMA.Value:= glb_sSistema;
end;

procedure TfrmHistFatura.cdsHistFaturaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  btnCancelFat.Enabled := cdsHistFaturaR_SITUACAO.Value = '1';
  btnImp2ViaFat.Enabled := btnCancelFat.Enabled;
end;

procedure TfrmHistFatura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsHistFatura.Close;
  qryUnidConsum.Close;
  cdsConfigOrgao.Close;
end;

procedure TfrmHistFatura.FormCreate(Sender: TObject);
begin
  inherited;
  dmRelFinanceiros := TdmRelFinanceiros.Create(Self);
end;

procedure TfrmHistFatura.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmRelFinanceiros);
end;

procedure TfrmHistFatura.FormShow(Sender: TObject);
Var
  iAnoTemp: Integer;
begin
  inherited;
  pv_sPathRel := GetPathRel();
  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  if pb_iIdUnidConsum > 0 then
  begin
     frmeUnidConsum1.edId.Text := IntToStr(pb_iIdUnidConsum);
     frmeUnidConsum1.edIdExit(frmeUnidConsum1.edId);
     frmeUnidConsum1edIdExit(frmeUnidConsum1.edId);
     iAnoTemp := StrToInt(LeftStr(glb_sAnoMesTrab,4))-2;
     edMesAnoIni.Text := RightStr(glb_sAnoMesTrab,2)+IntToStr(iAnoTemp);
     btnListar.Click;
  end else
  begin
     HabilitaBotoes(True);
     frmeUnidConsum1.edId.SetFocus;
  end;

end;

procedure TfrmHistFatura.frmeUnidConsum1edIdExit(Sender: TObject);
begin
  inherited;
  frmeUnidConsum1.edIdExit(Sender);
  if Trim(frmeUnidConsum1.edId.Text) = '' then exit;
  if frmeUnidConsum1.edNomePessoa.Text = '' then
  begin
     frmeUnidConsum1.edId.SetFocus;
     exit;
  end;
  frmeUnidConsum1.edId.Text := LeftSpace(Trim(frmeUnidConsum1.edId.Text),8);

  qryUnidConsum.Close;
  qryUnidConsum.ParamByName('pId').AsString := Trim(frmeUnidConsum1.edId.Text);
  qryUnidConsum.Open;
  edEndereco.Text  := qryUnidConsumENDER_DESCR_LOGRAD.Value+','+
     qryUnidConsumENDER_UC_NUM_LETRA.Value+' - '+
     qryUnidConsumENDER_DESCR_BAIRRO.Value+' - '+
     qryUnidConsumENDER_DESCR_DISTRITO.Value;
  edCategoria.Text := qryUnidConsumDESCR_TIPO_UNID_CONSUM.Value;
  edUltCorte.Text  := qryUnidConsumDT_ULT_CORTE.AsString;
  edUltRelig.Text  := qryUnidConsumDT_ULT_RELIG.AsString;
  edDtLigacao.Text := qryUnidConsumDT_LIGACAO.AsString;
  edNumLigacao.Text:= qryUnidConsumNUM_LIGACAO.AsString;
  edSituacao.Text  := qryUnidConsumDESCR_SITUACAO.Value;
end;

procedure TfrmHistFatura.frmeUnidConsum1edIdPropertiesChange(Sender: TObject);
begin
  inherited;
  if Trim(frmeUnidConsum1.edId.Text) <> '' then exit;
  frmeUnidConsum1.edNomePessoa.Text := '';
  edEndereco.Text  := '';
  edCategoria.Text := '';
  edUltCorte.Text  := '';
  edUltRelig.Text  := '';
  edDtLigacao.Text := '';
  edNumLigacao.Text:= '';
  edSituacao.Text  := '';
end;

procedure TfrmHistFatura.frmeUnidConsum1sb1Click(Sender: TObject);
begin
  inherited;
  frmeUnidConsum1.sb1Click(Sender);
end;


procedure TfrmHistFatura.HabilitaBotoes(lOpcao: Boolean);
begin
   frmeUnidConsum1.Enabled := lOpcao;
   edMesAnoIni.Enabled := lOpcao;
   btnListar.Enabled := lOpcao;
   btnImpHist.Enabled := not lOpcao;
   btnImpDeb.Enabled := not lOpcao;
   btnImp2ViaFat.Enabled := not lOpcao;
   btnDecAnualQuita.Enabled := not lOpcao;
   btnCancelFat.Enabled := not lOpcao;
   btnDetFat.Enabled := not lOpcao;
   btnLimpar.Enabled := not lOpcao;
end;

end.
