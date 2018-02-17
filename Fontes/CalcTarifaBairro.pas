unit CalcTarifaBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels, StrUtils,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxCheckBox, Menus, FMTBcd, DBClient,
  Provider, SqlExpr, cxButtons, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, Buttons, cxTextEdit, cxLabel, cxGroupBox, Gauges,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  fmeBairro, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxCurrencyEdit, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxNavigator;

type
  TfrmCalcTarifaBairro = class(TfrmPadrao1)
    gb1: TcxGroupBox;
    cxLabel7: TcxLabel;
    btnAplicar: TBitBtn;
    GridTable1: TcxGrid;
    GridTable1DBTableView1: TcxGridDBTableView;
    GridTable1DBTableView1Column7: TcxGridDBColumn;
    GridTable1DBTableView1Column8: TcxGridDBColumn;
    GridTable1DBTableView1Column1: TcxGridDBColumn;
    GridTable1DBTableView1Column2: TcxGridDBColumn;
    GridTable1DBTableView1Column5: TcxGridDBColumn;
    GridTable1DBTableView1Column3: TcxGridDBColumn;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    GridTable1Level1: TcxGridLevel;
    Panel1: TPanel;
    btnSair: TcxButton;
    lblTitColPesquisa: TcxLabel;
    edPesquisa: TcxTextEdit;
    dspUnidConsum: TDataSetProvider;
    cdsUnidConsum: TClientDataSet;
    ds1: TDataSource;
    provCalcFatBairro: TDataSetProvider;
    cdsCalcFatBairro: TClientDataSet;
    qryCalcFatBairro: TSQLQuery;
    btnVerificar: TBitBtn;
    btnCalcular: TBitBtn;
    GridTable1DBTableView1Column6: TcxGridDBColumn;
    GridTable1DBTableView1Column9: TcxGridDBColumn;
    GridTable1DBTableView1Column10: TcxGridDBColumn;
    GridTable1DBTableView1Column11: TcxGridDBColumn;
    GridTable1DBTableView1Column12: TcxGridDBColumn;
    Gauge1: TGauge;
    btnCalcIndividual: TcxButton;
    btnDetCalculo: TcxButton;
    qryUnidConsum: TSQLQuery;
    btnLimpar: TBitBtn;
    GridTable1DBTableView1Column13: TcxGridDBColumn;
    GridTable1DBTableView1Column14: TcxGridDBColumn;
    frmeBairro1: TfrmeBairro;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edDtEmissao: TcxDateEdit;
    edDtVencto: TcxDateEdit;
    cdsCalcFatBairroID_UNID_CONSUM: TIntegerField;
    cdsCalcFatBairroNOME_PESSOA: TStringField;
    cdsCalcFatBairroDT_LIGACAO: TDateField;
    cdsCalcFatBairroDESCR_TIPO_PESSOA: TStringField;
    cdsCalcFatBairroCPF_CNPJ_FTDO: TStringField;
    cdsCalcFatBairroNUM_HIDROMETRO: TStringField;
    cdsCalcFatBairroOBSERV_FATURA: TStringField;
    cdsCalcFatBairroQTD_TORNEIRA: TIntegerField;
    cdsCalcFatBairroMULTIPLICADOR: TIntegerField;
    cdsCalcFatBairroVAL_PRINCIPAL: TFMTBCDField;
    cdsCalcFatBairroVAL_MULTA: TFMTBCDField;
    cdsCalcFatBairroVAL_OUTRO_DEB: TFMTBCDField;
    cdsCalcFatBairroVAL_OUTRO_CRED: TFMTBCDField;
    cdsCalcFatBairroVAL_TOTAL: TFMTBCDField;
    cdsCalcFatBairroMSG_CALC: TStringField;
    Label5: TLabel;
    edMsgCalc: TcxDBTextEdit;
    edTotValPrincipal: TcxCurrencyEdit;
    edTotValMulta: TcxCurrencyEdit;
    edTotValOutroDeb: TcxCurrencyEdit;
    edTotValOutroCred: TcxCurrencyEdit;
    edTotValTotal: TcxCurrencyEdit;
    qryResumoBairro: TSQLQuery;
    qryResumoBairroANO_MES: TStringField;
    qryResumoBairroENDER_ID_BAIRRO: TIntegerField;
    qryResumoBairroVAL_PRINCIPAL: TFMTBCDField;
    qryResumoBairroVAL_MULTA: TFMTBCDField;
    qryResumoBairroVAL_OUTRO_DEB: TFMTBCDField;
    qryResumoBairroVAL_OUTRO_CRED: TFMTBCDField;
    qryResumoBairroVAL_TOTAL: TFMTBCDField;
    qryCalcFatIndividual: TSQLQuery;
    provCalcFatIndividual: TDataSetProvider;
    cdsCalcFatIndividual: TClientDataSet;
    cdsCalcFatIndividualR_ITEM: TIntegerField;
    cdsCalcFatIndividualR_COD_ITEM: TStringField;
    cdsCalcFatIndividualR_DESCRICAO: TStringField;
    cdsCalcFatIndividualR_REFENCIA: TStringField;
    cdsCalcFatIndividualR_VALOR: TFMTBCDField;
    cdsCalcFatIndividualR_TIPO: TStringField;
    cdsCalcFatIndividualR_OBSERVACAO: TStringField;
    cdsCalcFatIndividualR_QTD_TORNEIRA: TIntegerField;
    cdsCalcFatIndividualR_MULTIPLIC: TIntegerField;
    cdsCalcFatIndividualR_CONSUMO_M3: TIntegerField;
    cdsCalcFatIndividualR_QTD_DIAS_ATRASO: TIntegerField;
    cdsCalcFatIndividualR_ANO_MES_MULTA: TStringField;
    mTbDetCalc: TClientDataSet;
    mTbDetCalcID: TIntegerField;
    mTbDetCalcCOD_ITEM: TStringField;
    mTbDetCalcDESCRICAO: TStringField;
    mTbDetCalcREFERENCIA: TStringField;
    mTbDetCalcVALOR: TCurrencyField;
    mTbDetCalcTIPO: TStringField;
    mTbDetCalcID_UNID_CONSUM: TIntegerField;
    GridDetCalc: TcxGrid;
    GridDetCalcDBTableView1: TcxGridDBTableView;
    GridDetCalcDBTableView1Column7: TcxGridDBColumn;
    GridDetCalcDBTableView1Column4: TcxGridDBColumn;
    GridDetCalcDBTableView1Column1: TcxGridDBColumn;
    GridDetCalcDBTableView1Column8: TcxGridDBColumn;
    GridDetCalcDBTableView1Column2: TcxGridDBColumn;
    GridDetCalcDBTableView1Column3: TcxGridDBColumn;
    GridDetCalcLevel1: TcxGridLevel;
    btnGravar: TcxButton;
    qryBairroEmissao: TSQLQuery;
    qryBairroEmissaoDT_EMISSAO: TDateField;
    qryBairroEmissaoDT_VENCIMENTO: TDateField;
    dsDetCalc: TDataSource;
    qryDetCalc: TSQLQuery;
    qryDetCalcR_ID: TIntegerField;
    qryDetCalcR_REFERENCIA: TStringField;
    qryDetCalcR_DESCRICAO: TStringField;
    qryDetCalcR_VALOR: TFMTBCDField;
    qryDetCalcR_TIPO: TStringField;
    qryDetCalcR_COD: TStringField;
    mTbDetCalcANO_MES_MULTA: TStringField;
    mTbDetCalcQTD_DIAS_MULTA: TIntegerField;
    qryDetCalcR_ANO_MES_MULTA: TStringField;
    qryDetCalcR_QTD_DIAS_MULTA: TIntegerField;
    Label1: TLabel;
    edQtdUC_Bairro: TcxCurrencyEdit;
    Label2: TLabel;
    edQtdUC_Calc: TcxCurrencyEdit;
    Label3: TLabel;
    qryUC: TSQLQuery;
    qryUCQTD: TIntegerField;
    qryBairroEmissaoQTD_UNID_CONSUM_TOTAL: TIntegerField;
    qryBairroEmissaoQTD_UNID_CONSUM_CALC: TIntegerField;
    cdsCalcFatBairroCALCULAR: TStringField;
    btnCancelar: TcxButton;
    qryMovim: TSQLQuery;
    qryMovimR_QTD_DIAS: TIntegerField;
    GridTable1DBTableView1Column15: TcxGridDBColumn;
    cdsCalcFatBairroFORMA_CALCULO: TStringField;
    cdsUnidConsumID: TIntegerField;
    cdsUnidConsumNOME_PESSOA: TStringField;
    cdsUnidConsumDT_LIGACAO: TDateField;
    cdsUnidConsumDESCR_TIPO_PESSOA: TStringField;
    cdsUnidConsumCPF_CNPJ_FTDO: TStringField;
    cdsUnidConsumNUM_HIDROMETRO: TStringField;
    cdsUnidConsumOBSERV_FATURA: TStringField;
    cdsUnidConsumQTD_TORNEIRA: TIntegerField;
    cdsUnidConsumMULTIPLICADOR: TIntegerField;
    cdsUnidConsumSITUACAO: TStringField;
    cdsUnidConsumFORMA_CALCULO: TStringField;
    cdsUnidConsumCONSUMO: TLargeintField;
    cdsCalcFatBairroCONSUMO: TIntegerField;
    GridTable1DBTableView1Column16: TcxGridDBColumn;
    cdsUnidConsumCATEGORIA: TStringField;
    cdsCalcFatBairroCATEGORIA: TStringField;
    cdsCalcFatBairroQTD_DIAS_USO: TIntegerField;
    cdsUnidConsumDESCR_SITUACAO: TStringField;
    cdsCalcFatBairroSITUACAO: TStringField;
    cdsCalcFatBairroDESCR_SITUACAO: TStringField;
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCalcIndividualClick(Sender: TObject);
    procedure btnDetCalculoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edDtVenctoExit(Sender: TObject);
    procedure frmeBairro1edIdExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsCalcFatBairroBeforeDelete(DataSet: TDataSet);
    procedure edTotValPrincipalPropertiesChange(Sender: TObject);
    procedure frmeBairro1edIdPropertiesChange(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cdsCalcFatBairroAfterScroll(DataSet: TDataSet);
  private
    pv_sCodIndex: string;
    pv_lCalculando: Boolean;
    procedure HabilitaBotoes(lOpcao1, lOpcao2, lOpcao3: Boolean);
    procedure AtualizaTotais;
    function ValItemCalc(sCod, sDC: string): Currency;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalcTarifaBairro: TfrmCalcTarifaBairro;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, DetalhaFatura, CalcTarifaIndividual, MsgDialog;

{$R *.dfm}

procedure TfrmCalcTarifaBairro.btnAplicarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;

  qryBairroEmissao.Close;
  qryBairroEmissao.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
  qryBairroEmissao.ParamByName('pBairro').Value := StrToInt(Trim(frmeBairro1.edId.Text));
  qryBairroEmissao.Open;
  if not qryBairroEmissaoDT_VENCIMENTO.IsNull then
  begin
     edDtEmissao.Text:= qryBairroEmissaoDT_EMISSAO.AsString;
     edDtVencto.Text := qryBairroEmissaoDT_VENCIMENTO.AsString;
     edQtdUC_Bairro.Value := qryBairroEmissaoQTD_UNID_CONSUM_TOTAL.Value;
     edQtdUC_Calc.Value   := qryBairroEmissaoQTD_UNID_CONSUM_CALC.Value;
  end else
  begin
     qryUC.Close;
     qryUC.Params[0].Value := qryBairroEmissao.ParamByName('pBairro').Value;
     qryUC.Open;
     if not qryUCQTD.IsNull then
        edQtdUC_Bairro.Value := qryUCQTD.Value
     else
        edQtdUC_Bairro.Value := 0;
     edQtdUC_Calc.Value := 0;
  end;

  cdsCalcFatBairro.Close;
  qryCalcFatBairro.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
  qryCalcFatBairro.ParamByName('pAnoMes2').Value:= glb_sAnoMesTrab;
  qryCalcFatBairro.ParamByName('pBairro').Value := StrToInt(Trim(frmeBairro1.edId.Text));
  qryCalcFatBairro.ParamByName('pLogradIni').Value := 1;
  qryCalcFatBairro.ParamByName('pLogradFim').Value := 99999;
  cdsCalcFatBairro.Open;

  cdsCalcFatBairro.IndexFieldNames:= 'NOME_PESSOA';
  GridTable1DBTableView1ColumnHeaderClick(GridTable1DBTableView1,GridTable1DBTableView1.Columns[1]);
  GridTable1.SetFocus;

  HabilitaBotoes(False,True,False);
  btnCalcular.Enabled := (cdsCalcFatBairro.RecordCount > 0);

  btnCancelar.Enabled := (cdsCalcFatBairro.RecordCount > 0);

  cdsCalcFatBairro.First;

  if cdsCalcFatBairro.RecordCount = 0 then
     edDtEmissao.SetFocus
  else
     GridTable1.SetFocus;

  AtualizaTotais;
  btnDetCalculo.Enabled := (edTotValTotal.Value > 0);

  Screen.Cursor := crDefault;

end;

procedure TfrmCalcTarifaBairro.btnCalcularClick(Sender: TObject);
var
  sDtMovim,
  sDtMovim2   : String[10];
  sMesAno     : String[6];
  sIdUnidConsum : String;
  iQtdUnidConsum,
  iQtdCalc    : Integer;
  dDtTemp1,
  dDtTemp2    : TDate;
  iErro       : Integer;
  crValPrincipal,
  crValMulta,
  crValOutrosDeb,
  crValOutrosCred: Currency;
begin

  if (Empty(frmeBairro1.edId.Text)) or
     (EmptyData(edDtEmissao.Text)) or
     (EmptyData(edDtVencto.Text)) then
  begin
     frmeBairro1.edId.SetFocus;
     exit;
  end;

  Screen.Cursor := crHourGlass;

  pv_lCalculando := True;

  Panel1.Caption := 'Aguarde, Calculando ...';
  Application.ProcessMessages;

  dDtTemp1 := StrToDate(DtEmissaoMesAnterior(StrToInt(Trim(frmeBairro1.edId.Text)),glb_sAnoMesTrab));
  dDtTemp2 := StrToDate(edDtEmissao.Text);

  Gauge1.Progress:= 0;
  Gauge1.MaxValue:= cdsCalcFatBairro.RecordCount;
  iQtdUnidConsum := Gauge1.MaxValue;
  cdsCalcFatBairro.First;
  sMesAno := InverteAnoMes(glb_sAnoMesTrab,'2');

  edQtdUC_Calc.Value := 0;
  iQtdCalc := Inteiro(edQtdUC_Calc.Value);

  edTotValPrincipal.Value:= 0;
  edTotValMulta.Value    := 0;
  edTotValOutroDeb.Value := 0;
  edTotValOutroCred.Value:= 0;
  edTotValTotal.Value    := 0;

  mTbDetCalc.EmptyDataSet;
  mTbDetCalc.Close;
  mTbDetCalc.Open;

  cdsCalcFatBairro.IndexFieldNames:= 'NOME_PESSOA';
  cdsCalcFatBairro.First;
  while not cdsCalcFatBairro.eof do
  begin

     if (cdsCalcFatBairroSITUACAO.Value = '0') or  // aguardando ligação ou insenta
        (cdsCalcFatBairroSITUACAO.Value = '4') then
     begin
        Gauge1.Progress := Gauge1.Progress + 1;
        cdsCalcFatBairro.Next;
        Continue;
     end;

     if (cdsCalcFatBairroCALCULAR.Value <> 'S') or
        ((cdsCalcFatBairroqtd_dias_uso.Value < 15) and
         (cdsCalcFatBairroFORMA_CALCULO.Value = '2')) then
     begin
        Gauge1.Progress := Gauge1.Progress + 1;
        cdsCalcFatBairro.Next;
        Continue;
     end;

     iErro := 0;
     sIdUnidConsum  := cdsCalcFatBairroID_UNID_CONSUM.AsString;
     crValPrincipal := 0;
     crValMulta     := 0;
     crValOutrosDeb := 0;
     crValOutrosCred:= 0;

     cdsCalcFatIndividual.Close;
     qryCalcFatIndividual.ParamByName('panomes').Value   := glb_sAnoMesTrab;
     qryCalcFatIndividual.ParamByName('puc').Value       := cdsCalcFatBairroID_UNID_CONSUM.Value;
     qryCalcFatIndividual.ParamByName('pdtpagini').Value := dDtTemp1;
     qryCalcFatIndividual.ParamByName('pdtpagfim').Value := dDtTemp2;
     qryCalcFatIndividual.ParamByName('pQtdDias').Value  := cdsCalcFatBairroqtd_dias_uso.Value;
     try
        cdsCalcFatIndividual.Open;
     except
        on E: Exception do
        begin
           iErro := 1;
           Mensagem('Erro ao Calcular a Tarifa da Unid. Consumidora: '+
             cdsCalcFatBairroID_UNID_CONSUM.AsString+#13+
             '('+E.Message+')',
             'E R R O !!!',MB_OK+MB_ICONERROR);
           cdsCalcFatBairro.Next;
           continue;
        end;
     end;

     if iErro = 1 then
     begin
        Gauge1.Progress := Gauge1.Progress + 1;
        cdsCalcFatBairro.Next;
        Continue;
     end;

     while not cdsCalcFatIndividual.eof do
     begin

        if cdsCalcFatIndividualR_COD_ITEM.Value = '001' then
           crValPrincipal := cdsCalcFatIndividualR_VALOR.AsCurrency
        else
        if cdsCalcFatIndividualR_COD_ITEM.Value = '555' then
           crValMulta := crValMulta + cdsCalcFatIndividualR_VALOR.AsCurrency
        else
        if (cdsCalcFatIndividualR_COD_ITEM.Value = '777') and
           (cdsCalcFatIndividualR_TIPO.Value = 'D') then
           crValOutrosDeb := crValOutrosDeb + cdsCalcFatIndividualR_VALOR.AsCurrency
        else
           crValOutrosCred := crValOutrosCred + cdsCalcFatIndividualR_VALOR.AsCurrency;

        mTbDetCalc.Insert;
        mTbDetCalcID_UNID_CONSUM.Value := cdsCalcFatBairroID_UNID_CONSUM.Value;
        mTbDetCalcID.Value := cdsCalcFatIndividualR_ITEM.Value;
        mTbDetCalcCOD_ITEM.Value := cdsCalcFatIndividualR_COD_ITEM.Value;
        mTbDetCalcDESCRICAO.Value := cdsCalcFatIndividualR_DESCRICAO.Value;
        mTbDetCalcREFERENCIA.Value := cdsCalcFatIndividualR_REFENCIA.Value;
        mTbDetCalcVALOR.Value := cdsCalcFatIndividualR_VALOR.AsCurrency;
        mTbDetCalcTIPO.Value := cdsCalcFatIndividualR_TIPO.Value;
        mTbDetCalcANO_MES_MULTA.Value := cdsCalcFatIndividualR_ANO_MES_MULTA.Value;
        mTbDetCalcQTD_DIAS_MULTA.Value := cdsCalcFatIndividualR_QTD_DIAS_ATRASO.Value;
        mTbDetCalc.Post;
        cdsCalcFatIndividual.Next;

     end;

     cdsCalcFatBairro.edit;
     cdsCalcFatBairroVAL_PRINCIPAL.AsCurrency := crValPrincipal;
     cdsCalcFatBairroVAL_MULTA.AsCurrency     := crValMulta;
     cdsCalcFatBairroVAL_OUTRO_DEB.AsCurrency := crValOutrosDeb;
     cdsCalcFatBairroVAL_OUTRO_CRED.AsCurrency:= crValOutrosCred;
     cdsCalcFatBairroVAL_TOTAL.AsCurrency     := (cdsCalcFatBairroVAL_PRINCIPAL.AsCurrency +
        cdsCalcFatBairroVAL_MULTA.AsCurrency + cdsCalcFatBairroVAL_OUTRO_DEB.AsCurrency) -
        cdsCalcFatBairroVAL_OUTRO_CRED.AsCurrency;
     cdsCalcFatBairro.Post;
     if cdsCalcFatBairroVAL_TOTAL.AsCurrency > 0 then
     begin
        inc(iQtdCalc);
        edQtdUC_Calc.Value     := iQtdCalc;
        edTotValPrincipal.Value:= edTotValPrincipal.Value + cdsCalcFatBairroVAL_PRINCIPAL.AsCurrency;
        edTotValMulta.Value    := edTotValMulta.Value + cdsCalcFatBairroVAL_MULTA.AsCurrency;
        edTotValOutroDeb.Value := edTotValOutroDeb.Value + cdsCalcFatBairroVAL_OUTRO_DEB.AsCurrency;
        edTotValOutroCred.Value:= edTotValOutroCred.Value + cdsCalcFatBairroVAL_OUTRO_CRED.AsCurrency;
     end;
     Application.ProcessMessages;

     Gauge1.Progress := Gauge1.Progress + 1;
     cdsCalcFatBairro.Next;

  end;

  Mensagem('Processo de Cálculo, Concluído ...',
     'AVISO !',
     MB_OK+MB_ICONEXCLAMATION);
  Gauge1.Progress := 0;

  Panel1.Caption := '';
  Application.ProcessMessages;

  GridTable1.SetFocus;
  HabilitaBotoes(False,False,True);
  pv_lCalculando := False;

  btnCancelar.Enabled := True;

  Screen.Cursor := crDefault;

end;

procedure TfrmCalcTarifaBairro.btnCancelarClick(
  Sender: TObject);
Var
  iErro: Integer;
  sDelArqInicia: string[1];
  iOpCancel: Integer;
  sTextSQL: String;
  lCancelou: Boolean;
begin

  if cdsCalcFatBairroVAL_TOTAL.AsCurrency = 0 then exit;

  if GridDetCalc.Visible then
     btnDetCalculo.Click;

  iOpCancel := frmMsgDialog.Executa('CANCELAR CÁLCULO DE FATURAS MENSAIS. ',
     'SELECIONE A OPÇÃO ABAIXO ...',
        '&INDIVIDUAL','&BAIRRO TODO','&NÃO CANCELAR');

    //if not Confirma('DESEJA REALMENTE CANCELAR O CÁLCULO DESSA FATURA ?') then
  //   exit;

  lCancelou := False;
  iErro := 0;
  if iOpCancel = 1 then
  begin
     lCancelou := True;
     sTextSQL := 'delete from calc_fatura_mensal where '+
        '(id_unid_consum = '+cdsCalcFatBairroID_UNID_CONSUM.AsString+') and '+
        '(ano_mes = '+QuotedStr(glb_sAnoMesTrab)+')';
     Try
        dmPrincipal.SConPrincipal.ExecuteDirect(sTextSQL);
     except
        iErro := 1;
     End;
     cdsCalcFatBairro.Delete;
  end else
  if iOpCancel = 2 then
  begin
     if not Confirma('Deseja Realmente CANCELAR todo o Cálculo desse Bairro ?') then exit;
     Screen.Cursor := crHourGlass;
     lCancelou := True;
     pv_lCalculando := True;
     sTextSQL := 'delete from calc_fatura_mensal where '+
        '(ender_id_bairro = '+Trim(frmeBairro1.edId.Text)+') and '+
        '(ano_mes = '+QuotedStr(glb_sAnoMesTrab)+')';
     try
       dmPrincipal.SConPrincipal.ExecuteDirect(sTextSQL);
     except
       iErro := 1;
     end;
     Screen.Cursor := crDefault;
  end;

  if (lCancelou) and (iErro = 0) Then
     Mensagem('CÁLCULO CANCELADO COM SUCESSO ...','AVISO !!!',
     MB_OK+MB_ICONINFORMATION);

  if iOpCancel = 2 then
  begin
     cdsCalcFatBairro.EmptyDataSet;
     btnLimpar.Click;
  end;

end;

procedure TfrmCalcTarifaBairro.btnDetCalculoClick(Sender: TObject);
begin

  if btnDetCalculo.Tag = 1 then
  begin
     if Not mTbDetCalc.FindKey([cdsCalcFatBairroID_UNID_CONSUM.Value]) then
     begin
        qryDetCalc.Close;
        qryDetCalc.ParamByName('panomes').Value := glb_sAnoMesTrab;
        qryDetCalc.ParamByName('puc').Value := cdsCalcFatBairroID_UNID_CONSUM.Value;
        qryDetCalc.Open;
        while not qryDetCalc.eof do
        begin
           mTbDetCalc.Insert;
           mTbDetCalcID_UNID_CONSUM.Value := cdsCalcFatBairroID_UNID_CONSUM.Value;
           mTbDetCalcID.Value := qryDetCalcR_ID.Value;
           mTbDetCalcCOD_ITEM.Value := qryDetCalcR_COD.Value;
           mTbDetCalcDESCRICAO.Value := qryDetCalcR_DESCRICAO.Value;
           mTbDetCalcREFERENCIA.Value := qryDetCalcR_REFERENCIA.Value;
           mTbDetCalcVALOR.Value := qryDetCalcR_VALOR.AsCurrency;
           mTbDetCalcTIPO.Value := qryDetCalcR_TIPO.Value;
           mTbDetCalcANO_MES_MULTA.Value := qryDetCalcR_ANO_MES_MULTA.Value;
           mTbDetCalcQTD_DIAS_MULTA.Value := qryDetCalcR_QTD_DIAS_MULTA.Value;
           mTbDetCalc.Post;
           qryDetCalc.Next;
        end;
     end;

     mTbDetCalc.Filtered := False;
     mTbDetCalc.Filter := 'ID_UNID_CONSUM = '+cdsCalcFatBairroID_UNID_CONSUM.AsString;
     mTbDetCalc.Filtered := True;
     cdsCalcFatBairro.DisableControls;
     GridDetCalc.Visible := True;
     GridDetCalc.SetFocus;
     btnDetCalculo.Tag := 2;
     btnDetCalculo.Font.Style := [];
  end else
  begin
     mTbDetCalc.Filtered := False;
     GridDetCalc.Visible := False;
     cdsCalcFatBairro.EnableControls;
     btnDetCalculo.Tag := 1;
     btnDetCalculo.Font.Style := [fsBold];
  end;

end;

procedure TfrmCalcTarifaBairro.btnCalcIndividualClick(Sender: TObject);
begin

{
   frmCalcTarifaIndividual := TfrmCalcTarifaIndividual.Create(Self);

   frmCalcTarifaIndividual.pb_iUnidConsum := cdsCalcFatBairroID_UNID_CONSUM.Value;
   frmCalcTarifaIndividual.pb_sAnoMes := glb_sAnoMesTrab;

   frmCalcTarifaIndividual.ShowModal;

   FreeAndNil(frmCalcTarifaIndividual);
}

end;

procedure TfrmCalcTarifaBairro.btnGravarClick(Sender: TObject);
Var
   iErro,
   iUC,
   iBairro: Integer;
   sSQL1: string;
   sAnoMes: string[6];
begin

   Screen.Cursor := crHourGlass;
   Panel1.Caption:= 'Aguarde, Salvando ...';
   Application.ProcessMessages;

   cdsCalcFatBairro.DisableControls;

   Gauge1.Progress := 0;
   Gauge1.MaxValue := cdsCalcFatBairro.RecordCount;

   cdsCalcFatBairro.First;
   iErro := 0;
   sAnoMes := glb_sAnoMesTrab;
   iBairro := StrToInt(Trim(frmeBairro1.edId.Text));

   while not cdsCalcFatBairro.eof do
   begin

      Gauge1.Progress := Gauge1.Progress + 1;

      if cdsCalcFatBairroVAL_TOTAL.AsCurrency = 0 then
      begin
         cdsCalcFatBairro.Next;
         Continue;
      end;

      iUC := cdsCalcFatBairroID_UNID_CONSUM.Value;

      if dmPrincipal.SalvaCalcFaturaMensal(sAnoMes,
           iUC,
           edDtEmissao.Text,
           edDtVencto.Text,
           cdsCalcFatBairroQTD_TORNEIRA.Value,
           cdsCalcFatBairroMULTIPLICADOR.Value,
           cdsCalcFatBairroNUM_HIDROMETRO.Value,
           cdsCalcFatBairroVAL_PRINCIPAL.AsCurrency,
           cdsCalcFatBairroVAL_MULTA.AsCurrency,
           cdsCalcFatBairroVAL_OUTRO_DEB.AsCurrency,
           cdsCalcFatBairroVAL_OUTRO_CRED.AsCurrency) then
      begin

         sSQL1 := 'delete from calc_fatura_mensal_multa '+
                  'where (id_unid_consum = '+IntToStr(iUC)+') and '+
                  ' (ano_mes_calc = '+QuotedStr(sAnoMes)+')';
         dmPrincipal.SConPrincipal.ExecuteDirect(sSQL1);

         mTbDetCalc.FindKey([iUC]);
         while (not mTbDetCalc.eof) and
            (mTbDetCalcID_UNID_CONSUM.Value = iUC) do
         begin
            if mTbDetCalcCOD_ITEM.Value = '555' then
            begin
               if not dmPrincipal.SalvaMultaFaturaMensal(iUC,
                  sAnoMes,
                  mTbDetCalcANO_MES_MULTA.Value,
                  mTbDetCalcQTD_DIAS_MULTA.Value,
                  mTbDetCalcVALOR.AsCurrency) then
               begin
                  iErro := 1;
                  Break;
               end;
            end;
            mTbDetCalc.Next;
         end;
      end else
         iErro := 1;

      cdsCalcFatBairro.Next;

   end;

   if iErro = 0 then
   begin
      sSQL1 := 'execute procedure sp_calc_resumo_bairro('+QuotedStr(sAnoMes)+','+
         IntToStr(iBairro)+','+QuotedStr(edDtEmissao.Text)+','+
         QuotedStr(edDtVencto.Text)+')';
      Try
         dmPrincipal.SConPrincipal.ExecuteDirect(sSQL1);
      except
         on E: Exception do
         begin
            iErro := 1;
            Mensagem('Não foi Calcular os Totais do Bairro ...'+#13+
              '('+E.Message+')','E R R O !!!',MB_OK+MB_ICONERROR);
         end;
      End;
   end;

   cdsCalcFatBairro.EnableControls;

   if iErro = 0 then
      Mensagem('Cálculo do Bairro Salvo com Sucesso ...','AVISO !!!',MB_OK+MB_ICONINFORMATION);

   HabilitaBotoes(False,False,False);

   Panel1.Caption:= '';
   Application.ProcessMessages;

   Screen.Cursor := crDefault;

   btnLimpar.SetFocus;

end;

procedure TfrmCalcTarifaBairro.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCalcTarifaBairro.btnVerificarClick(Sender: TObject);
Var
  iQtdUnidConsum: Integer;
  lCalcUC: Boolean;
  dDtLigacao: TDate;
begin
  Screen.Cursor := crHourGlass;

  pv_lCalculando := True;

  Panel1.Caption := 'Aguarde, processando ...';
  Application.ProcessMessages;

  if GridDetCalc.Visible then
     btnDetCalculo.Click;

  mTbDetCalc.EmptyDataSet;
  mTbDetCalc.Close;
  mTbDetCalc.Open;

  cdsCalcFatBairro.DisableControls;
  cdsCalcFatBairro.IndexFieldNames := 'id_unid_consum';

  cdsUnidConsum.Close;
  qryUnidConsum.ParamByName('pBairro').AsString := Trim(frmeBairro1.edId.Text);
  cdsUnidConsum.Open;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := cdsUnidConsum.RecordCount;
  iQtdUnidConsum := Gauge1.MaxValue;

  while not cdsUnidConsum.eof do
  begin

     Gauge1.Progress := Gauge1.Progress + 1;

     lCalcUC := True;

     {dDtLigacao := cdsUnidConsumDT_LIGACAO.Value;
     if (dDtLigacao is null) or (DateToStr(dDtLigacao)='31/12/1899') then
        dDtLigacao := StrToDate(')

     }

     qryMovim.Close;
     qryMovim.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
     qryMovim.ParamByName('pUC').Value := cdsUnidConsumID.Value;
     qryMovim.Open;

     if not cdsCalcFatBairro.FindKey([cdsUnidConsumID.Value]) then
     begin
        cdsCalcFatBairro.Insert;
        cdsCalcFatBairroID_UNID_CONSUM.Value := cdsUnidConsumID.Value;
        cdsCalcFatBairroNOME_PESSOA.Value := cdsUnidConsumNOME_PESSOA.Value;
        cdsCalcFatBairroDT_LIGACAO.Value := cdsUnidConsumDT_LIGACAO.Value;
        cdsCalcFatBairroDESCR_TIPO_PESSOA.Value := cdsUnidConsumDESCR_TIPO_PESSOA.Value;
        cdsCalcFatBairroCPF_CNPJ_FTDO.Value := cdsUnidConsumCPF_CNPJ_FTDO.Value;
        cdsCalcFatBairroCATEGORIA.Value := cdsUnidConsumCATEGORIA.Value;
        cdsCalcFatBairroNUM_HIDROMETRO.Value := cdsUnidConsumNUM_HIDROMETRO.Value;
        cdsCalcFatBairroOBSERV_FATURA.Value := cdsUnidConsumOBSERV_FATURA.Value;
        cdsCalcFatBairroQTD_TORNEIRA.Value := cdsUnidConsumQTD_TORNEIRA.Value;
        cdsCalcFatBairroMULTIPLICADOR.Value := cdsUnidConsumMULTIPLICADOR.Value;
        cdsCalcFatBairroSITUACAO.Value := cdsUnidConsumSITUACAO.Value;
        cdsCalcFatBairroDESCR_SITUACAO.Value := cdsUnidConsumDESCR_SITUACAO.Value;
        cdsCalcFatBairroVAL_PRINCIPAL.AsCurrency := 0;
        cdsCalcFatBairroVAL_MULTA.AsCurrency := 0;
        cdsCalcFatBairroVAL_OUTRO_DEB.AsCurrency := 0;
        cdsCalcFatBairroVAL_OUTRO_CRED.AsCurrency := 0;
        cdsCalcFatBairroVAL_TOTAL.AsCurrency := 0;
        cdsCalcFatBairroqtd_dias_uso.Value := qryMovimR_QTD_DIAS.Value;
        cdsCalcFatBairroCONSUMO.Value := cdsUnidConsumCONSUMO.Value;
        cdsCalcFatBairroCALCULAR.Value := 'S';
     end else
     begin
        cdsCalcFatBairro.edit;
        cdsCalcFatBairroCALCULAR.Value := 'N';
     end;
     cdsCalcFatBairro.Post;

     cdsUnidConsum.Next;

  end;

  qryMovim.Close;
  cdsCalcFatBairro.EnableControls;

  Gauge1.Progress := 0;
  Panel1.Caption := '';
  Application.ProcessMessages;

  HabilitaBotoes(False,True,False);
  btnVerificar.Enabled := False;
  btnCalcular.Enabled := (cdsUnidConsum.RecordCount > 0);
  GridTable1DBTableView1ColumnHeaderClick(GridTable1DBTableView1,GridTable1DBTableView1.Columns[1]);

  btnCancelar.Enabled := (cdsCalcFatBairro.RecordCount > 0);

  pv_lCalculando := False;
  Screen.Cursor := crDefault;

end;

procedure TfrmCalcTarifaBairro.cdsCalcFatBairroAfterScroll(DataSet: TDataSet);
begin
  if pv_lCalculando then exit;
  btnDetCalculo.Enabled := (cdsCalcFatBairroVAL_TOTAL.AsCurrency > 0);
end;

procedure TfrmCalcTarifaBairro.cdsCalcFatBairroBeforeDelete(DataSet: TDataSet);
begin

  edTotValPrincipal.Value := edTotValPrincipal.Value - cdsCalcFatBairroVAL_PRINCIPAL.AsCurrency;
  edTotValMulta.Value := edTotValMulta.Value - cdsCalcFatBairroVAL_MULTA.AsCurrency;
  edTotValOutroDeb.Value := edTotValOutroDeb.Value - cdsCalcFatBairroVAL_OUTRO_DEB.AsCurrency;
  edTotValOutroCred.Value := edTotValOutroCred.Value - cdsCalcFatBairroVAL_OUTRO_CRED.AsCurrency;

  mTbDetCalc.FindKey([cdsCalcFatBairroID_UNID_CONSUM.Value]);
  while (not mTbDetCalc.Eof) and
     (mTbDetCalcID_UNID_CONSUM.Value = cdsCalcFatBairroID_UNID_CONSUM.Value) do
    mTbDetCalc.Delete;

end;

procedure TfrmCalcTarifaBairro.btnLimparClick(Sender: TObject);
begin

  edTotValPrincipal.Value := 0;
  edTotValMulta.Value := 0;
  edTotValOutroDeb.Value := 0;
  edTotValOutroCred.Value := 0;
  edQtdUC_Bairro.Value := 0;
  edQtdUC_Calc.Value := 0;
  Gauge1.Progress := 0;
  HabilitaBotoes(True,False,False);
  cdsUnidConsum.Close;
  cdsCalcFatBairro.Close;
  qryBairroEmissao.Close;
  if GridDetCalc.Visible then
     btnDetCalculo.Click;
  frmeBairro1.edId.Text := '';
  frmeBairro1.edId.SetFocus;
  cdsCalcFatBairro.Close;

  btnCancelar.Enabled := False;

end;

procedure TfrmCalcTarifaBairro.edDtVenctoExit(Sender: TObject);
begin
  if EmptyData(edDtVencto.Text) then exit;
  if StrToDate(edDtVencto.Text) <= StrToDate(edDtEmissao.Text) then
     edDtEmissao.SetFocus;
end;

procedure TfrmCalcTarifaBairro.edPesquisaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Shift = [] then NavegaClient(Key,GridTable1DBTableView1);
end;

procedure TfrmCalcTarifaBairro.edPesquisaPropertiesChange(
  Sender: TObject);
begin
   if not TcxTextEdit(Sender).Enabled then exit;
   PesquisaIncremental(TcxTextEdit(Sender).Text,ds1,pv_sCodIndex);
end;

procedure TfrmCalcTarifaBairro.edTotValPrincipalPropertiesChange(Sender: TObject);
begin
  edTotValTotal.Value := (edTotValPrincipal.Value + edTotValMulta.Value + edTotValOutroDeb.Value) -
    edTotValOutroCred.Value;
  Application.ProcessMessages;

end;

procedure TfrmCalcTarifaBairro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsUnidConsum.Close;
  qryBairroEmissao.Close;
end;

procedure TfrmCalcTarifaBairro.FormCreate(Sender: TObject);
begin
 inherited;
 pv_sCodIndex := 'NOME_PESSOA';
 Caption := 'CÁLCULAR FATURAS DO MÊS POR BAIRRO ...';
end;

procedure TfrmCalcTarifaBairro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If (Shift = []) And (Key = VK_F3) Then
     if not frmeBairro1.Enabled then
        if edPesquisa.Enabled then
           edPesquisa.SetFocus;
end;

procedure TfrmCalcTarifaBairro.FormShow(Sender: TObject);
begin
  inherited;

  pv_lCalculando := False;
  mTbDetCalc.CreateDataSet;
  mTbDetCalc.Open;
  mTbDetCalc.IndexFieldNames := 'ID_UNID_CONSUM;COD_ITEM;ID';
  HabilitaBotoes(True,False,False);
  btnCancelar.Enabled := False;

  frmeBairro1.edId.SetFocus;
end;

procedure TfrmCalcTarifaBairro.frmeBairro1edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro1.edIdExit(Sender);
end;

procedure TfrmCalcTarifaBairro.frmeBairro1edIdPropertiesChange(Sender: TObject);
begin
  inherited;
  if Trim(frmeBairro1.edId.Text) = '' then frmeBairro1.edDescricao.Text := '';
end;

procedure TfrmCalcTarifaBairro.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  edPesquisa.Enabled := (GridTable1DBTableView1.Columns[AColumn.Index].Tag = 1);
  lblTitColPesquisa.Enabled := edPesquisa.Enabled;
  cdsCalcFatBairro.IndexFieldNames := GridTable1DBTableView1.
     Columns[AColumn.Index].DataBinding.FieldName;
end;

procedure TfrmCalcTarifaBairro.HabilitaBotoes(lOpcao1,lOpcao2,lOpcao3: Boolean);
begin

   frmeBairro1.Enabled            := lOpcao1;
   btnAplicar.Enabled             := lOpcao1;
   //edDtEmissao.Properties.ReadOnly:= Not lOpcao1;
   //edDtVencto.Properties.ReadOnly := Not lOpcao1;
   btnLimpar.Enabled              := Not lOpcao1;
   btnVerificar.Enabled           := Not lOpcao1;

   btnCalcular.Enabled            := lOpcao2;

   btnGravar.Enabled              := lOpcao3;
   btnDetCalculo.Enabled          := lOpcao3;

end;

procedure TfrmCalcTarifaBairro.AtualizaTotais;
begin

   qryResumoBairro.Close;
   qryResumoBairro.ParamByName('panomes').Value := glb_sAnoMesTrab;
   qryResumoBairro.ParamByName('pbairro').Value := StrToInt(Trim(frmeBairro1.edId.Text));
   qryResumoBairro.Open;

   edTotValPrincipal.Value := qryResumoBairroVAL_PRINCIPAL.AsCurrency;
   edTotValMulta.Value := qryResumoBairroVAL_MULTA.AsCurrency;
   edTotValOutroDeb.Value := qryResumoBairroVAL_OUTRO_DEB.AsCurrency;
   edTotValOutroCred.Value := qryResumoBairroVAL_OUTRO_cred.AsCurrency;

end;

function TfrmCalcTarifaBairro.ValItemCalc(sCod, sDC: string): Currency;
Var
   crTemp: Currency;
begin

   crTemp := 0;
   cdsCalcFatIndividual.DisableControls;
   cdsCalcFatIndividual.First;
   while not cdsCalcFatIndividual.eof do
   begin
      if (cdsCalcFatIndividualR_COD_ITEM.Value = sCod) and
         (cdsCalcFatIndividualR_TIPO.Value = sDC) then
         crTemp := crTemp + cdsCalcFatIndividualR_VALOR.AsCurrency;
      cdsCalcFatIndividual.Next;
   end;
   cdsCalcFatIndividual.EnableControls;

   Result := crTemp;

end;

end.
