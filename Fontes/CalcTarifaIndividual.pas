unit CalcTarifaIndividual;

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
  cxDBEdit, cxCurrencyEdit, fmeUnidConsumidora, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils, cxNavigator;

type
  TfrmCalcTarifaIndividual = class(TfrmPadrao1)
    Panel1: TPanel;
    qryResumoBairro: TSQLQuery;
    qryResumoBairroANO_MES: TStringField;
    qryResumoBairroID_BAIRRO: TIntegerField;
    qryResumoBairroDT_EMISSAO: TDateField;
    qryResumoBairroDT_VENCIMENTO: TDateField;
    qryResumoBairroDT_TOLERANCIA: TDateField;
    qryResumoBairroQTD_UNID_CONSUM_TOTAL: TIntegerField;
    qryResumoBairroQTD_UNID_CONSUM_CALC: TIntegerField;
    qryResumoBairroVAL_PRINCIPAL: TFMTBCDField;
    qryResumoBairroVAL_MULTA: TFMTBCDField;
    qryResumoBairroVAL_OUTRO_DEB: TFMTBCDField;
    qryResumoBairroVAL_OUTRO_CRED: TFMTBCDField;
    edSituacao: TcxTextEdit;
    edNumLigacao: TcxTextEdit;
    edDtLigacao: TcxTextEdit;
    edUltRelig: TcxTextEdit;
    edUltCorte: TcxTextEdit;
    edCategoria: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxLabel8: TcxLabel;
    edEndereco: TcxTextEdit;
    edMesAno: TcxMaskEdit;
    cxLabel3: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    frmeUnidConsum1: TfrmeUnidConsum;
    Bevel1: TBevel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edDtVencto: TcxDateEdit;
    edDtEmissao: TcxDateEdit;
    edValAgua: TcxCurrencyEdit;
    edValMulta: TcxCurrencyEdit;
    edValOutroDeb: TcxCurrencyEdit;
    edValOutroCred: TcxCurrencyEdit;
    edValTotal: TcxCurrencyEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    btnDelMultas: TcxButton;
    qryUnidConsumidora: TSQLQuery;
    dsCalctFatura: TDataSource;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    Label1: TLabel;
    qryUnidConsumidoraNOME_PESSOA: TStringField;
    qryUnidConsumidoraCPF_CNPJ_FTDO: TStringField;
    qryUnidConsumidoraDT_LIGACAO: TDateField;
    qryUnidConsumidoraNUM_LIGACAO: TStringField;
    qryUnidConsumidoraENDER_ID_DISTRITO: TIntegerField;
    qryUnidConsumidoraENDER_ID_BAIRRO: TIntegerField;
    qryUnidConsumidoraENDER_ID_LOGRAD: TIntegerField;
    qryUnidConsumidoraENDER_DESCR_LOGRAD: TStringField;
    qryUnidConsumidoraENDER_UC_NUM_LETRA: TStringField;
    qryUnidConsumidoraENDER_DESCR_BAIRRO: TStringField;
    qryUnidConsumidoraENDER_DESCR_DISTRITO: TStringField;
    qryUnidConsumidoraDESCR_TIPO_UNID_CONSUM: TStringField;
    qryUnidConsumidoraDESCR_SITUACAO: TStringField;
    qryUnidConsumidoraDT_ULT_CORTE: TDateField;
    qryUnidConsumidoraDT_ULT_RELIG: TDateField;
    btnSair: TcxButton;
    btnLimpar: TBitBtn;
    btnGravar: TcxButton;
    btnCalcular: TBitBtn;
    edValPrincipal: TcxCurrencyEdit;
    cxLabel7: TcxLabel;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    qryUnidConsumidoraNUM_HIDROMETRO: TStringField;
    qryCalcResum: TSQLQuery;
    provCalcResum: TDataSetProvider;
    cdsCalcResum: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FMTBCDField1: TFMTBCDField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    StringField6: TStringField;
    qryCalcFatura: TSQLQuery;
    provCalcFatura: TDataSetProvider;
    cdsCalcFatura: TClientDataSet;
    cdsCalcFaturaR_ITEM: TIntegerField;
    cdsCalcFaturaR_COD_ITEM: TStringField;
    cdsCalcFaturaR_DESCRICAO: TStringField;
    cdsCalcFaturaR_REFENCIA: TStringField;
    cdsCalcFaturaR_VALOR: TFMTBCDField;
    cdsCalcFaturaR_TIPO: TStringField;
    cdsCalcFaturaR_OBSERVACAO: TStringField;
    cdsCalcFaturaR_QTD_TORNEIRA: TIntegerField;
    cdsCalcFaturaR_MULTIPLIC: TIntegerField;
    cdsCalcFaturaR_CONSUMO_M3: TIntegerField;
    cdsCalcFaturaR_QTD_DIAS_ATRASO: TIntegerField;
    cdsCalcFaturaR_ANO_MES_MULTA: TStringField;
    qryUnidConsumidoraSITUACAO: TStringField;
    qryMovim: TSQLQuery;
    qryMovimR_QTD_DIAS: TIntegerField;
    cxLabel18: TcxLabel;
    edObservacao: TcxDBTextEdit;
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEventosClick(Sender: TObject);
    procedure edDtVenctoExit(Sender: TObject);
    procedure frmeUnidConsum1edIdExit(Sender: TObject);
    procedure edMesAnoExit(Sender: TObject);
    procedure frmeUnidConsum1edIdPropertiesChange(Sender: TObject);
    procedure btnDelMultasClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    pv_crTotValPrincipal,
    pv_crTotValMulta,
    pv_crTotValOutroDeb,
    pv_crTotValOutroCred,
    pv_crTotValTotal: Currency;
    procedure HabilitaBotoes(lOpcao1: Boolean);
    procedure AtualizaTotais;
    function FaturaQuitada: Boolean;
    { Private declarations }
  public
    { Public declarations }
    pb_iUnidConsum: Integer;
    pb_sAnoMes: string[6];
  end;

