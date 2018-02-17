unit CalcFaturaAvulsa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, cxNavigator,
  cxDBNavigator, cxButtons, ExtCtrls, cxContainer, cxEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCalendar, cxPC, cxCurrencyEdit, Buttons,
  cxGroupBox, ComCtrls, cxLabel, dxSkinsCore, dxSkinsDefaultPainters, cxSpinEdit,
  dxSkinscxPCPainter, frxClass, frxDBSet, StrUtils, Grids, DBGrids, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmCalcFaturaAvulsa = class(TfrmCadPadrao)
    gb1: TcxGroupBox;
    LabelId: TLabel;
    edID: TcxDBTextEdit;
    edNome: TcxDBTextEdit;
    LabelNome: TLabel;
    sbFindUnidConsum: TSpeedButton;
    lblCPF_CNPJ: TLabel;
    edIdUnidConsum: TcxDBTextEdit;
    Label3: TLabel;
    gbItens: TcxGroupBox;
    edCPF_CNPJ: TcxDBTextEdit;
    qryItemFatura: TSQLQuery;
    cdsItemFatura: TClientDataSet;
    dsItemFatura: TDataSource;
    Label1: TLabel;
    edDtEmissao: TcxDBDateEdit;
    edDtVencto: TcxDBDateEdit;
    Label4: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    provItemFatura: TDataSetProvider;
    qryItemFaturaID_FATURA: TIntegerField;
    qryItemFaturaID: TIntegerField;
    qryItemFaturaID_ITEM: TIntegerField;
    qryItemFaturaREFERENCIA: TStringField;
    qryItemFaturaVAL_PRINCIPAL: TFMTBCDField;
    qryItemFaturaVAL_MULTA: TFMTBCDField;
    qryItemFaturaVAL_DESCONTO: TFMTBCDField;
    qryItemFaturaINCIDIR_MULTA: TStringField;
    qryItemFaturaVAL_TOTAL: TFMTBCDField;
    qryItemFaturaDESCR_ITEM: TStringField;
    cdsItemFaturaID_FATURA: TIntegerField;
    cdsItemFaturaID: TIntegerField;
    cdsItemFaturaID_ITEM: TIntegerField;
    cdsItemFaturaREFERENCIA: TStringField;
    cdsItemFaturaVAL_PRINCIPAL: TFMTBCDField;
    cdsItemFaturaVAL_MULTA: TFMTBCDField;
    cdsItemFaturaVAL_DESCONTO: TFMTBCDField;
    cdsItemFaturaINCIDIR_MULTA: TStringField;
    cdsItemFaturaVAL_TOTAL: TFMTBCDField;
    cdsItemFaturaDESCR_ITEM: TStringField;
    qryItemFaturaREF_FTDO: TStringField;
    cdsItemFaturaREF_FTDO: TStringField;
    btnAddItem: TBitBtn;
    btnEditItem: TBitBtn;
    btnDelItem: TBitBtn;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    qryUnidConsum: TSQLQuery;
    qryUnidConsumNOME_PESSOA: TStringField;
    qryUnidConsumDESCR_TIPO_PESSOA: TStringField;
    qryUnidConsumCPF_CNPJ_FTDO: TStringField;
    qryUnidConsumDESCR_TIPO_UNID_CONSUM: TStringField;
    qryUnidConsumDESCR_SITUAC_UNID_CONSUM: TStringField;
    qryUnidConsumENDER_ID_LOGRAD: TIntegerField;
    qryUnidConsumENDER_DESCR_LOGRADOURO: TStringField;
    qryUnidConsumENDER_NUM_LETRA: TStringField;
    qryUnidConsumENDER_ID_BAIRRO: TIntegerField;
    qryUnidConsumENDER_DESCR_BAIRRO: TStringField;
    qryUnidConsumENDER_ID_DISTRITO: TIntegerField;
    qryUnidConsumENDER_DESCR_DISTRITO: TStringField;
    mTbItemFatura: TClientDataSet;
    mTbItemFaturaID: TIntegerField;
    mTbItemFaturaID_ITEM: TIntegerField;
    mTbItemFaturaDESCRICAO: TStringField;
    mTbItemFaturaREFERENCIA: TStringField;
    mTbItemFaturaVAL_PRINCIPAL: TCurrencyField;
    mTbItemFaturaVAL_MULTA: TCurrencyField;
    mTbItemFaturaVAL_DESCONTO: TCurrencyField;
    mTbItemFaturaVAL_TOTAL: TCurrencyField;
    mTbItemFaturaINCIDIR_MULTA: TStringField;
    mTbItemFaturaREF_FTDO: TStringField;
    qryDelItensTarifa: TSQLQuery;
    spAddItem: TSQLStoredProc;
    Label2: TLabel;
    edTotPrincipal: TcxCurrencyEdit;
    edTotDesconto: TcxCurrencyEdit;
    edTotGeral: TcxCurrencyEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    dsFaturaAvulsa: TDataSource;
    qryFaturaAvulsa: TSQLQuery;
    provFaturaAvulsa: TDataSetProvider;
    cdsFaturaAvulsa: TClientDataSet;
    qry1ID: TIntegerField;
    cds1ID: TIntegerField;
    qryFaturaAvulsaID: TIntegerField;
    qryFaturaAvulsaID_UNID_CONSUM: TIntegerField;
    qryFaturaAvulsaDT_EMISSAO: TDateField;
    qryFaturaAvulsaDT_VENCIMENTO: TDateField;
    qryFaturaAvulsaSITUACAO: TStringField;
    qryFaturaAvulsaDESCR_SITUACAO: TStringField;
    qryFaturaAvulsaDT_PAGAMENTO: TDateField;
    qryFaturaAvulsaVALOR_TOTAL: TFMTBCDField;
    qryFaturaAvulsaNOME_PESSOA: TStringField;
    qryFaturaAvulsaDESCR_TIPO_PESSOA: TStringField;
    qryFaturaAvulsaCPF_CNPJ_FTDO: TStringField;
    qryFaturaAvulsaDESCR_TIPO_UNID_CONSUM: TStringField;
    qryFaturaAvulsaDESCR_SITUAC_UNID_CONSUM: TStringField;
    qryFaturaAvulsaENDER_ID_LOGRAD: TIntegerField;
    qryFaturaAvulsaENDER_DESCR_LOGRADOURO: TStringField;
    qryFaturaAvulsaENDER_NUM_LETRA: TStringField;
    qryFaturaAvulsaENDER_ID_BAIRRO: TIntegerField;
    qryFaturaAvulsaENDER_DESCR_BAIRRO: TStringField;
    qryFaturaAvulsaENDER_ID_DISTRITO: TIntegerField;
    qryFaturaAvulsaENDER_DESCR_DISTRITO: TStringField;
    cdsFaturaAvulsaID: TIntegerField;
    cdsFaturaAvulsaID_UNID_CONSUM: TIntegerField;
    cdsFaturaAvulsaDT_EMISSAO: TDateField;
    cdsFaturaAvulsaDT_VENCIMENTO: TDateField;
    cdsFaturaAvulsaSITUACAO: TStringField;
    cdsFaturaAvulsaDESCR_SITUACAO: TStringField;
    cdsFaturaAvulsaDT_PAGAMENTO: TDateField;
    cdsFaturaAvulsaVALOR_TOTAL: TFMTBCDField;
    cdsFaturaAvulsaNOME_PESSOA: TStringField;
    cdsFaturaAvulsaDESCR_TIPO_PESSOA: TStringField;
    cdsFaturaAvulsaCPF_CNPJ_FTDO: TStringField;
    cdsFaturaAvulsaDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsFaturaAvulsaDESCR_SITUAC_UNID_CONSUM: TStringField;
    cdsFaturaAvulsaENDER_ID_LOGRAD: TIntegerField;
    cdsFaturaAvulsaENDER_DESCR_LOGRADOURO: TStringField;
    cdsFaturaAvulsaENDER_NUM_LETRA: TStringField;
    cdsFaturaAvulsaENDER_ID_BAIRRO: TIntegerField;
    cdsFaturaAvulsaENDER_DESCR_BAIRRO: TStringField;
    cdsFaturaAvulsaENDER_ID_DISTRITO: TIntegerField;
    cdsFaturaAvulsaENDER_DESCR_DISTRITO: TStringField;
    qryItemFaturaID_UNID_CONSUM: TIntegerField;
    cdsItemFaturaID_UNID_CONSUM: TIntegerField;
    btnAddFatEmAberto: TBitBtn;
    DBGrid1: TDBGrid;
    qryFatAvulsaAnter: TSQLQuery;
    qryFatAvulsaAnterID: TIntegerField;
    qryFatAvulsaAnterSITUACAO: TStringField;
    qryFatAvulsaAnterDT_EMISSAO: TDateField;
    qryFatAvulsaAnterDT_VENCIMENTO: TDateField;
    qryItemFaturaQTD_DIAS_ATRASO: TIntegerField;
    cdsItemFaturaQTD_DIAS_ATRASO: TIntegerField;
    mTbItemFaturaqtd_dias_atraso: TIntegerField;
    edTotJuros: TcxCurrencyEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edDtBC_Juros: TcxDBDateEdit;
    qryFaturaAvulsaDT_BC_JUROS: TDateField;
    cdsFaturaAvulsaDT_BC_JUROS: TDateField;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cds1AfterInsert(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cds1BeforeCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edIdUnidConsumKeyPress(Sender: TObject; var Key: Char);
    procedure edEnderIdLogradKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cds1AfterOpen(DataSet: TDataSet);
    procedure cbTipoConsumoPropertiesCloseUp(Sender: TObject);
    procedure cbTipoConsumoPropertiesPopup(Sender: TObject);
    procedure sbConsultasClick(Sender: TObject);
    procedure edIdUnidConsumExit(Sender: TObject);
    procedure cds1AfterScroll(DataSet: TDataSet);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddItemClick(Sender: TObject);
    procedure sbFindUnidConsumClick(Sender: TObject);
    procedure edDtEmissaoExit(Sender: TObject);
    procedure edDtVenctoExit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnAddFatEmAbertoClick(Sender: TObject);
    procedure edIdUnidConsumPropertiesChange(Sender: TObject);
    procedure edTotPrincipalPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    pv_lAdd,
    pv_lEdit,
    pv_lDel    : Boolean;
    pv_sPathRel: WideString;
    Procedure HabilitaBotoes(lOpcao: Boolean);
    procedure DeleteItensTarifa;
    procedure LimpaOrdemGrid;
    procedure AtualizaTotais;
    function IncrmentaId(iAdd: Integer): Integer;
  public
    { Public declarations }
    pb_iIdFatura: Integer;
  end;

var
  frmCalcFaturaAvulsa: TfrmCalcFaturaAvulsa;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, SelecionaPadrao,
   FindUnidConsumidora, AddEditItemFaturaAvulsa, FindFaturaAvulsa, udmRelDoctos, AddFaturasEmAberto;

{$R *.dfm}

procedure TfrmCalcFaturaAvulsa.btnAddFatEmAbertoClick(Sender: TObject);
begin

  if EmptyData(edDtVencto.Text) then
  begin
     Mensagem('É necessário informar a Data de Vencto da Fatura Avulsa ...','AVISO !!!',
        MB_OK+MB_ICONEXCLAMATION);
     edDtVencto.SetFocus;
     exit;
  end;

  frmAddFatEmAberto := TfrmAddFatEmAberto.Create(Self);
  frmAddFatEmAberto.pb_dDtVencto := StrToDate(edDtBC_Juros.Text);
  frmAddFatEmAberto.executa(dsItemFatura,cdsFaturaAvulsaID_UNID_CONSUM.Value);
  FreeAndNil(frmAddFatEmAberto);

  AtualizaTotais;

end;

procedure TfrmCalcFaturaAvulsa.btnAddItemClick(Sender: TObject);
begin

  if EmptyData(edDtVencto.Text) then
  begin
     Mensagem('É necessário informar a Data de Vencto da Fatura Avulsa ...','AVISO !!!',
        MB_OK+MB_ICONEXCLAMATION);
     edDtVencto.SetFocus;
     exit;
  end;

  frmAddEditItemFatAvulsa.pb_dDtVencto := StrToDate(edDtBC_Juros.Text);

  if TBitBtn(Sender).Tag = 1 then
  begin
     if Empty(edIdUnidConsum.Text) then
     begin
        Mensagem('Você deve informar a Unidade Consumidora ...',
           'AVISO !!!',MB_OK+MB_ICONWARNING);
        edIdUnidConsum.SetFocus;
        exit;
     end else
        frmAddEditItemFatAvulsa.executa(dsItemFatura,edIdUnidConsum.Text,True);
  end else
  if TBitBtn(Sender).Tag = 2 then
  begin
     if mTbItemFatura.RecordCount > 0 then
        frmAddEditItemFatAvulsa.executa(dsItemFatura,edIdUnidConsum.Text,False)
  end else
  begin
     if mTbItemFatura.RecordCount > 0 then
        if not Confirma('Deseja realmente EXCLUIR esse Ítem da Fatura ?') then exit;
           mTbItemFatura.Delete;
  end;
  AtualizaTotais;
end;

procedure TfrmCalcFaturaAvulsa.btnCancelarClick(Sender: TObject);
Var
  iIdTemp: integer;
begin
  mTbItemFatura.EmptyDataSet;
  iIdTemp := cds1ID.Value;
  cdsFaturaAvulsa.Cancel;
  inherited;
  HabilitaBotoes(True);
  cds1.FindKey([iIdTemp]);
  gb1.SetFocus;
  Panel1.Caption := ' Modo Consulta ...';
end;

procedure TfrmCalcFaturaAvulsa.btnExcluirClick(Sender: TObject);
begin
   if cds1.RecordCount = 0 then exit;
   if Confirma('Deseja Realmente EXCLUIR '+pb_sConfirmExclui+' '+pb_sTitJanela1) then
   begin
      pb_sOperacao := '3';
      DeleteItensTarifa;
      ExcluiRegistro(cdsFaturaAvulsa);
      cds1.Delete;
   end;
end;

procedure TfrmCalcFaturaAvulsa.btnGravarClick(Sender: TObject);
Var
  iConta   : Integer;
  sCPF_CNPJ: string;
  iIdTemp  : Integer;
  lAdd     : Boolean;
  sTextSQL : string;
  sTemp    : string;
begin
  if Not Confirma('Gravar '+iIf(cdsFaturaAvulsa.State=dsInsert,'Nova '+
     pb_sTitJanela1,'Alerações')+' ?') then exit;
  lAdd := (cdsFaturaAvulsa.State=dsInsert);

  Screen.Cursor := crHourGlass;

  iIdTemp := cdsFaturaAvulsaID.Value;

  SalvaTransacao(cdsFaturaAvulsa);
  DeleteItensTarifa; // ok

  mTbItemFatura.DisableControls;
  mTbItemFatura.IndexFieldNames := 'Id';
  mTbItemFatura.First;
  while not mTbItemFatura.Eof do
  begin

     if mTbItemFaturaID_ITEM.Value = 1 then
        sTemp := LeftStr(Trim(mTbItemFaturaREF_FTDO.Value),2)+
          RightStr(Trim(mTbItemFaturaREF_FTDO.Value),4)
     else
        sTemp := mTbItemFaturaREFERENCIA.Value;

     sTextSQL := 'execute procedure sp_add_item_fat_avulsa('+cdsFaturaAvulsaID.AsString+','+
        mTbItemFaturaID_ITEM.AsString+','+QuotedStr(sTemp)+','+
        StringReplace(mTbItemFaturaVAL_PRINCIPAL.AsString,',','.',[rfIgnoreCase])+','+
        StringReplace(mTbItemFaturaVAL_MULTA.AsString,',','.',[rfIgnoreCase])+','+
        StringReplace(mTbItemFaturaVAL_DESCONTO.AsString,',','.',[rfIgnoreCase])+','+
        mTbItemFaturaqtd_dias_atraso.AsString+','+QuotedStr(mTbItemFaturaINCIDIR_MULTA.Value)+','+
        cdsFaturaAvulsaID_UNID_CONSUM.AsString+')';
     dmPrincipal.SConPrincipal.ExecuteDirect(sTextSQL);

     {
     spAddItem.Close;
     spAddItem.ParamByName('pe_id_fatura').Value := cdsFaturaAvulsaID.Value;
     spAddItem.ParamByName('pe_id_item').Value   := mTbItemFaturaID_ITEM.Value;
     if mTbItemFaturaID_ITEM.Value = 1 then
        spAddItem.ParamByName('pe_referencia').Value:= LeftStr(Trim(mTbItemFaturaREF_FTDO.Value),2)+
          RightStr(Trim(mTbItemFaturaREF_FTDO.Value),4)
     else
        spAddItem.ParamByName('pe_referencia').Value:= mTbItemFaturaREFERENCIA.Value;
     spAddItem.ParamByName('pe_val_principal').AsCurrency := mTbItemFaturaVAL_PRINCIPAL.AsCurrency;
     spAddItem.ParamByName('pe_val_multa').AsCurrency := mTbItemFaturaVAL_MULTA.AsCurrency;
     spAddItem.ParamByName('pe_val_desconto').AsCurrency := mTbItemFaturaVAL_DESCONTO.AsCurrency;
     spAddItem.ParamByName('pe_incidir_multa').Value := mTbItemFaturaINCIDIR_MULTA.Value;
     spAddItem.ParamByName('pe_qtd_dias_atraso').Value := mTbItemFaturaqtd_dias_atraso.Value;
     spAddItem.ParamByName('pe_id_unid_consum').Value := cdsFaturaAvulsaID_UNID_CONSUM.Value;
     spAddItem.ExecProc;
     }
     mTbItemFatura.Next;
  end;
  mTbItemFatura.First;
  mTbItemFatura.EnableControls;
  if lAdd then
  begin
     cds1.Close;
     cds1.Open;
     cds1.FindKey([iIdTemp]);
  end;
  Panel1.Caption := ' Modo Consulta ...';

  HabilitaBotoes(True);

  Screen.Cursor := crDefault;

end;

procedure TfrmCalcFaturaAvulsa.btnImprimirClick(Sender: TObject);
Var
  sModFat: String[1];
begin

  sModFat := Pesquisa('CONFIG_ORGAO','ID','1','TIPO_FATURA','');
  dmRelDoctos := TdmRelDoctos.Create(Self);
  dmRelDoctos.ImpFaturaAvulsa(StrToInt(edID.Text),sModFat,edDtVencto.Text,edTotGeral.Value,True);
  FreeAndNil(dmRelDoctos);
end;

procedure TfrmCalcFaturaAvulsa.btnNovoClick(Sender: TObject);
Var
  iConta: Integer;
begin
  inherited;
  HabilitaBotoes(False);
  if TcxButton(Sender).tag = 1 then
  begin
     mTbItemFatura.EmptyDataSet;
     mTbItemFatura.Close;
     mTbItemFatura.Open;
     cdsFaturaAvulsa.Insert;
     cdsFaturaAvulsaDT_EMISSAO.Value   := Date;
     cdsFaturaAvulsaDT_BC_JUROS.Value  := Date;
     cdsFaturaAvulsaDT_VENCIMENTO.Value:= Date;
     edIdUnidConsum.SetFocus;
  end else
  begin
     edIdUnidConsum.Properties.ReadOnly := True;
     sbFindUnidConsum.Enabled := False;
     cdsFaturaAvulsa.Edit;
     edDtEmissao.SetFocus;
  end;
end;

procedure TfrmCalcFaturaAvulsa.btnPesquisarClick(Sender: TObject);
begin
  if cdsFaturaAvulsa.State <> dsBrowse then exit;
  frmFindFaturaAvulsa.executa(cds1);
end;

procedure TfrmCalcFaturaAvulsa.cbTipoConsumoPropertiesCloseUp(
  Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmCalcFaturaAvulsa.cbTipoConsumoPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmCalcFaturaAvulsa.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cdsFaturaAvulsaID.AsString := IncrementGenerator('GEN_ID_FATURA_AVULSA',1);
  cdsFaturaAvulsaSITUACAO.Value := '1';
  cdsFaturaAvulsaDESCR_SITUACAO.Value := 'EMITINDO ...';
  edTotPrincipal.Value := 0;
  edTotDesconto.Value := 0;
  edTotGeral.Value := 0;
end;

procedure TfrmCalcFaturaAvulsa.cds1AfterOpen(DataSet: TDataSet);
begin
{
  inherited;
  if (cds1.IsEmpty) or (cds1.State <> dsBrowse) then exit;
  cdsItemFatura.Close;
  qryItemFatura.ParamByName('pFatura').Value := cds1ID.Value;
  cdsItemFatura.Open;
}
end;

procedure TfrmCalcFaturaAvulsa.cds1AfterScroll(DataSet: TDataSet);
begin

  if cds1.IsEmpty then exit;

  cdsFaturaAvulsa.Close;
  qryFaturaAvulsa.Params[0].Value := cds1ID.Value;
  cdsFaturaAvulsa.Open;

  btnAlterar.Enabled := (pv_lEdit) and (cdsFaturaAvulsaSITUACAO.Value = '1');
  btnExcluir.Enabled := (pv_lDel) and (btnAlterar.Enabled);

  if mTbItemFatura.Active then
     mTbItemFatura.EmptyDataSet;
  cdsItemFatura.Close;
  qryItemFatura.ParamByName('pFatura').Value:= cds1ID.Value;
  cdsItemFatura.Open;
  mTbItemFatura.Close;
  mTbItemFatura.Open;
  while not cdsItemFatura.eof do
  begin
     mTbItemFatura.Insert;
     mTbItemFaturaId.Value := cdsItemFaturaID.Value;
     mTbItemFaturaId_Item.Value := cdsItemFaturaID_ITEM.Value;
     mTbItemFaturaDescricao.Value := cdsItemFaturaDESCR_ITEM.Value;
     mTbItemFaturaReferencia.Value := cdsItemFaturaREFERENCIA.Value;
     mTbItemFaturaVal_Principal.Value := cdsItemFaturaVAL_PRINCIPAL.AsCurrency;
     mTbItemFaturaVal_Multa.Value := cdsItemFaturaVAL_MULTA.AsCurrency;
     mTbItemFaturaVal_Desconto.Value := cdsItemFaturaVAL_DESCONTO.AsCurrency;
     mTbItemFaturaVal_Total.Value := cdsItemFaturaVAL_TOTAL.AsCurrency;
     mTbItemFaturaIncidir_Multa.Value := cdsItemFaturaINCIDIR_MULTA.Value;
     mTbItemFaturaRef_Ftdo.Value := cdsItemFaturaREF_FTDO.Value;
     mTbItemFaturaqtd_dias_atraso.Value := cdsItemFaturaQTD_DIAS_ATRASO.Value;
     mTbItemFatura.Post;
     cdsItemFatura.Next;
  end;

  AtualizaTotais;

end;

procedure TfrmCalcFaturaAvulsa.cds1BeforeCancel(DataSet: TDataSet);
begin
   CancelGenerator(cdsFaturaAvulsa.State,'FATURA_AVULSA','ID',StrToInt(edID.Text));
end;

procedure TfrmCalcFaturaAvulsa.edDtEmissaoExit(Sender: TObject);
begin
  if (Trim(ExtraiPonto(edDtEmissao.Text))='') or
     (cdsFaturaAvulsa.State = dsBrowse) then exit;
  if Trim(ExtraiPonto(edDtVencto.Text))='' then
     edDtVencto.Text := edDtEmissao.Text;
end;

procedure TfrmCalcFaturaAvulsa.edDtVenctoExit(Sender: TObject);
begin
  if (Trim(ExtraiPonto(edDtVencto.Text))='') or
     (cdsFaturaAvulsa.State = dsBrowse) then exit;
  if StrToDate(edDtVencto.Text) < StrToDate(edDtEmissao.Text) then
     edDtVencto.SetFocus;
end;

procedure TfrmCalcFaturaAvulsa.edEnderIdLogradKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if btnNovo.Enabled then exit;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
  begin
     case TCustomEdit(Sender).Tag of
        0: sbFindUnidConsum.Click;
     end;
  end;
end;

procedure TfrmCalcFaturaAvulsa.edIdUnidConsumExit(Sender: TObject);
begin

   if ((cdsFaturaAvulsa.State = dsBrowse) or
       (cdsFaturaAvulsa.State = dsEdit)) or
      (Trim(ExtraiPonto(edIdUnidConsum.Text)) = '') then exit;
   qryUnidConsum.Close;
   qryUnidConsum.ParamByName('pId').AsString :=
      Trim(ExtraiPonto(edIdUnidConsum.Text));
   qryUnidConsum.Open;
   if qryUnidConsumNOME_PESSOA.IsNull then
   begin
      Mensagem('Identificador de Unidade Consumidora, inválido ...',
         'Aviso !!!',MB_OK+MB_ICONWARNING);
      edIdUnidConsum.SetFocus;
      Exit;
   end;
   cdsFaturaAvulsaNOME_PESSOA.Value := qryUnidConsumNOME_PESSOA.Value;
   cdsFaturaAvulsaDESCR_TIPO_PESSOA.Value := qryUnidConsumDESCR_TIPO_PESSOA.Value;
   cdsFaturaAvulsaCPF_CNPJ_FTDO.Value := qryUnidConsumCPF_CNPJ_FTDO.Value;
   cdsFaturaAvulsaDESCR_TIPO_UNID_CONSUM.Value := qryUnidConsumDESCR_TIPO_UNID_CONSUM.Value;
   cdsFaturaAvulsaDESCR_SITUAC_UNID_CONSUM.Value := qryUnidConsumDESCR_SITUAC_UNID_CONSUM.Value;
   cdsFaturaAvulsaENDER_DESCR_LOGRADOURO.Value := qryUnidConsumENDER_DESCR_LOGRADOURO.Value;
   cdsFaturaAvulsaENDER_NUM_LETRA.Value := qryUnidConsumENDER_NUM_LETRA.Value;
   cdsFaturaAvulsaENDER_DESCR_BAIRRO.Value := qryUnidConsumENDER_DESCR_BAIRRO.Value;
   cdsFaturaAvulsaENDER_DESCR_DISTRITO.Value := qryUnidConsumENDER_DESCR_DISTRITO.Value;

   qryFatAvulsaAnter.Close;
   qryFatAvulsaAnter.Params[0].Value := StrToInt(Trim(ExtraiPonto(edIdUnidConsum.Text)));
   qryFatAvulsaAnter.Open;
   if not qryFatAvulsaAnterID.IsNull then
   begin
         Mensagem('Já existe Fatura Avulsa em Aberto dessa Unid. Consumidora: '+#13+
            'Nº: '+qryFatAvulsaAnterID.AsString+' - Dt.Emissão: '+qryFatAvulsaAnterDT_EMISSAO.AsString+
            ' - Dt.Vencto: '+qryFatAvulsaAnterDT_VENCIMENTO.AsString,
            'Aviso !!!',MB_OK+MB_ICONWARNING);
      edIdUnidConsum.SetFocus;
   end;
   qryFatAvulsaAnter.Close;

end;

procedure TfrmCalcFaturaAvulsa.edIdUnidConsumKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmCalcFaturaAvulsa.edIdUnidConsumPropertiesChange(Sender: TObject);
begin
   if Trim(edIdUnidConsum.Text) = '' then
   begin
      if cdsFaturaAvulsa.State in [dsInsert,dsEdit] then
      begin
         cdsFaturaAvulsaNOME_PESSOA.Value := '';
         cdsFaturaAvulsaDESCR_TIPO_PESSOA.Value := '';
         cdsFaturaAvulsaCPF_CNPJ_FTDO.Value := '';
         cdsFaturaAvulsaDESCR_TIPO_UNID_CONSUM.Value := '';
         cdsFaturaAvulsaDESCR_SITUAC_UNID_CONSUM.Value := '';
         cdsFaturaAvulsaENDER_DESCR_LOGRADOURO.Value := '';
         cdsFaturaAvulsaENDER_NUM_LETRA.Value := '';
         cdsFaturaAvulsaENDER_DESCR_BAIRRO.Value := '';
         cdsFaturaAvulsaENDER_DESCR_DISTRITO.Value := '';
      end;
   end;
end;

procedure TfrmCalcFaturaAvulsa.edTotPrincipalPropertiesChange(Sender: TObject);
begin
  edTotGeral.Value := (edTotPrincipal.Value + edTotJuros.Value) - edTotDesconto.Value;
end;

procedure TfrmCalcFaturaAvulsa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsItemFatura.Close;
  cds1.Close;
  cdsFaturaAvulsa.Close;
end;

procedure TfrmCalcFaturaAvulsa.FormCreate(Sender: TObject);
Var
  iConta: Integer;
begin
  inherited;
  frmFindFaturaAvulsa := TfrmFindFaturaAvulsa.Create(Self);
  frmAddEditItemFatAvulsa := TfrmAddEditItemFatAvulsa.Create(Self);
  Position := poDesigned;
  Top := Top + 105;
  lblPadrao.Caption := '';
  pb_sNomeTab      := 'FATURA_AVULSA';
  pb_sNomeCampoPK  := 'ID';
  pb_sTitJanela1   := 'FATURA AVULSA';
  pb_sTitJanela2   := 'CÁLCULO DE FATURA AVULSA';
  pb_sConfirmExclui:= 'esta';
  mTbItemFatura.CreateDataSet;

  PermissoesUsuario(glb_iIdOperLogado,pb_sNomeTab);
  pv_lAdd  := btnNovo.Enabled;
  pv_lEdit := btnAlterar.Enabled;
  pv_lDel  := btnExcluir.Enabled;

end;

procedure TfrmCalcFaturaAvulsa.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditItemFatAvulsa);
  FreeAndNil(frmFindFaturaAvulsa);
end;

procedure TfrmCalcFaturaAvulsa.FormShow(Sender: TObject);
Var
  i: Integer;
begin

  Screen.Cursor := crHourGlass;
  Caption := pb_sTitJanela2;

  mTbItemFatura.Close;

  cds1.close;
  cds1.IndexFieldNames := 'ID';
  mTbItemFatura.IndexFieldNames := 'Id';
  cds1.Open;

  if pb_iIdFatura > 0 then
  begin
     cds1.FindKey([pb_iIdFatura]);
     HabilitaBotoes(False);
     btnAddItem.Enabled := False;
     btnEditItem.Enabled:= False;
     btnDelItem.Enabled := False;
     btnGravar.Enabled  := False;
     btnCancelar.Enabled:= False;
  end else
  begin
     cds1.Last;
     HabilitaBotoes(True);
  end;
  Screen.Cursor := crDefault;

end;

procedure TfrmCalcFaturaAvulsa.LimpaOrdemGrid;
Var
   iConta: integer;
begin
end;

procedure TfrmCalcFaturaAvulsa.sbConsultasClick(Sender: TObject);
begin
{
   frmListagemUnidConsumidora := TfrmListagemUnidConsumidora.Create(Self);
   frmListagemUnidConsumidora.Executa(cdsUnidNav);
   FreeAndNil(frmListagemUnidConsumidora);
}
end;

procedure TfrmCalcFaturaAvulsa.sbFindUnidConsumClick(Sender: TObject);
begin
  frmFindUnidConsum.ShowModal;
  if glb_sCodigo <> '' then
     cdsFaturaAvulsaID_UNID_CONSUM.AsString := glb_sCodigo;
end;

Procedure TfrmCalcFaturaAvulsa.HabilitaBotoes(lOpcao: Boolean);
Var
   iConta: Integer;
   sTemp: string[3];
begin

   Nav1.Enabled            := lOpcao;
   btnNovo.Enabled         := lOpcao;
   if (lOpcao = True) and (cdsFaturaAvulsaSITUACAO.Value = '1') then
      btnAlterar.Enabled := lOpcao
   else
      btnAlterar.Enabled := False;
   btnExcluir.Enabled      := btnAlterar.Enabled;
   btnPesquisar.Enabled    := lOpcao;
   //sbConsultas.Enabled     := lOpcao;
   btnGravar.Enabled       := not lOpcao;
   btnCancelar.Enabled     := not lOpcao;
   edIdUnidConsum.Properties.ReadOnly := lOpcao;
   sbFindUnidConsum.Enabled := not lOpcao;
   edDtEmissao.Properties.ReadOnly := lOpcao;
   edDtVencto.Properties.ReadOnly := lOpcao;

   btnAddItem.Enabled := not (btnNovo.Enabled);
   btnEditItem.Enabled:= btnAddItem.Enabled;
   btnDelItem.Enabled := btnAddItem.Enabled;
   btnAddFatEmAberto.Enabled := btnAddItem.Enabled;

   if lOpcao = True then
   begin
      btnAlterar.Enabled := (pv_lEdit);
      btnExcluir.Enabled := (pv_lDel);
   end;

end;

Procedure TfrmCalcFaturaAvulsa.DeleteItensTarifa;
begin
   qryDelItensTarifa.Close;
   qryDelItensTarifa.ParamByName('pFatura').Value := cdsFaturaAvulsaID.Value;
   qryDelItensTarifa.ExecSQL();
end;

Procedure TfrmCalcFaturaAvulsa.AtualizaTotais;
begin

   edTotPrincipal.Value:= 0;
   edTotJuros.Value    := 0;
   edTotDesconto.Value := 0;

   mTbItemFatura.DisableControls;
   mTbItemFatura.First;
   while not mTbItemFatura.eof do
   begin
      edTotPrincipal.Value := edTotPrincipal.Value +
         mTbItemFaturaVAL_PRINCIPAL.AsCurrency;
      edTotJuros.Value := edTotJuros.Value +
         mTbItemFaturaVAL_MULTA.AsCurrency;
      edTotDesconto.Value := edTotDesconto.Value +
         mTbItemFaturaVAL_DESCONTO.AsCurrency;
      mTbItemFatura.Next;
   end;
   mTbItemFatura.EnableControls;

end;

function TfrmCalcFaturaAvulsa.IncrmentaId(iAdd: Integer): Integer;
Var
  oSQL: TSQLQuery;
begin

  Result := 0;
  oSQL := TSQLQuery.Create(Self);
  oSQL.SQLConnection := dmPrincipal.SConPrincipal;
  oSQL.SQL.Add('Select id from fatura_avulsa order by id descending');
  try
    oSQL.Open;
    if not oSQL.FieldByName('id').IsNull then
       Result := oSQL.FieldByName('id').Value + iAdd;
  finally
    oSQL.Close;
    FreeAndNil(oSQL);
  end;

end;

end.
