unit LanctoPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxGroupBox,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBEdit, FMTBcd,
  SqlExpr, Provider, DBClient, Menus, cxRadioGroup, cxCalendar,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, ExtCtrls,
  fmeLogradouro, cxCurrencyEdit, cxLabel, cxDropDownEdit, fmeLocalPagto, StrUtils,
  dxCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxNavigator, Vcl.ComCtrls, cxDateUtils;

type
  TfrmLanctoPagto = class(TfrmPadrao1)
    gbUnidConsum: TcxGroupBox;
    cds1: TClientDataSet;
    prov1: TDataSetProvider;
    dbg1: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Alterar1: TMenuItem;
    Exluir1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    GridDBTableView1Column2: TcxGridDBColumn;
    Panel: TPanel;
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnFechar: TBitBtn;
    qry1: TSQLQuery;
    ds1: TDataSource;
    GridDBTableView1Column4: TcxGridDBColumn;
    GridDBTableView1Column5: TcxGridDBColumn;
    edEnderDescrDisitro: TcxDBTextEdit;
    edEnderDescrBairro: TcxDBTextEdit;
    edEnderComplemento: TcxDBTextEdit;
    edEnderNum: TcxDBTextEdit;
    edDescrLograd: TcxDBTextEdit;
    Label2: TLabel;
    GridDBTableView1Column3: TcxGridDBColumn;
    GridDBTableView1Column6: TcxGridDBColumn;
    GroupBox1: TcxGroupBox;
    btnOk: TBitBtn;
    cxLabel1: TcxLabel;
    lblQtdLancto: TcxLabel;
    cxLabel2: TcxLabel;
    edDtPagto: TcxDateEdit;
    cxLabel3: TcxLabel;
    lblTotPagto: TcxLabel;
    frmeLocalPagto1: TfrmeLocalPagto;
    cxLabel4: TcxLabel;
    btnLimpar: TButton;
    cds1R_ID_UNID_CONSUM: TIntegerField;
    cds1R_NOME_PESSOA: TStringField;
    cds1R_DESCR_TIPO_PESSOA: TStringField;
    cds1R_CPF_CNPJ_FTDO: TStringField;
    cds1R_TIPO_FATURA: TStringField;
    cds1R_DESCR_TIPO_FATURA: TStringField;
    cds1R_REFERENCIA: TStringField;
    cds1R_REF_FTDO: TStringField;
    cds1R_DT_PAGTO: TDateField;
    cds1R_ID_LOCAL_PAGTO: TIntegerField;
    cds1R_DESCR_LOCAL_PAGTO: TStringField;
    cds1R_DT_VENCIMENTO: TDateField;
    cds1R_VAL_FATURA: TFMTBCDField;
    cds1R_VAL_DESCONTO: TFMTBCDField;
    cds1R_VAL_PAGTO: TFMTBCDField;
    cds1R_DESCR_CATEG: TStringField;
    cds1R_ENDER_LOGRAD_DESCR: TStringField;
    cds1R_ENDER_NUM_LETRA: TStringField;
    cds1R_ENDER_COMPLEM: TStringField;
    cds1R_ENDER_BAIRRO_DESCR: TStringField;
    cds1R_ENDER_DISTRITO_DESCR: TStringField;
    btnDetFatAvulsa: TBitBtn;
    qryUsuarioPermissaoTabela: TSQLQuery;
    qryUsuarioPermissaoTabelaINCLUIR: TStringField;
    qryUsuarioPermissaoTabelaALTERAR: TStringField;
    qryUsuarioPermissaoTabelaEXCLUIR: TStringField;
    qryFatAvulsaItem: TSQLQuery;
    qryFatAvulsaItemANO_MES: TStringField;
    qryFatAvulsaItemVAL_TOTAL: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridDbColumn);
    procedure cdsEventoFixoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnOkClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure cds1AfterOpen(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnDetFatAvulsaClick(Sender: TObject);
  private
    { Private declarations }
    pv_sColIndex: string;
    procedure SetColGrid(iCol: Integer);
    procedure AtualizaTotal;
    procedure HabilitaBotoes(lOpcao: Boolean);
    procedure OpenTabPagtos;
    procedure PermissoesUsuario(iIdUsuario: integer; sNomeTab: String);
  public
    { Public declarations }
  end;

var
  frmLanctoPagto: TfrmLanctoPagto;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AddEditLanPagto, DetalhaFatura, CalcFaturaAvulsa;

{$R *.dfm}

procedure TfrmLanctoPagto.btnAddClick(Sender: TObject);
Var
  iAddEdit: Integer;
  bkmReg: TBookmark;
  iRef : Integer;
begin
   if TButton(Sender).Tag = 1 then
   begin
      frmAddEditLanPagto.pb_sDtPagto := edDtPagto.Text;
      frmAddEditLanPagto.pb_iIdLocal := StrToInt(Trim(frmeLocalPagto1.edId.Text));
      iAddEdit := frmAddEditLanPagto.Executa(Self.Name,0,0,1,True);
      if iAddEdit > 0 then
         OpenTabPagtos;
      cds1.Last;
   end else
   begin
      if cds1.RecordCount = 0 then exit;
      bkmReg := cds1.GetBookmark;
      frmAddEditLanPagto.pb_sTipoFatura := cds1R_TIPO_FATURA.Value;
      if cds1R_TIPO_FATURA.Value = '1' then
         iRef := cds1R_REFERENCIA.AsInteger
      else
         iRef := StrToInt(RightStr(Trim(cds1R_REFERENCIA.Value),8));
      iAddEdit := frmAddEditLanPagto.Executa(Self.Name,
         cds1R_ID_UNID_CONSUM.Value,iRef,1,False);
      if iAddEdit > 0 then
      begin
         OpenTabPagtos;
         cds1.GotoBookmark(bkmReg);
         cds1.FreeBookmark(bkmReg);
      end;
   end;
end;

procedure TfrmLanctoPagto.btnDelClick(Sender: TObject);
Var
  sTextSqlDel: string;
  iErro: Integer;
begin
  if not Confirma('Deseja realmente EXCLUIR essa Movimento ?') then exit;

  iErro := 0;

  if cds1R_TIPO_FATURA.Value = '2' then
  begin
     qryFatAvulsaItem.Close;
     qryFatAvulsaItem.Params[0].Value := StrToInt(RightStr(cds1R_REFERENCIA.Value,8));
     qryFatAvulsaItem.Open;
     while not qryFatAvulsaItem.eof do
     begin
        sTextSqlDel := 'DELETE FROM LANCTO_PAGTO WHERE '+
           '(TIPO_FATURA = '+QuotedStr('1')+') AND '+
           '(REFERENCIA = '+QuotedStr(RightStr(qryFatAvulsaItemANO_MES.Value,4)+
               LeftStr(qryFatAvulsaItemANO_MES.Value,2))+') AND '+
           '(ID_UNID_CONSUM = '+cds1R_ID_UNID_CONSUM.AsString+')';
        try
          dmPrincipal.SConPrincipal.ExecuteDirect(sTextSqlDel);
        except
          iErro := 1;
        end;
        if iErro = 1 then break;
        qryFatAvulsaItem.Next;
     end;
     qryFatAvulsaItem.Close;
  end;

  if iErro = 0 then
  begin
    sTextSqlDel := 'DELETE FROM LANCTO_PAGTO WHERE '+
       '(TIPO_FATURA = '+QuotedStr(cds1R_TIPO_FATURA.Value)+') AND '+
       '(REFERENCIA = '+QuotedStr(cds1R_REFERENCIA.AsString)+') AND '+
       '(ID_UNID_CONSUM = '+cds1R_ID_UNID_CONSUM.AsString+')';
    try
       dmPrincipal.SConPrincipal.ExecuteDirect(sTextSqlDel);
       cds1.Delete;
       AtualizaTotal;
       Mensagem('LANÇAMENTO EXCLUÍDO COM SUCESSO ...','AVISO !!!',
         MB_OK+MB_ICONINFORMATION);
    except
       Mensagem('NÃO FOI POSSÍVEL EXCLUIR ESTE LANÇAMENTO ...','ERRO !!!',
          MB_OK+MB_ICONERROR);
    end;
  end else
  begin
    Mensagem('NÃO FOI POSSÍVEL EXCLUIR ÍTEM DA FATURA AVULSA: '+cds1R_REFERENCIA.AsString+' ...',
       'ERRO !!!',MB_OK+MB_ICONERROR);
  end;

end;

procedure TfrmLanctoPagto.btnDetFatAvulsaClick(Sender: TObject);
begin
  if cds1R_TIPO_FATURA.Value = '1' then
  begin
    frmDetalhaFatura := TfrmDetalhaFatura.Create(Self);
    frmDetalhaFatura.pb_iIdUnidConsum := cds1R_ID_UNID_CONSUM.Value;
    frmDetalhaFatura.pb_sAnoMes       := Trim(cds1R_REFERENCIA.Value);
    frmDetalhaFatura.ShowModal;
    FreeAndNil(frmDetalhaFatura);
  end else
  begin
    frmCalcFaturaAvulsa := TfrmCalcFaturaAvulsa.Create(Self);
    frmCalcFaturaAvulsa.pb_iIdFatura := StrToInt(RightStr(Trim(cds1R_REFERENCIA.Value),8));
    frmCalcFaturaAvulsa.ShowModal;
    FreeAndNil(frmCalcFaturaAvulsa);
  end;

end;

procedure TfrmLanctoPagto.btnLimparClick(Sender: TObject);
begin
   cds1.Close;
   HabilitaBotoes(True);
   lblQtdLancto.Caption := '0';
   lblTotPagto.Caption := '0,00';
   edDtPagto.SetFocus;
end;

procedure TfrmLanctoPagto.btnOkClick(Sender: TObject);
begin

   OpenTabPagtos;

   HabilitaBotoes(False);
   SetColGrid(1);
   dbg1.SetFocus;

end;

procedure TfrmLanctoPagto.cds1AfterOpen(DataSet: TDataSet);
begin
   AtualizaTotal;
end;

procedure TfrmLanctoPagto.cdsEventoFixoAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
   dmPrincipal.GeraLog(cds1,'3','LANCTO_PAGTO',Self.Name,'');
end;

procedure TfrmLanctoPagto.GridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridDbColumn);
begin
   SetColGrid(AColumn.Index);
   pv_sColIndex := AColumn.DataBinding.FieldName;
