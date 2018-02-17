unit ImportArqPagtoTxt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxGroupBox,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBEdit, FMTBcd,
  SqlExpr, Provider, DBClient, Menus, cxRadioGroup, cxCalendar,
  cxDropDownEdit, ComCtrls, cxPC, cxMemo, StrUtils, ExtCtrls,
  cxCurrencyEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  fmeEntidadeFinanceira, cxLabel, frxClass, ShellApi, frxDBSet, cxButtons,
  fmeLocalPagto, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxBarBuiltInMenu, cxNavigator;

type
  TfrmLanctoImportar = class(TfrmPadrao1)
    dsPagto: TDataSource;
    cdsConfigOrgao: TClientDataSet;
    provConfigOrgao: TDataSetProvider;
    sdsConfigOrgao: TSQLDataSet;
    gbEvento: TcxGroupBox;
    Label3: TLabel;
    btnOk: TBitBtn;
    Label1: TLabel;
    edNomeArquivo: TcxTextEdit;
    sbFindArqTxt: TSpeedButton;
    pcImport: TcxPageControl;
    tsImport: TcxTabSheet;
    tsMsg: TcxTabSheet;
    dbgLanctos: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    GridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    GridDBTableView1Column1: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    mTbPagto: TClientDataSet;
    Panel1: TPanel;
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    btnLimpar: TButton;
    btnFechar: TBitBtn;
    qryEntidFinancEvento: TSQLQuery;
    qryEntidFinancEventoID_EVENTO1: TIntegerField;
    qryEntidFinancEventoID_EVENTO2: TIntegerField;
    qryEntidFinancEventoID_EVENTO3: TIntegerField;
    dsEntidFinancEvento: TDataSource;
    lblPadrao: TcxLabel;
    qryEntidFinancEventoCOD_EVENTO1: TStringField;
    qryEntidFinancEventoCOD_EVENTO2: TStringField;
    qryEntidFinancEventoCOD_EVENTO3: TStringField;
    OpenDialog1: TOpenDialog;
    qryEntidFinancEventoTIPO_LAY_OUT: TIntegerField;
    memLog: TMemo;
    frxReport1: TfrxReport;
    SaveDialog1: TSaveDialog;
    mTbLog: TClientDataSet;
    mTbLoglinha: TWideStringField;
    frxLog: TfrxDBDataset;
    mTbLogid: TIntegerField;
    frxPagto: TfrxDBDataset;
    frxConfigOrgao: TfrxDBDataset;
    btnGravar: TcxButton;
    btnImprimir: TBitBtn;
    qryFaturaAvulsa: TSQLQuery;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edDtGeracaoArquivo: TcxTextEdit;
    edTotRegArquivo: TcxCurrencyEdit;
    edTotArrecadado: TcxCurrencyEdit;
    mTbPagtoNUM_REGISTRO: TStringField;
    mTbPagtoCOD_BARRAS: TStringField;
    mTbPagtoVAL_FATURA: TCurrencyField;
    mTbPagtoVAL_PAGO: TCurrencyField;
    mTbPagtoDATA_PAGTO: TDateField;
    mTbPagtoTIPO_FATURA: TStringField;
    mTbPagtoNUM_CONTA: TIntegerField;
    mTbPagtoREFERENCIA: TStringField;
    mTbPagtoNOME_PESSOA: TStringField;
    mTbPagtoSALVAR: TStringField;
    sdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    sdsConfigOrgaoLOGOMARCA: TBlobField;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoLOGOMARCA: TBlobField;
    cdsConfigOrgaoTIT_REL1: TStringField;
    cdsConfigOrgaoTIT_REL2: TStringField;
    cdsConfigOrgaoNOME_SYS: TStringField;
    frmeLocalPagto1: TfrmeLocalPagto;
    mTbPagtoVAL_TARIFA: TCurrencyField;
    GridDBTableView1Column3: TcxGridDBColumn;
    qryLanPagto: TSQLQuery;
    provLanPagto: TDataSetProvider;
    cdsLanPagto: TClientDataSet;
    mTbPagtoOBSERVACAO: TStringField;
    GridDBTableView1Column4: TcxGridDBColumn;
    qryLanPagtoTIPO_FATURA: TStringField;
    qryLanPagtoREFERENCIA: TStringField;
    qryLanPagtoID_UNID_CONSUM: TIntegerField;
    qryLanPagtoDT_PAGTO: TDateField;
    qryLanPagtoID_LOCAL_PAGTO: TIntegerField;
    qryLanPagtoVAL_DESCONTO: TFMTBCDField;
    qryLanPagtoVAL_PAGTO: TFMTBCDField;
    qryLanPagtoVAL_FATURA: TFMTBCDField;
    cdsLanPagtoTIPO_FATURA: TStringField;
    cdsLanPagtoREFERENCIA: TStringField;
    cdsLanPagtoID_UNID_CONSUM: TIntegerField;
    cdsLanPagtoDT_PAGTO: TDateField;
    cdsLanPagtoID_LOCAL_PAGTO: TIntegerField;
    cdsLanPagtoVAL_DESCONTO: TFMTBCDField;
    cdsLanPagtoVAL_PAGTO: TFMTBCDField;
    cdsLanPagtoVAL_FATURA: TFMTBCDField;
    mTbPagtoCPF_CNPJ: TStringField;
    qryFaturaAvulsaID: TIntegerField;
    qryFaturaAvulsaID_UNID_CONSUM: TIntegerField;
    qryFaturaAvulsaDT_EMISSAO: TDateField;
    qryFaturaAvulsaDT_VENCIMENTO: TDateField;
    qryFaturaAvulsaSITUACAO: TStringField;
    qryFaturaAvulsaDT_PAGAMENTO: TDateField;
    qryFaturaAvulsaDESCR_SITUACAO: TStringField;
    qryFaturaAvulsaNOME_PESSOA: TStringField;
    qryFaturaAvulsaVALOR_TOTAL: TFMTBCDField;
    qryFatMensal: TSQLQuery;
    qryFatMensalANO_MES: TStringField;
    qryFatMensalID_UNID_CONSUM: TIntegerField;
    qryFatMensalDT_EMISSAO: TDateField;
    qryFatMensalDT_VENCIMENTO: TDateField;
    qryFatMensalDT_TOLERANCIA: TDateField;
    qryFatMensalQTD_TORNEIRA: TIntegerField;
    qryFatMensalMULTIPLICADOR: TIntegerField;
    qryFatMensalNUM_HIDROMETRO: TStringField;
    qryFatMensalVAL_PRINCIPAL: TFMTBCDField;
    qryFatMensalVAL_MULTA: TFMTBCDField;
    qryFatMensalVAL_OUTRO_DEB: TFMTBCDField;
    qryFatMensalVAL_OUTRO_CRED: TFMTBCDField;
    qryFatMensalVAL_TOTAL: TFMTBCDField;
    qryFatMensalOBSERV_FATURA: TStringField;
    qryFatMensalINCIDE_MULTA: TStringField;
    qryFatMensalSITUACAO: TStringField;
    qryFatMensalADD_TARIFA_AVULSA: TStringField;
    qryFatMensalNOME_PESSOA: TStringField;
    qryFatMensalENDER_ID_DISTRITO: TIntegerField;
    qryFatMensalENDER_ID_BAIRRO: TIntegerField;
    qryFatMensalDT_LIGACAO: TDateField;
    qryFatMensalDESCR_TIPO_PESSOA: TStringField;
    qryFatMensalCPF_CNPJ_FTDO: TStringField;
    qryFatMensalDESCR_TIPO_UNID_CONSUM: TStringField;
    qryFatMensalCONSUMO_M3: TLargeintField;
    qryFatMensalENDER_ID_LOGRAD: TIntegerField;
    qryFatMensalENDER_DESCR_LOGRAD: TStringField;
    qryFatMensalENDER_NUM_LETRA: TStringField;
    qryFatMensalENDER_COMPLEMENTO: TStringField;
    qryFatMensalENDER_DESCR_BAIRRO: TStringField;
    qryFatMensalMES_ANO_FTDO: TStringField;
    qryFatMensalID_UNID_CONSUM_FTDO: TStringField;
    mTbPagtoPODE_SALVAR: TStringField;
    Label2: TLabel;
    edQtdRegValid: TcxCurrencyEdit;
    Label6: TLabel;
    edTotValido2: TcxCurrencyEdit;
    mTbPagtoOBSERV_SALVA: TStringField;
    edTotValido: TcxCurrencyEdit;
    qryFatAvulsaItem: TSQLQuery;
    qryFatAvulsaItemANO_MES: TStringField;
    qryFatAvulsaItemVAL_TOTAL: TFMTBCDField;
    qryAddPagtoTM: TSQLStoredProc;
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cdsLanctoEventoCalcFields(DataSet: TDataSet);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmeEntidFinanc1edIdExit(Sender: TObject);
    procedure sbFindArqTxtClick(Sender: TObject);
    procedure edNomeArquivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSalvaLanctoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure GridDBTableView1DblClick(Sender: TObject);
    procedure GridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mTbPagtoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    pv_sColIndex    : string;
    pv_aRegTipoA    : Array[1..10] of String;
    pv_aRegTipoG    : Array[1..11] of String;
    pv_aRegTipoZ    : Array[1..4] of String;
    pv_sIdentArquivoValido: string[12];
    pv_sCNPJ_Orgao        : String[14];
    pv_lImportSaved       : Boolean;
    pv_iQtRegD            : Integer;
    pv_sPathRel           : WideString;
    pv_sDtPagto           : string[10];
    Function ValidaArquivo: Boolean;
    Procedure HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
    procedure ExecutePrograma(Nome, Parametros: String);
    procedure SetColGrid(iCol: Integer);
    procedure ImportArqRetorno(sCodBanco: String);
  public
    { Public declarations }
  end;

