unit SelecionaPadraoMulti;

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
  dxSkinXmas2008Blue, cxNavigator, cxCheckBox;

type
  TfrmSelecionaPadraoMulti = class(TfrmPadrao1)
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    prov1: TDataSetProvider;
    qry1: TSQLQuery;
    cds1: TClientDataSet;
    DataSource1: TDataSource;
    edPesquisa: TcxTextEdit;
    Label1: TLabel;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column0: TcxGridDBColumn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    Label2: TLabel;
    edQtdSelect: TcxTextEdit;
    chkMarcaTodos: TCheckBox;
    GridTableDBTableView1Column2: TcxGridDBColumn;
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
    procedure GridTableDBTableView1EditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure chkMarcaTodosClick(Sender: TObject);
    procedure GridTableDBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    pv_sSelectRet: string;
    pv_sFieldRet : string;
    pv_iRetorno  : Integer;
    pv_iQtdCols  : Integer;
    procedure SetColGrid(iCol: Integer);
    procedure MarcaRegistro;
  public
    { Public declarations }
    pb_sIdCidadeOrgao: string[6];
  Function Executa(sPreSelect: string; iQtdCols: Integer; sCaption,sFieldRet: String): String;

end;

var
  frmSelecionaPadraoMulti: TfrmSelecionaPadraoMulti;

implementation

uses VarGlobais, udmPrincipal, gsLib, UtilsDb;

{$R *.dfm}

procedure TfrmSelecionaPadraoMulti.btnOkClick(Sender: TObject);
Var
  sSelectTmp: string;
begin

  sSelectTmp := ';';
  cds1.First;
  while not cds1.eof do
  begin
     if cds1.FieldByName('marcado').Value = 'S' then
        sSelectTmp := sSelectTmp + cds1.FieldByName(pv_sFieldRet).Value+';';
     cds1.Next;
  end;

  if sSelectTmp <> ';' then
     pv_sSelectRet := sSelectTmp;

end;

procedure TfrmSelecionaPadraoMulti.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift = [] then NavegaClient(Key,GridTableDBTableView1);
end;

procedure TfrmSelecionaPadraoMulti.edPesquisaPropertiesChange(Sender: TObject);
begin
  cds1.Filtered := False;
  cds1.Filtered := Trim(edPesquisa.Text) <> '';
end;

Function TfrmSelecionaPadraoMulti.Executa(sPreSelect: string; iQtdCols: Integer; sCaption,sFieldRet: String): String;
Var
  iQtdPreSelect: Integer;
Begin

  Result       := '';
  pv_sSelectRet:= sPreSelect;

  pv_iRetorno  := 0;
  pv_sFieldRet := sFieldRet;
  pv_iQtdCols  := iQtdCols;
  iQtdPreSelect:= 0;

  cds1.Close;
  while not cds1.eof do
  begin
     if Pos(';'+cds1.FieldByName(sFieldRet).Value+';',sPreSelect) > 0 then
     begin
        cds1.Edit;
        cds1.FieldByName('marcado').Value := 'S';
        cds1.Post;
        Inc(iQtdPreSelect);
     end;
     cds1.Next;
  end;
  cds1.Open;

  GridTable1DBTableView1ColumnHeaderClick(GridTableDBTableView1,
     GridTableDBTableView1Column1);

  Caption         := ' SELECIONAR '+Maiusculas(sCaption)+' ...';
  edQtdSelect.Text:= IntToStr(iQtdPreSelect);

  ShowModal;

  if pv_sSelectRet <> ';' then
     Result := pv_sSelectRet
  else if sPreSelect <> '' then
     Result := sPreSelect;

End;

procedure TfrmSelecionaPadraoMulti.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cds1.Close;
end;

procedure TfrmSelecionaPadraoMulti.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sIdCidadeOrgao := Pesquisa('CONFIG_ORGAO','ID','1','ender_ID_CIDADE','');
end;

procedure TfrmSelecionaPadraoMulti.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_F3)  then
     edPesquisa.SetFocus;
end;

procedure TfrmSelecionaPadraoMulti.FormShow(Sender: TObject);
begin
  edPesquisa.Text := '';
  edPesquisa.SetFocus;
end;

procedure TfrmSelecionaPadraoMulti.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  SetColGrid(AColumn.Index);
end;

procedure TfrmSelecionaPadraoMulti.GridTable1DBTableView1DblClick(Sender: TObject);
begin
   btnOk.Click;
end;

procedure TfrmSelecionaPadraoMulti.GridTableDBTableView1DblClick(
  Sender: TObject);
begin
  MarcaRegistro;
end;

procedure TfrmSelecionaPadraoMulti.GridTableDBTableView1EditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if (Shift = []) and (Key = VK_SPACE)  then MarcaRegistro;
end;

procedure TfrmSelecionaPadraoMulti.cds1FilterRecord(DataSet: TDataSet;
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


procedure TfrmSelecionaPadraoMulti.chkMarcaTodosClick(Sender: TObject);
begin

  cds1.DisableControls;
  cds1.First;
  while not cds1.eof do
  begin
    MarcaRegistro;
    cds1.Next;
  end;

  cds1.First;
  cds1.EnableControls;

  if chkMarcaTodos.Tag = 0 then
  begin
     chkMarcaTodos.Tag := 1;
     chkMarcaTodos.Caption := 'Desmarcar &Todos';
  end else
  begin
     chkMarcaTodos.Tag := 0;
     chkMarcaTodos.Caption := 'Marcar &Todos';
  end;


end;

Procedure TfrmSelecionaPadraoMulti.SetColGrid(iCol: Integer);
begin

  cds1.IndexFieldNames := GridTableDBTableView1.Columns[iCol].DataBinding.FieldName;

end;

procedure TfrmSelecionaPadraoMulti.MarcaRegistro;
begin
   cds1.Edit;
   if cds1.FieldByName('marcado').Value = 'S' then
   begin
      cds1.FieldByName('marcado').Value := 'N';
      edQtdSelect.Text := IntToStr(StrToInt(edQtdSelect.Text)-1);
   end else
   begin
      cds1.FieldByName('marcado').Value := 'S';
      edQtdSelect.Text := IntToStr(StrToInt(edQtdSelect.Text)+1);
   end;
   cds1.Post;
end;

end.
