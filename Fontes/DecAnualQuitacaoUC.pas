unit DecAnualQuitacaoUC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, FMTBcd, cxContainer, StdCtrls, Buttons, cxCheckBox, SqlExpr, Provider, DBClient, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxSpinEdit, ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator;

type
  TfrmDecAnualQuitaUC = class(TfrmPadrao1)
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    dsHistFatura: TDataSource;
    qryHistFatura: TSQLQuery;
    pnRodape: TPanel;
    chkVisualiza: TcxCheckBox;
    btnImprime: TBitBtn;
    btnSair: TBitBtn;
    pnAno: TPanel;
    Label3: TLabel;
    edAno: TcxSpinEdit;
    btnOk: TBitBtn;
    btnLimpar: TBitBtn;
    qryHistFaturaR_VIA_EMITIDA: TStringField;
    qryHistFaturaR_DT_VENCTO_01: TDateField;
    qryHistFaturaR_VALOR_01: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_01: TDateField;
    qryHistFaturaR_DT_VENCTO_02: TDateField;
    qryHistFaturaR_VALOR_02: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_02: TDateField;
    qryHistFaturaR_DT_VENCTO_03: TDateField;
    qryHistFaturaR_VALOR_03: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_03: TDateField;
    qryHistFaturaR_DT_VENCTO_04: TDateField;
    qryHistFaturaR_VALOR_04: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_04: TDateField;
    qryHistFaturaR_DT_VENCTO_05: TDateField;
    qryHistFaturaR_VALOR_05: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_05: TDateField;
    qryHistFaturaR_DT_VENCTO_06: TDateField;
    qryHistFaturaR_VALOR_06: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_06: TDateField;
    qryHistFaturaR_DT_VENCTO_07: TDateField;
    qryHistFaturaR_VALOR_07: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_07: TDateField;
    qryHistFaturaR_DT_VENCTO_08: TDateField;
    qryHistFaturaR_VALOR_08: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_08: TDateField;
    qryHistFaturaR_DT_VENCTO_09: TDateField;
    qryHistFaturaR_VALOR_09: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_09: TDateField;
    qryHistFaturaR_DT_VENCTO_10: TDateField;
    qryHistFaturaR_VALOR_10: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_10: TDateField;
    qryHistFaturaR_DT_VENCTO_11: TDateField;
    qryHistFaturaR_VALOR_11: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_11: TDateField;
    qryHistFaturaR_DT_VENCTO_12: TDateField;
    qryHistFaturaR_VALOR_12: TFMTBCDField;
    qryHistFaturaR_DT_PAGTO_12: TDateField;
    mTbHistFatura: TClientDataSet;
    mTbHistFaturaMes: TStringField;
    mTbHistFaturaNome_Mes: TStringField;
    mTbHistFaturaDt_Vencto: TDateField;
    mTbHistFaturaValor: TCurrencyField;
    mTbHistFaturaDt_Pagto: TStringField;
    spAtualizaVia: TSQLStoredProc;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_iUC: Integer;
    pb_sAno: string[4];
  end;

var
  frmDecAnualQuitaUC: TfrmDecAnualQuitaUC;

implementation

uses udmPrincipal, udmRelFinanceiros, gsLib;

{$R *.dfm}

procedure TfrmDecAnualQuitaUC.btnImprimeClick(Sender: TObject);
begin

  dmRelFinanceiros := TdmRelFinanceiros.Create(Self);
  dmRelFinanceiros.RelDecAnualQuitacaoUC(pb_iUC,'0',edAno.Text,'0',chkVisualiza.Checked);

  if Confirma('Deseja Registrar essa Impressão ?') then
  begin
     spAtualizaVia.Close;
     spAtualizaVia.ParamByName('pe_ano').Value := edAno.Text;
     spAtualizaVia.ParamByName('pe_bairro').Value := '0';
     spAtualizaVia.ParamByName('pe_multi_lograd').Value := '0';
     spAtualizaVia.ParamByName('pe_uc').Value := pb_iUC;
     spAtualizaVia.ExecProc;
  end;
  FreeAndNil(dmRelFinanceiros);
end;

procedure TfrmDecAnualQuitaUC.btnLimparClick(Sender: TObject);
begin
  inherited;
  mTbHistFatura.EmptyDataSet;
  mTbHistFatura.Close;
  qryHistFatura.Close;
  btnOk.Enabled := True;
  edAno.SetFocus;
end;

procedure TfrmDecAnualQuitaUC.btnOkClick(Sender: TObject);
Var
  iConta: Integer;
  sMes  : string[2];
  sFatEmAberto: string[1];
  tr1: TTransactionDesc;
begin

  Screen.Cursor := crHourGlass;

  btnOk.Enabled := False;

  sFatEmAberto := 'N';

  mTbHistFatura.Open;

  tr1.TransactionID := 1;
  tr1.IsolationLevel := xilREADCOMMITTED;
  dmPrincipal.SConPrincipal.StartTransaction(tr1);

  qryHistFatura.Close;
  qryHistFatura.ParamByName('pAno').Value := edAno.Text;
  qryHistFatura.ParamByName('pUC').Value  := pb_iUC;
  qryHistFatura.ParamByName('pUC2').Value := pb_iUC;
  qryHistFatura.Open;

  dmPrincipal.SConPrincipal.Commit(tr1);

  chkVisualiza.Enabled := False;
  btnImprime.Enabled   := False;

  for iConta := 1 to 12 do
  begin
     sMes := PreencheZeros(IntToStr(iConta),2);
     if not qryHistFatura.FieldByName('R_DT_VENCTO_'+sMes).IsNull then
     begin
        mTbHistFatura.Append;
        mTbHistFaturaMES.Value       := sMes;
        mTbHistFaturaNOME_MES.Value  := NomeMes(iConta);
        mTbHistFaturaDt_Vencto.Value := qryHistFatura.FieldByName('R_DT_VENCTO_'+sMes).Value;
        mTbHistFaturaVALOR.AsCurrency:= qryHistFatura.FieldByName('R_valor_'+sMes).AsCurrency;
        if not qryHistFatura.FieldByName('R_dt_pagto_'+sMes).IsNull then
           mTbHistFaturaDT_PAGTO.Value  := qryHistFatura.FieldByName('R_dt_pagto_'+sMes).AsString
        else begin
           mTbHistFaturaDT_PAGTO.Value  := 'INADIMPLENTE';
           sFatEmAberto := 'S';
        end;
        mTbHistFatura.Post;
     end;
  end;

  if sFatEmAberto = 'N' then
  begin
     chkVisualiza.Enabled := True;
     btnImprime.Enabled   := True;
  end;

  Screen.Cursor := crDefault;

  GridTable.SetFocus;

end;

procedure TfrmDecAnualQuitaUC.btnSairClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TfrmDecAnualQuitaUC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  mTbHistFatura.Close;
  qryHistFatura.Close;
end;

procedure TfrmDecAnualQuitaUC.FormCreate(Sender: TObject);
begin
  inherited;
  mTbHistFatura.CreateDataSet;
end;

procedure TfrmDecAnualQuitaUC.FormShow(Sender: TObject);
begin
  inherited;
  edAno.Text := pb_sAno;
  edAno.SetFocus;
end;

end.