var
  frmLanctoImportar: TfrmLanctoImportar;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais;

{$R *.dfm}

procedure TfrmLanctoImportar.btnSalvaLanctoClick(Sender: TObject);
Var
  iPosTemp: Integer;
  sRef: string[8];
  sNomeTemp: string;
  sAnoMes: string[6];
begin

  Screen.Cursor := crHourGlass;

  Panel1.Caption := ' Aguarde, salvando ...';
  Application.ProcessMessages;

  mTbPagto.First;
  while not mTbPagto.eof do
  begin

     if mTbPagtoSALVAR.Value <> 'S' then
     begin
        mTbPagto.Next;
        Continue;
     end;

     if mTbPagtoTIPO_FATURA.Value = '1' then
        sRef := Trim(Copy(mTbPagtoREFERENCIA.Value,4,4))+
           LeftStr(mTbPagtoREFERENCIA.Value,2)
     else
        sRef := Trim(Copy(mTbPagtoREFERENCIA.Value,4,8));

     mTbPagto.Edit;
     cdsLanPagto.Close;
     qryLanPagto.ParamByName('pUnidConsum').Value := mTbPagtoNUM_CONTA.Value;
     qryLanPagto.ParamByName('pTipo').Value := mTbPagtoTIPO_FATURA.Value;
     qryLanPagto.ParamByName('pRef').Value := sRef;
     cdsLanPagto.Open;
     if cdsLanPagto.IsEmpty then
     begin
        cdsLanPagto.Insert;
        cdsLanPagtoTIPO_FATURA.Value   := mTbPagtoTIPO_FATURA.Value;
        cdsLanPagtoREFERENCIA.Value    := sRef;
        cdsLanPagtoID_UNID_CONSUM.Value:= mTbPagtoNUM_CONTA.Value;
        cdsLanPagtoDT_PAGTO.Value      := mTbPagtoDATA_PAGTO.Value;
        cdsLanPagtoID_LOCAL_PAGTO.AsString := Trim(frmeLocalPagto1.edId.Text);
        cdsLanPagtoVAL_DESCONTO.AsCurrency := 0;
        cdsLanPagtoVAL_PAGTO.AsCurrency    := mTbPagtoVAL_PAGO.AsCurrency;
        SalvaTransacao(cdsLanPagto);
        if mTbPagtoTIPO_FATURA.Value = '2' then // 1 - Fatura Mensal / 2 - Fatura Avulsa
        begin
           qryFatAvulsaItem.Close;
           qryFatAvulsaItem.ParamByName('pIdFatura').Value := StrToInt(RightStr(mTbPagtoREFERENCIA.Value,8));
           qryFatAvulsaItem.Open;
           while not qryFatAvulsaItem.eof do
           begin
              sAnoMes := RightStr(qryFatAvulsaItemANO_MES.Value,4)+LeftStr(qryFatAvulsaItemANO_MES.Value,2);
              qryAddPagtoTM.Close;
              qryAddPagtoTM.ParamByName('pe_tipo_fatura').Value:= '1';
              qryAddPagtoTM.ParamByName('pe_referencia').Value := sAnoMes;
              qryAddPagtoTM.ParamByName('pe_Id_UC').Value      := mTbPagtoNUM_CONTA.Value;
              qryAddPagtoTM.ParamByName('pe_Dt_Pagto').Value   := mTbPagtoDATA_PAGTO.Value;
              qryAddPagtoTM.ParamByName('pe_Local_pagto').Value:= StrToInt(Trim(frmeLocalPagto1.edId.Text));
              qryAddPagtoTM.ParamByName('pe_Val_desconto').AsCurrency:= 0;
              qryAddPagtoTM.ParamByName('pe_Val_Pago').AsCurrency:= qryFatAvulsaItemVAL_TOTAL.AsCurrency;
              qryAddPagtoTM.ExecProc;
              qryFatAvulsaItem.Next;
           end;
           qryFatAvulsaItem.Close;
        end;
        mTbPagtoOBSERV_SALVA.Value := 'BAIXA EFETIVADA ...';
     end else
     begin
        mTbPagtoOBSERVACAO.Value := '*** FATURA JÁ QUITADA ...';
     end;
     mTbPagto.Post;
     mTbPagto.Next;

  end;

  Mensagem('Fim do Processo de Gravação dos Lançamentos ...',
           'Aviso !!!',
           MB_OK+MB_ICONEXCLAMATION);

  Panel1.Caption := '';
  Application.ProcessMessages;

  btnGravar.Enabled := False;
  Screen.Cursor := crDefault;

