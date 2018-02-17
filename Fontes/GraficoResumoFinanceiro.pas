unit GraficoResumoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, cxContainer, StdCtrls, Buttons, cxCheckBox, SqlExpr, Provider, DBClient, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxSpinEdit, ExtCtrls, cxCurrencyEdit, cxPC, dxCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, dxBarBuiltInMenu,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.DBChart, VCLTee.TeeDBCrossTab,
  VCLTee.Series, VCLTee.Chart, VCLTee.TeeProcs;

type
  TfrmGrfcoResumFinanc = class(TfrmPadrao1)
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    dsGrafico: TDataSource;
    qryGrafico: TSQLQuery;
    pnRodape: TPanel;
    chkVisualiza: TcxCheckBox;
    btnImprime: TBitBtn;
    btnSair: TBitBtn;
    pnAno: TPanel;
    Label3: TLabel;
    btnOk: TBitBtn;
    btnLimpar: TBitBtn;
    cdsGrafico: TClientDataSet;
    provGrafico: TDataSetProvider;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    GridTableDBTableView1Column5: TcxGridDBColumn;
    GridTableDBTableView1Column6: TcxGridDBColumn;
    cdsGraficoR_ID_BAIRRO: TIntegerField;
    cdsGraficoR_DESCR_BAIRRO: TStringField;
    cdsGraficoR_QTD_UND_ADIMPLENTES: TIntegerField;
    cdsGraficoR_QTD_UND_INADIMPLENTES: TIntegerField;
    cdsGraficoR_QTD_UND_TOTAL: TIntegerField;
    cdsGraficoR_VAL_UND_ADIMPLENTES: TFMTBCDField;
    cdsGraficoR_VAL_UND_INADIMPLENTES: TFMTBCDField;
    cdsGraficoR_VAL_UND_TOTAL: TFMTBCDField;
    cdsGraficoR_PERC_UC_ADIMPLEN: TFMTBCDField;
    cdsGraficoR_PERC_UC_INADIMPLEN: TFMTBCDField;
    GridTableDBTableView1Column9: TcxGridDBColumn;
    GridTableDBTableView1Column10: TcxGridDBColumn;
    edMesAnoIni: TcxMaskEdit;
    Label1: TLabel;
    edMesAnoFim: TcxMaskEdit;
    Panel1: TPanel;
    edQtdUC_Geral: TcxCurrencyEdit;
    edQtdUC_Adimplen: TcxCurrencyEdit;
    edQtdUC_Inadimplen: TcxCurrencyEdit;
    edValFat_Geral: TcxCurrencyEdit;
    edValFat_Adimplen: TcxCurrencyEdit;
    edValFat_Inadimplen: TcxCurrencyEdit;
    mTbTotais: TClientDataSet;
    mTbTotaisDescricao: TStringField;
    mTbTotaisValor: TCurrencyField;
    edPercInadimplen: TcxCurrencyEdit;
    edPercAdimplen: TcxCurrencyEdit;
    PageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    DBChart1: TDBChart;
    Series1: TPieSeries;
    DBCrossTabSource1: TDBCrossTabSource;
    Chart1: TChart;
    Series2: TBarSeries;
    Series3: TBarSeries;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    procedure GeraGraficoGeral;
    procedure LimpaTotais;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrfcoResumFinanc: TfrmGrfcoResumFinanc;

implementation

uses udmPrincipal, udmRelFinanceiros, gsLib;

{$R *.dfm}

procedure TfrmGrfcoResumFinanc.btnImprimeClick(Sender: TObject);
begin
  dmRelFinanceiros := TdmRelFinanceiros.Create(Self);
  {
  dmRelFinanceiros.RelDecAnualQuitacaoUC(pb_iUC,'0',edAno.Text,'0',chkVisualiza.Checked);
  }
  FreeAndNil(dmRelFinanceiros);
end;

procedure TfrmGrfcoResumFinanc.btnLimparClick(Sender: TObject);
begin
  inherited;
  LimpaTotais;
  DBChart1.Title.Caption:= '';
  DBChart1.Foot.Caption := '';
  if cdsGrafico.Active then
     cdsGrafico.EmptyDataSet;
  if mTbTotais.Active then
     mTbTotais.EmptyDataSet;
  mTbTotais.Close;
  cdsGrafico.Close;
  btnOk.Enabled := True;
  edMesAnoIni.SetFocus;
end;

procedure TfrmGrfcoResumFinanc.btnOkClick(Sender: TObject);
Var
  iConta: Integer;
  sMes  : string[2];
  sFatEmAberto: string[1];
  tr1: TTransactionDesc;

begin

  Screen.Cursor := crHourGlass;
  pnRodape.Caption := ' Aguarde, processando ...';
  Application.ProcessMessages;

  btnOk.Enabled := False;

  cdsGrafico.Close;
  cdsGrafico.IndexFieldNames := 'r_ID_BAIRRO';
  qryGrafico.ParamByName('AnoMesIni').Value := InverteAnoMes(edMesAnoIni.Text,'1');
  qryGrafico.ParamByName('AnoMesFim').Value := InverteAnoMes(edMesAnoFim.Text,'1');
  cdsGrafico.Open;

  GeraGraficoGeral;

  Screen.Cursor := crDefault;
  pnRodape.Caption := '';
  Application.ProcessMessages;

  GridTable.SetFocus;

end;

