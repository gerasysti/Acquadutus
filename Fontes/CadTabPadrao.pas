unit CadTabPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxContainer, FMTBcd, DBClient, Provider, SqlExpr,
  dxGDIPlusClasses, ExtCtrls, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, StdCtrls, cxButtons, cxClasses, cxCheckBox,
  cxLabel, cxMaskEdit, cxDropDownEdit, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxCore;

type
  TfrmCadTabPadrao = class(TfrmPadrao1)
    pButtons: TPanel;
    btnNovo: TcxButton;
    btnAlterar: TcxButton;
    btnExcluir: TcxButton;
    btnFechar: TcxButton;
    btnPesquisar: TcxButton;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableLevel1: TcxGridLevel;
    ds1: TDataSource;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Alterar1: TMenuItem;
    Exluir1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    Panel: TPanel;
    edPesquisa: TcxTextEdit;
    btnImprimir: TcxButton;
    cxDBNavigator1: TcxDBNavigator;
    Label1: TLabel;
    lblColunPesq: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridTableDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btnFecharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Novo1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure GridTableDBTableView1DblClick(Sender: TObject);
    procedure GridTableDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
  private
    pv_sColIndex   : string;
    pv_lPrimeiraVez: Boolean;
    pv_iTop,
    pv_iLeft       : integer;
    pv_sNomeCDS    : String;
    procedure SetColGrid(iCol: Integer);
    { Private declarations }
  public
    { Public declarations }
    pb_lExclui        : Boolean;
    pb_sNomeTab,
    pb_sNomeCampoPK,
    pb_sNomeGen,
    pb_sTitJanela1,
    pb_sTitJanela2,
    pb_sConfirmExclui : String;
    pb_iIdAddEdit     : Integer;
    property prpNomeCDS: string read pv_sNomeCDS write pv_sNomeCDS;
    procedure PermissoesUsuario(iIdUsuario: integer; sNomeTab: String);
  end;

var
  frmCadTabPadrao: TfrmCadTabPadrao;

implementation

uses UtilsDb, gsLib, udmPrincipal, VarGlobais, udmTabelas;

{$R *.dfm}

procedure TfrmCadTabPadrao.btnExcluirClick(Sender: TObject);
Var
  oCDS1: TComponent;
begin

  if ds1.DataSet.RecordCount = 0 then exit;
  pb_lExclui := Confirma('Deseja Realmente EXCLUIR '+pb_sConfirmExclui+' '+pb_sTitJanela1+' ?');

  oCDS1 := dmTabelas.FindComponent(prpNomeCDS);
  TClientDataSet(oCDS1).Delete;
  SalvaTransacao(TClientDataSet(oCDS1));

end;

procedure TfrmCadTabPadrao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadTabPadrao.btnNovoClick(Sender: TObject);
begin

   if TcxButton(Sender).Tag = 1 then
   begin
      ds1.DataSet.Insert;
   end else
   begin
      ds1.DataSet.Edit;
   end;

end;

procedure TfrmCadTabPadrao.btnPesquisarClick(Sender: TObject);
begin
  if edPesquisa.Visible then edPesquisa.SetFocus;
end;

procedure TfrmCadTabPadrao.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift = [] then NavegaClient(Key,GridTableDBTableView1);
end;

procedure TfrmCadTabPadrao.edPesquisaPropertiesChange(Sender: TObject);
begin

  glb_sTextPesqTab     := Trim(edPesquisa.Text);

  ds1.DataSet.Filtered := False;
  ds1.DataSet.Filtered := Trim(edPesquisa.Text) <> '';

end;

procedure TfrmCadTabPadrao.FormActivate(Sender: TObject);
begin
  inherited;
  if Not pv_lPrimeiraVez then
     dmTabelas.OpenTable(prpNomeCDS);
  pv_lPrimeiraVez := False;
end;

procedure TfrmCadTabPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  ds1.DataSet.Close;
  Action := caFree;

end;

procedure TfrmCadTabPadrao.FormCreate(Sender: TObject);
begin

   inherited;

   pv_sNomeCDS    := '';
   pv_lPrimeiraVez:= True;

   glb_sNomeForm1 := Name;
   Position       := poDesigned;
   Left:= Inteiro((glb_iWidth - Width) / 2);
   Top := Inteiro((glb_iHeight - Height) / 2);
   if Top < 0 then Top := Top + 13;
   Application.ProcessMessages;

end;

procedure TfrmCadTabPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  iConta,
  iConta2,
  iQtdCols: Integer;