end;

procedure TfrmLanctoImportar.btnImprimirClick(Sender: TObject);
var
  iConta: Integer;
begin
  if pcImport.ActivePageIndex = 1 then
  begin
     mTbLog.EmptyDataSet;
     for iConta := 0 to memLog.Lines.Count - 1 do
     begin
        mTbLog.Insert;
        mTbLogid.Value := iConta;
        mTbLoglinha.Value := memLog.Lines[iConta];
        mTbLog.Post;
     end;
     mTbLog.IndexFieldNames := 'id';
     mTbLog.First;
     frxReport1.LoadFromFile(pv_sPathRel+'Log1.fr3');
     frxReport1.ShowReport();
  end else
  begin
     cdsConfigOrgao.Edit;
     cdsConfigOrgaotit_rel1.Value := 'BAIXA AUTOMÁTICA DE PAGTOS REF AO DIA: '+
        pv_sDtPagto+' - LOCAL: '+Trim(frmeLocalPagto1.edId.Text)+'-'+
        Trim(frmeLocalPagto1.edDescricao.Text);
     cdsConfigOrgaotit_rel2.Value := 'ARQUIVO: '+edNomeArquivo.Text;
     cdsConfigOrgao.Post;
     mTbPagto.First;
     frxReport1.LoadFromFile(pv_sPathRel+'ImportPagto.fr3');
     frxReport1.ShowReport();
  end;

end;

procedure TfrmLanctoImportar.btnLimparClick(Sender: TObject);
begin
  memLog.Lines.Clear;
  mTbPagto.Close;
  frmeLocalPagto1.edId.Text := '';
  edNomeArquivo.Text := '';
  HabilitaBotoes(True,False);
  edNomeArquivo.SetFocus;
end;

procedure TfrmLanctoImportar.btnOkClick(Sender: TObject);
Var
  sCodBanco: string[3];
begin

  // O arquivo será lido pelo Tipo de Lay-out que segue esse padrão, se precisar
  // será acescentado um novo lay-out ...

  Panel1.Caption := ' Aguarde, importando ...';
  memLog.Lines.Clear;

  Application.ProcessMessages;

  sCodBanco := Pesquisa('LOCAL_PAGTO','ID',Trim(frmeLocalPagto1.edId.Text),
    'COD_BANCO','');

  mTbPagto.Close;
  mTbPagto.Open;
  mTbPagto.DisableControls;

  HabilitaBotoes(False,True);

  ImportArqRetorno(sCodBanco);

  mTbPagto.EnableControls;

  GridDBTableView1ColumnHeaderClick(GridDBTableView1,cxGridDBColumn6);

  Panel1.Caption := '';
  Application.ProcessMessages;

end;

procedure TfrmLanctoImportar.cdsLanctoEventoCalcFields(DataSet: TDataSet);
begin
{
   DataSet.FieldByName('DtAdmissao2').AsString :=
      DataAdmissao(DataSet.FieldByName('Dt_Admissao').AsString,
                   DataSet.FieldByName('Dt_Readmissao').AsString);
}
end;

procedure TfrmLanctoImportar.GridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
Var
   iConta: Integer;
begin
   SetColGrid(AColumn.Index);
   for iConta := 0 to TcxGridTableView(Sender).ColumnCount - 1  do
       TcxGridTableView(Sender).Columns[iConta].Styles.Header := nil;
   AColumn.Styles.Header := dmPrincipal.cxStyle20;
end;

procedure TfrmLanctoImportar.GridDBTableView1DblClick(Sender: TObject);
begin
  if (not mTbPagto.Active) or (mTbPagto.RecordCount = 0) then exit;
  mTbPagto.Edit;
  if mTbPagtoSALVAR.Value = 'N' then
  begin
     if mTbPagtoPODE_SALVAR.Value = 'S' then
        mTbPagtoSALVAR.Value := 'S'
  end else
     mTbPagtoSALVAR.Value := 'N';
  mTbPagto.Post;
end;

procedure TfrmLanctoImportar.GridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then GridDBTableView1DblClick(GridDBTableView1);
end;

procedure TfrmLanctoImportar.edNomeArquivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sbFindArqTxt.Click;
end;

