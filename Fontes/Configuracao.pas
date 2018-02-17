unit Configuracao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, FMTBcd, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, cxCheckBox,
  cxCurrencyEdit, cxDBEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,
  cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, cxGroupBox, cxPC,
  DBClient, Provider, SqlExpr, cxButtons, cxLabel, ExtCtrls, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, ExtDlgs, cxImage, ClipBrd,
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
  dxSkinXmas2008Blue, dxBarBuiltInMenu;

type
  TfrmConfiguracao = class(TfrmAddEditPadrao)
    pgConfig: TcxPageControl;
    tsOrgao: TcxTabSheet;
    gbOrgao: TcxGroupBox;
    edNome: TcxDBTextEdit;
    gbEndereco: TcxGroupBox;
    edEnderIdLograd: TcxDBTextEdit;
    edEnderNum: TcxDBTextEdit;
    edEnderCEP: TcxDBTextEdit;
    edEnderIdBairro: TcxDBTextEdit;
    edEnderCidade: TcxDBTextEdit;
    edTelefone: TcxDBMaskEdit;
    gbBrasao: TcxGroupBox;
    tsSistema: TcxTabSheet;
    edSigla: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    edEnder_UF: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    btnFechar: TBitBtn;
    btnEdit: TBitBtn;
    dsConfigSistema: TDataSource;
    dbImgBrasao: TcxDBImage;
    OpenPictureDialog1: TOpenPictureDialog;
    tsPastaPadrao: TcxTabSheet;
    cxLabel37: TcxLabel;
    edPastaServidLocal: TcxDBTextEdit;
    SaveDialog1: TSaveDialog;
    cxLabel58: TcxLabel;
    cbTipoFatura: TcxComboBox;
    sbLogradouro: TSpeedButton;
    edEnderDescrLograd: TcxDBTextEdit;
    sbBairro: TSpeedButton;
    edEnderDescrBairro: TcxDBTextEdit;
    dsPasta: TDataSource;
    cxLabel2: TcxLabel;
    edPastaServidRemoto: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    edPercMulta: TcxDBCurrencyEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    edIdExped: TcxDBTextEdit;
    sbIdExped: TSpeedButton;
    edIdLig: TcxDBTextEdit;
    sbIdLig: TSpeedButton;
    edIdRelig: TcxDBTextEdit;
    sbIdRelig: TSpeedButton;
    cxLabel10: TcxLabel;
    edIdRelig2: TcxDBTextEdit;
    sbIdRelig2: TSpeedButton;
    edCNPJ: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure edEnderCEPKeyPress(Sender: TObject; var Key: Char);
    procedure sbTercFeriasProporcClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure dbImgBrasaoDblClick(Sender: TObject);
    procedure cds1BeforeCancel(DataSet: TDataSet);
    procedure cbFormatoCChequePropertiesCloseUp(Sender: TObject);
    procedure cbFormatoCChequePropertiesPopup(Sender: TObject);
    procedure sbLogradouroClick(Sender: TObject);
    procedure edEnderIdLogradKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edEnderIdLogradKeyPress(Sender: TObject; var Key: Char);
    procedure edEnderIdLogradExit(Sender: TObject);
    procedure sbIdExpedClick(Sender: TObject);
    procedure edIdExpedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    Procedure HabilitaComponents(lOpcao: Boolean);
    Procedure CancelaEdicao;
    procedure MostraDadosDescriptografado;
  public
    { Public declarations }
  end;

var
  frmConfiguracao: TfrmConfiguracao;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, SelecionaPadrao, udmTabelas;

{$R *.dfm}

procedure TfrmConfiguracao.btnCancelarClick(Sender: TObject);
begin
  CancelaEdicao;
  MostraDadosDescriptografado;
  HabilitaComponents(True);
end;

procedure TfrmConfiguracao.btnEditClick(Sender: TObject);
begin
  HabilitaComponents(False);
  ds1.DataSet.Edit;
  dsPasta.DataSet.Edit;
  if tsSistema.Enabled then
     dsConfigSistema.DataSet.Edit;
end;

procedure TfrmConfiguracao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConfiguracao.btnGravarClick(Sender: TObject);
begin

  ds1.DataSet.FieldByName('SIGLA').Value       := Criptografa(ds1.DataSet.FieldByName('SIGLA').Value,'1',10);
  ds1.DataSet.FieldByName('TIPO_FATURA').Value := IntToStr(cbTipoFatura.ItemIndex+1);
  if tsOrgao.Enabled then
  begin
     dmTabelas.GravaRegistro(ds1.DataSet.Name);
     MostraDadosDescriptografado;
  end;
  if tsPastaPadrao.Enabled then
     dmTabelas.GravaRegistro(dsPasta.DataSet.Name);
  if tsSistema.Enabled then
  begin
     dmTabelas.GravaRegistro(dsConfigSistema.DataSet.Name);
  end;

  HabilitaComponents(True);

end;

