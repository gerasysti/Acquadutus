unit CadLotacao;

interface

uses
  bsLibrary,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsDefault3, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxStatusBar, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, StdCtrls, cxButtons, dxGDIPlusClasses, ExtCtrls,
  FMTBcd, DBClient, Provider, SqlExpr, cxLookAndFeels;

type
  TfCadLotacao = class(TfbsDefault3)
    sdsLotacao: TSQLDataSet;
    sdsLotacaoID: TIntegerField;
    sdsLotacaoDESCRICAO: TStringField;
    dspLotacao: TDataSetProvider;
    cdsLotacao: TClientDataSet;
    cdsLotacaoID: TIntegerField;
    cdsLotacaoDESCRICAO: TStringField;
    dsLotacao: TDataSource;
    GridTableDBTableView1ID: TcxGridDBColumn;
    GridTableDBTableView1DESCRICAO: TcxGridDBColumn;
    GridTableDBTableView1DESCRICAO_TIPO_LOTACAO: TcxGridDBColumn;
    sdsLotacaoID_TIPO_LOTACAO: TIntegerField;
    sdsLotacaoDESCRICAO_TIPO_LOTACAO: TStringField;
    cdsLotacaoID_TIPO_LOTACAO: TIntegerField;
    cdsLotacaoDESCRICAO_TIPO_LOTACAO: TStringField;
    GridTableDBTableView1ID_TIPO_LOTACAO: TcxGridDBColumn;
    procedure ButtonsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsLotacaoIDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadLotacao: TfCadLotacao;

implementation

uses AddEditLotacao;

{$R *.dfm}

procedure TfCadLotacao.ButtonsClick(Sender: TObject);
begin
  AddEditForm := TfAddEditLotacao.Create(Self);

  inherited;
end;

procedure TfCadLotacao.cdsLotacaoIDGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  Text := FormatId(Sender.AsString, 3);
end;

procedure TfCadLotacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  Action := caFree;
end;

procedure TfCadLotacao.FormCreate(Sender: TObject);
begin
  sdsLotacao.SQLConnection := bsl_scConnection;
  DataSources[0] := dsLotacao;

  inherited;
end;

end.
