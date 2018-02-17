unit BancoConveniado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient,
  SimpleDS, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  StdCtrls, cxButtons, cxContainer, cxTextEdit, cxDBEdit, FolhaFuncs, FMTBcd,
  Provider, SqlExpr, Default;

type
  TfBancoConveniado = class(TfDefault)
    grdTabelaDBTableView1ID: TcxGridDBColumn;
    grdTabelaDBTableView1DESCRICAO: TcxGridDBColumn;
    grdTabelaDBTableView1AGENCIA: TcxGridDBColumn;
    grdTabelaDBTableView1CONTA_EMPRESA: TcxGridDBColumn;
    grdTabelaDBTableView1CONVENIO: TcxGridDBColumn;
    grdTabelaDBTableView1COD_EMPRESA: TcxGridDBColumn;
    DataSetTabelaID: TIntegerField;
    DataSetTabelaDESCRICAO: TStringField;
    DataSetTabelaAGENCIA: TStringField;
    DataSetTabelaCONTA_EMPRESA: TStringField;
    DataSetTabelaCONVENIO: TStringField;
    DataSetTabelaCOD_EMPRESA: TStringField;
    ClientTabelaID: TIntegerField;
    ClientTabelaDESCRICAO: TStringField;
    ClientTabelaAGENCIA: TStringField;
    ClientTabelaCONTA_EMPRESA: TStringField;
    ClientTabelaCONVENIO: TStringField;
    ClientTabelaCOD_EMPRESA: TStringField;
    ClientLogTabelaID: TIntegerField;
    ClientLogTabelaDESCRICAO: TStringField;
    ClientLogTabelaAGENCIA: TStringField;
    ClientLogTabelaCONTA_EMPRESA: TStringField;
    ClientLogTabelaCONVENIO: TStringField;
    ClientLogTabelaCOD_EMPRESA: TStringField;
    ClientLogTabelaID_SESSAO: TIntegerField;
    ClientLogTabelaOPERACAO: TIntegerField;
    ClientLogTabelaDATA_HORA_OPERACAO: TSQLTimeStampField;
    DataSetLogTabelaID: TIntegerField;
    DataSetLogTabelaDESCRICAO: TStringField;
    DataSetLogTabelaAGENCIA: TStringField;
    DataSetLogTabelaCONTA_EMPRESA: TStringField;
    DataSetLogTabelaCONVENIO: TStringField;
    DataSetLogTabelaCOD_EMPRESA: TStringField;
    DataSetLogTabelaID_SESSAO: TIntegerField;
    DataSetLogTabelaOPERACAO: TIntegerField;
    DataSetLogTabelaDATA_HORA_OPERACAO: TSQLTimeStampField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBancoConveniado: TfBancoConveniado;

implementation

uses Principal, AddEditBancoConveniado;

{$R *.dfm}

procedure TfBancoConveniado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  fAddEditBancoConveniado.Free;
  FreeAndNil(fBancoConveniado);
end;

procedure TfBancoConveniado.FormShow(Sender: TObject);
begin
  fAddEditBancoConveniado := TfAddEditBancoConveniado.Create(Self);
  fAddEdit := fAddEditBancoConveniado;

  Self.Generator := '';
  Self.AliasTable := 'B';
  Self.Table := 'BANCO_CONVENIADO';
  Self.Sql := 'select B.* from BANCO_CONVENIADO B where B.ID <> -1';
  Self.LogSql := 'select B.* from BANCO_CONVENIADO B where B.ID<>-1';

  inherited;
end;

end.
