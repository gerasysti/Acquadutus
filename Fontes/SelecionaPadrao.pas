unit SelecionaPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBClient, SqlExpr, Provider, StdCtrls,
  Buttons, cxGridLevel, cxGridCustomView, cxGrid, cxClasses, cxContainer,
  cxTextEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
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
  TfrmSelecionaPadrao = class(TfrmPadrao1)
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    prov1: TDataSetProvider;
    qry1: TSQLQuery;
    cds1: TClientDataSet;
    DataSource1: TDataSource;
    btnNovo: TBitBtn;
    edPesquisa: TcxTextEdit;
    Label1: TLabel;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column0: TcxGridDBColumn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    procedure btnOkClick(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTable1DBTableView1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cds1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    pv_sFieldRet: string;
    pv_iRetorno : Integer;
    pv_iQtdCols : Integer;
    procedure SetColGrid(iCol: Integer);
  public
    { Public declarations }
    Function Executa(iQtdCols: Integer; sCaption,sFieldRet: String; lPermitirAdd: Boolean): Integer;
  end;

var
  frmSelecionaPadrao: TfrmSelecionaPadrao;

implementation

uses VarGlobais, udmPrincipal, gsLib, UtilsDb;

{$R *.dfm}

procedure TfrmSelecionaPadrao.btnOkClick(Sender: TObject);
begin
   pv_iRetorno := cds1.FieldByName(pv_sFieldRet).Value;
end;

procedure TfrmSelecionaPadrao.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift = [] then NavegaClient(Key,GridTableDBTableView1);
end;

procedure TfrmSelecionaPadrao.edPesquisaPropertiesChange(Sender: TObject);
begin
  cds1.Filtered := False;
  cds1.Filtered := Trim(edPesquisa.Text) <> '';
end;

Function TfrmSelecionaPadrao.Executa(iQtdCols: Integer; sCaption,sFieldRet: String; lPermitirAdd: Boolean): Integer;
Begin
  pv_iRetorno    := 0;
  pv_sFieldRet   := sFieldRet;
  pv_iQtdCols    := iQtdCols;
  btnNovo.Visible:= lPermitirAdd;
  cds1.Close;
  cds1.Open;
  GridTable1DBTableView1ColumnHeaderClick(GridTableDBTableView1,
     GridTableDBTableView1Column1);
  Caption        := ' SELECIONAR '+Maiusculas(sCaption)+' ...';
  ShowModal;
  Result         := pv_iRetorno;
End;

procedure TfrmSelecionaPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cds1.Close;
end;

procedure TfrmSelecionaPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_F3)  then
     edPesquisa.SetFocus;
end;

procedure TfrmSelecionaPadrao.FormShow(Sender: TObject);
begin
  edPesquisa.Text := '';
  edPesquisa.SetFocus;
end;

procedure TfrmSelecionaPadrao.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  SetColGrid(AColumn.Index);
end;

procedure TfrmSelecionaPadrao.GridTable1DBTableView1DblClick(Sender: TObject);
begin
   btnOk.Click;
end;

procedure TfrmSelecionaPadrao.cds1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  if pv_iQtdCols = 2 then
  begin
   Accept :=
     (Pos(Trim(edPesquisa.Text),cds1.Fields[0].AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cds1.Fields[1].AsString) > 0);
  end else
  if pv_iQtdCols = 3 then
  begin
   Accept :=
     (Pos(Trim(edPesquisa.Text),cds1.Fields[0].AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cds1.Fields[1].AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cds1.Fields[2].AsString) > 0);
  end else
  if pv_iQtdCols = 4 then
  begin
   Accept :=
     (Pos(Trim(edPesquisa.Text),cds1.Fields[0].AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cds1.Fields[1].AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cds1.Fields[2].AsString) > 0) or
     (Pos(Trim(edPesquisa.Text),cds1.Fields[3].AsString) > 0);
  end;
end;


Procedure TfrmSelecionaPadrao.SetColGrid(iCol: Integer);
begin

  //edPesquisa.Enabled   := (GridTable1DBTableView1.Columns[iCol].Tag=1);
  cds1.IndexFieldNames := GridTableDBTableView1.Columns[iCol].DataBinding.FieldName;

end;


end.
