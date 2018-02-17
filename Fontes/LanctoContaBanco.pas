unit LanctoContaBanco;

interface

uses
  bsLibrary,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsDefault3, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxContainer, cxGridTableView, cxTextEdit, dxGDIPlusClasses,
  ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridDBTableView, cxGrid, StdCtrls, cxButtons, FMTBcd, DBClient, Provider,
  SqlExpr, cxMaskEdit, cxButtonEdit, bsSelectButtonEdit;

type
  TfLanctoContaBanco = class(TfbsDefault3)
    sdsContaBanco: TSQLDataSet;
    sdsContaBancoID_PESSOA: TIntegerField;
    sdsContaBancoID: TIntegerField;
    sdsContaBancoID_TIPO_CONTA_BANCO: TIntegerField;
    sdsContaBancoDESCRICAO_TIPO_CONTA_BANCO: TStringField;
    sdsContaBancoID_ENTID_FINANC: TIntegerField;
    sdsContaBancoDESCRICAO_ENTID_FINANC: TStringField;
    sdsContaBancoAGENCIA: TStringField;
    sdsContaBancoNUM_CONTA: TStringField;
    dspContaBanco: TDataSetProvider;
    cdsContaBanco: TClientDataSet;
    cdsContaBancoID_PESSOA: TIntegerField;
    cdsContaBancoID: TIntegerField;
    cdsContaBancoID_TIPO_CONTA_BANCO: TIntegerField;
    cdsContaBancoDESCRICAO_TIPO_CONTA_BANCO: TStringField;
    cdsContaBancoID_ENTID_FINANC: TIntegerField;
    cdsContaBancoDESCRICAO_ENTID_FINANC: TStringField;
    cdsContaBancoAGENCIA: TStringField;
    cdsContaBancoNUM_CONTA: TStringField;
    dsContaBanco: TDataSource;
    sdsContaBancoDESCRICAO_PESSOA: TStringField;
    sdsContaBancoDESCRICAO_SUBU_ORCAMENT: TStringField;
    sdsContaBancoPRINCIPAL: TStringField;
    cdsContaBancoDESCRICAO_PESSOA: TStringField;
    cdsContaBancoDESCRICAO_SUBU_ORCAMENT: TStringField;
    cdsContaBancoPRINCIPAL: TStringField;
    GridTableDBTableView1DESCRICAO_PESSOA: TcxGridDBColumn;
    GridTableDBTableView1DESCRICAO_SUBU_ORCAMENT: TcxGridDBColumn;
    GridTableDBTableView1DESCRICAO_TIPO_CONTA_BANCO: TcxGridDBColumn;
    GridTableDBTableView1AGENCIA: TcxGridDBColumn;
    GridTableDBTableView1NUM_CONTA: TcxGridDBColumn;
    GridTableDBTableView1ID_PESSOA: TcxGridDBColumn;
    sdsContaBancoCPF_PESSOA_FISICA: TStringField;
    cdsContaBancoCPF_PESSOA_FISICA: TStringField;
    GridTableDBTableView1CPF_PESSOA_FISICA: TcxGridDBColumn;
    pFiltro: TPanel;
    Label1: TLabel;
    TextDescricaoBancoConv: TcxTextEdit;
    btnOkFiltro: TcxButton;
    btnLimpar: TcxButton;
    sbeIdEntidFinanc: TbsSelectButtonEdit;
    procedure FormCreate(Sender: TObject);
    procedure ButtonsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbeIdEntidFinancPropertiesEditValueChanged(Sender: TObject);
    procedure btnOkFiltroClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLanctoContaBanco: TfLanctoContaBanco;

implementation

uses AddEditContaBanco;

{$R *.dfm}

procedure TfLanctoContaBanco.btnLimparClick(Sender: TObject);
begin
  cdsContaBanco.Params[0].AsString := '0';
  CloseClient(cdsContaBanco);

  btnNovo.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;

  btnLimpar.Enabled := False;

  btnOkFiltro.Enabled := True;

  sbeIdEntidFinanc.Enabled := True;
  sbeIdEntidFinanc.Clear;
  sbeIdEntidFinanc.SetFocus;

end;

procedure TfLanctoContaBanco.btnOkFiltroClick(Sender: TObject);
begin
  cdsContaBanco.Params[0].AsString := sbeIdEntidFinanc.Text;
  OpenClient(cdsContaBanco, '');

  btnNovo.Enabled   := True;
  btnAlterar.Enabled:= True;
  btnExcluir.Enabled:= True;

  btnLimpar.Enabled   := True;

  btnOkFiltro.Enabled       := False;
  sbeIdEntidFinanc.Enabled:= False;
end;

procedure TfLanctoContaBanco.ButtonsClick(Sender: TObject);
begin
  AddEditForm := TfAddEditContaBanco.Create(Self);
  if TcxButton(Sender).Tag = 2 then
    TfAddEditContaBanco(AddEditForm).cdsContaBancoID_PESSOA.DefaultExpression := cdsContaBancoID_PESSOA.AsString;
  TfAddEditContaBanco(AddEditForm).cdsContaBancoID_ENTID_FINANC.DefaultExpression := sbeIdEntidFinanc.Text;

  inherited;
end;

procedure TfLanctoContaBanco.FormCreate(Sender: TObject);
begin
  inherited;

  sdsContaBanco.SQLConnection := bsl_scConnection;
  DataSources[0] := dsContaBanco;
end;

procedure TfLanctoContaBanco.FormShow(Sender: TObject);
begin
  inherited;

  CloseClient(cdsContaBanco);

  btnNovo.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;

  btnLimpar.Enabled := False;
end;

procedure TfLanctoContaBanco.sbeIdEntidFinancPropertiesEditValueChanged(
  Sender: TObject);
begin
  btnOkFiltro.Enabled := sbeIdEntidFinanc.Text <> '';
end;

end.