var
  frmCalcTarifaIndividual: TfrmCalcTarifaIndividual;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, DetalhaFatura;

{$R *.dfm}

procedure TfrmCalcTarifaIndividual.btnCalcularClick(Sender: TObject);
var
  sDtMovim,
  sDtMovim2   : String[10];
  sMesAno     : String[6];
  sAnoMes     : string[6];
  sIdUnidConsum : String;
  iQtdUnidConsum,
  iQtdCalc    : Integer;
  dDtTemp1,
  dDtTemp2: TDate;
begin

  if (Empty(frmeUnidConsum1.edId.Text)) or
     (Empty(edMesAno.Text)) or
     (EmptyData(edDtEmissao.Text)) or
     (EmptyData(edDtVencto.Text)) then
  begin
     frmeUnidConsum1.edId.SetFocus;
     exit;
  end;

  if FaturaQuitada then
  begin
     Mensagem('Esta Fatura desta Unidade Consumidora já está QUITADA ...',
        'AVISO !!!',MB_OK+MB_ICONINFORMATION);
     exit;
  end;

  if qryUnidConsumidoraSITUACAO.Value <> '1' then
  begin
     if not Confirma('Esta Unidade Consumidora econtra-se na Situação: '+#13+
        qryUnidConsumidoraDESCR_SITUACAO.Value+#13+
        'Continuar o Cálculo ?') then exit;
  end;

  Screen.Cursor := crHourGlass;

  HabilitaBotoes(False);

  dDtTemp1 := StrToDate(DtEmissaoMesAnterior(qryUnidConsumidoraENDER_ID_BAIRRO.Value,
      InverteAnoMes(edMesAno.Text,'1')));
  dDtTemp2 := StrToDate(edDtEmissao.Text);

  Panel1.Caption := 'Aguarde, Calculando ...';
  Application.ProcessMessages;

  sAnoMes := RightStr(Trim(edMesAno.Text),4)+LeftStr(Trim(edMesAno.Text),2);

  qryMovim.Close;
  qryMovim.ParamByName('pAnoMes').Value := sAnoMes;
  qryMovim.ParamByName('pUC').Value := qryUnidConsumidora.Params[0].Value;
  qryMovim.Open;

  cdsCalcFatura.Close;
  qryCalcFatura.ParamByName('panomes').Value     := sAnoMes;
  qryCalcFatura.ParamByName('puc').Value:= qryUnidConsumidora.Params[0].Value;
  qryCalcFatura.ParamByName('pValCalc').AsCurrency := edValAgua.Value;
  qryCalcFatura.ParamByName('pdtpagini').Value  := dDtTemp1;
  qryCalcFatura.ParamByName('pdtpagFim').Value  := dDtTemp2;
  qryCalcFatura.ParamByName('pQtdDias').Value   := qryMovimR_QTD_DIAS.Value;
  try
     cdsCalcFatura.Open;
     AtualizaTotais;
  except
     on E: Exception do
     begin
        Mensagem('Erro ao Calcular a Tarifa da Unid. Consumidora: '+
          frmeUnidConsum1.edId.Text+#13+
          '('+E.Message+')',
          'E R R O !!!',MB_OK+MB_ICONERROR);
     end;
  end;

  btnDelMultas.Enabled := (edValMulta.Value > 0);
  btnGravar.Enabled    := (edValTotal.Value > 0) or (cdsCalcFatura.RecordCount>0);

  Panel1.Caption := '';
  Application.ProcessMessages;

  Screen.Cursor := crDefault;

