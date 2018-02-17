unit CadTb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxContainer, FMTBcd, DBClient, Provider, SqlExpr,
  dxGDIPlusClasses, ExtCtrls, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, StdCtrls, cxButtons, cxClasses;

type
  TfrmCadTabPadrao = class(TfrmPadrao1)
    pButtons: TPanel;
    btnNovo: TcxButton;
    btnAlterar: TcxButton;
    btnExcluir: TcxButton;
    btnFechar: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    btnPesquisar: TcxButton;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableLevel1: TcxGridLevel;
    edPesquisa: TcxTextEdit;
    ImageSeach: TImage;
    sds1: TSQLDataSet;
    sds1ID: TIntegerField;
    sds1DESCRICAO: TStringField;
    sds1DESCR_NO_C_CHEQUE: TStringField;
    sds1CNPJ: TStringField;
    sds1COD_CONTABIL: TStringField;
    sds1ID_TIPO_UNID_GESTORA: TIntegerField;
    sds1DESCR_TIPO_UNID_GESTORA: TStringField;
    sds1COD_ORGAO_NO_TCM: TIntegerField;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1DESCR_NO_C_CHEQUE: TStringField;
    cds1CNPJ: TStringField;
    cds1COD_CONTABIL: TStringField;
    cds1ID_TIPO_UNID_GESTORA: TIntegerField;
    cds1DESCR_TIPO_UNID_GESTORA: TStringField;
    cds1COD_ORGAO_NO_TCM: TIntegerField;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTabPadrao: TfrmCadTabPadrao;

implementation

{$R *.dfm}

end.
