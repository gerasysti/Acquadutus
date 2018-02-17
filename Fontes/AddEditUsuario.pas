unit AddEditUsuario;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls,
  Forms,
  Dialogs, AddEditPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, cxControls, cxContainer, cxEdit, StdCtrls, cxMaskEdit,
  cxDBEdit, cxTextEdit, DB, DBClient, Provider, SqlExpr, cxClasses, cxStyles,
  cxGridTableView, cxButtons, ExtCtrls,
  cxGroupBox, cxRadioGroup, cxCheckBox, cxDropDownEdit, cxCalc,
  cxCalendar, Buttons, cxLabel, cxMemo, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC, dxCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu, cxNavigator;

type
  TfrmAddEditUsuario = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edNomeCurto: TcxDBTextEdit;
    edIdServidor: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel7: TcxLabel;
    edNomeCompleto: TcxDBTextEdit;
    chkServidor: TcxDBCheckBox;
    cxLabel18: TcxLabel;
    edCargoFuncao: TcxDBTextEdit;
    gbPermisEspeciais: TcxGroupBox;
    dsUsuarioPermTabela: TDataSource;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    edSenha: TcxDBTextEdit;
    edConfirmSenha: TcxTextEdit;
    pcPermissoes: TcxPageControl;
    tsDadosPessoais: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    chkIncluir: TcxCheckBox;
    chkAlterar: TcxCheckBox;
    chkExcluir: TcxCheckBox;
    btnZerarPermissoes: TButton;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    chkCopEventoMesAnter: TcxDBCheckBox;
    chkImportEvArqTXT: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    procedure edIdServidorExit(Sender: TObject);
    procedure btnCategFuncionalClick(Sender: TObject);
    procedure edIdServidorKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edIdServidorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure chkIncluirClick(Sender: TObject);
    procedure edConfirmSenhaExit(Sender: TObject);
    procedure cxGridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cds1AfterInsert(DataSet: TDataSet);
    procedure dsUsuarioPermTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    pv_lAbrindoTab: Boolean;
    function ValidDados: Boolean;
  public
    { Public declarations }
  end;

var
  frmAddEditUsuario: TfrmAddEditUsuario;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, udmTabelas;

{$R *.dfm}

procedure TfrmAddEditUsuario.FormCreate(Sender: TObject);
begin
   inherited;
   pb_sNomeTab      := 'USUARIO';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_USUARIO';
   pb_sTitJanela    := 'USUÁRIO';
   pb_sNovoNova     := 'NOVO';

   Position := poDesigned;
   Top      := CentralizaForm_Vertical(Self.Height)+19;
   Left     := CentralizaForm_Horizontal(Self.Width);
   Application.ProcessMessages;

end;