end;

procedure TfrmCalcTarifaIndividual.btnDelMultasClick(Sender: TObject);
begin

   cdsCalcFatura.DisableControls;
   cdsCalcFatura.First;
   while not cdsCalcFatura.eof do
   begin
      if cdsCalcFaturaR_COD_ITEM.Value = '555' then
      begin
         edValMulta.Value := edValMulta.Value - cdsCalcFaturaR_VALOR.AsCurrency;
         edValTotal.Value := edValTotal.Value - cdsCalcFaturaR_VALOR.AsCurrency;
         cdsCalcFatura.Delete;
      end else
        cdsCalcFatura.Next;
   end;

   Application.ProcessMessages;

   cdsCalcFatura.EnableControls;

end;

procedure TfrmCalcTarifaIndividual.btnEventosClick(Sender: TObject);
begin
{

}
end;

procedure TfrmCalcTarifaIndividual.btnGravarClick(Sender: TObject);
Var
   iErro,
   iUC,
   iBairro: Integer;
   sSQL1: string;
   sAnoMes: string[6];
begin

   cdsCalcFatura.DisableControls;
   cdsCalcFatura.First;
   iErro := 0;
   sAnoMes := InverteAnoMes(edMesAno.Text,'1');
   iUC     := qryUnidConsumidora.Params[0].Value;
   iBairro := qryUnidConsumidoraENDER_ID_BAIRRO.Value;

   if dmPrincipal.SalvaCalcFaturaMensal(sAnoMes,
        iUC,
        edDtEmissao.Text,
        edDtVencto.Text,
        cdsCalcFaturaR_QTD_TORNEIRA.Value,
        cdsCalcFaturaR_MULTIPLIC.Value,
        qryUnidConsumidoraNUM_HIDROMETRO.Value,
        edValPrincipal.Value,
        edValMulta.Value,
        edValOutroDeb.Value,
        edValOutroCred.Value) then
   begin

     sSQL1 := 'delete from calc_fatura_mensal_multa '+
              'where (id_unid_consum = '+IntToStr(iUC)+') and '+
              ' (ano_mes_calc = '+QuotedStr(sAnoMes)+')';
     dmPrincipal.SConPrincipal.ExecuteDirect(sSQL1);

     while not cdsCalcFatura.eof do
     begin
        if cdsCalcFaturaR_COD_ITEM.Value = '555' then
        begin
           if not dmPrincipal.SalvaMultaFaturaMensal(iUC,
              sAnoMes,
              cdsCalcFaturaR_ANO_MES_MULTA.Value,
              cdsCalcFaturaR_QTD_DIAS_ATRASO.Value,
              cdsCalcFaturaR_VALOR.AsCurrency) then
           begin
              iErro := 1;
              Break;
           end;
        end;
        cdsCalcFatura.Next;
     end;
   end else
      iErro := 1;

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

   cdsCalcFatura.Last;
   cdsCalcFatura.EnableControls;

   if iErro = 0 then
      Mensagem('FATURA MENSAL Salva com Sucesso ...','AVISO !!!',MB_OK+MB_ICONINFORMATION);

   btnCalcular.Enabled := False;
   btnDelMultas.Enabled := False;
   btnGravar.Enabled := False;

   btnLimpar.SetFocus;

