unit TabEntidFinanceira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadTabPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridTableView, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator,
  StdCtrls, cxButtons, ExtCtrls, dxGDIPlusClasses, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCheckBox;

type
  TfrmEntidFinanc = class(TfrmCadTabPadrao)
    GridTableDBTableView1Column1: TcxGridDBColumn;
    qry1ID: TIntegerField;
    qry1NOME: TStringField;
    qry1COD_BANCO: TStringField;
    cds1ID: TIntegerField;
    cds1NOME: TStringField;
    cds1COD_BANCO: TStringField;
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
  frmEntidFinanc: TfrmEntidFinanc;

implementation

uses udmPrincipal, UtilsDb, AddEditEntidFinanc;

{$R *.dfm}

procedure TfrmEntidFinanc.btnNovoClick(Sender: TObject);
Var
   iIdAddEdit: Integer;
begin
  inherited;
  frmAddEditEntidFinanc := TfrmAddEditEntidFinanc.Create(Self);
  if TcxButton(Sender).Tag = 1 then
     iIdAddEdit := frmAddEditEntidFinanc.Executa(Self.Name,0)
  else
     iIdAddEdit := frmAddEditEntidFinanc.Executa(Self.Name,cds1ID.Value);
  if iIdAddEdit <> 0 then
     gsRefreshClient(cds1,'ID',iIdAddEdit);
  FreeAndNil(frmAddEditEntidFinanc);
end;

procedure TfrmEntidFinanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmEntidFinanc.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'ENTID_FINANC';
  pb_sNomeCampoPK  := 'ID';
  pb_sTitJanela1   := 'ENTIDADE FINANCEIRA';
  pb_sTitJanela2   := 'TABELA DE ENTIDADES FINANCEIRAS';
  pb_sConfirmExclui:= 'esta';
end;

procedure TfrmEntidFinanc.Novo1Click(Sender: TObject);
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