begin

  if (Shift = []) and (Key = VK_F3)  then
  begin
     if edPesquisa.Visible then
        edPesquisa.SetFocus;
  end else
  if key = VK_F4 then
  begin
     iConta  := 0;
     iQtdCols:= GridTableDBTableView1.ColumnCount - 1;
     while True do
     begin
        if iConta > iQtdCols then iConta := 0;
        if GridTableDBTableView1.Columns[iConta].SortOrder <> soNone then
        begin
           GridTableDBTableView1.Columns[iConta].SortOrder := soNone;
           GridTableDBTableView1.Columns[iConta].Styles.Header := Nil;
           iConta2 := iConta+1;
           while true do
           begin
              if iConta2 > iQtdCols then iConta2 := 0;
              if GridTableDBTableView1.Columns[iConta2].Tag = 1 then
              begin
                 GridTableDBTableView1.Columns[iConta2].SortOrder := soAscending;
                 //GridTableDBTableView1.Columns[iConta2].Styles.Header := dmPrincipal.cxStyle20;
                 SetColGrid(iConta2);
                 exit;
              end;
              Inc(iConta2);
           end;
        end;
        Inc(iConta);
     end;
  end else
     inherited;

end;

procedure TfrmCadTabPadrao.FormShow(Sender: TObject);
begin

  inherited;

  dmTabelas.OpenTable(prpNomeCDS);

  Caption := '[ '+pb_sTitJanela2+' ]';
  SetColGrid(0);
  GridTable.SetFocus;

  PermissoesUsuario(glb_iIdOperLogado,pb_sNomeTab);

end;

procedure TfrmCadTabPadrao.GridTableDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SetColGrid(AColumn.Index);
end;

procedure TfrmCadTabPadrao.GridTableDBTableView1DblClick(Sender: TObject);
begin
  if btnAlterar.Enabled then btnAlterar.Click;
end;

procedure TfrmCadTabPadrao.GridTableDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_RETURN) then btnAlterar.Click;
end;

procedure TfrmCadTabPadrao.Novo1Click(Sender: TObject);
begin
  if (TMenuItem(Sender).Tag = 1) and
     (btnNovo.Enabled) then
     btnNovo.Click
  else if (TMenuItem(Sender).Tag = 2) and
     (btnAlterar.Enabled) then
     btnAlterar.Click
  else if (TMenuItem(Sender).Tag = 3) and
     (btnExcluir.Enabled) then
     btnExcluir.Click
  else if TMenuItem(Sender).Tag = 4 then
     btnFechar.Click
end;

procedure TfrmCadTabPadrao.PermissoesUsuario(iIdUsuario: integer; sNomeTab: String);
Var
  oQry1: TSQLQuery;
begin

  Try

    oQry1 := TSQLQuery.Create(Self);
    oQry1.SQLConnection := dmPrincipal.SConPrincipal;
    oQry1.SQL.Add('SELECT INCLUIR,ALTERAR,EXCLUIR FROM USUARIO_PERMISSAO_TABELA ');
    oQry1.SQL.Add('WHERE (ID_USUARIO = '+IntToStr(iIdUsuario)+') AND (NOME_TABELA = '+QuotedStr(sNomeTab)+')');
    oQry1.Open;
    btnNovo.Enabled   := (oQry1.FieldByName('INCLUIR').Value='S');
    btnAlterar.Enabled:= (oQry1.FieldByName('ALTERAR').Value='S');
    btnExcluir.Enabled:= (oQry1.FieldByName('EXCLUIR').Value='S');
    oQry1.Close;
    oQry1.SQL.Clear;

    oQry1.SQL.Add('SELECT REL_TABELAS FROM USUARIO WHERE ID = '+IntToStr(iIdUsuario));
    oQry1.Open;
    btnImprimir.Enabled := (oQry1.FieldByName('REL_TABELAS').Value='S');

  Finally

    oQry1.Close;
    FreeAndNil(oQry1);

  End;

end;

Procedure TfrmCadTabPadrao.SetColGrid(iCol: Integer);
Var
  iConta: Integer;
  oCDS1 : TComponent;
begin

  edPesquisa.Enabled   := (GridTableDBTableView1.Columns[iCol].Tag=1);
  oCDS1                := dmTabelas.FindComponent(prpNomeCDS);
  TClientDataSet(oCDS1).IndexFieldNames := GridTableDBTableView1.Columns[iCol].DataBinding.FieldName;
  for iConta := 0 to GridTableDBTableView1.ColumnCount - 1  do
     GridTableDBTableView1.Columns[iConta].Styles.Header := nil;
  lblColunPesq.Caption := '[ '+GridTableDBTableView1.Columns[iCol].Caption+' ]';

end;

end.