end;

procedure TfrmCalcTarifaIndividual.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCalcTarifaIndividual.btnLimparClick(Sender: TObject);
begin

  qryUnidConsumidora.Close;
  cdsCalcFatura.Close;

  HabilitaBotoes(True);

  frmeUnidConsum1.edId.Text := '';
  frmeUnidConsum1.edId.SetFocus;

  edValPrincipal.Value := 0;
  edValMulta.Value := 0;
  edValOutroDeb.Value := 0;
  edValOutroCred.Value := 0;
  edValTotal.Value := 0;

end;

procedure TfrmCalcTarifaIndividual.edDtVenctoExit(Sender: TObject);
begin
  if EmptyData(edDtVencto.Text) then exit;
  if StrToDate(edDtVencto.Text) <= StrToDate(edDtEmissao.Text) then
     edDtEmissao.SetFocus;
end;

procedure TfrmCalcTarifaIndividual.edMesAnoExit(Sender: TObject);
begin
  inherited;
  if Trim(ExtraiPonto(edMesAno.Text)) = '' then exit;

  if Not ValidMesAno(edMesAno.Text) then exit;

  qryResumoBairro.Close;
  qryResumoBairro.ParamByName('pAnoMes').Value := InverteAnoMes(edMesAno.Text,'1');
  qryResumoBairro.ParamByName('pBairro').Value := qryUnidConsumidoraENDER_ID_BAIRRO.Value;
  qryResumoBairro.Open;

  if not qryResumoBairroDT_EMISSAO.IsNull then
  begin
     edDtEmissao.Text := qryResumoBairroDT_EMISSAO.AsString;
     edDtVencto.Text  := qryResumoBairroDT_VENCIMENTO.AsString;
  end else
  begin
     edDtEmissao.Text := DateToStr(Date);
     edDtVencto.Text  := '';
  end;

end;

procedure TfrmCalcTarifaIndividual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qryUnidConsumidora.Close;
  cdsCalcFatura.Close;
  qryResumoBairro.Close;
end;

procedure TfrmCalcTarifaIndividual.FormCreate(Sender: TObject);
begin
 inherited;
 Caption := 'CÁLCULAR FATURAS INDIVIDUAL ...';
end;

procedure TfrmCalcTarifaIndividual.FormShow(Sender: TObject);
begin
  inherited;
  HabilitaBotoes(True);

  edValPrincipal.Value := 0;
  edValMulta.Value := 0;
  edValOutroDeb.Value := 0;
  edValOutroCred.Value := 0;
  edValTotal.Value := 0;

  if pb_iUnidConsum <> 0 then
  begin
     frmeUnidConsum1.edId.Text := IntToStr(pb_iUnidConsum);
     frmeUnidConsum1.edIdExit(frmeUnidConsum1.edId);

     edMesAno.Text := InverteAnoMes(pb_sAnoMes,'2');
     edMesAnoExit(edMesAno);

     edDtEmissao.SetFocus;

  end else

     frmeUnidConsum1.edId.SetFocus;

end;

procedure TfrmCalcTarifaIndividual.frmeUnidConsum1edIdExit(Sender: TObject);
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

  qryUnidConsumidora.Close;
  qryUnidConsumidora.ParamByName('pId').AsString := Trim(frmeUnidConsum1.edId.Text);
  qryUnidConsumidora.Open;
  edEndereco.Text  := qryUnidConsumidoraENDER_DESCR_LOGRAD.Value+','+
     qryUnidConsumidoraENDER_UC_NUM_LETRA.Value+' - '+
     qryUnidConsumidoraENDER_DESCR_BAIRRO.Value+' - '+
     qryUnidConsumidoraENDER_DESCR_DISTRITO.Value;
  edCategoria.Text := qryUnidConsumidoraDESCR_TIPO_UNID_CONSUM.Value;
  edUltCorte.Text  := qryUnidConsumidoraDT_ULT_CORTE.AsString;
  edUltRelig.Text  := qryUnidConsumidoraDT_ULT_RELIG.AsString;
  edDtLigacao.Text := qryUnidConsumidoraDT_LIGACAO.AsString;
  edNumLigacao.Text:= qryUnidConsumidoraNUM_LIGACAO.AsString;
  edSituacao.Text  := qryUnidConsumidoraDESCR_SITUACAO.Value;