procedure TfrmConfiguracao.edEnderCEPKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmConfiguracao.edEnderIdLogradExit(Sender: TObject);
begin
  if Trim(TcxDBTextEdit(Sender).Text)='' then Exit;
  if TcxDBTextEdit(Sender).Tag = 1 then
  begin
    edEnderDescrLograd.Text := Pesquisa('LOGRADOURO','ID',
       TcxDBTextEdit(Sender).Text,'DESCRICAO',
       'Identificador de Logradouro, inválido !');
    if edEnderDescrLograd.Text = '' then TcxDBTextEdit(Sender).SetFocus;
  end else
  if TcxDBTextEdit(Sender).Tag = 2 then
  begin
     edEnderDescrBairro.Text := Pesquisa('BAIRRO','ID',TcxDBTextEdit(Sender).Text,
        'DESCRICAO','Identificador de Bairro, inválido !');
    if edEnderDescrBairro.Text = '' then TcxDBTextEdit(Sender).SetFocus;
  end; { else
  if TcxDBTextEdit(Sender).Tag = 3 then
  begin
     edEnderDescrDistrito.Text := Pesquisa('DISTRITO','ID',TcxDBTextEdit(Sender).Text,
        'DESCRICAO','Identificador de Distrito, inválido !');
     if edEnderDescrDistrito.Text = '' then
        TcxDBTextEdit(Sender).SetFocus;
  end; }
end;

procedure TfrmConfiguracao.edEnderIdLogradKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if not sbLogradouro.Enabled then exit;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
  begin
     if TcxDBTextEdit(Sender).Tag = 1 then
        sbLogradouro.Click
     else if TcxDBTextEdit(Sender).Tag = 2 then
        sbBairro.Click;
     {
     else if TcxDBTextEdit(Sender).Tag = 3 then
        sbDistrito.Click;
     }
  end;

end;

procedure TfrmConfiguracao.edEnderIdLogradKeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmConfiguracao.edIdExpedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not sbLogradouro.Enabled then exit;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
  begin
     if TcxDBTextEdit(Sender).Tag = 1 then
        sbIdExped.Click
     else if TcxDBTextEdit(Sender).Tag = 2 then
        sbIdLig.Click
     else if TcxDBTextEdit(Sender).Tag = 3 then
        sbIdRelig.Click
     else if TcxDBTextEdit(Sender).Tag = 4 then
        sbIdRelig2.Click;
  end;
end;

procedure TfrmConfiguracao.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  if (ds1.DataSet.State = dsEdit) then CancelaEdicao;
  ds1.DataSet.Close;
  dsConfigSistema.DataSet.Close;
  dsPasta.DataSet.Close;
end;

procedure TfrmConfiguracao.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'CONFIG_ORGAO';
  pb_sNomeCampoPK  := 'ID';
  pb_sNomeGenerator:= '';
  pb_sTitJanela    := '';
end;

procedure TfrmConfiguracao.FormShow(Sender: TObject);
Var
  i: Integer;
  sPermissao: string[1];
begin
  //inherited;
  sPermissao            := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),
     'CONFIG_ORGAO','');
  tsOrgao.Enabled       := (sPermissao='S');

  sPermissao            := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),
     'CONFIG_SISTEMA','');

  tsSistema.Enabled     := (sPermissao='S');
  tsPastaPadrao.Enabled := tsSistema.Enabled;

  Caption := 'CONFIGURAÇÕES E AJUSTES DIVERSOS ...';
  HabilitaComponents(True);
  dmTabelas.OpenTable('cdsConfigOrgao');
  MostraDadosDescriptografado;
  cbTipoFatura.ItemIndex := ds1.DataSet.FieldByName('TIPO_FATURA').AsInteger - 1;
  dmTabelas.OpenTable('cdsConfigSistema');
  dmTabelas.OpenTable('cdsPasta');

  pgConfig.ActivePageIndex := 0;

end;


Procedure TfrmConfiguracao.HabilitaComponents(lOpcao: Boolean);
begin
   sbLogradouro.Enabled := not lOpcao;
   sbBairro.Enabled := not lOpcao;
   sbIdExped.Enabled := not lOpcao;
   sbIdLig.Enabled := not lOpcao;
   sbIdRelig.Enabled := not lOpcao;
   sbIdRelig2.Enabled := not lOpcao;
   btnEdit.Enabled := lOpcao;
   btnGravar.Enabled := not lOpcao;
   btnCancelar.Enabled := not lOpcao;
   //btnEdit.Enabled := lOpcao;
end;

