unit AddEditPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, cxControls, cxContainer, cxEdit, StdCtrls, cxMaskEdit,
  cxDBEdit, cxTextEdit, DB, DBClient, Provider, SqlExpr, cxClasses, cxStyles,
  cxGridTableView, cxButtons, ExtCtrls,
  cxGroupBox, cxRadioGroup, cxCheckBox, cxDropDownEdit, cxCalc,
  cxCalendar, Buttons, cxLabel, cxMemo, dxSkinsCore, dxSkinsDefaultPainters,
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
  dxSkinXmas2008Blue;

type
  TfrmAddEditPessoa = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edNomeRazaoSocial: TcxDBTextEdit;
    edEnderIdLograd: TcxDBTextEdit;
    edEnderDescrLograd: TcxDBTextEdit;
    edEnderDescrBairro: TcxDBTextEdit;
    edEnderDescrDistrito: TcxDBTextEdit;
    edEnderIdDistrito: TcxDBTextEdit;
    edEnderIdBairro: TcxDBTextEdit;
    sbLogradouro: TSpeedButton;
    sbBairro: TSpeedButton;
    sbDistrito: TSpeedButton;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    gbObservacao: TcxGroupBox;
    memObservacao: TcxDBMemo;
    cxLabel16: TcxLabel;
    edTelefone: TcxDBTextEdit;
    qry1ID: TIntegerField;
    qry1TIPO: TStringField;
    qry1NOME_RAZAO_SOCIAL: TStringField;
    qry1NOME_FANTASIA: TStringField;
    qry1SEXO: TStringField;
    qry1DT_NASCIMENTO: TDateField;
    qry1NATURAL_CIDADE: TStringField;
    qry1NATURAL_UF: TStringField;
    qry1RG_NUM: TStringField;
    qry1RG_ORGAO_EMISSOR: TStringField;
    qry1RG_UF: TStringField;
    qry1RG_DT_EMISSAO: TDateField;
    qry1CPF_CNPJ: TStringField;
    qry1ID_ESTADO_CIVIL: TIntegerField;
    qry1CONJUGE_NOME: TStringField;
    qry1CONJUGE_CPF: TStringField;
    qry1ENDER_ID_LOGRAD: TIntegerField;
    qry1ENDER_ID_BAIRRO: TIntegerField;
    qry1ENDER_CIDADE: TStringField;
    qry1ENDER_ID_DISTRITO: TIntegerField;
    qry1ENDER_CEP: TStringField;
    qry1ENDER_UF: TStringField;
    qry1TELEFONE: TStringField;
    qry1E_MAIL: TStringField;
    qry1DESCR_TIPO_PESSOA: TStringField;
    qry1CPF_CNPJ_FTDO: TStringField;
    qry1ENDER_DESCR_LOGRAD: TStringField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    cds1ID: TIntegerField;
    cds1TIPO: TStringField;
    cds1NOME_RAZAO_SOCIAL: TStringField;
    cds1NOME_FANTASIA: TStringField;
    cds1SEXO: TStringField;
    cds1DT_NASCIMENTO: TDateField;
    cds1NATURAL_CIDADE: TStringField;
    cds1NATURAL_UF: TStringField;
    cds1RG_NUM: TStringField;
    cds1RG_ORGAO_EMISSOR: TStringField;
    cds1RG_UF: TStringField;
    cds1RG_DT_EMISSAO: TDateField;
    cds1CPF_CNPJ: TStringField;
    cds1ID_ESTADO_CIVIL: TIntegerField;
    cds1CONJUGE_NOME: TStringField;
    cds1CONJUGE_CPF: TStringField;
    cds1ENDER_ID_LOGRAD: TIntegerField;
    cds1ENDER_ID_BAIRRO: TIntegerField;
    cds1ENDER_CIDADE: TStringField;
    cds1ENDER_ID_DISTRITO: TIntegerField;
    cds1ENDER_CEP: TStringField;
    cds1ENDER_UF: TStringField;
    cds1TELEFONE: TStringField;
    cds1E_MAIL: TStringField;
    cds1DESCR_TIPO_PESSOA: TStringField;
    cds1CPF_CNPJ_FTDO: TStringField;
    cds1ENDER_DESCR_LOGRAD: TStringField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    edCPF_CNPJ: TcxMaskEdit;
    cxLabel9: TcxLabel;
    edNomeFantasia: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    edRgNumero: TcxDBTextEdit;
    edRG_OrgaoEmissor: TcxDBTextEdit;
    cbRgUf: TcxDBComboBox;
    edRgDtEmissao: TcxDBDateEdit;
    cxLabel22: TcxLabel;
    cbSexo: TcxDBComboBox;
    edEnderNum: TcxDBTextEdit;
    edEnderCEP: TcxMaskEdit;
    edEnderCidade: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    edEMail: TcxDBTextEdit;
    qry1OBSERVACAO: TMemoField;
    cds1OBSERVACAO: TMemoField;
    qry1ENDER_NUM: TIntegerField;
    qry1ENDER_NUM_LETRA: TStringField;
    cds1ENDER_NUM: TIntegerField;
    cds1ENDER_NUM_LETRA: TStringField;
    edEnderNumLetra: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    edEnderComplemento: TcxDBTextEdit;
    qry1ENDER_COMPLEMENTO: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    edEnderUF: TcxDBTextEdit;
    cbTipoPessoa: TcxComboBox;
    procedure edEnderIdLogradExit(Sender: TObject);
    procedure edEnderIdLogradKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cds1AfterInsert(DataSet: TDataSet);
    procedure edEnderIdLogradKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure edCPF_CNPJExit(Sender: TObject);
    procedure sbLogradouroClick(Sender: TObject);
    procedure cbRgUfPropertiesCloseUp(Sender: TObject);
    procedure cbRgUfPropertiesPopup(Sender: TObject);
    procedure cbTipoPessoaPropertiesChange(Sender: TObject);
    procedure cbTipoPessoaPropertiesCloseUp(Sender: TObject);
    procedure cbTipoPessoaPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddEditPessoa: TfrmAddEditPessoa;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, SelecionaPadrao;