procedure TfrmAddEditUsuario.FormShow(Sender: TObject);
begin
  inherited;

  if ds1.DataSet.State = dsInsert then
  begin

     Caption := '[ NOVO '+pb_sTitJanela+' ]';
     ds1.DataSet.FieldByName('FUNCIONARIO').Value := 'S';

     pv_lAbrindoTab := False;
     ds1.DataSet.FieldByName('ACESS_TAB_TARIFA').Value       := 'N';
     ds1.DataSet.FieldByName('ACESS_CAD_UNID_CONSUM').Value  := 'N';
     ds1.DataSet.FieldByName('CALC_TARIFA_INDIV').Value      := 'N';
     ds1.DataSet.FieldByName('CALC_TARIFA_BAIRRO').Value     := 'N';
     ds1.DataSet.FieldByName('IMPORT_PAGTO_TXT').Value       := 'N';
     ds1.DataSet.FieldByName('LAN_PAGTO').Value              := 'N';
     ds1.DataSet.FieldByName('CALC_REAJUSTE').Value          := 'N';
     ds1.DataSet.FieldByName('CANCEL_TARIFA').Value          := 'N';
     ds1.DataSet.FieldByName('CONFIG_RELS').Value            := 'N';
     ds1.DataSet.FieldByName('REL_TABELAS').Value            := 'N';
     ds1.DataSet.FieldByName('REL_UNID_CONSUM').Value        := 'N';
     ds1.DataSet.FieldByName('REL_FINANCEIROS').Value        := 'N';
     ds1.DataSet.FieldByName('REL_DOCTOS').Value             := 'N';
     ds1.DataSet.FieldByName('REL_OUTROS').Value             := 'N';
     ds1.DataSet.FieldByName('GERADOR_RELS').Value           := 'N';
     ds1.DataSet.FieldByName('CONFIG_ORGAO').Value           := 'N';
     ds1.DataSet.FieldByName('CONFIG_SISTEMA').Value         := 'N';
     ds1.DataSet.FieldByName('REST_BACKUP').Value            := 'N';
     ds1.DataSet.FieldByName('EXECUT_COMAND_SQL').Value      := 'N';
     ds1.DataSet.FieldByName('ENCERRAR_REABRIR_MOVIM').Value := 'N';
     edConfirmSenha.Text              := '';
  end else
  begin

     Caption := '[ ALTERANDO '+pb_sTitJanela+' ]';

     dmTabelas.OpenCDS_PermUsuario(ds1.DataSet.FieldByName('id').Value);

     ds1.DataSet.Edit;
     ds1.DataSet.FieldByName('NOME_CURTO').Value   := Criptografa(ds1.DataSet.FieldByName('NOME_CURTO').Value,'2',20);
     ds1.DataSet.FieldByName('NOME_COMPLETO').Value:= Criptografa(ds1.DataSet.FieldByName('NOME_COMPLETO').Value,'2',40);
     ds1.DataSet.FieldByName('CARGO_FUNCAO').Value := Criptografa(ds1.DataSet.FieldByName('CARGO_FUNCAO').Value,'2',40);
     ds1.DataSet.FieldByName('SENHA').Value        := Criptografa(ds1.DataSet.FieldByName('SENHA').Value,'2',8);
     edConfirmSenha.Text    := ds1.DataSet.FieldByName('SENHA').Value;

  end;

  chkServidor.SetFocus;

end;

procedure TfrmAddEditUsuario.btnCategFuncionalClick(Sender: TObject);
begin
{
  frmFindServidor.ShowModal;
  if glb_sCodigo = '' then exit;
  cds1ID_SERVIDOR.Value := StrToInt(glb_sCodigo);
}
end;

procedure TfrmAddEditUsuario.btnGravarClick(Sender: TObject);
begin

  if not ValidDados then exit;

  if Not Confirma('Deseja Salvar Usuário ?') then exit;

  ds1.DataSet.FieldByName('NOME_CURTO').Value   := Criptografa(ds1.DataSet.FieldByName('NOME_CURTO').Value,'1',20);
  ds1.DataSet.FieldByName('NOME_COMPLETO').Value:= Criptografa(ds1.DataSet.FieldByName('NOME_COMPLETO').Value,'1',40);
  ds1.DataSet.FieldByName('CARGO_FUNCAO').Value := Criptografa(ds1.DataSet.FieldByName('CARGO_FUNCAO').Value,'1',40);
  ds1.DataSet.FieldByName('SENHA').Value        := Criptografa(ds1.DataSet.FieldByName('SENHA').Value,'1',8);
  dmTabelas.GravaRegistro(ds1.DataSet.Name);
  pb_iIdAddEdit := ds1.DataSet.FieldByName(pb_sNomeCampoPK).Value;
  try
     dmTabelas.GravaRegistro(dsUsuarioPermTabela.DataSet.Name);
     pb_iIdAddEdit := ds1.DataSet.FieldByName(pb_sNomeCampoPK).Value;
     Close;
  except
     Mensagem('Não foi possível Gravar no Banco'+#13+
              '(Tabela de Permissões por Tabela) ...','Aviso !!!',MB_OK+MB_ICONERROR);
  end;

  Close;

end;

procedure TfrmAddEditUsuario.cds1AfterInsert(DataSet: TDataSet);
begin
  //inherited;
end;

procedure TfrmAddEditUsuario.chkIncluirClick(Sender: TObject);
begin

  if pv_lAbrindoTab then exit;

  dsUsuarioPermTabela.DataSet.Edit;
  if TcxCheckBox(Sender).Tag = 1 then
     dsUsuarioPermTabela.DataSet.FieldByName('INCLUIR').Value := iIf(TcxCheckBox(Sender).Checked,'S','N')
  else if TcxCheckBox(Sender).Tag = 2 then
     dsUsuarioPermTabela.DataSet.FieldByName('ALTERAR').Value := iIf(TcxCheckBox(Sender).Checked,'S','N')
  else
     dsUsuarioPermTabela.DataSet.FieldByName('EXCLUIR').Value := iIf(TcxCheckBox(Sender).Checked,'S','N');
  dsUsuarioPermTabela.DataSet.Post;
  dmTabelas.GravaRegistro(dsUsuarioPermTabela.DataSet.Name);
  Application.ProcessMessages;

