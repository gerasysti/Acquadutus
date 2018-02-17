unit FindPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, StdCtrls, Buttons, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, ExtCtrls, dxCore,
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
  TfrmFindPessoa = class(TfrmPadrao1)
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableLevel1: TcxGridLevel;
    provPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    ds1: TDataSource;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column5: TcxGridDBColumn;
    GridTableDBTableView1Column6: TcxGridDBColumn;
    qryPessoa: TSQLQuery;
    Panel1: TPanel;
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    qryPessoaID: TIntegerField;
    qryPessoaNOME_RAZAO_SOCIAL: TStringField;
    qryPessoaTIPO: TStringField;
    qryPessoaNOME_FANTASIA: TStringField;
    qryPessoaCPF_CNPJ: TStringField;
    qryPessoaDESCR_TIPO_PESSOA: TStringField;
    qryPessoaCPF_CNPJ_FTDO: TStringField;
    qryPessoaRG: TStringField;
    cdsPessoaID: TIntegerField;
    cdsPessoaNOME_RAZAO_SOCIAL: TStringField;
    cdsPessoaTIPO: TStringField;
    cdsPessoaNOME_FANTASIA: TStringField;
    cdsPessoaCPF_CNPJ: TStringField;
    cdsPessoaDESCR_TIPO_PESSOA: TStringField;
    cdsPessoaCPF_CNPJ_FTDO: TStringField;
    cdsPessoaRG: TStringField;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    Label1: TLabel;
    btnNovo: TBitBtn;
    procedure GridTableDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnNovoClick(Sender: TObject);
    procedure cdsPessoaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    procedure SetColGrid(iCol: integer);
    { Private declarations }
  public
    { Public declarations }
    pb_iUltCol: integer;
  end;

var
  frmFindPessoa: TfrmFindPessoa;

implementation

uses VarGlobais, UtilsDb, udmPrincipal, AddEditPessoa;

{$R *.dfm}

procedure TfrmFindPessoa.btnNovoClick(Sender: TObject);
Var
  iIdAddEdit: Integer;
begin
  inherited;
  frmAddEditPessoa := TfrmAddEditPessoa.Create(Self);
  iIdAddEdit := frmAddEditPessoa.Executa(Self.Name,0);
  if iIdAddEdit <> 0 then
  begin
     gsRefreshClient(cdsPessoa,'ID',iIdAddEdit);
     SetColGrid(0);
     cdsPessoa.Last;
     btnOk.SetFocus;
  end;
  FreeAndNil(frmAddEditPessoa);
end;

procedure TfrmFindPessoa.btnOkClick(Sender: TObject);
begin
   glb_sCodigo := cdsPessoaID.AsString;
end;

procedure TfrmFindPessoa.cdsPessoaFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
   Accept :=
     (Pos(Trim(edPesquisa.Text),cdsPessoaID.AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cdsPessoaNOME_RAZAO_SOCIAL.AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cdsPessoaNOME_FANTASIA.AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cdsPessoaCPF_CNPJ.AsString) > 0);
end;

procedure TfrmFindPessoa.cxTextEdit1PropertiesChange(Sender: TObject);
begin
   //PesquisaIncremental(TcxTextEdit(Sender).Text,cdsPessoa);
  cdsPessoa.Filtered := False;
  cdsPessoa.Filtered := Trim(edPesquisa.Text) <> '';

end;

procedure TfrmFindPessoa.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  NavegaClient(Key,GridTableDBTableView1)
end;

procedure TfrmFindPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsPessoa.Close;
end;

procedure TfrmFindPessoa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  iConta,
  iConta2,
  iQtdCols: Integer;
begin
  inherited;
  if Key = VK_F3 then
     edPesquisa.SetFocus
  else
  if Key = VK_F4 then
  begin
     iConta  := 0;
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

procedure TfrmFindPessoa.FormShow(Sender: TObject);
begin
  inherited;
  glb_sCodigo := '';
  cdsPessoa.Close;
  cdsPessoa.Open;
  GridTableDBTableView1ColumnHeaderClick(GridTableDBTableView1,GridTableDBTableView1.Columns[2]);
  GridTable.SetFocus;
end;

procedure TfrmFindPessoa.GridTableDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SetColGrid(AColumn.Index);
end;

Procedure TfrmFindPessoa.SetColGrid(iCol: integer);
Var
   iConta: Integer;
begin
   pb_iUltCol := iCol;
   edPesquisa.Enabled := GridTableDBTableView1.Columns[iCol].Tag = 1;
   cdsPessoa.IndexFieldNames := GridTableDBTableView1.
      Columns[iCol].DataBinding.FieldName;
   for iConta := 0 to GridTableDBTableView1.ColumnCount - 1  do
       GridTableDBTableView1.Columns[iConta].Styles.Header := nil;
   GridTableDBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
end;

{
   lblTitColPesquisa.Caption:= 'Pesquisar por '+
      GridTableDBTableView1.Columns[AColumn.Index].Caption+':';
   cdsPessoaFisica.IndexFieldNames := GridTableDBTableView1.Columns[AColumn.Index].DataBinding.FieldName;
end;
}

end.
