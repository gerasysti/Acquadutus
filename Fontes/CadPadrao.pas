unit CadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  DB, cxDBData, cxContainer, FMTBcd, DBClient, Provider, SqlExpr,
  dxGDIPlusClasses, ExtCtrls, cxTextEdit, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxNavigator, cxDBNavigator, StdCtrls, cxButtons, cxClasses,
  ComCtrls, cxLabel, cxMaskEdit, cxDropDownEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmCadPadrao = class(TfrmPadrao1)
    pnlButtons: TPanel;
    btnNovo: TcxButton;
    btnAlterar: TcxButton;
    btnExcluir: TcxButton;
    btnFechar: TcxButton;
    btnPesquisar: TcxButton;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    ds1: TDataSource;
    Panel1: TPanel;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    PanelClient: TPanel;
    lblPadrao: TcxLabel;
    btnImprimir: TcxButton;
    qryUsuarioPermissaoTabela: TSQLQuery;
    qryUsuarioPermissaoTabelaINCLUIR: TStringField;
    qryUsuarioPermissaoTabelaALTERAR: TStringField;
    qryUsuarioPermissaoTabelaEXCLUIR: TStringField;
    qryPermissaoEspecial: TSQLQuery;
    qryPermissaoEspecialREL_SERVIDORES: TStringField;
    qry1: TSQLQuery;
    Nav1: TcxDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnFecharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure cds1AfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure cds1BeforeDelete(DataSet: TDataSet);
    procedure cds1BeforeCancel(DataSet: TDataSet);
  private
    { Private declarations }
    pv_iTop,
    pv_iLeft: integer;
    procedure HintInPanel(Sender: TObject);
  public
    { Public declarations }
    pb_sOperacao: string[1];
    pb_sNomeTab,
    pb_sNomeCampoPK,
    pb_sTitJanela1,
    pb_sTitJanela2   : String;
    pb_sConfirmExclui: String;
    pb_iIdAddEdit    : Integer;
    pb_sNovoNova     : String;
    Procedure gsOpenClient;
    procedure PermissoesUsuario(iIdUsuario: integer; sNomeTab: String); //esse é procedimento genérico
  end;

var
  frmCadPadrao: TfrmCadPadrao;

implementation

uses UtilsDb, gsLib, udmPrincipal, VarGlobais;

{$R *.dfm}

procedure TfrmCadPadrao.btnCancelarClick(Sender: TObject);
begin
   CancelaTransacao(cds1,pb_sNomeTab);
   //pnStatus.Caption := ' Modo Consulta ...';
end;

procedure TfrmCadPadrao.btnExcluirClick(Sender: TObject);
begin
   if cds1.RecordCount = 0 then exit;
   if Confirma('Deseja Realmente EXCLUIR '+pb_sConfirmExclui+' '+pb_sTitJanela1) then
   begin
      pb_sOperacao := '3';
      ExcluiRegistro(cds1);
   end;
end;

procedure TfrmCadPadrao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadPadrao.btnGravarClick(Sender: TObject);
begin
  if (cds1.State in [dsInsert, dsEdit]) then
  begin
     //if Not Confirma('Gravar '+iIf(CDS1.State=dsInsert,'Novo '+pb_sTitJanela1,'Alerações')+' ?') then exit;
     BeforePostClient(cds1);
     SalvaTransacao(cds1);
     Panel1.Caption := ' Modo Consulta ...';
  end;
end;

procedure TfrmCadPadrao.btnNovoClick(Sender: TObject);
begin
  // implementar o controle de usuário
  if TcxButton(Sender).Tag = 1 then
  begin
     pb_sOperacao    := '1';
     Panel1.Caption:= ' Incluindo Novo ...'
  end else
  begin
     pb_sOperacao    := '1';
     Panel1.Caption:= ' Alterando ...';
  end;
end;

procedure TfrmCadPadrao.cds1AfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dmPrincipal.GeraLog(cds1,pb_sOperacao,pb_sNomeTab,Self.Name,'');
end;

procedure TfrmCadPadrao.cds1BeforeCancel(DataSet: TDataSet);
begin
   CancelGenerator(cds1.State,pb_sNomeTab,pb_sNomeCampoPK,
      cds1.FieldByName(pb_sNomeCampoPK).Value);
end;

procedure TfrmCadPadrao.cds1BeforeDelete(DataSet: TDataSet);
begin
   cds1BeforeCancel(cds1);
end;

procedure TfrmCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cds1.State in [dsInsert,dsEdit] then
     CancelaTransacao(cds1,pb_sNomeTab);
  cds1.Close;
  Action := caFree;
end;

procedure TfrmCadPadrao.FormCreate(Sender: TObject);
Var
   x: Extended;
begin
  inherited;
  Panel1.Caption:= ' Modo Consulta ...';
  //pnMsg.Caption   := '';
  pb_sNovoNova    := 'Novo';
  x := (glb_iWidth - Width) / 2;
  pv_iLeft := Inteiro(x);
  x := (glb_iHeight - Height) / 2;
  pv_iTop := Inteiro(x - 45) + 5;
  if pv_iTop < 0 then
     pv_iTop := pv_iTop + 13;
  glb_sNomeForm1 := Self.Name;
  Position := poDesigned;
  Self.Left:= pv_iLeft;
  Self.Top := pv_iTop;
  Application.ProcessMessages;
end;

procedure TfrmCadPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  {
  If (Shift = []) And (Key = VK_RETURN) Then
     SelectNext(ActiveControl,True,True)
  Else
  If (Shift = [ssShift]) And (Key = VK_RETURN) Then
     SelectNext(ActiveControl,False,True)
  Else
  if ((Shift = []) And (Key = VK_F3)) Then
     btnPesquisar.Click;
  }
end;

procedure TfrmCadPadrao.FormShow(Sender: TObject);
Var
 i: Integer;

 begin

  inherited;
  {
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TWinControl then
      TEdit(Components[i]).onEnter := HintInPanel; //to usando TEdit, pois em WinControl OnEnter é protegido
}
  gsOpenClient;

  Caption := '[ '+pb_sTitJanela2+' ]';

end;

Procedure TfrmCadPadrao.gsOpenClient;
begin
  cds1.Close;
  cds1.Open;
end;

procedure TfrmCadPadrao.HintInPanel(Sender: TObject); //esse é procedimento genérico
begin
  //pnMsg.Caption := '';
  if cds1.State = dsBrowse then exit;
  //pnMsg.Caption := TWinControl(Sender).Hint;
end;

procedure TfrmCadPadrao.PermissoesUsuario(iIdUsuario: integer; sNomeTab: String);
begin

  qryUsuarioPermissaoTabela.Close;
  qryUsuarioPermissaoTabela.ParamByName('pIdUsuario').Value:= iIdUsuario;
  qryUsuarioPermissaoTabela.ParamByName('pNomeTab').Value  := sNomeTab;
  qryUsuarioPermissaoTabela.Open;
  btnNovo.Enabled   := (qryUsuarioPermissaoTabelaINCLUIR.Value='S');
  btnAlterar.Enabled:= (qryUsuarioPermissaoTabelaALTERAR.Value='S');
  btnExcluir.Enabled:= (qryUsuarioPermissaoTabelaEXCLUIR.Value='S');
  qryUsuarioPermissaoTabela.Close;

  {
  qryPermissaoEspecial.Close;
  qryPermissaoEspecial.Params[0].Value := iIdUsuario;
  qryPermissaoEspecial.Open;
  btnImprimir.Enabled := (qryPermissaoEspecialREL_SERVIDORES.Value='S');
  qryPermissaoEspecial.Close;
  }

end;


end.
