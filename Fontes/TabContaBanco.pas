unit TabContaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadTabPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridTableView, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator,
  StdCtrls, cxButtons, ExtCtrls, dxGDIPlusClasses, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmTabContaBanco = class(TfrmCadTabPadrao)
    qry1ID: TIntegerField;
    qry1DESCRICAO: TStringField;
    qry1NUMERO: TStringField;
    qry1AGENCIA: TStringField;
    qry1ID_ENTID_FINANC: TIntegerField;
    qry1DT_SALDO_ANTER: TDateField;
    qry1VAL_SALDO_ANTER: TFMTBCDField;
    qry1TIPO_SALDO_ANTER: TStringField;
    qry1VAL_LIMITE: TFMTBCDField;
    qry1CONTAB_CAIXA: TStringField;
    qry1NOME_ENTID_FINANC: TStringField;
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1NUMERO: TStringField;
    cds1AGENCIA: TStringField;
    cds1ID_ENTID_FINANC: TIntegerField;
    cds1DT_SALDO_ANTER: TDateField;
    cds1VAL_SALDO_ANTER: TFMTBCDField;
    cds1TIPO_SALDO_ANTER: TStringField;
    cds1VAL_LIMITE: TFMTBCDField;
    cds1CONTAB_CAIXA: TStringField;
    cds1NOME_ENTID_FINANC: TStringField;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    GridTableDBTableView1Column5: TcxGridDBColumn;
    GridTableDBTableView1Column6: TcxGridDBColumn;
    GridTableDBTableView1Column9: TcxGridDBColumn;
    qry1DT_ULT_MOVIM: TDateField;
    qry1VAL_SALDO_ATUAL: TFMTBCDField;
    qry1TIPO_SALDO_ATUAL: TStringField;
    cds1DT_ULT_MOVIM: TDateField;
    cds1VAL_SALDO_ATUAL: TFMTBCDField;
    cds1TIPO_SALDO_ATUAL: TStringField;
    GridTableDBTableView1Column10: TcxGridDBColumn;
    GridTableDBTableView1Column11: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Novo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabContaBanco: TfrmTabContaBanco;

implementation

uses udmPrincipal, UtilsDb, AddEditContaBanco;

{$R *.dfm}

procedure TfrmTabContaBanco.btnNovoClick(Sender: TObject);
Var
   iIdAddEdit: Integer;
begin
  inherited;
  frmAddEditContaBanco := TfrmAddEditContaBanco.Create(Self);
  if TcxButton(Sender).Tag = 1 then
     iIdAddEdit := frmAddEditContaBanco.Executa(Self.Name,0)
  else
     iIdAddEdit := frmAddEditContaBanco.Executa(Self.Name,cds1ID.Value);
  if iIdAddEdit <> 0 then
     gsRefreshClient(cds1,'ID',iIdAddEdit);
  FreeAndNil(frmAddEditContaBanco);

end;

procedure TfrmTabContaBanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmTabContaBanco.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'CONTA_BANCO';
  pb_sNomeCampoPK  := 'ID';
  pb_sTitJanela1   := 'CONTA CORRENTE/BANCÁRIA';
  pb_sTitJanela2   := 'TABELA DE CONTAS CORRENTES/BANCÁRIAS';
  pb_sConfirmExclui:= 'esta';
end;

procedure TfrmTabContaBanco.Novo1Click(Sender: TObject);
begin
   if TMenuItem(Sender).Tag = 1 then
      btnNovo.Click
   else if TMenuItem(Sender).Tag = 2 then
      btnAlterar.Click
   else if TMenuItem(Sender).Tag = 3 then
      btnExcluir.Click
   else if TMenuItem(Sender).Tag = 4 then
      btnFechar.Click
end;

end.
