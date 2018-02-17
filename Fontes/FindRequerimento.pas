unit FindRequerimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, StdCtrls, Buttons, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, ExtCtrls,
  dxGDIPlusClasses, Grids,
  DBGrids, fmeLogradouro, cxLabel, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  fmePeriodoDatas, dxCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TfrmFindRequerimento = class(TfrmPadrao1)
    Panel1: TPanel;
    chbOcultInativo: TcxCheckBox;
    edPesquisa: TcxTextEdit;
    Label1: TLabel;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    Image1: TImage;
    qryRequerimento: TSQLQuery;
    provRequerimento: TDataSetProvider;
    cdsRequerimento: TClientDataSet;
    dsRequerimento: TDataSource;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    btnExecPesquisa: TBitBtn;
    btnLimpar: TBitBtn;
    GridTable1: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column6: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTable1Level1: TcxGridLevel;
    frmePeriodoDt1: TfrmePeriodoDt;
    cxLabel2: TcxLabel;
    cbSituacao: TcxComboBox;
    cdsRequerimentoID: TIntegerField;
    cdsRequerimentoDATA_REQUER: TDateField;
    cdsRequerimentoID_PESSOA: TIntegerField;
    cdsRequerimentoID_SERVICO: TIntegerField;
    cdsRequerimentoID_UNID_CONSUM: TIntegerField;
    cdsRequerimentoNUM_PROTOCOLO: TStringField;
    cdsRequerimentoNUM_LIVRO: TStringField;
    cdsRequerimentoDATA_PROTOCOL: TDateField;
    cdsRequerimentoDATA_DESPACHO: TDateField;
    cdsRequerimentoSITUACAO: TStringField;
    cdsRequerimentoSERVID_RESPONSAV: TStringField;
    cdsRequerimentoOBSERVACAO: TStringField;
    cdsRequerimentoDESCR_SERVICO: TStringField;
    cdsRequerimentoNOME_PESSOA: TStringField;
    cdsRequerimentoENDER_ID_LOGRAD: TIntegerField;
    cdsRequerimentoENDER_NUM_LETRA: TStringField;
    cdsRequerimentoENDER_ID_BAIRRO: TIntegerField;
    cdsRequerimentoENDER_ID_DISTRITO: TIntegerField;
    cdsRequerimentoENDER_DESCR_LOGRAD: TStringField;
    cdsRequerimentoENDER_DESCR_BAIRRO: TStringField;
    cdsRequerimentoENDER_DESCR_DISTRITO: TStringField;
    cdsRequerimentoENDER_COMPLEMENTO: TStringField;
    cdsRequerimentoCPF_CNPJ: TStringField;
    cdsRequerimentoDESCR_SITUACAO: TStringField;
    procedure GridTableDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTableDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure chbOcultInativoClick(Sender: TObject);
    procedure cdsUnidConsumBeforeOpen(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cbOpcaoPesqPropertiesChange(Sender: TObject);
    procedure btnExecPesquisaClick(Sender: TObject);
    procedure cbOpcaoPesqPropertiesCloseUp(Sender: TObject);
    procedure cbOpcaoPesqPropertiesPopup(Sender: TObject);
    procedure frmeLogradouro1sb1Click(Sender: TObject);
    procedure frmeLogradouro1edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnLimparClick(Sender: TObject);
    procedure GridTableDBTableView2ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure cdsRequerimentoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cbSituacaoPropertiesChange(Sender: TObject);
  private
    pv_sColIndex: string;
    Procedure SetColGrid(iCol: integer);
    procedure OpenUnidConsum;
    procedure HabilitaBotoes(lOpcao: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFindRequerimento: TfrmFindRequerimento;

implementation

uses VarGlobais, UtilsDb, gsLib, udmPrincipal;

{$R *.dfm}

procedure TfrmFindRequerimento.btnExecPesquisaClick(Sender: TObject);
begin

  cdsRequerimento.Close;
  qryRequerimento.ParamByName('pDtIni').Value := StrToDate(frmePeriodoDt1.edDtIni.Text);
  qryRequerimento.ParamByName('pDtFim').Value := StrToDate(frmePeriodoDt1.edDtFim.Text);
  cdsRequerimento.Open;
  cbOpcaoPesqPropertiesChange(cbSituacao);

  HabilitaBotoes(False);
  GridTableDBTableView1ColumnHeaderClick(GridTableDBTableView1,GridTableDBTableView1Column2);
  GridTableDBTableView1Column2.SortOrder := soAscending;
  GridTable1.SetFocus;

end;

procedure TfrmFindRequerimento.btnLimparClick(Sender: TObject);
begin
   HabilitaBotoes(True);
   cdsRequerimento.Close;
   frmePeriodoDt1.edDtIni.SetFocus;
end;

procedure TfrmFindRequerimento.btnOkClick(Sender: TObject);
begin
   glb_sCodigo := cdsRequerimentoID.AsString;
end;

procedure TfrmFindRequerimento.cbOpcaoPesqPropertiesChange(Sender: TObject);
begin
{
   frmeLogradouro1.Enabled := (cbOpcaoPesq.ItemIndex = 4);
   edPesquisa1.Enabled := not frmeLogradouro1.Enabled;
   }
end;

procedure TfrmFindRequerimento.cbOpcaoPesqPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmFindRequerimento.cbOpcaoPesqPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmFindRequerimento.cbSituacaoPropertiesChange(Sender: TObject);
begin
  cdsRequerimento.Filtered := False;
  if cbSituacao.ItemIndex > 0 then
  begin
     cdsRequerimento.Filter := 'Situacao = '+QuotedStr(IntToStr(cbSituacao.ItemIndex));
     cdsRequerimento.Filtered := True;
  end;
end;

procedure TfrmFindRequerimento.cdsUnidConsumBeforeOpen(DataSet: TDataSet);
begin
  chbOcultInativo.OnClick(Self);
end;

procedure TfrmFindRequerimento.cdsRequerimentoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
   {
   if cdsUnidConsum.IndexFieldNames = 'CPF_CNPJ_FTDO' then
      Accept :=
        (Pos(Trim(edPesquisa2.Text),cdsUnidConsumCPF_CNPJ.AsString) > 0)
   else
   begin}
    {
      if cbOpcaoPesq.ItemIndex = 4 then
         Accept :=
           (Pos(Trim(edPesquisa2.Text),cdsUnidConsumID.AsString) > 0) or
           (Pos(Trim(edPesquisa2.Text),cdsUnidConsumNOME_PESSOA.AsString) > 0) or
           (Pos(Trim(edPesquisa2.Text),cdsUnidConsumENDER_UC_NUM_LETRA.AsString) > 0) or
           (Pos(Trim(edPesquisa2.Text),cdsUnidConsumDESCR_TIPO_UNID_CONSUM.AsString) > 0)
      else
         Accept :=
           (Pos(Trim(edPesquisa2.Text),cdsUnidConsumID.AsString) > 0) or
           (Pos(Trim(edPesquisa2.Text),cdsUnidConsumNOME_PESSOA.AsString) > 0) or
           (Pos(Trim(edPesquisa2.Text),cdsUnidConsumDESCR_TIPO_UNID_CONSUM.AsString) > 0)

   end;
   }
end;

procedure TfrmFindRequerimento.chbOcultInativoClick(Sender: TObject);
begin
   OpenUnidConsum;
end;

procedure TfrmFindRequerimento.cxTextEdit1PropertiesChange(Sender: TObject);
begin
   PesquisaIncremental(edPesquisa.Text,dsRequerimento,pv_sColIndex);
end;

procedure TfrmFindRequerimento.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift = [] then NavegaClient(Key,GridTableDBTableView1);
end;

procedure TfrmFindRequerimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsRequerimento.Close;
end;

procedure TfrmFindRequerimento.FormCreate(Sender: TObject);
begin
  inherited;
  Position := poMainFormCenter;
  Application.ProcessMessages;
  glb_sTextUltPesquisa := '';
end;

procedure TfrmFindRequerimento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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
  if (Key = VK_F4) AND (not btnExecPesquisa.Enabled) then
  begin
     iConta  := 0;
     {
     if cbOpcaoPesq.ItemIndex = 4 then
     begin
        iQtdCols:= GridTableDBTableView2.ColumnCount - 1;
        while True do
        begin
           if iConta > iQtdCols then iConta := 0;
           if GridTableDBTableView2.Columns[iConta].SortOrder <> soNone then
           begin
              GridTableDBTableView2.Columns[iConta].SortOrder := soNone;
              iConta2 := iConta+1;
              while true do
              begin
                 if iConta2 > iQtdCols then iConta2 := 0;
                 if GridTableDBTableView2.Columns[iConta2].Tag = 1 then
                 begin
                    GridTableDBTableView2.Columns[iConta2].SortOrder := soAscending;
                    SetColGrid(iConta2);
                    exit;
                 end;
                 Inc(iConta2);
              end;
           end;
           Inc(iConta);
        end;
     end else
     begin
        iQtdCols:= GridTableDBTableView1.ColumnCount - 1;
        while True do
        begin
           if iConta > iQtdCols then iConta := 0;
           if GridTableDBTableView1.Columns[iConta].SortOrder <> soNone then
           begin
              GridTableDBTableView1.Columns[iConta].SortOrder := soNone;
              iConta2 := iConta+1;
              while true do
              begin
                 if iConta2 > iQtdCols then iConta2 := 0;
                 if GridTableDBTableView1.Columns[iConta2].Tag = 1 then
                 begin
                    GridTableDBTableView1.Columns[iConta2].SortOrder := soAscending;
                    SetColGrid(iConta2);
                    exit;
                 end;
                 Inc(iConta2);
              end;
           end;
           Inc(iConta);
        end;
     end;
     }
  end;
end;

procedure TfrmFindRequerimento.FormShow(Sender: TObject);
begin
  inherited;
  glb_sCodigo := '';
  HabilitaBotoes(True);
  frmePeriodoDt1.edDtIni.SetFocus;
end;

procedure TfrmFindRequerimento.frmeLogradouro1edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  //frmeLogradouro1.edIdKeyDown(Sender, Key, Shift);
end;

procedure TfrmFindRequerimento.frmeLogradouro1sb1Click(Sender: TObject);
begin
  inherited;
  //frmeLogradouro1.sb1Click(Sender);
end;

procedure TfrmFindRequerimento.GridTableDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnOk.Click;
end;

procedure TfrmFindRequerimento.GridTableDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  if GridTableDBTableView1.Columns[AColumn.Index].Tag = 0 then exit;
  SetColGrid(AColumn.Index);
end;

procedure TfrmFindRequerimento.GridTableDBTableView2ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  //if GridTableDBTableView2.Columns[AColumn.Index].Tag = 0 then exit;
  SetColGrid(AColumn.Index);
end;

Procedure TfrmFindRequerimento.SetColGrid(iCol: integer);
Var
   iConta: Integer;
begin
   edPesquisa.Enabled := GridTableDBTableView1.Columns[iCol].Tag = 1;
   cdsRequerimento.IndexFieldNames := GridTableDBTableView1.Columns[iCol].DataBinding.FieldName;
   for iConta := 0 to GridTableDBTableView1.ColumnCount - 1  do
       GridTableDBTableView1.Columns[iConta].Styles.Header := nil;
   GridTableDBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   pv_sColIndex := GridTableDBTableView1.Columns[iCol].DataBinding.FieldName;
end;


procedure TfrmFindRequerimento.OpenUnidConsum;
Var
  sTextSQL: string;
  sTextPesq: string;
begin
{
  cdsUnidConsum.Close;
  qryUnidConsum.SQL.Clear;
  sTextSQL := 'SELECT '+
    'ID, TIPO_PESSOA, DESCR_TIPO_PESSOA, NOME_PESSOA, CPF_CNPJ, CPF_CNPJ_FTDO, DT_LIGACAO, '+
    'DESCR_forma_calculo, descr_tipo_unid_consum, descr_situacao, '+
    'ender_id_lograd, ender_descr_lograd, ender_uc_num_letra, '+
    'ender_complemento, ender_id_bairro, ender_descr_bairro, '+
    'ender_id_distrito, ender_descr_distrito, '+
    'qtd_torneira, multiplicador, observ_fatura '+
    'FROM unid_consumidora ';
  sTextPesq := '%'+Trim(edPesquisa1.Text)+'%';
  if cbOpcaoPesq.ItemIndex = 0 then
     sTextSQL := sTextSQL + 'WHERE (ID LIKE '+sTextPesq+')'
  else if cbOpcaoPesq.ItemIndex = 1 then
     sTextSQL := sTextSQL + 'WHERE (NOME_PESSOA LIKE '+QuotedStr(sTextPesq)+')'
  else if cbOpcaoPesq.ItemIndex = 2 then
     sTextSQL := sTextSQL + 'WHERE (TIPO_PESSOA='+QuotedStr('F')+') AND (LIKE '+QuotedStr(sTextPesq)
  else if cbOpcaoPesq.ItemIndex = 3 then
     sTextSQL := sTextSQL + 'WHERE (TIPO_PESSOA='+QuotedStr('J')+') AND (LIKE '+QuotedStr(sTextPesq)
  else
     sTextSQL := sTextSQL + 'WHERE ENDER_ID_LOGRAD='+Trim(frmeLogradouro1.edId.Text);
  if chbOcultInativo.Checked then
     sTextSQL := sTextSQL + ' AND (SITUACAO = '+QuotedStr('1')+')';

  qryUnidConsum.SQL.Add(sTextSQL);

  Screen.Cursor := crHourGlass;

  cdsUnidConsum.Open;
  cdsUnidConsum.First;

  Screen.Cursor := crDefault;
}
end;


Procedure TfrmFindRequerimento.HabilitaBotoes(lOpcao: Boolean);
begin
   //cbOpcaoPesq.Enabled := lOpcao;
   //edPesquisa1.Enabled     := lOpcao;
   //frmeLogradouro1.Enabled := lOpcao;
   btnExecPesquisa.Enabled := lOpcao;
   btnLimpar.Enabled := not lOpcao;
   edPesquisa.Enabled := not lOpcao;
   btnOk.Enabled := not lOpcao;
end;

end.