{$R *.dfm}

procedure TfrmAddEditPessoa.FormCreate(Sender: TObject);
Var
   iConta: integer;
begin
   inherited;
   {
   cbEnderUF.Properties.Items.Clear;
   for iConta := 0 to 27 do
     cbEnderUF.Properties.Items.Add(glb_sUFs[iConta]);
     }
   pb_sNomeTab      := 'PESSOA';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_PESSOA';
   pb_sTitJanela    := 'PESSOA FÍSICA/JURÍDICA';
   pb_sNovoNova     := 'NOVA';
end;

procedure TfrmAddEditPessoa.FormShow(Sender: TObject);
begin
  inherited;
  if ds1.DataSet.State = dsInsert then
  begin
     cbTipoPessoa.ItemIndex := 0;
     cbTipoPessoa.SetFocus;
     //edEnderCEP.Text := ''; // cep do órgão ...
     //cds1ENDER_CIDADE.Value := ''; // cidade do órgão
     //cbEnderUF.ItemIndex := 0; // uf do órgão
  end else
  begin
     if cds1TIPO.Value = 'J' then
       cbTipoPessoa.ItemIndex := 1
     else
       cbTipoPessoa.ItemIndex := 0;
     edCPF_CNPJ.Text := cds1CPF_CNPJ.Value;
     edEnderCEP.Text := cds1ENDER_CEP.Value;
     edNomeRazaoSocial.SetFocus;
  end;

  cbTipoPessoaPropertiesChange(cbTipoPessoa);

end;

procedure TfrmAddEditPessoa.sbLogradouroClick(Sender: TObject);
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
  end else
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

procedure TfrmAddEditPessoa.btnGravarClick(Sender: TObject);
begin
  cds1TIPO.Value     := iIf(cbTipoPessoa.ItemIndex=0,'F','J');
  if cds1TIPO.Value = 'F' then
  begin
     cds1CPF_CNPJ.Value := edCPF_CNPJ.Text;
     cds1CPF_CNPJ.Value := PreencheZeros(cds1CPF_CNPJ.Value,11);
  end else
  begin
     cds1CPF_CNPJ.Value := edCPF_CNPJ.Text;
     cds1CPF_CNPJ.Value := PreencheZeros(cds1CPF_CNPJ.Value,14);
  end;
  cds1ENDER_CEP.Value:= PreencheZeros(edEnderCEP.Text,8);
  //if EmptyData(cds1RG_DT_EMISSAO.AsString) then
  //   cds1RG_DT_EMISSAO.Value := Null;

  inherited;