procedure TfrmConfiguracao.sbLogradouroClick(Sender: TObject);
begin
{ retirar
  frmSelecionaPadrao := TfrmSelecionaPadrao.Create(Nil);
  if TButton(Sender).Tag = 1 then
  begin
     if frmSelecionaPadrao.Executa('LOGRADOURO','LOGRADOURO',
                                   'DESCRICAO','ID','ID',True) then
        cds1ENDER_ID_LOGRAD.AsString := glb_sCodigo;
     edEnderIdLograd.SetFocus;
  end else
  if TButton(Sender).Tag = 2 then
  begin
     if frmSelecionaPadrao.Executa('BAIRRO','BAIRRO',
        'DESCRICAO','ID','ID',True) then
        cds1ENDER_ID_BAIRRO.AsString := glb_sCodigo;
     edEnderIdBairro.SetFocus;
  end; { else
  if TButton(Sender).Tag = 3 then
  begin
     if frmSelecionaPadrao.Executa('DISTRITO','DISTRITO',
        'DESCRICAO','ID','ID',True) then
        cds1ENDER_ID_DISTRITO.AsString := glb_sCodigo;
     edEnderIdDistrito.SetFocus;
  end;

  FreeAndNil(frmSelecionaPadrao);
}

end;

procedure TfrmConfiguracao.sbTercFeriasProporcClick(Sender: TObject);
begin
{
  if dsConfigSistema.State <> dsEdit then exit;
  frmSeleciona3 := TfrmSeleciona3.Create(Nil);
  if frmSeleciona3.Executa(['Descrição','Código','Tipo','Id.'],
     'EVENTO','EVENTO','DESCRICAO','CODIGO','ID','ID','TIPO','V',True) then
  FreeAndNil(frmSeleciona3);
  Case TSpeedButton(Sender).Tag of
     1: begin
        cdsConfigSistemaID_EV_TERCO_FERIAS_PROP.AsString := glb_sCodigo;
        edIdEvTercFeriasProporc.SetFocus;
     end;
     2: begin
        cdsConfigSistemaID_EV_FERIAS_PROP.AsString := glb_sCodigo;
        edIdEvFeriasProporc.SetFocus;
     end;
     3: begin
        cdsConfigSistemaID_EV_DEC_TERC_PROP.AsString := glb_sCodigo;
        edIdEv13SalProporc.SetFocus;
     end;
  end;
}
end;

procedure TfrmConfiguracao.sbIdExpedClick(Sender: TObject);
Var
  sIdTmp: string;
begin

  if not TButton(Sender).Enabled then exit;

{ retirar

  frmSelecionaPadrao := TfrmSelecionaPadrao.Create(Nil);
  if frmSelecionaPadrao.Executa('OUTROS SERVIÇOS','TAB_OUTRA_TARIFA','DESCRICAO','ID','ID',True) then
     sIdTmp := glb_sCodigo;

  if TButton(Sender).Tag = 1 then
  begin
     cdsConfigSistemaID_EXPEDIENTE.AsString := sIdTmp;
     edIdExped.SetFocus;
  end else
  if TButton(Sender).Tag = 2 then
  begin
     cdsConfigSistemaID_LIGACAO.AsString := sIdTmp;
     edIdLig.SetFocus;
  end else
  if TButton(Sender).Tag = 3 then
  begin
     cdsConfigSistemaID_RELIGACAO.AsString := sIdTmp;
     edIdRelig.SetFocus;
  end else
  if TButton(Sender).Tag = 4 then
  begin
     cdsConfigSistemaID_RELIGACAO2.AsString := sIdTmp;
     edIdRelig2.SetFocus;
  end;

  FreeAndNil(frmSelecionaPadrao);

}

end;

Procedure TfrmConfiguracao.CancelaEdicao;
begin
  if (ds1.DataSet.State = dsEdit) then
  begin
     ds1.DataSet.Cancel;
  end;
  if (dsConfigSistema.DataSet.State = dsEdit) then
  begin
     dsConfigSistema.DataSet.Cancel;
  end;
  if dsPasta.DataSet.State = dsEdit then
     dsPasta.DataSet.Cancel;

end;


procedure TfrmConfiguracao.cbFormatoCChequePropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmConfiguracao.cbFormatoCChequePropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmConfiguracao.cds1BeforeCancel(DataSet: TDataSet);
begin
  //inherited;

end;

procedure TfrmConfiguracao.dbImgBrasaoDblClick(Sender: TObject);
Var
  Imagem: TPicture;
begin
  if ds1.DataSet.State <> dsEdit then exit;
  If OpenPictureDialog1.Execute Then
  Begin
     imagem := TPicture.Create();
     imagem.LoadFromFile(OpenPictureDialog1.FileName);
     Clipboard.Assign(imagem);
     dbImgBrasao.PasteFromClipboard;
     imagem.Free;
  End;
end;

procedure TfrmConfiguracao.MostraDadosDescriptografado;
begin
  if ds1.DataSet.State <> dsEdit then
     ds1.DataSet.Edit;
  ds1.DataSet.FieldByName('RAZAO_SOCIAL').Value := Criptografa(ds1.DataSet.FieldByName('RAZAO_SOCIAL').Value,'2',60);
  ds1.DataSet.FieldByName('SIGLA').Value        := Criptografa(ds1.DataSet.FieldByName('SIGLA').Value,'2',10);
  edCNPJ.Text                                   := FormatString('99.999.999/9999-99',
    Criptografa(ds1.DataSet.FieldByName('CNPJ').Value,'2',14));
  ds1.DataSet.Post;
end;

end.
