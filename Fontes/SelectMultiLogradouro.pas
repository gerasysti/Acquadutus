unit SelectMultiLogradouro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, FMTBcd, DBClient, Provider, SqlExpr, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  Buttons, cxTextEdit, cxLabel;

type
  TfrmSelectMultiLograd = class(TfrmPadrao1)
    cxLabel1: TcxLabel;
    edPesquisa: TcxTextEdit;
    cxLabel2: TcxLabel;
    chkMarcaDesmarcaTodos: TcxCheckBox;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    GridTable1: TcxGrid;
    GridTable1DBTableView1: TcxGridDBTableView;
    GridTable1DBTableView1Column1: TcxGridDBColumn;
    GridTable1DBTableView1Column2: TcxGridDBColumn;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    GridTable1Level1: TcxGridLevel;
    lblTitSelect: TcxLabel;
    cxLabel4: TcxLabel;
    edQtdRegSelect: TcxTextEdit;
    qry1: TSQLQuery;
    prov1: TDataSetProvider;
    tb1: TClientDataSet;
    DataSource1: TDataSource;
    tb1ID: TIntegerField;
    tb1ENDER_ID_LOGRAD: TIntegerField;
    tb1ENDER_DESCR_LOGRAD: TStringField;
    tb1MARCADO: TStringField;
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView; AColumn: TcxGridColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridTable1DBTableView1DblClick(Sender: TObject);
    procedure chkMarcaDesmarcaTodosClick(Sender: TObject);
    procedure GridTable1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
  private
    { Private declarations }
    pv_sSelectIn: string;
    pv_iQtdSelect: Integer;
    pv_sSelectRet: String;
    procedure pv_OpenTable;
    procedure MarcaDesmarca;
  public
    { Public declarations }
    pb_sBairro: string[3];
    Function Executa(sSelectIn: string): WideString;
  end;

var
  frmSelectMultiLograd: TfrmSelectMultiLograd;

implementation

{$R *.dfm}

uses VarGlobais, udmPrincipal, gsLib, UtilsDb;

procedure TfrmSelectMultiLograd.btnOkClick(Sender: TObject);
begin
  pv_sSelectRet := '';
  tb1.DisableControls;
  tb1.IndexFieldNames:= 'ID';
  tb1.First;
  while not tb1.Eof do
  begin
     if tb1.FieldByName('MARCADO').Value = 'S' then
        pv_sSelectRet := pv_sSelectRet + tb1.FieldByName('ENDER_ID_LOGRAD').AsString + ';';
     tb1.Next;
  end;
  tb1.EnableControls;
end;

procedure TfrmSelectMultiLograd.chkMarcaDesmarcaTodosClick(Sender: TObject);
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

Function TfrmSelectMultiLograd.Executa(sSelectIn: string): WideString;
Var
  iConta : Integer;
  sPesq: String[6];
  sTeste: string[3];
Begin

  Screen.Cursor := crHourGlass;

  pv_sSelectIn   := AjustaTextoParamVarios(sSelectIn);
  glb_sCodigo    := '';
  tb1.Close;
  qry1.ParamByName('pBairroIni').Value := 1;
  qry1.ParamByName('pBairroFim').Value := 999;
  if Trim(pb_sBairro) <> '' then
  begin
     qry1.ParamByName('pBairroIni').Value := StrToInt(Trim(pb_sBairro));
     qry1.ParamByName('pBairroFim').Value := StrToInt(Trim(pb_sBairro));
  end;
  tb1.IndexFieldNames := 'ENDER_ID_LOGRAD';
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

Procedure TfrmSelectMultiLograd.pv_OpenTable;
begin
  tb1.Close;
  tb1.Open;
  pv_iQtdSelect := 0;
  edQtdRegSelect.Text := IntToStr(pv_iQtdSelect);
end;

procedure TfrmSelectMultiLograd.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_F3) and (edPesquisa.Enabled) then
     edPesquisa.SetFocus;

end;

procedure TfrmSelectMultiLograd.GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
  AColumn: TcxGridColumn);
begin
  inherited;
  edPesquisa.Enabled := (TcxGridTableView(Sender).Columns[AColumn.Index].Tag = 1);
  tb1.IndexFieldNames:= GridTable1DBTableView1.Columns[AColumn.Index].DataBinding.FieldName;
end;

procedure TfrmSelectMultiLograd.GridTable1DBTableView1DblClick(Sender: TObject);
begin
  MarcaDesmarca;
end;

procedure TfrmSelectMultiLograd.GridTable1DBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ((Shift = []) and (Key = VK_SPACE)) or
     ((Shift = []) and (Key = VK_F4))then MarcaDesmarca;
end;

Procedure TfrmSelectMultiLograd.MarcaDesmarca;
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


end.