end;

procedure TfrmLanctoPagto.edPesquisaPropertiesChange(Sender: TObject);
begin
   if cds1.RecordCount = 0 then exit;
   PesquisaIncremental(TcxTextEdit(Sender).Text,ds1,pv_sColIndex);
end;

procedure TfrmLanctoPagto.FormCreate(Sender: TObject);
begin
  inherited;
  frmAddEditLanPagto := TfrmAddEditLanPagto.Create(Self);
end;

procedure TfrmLanctoPagto.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditLanPagto);
end;

procedure TfrmLanctoPagto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  iConta,
  iConta2,
  iQtdCols: Integer;
begin
  inherited;
  if Key = VK_F3 then
  begin
     if edPesquisa.Enabled then
        edPesquisa.SetFocus;
  end else
  if (Key = VK_F4) AND (edPesquisa.Enabled) then
  begin
     iConta  := 0;
     iQtdCols:= GridDBTableView1.ColumnCount - 1;
     while True do
     begin
        if iConta > iQtdCols then iConta := 0;
        if GridDBTableView1.Columns[iConta].SortOrder <> soNone then
        begin
           GridDBTableView1.Columns[iConta].SortOrder := soNone;
           iConta2 := iConta+1;
           while true do
           begin
              if iConta2 > iQtdCols then iConta2 := 0;
              if GridDBTableView1.Columns[iConta2].Tag = 1 then
              begin
                 GridDBTableView1.Columns[iConta2].SortOrder := soAscending;
                 SetColGrid(iConta2);
                 exit;
              end;
              Inc(iConta2);
           end;
        end;
        Inc(iConta);
     end;
  end;
