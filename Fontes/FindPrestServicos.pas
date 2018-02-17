unit FindPrestServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, StdCtrls, Buttons, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxCheckBox, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmFindPrestServico = class(TfrmPadrao1)
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableLevel1: TcxGridLevel;
    sdsPrestServico: TSQLDataSet;
    dspPrestServico: TDataSetProvider;
    cdsPrestServico: TClientDataSet;
    dsPrestServico: TDataSource;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    GridTableDBTableView1Column5: TcxGridDBColumn;
    GridTableDBTableView1Column6: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    sdsPrestServicoID: TIntegerField;
    sdsPrestServicoTIPO_PESSOA: TStringField;
    sdsPrestServicoID_PESSOA: TIntegerField;
    sdsPrestServicoTIPO_SERVICO: TStringField;
    sdsPrestServicoID_CBO: TIntegerField;
    sdsPrestServicoFUNCAO: TStringField;
    sdsPrestServicoQTD_DEPEND_IRRF: TIntegerField;
    sdsPrestServicoOBSERVACAO: TMemoField;
    sdsPrestServicoDESCR_TIPO_SERVICO: TStringField;
    sdsPrestServicoNOME: TStringField;
    sdsPrestServicoCPF_CNPJ: TStringField;
    sdsPrestServicoENDER_LOGRAD: TStringField;
    sdsPrestServicoENDER_NUM: TStringField;
    sdsPrestServicoENDER_BAIRRO: TStringField;
    sdsPrestServicoENDER_CIDADE: TStringField;
    sdsPrestServicoENDER_CEP: TStringField;
    sdsPrestServicoENDER_UF: TStringField;
    sdsPrestServicoTELEFONE: TStringField;
    sdsPrestServicoDESCR_CBO: TStringField;
    cdsPrestServicoID: TIntegerField;
    cdsPrestServicoTIPO_PESSOA: TStringField;
    cdsPrestServicoID_PESSOA: TIntegerField;
    cdsPrestServicoTIPO_SERVICO: TStringField;
    cdsPrestServicoID_CBO: TIntegerField;
    cdsPrestServicoFUNCAO: TStringField;
    cdsPrestServicoQTD_DEPEND_IRRF: TIntegerField;
    cdsPrestServicoOBSERVACAO: TMemoField;
    cdsPrestServicoDESCR_TIPO_SERVICO: TStringField;
    cdsPrestServicoNOME: TStringField;
    cdsPrestServicoCPF_CNPJ: TStringField;
    cdsPrestServicoENDER_LOGRAD: TStringField;
    cdsPrestServicoENDER_NUM: TStringField;
    cdsPrestServicoENDER_BAIRRO: TStringField;
    cdsPrestServicoENDER_CIDADE: TStringField;
    cdsPrestServicoENDER_CEP: TStringField;
    cdsPrestServicoENDER_UF: TStringField;
    cdsPrestServicoTELEFONE: TStringField;
    cdsPrestServicoDESCR_CBO: TStringField;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    procedure GridTableDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnOkClick(Sender: TObject);
    procedure cxTextEdit1PropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure SetColGrid(iCol: integer);
    { Private declarations }
  public
    { Public declarations }
    pb_iUltCol: Integer;
  end;

var
  frmFindPrestServico: TfrmFindPrestServico;

implementation

uses VarGlobais, UtilsDb, gsLib, udmPrincipal;

{$R *.dfm}

procedure TfrmFindPrestServico.btnOkClick(Sender: TObject);
begin
   glb_sCodigo := cdsPrestServicoID.AsString;
end;

procedure TfrmFindPrestServico.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  PesquisaIncremental(TcxTextEdit(Sender).Text,cdsPrestServico);
end;

procedure TfrmFindPrestServico.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Shift = [] then NavegaClient(Key,cdsPrestServico);
end;

procedure TfrmFindPrestServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsPrestServico.Close;
end;

procedure TfrmFindPrestServico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F3 then edPesquisa.SetFocus;
end;

procedure TfrmFindPrestServico.FormShow(Sender: TObject);
begin
  inherited;
  pb_iUltCol := 0;
  glb_sCodigo := '';
  cdsPrestServico.Close;
  cdsPrestServico.Open;
  SetColGrid(1);
  edPesquisa.SetFocus;
end;

procedure TfrmFindPrestServico.GridTableDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SetColGrid(AColumn.Index);
end;

Procedure TfrmFindPrestServico.SetColGrid(iCol: integer);
Var
   iConta: Integer;
begin
   pb_iUltCol := iCol;
   edPesquisa.Enabled := GridTableDBTableView1.Columns[iCol].Tag = 1;
   cdsPrestServico.IndexFieldNames := GridTableDBTableView1.
      Columns[iCol].DataBinding.FieldName;
   for iConta := 0 to GridTableDBTableView1.ColumnCount - 1  do
       GridTableDBTableView1.Columns[iConta].Styles.Header := nil;
   GridTableDBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
end;

end.
