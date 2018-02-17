unit FindUnidConsumidora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, StdCtrls, Buttons, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  ExtCtrls, dxGDIPlusClasses, Grids,
  DBGrids, fmeLogradouro, cxLabel, cxMaskEdit, cxDropDownEdit, cxDBEdit, dxCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinXmas2008Blue, cxNavigator;

type
  TfrmFindUnidConsum = class(TfrmPadrao1)
    Panel1: TPanel;
    chbOcultInativo: TcxCheckBox;
    edPesquisa2: TcxTextEdit;
    Label1: TLabel;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    Image1: TImage;
    qryUnidConsum: TSQLQuery;
    provUnidConsum: TDataSetProvider;
    cdsUnidConsum: TClientDataSet;
    dsUnidConsum: TDataSource;
    cdsUnidConsumID: TIntegerField;
    cdsUnidConsumTIPO_PESSOA: TStringField;
    cdsUnidConsumDESCR_TIPO_PESSOA: TStringField;
    cdsUnidConsumNOME_PESSOA: TStringField;
    cdsUnidConsumCPF_CNPJ_FTDO: TStringField;
    cdsUnidConsumDT_LIGACAO: TDateField;
    cdsUnidConsumDESCR_FORMA_CALCULO: TStringField;
    cdsUnidConsumDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsUnidConsumDESCR_SITUACAO: TStringField;
    cdsUnidConsumENDER_ID_LOGRAD: TIntegerField;
    cdsUnidConsumENDER_DESCR_LOGRAD: TStringField;
    cdsUnidConsumENDER_COMPLEMENTO: TStringField;
    cdsUnidConsumENDER_ID_BAIRRO: TIntegerField;
    cdsUnidConsumENDER_DESCR_BAIRRO: TStringField;
    cdsUnidConsumENDER_ID_DISTRITO: TIntegerField;
    cdsUnidConsumENDER_DESCR_DISTRITO: TStringField;
    cdsUnidConsumQTD_TORNEIRA: TIntegerField;
    cdsUnidConsumMULTIPLICADOR: TIntegerField;
    cdsUnidConsumOBSERV_FATURA: TStringField;
    Notebook1: TNotebook;
    Panel2: TPanel;
    cbOpcaoPesq: TcxComboBox;
    cxLabel1: TcxLabel;
    frmeLogradouro1: TfrmeLogradouro;
    edPesquisa1: TcxTextEdit;
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
    btnExecPesquisa: TBitBtn;
    btnLimpar: TBitBtn;
    GridTable2: TcxGrid;
    GridTableDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBColumn8: TcxGridDBColumn;
    cdsUnidConsumENDER_UC_NUM_LETRA: TStringField;
    cdsUnidConsumCPF_CNPJ: TStringField;
    Label2: TLabel;
    edEnderComplemento: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    procedure GridTableDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesquisa2KeyDown(Sender: TObject; var Key: Word;
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
    procedure cdsUnidConsumFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    Procedure SetColGrid(iCol: integer);
    procedure OpenUnidConsum;
    procedure HabilitaBotoes(lOpcao: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFindUnidConsum: TfrmFindUnidConsum;

implementation

uses VarGlobais, UtilsDb, gsLib, udmPrincipal;

{$R *.dfm}

procedure TfrmFindUnidConsum.btnExecPesquisaClick(Sender: TObject);
begin
  OpenUnidConsum;
  HabilitaBotoes(False);
  if cbOpcaoPesq.ItemIndex = 4 then
  begin
     Notebook1.PageIndex := 1;
     GridTableDBTableView2ColumnHeaderClick(GridTableDBTableView2,cxGridDBColumn8);
     cxGridDBColumn8.SortOrder := soAscending;
     GridTable2.SetFocus;
  end Else
  begin
     Notebook1.PageIndex := 0;
     GridTableDBTableView1ColumnHeaderClick(GridTableDBTableView1,GridTableDBTableView1Column2);
     GridTableDBTableView1Column2.SortOrder := soAscending;
     GridTable1.SetFocus;
  end;
  cdsUnidConsum.First;
end;

procedure TfrmFindUnidConsum.btnLimparClick(Sender: TObject);
begin
   HabilitaBotoes(True);
   cdsUnidConsum.Close;
   cbOpcaoPesqPropertiesChange(cbOpcaoPesq);
   cbOpcaoPesq.SetFocus;
end;

procedure TfrmFindUnidConsum.btnOkClick(Sender: TObject);
begin
   glb_sCodigo := cdsUnidConsumID.AsString;
end;

procedure TfrmFindUnidConsum.cbOpcaoPesqPropertiesChange(Sender: TObject);
begin
   frmeLogradouro1.Enabled := (cbOpcaoPesq.ItemIndex = 4);
   edPesquisa1.Enabled := not frmeLogradouro1.Enabled;
end;

procedure TfrmFindUnidConsum.cbOpcaoPesqPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmFindUnidConsum.cbOpcaoPesqPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmFindUnidConsum.cdsUnidConsumBeforeOpen(DataSet: TDataSet);
begin
  chbOcultInativo.OnClick(Self);
end;

procedure TfrmFindUnidConsum.cdsUnidConsumFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
   if cdsUnidConsum.IndexFieldNames = 'CPF_CNPJ_FTDO' then
      Accept :=
        (Pos(Trim(edPesquisa2.Text),cdsUnidConsumCPF_CNPJ.AsString) > 0)
   else
   begin
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
end;

procedure TfrmFindUnidConsum.chbOcultInativoClick(Sender: TObject);
begin
   if not cdsUnidConsum.Active then exit;
   OpenUnidConsum;
end;

procedure TfrmFindUnidConsum.cxTextEdit1PropertiesChange(Sender: TObject);
//Var
//  sCampoPesq: string;
//  sTextSQL: string;
//  sTextoPesq: String;
begin
  cdsUnidConsum.Filtered := False;
  cdsUnidConsum.Filtered := Trim(edPesquisa2.Text) <> '';
end;

procedure TfrmFindUnidConsum.edPesquisa2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift = [] then NavegaClient(Key,GridTableDBTableView1);
end;

procedure TfrmFindUnidConsum.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsUnidConsum.Close;
end;

procedure TfrmFindUnidConsum.FormCreate(Sender: TObject);
begin
  inherited;
  Position := poMainFormCenter;
  Application.ProcessMessages;
  glb_sTextUltPesquisa := '';
end;

procedure TfrmFindUnidConsum.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  iConta,
  iConta2,
  iQtdCols: Integer;
begin
  inherited;
  if Key = VK_F3 then
  begin
     if edPesquisa2.Enabled then
        edPesquisa2.SetFocus;
  end else
  if (Key = VK_F4) AND (not btnExecPesquisa.Enabled) then
  begin
     iConta  := 0;
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
  end;
end;

procedure TfrmFindUnidConsum.FormShow(Sender: TObject);
begin
  inherited;
  glb_sCodigo := '';
  HabilitaBotoes(True);
  cbOpcaoPesqPropertiesChange(cbOpcaoPesq);
  cbOpcaoPesq.SetFocus;
end;

procedure TfrmFindUnidConsum.frmeLogradouro1edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  frmeLogradouro1.edIdKeyDown(Sender, Key, Shift);
end;

procedure TfrmFindUnidConsum.frmeLogradouro1sb1Click(Sender: TObject);
begin
  inherited;
  frmeLogradouro1.sb1Click(Sender);
end;

procedure TfrmFindUnidConsum.GridTableDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  btnOk.Click;
end;

procedure TfrmFindUnidConsum.GridTableDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  if GridTableDBTableView1.Columns[AColumn.Index].Tag = 0 then exit;
  SetColGrid(AColumn.Index);
end;

procedure TfrmFindUnidConsum.GridTableDBTableView2ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  if GridTableDBTableView2.Columns[AColumn.Index].Tag = 0 then exit;
  SetColGrid(AColumn.Index);
end;

Procedure TfrmFindUnidConsum.SetColGrid(iCol: integer);
Var
   iConta: Integer;
begin
   if cbOpcaoPesq.ItemIndex = 4 then
   begin
      edPesquisa2.Enabled := GridTableDBTableView2.Columns[iCol].Tag = 1;
      cdsUnidConsum.IndexFieldNames := GridTableDBTableView2.Columns[iCol].DataBinding.FieldName;
      for iConta := 0 to GridTableDBTableView2.ColumnCount - 1  do
          GridTableDBTableView2.Columns[iConta].Styles.Header := nil;
      GridTableDBTableView2.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   end else
   begin
      edPesquisa2.Enabled := GridTableDBTableView1.Columns[iCol].Tag = 1;
      cdsUnidConsum.IndexFieldNames := GridTableDBTableView1.Columns[iCol].DataBinding.FieldName;
      for iConta := 0 to GridTableDBTableView1.ColumnCount - 1  do
          GridTableDBTableView1.Columns[iConta].Styles.Header := nil;
      GridTableDBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   end;
end;


procedure TfrmFindUnidConsum.OpenUnidConsum;
Var
  sTextSQL: string;
  sTextPesq: string;
begin

  screen.cursor := crHourGlass;

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
     sTextSQL := sTextSQL + 'WHERE (ID LIKE '+QuotedStr(sTextPesq)+')'
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

  cdsUnidConsum.Open;
  cdsUnidConsum.First;

  Screen.Cursor := crDefault;

end;


Procedure TfrmFindUnidConsum.HabilitaBotoes(lOpcao: Boolean);
begin
   cbOpcaoPesq.Enabled := lOpcao;
   edPesquisa1.Enabled     := lOpcao;
   frmeLogradouro1.Enabled := lOpcao;
   btnExecPesquisa.Enabled := lOpcao;
   btnLimpar.Enabled := not lOpcao;
   edPesquisa2.Enabled := not lOpcao;
   btnOk.Enabled := not lOpcao;
end;

end.
