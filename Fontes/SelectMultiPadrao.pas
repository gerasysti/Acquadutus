unit SelectMultiPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxCheckBox, FMTBcd, DBClient, Provider,
  SqlExpr, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  cxTextEdit, cxLabel, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
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
  TfrmSelectMultiPadrao = class(TfrmPadrao1)
    edPesquisa: TcxTextEdit;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    GridTable1: TcxGrid;
    GridTable1DBTableView1: TcxGridDBTableView;
    GridTable1DBTableView1Column1: TcxGridDBColumn;
    GridTable1DBTableView1Column2: TcxGridDBColumn;
    GridTable1Level1: TcxGridLevel;
    qry1: TSQLQuery;
    prov1: TDataSetProvider;
    tb1: TClientDataSet;
   DataSource1: TDataSource;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    lblTitSelect: TcxLabel;
    cxLabel4: TcxLabel;
    edQtdRegSelect: TcxTextEdit;
    chkMarcaDesmarcaTodos: TcxCheckBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridDbColumn);
    procedure GridTable1DBTableView1DblClick(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridTable1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chkMarcaDesmarcaTodosClick(Sender: TObject);
  private
    pv_sColIndex : string;
    pv_iQtdSelect: Integer;
    pv_sSelectIn : WideString;
    pv_sSelectRet: WideString;
    Procedure MarcaDesmarca;
    procedure pv_OpenTable;
    { Private declarations }
  public
    { Public declarations }
    pb_sNomeTab: string;
    pb_sCampoPK: string;
    pb_sTitSelect,
    pb_sTitForm: string;
    function Executa(sSelectIn: string): WideString;
  end;

var
  frmSelectMultiPadrao: TfrmSelectMultiPadrao;

implementation

{$R *.dfm}

uses VarGlobais, udmPrincipal, gsLib, UtilsDb;

Function TfrmSelectMultiPadrao.Executa(sSelectIn: string): WideString;
Var
  iConta : Integer;
  sPesq: String[6];
Begin

  Screen.Cursor := crHourGlass;

  Caption := 'SELECIONA '+pb_sTitForm;
  lblTitSelect.Caption := pb_sTitSelect;

  pv_sSelectIn   := AjustaTextoParamVarios(sSelectIn);
  glb_sCodigo    := '';
  tb1.Close;
  tb1.IndexFieldNames := pb_sCampoPK;
  pv_OpenTable;
  sPesq := '';
  iConta  := 1;
  while iConta <= Length(pv_sSelectIn) do // quando pv_sSelectIn='0' - não faz nada
  begin
     if Copy(pv_sSelectIn,iConta,1) = ';' then
     begin
        if tb1.FindKey([sPesq]) then
           MarcaDesmarca;
        sPesq := '';
     end else
        sPesq := sPesq + Copy(pv_sSelectIn,iConta,1);
     Inc(iConta);
  end;
  GridTable1DBTableView1ColumnHeaderClick(GridTable1DBTableView1,GridTable1DBTableView1Column1);
  GridTable1DBTableView1.DataController.GotoFirst;

  Screen.Cursor := crDefault;

  ShowModal;

  Result := iIf(pv_sSelectRet='0','',pv_sSelectRet);

End;

procedure TfrmSelectMultiPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_F3) and (edPesquisa.Enabled) then
     edPesquisa.SetFocus;
end;

procedure TfrmSelectMultiPadrao.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridDbColumn);
begin
  edPesquisa.Enabled := (TcxGridTableView(Sender).Columns[AColumn.Index].Tag = 1);
  tb1.IndexFieldNames:= GridTable1DBTableView1.Columns[AColumn.Index].DataBinding.FieldName;
  pv_sColIndex := AColumn.DataBinding.FieldName;
end;

procedure TfrmSelectMultiPadrao.GridTable1DBTableView1DblClick(
  Sender: TObject);
begin
  MarcaDesmarca;
end;

procedure TfrmSelectMultiPadrao.GridTable1DBTableView1KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((Shift = []) and (Key = VK_SPACE)) or
     ((Shift = []) and (Key = VK_F4))then MarcaDesmarca;
end;

procedure TfrmSelectMultiPadrao.btnCancelarClick(Sender: TObject);
begin
  pv_sSelectRet := pv_sSelectIn;
end;

procedure TfrmSelectMultiPadrao.btnOkClick(Sender: TObject);
begin
  pv_sSelectRet := '';
  tb1.DisableControls;
  tb1.IndexFieldNames:= 'ID';
  tb1.First;
  while not tb1.Eof do
  begin
     if tb1.FieldByName('MARCADO').Value = 'S' then
        pv_sSelectRet := pv_sSelectRet + tb1.FieldByName(pb_sCampoPK).AsString + ';';
     tb1.Next;
  end;
  tb1.EnableControls;
end;

procedure TfrmSelectMultiPadrao.chkMarcaDesmarcaTodosClick(Sender: TObject);
begin
  tb1.DisableControls;
  tb1.First;
  while not tb1.eof do
  begin
     tb1.edit;
     tb1.FieldByName('MARCADO').Value := iIf(chkMarcaDesmarcaTodos.Checked,'S','N');
     tb1.Post;
     tb1.Next;
  end;
  tb1.EnableControls;
  pv_iQtdSelect := 0;
  if chkMarcaDesmarcaTodos.Checked then
     pv_iQtdSelect := tb1.RecordCount;
  edQtdRegSelect.Text := IntToStr(pv_iQtdSelect);
  if chkMarcaDesmarcaTodos.Tag = 0 then
  begin
     chkMarcaDesmarcaTodos.Tag := 1;
     chkMarcaDesmarcaTodos.Caption := 'Desmarcar &Todos ...';
  end else
  begin
     chkMarcaDesmarcaTodos.Tag := 0;
     chkMarcaDesmarcaTodos.Caption := 'Marcar &Todos ...';
  end;

  Application.ProcessMessages;
end;

procedure TfrmSelectMultiPadrao.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key in [VK_UP,VK_DOWN,VK_RIGHT,VK_LEFT]) then
  begin
     NavegaClient(Key,GridTable1DBTableView1);
     Key := 0;
  end else
  if (Shift = []) and (Key = VK_F4) then
     MarcaDesmarca;
end;

procedure TfrmSelectMultiPadrao.edPesquisaPropertiesChange(Sender: TObject);
begin
  PesquisaIncremental(edPesquisa.Text,DataSource1,pv_sColIndex);
end;

Procedure TfrmSelectMultiPadrao.MarcaDesmarca;
begin
  tb1.Edit;

  if tb1.FieldByName('MARCADO').Value = 'S' then
  begin
     tb1.FieldByName('MARCADO').Value := 'N';
     Dec(pv_iQtdSelect);
  end else
  begin
     tb1.FieldByName('MARCADO').Value := 'S';
     Inc(pv_iQtdSelect);
  end;
  tb1.Post;
  edQtdRegSelect.Text := IntToStr(pv_iQtdSelect);
  Application.ProcessMessages;
end;

Procedure TfrmSelectMultiPadrao.pv_OpenTable;
begin
  tb1.Close;
  tb1.Open;
  pv_iQtdSelect := 0;
  edQtdRegSelect.Text := IntToStr(pv_iQtdSelect);
end;

end.
