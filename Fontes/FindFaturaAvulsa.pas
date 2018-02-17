unit FindFaturaAvulsa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FMTBcd, SqlExpr, DBClient, Provider, cxCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, fmePeriodoAdminData, cxMaskEdit,
  cxDropDownEdit, fmePeriodoDatas, dxCore, dxSkinBlack, dxSkinBlue,
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
  TfrmFindFaturaAvulsa = class(TfrmPadrao1)
    provFatAvulsa: TDataSetProvider;
    cdsFatAvulsa: TClientDataSet;
    dsFatAvulsa: TDataSource;
    qryFatAvulsa: TSQLQuery;
    cxGroupBox1: TcxGroupBox;
    btnOk1: TBitBtn;
    GridTable1: TcxGrid;
    GridTable1DBTableView1: TcxGridDBTableView;
    GridTable1DBTableView1Column7: TcxGridDBColumn;
    GridTable1DBTableView1Column8: TcxGridDBColumn;
    GridTable1DBTableView1Column1: TcxGridDBColumn;
    GridTable1DBTableView1Column3: TcxGridDBColumn;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    GridTable1DBTableView1Column6: TcxGridDBColumn;
    GridTable1DBTableView1Column2: TcxGridDBColumn;
    GridTable1DBTableView1Column5: TcxGridDBColumn;
    GridTable1Level1: TcxGridLevel;
    Panel1: TPanel;
    sbPos1: TSpeedButton;
    cxLabel61: TcxLabel;
    btnFechar: TBitBtn;
    btnLimpar: TButton;
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    frmePeriodoDt1: TfrmePeriodoDt;
    cxLabel1: TcxLabel;
    cbSituacao: TcxComboBox;
    cdsFatAvulsaID: TIntegerField;
    cdsFatAvulsaID_UNID_CONSUM: TIntegerField;
    cdsFatAvulsaDT_EMISSAO: TDateField;
    cdsFatAvulsaDT_VENCIMENTO: TDateField;
    cdsFatAvulsaSITUACAO: TStringField;
    cdsFatAvulsaDESCR_SITUACAO: TStringField;
    cdsFatAvulsaDT_PAGAMENTO: TDateField;
    cdsFatAvulsaVALOR_TOTAL: TFMTBCDField;
    cdsFatAvulsaNOME_PESSOA: TStringField;
    cdsFatAvulsaDESCR_TIPO_PESSOA: TStringField;
    cdsFatAvulsaCPF_CNPJ_FTDO: TStringField;
    cdsFatAvulsaDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsFatAvulsaDESCR_SITUAC_UNID_CONSUM: TStringField;
    cdsFatAvulsaENDER_ID_LOGRAD: TIntegerField;
    cdsFatAvulsaENDER_DESCR_LOGRADOURO: TStringField;
    cdsFatAvulsaENDER_NUM_LETRA: TStringField;
    cdsFatAvulsaENDER_ID_BAIRRO: TIntegerField;
    cdsFatAvulsaENDER_DESCR_BAIRRO: TStringField;
    cdsFatAvulsaENDER_ID_DISTRITO: TIntegerField;
    cdsFatAvulsaENDER_DESCR_DISTRITO: TStringField;
    GridTable1DBTableView1Column9: TcxGridDBColumn;
    lblQtd: TcxLabel;
    Label1: TLabel;
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnOk1Click(Sender: TObject);
    procedure sbPos1Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chkFiltraUnidConsumClick(Sender: TObject);
    procedure GridTable1DBTableView1DblClick(Sender: TObject);
    procedure cbSituacaoPropertiesChange(Sender: TObject);
  private
    pv_sColIndex: string;
    procedure SetColGrid(iCol: Integer);
    procedure ListaFatura(iServidIni, iServidFim: Integer);
    { Private declarations }
  public
    { Public declarations }
    pb_oCdsFatura: TClientDataSet;
    procedure Executa(oCdsFatura: TClientDataSet);
  end;

var
  frmFindFaturaAvulsa: TfrmFindFaturaAvulsa;

implementation

uses gsLib, UtilsDb, udmPrincipal;

{$R *.dfm}

procedure TfrmFindFaturaAvulsa.Executa(oCdsFatura: TClientDataSet);
begin
   pb_oCdsFatura:= oCdsFatura;
   ShowModal;
end;

procedure TfrmFindFaturaAvulsa.btnLimparClick(Sender: TObject);
begin
  cdsFatAvulsa.Close;
  frmePeriodoDt1.edDtIni.Text := '';
  frmePeriodoDt1.edDtFim.Text := '';
  frmePeriodoDt1.edDtIni.SetFocus;
end;

procedure TfrmFindFaturaAvulsa.btnOk1Click(Sender: TObject);
begin

  ListaFatura(1,9999999);
  GridTable1.SetFocus;

end;

procedure TfrmFindFaturaAvulsa.cbSituacaoPropertiesChange(Sender: TObject);
begin
  ListaFatura(0,0);
end;