end;

procedure TfrmLanctoPagto.FormShow(Sender: TObject);
begin
  inherited;
  Caption := 'LANÇAMENTOS DE PAGTOS (BAIXAS) DE FATURAS ...';

  PermissoesUsuario(glb_iIdOperLogado,'LANCTO_PAGTO');

  HabilitaBotoes(True);
  edDtPagto.SetFocus;
end;

procedure TfrmLanctoPagto.Novo1Click(Sender: TObject);
begin
  if TMenuItem(Sender).Tag = 1 then
     btnAdd.Click
  else
     btnEdit.Click;
end;

Procedure TfrmLanctoPagto.SetColGrid(iCol: Integer);
Var
   iConta: Integer;
begin
   //pb_iUltCol := iCol;
   edPesquisa.Enabled := GridDBTableView1.Columns[iCol].Tag = 1;
   cds1.IndexFieldNames := GridDBTableView1.
      Columns[iCol].DataBinding.FieldName;
   for iConta := 0 to GridDBTableView1.ColumnCount - 1  do
       GridDBTableView1.Columns[iConta].Styles.Header := nil;
   GridDBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
end;

Procedure TfrmLanctoPagto.AtualizaTotal;
Var
   crTotTemp: Currency;
   bkmReg: TBookmark;
begin
   crTotTemp := 0;
   bkmReg := cds1.GetBookmark;
   cds1.DisableControls;
   cds1.First;
   while not cds1.eof do
   begin
      crTotTemp := crTotTemp + cds1R_VAL_PAGTO.AsCurrency;
      cds1.Next;
   end;
   cds1.EnableControls;
   cds1.First;
   lblTotPagto.Caption := FormatCurr(',0.00',crTotTemp);
   lblQtdLancto.Caption := FormatCurr(',0',cds1.RecordCount);
   Application.ProcessMessages;
   cds1.GotoBookmark(bkmReg);
   cds1.FreeBookmark(bkmReg);