end;

procedure TfrmAddEditPessoa.cbRgUfPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditPessoa.cbRgUfPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditPessoa.cbTipoPessoaPropertiesChange(Sender: TObject);
begin
  if cbTipoPessoa.ItemIndex = 0 then
  begin
     edCPF_CNPJ.Properties.EditMask := '999.999.999-99;0; ';
     edNomeFantasia.Enabled   := False;
     edRgNumero.Enabled       := True;
     edRG_OrgaoEmissor.Enabled:= True;
     cbRgUf.Enabled           := True;
     edRgDtEmissao.Enabled    := True;
     cbSexo.Enabled           := True;
  end else
  begin
     edCPF_CNPJ.Properties.EditMask := '99.999.999/9999-99;0; ';
     edNomeFantasia.Enabled   := True;
     edRgNumero.Enabled       := False;
     edRG_OrgaoEmissor.Enabled:= False;
     cbRgUf.Enabled           := False;
     edRgDtEmissao.Enabled    := False;
     cbSexo.Enabled           := False;
  end;
end;

procedure TfrmAddEditPessoa.cbTipoPessoaPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditPessoa.cbTipoPessoaPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditPessoa.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  //cds1BeforePost(cds1);
  edEnderCEP.Text := Pesquisa('CONFIG_ORGAO','ID','1','ENDER_CEP','');
  cds1ENDER_CIDADE.Value := Pesquisa('CONFIG_ORGAO','ID','1','ENDER_CIDADE','');
  cds1ENDER_UF.Value := Pesquisa('CONFIG_ORGAO','ID','1','ENDER_UF','');
end;

procedure TfrmAddEditPessoa.edCPF_CNPJExit(Sender: TObject);
Var
  iTemp,
  iTemp2: Currency;
begin

  if (Trim(ExtraiPonto(edCPF_CNPJ.Text))='') then exit;
  iTemp := StrToCurr(ExtraiPonto(edId.Text));
  iTemp2 := StrToCurr(Trim(ExtraiPonto(edCPF_CNPJ.Text)));

  if cbTipoPessoa.ItemIndex = 0 then
  begin
     if iTemp = iTemp2 then
        edCPF_CNPJ.Text := PreencheZeros(edCPF_CNPJ.Text,11)
     else
     if not ValidCPF(edCPF_CNPJ.Text,True) then
        edCPF_CNPJ.SetFocus
     else
     if CPF_Existe(edCPF_CNPJ.Text,'S') then
        edCPF_CNPJ.SetFocus
  end else
  begin
     if iTemp = iTemp2 then
        edCPF_CNPJ.Text := PreencheZeros(edCPF_CNPJ.Text,14)
     else
     if not ValidaCGC(edCPF_CNPJ.Text,True) then
        edCPF_CNPJ.SetFocus
     else
     if CPF_Existe(edCPF_CNPJ.Text,'S') then
        edCPF_CNPJ.SetFocus
  end;


end;

procedure TfrmAddEditPessoa.edEnderIdLogradExit(Sender: TObject);
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
  end else
  if TcxDBTextEdit(Sender).Tag = 3 then
  begin
     edEnderDescrDistrito.Text := Pesquisa('DISTRITO','ID',TcxDBTextEdit(Sender).Text,
        'DESCRICAO','Identificador de Distrito, inválido !');
     if edEnderDescrDistrito.Text = '' then
        TcxDBTextEdit(Sender).SetFocus;
  end;
end;

procedure TfrmAddEditPessoa.edEnderIdLogradKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
  begin
     if TcxDBTextEdit(Sender).Tag = 1 then
        sbLogradouro.Click
     else if TcxDBTextEdit(Sender).Tag = 2 then
        sbBairro.Click
     else if TcxDBTextEdit(Sender).Tag = 3 then
        sbDistrito.Click;
  end;
end;

procedure TfrmAddEditPessoa.edEnderIdLogradKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

end.
