unit CadFavorecido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, cxNavigator,
  cxDBNavigator, cxButtons, ExtCtrls, cxContainer, cxEdit, cxDBEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxCheckBox, cxMemo, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxCalendar, cxPC, cxCurrencyEdit, Buttons,
  cxGroupBox, ComCtrls, cxLabel, dxSkinsCore, dxSkinsDefaultPainters, cxSpinEdit,
  StrUtils, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue;

type
  TfrmCadFavorecido = class(TfrmCadPadrao)
    gbUnidConsum: TcxGroupBox;
    Label48: TLabel;
    Label51: TLabel;
    edServicoPrestado: TcxDBTextEdit;
    gb1: TcxGroupBox;
    LabelId: TLabel;
    edID: TcxDBTextEdit;
    edNome: TcxDBTextEdit;
    LabelNome: TLabel;
    sbFindPessoa: TSpeedButton;
    lblCPF_CNPJ: TLabel;
    edIdPessoa: TcxDBTextEdit;
    edDescrTipoPessoa: TcxDBTextEdit;
    Label3: TLabel;
    Label9: TLabel;
    edCPF_CNPJ: TcxDBTextEdit;
    cbTipoFavorecido: TcxComboBox;
    sbConsultas: TcxButton;
    btnEditPessoa: TBitBtn;
    btnHistFaturas: TBitBtn;
    qry1ID: TIntegerField;
    qry1ID_PESSOA: TIntegerField;
    qry1TIPO_FAVOREC: TStringField;
    qry1SERVICO_PRESTADO: TStringField;
    qry1VALOR_MENSAL: TFMTBCDField;
    qry1OBSERVACAO: TStringField;
    qry1CPF_CNPJ: TStringField;
    qry1NOME_PESSOA: TStringField;
    qry1ENDER_CIDADE: TStringField;
    qry1ENDER_UF: TStringField;
    qry1TELEFONE: TStringField;
    qry1E_MAIL: TStringField;
    qry1DESCR_TIPO_FAVOREC: TStringField;
    cds1ID: TIntegerField;
    cds1ID_PESSOA: TIntegerField;
    cds1TIPO_FAVOREC: TStringField;
    cds1SERVICO_PRESTADO: TStringField;
    cds1VALOR_MENSAL: TFMTBCDField;
    cds1OBSERVACAO: TStringField;
    cds1CPF_CNPJ: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1ENDER_CIDADE: TStringField;
    cds1ENDER_UF: TStringField;
    cds1TELEFONE: TStringField;
    cds1E_MAIL: TStringField;
    cds1DESCR_TIPO_FAVOREC: TStringField;
    Label2: TLabel;
    edValMensal: TcxDBCurrencyEdit;
    memObservacao: TcxDBMemo;
    Label1: TLabel;
    edCidade: TcxDBTextEdit;
    edUF: TcxDBTextEdit;
    Label4: TLabel;
    edTelefone: TcxDBTextEdit;
    edE_Mail: TcxDBTextEdit;
    Label52: TLabel;
    qry1CPF_CNPJ_FTDO: TStringField;
    cds1CPF_CNPJ_FTDO: TStringField;
    Label5: TLabel;
    qry1DESCR_TIPO_PESSOA: TStringField;
    cds1DESCR_TIPO_PESSOA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cds1AfterInsert(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cds1BeforeCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure edIdPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure edIdPessoaExit(Sender: TObject);
    procedure cds1AfterOpen(DataSet: TDataSet);
    procedure cds1BeforePost(DataSet: TDataSet);
    procedure cbTipoConsumoPropertiesCloseUp(Sender: TObject);
    procedure cbTipoConsumoPropertiesPopup(Sender: TObject);
    procedure sbConsultasClick(Sender: TObject);
    procedure btnEditPessoaClick(Sender: TObject);
    procedure cds1AfterScroll(DataSet: TDataSet);
    procedure btnHistFaturasClick(Sender: TObject);
    procedure sbFindPessoaClick(Sender: TObject);
    procedure edIdPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Procedure HabilitaBotoes(lOpcao: Boolean);
    procedure DadosPessoa(sId: string);
  public
    { Public declarations }
  end;

var
  frmCadFavorecido: TfrmCadFavorecido;

implementation

uses gsLib, UtilsDb, VarGlobais, udmPrincipal, AddEditPessoa, FindFavorecido, FindPessoa;

{$R *.dfm}

procedure TfrmCadFavorecido.btnCancelarClick(Sender: TObject);
Var
  iIdTemp: integer;
begin
  iIdTemp := cds1ID.Value;
  inherited;
  HabilitaBotoes(True);
  cds1.FindKey([iIdTemp]);
  gb1.SetFocus;
  Panel1.Caption := 'Modo Consulta ...';

end;

procedure TfrmCadFavorecido.btnEditPessoaClick(Sender: TObject);
Var
   iEdit: integer;
begin
   frmAddEditPessoa := TfrmAddEditPessoa.Create(Self);
   iEdit := frmAddEditPessoa.Executa(Self.Name,cds1ID_PESSOA.Value);
   FreeAndNil(frmAddEditPessoa);
   if iEdit <> 0 then
   begin
      iEdit := cds1ID.Value;
      cds1.FindKey([iEdit]);
   end;
end;

procedure TfrmCadFavorecido.btnGravarClick(Sender: TObject);
Var
  iConta: Integer;
  sCPF_CNPJ: string;
  iIdPessoa: Integer;
begin
  if Not Confirma('Gravar '+iIf(CDS1.State=dsInsert,'Novo '+
     pb_sTitJanela1,'Alerações')+' ?') then exit;
  inherited;
  HabilitaBotoes(True);
end;

procedure TfrmCadFavorecido.btnHistFaturasClick(Sender: TObject);
begin
{
   frmHistFatura := TfrmHistFatura.Create(Self);
   frmHistFatura.pb_iIdUnidConsum := cds1ID.Value;
   frmHistFatura.ShowModal;
   FreeAndNil(frmHistFatura);
}
end;

procedure TfrmCadFavorecido.btnNovoClick(Sender: TObject);
Var
  iConta: Integer;
begin
  inherited;
  if TcxButton(Sender).tag = 1 then
  begin
     cds1.Insert;
  end else
  begin
     cds1.Edit;
  end;
  HabilitaBotoes(False);
  edIdPessoa.SetFocus;
end;

procedure TfrmCadFavorecido.btnPesquisarClick(Sender: TObject);
begin
  if cds1.State <> dsBrowse then exit;
  frmFindFavorecido := TfrmFindFavorecido.Create(Self);
  frmFindFavorecido.ShowModal;
  if glb_sCodigo <> '' then
     cds1.FindKey([StrToInt(glb_sCodigo)]);
  FreeAndNil(frmFindFavorecido);
end;

procedure TfrmCadFavorecido.cbTipoConsumoPropertiesCloseUp(
  Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmCadFavorecido.cbTipoConsumoPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmCadFavorecido.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds1ID.AsString := IncrementGenerator('GEN_ID_FAVORECIDO',1);
  cds1TIPO_FAVOREC.AsInteger := 0;
end;

procedure TfrmCadFavorecido.cds1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  if cds1.IsEmpty then exit;
  try
     cbTipoFavorecido.ItemIndex := cds1TIPO_FAVOREC.AsInteger-1;
  except
     cbTipoFavorecido.ItemIndex := 0;
  end;
end;

procedure TfrmCadFavorecido.cds1AfterScroll(DataSet: TDataSet);
begin
  if cds1.State in [dsInsert,dsEdit] then exit;
  try
     cbTipoFavorecido.ItemIndex := cds1TIPO_FAVOREC.AsInteger-1;
  except
     cbTipoFavorecido.ItemIndex := 0;
  end;
end;

procedure TfrmCadFavorecido.cds1BeforeCancel(DataSet: TDataSet);
begin
   CancelGenerator(cds1.State,'FAVORECIDO','ID',StrToInt(cds1ID.AsString));
end;

procedure TfrmCadFavorecido.cds1BeforePost(DataSet: TDataSet);
begin
  inherited;
  cds1TIPO_FAVOREC.AsInteger := cbTipoFavorecido.ItemIndex + 1;
end;

procedure TfrmCadFavorecido.edIdPessoaExit(Sender: TObject);
Var
  sCPFCNPJ: string[14];
begin
  if (Empty(edIdPessoa.Text)) or (cds1.State = dsBrowse) then exit;
  sCPFCNPJ := Pesquisa('PESSOA','ID',edIdPessoa.Text,'CPF_CNPJ',
     'Pessoa NÃO Cadastrada !!!');
  if sCPFCNPJ = '' then
     edIdPessoa.SetFocus
  else
     DadosPessoa(edIdPessoa.Text);
end;

procedure TfrmCadFavorecido.edIdPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if btnNovo.Enabled then exit;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
  begin
     sbFindPessoa.Click;
  end;
end;

procedure TfrmCadFavorecido.edIdPessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmCadFavorecido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cds1.Close;
end;

procedure TfrmCadFavorecido.FormCreate(Sender: TObject);
Var
  iConta: Integer;
begin
  inherited;
  Top := Top + 21;
  lblPadrao.Caption := '';
  pb_sNomeTab      := 'FAVORECIDO';
  pb_sNomeCampoPK  := 'ID';
  pb_sTitJanela1   := 'FAVOREECIDO';
  pb_sTitJanela2   := 'CADASTRO DE FAVORECIDOS';
  pb_sConfirmExclui:= 'este';
end;

procedure TfrmCadFavorecido.FormShow(Sender: TObject);
begin
  cds1.IndexFieldNames := 'ID';
  inherited;
  HabilitaBotoes(True);
  cds1.Close;
  cds1.Open;
  cds1.Last;
  //edNome.SetFocus;
end;

procedure TfrmCadFavorecido.sbConsultasClick(Sender: TObject);
begin
{
   frmListagemUnidConsumidora := TfrmListagemUnidConsumidora.Create(Self);
   frmListagemUnidConsumidora.Executa(cdsUnidNav);
   FreeAndNil(frmListagemUnidConsumidora);
}
end;

procedure TfrmCadFavorecido.sbFindPessoaClick(Sender: TObject);
begin
   frmFindPessoa := TfrmFindPessoa.Create(Self);
   frmFindPessoa.ShowModal;
   if glb_sCodigo <> '' then
   begin
      cds1ID_PESSOA.AsString := glb_sCodigo;
      DadosPessoa(glb_sCodigo);
   end;
   FreeAndNil(frmFindPessoa);
end;

Procedure TfrmCadFavorecido.HabilitaBotoes(lOpcao: Boolean);
Var
   iConta: Integer;
   sTemp : string[3];
begin
   Nav1.Enabled            := lOpcao;
   btnNovo.Enabled         := lOpcao;
   btnAlterar.Enabled      := lOpcao;
   btnExcluir.Enabled      := lOpcao;
   btnPesquisar.Enabled    := lOpcao;
   if (lOpcao = True) and (cds1.RecordCount>0) then
      btnEditPessoa.Enabled := lOpcao
   else
      btnEditPessoa.Enabled := False;
   btnHistFaturas.Enabled  := lOpcao;
   btnGravar.Enabled       := not lOpcao;
   btnCancelar.Enabled     := not lOpcao;
   edIdPessoa.Properties.ReadOnly := lOpcao;
   cbTipoFavorecido.Properties.ReadOnly := lOpcao;
   edServicoPrestado.Properties.ReadOnly := lOpcao;
   edValMensal.Properties.ReadOnly := lOpcao;
   memObservacao.Properties.ReadOnly := lOpcao;
   sbFindPessoa.Enabled := not lOpcao;

   if lOpcao = True then
   begin
      sTemp := UsuarioPermissaoTabela(glb_iIdOperLogado,pb_sNomeTab);
      btnNovo.Enabled := (LeftStr(sTemp,1) = 'S');
      btnAlterar.Enabled := (Copy(sTemp,2,1) = 'S');
      btnExcluir.Enabled := (RightStr(sTemp,1) = 'S');
   end;

end;


Procedure TfrmCadFavorecido.DadosPessoa(sId: string);
begin
   cds1DESCR_TIPO_FAVOREC.Value := Pesquisa('FAVORECIDO','ID',sId,'DESCR_TIPO_FAVOREC','');
   cds1NOME_PESSOA.Value := Pesquisa('FAVORECIDO','ID',sId,'NOME_PESSOA','');
   cds1CPF_CNPJ_FTDO.Value := Pesquisa('FAVORECIDO','ID',sId,'CPF_CNPJ_FTDO','');
   cds1ENDER_CIDADE.Value := Pesquisa('FAVORECIDO','ID',sId,'ENDER_CIDADE','');
   cds1ENDER_UF.Value := Pesquisa('FAVORECIDO','ID',sId,'ENDER_UF','');
   cds1E_MAIL.Value := Pesquisa('FAVORECIDO','ID',sId,'E_mail','');
end;

end.
