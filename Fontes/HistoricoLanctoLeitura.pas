unit HistoricoLanctoLeitura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  DBClient, Provider, SqlExpr, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, ExtCtrls, cxContainer, Buttons, cxTextEdit, cxMaskEdit,
  cxLabel, fmeUnidConsumidora, cxCurrencyEdit, DBCtrls, cxGroupBox;

type
  TfrmHistLanctoLeitura = class(TfrmPadrao1)
    Panel1: TPanel;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    qryHistLeitura: TSQLQuery;
    provHistLeitura: TDataSetProvider;
    cdsHistLeitura: TClientDataSet;
    dsHistLeitura: TDataSource;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    BitBtn5: TBitBtn;
    edTotConsum: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    gbEvento: TcxGroupBox;
    cdsHistLeituraANO_MES: TStringField;
    cdsHistLeituraID_UNID_CONSUM: TIntegerField;
    cdsHistLeituraLEITURA_ANTERIOR: TIntegerField;
    cdsHistLeituraLEITURA_ATUAL: TIntegerField;
    cdsHistLeituraCONSUMO_M3: TLargeintField;
    cdsHistLeituraDT_LEITURA: TDateField;
    cdsHistLeituraOBSERVACAO: TStringField;
    cdsHistLeituraID_SERVID_LEITURA: TIntegerField;
    cdsHistLeituraNOME_PESSOA: TStringField;
    cdsHistLeituraENDER_ID_LOGRAD: TIntegerField;
    cdsHistLeituraENDER_DESCR_LOGRAD: TStringField;
    cdsHistLeituraENDER_NUM_LETRA: TStringField;
    cdsHistLeituraENDER_COMPLEMENTO: TStringField;
    cdsHistLeituraENDER_ID_BAIRRO: TIntegerField;
    cdsHistLeituraENDER_DESCR_BAIRRO: TStringField;
    cdsHistLeituraENDER_ID_DISTRITO: TIntegerField;
    cdsHistLeituraENDER_DESCR_DISTRITO: TStringField;
    cdsHistLeituraTIPO_PESSOA: TStringField;
    cdsHistLeituraDESCR_TIPO_PESSOA: TStringField;
    cdsHistLeituraCPF_CNPJ_FTDO: TStringField;
    cdsHistLeituraNUM_HIDROMETRO: TStringField;
    cdsHistLeituraMES_ANO_FTDO: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    cdsHistLeituraDESCR_CATEGORIA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_iIdUnidConsum: integer;
  end;

var
  frmHistLanctoLeitura: TfrmHistLanctoLeitura;

implementation

uses udmPrincipal, gsLib;

{$R *.dfm}

procedure TfrmHistLanctoLeitura.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmHistLanctoLeitura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsHistLeitura.Close;
end;

procedure TfrmHistLanctoLeitura.FormShow(Sender: TObject);
begin
  inherited;
  cdsHistLeitura.Close;
  qryHistLeitura.ParamByName('pUC').Value := pb_iIdUnidConsum;
  cdsHistLeitura.Open;
  edTotConsum.Value := 0;
  while not cdsHistLeitura.eof do
  begin
     edTotConsum.Value  := edTotConsum.Value + cdsHistLeituraCONSUMO_M3.AsInteger;
     cdsHistLeitura.Next;
  end;
  GridTable.SetFocus;
end;

end.
