unit FindPessoaFisica;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, StdCtrls, Buttons, DBClient, Provider,
  SqlExpr, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmFindPessoaFisica = class(TfrmPadrao1)
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableLevel1: TcxGridLevel;
    sdsPessoaFisica: TSQLDataSet;
    sdsPessoaFisicaID: TIntegerField;
    sdsPessoaFisicaNOME: TStringField;
    sdsPessoaFisicaSEXO: TStringField;
    sdsPessoaFisicaDT_NASCIMENTO: TDateField;
    sdsPessoaFisicaCPF: TStringField;
    sdsPessoaFisicaPIS_PASEP: TStringField;
    sdpPessoaFisica: TDataSetProvider;
    cdsPessoaFisica: TClientDataSet;
    cdsPessoaFisicaID: TIntegerField;
    cdsPessoaFisicaNOME: TStringField;
    cdsPessoaFisicaSEXO: TStringField;
    cdsPessoaFisicaDT_NASCIMENTO: TDateField;
    cdsPessoaFisicaCPF: TStringField;
    cdsPessoaFisicaPIS_PASEP: TStringField;
    ds1: TDataSource;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    GridTableDBTableView1Column5: TcxGridDBColumn;
    GridTableDBTableView1Column6: TcxGridDBColumn;
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
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFindPessoaFisica: TfrmFindPessoaFisica;

implementation

uses VarGlobais, UtilsDb;

{$R *.dfm}

procedure TfrmFindPessoaFisica.btnOkClick(Sender: TObject);
begin
   glb_sCodigo := cdsPessoaFisicaID.AsString;
end;

procedure TfrmFindPessoaFisica.cxTextEdit1PropertiesChange(Sender: TObject);
begin
  PesquisaIncremental(TcxTextEdit(Sender).Text,cdsPessoaFisica);
end;

procedure TfrmFindPessoaFisica.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  NavegaClient(Key,cdsPessoaFisica)
end;

procedure TfrmFindPessoaFisica.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsPessoaFisica.Close;
end;

procedure TfrmFindPessoaFisica.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (key = VK_F3) then
     edPesquisa.SetFocus;
end;

procedure TfrmFindPessoaFisica.FormShow(Sender: TObject);
begin
  inherited;
  glb_sCodigo := '';
  cdsPessoaFisica.Close;
  cdsPessoaFisica.Open;
  GridTableDBTableView1ColumnHeaderClick(GridTableDBTableView1,GridTableDBTableView1.Columns[1]);
  GridTable.SetFocus;
end;

procedure TfrmFindPessoaFisica.GridTableDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   lblTitColPesquisa.Caption:= 'Pesquisar por '+
      GridTableDBTableView1.Columns[AColumn.Index].Caption+':';
   cdsPessoaFisica.IndexFieldNames := GridTableDBTableView1.Columns[AColumn.Index].DataBinding.FieldName;
end;

end.