procedure TfrmGrfcoResumFinanc.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmGrfcoResumFinanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsGrafico.Close;
end;

procedure TfrmGrfcoResumFinanc.FormCreate(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := 0;
  mTbTotais.CreateDataSet;
end;

procedure TfrmGrfcoResumFinanc.FormShow(Sender: TObject);
begin
  inherited;
  edMesAnoIni.SetFocus;
end;

procedure TfrmGrfcoResumFinanc.GeraGraficoGeral;
Var
  crTotPercAdimplen,
  crTotPercInadimplen: Currency;
begin

  PageControl1.ActivePageIndex := 0;
  mTbTotais.Open;
  DBChart1.Series[0].Title := 'FATURAS EMITIDAS NO PERÍODO DE '+edMesAnoIni.Text+' A '+edMesAnoFim.Text;
  LimpaTotais;

  crTotPercAdimplen  := 0;
  crTotPercInadimplen:= 0;

  cdsGrafico.DisableControls;
  while not cdsGrafico.eof do
  begin
     edQtdUC_Adimplen.Value   := edQtdUC_Adimplen.Value + cdsGraficoR_QTD_UND_ADIMPLENTES.Value;
     edQtdUC_Inadimplen.Value := edQtdUC_Inadimplen.Value + cdsGraficoR_QTD_UND_INADIMPLENTES.Value;
     edValFat_Adimplen.Value  := edValFat_Adimplen.Value + cdsGraficoR_VAL_UND_ADIMPLENTES.AsCurrency;
     edValFat_Inadimplen.Value:= edValFat_Inadimplen.Value + cdsGraficoR_VAL_UND_INADIMPLENTES.AsCurrency;
     crTotPercAdimplen        := crTotPercAdimplen + cdsGraficoR_PERC_UC_ADIMPLEN.AsCurrency;
     crTotPercInadimplen      := crTotPercInadimplen + cdsGraficoR_PERC_UC_INADIMPLEN.AsCurrency;;
     cdsGrafico.Next;
  end;
  cdsGrafico.First;
  cdsGrafico.EnableControls;

  edQtdUC_Geral.Value   := edQtdUC_Adimplen.Value + edQtdUC_Inadimplen.Value;
  edValFat_Geral.Value  := edValFat_Adimplen.Value + edValFat_Inadimplen.Value;
  edPercAdimplen.Value  := crTotPercAdimplen / cdsGrafico.RecordCount;
  edPercInadimplen.Value:= crTotPercInadimplen / cdsGrafico.RecordCount;

  mTbTotais.Insert;
  mTbTotaisDescricao.Value := 'Adimplentes';
  mTbTotaisValor.AsCurrency := edValFat_Adimplen.Value;
  mTbTotais.Post;
  mTbTotais.Insert;
  mTbTotaisDescricao.Value := 'Inadimplentes';
  mTbTotaisValor.AsCurrency := edValFat_Inadimplen.Value;
  mTbTotais.Post;

  DBChart1.Title.Font.Size := 11;
  DBChart1.Title.Font.Style:= [fsBold];
  DBChart1.Title.Caption   := 'FATURAS EMITIDAS NO PERÍODO DE: '+FormatString('99/9999',edMesAnoIni.Text)+
    ' A '+FormatString('99/9999',edMesAnoFim.Text);
  DBChart1.Foot.Font.Color := clMaroon;
  DBChart1.Foot.Font.Size  := 11;
  DBChart1.Foot.Font.Style := [fsBold];
  DBChart1.Foot.Caption    := 'Adimplentes: '+FormatCurr(',0.00',edPercAdimplen.Value)+'% - Inadimplentes: '+
     FormatCurr(',0.00',edPercInadimplen.Value)+'%';

  Application.ProcessMessages;

  Application.ProcessMessages;

end;

procedure TfrmGrfcoResumFinanc.LimpaTotais;
begin
  edQtdUC_Geral.Value      := 0;
  edQtdUC_Adimplen.Value   := 0;
  edQtdUC_Inadimplen.Value := 0;
  edValFat_Adimplen.Value  := 0;
  edValFat_Inadimplen.Value:= 0;
  edPercAdimplen.Value     := 0;
  edPercInadimplen.Value   := 0;
end;

procedure TfrmGrfcoResumFinanc.PageControl1Change(Sender: TObject);
Var
  iConta: Integer;
  crPerc: Currency;
begin
  if PageControl1.ActivePageIndex = 0 then exit;
  Series2.Clear;
  Series2.Title := 'ADIMPLENTES';
  Series3.Clear;
  Series3.Title := 'INADIMPLENTES';
  cdsGrafico.DisableControls;
  while not cdsGrafico.Eof do
  begin
    crPerc := (cdsGraficoR_VAL_UND_ADIMPLENTES.AsCurrency / cdsGraficoR_VAL_UND_TOTAL.AsCurrency) * 100;
    Series2.Add(cdsGraficoR_VAL_UND_ADIMPLENTES.AsCurrency,FormatCurr(',0.00',crPerc)+'%');
    crPerc := (cdsGraficoR_VAL_UND_INADIMPLENTES.AsCurrency / cdsGraficoR_VAL_UND_TOTAL.AsCurrency) * 100;
    Series3.Add(cdsGraficoR_VAL_UND_INADIMPLENTES.AsCurrency,FormatCurr(',0.00',crPerc)+'%');
    cdsGrafico.Next;
  end;
  cdsGrafico.EnableControls;
end;

end.
