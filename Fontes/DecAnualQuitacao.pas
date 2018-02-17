unit DecAnualQuitacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxGroupBox, Grids, DBGrids, Buttons,
  fmeMultiLogradouro, fmeBairro, cxTextEdit, cxMaskEdit, cxSpinEdit, cxCheckBox, FMTBcd, DB, DBClient,
  Provider, SqlExpr, cxDBEdit, StrUtils, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmDecAnualQuita = class(TfrmPadrao1)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    chkImpSomenteNaoEmitidas: TcxCheckBox;
    edAno: TcxSpinEdit;
    Label3: TLabel;
    frmeBairro1: TfrmeBairro;
    frmeMultiLogradouro1: TfrmeMultiLogradouro;
    btnOk: TBitBtn;
    btnLimpar: TBitBtn;
    dbgUC: TDBGrid;
    cxGroupBox1: TcxGroupBox;
    dsUnidConsum: TDataSource;
    qryUnidConsum: TSQLQuery;
    provUnidConsum: TDataSetProvider;
    cdsUnidConsum: TClientDataSet;
    cxGroupBox2: TcxGroupBox;
    edEndereco: TcxDBTextEdit;
    dsFaturas: TDataSource;
    DBGrid1: TDBGrid;
    mTbFaturas: TClientDataSet;
    mTbFaturasMES: TStringField;
    mTbFaturasNOME_MES: TStringField;
    mTbFaturasVENCTO: TDateField;
    mTbFaturasVALOR: TCurrencyField;
    cdsUnidConsumR_NUM_DEC: TStringField;
    cdsUnidConsumR_ID_UNID_CONSUM: TIntegerField;
    cdsUnidConsumR_ID_UC_FTDO: TStringField;
    cdsUnidConsumR_NOME_RAZAO: TStringField;
    cdsUnidConsumR_NUM_LIGACAO: TStringField;
    cdsUnidConsumR_NUM_HIDROMETRO: TStringField;
    cdsUnidConsumR_CPF_CNPJ_FTDO: TStringField;
    cdsUnidConsumR_ENDER_ID_DISTRITO: TIntegerField;
    cdsUnidConsumR_ENDER_DESCR_DISTRITO: TStringField;
    cdsUnidConsumR_ENDER_ID_BAIRRO: TIntegerField;
    cdsUnidConsumR_ENDER_DESCR_BAIRRO: TStringField;
    cdsUnidConsumR_ENDER_UC_NUM_LETRA: TStringField;
    cdsUnidConsumR_ENDER_ID_LOGRAD: TIntegerField;
    cdsUnidConsumR_ENDER_DESCR_LOGRAD: TStringField;
    cdsUnidConsumR_EMITE_QUITACAO: TStringField;
    cdsUnidConsumR_DT_VENCTO_01: TDateField;
    cdsUnidConsumR_VALOR_01: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_01: TDateField;
    cdsUnidConsumR_DT_VENCTO_02: TDateField;
    cdsUnidConsumR_VALOR_02: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_02: TDateField;
    cdsUnidConsumR_DT_VENCTO_03: TDateField;
    cdsUnidConsumR_VALOR_03: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_03: TDateField;
    cdsUnidConsumR_DT_VENCTO_04: TDateField;
    cdsUnidConsumR_VALOR_04: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_04: TDateField;
    cdsUnidConsumR_DT_VENCTO_05: TDateField;
    cdsUnidConsumR_VALOR_05: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_05: TDateField;
    cdsUnidConsumR_DT_VENCTO_06: TDateField;
    cdsUnidConsumR_VALOR_06: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_06: TDateField;
    cdsUnidConsumR_DT_VENCTO_07: TDateField;
    cdsUnidConsumR_VALOR_07: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_07: TDateField;
    cdsUnidConsumR_DT_VENCTO_08: TDateField;
    cdsUnidConsumR_VALOR_08: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_08: TDateField;
    cdsUnidConsumR_DT_VENCTO_09: TDateField;
    cdsUnidConsumR_VALOR_09: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_09: TDateField;
    cdsUnidConsumR_DT_VENCTO_10: TDateField;
    cdsUnidConsumR_VALOR_10: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_10: TDateField;
    cdsUnidConsumR_DT_VENCTO_11: TDateField;
    cdsUnidConsumR_VALOR_11: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_11: TDateField;
    cdsUnidConsumR_DT_VENCTO_12: TDateField;
    cdsUnidConsumR_VALOR_12: TFMTBCDField;
    cdsUnidConsumR_DT_PAGTO_12: TDateField;
    btnSair: TBitBtn;
    mTbFaturas2: TClientDataSet;
    dsFaturas2: TDataSource;
    mTbFaturas2MES: TStringField;
    mTbFaturas2NOME_MES: TStringField;
    mTbFaturas2VENCTO: TDateField;
    mTbFaturas2VALOR: TCurrencyField;
    DBGrid2: TDBGrid;
    cdsUnidConsumR_VIA_EMITIDA: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    lblQtdTotal: TLabel;
    lblQtdImprime: TLabel;
    chkVisualiza: TcxCheckBox;
    btnImprime: TBitBtn;
    mTbFaturasDT_PAGTO: TStringField;
    mTbFaturas2DT_PAGTO: TStringField;
    spAtualizaVia: TSQLStoredProc;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure frmeBairro1edIdExit(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure cdsUnidConsumAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkImpSomenteNaoEmitidasClick(Sender: TObject);
    procedure btnImprimeClick(Sender: TObject);
  private
    pv_sExibeFaturas: string[1];
    procedure HabilitaBotoes(lOpcao, lOpcao2: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDecAnualQuita: TfrmDecAnualQuita;

implementation

uses udmPrincipal, gsLib, VarGlobais, udmRelFinanceiros;

{$R *.dfm}

procedure TfrmDecAnualQuita.btnImprimeClick(Sender: TObject);
begin

  dmRelFinanceiros := TdmRelFinanceiros.Create(Self);
  dmRelFinanceiros.RelDecAnualQuitacaoUC(0,Trim(frmeBairro1.edId.Text),edAno.Text,
     frmeMultiLogradouro1.edMultiLograd.Text,chkVisualiza.Checked);

  if Confirma('Deseja Registrar essa Impressão ?') then
  begin
     spAtualizaVia.Close;
     spAtualizaVia.ParamByName('pe_ano').Value := edAno.Text;
     spAtualizaVia.ParamByName('pe_bairro').Value := Trim(frmeBairro1.edId.Text);
     spAtualizaVia.ParamByName('pe_multi_lograd').Value := AjustaTextoParamVarios(
        frmeMultiLogradouro1.edMultiLograd.Text);
     spAtualizaVia.ParamByName('pe_uc').Value := 0;
     spAtualizaVia.ExecProc;
  end;
  FreeAndNil(dmRelFinanceiros);

end;

procedure TfrmDecAnualQuita.btnLimparClick(Sender: TObject);
begin
  mTbFaturas.Close;
  mTbFaturas2.Close;
  cdsUnidConsum.Close;
    HabilitaBotoes(True,False);
  frmeMultiLogradouro1.edMultiLograd.Text := '';
  frmeBairro1.edId.SetFocus;
end;

procedure TfrmDecAnualQuita.btnOkClick(Sender: TObject);
Var
  tr1: TTransactionDesc;
begin

  Screen.Cursor := crHourGlass;

  Panel1.Caption := ' Aguarde, processando ....';
  Application.ProcessMessages;

  tr1.TransactionID := 1;
  tr1.IsolationLevel := xilREADCOMMITTED;
  dmPrincipal.SConPrincipal.StartTransaction(tr1);

  pv_sExibeFaturas := 'N';
  cdsUnidConsum.Close;
  qryUnidConsum.ParamByName('pAno').Value    := Trim(edAno.Text);
  qryUnidConsum.ParamByName('pBairro').Value := Trim(frmeBairro1.edId.Text);
  qryUnidConsum.ParamByName('pMultiLograd').Value := AjustaTextoParamVarios(
     frmeMultiLogradouro1.edMultiLograd.Text);
  cdsUnidConsum.Open;

  dmPrincipal.SConPrincipal.Commit(tr1);

  chkImpSomenteNaoEmitidasClick(Self);

  Screen.Cursor := crDefault;

  dbgUC.SetFocus;

  Panel1.Caption := '';
  Application.ProcessMessages;

  HabilitaBotoes(False,True);

  pv_sExibeFaturas := 'S';
  cdsUnidConsum.First;

end;

procedure TfrmDecAnualQuita.cdsUnidConsumAfterScroll(DataSet: TDataSet);
Var
  iConta: Integer;
  sMes  : string[2];
begin

  if pv_sExibeFaturas <> 'S' then exit;

  mTbFaturas.EmptyDataSet;
  mTbFaturas.Close;
  mTbFaturas.Open;
  mTbFaturas2.EmptyDataSet;
  mTbFaturas2.Close;
  mTbFaturas2.Open;

  for iConta := 1 to 12 do
  begin
     sMes := PreencheZeros(IntToStr(iConta),2);
     if not cdsUnidConsum.FieldByName('R_DT_VENCTO_'+sMes).IsNull then
     begin

        if iConta <= 6 then
        begin
           mTbFaturas.Append;
           mTbFaturasMES.Value       := sMes;
           mTbFaturasNOME_MES.Value  := NomeMes(iConta);
           mTbFaturasVENCTO.Value    := cdsUnidConsum.FieldByName('R_DT_VENCTO_'+sMes).Value;
           mTbFaturasVALOR.Value     := cdsUnidConsum.FieldByName('R_valor_'+sMes).Value;
           if not cdsUnidConsum.FieldByName('R_dt_pagto_'+sMes).IsNull then
              mTbFaturasDT_PAGTO.Value  := cdsUnidConsum.FieldByName('R_dt_pagto_'+sMes).AsString
           else
              mTbFaturasDT_PAGTO.Value  := 'INADIMPLENTE';

           mTbFaturas.Post;
        end else
        begin
           mTbFaturas2.Append;
           mTbFaturas2MES.Value       := sMes;
           mTbFaturas2NOME_MES.Value  := NomeMes(iConta);
           mTbFaturas2VENCTO.Value    := cdsUnidConsum.FieldByName('R_DT_VENCTO_'+sMes).Value;
           mTbFaturas2VALOR.Value     := cdsUnidConsum.FieldByName('R_valor_'+sMes).Value;
           if not cdsUnidConsum.FieldByName('R_dt_pagto_'+sMes).IsNull then
              mTbFaturas2DT_PAGTO.Value  := cdsUnidConsum.FieldByName('R_dt_pagto_'+sMes).AsString
           else
              mTbFaturas2DT_PAGTO.Value  := 'INADIMPLENTE';
           mTbFaturas2.Post;
        end;
     end;

  end;

end;

procedure TfrmDecAnualQuita.chkImpSomenteNaoEmitidasClick(Sender: TObject);
Var
  iConta: Integer;
begin

  if not cdsUnidConsum.Active then exit;

  cdsUnidConsum.Filtered := False;
  if chkImpSomenteNaoEmitidas.Checked then
  begin
    cdsUnidConsum.Filter := 'R_VIA_EMITIDA = '+QuotedStr('0');
    cdsUnidConsum.Filtered := True;
  end;

  iConta := 0;
  cdsUnidConsum.DisableControls;
  lblQtdTotal.Caption := FormatCurr(',0',cdsUnidConsum.RecordCount);
  cdsUnidConsum.First;
  while not cdsUnidConsum.eof do
  begin
     if cdsUnidConsumR_EMITE_QUITACAO.Value = 'S' then
        Inc(iConta);
     cdsUnidConsum.Next;
  end;
  lblQtdImprime.Caption := FormatCurr(',0',iConta);
  cdsUnidConsum.EnableControls;
  cdsUnidConsum.First;

end;

procedure TfrmDecAnualQuita.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  mTbFaturas.Close;
  mTbFaturas2.Close;
  cdsUnidConsum.Close;
end;

procedure TfrmDecAnualQuita.FormCreate(Sender: TObject);
begin
  inherited;

  Caption := '$ DECLARAÇÃO ANUAL DE QUITAÇÃO DE DÉBITO $';
  mTbFaturas.CreateDataSet;
  mTbFaturas.Open;
  mTbFaturas2.CreateDataSet;
  mTbFaturas2.Open;
end;

procedure TfrmDecAnualQuita.FormShow(Sender: TObject);
begin
  inherited;
  lblQtdTotal.Caption   := '0';
  lblQtdImprime.Caption := '0';
  edAno.Value := StrToInt(LeftStr(glb_sAnoMesTrab,4));
  Panel1.Caption := '';
  HabilitaBotoes(True,False);
  frmeBairro1.edId.SetFocus;
end;

procedure TfrmDecAnualQuita.frmeBairro1edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro1.edIdExit(Sender);
  frmeMultiLogradouro1.pb_sIdBairro := Trim(frmeBairro1.edId.Text);

end;

procedure TfrmDecAnualQuita.HabilitaBotoes(lOpcao,lOpcao2: Boolean);
begin
   frmeBairro1.Enabled := lOpcao;
   frmeMultiLogradouro1.Enabled := lOpcao;
   edAno.Properties.ReadOnly := Not lOpcao;
   btnOk.Enabled := lOpcao;
   btnLimpar.Enabled := lOpcao2;
end;

end.