end;

Procedure TfrmLanctoPagto.HabilitaBotoes(lOpcao: Boolean);
begin
   edDtPagto.Enabled := lOpcao;
   frmeLocalPagto1.Enabled := lOpcao;
   btnOk.Enabled := lOpcao;
   btnAdd.Enabled := not lOpcao;
   btnEdit.Enabled := not lOpcao;
   btnDel.Enabled := not lOpcao;
   btnLimpar.Enabled := not lOpcao;
   edPesquisa.Enabled := not lOpcao;
   btnDetFatAvulsa.Enabled := not lOpcao;

   if lOpcao = True then
      UsuarioPermissaoTabela(glb_iIdOperLogado,'LANCTO_PAGTO');

end;

Procedure TfrmLanctoPagto.OpenTabPagtos;
begin
   screen.cursor := crHourGlass;
   cds1.close;
   qry1.ParamByName('pDtIni').Value := StrToDate(edDtPagto.Text);
   qry1.ParamByName('pDtFim').Value := StrToDate(edDtPagto.Text);
   qry1.ParamByName('pLocal').AsString := ';'+Trim(frmeLocalPagto1.edId.Text)+';';
   cds1.Open;
   screen.cursor := crDefault;
end;


procedure TfrmLanctoPagto.PermissoesUsuario(iIdUsuario: integer; sNomeTab: String);
begin

  qryUsuarioPermissaoTabela.Close;
  qryUsuarioPermissaoTabela.ParamByName('pIdUsuario').Value:= iIdUsuario;
  qryUsuarioPermissaoTabela.ParamByName('pNomeTab').Value  := sNomeTab;
  qryUsuarioPermissaoTabela.Open;
  btnAdd.Enabled   := (qryUsuarioPermissaoTabelaINCLUIR.Value='S');
  btnEdit.Enabled:= (qryUsuarioPermissaoTabelaALTERAR.Value='S');
  btnDel.Enabled:= (qryUsuarioPermissaoTabelaEXCLUIR.Value='S');
  qryUsuarioPermissaoTabela.Close;

end;

end.