end;

procedure TfrmCalcTarifaIndividual.frmeUnidConsum1edIdPropertiesChange(Sender: TObject);
begin
  if Trim(frmeUnidConsum1.edId.Text) = '' then
  Begin
     frmeUnidConsum1.edNomePessoa.Text := '';
     edDtLigacao.Text := '';
     edEndereco.Text  := '';
     edNumLigacao.Text:= '';
     edCategoria.Text := '';
     edUltRelig.Text  := '';
     edUltRelig.Text  := '';
     edSituacao.Text  := '';

     edValPrincipal.Value := 0;
     edValMulta.Value := 0;
     edValOutroDeb.Value := 0;
     edValOutroCred.Value := 0;

  End;

end;

procedure TfrmCalcTarifaIndividual.HabilitaBotoes(lOpcao1: Boolean);
begin

   frmeUnidConsum1.Enabled          := lOpcao1;
   edMesAno.Enabled                 := lOpcao1;
   edDtEmissao.Enabled              := lOpcao1;
   edDtVencto.Enabled               := lOpcao1;
   edValAgua.Properties.ReadOnly    := Not lOpcao1;
   btnCalcular.Enabled              := lOpcao1;

   btnDelMultas.Enabled             := Not lOpcao1;
   btnGravar.Enabled                := Not lOpcao1;
   btnLimpar.Enabled                := Not lOpcao1;

end;

procedure TfrmCalcTarifaIndividual.AtualizaTotais;
begin

   edValPrincipal.Value := 0;
   edValMulta.Value := 0;
   edValOutroDeb.Value := 0;
   edValOutroCred.Value := 0;

   cdsCalcFatura.DisableControls;
   cdsCalcFatura.First;
   while not cdsCalcFatura.eof do
   begin
      if cdsCalcFaturaR_COD_ITEM.Value = '001' then
      begin
         edValPrincipal.Value := cdsCalcFaturaR_VALOR.AsCurrency;
      end else
      if cdsCalcFaturaR_COD_ITEM.Value = '555' then
      begin
         edValMulta.Value := edValMulta.Value + cdsCalcFaturaR_VALOR.AsCurrency;
      end else
      if cdsCalcFaturaR_COD_ITEM.Value = '777' then
      begin
         if cdsCalcFaturaR_TIPO.Value = 'D' then
            edValOutroDeb.Value := edValOutroDeb.Value + cdsCalcFaturaR_VALOR.AsCurrency
         else
            edValOutroCred.Value := edValOutroCred.Value + cdsCalcFaturaR_VALOR.AsCurrency;
      end;
      cdsCalcFatura.Next;
   end;

   edValTotal.Value := (edValPrincipal.Value + edValMulta.Value + edValOutroDeb.Value) -
      edValOutroCred.Value;
   Application.ProcessMessages;

   cdsCalcFatura.EnableControls;

end;

function TfrmCalcTarifaIndividual.FaturaQuitada: Boolean;
Var
  oQry1   : TSQLQuery;
  sTextSQL: string;
  sIdUC   : string[9];
  sAnoMes : string[6];
begin
  FaturaQuitada := False;
  sIdUC  := Trim(ExtraiPonto(frmeUnidConsum1.edId.Text));
  sAnoMes:= RightStr(edMesAno.Text,4)+LeftStr(edMesAno.Text,2);
  oQry1  := TSQLQuery.Create(Nil);
  oQry1.SQLConnection := dmPrincipal.SConPrincipal;
  try
    sTextSQL := 'select situacao from calc_fatura_mensal '+
      'where (id_unid_consum = '+Trim(sIdUC)+') and (ano_mes = '+QuotedStr(sAnoMes)+')';
    oQry1.SQL.Add(sTextSQL);
    oQry1.Open;
    if (not oQry1.Fields[0].IsNull) and (oQry1.Fields[0].Value='2') then
       FaturaQuitada := True;
  finally
     oQry1.Close;
     FreeAndNil(oQry1);
  end;

end;

end.