procedure TfrmLanctoImportar.edPesquisaPropertiesChange(Sender: TObject);
begin
  if (not mTbPagto.Active) or (mTbPagto.RecordCount = 0) then exit;
  PesquisaIncremental(TcxTextEdit(Sender).Text,dsPagto,pv_sColIndex);
end;

procedure TfrmLanctoImportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsConfigOrgao.Close;
  mTbPagto.Close;
  mTbLog.Close;
end;

procedure TfrmLanctoImportar.FormCreate(Sender: TObject);
begin
  inherited;
  Position := poMainFormCenter;
  //Left := 12;
  //Top := 79;
  Application.ProcessMessages;
  Panel1.Caption := '';
  {
  pv_sIdentArquivoValido := 'ASPEB'+AnoStr(glb_sAnoMesTrab)+'REM';
  chkSomenteParaAtivos.Enabled := False;
  }
  mTbLog.CreateDataSet;
  mTbPagto.CreateDataSet;
  mTbPagto.IndexFieldNames:= 'NOME_PESSOA';
end;

procedure TfrmLanctoImportar.FormShow(Sender: TObject);
begin
  inherited;
  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL.Value := Criptografa(
     cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaoNOME_SYS.Value := glb_sSistema+' - VER. '+glb_sVersao;;
  cdsConfigOrgao.Post;
  pv_sPathRel := GetPathRel();
  Caption := 'IMPORTAÇÃO DE PAGAMENTOS (DE ARQUIVO .TXT) ...';
  pv_sCNPJ_Orgao := Pesquisa('CONFIG_ORGAO','ID','1','CNPJ','');
  pv_sCNPJ_Orgao := Criptografa(pv_sCNPJ_Orgao,'2',14);
  mTbLog.Open;
  HabilitaBotoes(True,False);
  edNomeArquivo.SetFocus;
end;

procedure TfrmLanctoImportar.frmeEntidFinanc1edIdExit(Sender: TObject);
begin
  inherited;
  {
  frmeEntidFinanc1.edIdExit(Sender);
  if Trim(frmeEntidFinanc1.edId.Text) = '' then exit;
  qryEntidFinancEvento.Close;
  qryEntidFinancEvento.Params[0].Value :=
     StrToInt(Trim(frmeEntidFinanc1.edId.Text));
  qryEntidFinancEvento.Open;
  chkSomenteParaAtivos.Enabled := (RightStr(glb_sAnoMesTrab,2) = '16');
  if qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 then
  begin
     if (RightStr(glb_sAnoMesTrab,2) <> '16') then
     begin
        Mensagem('O Tipo de Lay-Out da Entidade Financeira '+#13+
           'é incompatível c/ o Mes/Ano ...',
           'Aviso !!!',MB_OK+MB_ICONERROR);
        frmeEntidFinanc1.edId.SetFocus;
        exit;
     end
  end else
  begin
     if (RightStr(glb_sAnoMesTrab,2) = '16') then
     begin
        Mensagem('O Tipo de Lay-Out da Entidade Financeira '+#13+
           'é incompatível c/ o Mes/Ano ...',
           'Aviso !!!',MB_OK+MB_ICONERROR);
        frmeEntidFinanc1.edId.SetFocus;
        exit;
     end;
  end;
  }

end;

Procedure TfrmLanctoImportar.HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
begin
  frmeLocalPagto1.Enabled := lHabilita1;
  edNomeArquivo.Enabled   := lHabilita1;
  sbFindArqTxt.Enabled    := lHabilita1;
  btnOk.Enabled           := lHabilita1;
  btnImprimir.Enabled     := lHabilita2;
  btnGravar.Enabled       := lHabilita2;
  btnLimpar.Enabled       := lHabilita2;
end;

Function TfrmLanctoImportar.ValidaArquivo: Boolean;
Var
   tfArq     : TextFile;
   sRegistro : String[240];
   lImporta  : Boolean;
   sBanco    : String[3];
   sIdArquivo: String[12];
   sCNPJ     : String[14];
   sNomeEmpresa: String[30];
   sAnoMesArq: String[6];
   iTotalReg : Integer;
   sCPF      : String[11];
   sValor    : String[13];
   crValor,
   crTotSeguro,
   crTotDiversos,
   crTotLote : Currency;
   sNumRegistro : String[5];
   iConta       : Integer;
   iQtOutrosReg : Integer;
Begin
   Screen.Cursor:= crHourGlass;
   Panel1.Caption   := ' Aguarde, validando o arquivo ....';
   Application.ProcessMessages;
   iConta := 0;
   While iConta <= memLog.Lines.Count - 1 Do
      memLog.Lines.Delete(iConta);
   iTotalReg    := 0;
   AssignFile(tfArq,edNomeArquivo.Text);
   Reset(tfArq);
   ReadLn(tfArq,sRegistro);
   sRegistro := Trim(sRegistro);
   Inc(iTotalReg);
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo da ASPEB Seguros: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 2 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo de Empréstimos Consignados BB: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 3 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo de Empréstimos Consignados BMC: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo de Abono PASEP: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End;
   memLog.Lines.Add(' ');
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 Then
   Begin
      sIdArquivo:= UpperCase(Trim(Copy(sRegistro,8,12)));
      sCNPJ     := Copy(sRegistro,23,14);
      sAnoMesArq:= Copy(sRegistro,83,6);
      If UpperCase(Copy(sRegistro,6,1)) <> 'H' Then
         memLog.Lines.Add('O Primeiro Registro não é válido ...')
      Else
      If sIdArquivo <> pv_sIdentArquivoValido Then
         memLog.Lines.Add('O identificador do Arquivo não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo é de outra Empresa, cujo CNPJ é: '+FormatString('99.999.999/9999-99',sCNPJ))
      Else
      If sAnoMesArq <> glb_sAnoMesTrab Then
         memLog.Lines.Add('Este Arquivo é referente ao Ano/Mês: '+
                          FormatString('9999/99',sAnoMesArq)+', o Ano/Mês atual é: '+
                          FormatString('9999/99',glb_sAnoMesTrab));
      pv_iQtRegD      := 0;
      iQtOutrosReg := 0;
      crTotSeguro  := 0;
      crTotDiversos:= 0;
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 2 Then
   Begin
      ReadLn(tfArq,sRegistro); // a primeira linha não consta no lay-out
      sBanco      := Copy(sRegistro,1,3);
      sCNPJ       := Copy(sRegistro,33,14);
      sNomeEmpresa:= Copy(sRegistro,93,30);
      sAnoMesArq  := Copy(sRegistro,17,4)+Copy(sRegistro,15,2);
      {sAnoMesArq  := DecAnoMes(sAnoMesArq);
      If MesStr(sAnoMesArq) = '13' Then
         sAnoMesArq := DecAnoMes(sAnoMesArq);}
      If UpperCase(Copy(sRegistro,8,1)) <> '1' Then
         memLog.Lines.Add('O Segundo Registro não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo da Empresa '+
                          FormatString('99.999.999/9999-99',sCNPJ)+' '+sNomeEmpresa)
      Else
      If sAnoMesArq <> glb_sAnoMesTrab Then
         If Not Confirma('Este Arquivo é referente ao Ano/Mês: '+FormatString('9999/99',sAnoMesArq)+' !!!'+#13+
                         'Deseja importar mesmo assim ?') Then
            memLog.Lines.Add('Este Arquivo é referente ao Ano/Mês: '+
                             FormatString('9999/99',sAnoMesArq)+', o Ano/Mês atual é: '+
                             FormatString('9999/99',glb_sAnoMesTrab));
      crTotLote := 0;
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 3 Then
   Begin
      sBanco      := Copy(sRegistro,1,3);
      sCNPJ       := Copy(sRegistro,31,14);
      sNomeEmpresa:= Copy(sRegistro,91,30);
      sAnoMesArq  := Copy(sRegistro,15,4)+Copy(sRegistro,13,2);
      If sBanco <> '318' Then
         memLog.Lines.Add('Esse Arquivo não pertence ao B.M.C. ...')
      Else If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Esse arquivo não é de Servidores deste Órgão ...'+'('+sNomeEmpresa+')')
      Else If UpperCase(Copy(sRegistro,7,1)) <> '1' Then
         memLog.Lines.Add('O Primeiro Registro não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo da Empresa '+
                          FormatString('99.999.999/9999-99',sCNPJ)+' '+sNomeEmpresa)
      Else
      If sAnoMesArq <> glb_sAnoMesTrab Then
         If Not Confirma('Este Arquivo é referente ao Ano/Mês: '+FormatString('9999/99',sAnoMesArq)+' !!!'+#13+
                         'Deseja importar mesmo assim ?') Then
            memLog.Lines.Add('Este Arquivo é referente ao Ano/Mês: '+
                             FormatString('9999/99',sAnoMesArq)+', o Ano/Mês atual é: '+
                             FormatString('9999/99',glb_sAnoMesTrab));
      crTotLote := 0;
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 Then
   Begin
      sBanco      := Copy(sRegistro,1,3);
      sCNPJ       := Copy(sRegistro,17,14);
      sNomeEmpresa:= Copy(sRegistro,91,30);
      sAnoMesArq  := Copy(sRegistro,15,4)+Copy(sRegistro,13,2);
      If Copy(sRegistro,2,7) <> 'FPSF910' Then
         memLog.Lines.Add('Esse Arquivo não é do Abono PASEP ...')
      Else If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Esse arquivo não é de Servidores deste Órgão ...'+'('+sNomeEmpresa+')')
      Else If UpperCase(Copy(sRegistro,1,1)) <> '1' Then
         memLog.Lines.Add('O Primeiro Registro não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo é da Empresa '+
                          FormatString('99.999.999/9999-99',sCNPJ)+' '+sNomeEmpresa)
      Else
   End;

   While Not EOF(tfArq) Do
   Begin
      ReadLn(tfArq,sRegistro);
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 Then
      Begin
         sNumRegistro := LeftStr(sRegistro,5);
         Inc(iTotalReg);
         If (Copy(sRegistro,6,1)<>'D') And (Copy(sRegistro,6,1)<>'T') Then
            memLog.Lines.Add('O primeiro Caracther do Registro '+sNumRegistro+' não é valido');
         If RightStr(Trim(sRegistro),1) <> '*' Then
            memLog.Lines.Add('O Registro '+sNumRegistro+' não contém o marcador de Fim de Linha (*), ou está fora da posição')
         Else
         If UpperCase(Copy(sRegistro,6,1)) = 'D' Then
         Begin
            Inc(pv_iQtRegD);
            sValor := Copy(sRegistro,31,9)+','+Copy(sRegistro,40,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 999999.99;
            End;
            If crValor = 999999.99 Then
               memLog.Lines.Add('Registro '+sNumRegistro+': o Valor do Lançamento não é válido');
            If Copy(sRegistro,27,3) = '001' Then
               crTotSeguro := crTotSeguro + crValor
            Else If Copy(sRegistro,27,3) = '002' Then
               crTotDiversos := crTotDiversos + crValor
            Else
               memLog.Lines.Add('Registro '+sNumRegistro+': a Rúbrica é diferente de 001 e 002');
         End Else
         If UpperCase(Copy(sRegistro,6,1)) = 'T' Then
         Begin
            If StrToInt(Copy(sRegistro,8,6)) <> pv_iQtRegD Then
               memLog.Lines.Add('A quantidade de Registros tipo (D) é diferente da informada no Trailer do Arquivo');
            sValor := Copy(sRegistro,15,9)+','+Copy(sRegistro,24,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crTotSeguro <> crValor Then
               memLog.Lines.Add('O Total da Rubrica 001 (Seguro) é diferente da informada no Trailer do Arquivo');
            sValor := Copy(sRegistro,27,9)+','+Copy(sRegistro,36,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor <> crTotDiversos Then
               memLog.Lines.Add('O Total da Rubrica 002 (Diversos) é diferente da informada no Trailer do Arquivo');
            sValor := Copy(sRegistro,39,9)+','+Copy(sRegistro,48,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor <> (crTotSeguro+crTotDiversos) Then
               memLog.Lines.Add('O Total Geral do Arquivo é diferente da informada no Trailer do Arquivo');
         End Else
            Inc(iQtOutrosReg);
      End Else
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 2 Then
      Begin
         sNumRegistro := Copy(sRegistro,9,5);
         Inc(iTotalReg);
         If Pos(Copy(sRegistro,8,1),'3_5_9')=0 Then
            memLog.Lines.Add('O Tipo do Registro '+sNumRegistro+' não é válido');
         If Copy(sRegistro,8,1) = '3' Then  // Detalhe
         Begin
            Inc(pv_iQtRegD);
            sValor := Copy(sRegistro,144,7)+','+Copy(sRegistro,151,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor = 0 Then
               memLog.Lines.Add('Registro '+sNumRegistro+': o Valor do Lançamento não é válido')
            Else
               crTotLote:= crTotLote + crValor;
         End Else
         If Copy(sRegistro,8,1) = '5' Then
         Begin
            If StrToInt(Copy(sRegistro,16,6)) <> pv_iQtRegD+2 Then
               memLog.Lines.Add('A quantidade de Registros do Arquivo é diferente da informada no Trailer do Arquivo');
            Break;
         End;
      End;
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 3 Then
      Begin
         sNumRegistro := Copy(sRegistro,8,5);
         Inc(iTotalReg);
         If Pos(Copy(sRegistro,7,1),'1_2_3')=0 Then
            memLog.Lines.Add('O Tipo do Registro '+sNumRegistro+' não é válido');
         If Copy(sRegistro,7,1) = '3' Then  // Detalhe
         Begin
            Inc(pv_iQtRegD);
            sValor := Copy(sRegistro,56,13);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor = 0 Then
               memLog.Lines.Add('Registro '+sNumRegistro+': o Valor do Lançamento não é válido')
            Else
               crTotLote:= crTotLote + crValor;
         End Else
         If Copy(sRegistro,7,1) = '3' Then
         Begin
            If StrToInt(Copy(sRegistro,49,7)) <> pv_iQtRegD+2 Then
               memLog.Lines.Add('A quantidade de Registros do Arquivo é diferente da informada no Trailer do Arquivo');
            Break;
         End;
      End Else
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 Then
      Begin
         sNumRegistro := Copy(sRegistro,8,5);
         If Copy(sRegistro,1,1) = '2' Then
            Inc(pv_iQtRegD)
         Else If Copy(sRegistro,1,1) = '9' Then
         Begin
            If StrToInt(Copy(sRegistro,223,6)) <> pv_iQtRegD Then
               memLog.Lines.Add('A quantidade de Registros tipo "2", é diferente da informada no Trailer do Arquivo');
            Break;
         End;
      End;
   End;
   CloseFile(tfArq);
   Panel1.Caption := '';
   Application.ProcessMessages;
   Screen.Cursor := crDefault;
   If memLog.Lines.Count < 4 Then
   Begin
      memLog.Lines.Add('Arquivo validado com Êxito !');
      lImporta:= True;
   End Else
      lImporta:= False;
   Result := lImporta;
End;


procedure TfrmLanctoImportar.sbFindArqTxtClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then exit;
  edNomeArquivo.Text := OpenDialog1.FileName;
end;

procedure TfrmLanctoImportar.ExecutePrograma(Nome, Parametros: String);
Var
   Comando: Array[0..1024] of Char;
   Parms: Array[0..1024] of Char;
begin
   StrPCopy (Comando, Nome);
   StrPCopy (Parms, Parametros);
   ShellExecute (0, Nil, Comando, Parms, Nil, SW_Shownormal);
end;

Procedure TfrmLanctoImportar.SetColGrid(iCol: Integer);
begin
   lblTitColPesquisa.Enabled:= GridDBTableView1.Columns[iCol].Tag=1;
   edPesquisa.Enabled       := lblTitColPesquisa.Enabled;
   mTbPagto.IndexFieldNames := GridDBTableView1.Columns[iCol].
      DataBinding.FieldName;
   pv_sColIndex             := GridDBTableView1.Columns[iCol].
      DataBinding.FieldName;
end;

Procedure TfrmLanctoImportar.ImportArqRetorno(sCodBanco: String);
Var
   sChar        : Char;
   tfArq        : TextFile;
   sRegistro    : String[150];
   iTotRegTipoG : Integer;
   crValTarifa,
   crValRecebido,
   crTotRecebido: Currency;
   lArqOk       : Boolean;
   wContaChar   : Word;
   dDtTemp      : TDate;
   slArquivo    : TStringList;
   iNumLinha    : Integer;
   sReferencia  : String[11];
   iQtdRegValid : Integer;
   crTotInvalido: Currency;
Begin

   mTbPagto.Open;
   iTotRegTipoG := 0;
   crTotRecebido:= 0;
   lArqOk := True;
   slArquivo := TStringList.Create;
   try
     slArquivo.LoadFromFile(edNomeArquivo.Text);
   Except
     lArqOk := False;
   End;
   {
   AssignFile(tfArq,edNomeArquivo.Text);
   Try
     Reset(tfArq);
   Except
     lArqOk := False;
   End;}
   If Not lArqOk Then
   Begin
      Mensagem('NOME DO ARQUIVO, INVÁLIDO !',
        'ERRO !!!',MB_OK+MB_ICONERROR);
      Exit;
   End;
   sRegistro := slArquivo[0];
   edDtGeracaoArquivo.Text:= Copy(sRegistro,66,8);
   edDtGeracaoArquivo.Text:= RightStr(edDtGeracaoArquivo.Text,2)+'/'+
                             Copy(edDtGeracaoArquivo.Text,5,2)+'/'+
                             LeftStr(edDtGeracaoArquivo.Text,4);
   Screen.Cursor:= crHourGlass;
   crTotInvalido:= 0;
   iQtdRegValid := 0;

   edTotValido2.Value := 0;

   For iNumLinha := 0 to slArquivo.Count - 1 Do
   Begin
      //Readln(tfArq,sRegistro);

      if iNumLinha = 25 then
      begin
        sRegistro := ''
      end;

      try
         sRegistro := slArquivo[iNumLinha];
         if iNumLinha = 356 then
         begin
            sRegistro := slArquivo[iNumLinha];
         end;

         If LeftStr(sRegistro,1) = 'A' Then
         Begin
            pv_aRegTipoA[1] := Copy(sRegistro,1,1);
            pv_aRegTipoA[2] := Copy(sRegistro,2,1);
            pv_aRegTipoA[3] := Copy(sRegistro,3,20);
            pv_aRegTipoA[4] := Copy(sRegistro,23,20);
            pv_aRegTipoA[5] := Copy(sRegistro,43,3);
            pv_aRegTipoA[6] := Copy(sRegistro,46,20);
            pv_aRegTipoA[7] := Copy(sRegistro,66,8);
            pv_aRegTipoA[8] := Copy(sRegistro,74,6);
            pv_aRegTipoA[9] := Copy(sRegistro,80,2);
            pv_aRegTipoA[10]:= Copy(sRegistro,82,69);
            Try
               dDtTemp:= StrToDate(RightStr(pv_aRegTipoA[7],2)+'/'+
                                   Copy(pv_aRegTipoA[7],5,2)+'/'+
                                   LeftStr(pv_aRegTipoA[7],4));
            Except
               lArqOk:= False;
            End;
            If Not lArqOk Then
            Begin
               Mensagem('ESSE ARQUIVO NÃO CORRESPONDE AO '+#13+
                        'ARQUIVO DE RETORNO DE PAGAMENTOS !','E R R O  !!!',
                        MB_OK+MB_ICONERROR);
               Break;
            End Else
            If pv_aRegTipoA[5] <> sCodBanco Then
            Begin
               Mensagem('ESSE ARQUIVO NÃO É DESSA FONTE ARRECADORA !',
                  'E R R O  !!!',MB_OK+MB_ICONERROR);
               lArqOk:= False;
               Break;
            End;
         End Else
         If LeftStr(sRegistro,1) = 'G' Then
         Begin
            Inc(iTotRegTipoG);
            pv_aRegTipoG[1] := Copy(sRegistro,1,1);
            pv_aRegTipoG[2] := Copy(sRegistro,2,20);
            pv_aRegTipoG[3] := Copy(sRegistro,22,8);
            pv_aRegTipoG[4] := Copy(sRegistro,30,8);
            pv_aRegTipoG[5] := Copy(sRegistro,38,44);
            pv_aRegTipoG[6] := Copy(sRegistro,82,12);
            pv_aRegTipoG[7] := Copy(sRegistro,94,7);
            pv_aRegTipoG[8] := Copy(sRegistro,101,8);
            pv_aRegTipoG[9] := Copy(sRegistro,109,8);
            pv_aRegTipoG[10]:= Copy(sRegistro,117,1);
            pv_aRegTipoG[11]:= Copy(sRegistro,118,33);

            memLog.Lines.Add('Linha: '+IntToStr(iNumLinha)+' -> '+
               pv_aRegTipoG[1]+' - '+
               pv_aRegTipoG[2]+' - '+
               pv_aRegTipoG[3]+' - '+
               pv_aRegTipoG[4]+' - '+
               pv_aRegTipoG[5]+' - '+
               pv_aRegTipoG[6]+' - '+
               pv_aRegTipoG[7]+' - '+
               pv_aRegTipoG[8]+' - '+
               pv_aRegTipoG[9]+' - '+
               pv_aRegTipoG[10]+' - '+
               pv_aRegTipoG[11]);

            Try
               crValTarifa:= StrToCurr(LeftStr(pv_aRegTipoG[7],5)+','+
                                       RightStr(pv_aRegTipoG[7],2));
               edTotValido2.Value := edTotValido2.Value + crValTarifa;
            Except
               lArqOk     := False;
            End;
            If Not lArqOk Then
            Begin
               Mensagem('ESSE ARQUIVO NÃO CORRESPONDE AO '+#13+
                        'ARQUIVO DE RETORNO DE PAGAMENTOS !',
                        'E R R O  !!!',MB_OK+MB_ICONERROR);
               Break;
            End;
            try
               crValRecebido := StrToCurr(LeftStr(pv_aRegTipoG[6],10)+','+
                                          RightStr(pv_aRegTipoG[6],2));
            except
               Mensagem('Valor - Linha: '+IntToStr(iNumLinha),'ERRO !!!',MB_OK+MB_ICONERROR);
            end;
            crTotRecebido := crTotRecebido + crValRecebido;

            mTbPagto.Append;
            mTbPagtoNUM_REGISTRO.Value  := RightStr(pv_aRegTipoG[8],6);
            mTbPagtoCOD_BARRAS.Value    := Copy(pv_aRegTipoG[5],1,11)+' '+
              Copy(pv_aRegTipoG[5],12,11)+' '+Copy(pv_aRegTipoG[5],23,11)+' '+
              Copy(pv_aRegTipoG[5],34,11);
            mTbPagtoVAL_TARIFA.AsCurrency:= crValTarifa;
            mTbPagtoVAL_PAGO.Value       := crValRecebido;
            try
              mTbPagtoDATA_PAGTO.AsString  := RightStr(pv_aRegTipoG[3],2)+'/'+
                                             Copy(pv_aRegTipoG[3],5,2)+'/'+
                                             LeftStr(pv_aRegTipoG[3],4);
            except
               Mensagem('Dt.Pagto - Linha: '+IntToStr(iNumLinha),'ERRO !!!',MB_OK+MB_ICONERROR);
            end;
            pv_sDtPagto := mTbPagtoDATA_PAGTO.AsString;

            mTbPagtoPODE_SALVAR.Value := 'S';

            If RightStr(pv_aRegTipoG[5],1) = '0' Then
            Begin
               mTbPagtoTIPO_FATURA.Value := '1';  // Mensal
               mTbPagtoNUM_CONTA.AsString:= Copy(pv_aRegTipoG[5],28,6);
                  mTbPagtoREFERENCIA.Value  := Copy(pv_aRegTipoG[5],38,2)+'/'+
                                           Copy(pv_aRegTipoG[5],34,4);
               sReferencia := Trim(Copy(mTbPagtoREFERENCIA.Value,4,4))+
                  LeftStr(mTbPagtoREFERENCIA.Value,2);
               try
                  mTbPagtoNOME_PESSOA.Value := Pesquisa('UNID_CONSUMIDORA','ID',
                     mTbPagtoNUM_CONTA.AsString,'NOME_PESSOA','');
               except
                  Mensagem('Erro Unid. Consum. - Linha : '+IntToStr(iNumLinha)+' ....',
                    'ERRRO !!! ',MB_OK+MB_ICONEXCLAMATION);
               end;
               if mTbPagtoNOME_PESSOA.Value = '' then
                  mTbPagtoOBSERVACAO.Value := 'U.C. INEXISTENTE ';

               qryFatMensal.Close;
               qryFatMensal.ParamByName('pUC').Value := mTbPagtoNUM_CONTA.Value;
               qryFatMensal.ParamByName('pAnoMes').Value := sReferencia;
               try
                 qryFatMensal.Open;
               except
                 Mensagem('Erro Unid. Consum. - Linha : '+IntToStr(iNumLinha)+' ....',
                   'ERRRO !!! ',MB_OK+MB_ICONEXCLAMATION);
               end;
               if qryFatMensalDT_VENCIMENTO.IsNull then
               begin
                  Inc(iQtdRegValid);
                  crTotInvalido := crTotInvalido + crValRecebido;
                  mTbPagtoPODE_SALVAR.Value := 'N';
                  if mTbPagtoOBSERVACAO.IsNull then
                     mTbPagtoOBSERVACAO.Value := 'FAT.MÊS NÃO CALCULADA';
               end;
               qryFatMensal.Close;
            End Else
            Begin
               mTbPagtoTIPO_FATURA.Value:= '2';  // Avulsa
               mTbPagtoREFERENCIA.Value:= 'TA '+Copy(pv_aRegTipoG[5],28,8);
               sReferencia := Trim(Copy(mTbPagtoREFERENCIA.Value,4,8));
               qryFaturaAvulsa.Close;
               qryFaturaAvulsa.ParamByName('pId').Value := StrToInt(Copy(pv_aRegTipoG[5],28,8));
               try
                 qryFaturaAvulsa.Open;
               except
                 Mensagem('Erro Unid. Consum. - Linha : '+IntToStr(iNumLinha)+' ....',
                   'ERRRO !!! ',MB_OK+MB_ICONEXCLAMATION);
               end;
               If Not qryFaturaAvulsa.IsEmpty Then
               begin
                  try
                     mTbPagtoNUM_CONTA.Value  := qryFaturaAvulsaID_UNID_CONSUM.Value;
                     mTbPagtoNOME_PESSOA.Value := Pesquisa('UNID_CONSUMIDORA','ID',
                        mTbPagtoNUM_CONTA.AsString,'NOME_PESSOA','');
                  except
                     Mensagem('Erro Unid. Consum. - Linha : '+IntToStr(iNumLinha)+' ....',
                       'ERRRO !!! ',MB_OK+MB_ICONEXCLAMATION);
                  end;
               end else
               begin
                  Inc(iQtdRegValid);
                  crTotInvalido := crTotInvalido + crValRecebido;
                  mTbPagtoPODE_SALVAR.Value := 'N';
                  if mTbPagtoOBSERVACAO.IsNull then
                     mTbPagtoOBSERVACAO.Value := 'FAT.AVULSA NÃO CALCULADA';
               end;
               qryFaturaAvulsa.Close;
            End;

            mTbPagtoCPF_CNPJ.Value := Pesquisa('UNID_CONSUMIDORA','ID',
               mTbPagtoNUM_CONTA.AsString,'CPF_CNPJ_FTDO','');

            mTbPagtoSALVAR.Value := mTbPagtoPODE_SALVAR.Value;

            mTbPagto.Post;

            //Totaliza;
         End Else
         Begin
            pv_aRegTipoZ[01] := Copy(sRegistro,1,1);
            pv_aRegTipoZ[02] := Copy(sRegistro,2,6);
            pv_aRegTipoZ[03] := Copy(sRegistro,8,17);
            pv_aRegTipoZ[04] := Copy(sRegistro,25,126);
            Try
               crTotRecebido:= StrToCurr(LeftStr(pv_aRegTipoZ[3],15)+','+
                                         RightStr(pv_aRegTipoZ[3],2));
            Except
               lArqOk       := False;
            End;
            If Not lArqOk Then
            Begin
               Mensagem('ESSE ARQUIVO NÃO CORRESPONDE AO '+#13+
                        'ARQUIVO DE RETORNO DE PAGAMENTOS !',
                        'E R R O  !!!',MB_OK+MB_ICONERROR);
               Break;
            End;
         End;
      except
        Mensagem('Erro - Linha : '+IntToStr(iNumLinha)+' ....',
          'ERRRO !!! ',MB_OK+MB_ICONEXCLAMATION);
      end;
   End;
   //CloseFile(tfArq);
   If Not lArqOk Then
   Begin
      Screen.Cursor := crDefault;
      Exit;
   End;
   //edFonteArrecad.Text    := aRegTipoA[6];
   edTotRegArquivo.Text   := IntToStr(StrToInt(pv_aRegTipoZ[02])-2);
   edQtdRegValid.Value    := edTotRegArquivo.Value - iQtdRegValid;
   edTotArrecadado.Value  := crTotRecebido;
   edTotValido.Value      := edTotArrecadado.Value - crTotInvalido;

   {If ((edQtLanctos.Value+2)=StrToInt(edTotRegArquivo.Text)) And
      (edTotArrecadado.Value=edTotalFaturas.Value) Then
   Begin}
      edNomeArquivo.Properties.ReadOnly := True;
      sbFindArqTxt.Enabled := False;
      btnOk.Enabled        := False;
      btnGravar.Enabled    := True;
   {End Else
      Mensagem('PROBLEMAS NO ARQUIVO DE RETORNO'+#13+
               'NÃO SERÁ POSSÍVEL EFUTAR A BAIXA !','E R R O  !!!');}
   Screen.Cursor := crDefault;
   dbgLanctos.SetFocus;
End;


procedure TfrmLanctoImportar.mTbPagtoAfterPost(DataSet: TDataSet);
begin
  //edTotRegImport.Value:= edTotRegImport.Value + 1;
  //edTotalImport.Value := edTotalImport.Value + mTbPagtoVAL_PAGO.AsCurrency;
end;

end.