end;

procedure TfrmAddEditUsuario.cxGridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  cxGridDBTableView1.Columns[AColumn.Index].SortOrder := soNone;
end;

procedure TfrmAddEditUsuario.dsUsuarioPermTabelaDataChange(Sender: TObject; Field: TField);
begin

  if dsUsuarioPermTabela.DataSet.State <> dsBrowse then exit;

  chkIncluir.Checked := (dsUsuarioPermTabela.DataSet.FieldByName('INCLUIR').Value='S');
  chkAlterar.Checked := (dsUsuarioPermTabela.DataSet.FieldByName('ALTERAR').Value='S');
  chkExcluir.Checked := (dsUsuarioPermTabela.DataSet.FieldByName('EXCLUIR').Value='S');

end;

procedure TfrmAddEditUsuario.edConfirmSenhaExit(Sender: TObject);
begin
  if Trim(edConfirmSenha.Text) = '' then exit;
  if edConfirmSenha.Text <> edSenha.Text then
  begin
     Mensagem('As duas Senhas precisam ser iguais ...',
        'Aviso !!!',MB_OK+MB_ICONERROR);
     edConfirmSenha.SetFocus;
  end;
end;

procedure TfrmAddEditUsuario.edIdServidorExit(Sender: TObject);
Var
  iConta: Integer;
  sText : String[1];
begin
{
  if Trim(edIdServidor.Text) = '' then exit;
  cds1NOME_COMPLETO.Value := Pesquisa('SERVIDOR','ID',
     Trim(edIdServidor.Text),'NOME_SERVIDOR',
     'Identificador de Servidor, inválido ...');
  if edNomeCompleto.Text = '' then
  begin
     edIdServidor.SetFocus;
     Exit;
  end;
  cds1NOME_CURTO.Value := '';
  for iConta := 1 to Length(edNomeCompleto.Text) do
  begin
     sText := Copy(edNomeCompleto.Text,iConta,1);
     if Trim(sText) = '' then break;
     cds1NOME_CURTO.Value := cds1NOME_CURTO.Value + sText;
  end;
  cds1CARGO_FUNCAO.Value := Pesquisa('SERVIDOR','ID',Trim(edIdServidor.Text),
     'DESCR_CARGO_ATUAL','');
}
end;

procedure TfrmAddEditUsuario.edIdServidorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
{
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
     sbServidor.Click;
}
end;

procedure TfrmAddEditUsuario.edIdServidorKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

function TfrmAddEditUsuario.ValidDados: Boolean;
begin
  Result := False;
  if Trim(edNomeCurto.Text) = '' then
     Mensagem('Falta o Nome Curto do Usuário ...','Aviso !!!',
        MB_OK+MB_ICONEXCLAMATION)
  else
  if Trim(edNomeCompleto.Text) = '' then
     Mensagem('Falta o Nome Completo do Usuário ...','Aviso !!!',
        MB_OK+MB_ICONEXCLAMATION)
  else
  {
  if (chkServidor.Checked) and (Trim(edIdServidor.Text)='') then
     Mensagem('Falta o Identificador do Servidor ...','Aviso !!!',
        MB_OK+MB_ICONEXCLAMATION)
  else}


  if Trim(edSenha.Text) = '' then
     Mensagem('Falta a Senha do Usuário ...','Aviso !!!',MB_OK+MB_ICONERROR)
  else
  if edConfirmSenha.Text <> edSenha.Text then
     Mensagem('Senhas Diferentes ...','Aviso !!!',MB_OK+MB_ICONERROR)
  else if (Length(Trim(edSenha.Text)) < 4) then
     Mensagem('A Senha precisa ter no mínimo 4 characteres ...','Aviso !!!',
        MB_OK+MB_ICONERROR)
  else
     Result := True;
end;

{ SELECT * FROM USUARIO_TABELA }

end.
