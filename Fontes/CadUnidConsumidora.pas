unit CadUnidConsumidora;

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
  dxSkinXmas2008Blue, dxCore, cxDateUtils;

type
  TfrmCadUnidConsumidora = class(TfrmCadPadrao)
    gbUnidConsum: TcxGroupBox;
    Label46: TLabel;
    Label48: TLabel;
    edDtLigacao: TcxDateEdit;
    Label51: TLabel;
    Label52: TLabel;
    Label57: TLabel;
    edNumLigacao: TcxDBTextEdit;
    edNumHidrometro: TcxDBTextEdit;
    gbEndereco1: TcxGroupBox;
    Label12: TLabel;
    edEnderIdLograd: TcxDBTextEdit;
    edEnderNum: TcxDBTextEdit;
    Label13: TLabel;
    Label14: TLabel;
    gbOutros: TcxGroupBox;
    gbObservacao: TcxGroupBox;
    memObservacao: TcxDBMemo;
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
    Label1: TLabel;
    Label4: TLabel;
    sbLogradouro: TSpeedButton;
    edDtInstHidrometro: TcxDateEdit;
    edQtdTorneiras: TcxDBSpinEdit;
    edMultiplicador: TcxDBSpinEdit;
    edDescrLograd: TcxDBTextEdit;
    edEnderIdBairro: TcxDBTextEdit;
    sbBairro: TSpeedButton;
    edEnderDescrBairro: TcxDBTextEdit;
    Label5: TLabel;
    edEnderDescrDistrito: TcxDBTextEdit;
    gbEndereco2: TcxGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    sbLogradouro2: TSpeedButton;
    sbBairro2: TSpeedButton;
    Label11: TLabel;
    edEnderIdLograd2: TcxDBTextEdit;
    edEnderNum2: TcxDBTextEdit;
    edEnderDescrLograd2: TcxDBTextEdit;
    edEnderIdBairro2: TcxDBTextEdit;
    edEnderDescrBairro2: TcxDBTextEdit;
    edEnderDescrDistrito2: TcxDBTextEdit;
    Label9: TLabel;
    Label15: TLabel;
    edCPF_CNPJ: TcxDBTextEdit;
    qryUnidNav: TSQLQuery;
    provUnidNav: TDataSetProvider;
    cdsUnidNav: TClientDataSet;
    dsUnidNav: TDataSource;
    qryUnidNavID: TIntegerField;
    cdsUnidNavID: TIntegerField;
    qryPessoa: TSQLQuery;
    qryPessoaID: TIntegerField;
    qryPessoaTIPO: TStringField;
    qryPessoaNOME_RAZAO_SOCIAL: TStringField;
    qryPessoaNOME_FANTASIA: TStringField;
    qryPessoaSEXO: TStringField;
    qryPessoaDT_NASCIMENTO: TDateField;
    qryPessoaNATURAL_CIDADE: TStringField;
    qryPessoaNATURAL_UF: TStringField;
    qryPessoaRG_NUM: TStringField;
    qryPessoaRG_ORGAO_EMISSOR: TStringField;
    qryPessoaRG_UF: TStringField;
    qryPessoaRG_DT_EMISSAO: TDateField;
    qryPessoaCPF_CNPJ: TStringField;
    qryPessoaID_ESTADO_CIVIL: TIntegerField;
    qryPessoaCONJUGE_NOME: TStringField;
    qryPessoaCONJUGE_CPF: TStringField;
    qryPessoaENDER_ID_LOGRAD: TIntegerField;
    qryPessoaENDER_NUM: TIntegerField;
    qryPessoaENDER_NUM_LETRA: TStringField;
    qryPessoaENDER_ID_BAIRRO: TIntegerField;
    qryPessoaENDER_CIDADE: TStringField;
    qryPessoaENDER_ID_DISTRITO: TIntegerField;
    qryPessoaENDER_CEP: TStringField;
    qryPessoaENDER_UF: TStringField;
    qryPessoaTELEFONE: TStringField;
    qryPessoaE_MAIL: TStringField;
    qryPessoaOBSERVACAO: TMemoField;
    qryPessoaDESCR_TIPO_PESSOA: TStringField;
    qryPessoaCPF_CNPJ_FTDO: TStringField;
    qryPessoaENDER_DESCR_LOGRAD: TStringField;
    qryPessoaENDER_DESCR_BAIRRO: TStringField;
    qryPessoaENDER_DESCR_DISTRITO: TStringField;
    qry1ID: TIntegerField;
    qry1ID_PESSOA: TIntegerField;
    qry1TIPO_PESSOA: TStringField;
    qry1NUM_LIGACAO: TStringField;
    qry1DT_LIGACAO: TDateField;
    qry1SITUACAO: TStringField;
    qry1ENDER_ID_LOGRAD: TIntegerField;
    qry1ENDER_NUM: TIntegerField;
    qry1ENDER_NUM_LETRA: TStringField;
    qry1ENDER_ID_BAIRRO: TIntegerField;
    qry1ENDER_ID_DISTRITO: TIntegerField;
    qry1ENDER_ID_LOGRAD2: TIntegerField;
    qry1ENDER_NUM2: TIntegerField;
    qry1ENDER_NUM_LETRA2: TStringField;
    qry1ENDER_ID_BAIRRO2: TIntegerField;
    qry1ENDER_ID_DISTRITO2: TIntegerField;
    qry1TIPO_UNID_CONSUM: TStringField;
    qry1FORMA_CALCULO: TStringField;
    qry1NUM_HIDROMETRO: TStringField;
    qry1DT_INSTAL_HIDROM: TDateField;
    qry1QTD_TORNEIRA: TIntegerField;
    qry1MULTIPLICADOR: TIntegerField;
    qry1OBSERVACAO: TMemoField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_DESCR_LOGRADOURO: TStringField;
    qry1ENDER_DESCR_BAIRRO2: TStringField;
    qry1ENDER_DESCR_LOGRADOURO2: TStringField;
    qry1NOME_PESSOA: TStringField;
    qry1CPF_CNPJ: TStringField;
    qry1CPF_CNPJ_FTDO: TStringField;
    qry1DESCR_TIPO_PESSOA: TStringField;
    qry1NOME_FANTASIA: TStringField;
    qry1RG_NUM: TStringField;
    qry1RG_ORGAO_EMISSOR: TStringField;
    qry1RG_UF: TStringField;
    qry1RG_DT_EMISSAO: TDateField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    qry1ENDER_DESCR_DISTRITO2: TStringField;
    qry1ENDER_DESCR_LOGRAD: TStringField;
    qry1ENDER_DESCR_LOGRAD2: TStringField;
    cds1ID: TIntegerField;
    cds1ID_PESSOA: TIntegerField;
    cds1TIPO_PESSOA: TStringField;
    cds1NUM_LIGACAO: TStringField;
    cds1DT_LIGACAO: TDateField;
    cds1SITUACAO: TStringField;
    cds1ENDER_ID_LOGRAD: TIntegerField;
    cds1ENDER_NUM: TIntegerField;
    cds1ENDER_NUM_LETRA: TStringField;
    cds1ENDER_ID_BAIRRO: TIntegerField;
    cds1ENDER_ID_DISTRITO: TIntegerField;
    cds1ENDER_ID_LOGRAD2: TIntegerField;
    cds1ENDER_NUM2: TIntegerField;
    cds1ENDER_NUM_LETRA2: TStringField;
    cds1ENDER_ID_BAIRRO2: TIntegerField;
    cds1ENDER_ID_DISTRITO2: TIntegerField;
    cds1TIPO_UNID_CONSUM: TStringField;
    cds1FORMA_CALCULO: TStringField;
    cds1NUM_HIDROMETRO: TStringField;
    cds1DT_INSTAL_HIDROM: TDateField;
    cds1QTD_TORNEIRA: TIntegerField;
    cds1MULTIPLICADOR: TIntegerField;
    cds1OBSERVACAO: TMemoField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_DESCR_LOGRADOURO: TStringField;
    cds1ENDER_DESCR_BAIRRO2: TStringField;
    cds1ENDER_DESCR_LOGRADOURO2: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1CPF_CNPJ: TStringField;
    cds1CPF_CNPJ_FTDO: TStringField;
    cds1DESCR_TIPO_PESSOA: TStringField;
    cds1NOME_FANTASIA: TStringField;
    cds1RG_NUM: TStringField;
    cds1RG_ORGAO_EMISSOR: TStringField;
    cds1RG_UF: TStringField;
    cds1RG_DT_EMISSAO: TDateField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    cds1ENDER_DESCR_DISTRITO2: TStringField;
    cds1ENDER_DESCR_LOGRAD: TStringField;
    cds1ENDER_DESCR_LOGRAD2: TStringField;
    edEnderNumLetra: TcxDBTextEdit;
    edEnderNumLetra2: TcxDBTextEdit;
    qry1OBSERV_FATURA: TStringField;
    cds1OBSERV_FATURA: TStringField;
    edObservTarifa: TcxDBTextEdit;
    Label16: TLabel;
    cbTipoConsumo: TcxComboBox;
    cbCategoria: TcxComboBox;
    cbSituacao: TcxComboBox;
    edEnderComplemento: TcxDBTextEdit;
    Label17: TLabel;
    qry1ENDER_COMPLEMENTO: TStringField;
    qry1ENDER_COMPLEMENTO2: TStringField;
    qry1DESCR_FORMA_CALCULO: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    cds1ENDER_COMPLEMENTO2: TStringField;
    cds1DESCR_FORMA_CALCULO: TStringField;
    Label18: TLabel;
    edEnderComplemento2: TcxDBTextEdit;
    sbConsultas: TcxButton;
    Notebook1: TNotebook;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    edRG_Num: TcxDBTextEdit;
    edRG_Orgao: TcxDBTextEdit;
    edRG_UF: TcxDBTextEdit;
    edRG_DtEmissao: TcxDBTextEdit;
    Label10: TLabel;
    edNomeFantasia: TcxDBTextEdit;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edValTarifa: TcxDBCurrencyEdit;
    qry1VAL_TARIFA: TFMTBCDField;
    cds1VAL_TARIFA: TFMTBCDField;
    btnHistFinanc: TcxButton;
    btnHistCorteRelig: TcxButton;
    btnEditPessoa: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cds1AfterInsert(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cds1BeforeCancel(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPesquisarClick(Sender: TObject);
    procedure cbTipoPessoaPropertiesChange(Sender: TObject);
    procedure edIdPessoaKeyPress(Sender: TObject; var Key: Char);
    procedure edIdPessoaExit(Sender: TObject);
    procedure sbLogradouroClick(Sender: TObject);
    procedure edEnderIdLogradKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsUnidNavAfterScroll(DataSet: TDataSet);
    procedure cds1AfterOpen(DataSet: TDataSet);
    procedure cds1BeforePost(DataSet: TDataSet);
    procedure cbTipoConsumoPropertiesCloseUp(Sender: TObject);
    procedure cbTipoConsumoPropertiesPopup(Sender: TObject);
    procedure edEnderIdLogradExit(Sender: TObject);
    procedure edEnderNumExit(Sender: TObject);
    procedure edEnderNumLetraExit(Sender: TObject);
    procedure sbConsultasClick(Sender: TObject);
    procedure btnEditPessoaClick(Sender: TObject);
    procedure cds1AfterScroll(DataSet: TDataSet);
    procedure btnHistFaturasClick(Sender: TObject);
    procedure cbTipoConsumoPropertiesChange(Sender: TObject);
    procedure edEnderComplementoExit(Sender: TObject);
    procedure btnHistCorteReligClick(Sender: TObject);
  private
    { Private declarations }
    Procedure HabilitaBotoes(lOpcao: Boolean);
    procedure DadosPessoa(sId: string);
  public
    { Public declarations }
  end;

var
  frmCadUnidConsumidora: TfrmCadUnidConsumidora;

implementation

uses gsLib, UtilsDb, VarGlobais, FindPessoa, SelecionaPadrao,
  FindUnidConsumidora, ListaUnidConsumidora, AddEditPessoa,
  HistoricoFaturaCalcPaga, udmPrincipal, HistoricoCorteReligacao,
  SelecionaBairro, SelecionaLogradouro;

{$R *.dfm}

procedure TfrmCadUnidConsumidora.btnCancelarClick(Sender: TObject);
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

procedure TfrmCadUnidConsumidora.btnEditPessoaClick(Sender: TObject);
Var
   iEdit: integer;
begin
   frmAddEditPessoa := TfrmAddEditPessoa.Create(Self);
   iEdit := frmAddEditPessoa.Executa(Self.Name,cds1ID_PESSOA.Value);
   FreeAndNil(frmAddEditPessoa);
   if iEdit <> 0 then
   begin
      iEdit := cds1ID.Value;
      cdsUnidNav.FindKey([iEdit]);
   end;
end;

procedure TfrmCadUnidConsumidora.btnGravarClick(Sender: TObject);
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

procedure TfrmCadUnidConsumidora.btnHistCorteReligClick(Sender: TObject);
begin
  inherited;
  frmHistCorteRelig := TfrmHistCorteRelig.Create(Self);
  frmHistCorteRelig.pb_iIdUnidConsum := cds1ID.Value;
  frmHistCorteRelig.ShowModal;
  FreeAndNil(frmHistCorteRelig);

end;

procedure TfrmCadUnidConsumidora.btnHistFaturasClick(Sender: TObject);
begin
   frmHistFatura := TfrmHistFatura.Create(Self);
   frmHistFatura.pb_iIdUnidConsum := cds1ID.Value;
   frmHistFatura.ShowModal;
   FreeAndNil(frmHistFatura);
end;

procedure TfrmCadUnidConsumidora.btnNovoClick(Sender: TObject);
Var
  iConta: Integer;
begin
  inherited;
  if TcxButton(Sender).tag = 1 then
  begin
     cds1.Insert;
     edIdPessoa.SetFocus;
  end else
  begin
     cds1.Edit;
     edDtLigacao.SetFocus;
  end;
  HabilitaBotoes(False);
end;

procedure TfrmCadUnidConsumidora.btnPesquisarClick(Sender: TObject);
begin
  if cds1.State <> dsBrowse then exit;
  //frmFindUnidConsumidora := TfrmFindUnidConsumidora.Create(Self);
  frmFindUnidConsum.ShowModal;
  if glb_sCodigo <> '' then
     cdsUnidNav.FindKey([StrToInt(glb_sCodigo)]);
  //FreeAndNil(frmFindUnidConsumidora);
end;

procedure TfrmCadUnidConsumidora.cbTipoConsumoPropertiesChange(Sender: TObject);
begin
  if cds1.State = dsBrowse then exit;
  edNumHidrometro.Enabled := (cbTipoConsumo.ItemIndex = 0);
  edDtInstHidrometro.Enabled := edNumHidrometro.Enabled;
end;

procedure TfrmCadUnidConsumidora.cbTipoConsumoPropertiesCloseUp(
  Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmCadUnidConsumidora.cbTipoConsumoPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmCadUnidConsumidora.cbTipoPessoaPropertiesChange(Sender: TObject);
begin
{
  if cbTipoPessoa.ItemIndex = 0 then
  begin
     lblCPF_CNPJ.Caption := 'C.P.F.';
     edCPF_CNPJ.Properties.EditMask := '999.999.999-99;0; ';
     if cds1.State = dsInsert then sbFindPessoaFisica.Enabled:= True;
  end else
  begin
     lblCPF_CNPJ.Caption := 'C.N.P.J.';
     cbSexo.Text := '';
     edCPF_CNPJ.Properties.EditMask := '99.999.999/9999-99;0; ';
     if cds1.State = dsInsert then sbFindPessoaFisica.Enabled:= False;
  end;
  if cds1.state in [dsInsert,dsEdit] then
  begin
     gbPessoaFisica.Enabled:= (cbTipoPessoa.ItemIndex = 0);
     gbPessoaJuridica.Enabled:= not gbPessoaFisica.Enabled;
  end;
}
end;

procedure TfrmCadUnidConsumidora.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds1ID.AsString := IncrementGenerator('GEN_ID_UNID_CONSUMIDORA', 1);
  cds1ID.AsString := cds1ID.AsString + CalcDigito(FormatId(cds1ID.AsString,5),5);
  cds1FORMA_CALCULO.AsInteger := 0;
  cds1TIPO_UNID_CONSUM.AsInteger := 0;
  cbTipoConsumo.ItemIndex := 1;
  edNumHidrometro.Enabled := False;
  edDtInstHidrometro.Enabled := False;
  cds1SITUACAO.AsInteger := 0;
  cds1QTD_TORNEIRA.Value := 1;
  cds1MULTIPLICADOR.Value := 1;
end;

procedure TfrmCadUnidConsumidora.cds1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  if cds1.IsEmpty then exit;
  cbTipoConsumo.ItemIndex := cds1FORMA_CALCULO.AsInteger-1;
  cbCategoria.ItemIndex := cds1TIPO_UNID_CONSUM.AsInteger-1;
  cbSituacao.ItemIndex := cds1SITUACAO.AsInteger;
end;

procedure TfrmCadUnidConsumidora.cds1AfterScroll(DataSet: TDataSet);
begin
  if cds1.State in [dsInsert,dsEdit] then exit;
  cbTipoConsumo.ItemIndex := cds1FORMA_CALCULO.AsInteger-1;
  if cds1TIPO_PESSOA.Value = 'F' then
     Notebook1.PageIndex := 0
  else
     Notebook1.PageIndex := 1;
end;

procedure TfrmCadUnidConsumidora.cds1BeforeCancel(DataSet: TDataSet);
begin
   CancelGenerator(cds1.State,'UNID_CONSUMIDORA','ID',
      StrToInt(Copy(cds1ID.AsString,1,length(cds1ID.AsString)-1)));
end;

procedure TfrmCadUnidConsumidora.cds1BeforePost(DataSet: TDataSet);
begin
  inherited;
  if cds1ENDER_NUM.IsNull then
     cds1ENDER_NUM.Value := 0;
  if cds1ENDER_NUM_LETRA.IsNull then
     cds1ENDER_NUM_LETRA.Value := ' ';
  if cds1ENDER_NUM2.IsNull then
     cds1ENDER_NUM2.Value := 0;
  if cds1ENDER_NUM_LETRA2.IsNull then
     cds1ENDER_NUM_LETRA2.Value := ' ';
  cds1DT_LIGACAO.AsString := ValData(edDtLigacao.Text);
  cds1DT_INSTAL_HIDROM.AsString := ValData(edDtInstHidrometro.Text);
  cds1FORMA_CALCULO.AsInteger := cbTipoConsumo.ItemIndex + 1;
  cds1TIPO_UNID_CONSUM.AsInteger := cbCategoria.ItemIndex + 1;
  cds1SITUACAO.AsInteger := cbSituacao.ItemIndex;
end;

procedure TfrmCadUnidConsumidora.cdsUnidNavAfterScroll(DataSet: TDataSet);
begin
  if cdsUnidNav.IsEmpty then exit;
  cds1.Close;
  qry1.Params[0].Value := cdsUnidNavID.Value;
  cds1.Open;
  edDtLigacao.Text := cds1DT_LIGACAO.AsString;
  edDtInstHidrometro.Text := cds1DT_INSTAL_HIDROM.AsString;
end;

procedure TfrmCadUnidConsumidora.edEnderComplementoExit(Sender: TObject);
begin
  if (Empty(edEnderComplemento.Text)) or (cds1.State = dsBrowse) then exit;
  if (Trim(edEnderComplemento.Text) <> '') and (cds1ENDER_COMPLEMENTO.IsNull) then
      cds1ENDER_COMPLEMENTO2.Value := cds1ENDER_COMPLEMENTO.Value;
end;

procedure TfrmCadUnidConsumidora.edEnderIdLogradExit(Sender: TObject);
Var
  sDescricao: string[80];
begin
  if (Trim(TcxCustomTextEdit(Sender).Text)='') or (cds1.State = dsBrowse) then exit;
  case TcxCustomEdit(Sender).Tag of
     1: begin
        sDescricao := Pesquisa('LOGRADOURO','ID',edEnderIdLograd.Text,'DESCRICAO',
           'Logradouro NÃO Cadastrado !!!');
        cds1ENDER_DESCR_LOGRADOURO.Value := sDescricao;
        if (sDescricao <> '') and (cds1ENDER_ID_LOGRAD2.IsNull) then
        begin
           cds1ENDER_ID_LOGRAD2.Value := cds1ENDER_ID_LOGRAD.Value;
           cds1ENDER_DESCR_LOGRADOURO2.Value := sDescricao;
        end;
     end;
     2: begin
        sDescricao := Pesquisa('BAIRRO','ID',edEnderIdBairro.Text,'DESCRICAO','Bairro NÃO Cadastrado !!!');
        cds1ENDER_DESCR_BAIRRO.Value := sDescricao;
        if (sDescricao <> '') then
        begin
           cds1ENDER_ID_DISTRITO.AsString := Pesquisa('BAIRRO','ID',edEnderIdBairro.Text,'ID_DISTRITO','');
           cds1ENDER_DESCR_DISTRITO.AsString := Pesquisa('DISTRITO','ID',cds1ENDER_ID_DISTRITO.AsString,'DESCRICAO','');
           if cds1ENDER_ID_BAIRRO2.IsNull then
           begin
              cds1ENDER_ID_BAIRRO2.Value         := cds1ENDER_ID_BAIRRO.Value;
              cds1ENDER_DESCR_BAIRRO2.Value      := sDescricao;
              cds1ENDER_ID_DISTRITO2.AsString    := cds1ENDER_ID_DISTRITO.AsString;
              cds1ENDER_DESCR_DISTRITO2.AsString := cds1ENDER_DESCR_DISTRITO.AsString;
           end;
        end;
     end;
     4: begin
        sDescricao := Pesquisa('LOGRADOURO','ID',edEnderIdLograd2.Text,'DESCRICAO',
           'Logradouro NÃO Cadastrado !!!');
        cds1ENDER_DESCR_LOGRADOURO2.Value := sDescricao;
     end;
     5: begin
        sDescricao := Pesquisa('BAIRRO','ID',edEnderIdBairro2.Text,'DESCRICAO','Bairro NÃO Cadastrado !!!');
        cds1ENDER_DESCR_BAIRRO2.Value := sDescricao;
        if (sDescricao <> '') then
        begin
           cds1ENDER_ID_DISTRITO2.AsString    := Pesquisa('BAIRRO','ID',edEnderIdBairro2.Text,'ID_DISTRITO','');
           cds1ENDER_DESCR_DISTRITO2.AsString := Pesquisa('DISTRITO','ID',cds1ENDER_ID_DISTRITO2.AsString,'DESCRICAO','');
           cds1ENDER_DESCR_BAIRRO2.Value      := sDescricao;
        end;
     end;
  end;

  if sDescricao = '' then
     TcxCustomTextEdit(Sender).SetFocus;

end;

procedure TfrmCadUnidConsumidora.edEnderIdLogradKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if btnNovo.Enabled then exit;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
  begin
     case TCustomEdit(Sender).Tag of
        0: sbFindPessoa.Click;
        1: sbLogradouro.Click;
        2: sbBairro.Click;
        4: sbLogradouro2.Click;
        5: sbBairro2.Click;
     end;
  end;
end;

procedure TfrmCadUnidConsumidora.edEnderNumExit(Sender: TObject);
begin
   if (Empty(edEnderNum.Text)) or (cds1.State = dsBrowse) then exit;
   if (Trim(edEnderNum.Text) <> '') and (cds1ENDER_NUM2.IsNull) then
      cds1ENDER_NUM2.Value := cds1ENDER_NUM.Value;
end;

procedure TfrmCadUnidConsumidora.edEnderNumLetraExit(Sender: TObject);
begin
   if (Empty(edEnderNumLetra.Text)) or (cds1.State = dsBrowse) then exit;
   if (Trim(edEnderNumLetra.Text) <> '') and (cds1ENDER_NUM_LETRA2.IsNull) then
      cds1ENDER_NUM_LETRA2.Value := cds1ENDER_NUM_LETRA.Value;
end;

procedure TfrmCadUnidConsumidora.edIdPessoaExit(Sender: TObject);
Var
  sCPFCNPJ: string[14];
begin
  if (Empty(edIdPessoa.Text)) or (cds1.State = dsBrowse) then exit;
  sCPFCNPJ := Pesquisa('PESSOA','ID',edIdPessoa.Text,'CPF_CNPJ',
     'Pessoa NÃO Cadastrada !!!');
  if cds1.State = dsInsert then
  begin
     if sCPFCNPJ = '' then
        edIdPessoa.SetFocus
     else
        DadosPessoa(edIdPessoa.Text);
  end;
end;

procedure TfrmCadUnidConsumidora.edIdPessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmCadUnidConsumidora.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cds1.Close;
  cdsUnidNav.Close;
end;

procedure TfrmCadUnidConsumidora.FormCreate(Sender: TObject);
Var
  iConta: Integer;
begin
  inherited;
  Top := Top + 21;
  lblPadrao.Caption := '';
  pb_sNomeTab      := 'UNID_CONSUMIDORA';
  pb_sNomeCampoPK  := 'ID';
  pb_sTitJanela1   := 'UNIDADE CONSUMIDORA';
  pb_sTitJanela2   := 'CADASTRO DA UNIDADE CONSUMIDORA';
  pb_sConfirmExclui:= 'esta';
end;

procedure TfrmCadUnidConsumidora.FormShow(Sender: TObject);
begin
  cds1.IndexFieldNames := 'ID';
  cdsUnidNav.IndexFieldNames := 'ID';
  inherited;
  HabilitaBotoes(True);
  cdsUnidNav.Close;
  cdsUnidNav.Open;
  cdsUnidNav.Last;
  //edNome.SetFocus;
end;

procedure TfrmCadUnidConsumidora.sbConsultasClick(Sender: TObject);
begin
   frmListagemUnidConsumidora := TfrmListagemUnidConsumidora.Create(Self);
   frmListagemUnidConsumidora.Executa(cdsUnidNav);
   FreeAndNil(frmListagemUnidConsumidora);
end;

procedure TfrmCadUnidConsumidora.sbLogradouroClick(Sender: TObject);
Var
  iRet: Integer;
begin

  case TSpeedButton(Sender).Tag of
     0: begin
        frmFindPessoa := TfrmFindPessoa.Create(Self);
        frmFindPessoa.ShowModal;
        if glb_sCodigo <> '' then
        begin
           cds1ID_PESSOA.AsString := glb_sCodigo;
           DadosPessoa(glb_sCodigo);
        end;
        FreeAndNil(frmFindPessoa);
     end;
     1: begin
        frmSelecionaLogradouro := TfrmSelecionaLogradouro.Create(Self);
        iRet := frmSelecionaLogradouro.Executa(3,'LOGRADOURO','ID',True);
        if iRet > 0 then
           cds1ENDER_ID_LOGRAD.Value := iRet;
        edEnderIdLograd.SetFocus;
        FreeAndNil(frmSelecionaLogradouro);
     end;
     2: begin
        frmSelecionaBairro := TfrmSelecionaBairro.Create(Self);
        iRet := frmSelecionaBairro.Executa(3,'BAIRRO','ID',True);
        if iRet > 0 then
           cds1ENDER_ID_BAIRRO.Value := iRet;
        edEnderIdBairro.SetFocus;
        FreeAndNil(frmSelecionaBairro);
     end;
     4: begin
        frmSelecionaLogradouro := TfrmSelecionaLogradouro.Create(Self);
        iRet := frmSelecionaLogradouro.Executa(3,'LOGRADOURO','ID',True);
        if iRet > 0 then
           cds1ENDER_ID_LOGRAD2.Value := iRet;
        edEnderIdLograd2.SetFocus;
        FreeAndNil(frmSelecionaLogradouro);
     end;
     5: begin
        frmSelecionaBairro := TfrmSelecionaBairro.Create(Self);
        iRet := frmSelecionaBairro.Executa(3,'BAIRRO','ID',True);
        if iRet > 0 then
           cds1ENDER_ID_BAIRRO2.Value := iRet;
        edEnderIdBairro2.SetFocus;
        FreeAndNil(frmSelecionaBairro);
     end;
  end;

end;

Procedure TfrmCadUnidConsumidora.HabilitaBotoes(lOpcao: Boolean);
Var
   iConta: Integer;
   sTemp : string[3];
begin
   Nav1.Enabled            := lOpcao;
   btnNovo.Enabled         := lOpcao;
   btnAlterar.Enabled      := lOpcao;
   btnExcluir.Enabled      := lOpcao;
   btnPesquisar.Enabled    := lOpcao;
   btnEditPessoa.Enabled   := lOpcao;
   btnHistFinanc.Enabled   := lOpcao;
   btnGravar.Enabled       := not lOpcao;
   btnCancelar.Enabled     := not lOpcao;
   edIdPessoa.Properties.ReadOnly := lOpcao;
   edDtLigacao.Properties.ReadOnly := lOpcao;
   edNumLigacao.Properties.ReadOnly := lOpcao;
   cbTipoConsumo.Properties.ReadOnly := lOpcao;
   edQtdTorneiras.Properties.ReadOnly := lOpcao;
   edMultiplicador.Properties.ReadOnly := lOpcao;
   edNumHidrometro.Properties.ReadOnly := lOpcao;
   edDtInstHidrometro.Properties.ReadOnly := lOpcao;
   cbCategoria.Properties.ReadOnly := lOpcao;
   cbSituacao.Properties.ReadOnly := lOpcao;
   edEnderIdLograd.Properties.ReadOnly := lOpcao;
   edEnderNum.Properties.ReadOnly := lOpcao;
   edEnderNumLetra.Properties.ReadOnly := lOpcao;
   edEnderIdBairro.Properties.ReadOnly := lOpcao;
   edEnderIdLograd2.Properties.ReadOnly := lOpcao;
   edEnderNum2.Properties.ReadOnly := lOpcao;
   edEnderNumLetra2.Properties.ReadOnly := lOpcao;
   edEnderIdBairro2.Properties.ReadOnly := lOpcao;
   memObservacao.Properties.ReadOnly := lOpcao;
   sbFindPessoa.Enabled := not lOpcao;
   sbLogradouro.Enabled := not lOpcao;
   sbBairro.Enabled := not lOpcao;
   sbLogradouro2.Enabled := not lOpcao;
   sbBairro2.Enabled := not lOpcao;

   if lOpcao = True then
   begin
      sTemp := UsuarioPermissaoTabela(glb_iIdOperLogado,pb_sNomeTab);
      btnNovo.Enabled := (LeftStr(sTemp,1) = 'S');
      btnAlterar.Enabled := (Copy(sTemp,2,1) = 'S');
      btnExcluir.Enabled := (RightStr(sTemp,1) = 'S');
   end;

end;


Procedure TfrmCadUnidConsumidora.DadosPessoa(sId: string);
begin
   qryPessoa.Close;
   qryPessoa.Params[0].AsString := sId;
   qryPessoa.Open;
   cds1TIPO_PESSOA.Value      := qryPessoaTIPO.Value;
   cds1DESCR_TIPO_PESSOA.Value:= qryPessoaDESCR_TIPO_PESSOA.Value;
   cds1NOME_PESSOA.Value      := qryPessoaNOME_RAZAO_SOCIAL.Value;
   cds1CPF_CNPJ_FTDO.Value    := qryPessoaCPF_CNPJ_FTDO.Value;
   cds1NOME_FANTASIA.Value    := qryPessoaNOME_FANTASIA.Value;
   cds1RG_NUM.Value           := qryPessoaRG_NUM.Value;
   cds1RG_ORGAO_EMISSOR.Value := qryPessoaRG_ORGAO_EMISSOR.Value;
   cds1RG_UF.Value            := qryPessoaRG_UF.Value;
   cds1RG_DT_EMISSAO.Value    := qryPessoaRG_DT_EMISSAO.Value;
   cds1ENDER_ID_LOGRAD.Value  := qryPessoaENDER_ID_LOGRAD.Value;
   cds1ENDER_DESCR_LOGRADOURO.Value  := qryPessoaENDER_DESCR_LOGRAD.Value;
   cds1ENDER_NUM.Value        := qryPessoaENDER_NUM.Value;
   cds1ENDER_NUM_LETRA.Value  := qryPessoaENDER_NUM_LETRA.Value;
   cds1ENDER_ID_BAIRRO.Value  := qryPessoaENDER_ID_BAIRRO.Value;
   cds1ENDER_DESCR_BAIRRO.Value:= qryPessoaENDER_DESCR_BAIRRO.Value;
   cds1ENDER_ID_DISTRITO.Value:= qryPessoaENDER_ID_DISTRITO.Value;
   cds1ENDER_DESCR_DISTRITO.Value  := qryPessoaENDER_DESCR_DISTRITO.Value;
   if cds1TIPO_PESSOA.Value = 'F' then
      Notebook1.PageIndex := 0
   else
      Notebook1.PageIndex := 1;
end;

end.