procedure TfrmFindFaturaAvulsa.chkFiltraUnidConsumClick(Sender: TObject);
begin
{
   if chkFiltraServidor.Tag = 0 then
   begin
      ListaFatura(cdsListaFaturaID_SERVIDOR.Value,
         cdsListaFaturaID_SERVIDOR.Value);
      GridTable1DBTableView1Column4.Caption := 'Destino';
      GridTable1DBTableView1Column4.DataBinding.FieldName := 'DESTINO';
      lblServidor.Caption := cdsListaFaturaNOME_SERVIDOR.Value;
      chkFiltraServidor.Caption := 'Listar todas as Portarias do Período ...';
      chkFiltraServidor.Tag := 1;
   end else
   begin
      ListaFatura(1,9999999);
      GridTable1DBTableView1Column4.Caption := 'Nome do Servidor';
      GridTable1DBTableView1Column4.DataBinding.FieldName := 'NOME_SERVIDOR';
      lblServidor.Caption := 'Todos os Servidores ...';
      chkFiltraServidor.Caption := 'Listar somente as Portarias do Servidor atual ...';
      chkFiltraServidor.Tag := 0;
   end;
}
end;

procedure TfrmFindFaturaAvulsa.edPesquisaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Shift <> [] then exit;
  NavegaClient(Key,GridTable1DBTableView1);
end;

procedure TfrmFindFaturaAvulsa.edPesquisaPropertiesChange(Sender: TObject);
begin
   if not TcxTextEdit(Sender).Enabled then exit;
   PesquisaIncremental(TcxTextEdit(Sender).Text,dsFatAvulsa,pv_sColIndex);
end;

procedure TfrmFindFaturaAvulsa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsFatAvulsa.Close;
end;

procedure TfrmFindFaturaAvulsa.FormCreate(Sender: TObject);
begin
  inherited;
  cdsFatAvulsa.Close;
  GridTable1DBTableView1ColumnHeaderClick(GridTable1DBTableView1,
     GridTable1DBTableView1.Columns[0]);
end;

procedure TfrmFindFaturaAvulsa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  iConta,
  iConta2,
  iQtdCols: Integer;
begin
  if (Shift = []) and (Key = VK_F3)  then
  begin
     if edPesquisa.Enabled then
        edPesquisa.SetFocus;
  end else
  if key = VK_F4 then
  begin
     iConta  := 0;
     iQtdCols:= GridTable1DBTableView1.ColumnCount - 1;
     while True do
     begin
        if iConta > iQtdCols then iConta := 0;
        if GridTable1DBTableView1.Columns[iConta].SortOrder <> soNone then
        begin
           GridTable1DBTableView1.Columns[iConta].SortOrder := soNone;
           GridTable1DBTableView1.Columns[iConta].Styles.Header := Nil;
           iConta2 := iConta+1;
           while true do
           begin
              if iConta2 > iQtdCols then iConta2 := 0;
              if GridTable1DBTableView1.Columns[iConta2].Tag = 1 then
              begin
                 GridTable1DBTableView1.Columns[iConta2].SortOrder := soAscending;
                 GridTable1DBTableView1.Columns[iConta2].Styles.Header := dmPrincipal.cxStyle20;
                 SetColGrid(iConta2);
                 exit;
              end;
              Inc(iConta2);
           end;
        end;
        Inc(iConta);
     end;
  end else
     inherited;
end;

procedure TfrmFindFaturaAvulsa.FormShow(Sender: TObject);
begin
  inherited;
  lblQtd.Caption := '0 lançamento';
  frmePeriodoDt1.edDtIni.SetFocus;
end;

procedure TfrmFindFaturaAvulsa.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
Var
   iConta: Integer;
begin
   SetColGrid(AColumn.Index);
   for iConta := 0 to TcxGridTableView(Sender).ColumnCount - 1  do
       TcxGridTableView(Sender).Columns[iConta].Styles.Header := nil;

   AColumn.Styles.Header := dmPrincipal.cxStyle20;

   pv_sColIndex := GridTable1DBTableView1.Columns[AColumn.Index].DataBinding.FieldName;

end;

procedure TfrmFindFaturaAvulsa.GridTable1DBTableView1DblClick(
  Sender: TObject);
begin
   sbPos1.Click;
end;

procedure TfrmFindFaturaAvulsa.sbPos1Click(Sender: TObject);
begin
   pb_oCdsFatura.FindKey([cdsFatAvulsaID.Value]);
end;

Procedure TfrmFindFaturaAvulsa.SetColGrid(iCol: Integer);
begin
   lblTitColPesquisa.Enabled:= GridTable1DBTableView1.Columns[iCol].Tag=1;
   edPesquisa.Enabled       := lblTitColPesquisa.Enabled;
   cdsFatAvulsa.IndexFieldNames :=
      GridTable1DBTableView1.Columns[iCol].DataBinding.FieldName;
end;

Procedure TfrmFindFaturaAvulsa.ListaFatura(iServidIni,iServidFim: Integer);
begin
  Screen.Cursor := crHourGlass;
  cdsFatAvulsa.Close;
  qryFatAvulsa.ParamByName('pDtIni').Value :=
     frmePeriodoDt1.edDtIni.Text;
  qryFatAvulsa.ParamByName('pDtFim').Value :=
     frmePeriodoDt1.edDtFim.Text;
  qryFatAvulsa.ParamByName('pSituacIni').Value := '1';
  qryFatAvulsa.ParamByName('pSituacFim').Value := '9';
  if cbSituacao.ItemIndex > 0 then
  begin
     qryFatAvulsa.ParamByName('pSituacIni').Value := IntToStr(cbSituacao.ItemIndex);
     qryFatAvulsa.ParamByName('pSituacFim').Value := IntToStr(cbSituacao.ItemIndex);
  end;
  cdsFatAvulsa.Open;

  lblQtd.Caption := FormatCurr(',0',cdsFatAvulsa.RecordCount)+' lançamentos';

  cdsFatAvulsa.First;

  Screen.Cursor := crDefault;

end;

end.
