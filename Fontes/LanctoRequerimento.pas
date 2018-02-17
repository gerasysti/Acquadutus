unit LanctoRequerimento;

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
  StrUtils, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxCore, cxDateUtils;

type
  TfrmLanctoRequerimento = class(TfrmCadPadrao)
    gbEndereco1: TcxGroupBox;
    Label12: TLabel;
    edId: TcxDBTextEdit;
    edIdServico: TcxDBTextEdit;
    Label13: TLabel;
    qryUnidNav: TSQLQuery;
    provUnidNav: TDataSetProvider;
    cdsUnidNav: TClientDataSet;
    dsUnidNav: TDataSource;
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
    edServidRespon: TcxDBTextEdit;
    Label17: TLabel;
    qryUnidNavID: TIntegerField;
    cdsUnidNavID: TIntegerField;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edDtReq: TcxDateEdit;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edDescrServico: TcxDBTextEdit;
    btnServico: TSpeedButton;
    LabelNome: TLabel;
    lblCPF_CNPJ: TLabel;
    sbUC: TSpeedButton;
    Label3: TLabel;
    edNome: TcxDBTextEdit;
    edCPF_CNPJ: TcxDBTextEdit;
    edIdUC: TcxMaskEdit;
    edDtDespacho: TcxDateEdit;
    Label11: TLabel;
    Label14: TLabel;
    memObservacao: TcxDBMemo;
    Label2: TLabel;
    edNumProtocol: TcxDBTextEdit;
    edNumLivro: TcxDBTextEdit;
    cbSituacao: TcxComboBox;
    qryUnidConsum: TSQLQuery;
    qryUnidConsumID: TIntegerField;
    qryUnidConsumID_PESSOA: TIntegerField;
    qryUnidConsumTIPO_PESSOA: TStringField;
    qryUnidConsumNUM_LIGACAO: TStringField;
    qryUnidConsumDT_LIGACAO: TDateField;
    qryUnidConsumSITUACAO: TStringField;
    qryUnidConsumENDER_ID_LOGRAD: TIntegerField;
    qryUnidConsumENDER_NUM: TIntegerField;
    qryUnidConsumENDER_NUM_LETRA: TStringField;
    qryUnidConsumENDER_COMPLEMENTO: TStringField;
    qryUnidConsumENDER_ID_BAIRRO: TIntegerField;
    qryUnidConsumENDER_ID_DISTRITO: TIntegerField;
    qryUnidConsumENDER_ID_LOGRAD2: TIntegerField;
    qryUnidConsumENDER_NUM2: TIntegerField;
    qryUnidConsumENDER_NUM_LETRA2: TStringField;
    qryUnidConsumENDER_COMPLEMENTO2: TStringField;
    qryUnidConsumENDER_ID_BAIRRO2: TIntegerField;
    qryUnidConsumENDER_ID_DISTRITO2: TIntegerField;
    qryUnidConsumTIPO_UNID_CONSUM: TStringField;
    qryUnidConsumFORMA_CALCULO: TStringField;
    qryUnidConsumNUM_HIDROMETRO: TStringField;
    qryUnidConsumDT_INSTAL_HIDROM: TDateField;
    qryUnidConsumQTD_TORNEIRA: TIntegerField;
    qryUnidConsumMULTIPLICADOR: TIntegerField;
    qryUnidConsumOBSERV_FATURA: TStringField;
    qryUnidConsumOBSERVACAO: TMemoField;
    qryUnidConsumENDER_DESCR_BAIRRO: TStringField;
    qryUnidConsumENDER_DESCR_LOGRADOURO: TStringField;
    qryUnidConsumENDER_DESCR_BAIRRO2: TStringField;
    qryUnidConsumENDER_DESCR_LOGRADOURO2: TStringField;
    qryUnidConsumNOME_PESSOA: TStringField;
    qryUnidConsumCPF_CNPJ: TStringField;
    qryUnidConsumCPF_CNPJ_FTDO: TStringField;
    qryUnidConsumDESCR_TIPO_PESSOA: TStringField;
    qryUnidConsumNOME_FANTASIA: TStringField;
    qryUnidConsumRG_NUM: TStringField;
    qryUnidConsumRG_ORGAO_EMISSOR: TStringField;
    qryUnidConsumRG_UF: TStringField;
    qryUnidConsumRG_DT_EMISSAO: TDateField;
    qryUnidConsumENDER_DESCR_DISTRITO: TStringField;
    qryUnidConsumENDER_DESCR_DISTRITO2: TStringField;
    qryUnidConsumENDER_DESCR_LOGRAD: TStringField;
    qryUnidConsumENDER_DESCR_LOGRAD2: TStringField;
    qryUnidConsumDESCR_FORMA_CALCULO: TStringField;
    qryUnidConsumDESCR_TIPO_UNID_CONSUM: TStringField;
    qryUnidConsumDESCR_SITUACAO: TStringField;
    qryUnidConsumENDER_UC_NUM_LETRA: TStringField;
    qryUnidConsumENDER_UC_NUM_LETRA2: TStringField;
    qryUnidConsumDT_ULT_CORTE: TDateField;
    qryUnidConsumDT_ULT_RELIG: TDateField;
    edEndereco: TcxTextEdit;
    edBairro: TcxTextEdit;
    edDistrito: TcxTextEdit;
    qry1ID: TIntegerField;
    qry1DATA_REQUER: TDateField;
    qry1ID_PESSOA: TIntegerField;
    qry1ID_SERVICO: TIntegerField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1NUM_PROTOCOLO: TStringField;
    qry1NUM_LIVRO: TStringField;
    qry1DATA_PROTOCOL: TDateField;
    qry1DATA_DESPACHO: TDateField;
    qry1SITUACAO: TStringField;
    qry1SERVID_RESPONSAV: TStringField;
    qry1OBSERVACAO: TStringField;
    qry1DESCR_SERVICO: TStringField;
    qry1NOME_PESSOA: TStringField;
    qry1ENDER_ID_LOGRAD: TIntegerField;
    qry1ENDER_NUM_LETRA: TStringField;
    qry1ENDER_ID_BAIRRO: TIntegerField;
    qry1ENDER_ID_DISTRITO: TIntegerField;
    qry1ENDER_DESCR_LOGRAD: TStringField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    qry1ENDER_COMPLEMENTO: TStringField;
    qry1CPF_CNPJ: TStringField;
    cds1ID: TIntegerField;
    cds1DATA_REQUER: TDateField;
    cds1ID_PESSOA: TIntegerField;
    cds1ID_SERVICO: TIntegerField;
    cds1ID_UNID_CONSUM: TIntegerField;
    cds1NUM_PROTOCOLO: TStringField;
    cds1NUM_LIVRO: TStringField;
    cds1DATA_PROTOCOL: TDateField;
    cds1DATA_DESPACHO: TDateField;
    cds1SITUACAO: TStringField;
    cds1SERVID_RESPONSAV: TStringField;
    cds1OBSERVACAO: TStringField;
    cds1DESCR_SERVICO: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1ENDER_ID_LOGRAD: TIntegerField;
    cds1ENDER_NUM_LETRA: TStringField;
    cds1ENDER_ID_BAIRRO: TIntegerField;
    cds1ENDER_ID_DISTRITO: TIntegerField;
    cds1ENDER_DESCR_LOGRAD: TStringField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    cds1CPF_CNPJ: TStringField;
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
    procedure edIdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cdsUnidNavAfterScroll(DataSet: TDataSet);
    procedure cds1AfterOpen(DataSet: TDataSet);
    procedure cds1BeforePost(DataSet: TDataSet);
    procedure cbTipoConsumoPropertiesCloseUp(Sender: TObject);
    procedure cbTipoConsumoPropertiesPopup(Sender: TObject);
    procedure edIdExit(Sender: TObject);
    procedure edIdServicoExit(Sender: TObject);
    procedure edEnderNumLetraExit(Sender: TObject);
    procedure sbConsultasClick(Sender: TObject);
    procedure cds1AfterScroll(DataSet: TDataSet);
    procedure edIdUCExit(Sender: TObject);
    procedure btnServicoClick(Sender: TObject);
    procedure edIdServicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edIdUCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    Procedure HabilitaBotoes(lOpcao: Boolean);
    procedure DadosPessoa(sId: string);
  public
    { Public declarations }
  end;

var
  frmLanctoRequerimento: TfrmLanctoRequerimento;

implementation

uses gsLib, UtilsDb, VarGlobais, FindPessoa, FindUnidConsumidora, udmPrincipal,
  FindRequerimento, udmRelDoctos, SelecionaServicoRequerimento;

{$R *.dfm}

procedure TfrmLanctoRequerimento.btnCancelarClick(Sender: TObject);
Var
  iIdTemp: integer;
begin
  iIdTemp := cds1ID.Value;
  inherited;
  HabilitaBotoes(True);
  cds1.FindKey([iIdTemp]);
  //gb1.SetFocus;
  Panel1.Caption := 'Modo Consulta ...';

end;

procedure TfrmLanctoRequerimento.btnGravarClick(Sender: TObject);
Var
  iConta: Integer;
  sCPF_CNPJ: string;
  sIdPessoa: String;
begin
  if Not Confirma('Gravar '+iIf(CDS1.State=dsInsert,'Novo '+
     pb_sTitJanela1,'Alerações')+' ?') then exit;
  sIdPessoa := Pesquisa('UNID_CONSUMIDORA','ID',edIdUC.Text,'ID_PESSOA','');
  cds1ID_PESSOA.AsString  := sIdPessoa;
  cds1DATA_REQUER.Value   := StrToDate(edDtReq.Text);
  cds1ID_UNID_CONSUM.Value:= StrToInt(edIdUC.Text);
  cds1SITUACAO.Value      := IntToStr(cbSituacao.ItemIndex+1);
  if not EmptyData(edDtDespacho.Text) then
     cds1DATA_DESPACHO.Value := StrToDate(edDtDespacho.Text);
  inherited;
  HabilitaBotoes(True);
end;

procedure TfrmLanctoRequerimento.btnImprimirClick(Sender: TObject);
begin
  dmRelDoctos := TdmRelDoctos.Create(Self);
  dmRelDoctos.ImprimeRequerimento(cds1ID.Value,True);
  FreeAndNil(dmRelDoctos);
end;

procedure TfrmLanctoRequerimento.btnNovoClick(Sender: TObject);
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
  edDtReq.SetFocus;
end;

procedure TfrmLanctoRequerimento.btnPesquisarClick(Sender: TObject);
begin
  if cds1.State <> dsBrowse then exit;
  frmFindRequerimento := TfrmFindRequerimento.Create(Self);
  frmFindRequerimento.ShowModal;
  if glb_sCodigo <> '' then
     cdsUnidNav.FindKey([StrToInt(glb_sCodigo)]);
  FreeAndNil(frmFindRequerimento);
end;

procedure TfrmLanctoRequerimento.btnServicoClick(Sender: TObject);
Var
  iRet: Integer;
begin
  frmSelecionaServicoRequerim := TfrmSelecionaServicoRequerim.Create(Self);
  case TSpeedButton(Sender).Tag of
     1: begin
        frmSelecionaServicoRequerim := TfrmSelecionaServicoRequerim.Create(Self);
        iRet := frmSelecionaServicoRequerim.Executa(2,'SERVIÇO REQUERIDO','ID',True);
        if iRet > 0 then cds1ID_SERVICO.Value := iRet;
        edIdServico.SetFocus;
        FreeAndNil(frmSelecionaServicoRequerim);
     end;
     2: begin
        frmFindUnidConsum.ShowModal;
        if glb_sCodigo <> '' then
           edIdUC.Text := glb_sCodigo;
        edIdUC.SetFocus;
     end;
  end;
  FreeAndNil(frmSelecionaServicoRequerim);

end;

procedure TfrmLanctoRequerimento.cbTipoConsumoPropertiesCloseUp(
  Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmLanctoRequerimento.cbTipoConsumoPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmLanctoRequerimento.cbTipoPessoaPropertiesChange(Sender: TObject);
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

procedure TfrmLanctoRequerimento.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds1ID.AsString := IncrementGenerator('GEN_ID_REQUERIMENTO', 1);
  edIdUC.Text := '';
  //cds1TIPO_UNID_CONSUM.AsInteger := 0;
  //cds1SITUACAO.AsInteger := 0;
  //cds1QTD_TORNEIRA.Value := 1;
  //cds1MULTIPLICADOR.Value := 1;
end;

procedure TfrmLanctoRequerimento.cds1AfterOpen(DataSet: TDataSet);
begin
  inherited;
  if cds1.IsEmpty then exit;
  //cbTipoConsumo.ItemIndex := cds1FORMA_CALCULO.AsInteger-1;
  //cbCategoria.ItemIndex := cds1TIPO_UNID_CONSUM.AsInteger-1;
  cbSituacao.ItemIndex := cds1SITUACAO.AsInteger;
end;

procedure TfrmLanctoRequerimento.cds1AfterScroll(DataSet: TDataSet);
begin
  //cbTipoConsumo.ItemIndex := cds1FORMA_CALCULO.AsInteger-1;
  //if cds1TIPO_PESSOA.Value = 'F' then
  //   Notebook1.PageIndex := 0
  //else
  //   Notebook1.PageIndex := 1;
  if cds1.State <> dsBrowse then exit;
  edDtReq.Text:= cds1DATA_REQUER.AsString;
  edIdUC.Text := LeftSpace(Trim(cds1ID_UNID_CONSUM.AsString),8);
  edDtDespacho.Text := cds1DATA_DESPACHO.AsString;
  try
     cbSituacao.ItemIndex := cds1SITUACAO.AsInteger-1;
  except
     cbSituacao.ItemIndex := 0;
  end;
  edEndereco.Text := cds1ENDER_DESCR_LOGRAD.Value+
    iIf(Trim(cds1ender_NUM_LETRA.Value)<>'',
        ', '+cds1ENDER_NUM_LETRA.AsString,
        'S/N')+' '+cds1ENDER_COMPLEMENTO.Value;
  edBairro.Text   := cds1ENDER_DESCR_BAIRRO.Value;
  edDistrito.Text := cds1ENDER_DESCR_DISTRITO.Value;

end;

procedure TfrmLanctoRequerimento.cds1BeforeCancel(DataSet: TDataSet);
begin
   CancelGenerator(cds1.State,'REQUERIMENTO','ID',StrToInt(cds1ID.AsString));
end;

procedure TfrmLanctoRequerimento.cds1BeforePost(DataSet: TDataSet);
begin
  inherited;
  //   cds1ENDER_NUM_LETRA.Value := ' ';
  //if cds1ENDER_NUM2.IsNull then
  //   cds1ENDER_NUM2.Value := 0;
  //if cds1ENDER_NUM_LETRA2.IsNull then
  //   cds1ENDER_NUM_LETRA2.Value := ' ';
  //cds1DT_LIGACAO.AsString := ValData(edDtLigacao.Text);
  //cds1DT_INSTAL_HIDROM.AsString := ValData(edDtInstHidrometro.Text);
  //cds1FORMA_CALCULO.AsInteger := cbTipoConsumo.ItemIndex + 1;
  //cds1TIPO_UNID_CONSUM.AsInteger := cbCategoria.ItemIndex + 1;
  //cds1SITUACAO.AsInteger := cbSituacao.ItemIndex;
end;

procedure TfrmLanctoRequerimento.cdsUnidNavAfterScroll(DataSet: TDataSet);
begin
  if cdsUnidNav.IsEmpty then exit;
  cds1.Close;
  qry1.Params[0].Value := cdsUnidNavID.Value;
  cds1.Open;
  //edDtLigacao.Text := cds1DT_LIGACAO.AsString;
  //edDtInstHidrometro.Text := cds1DT_INSTAL_HIDROM.AsString;
end;

procedure TfrmLanctoRequerimento.edIdExit(Sender: TObject);
Var
  sDescricao: string[80];
begin
  if (Trim(TcxCustomTextEdit(Sender).Text)='') or (cds1.State = dsBrowse) then exit;
{
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
        sDescricao := Pesquisa('BAIRRO','ID',edEnderIdBairro.Text,'DESCRICAO',
           'Bairro NÃO Cadastrado !!!');
        cds1ENDER_DESCR_BAIRRO.Value := sDescricao;
        if (sDescricao <> '') and (cds1ENDER_ID_BAIRRO2.IsNull) then
        begin
           cds1ENDER_ID_BAIRRO2.Value := cds1ENDER_ID_BAIRRO.Value;
           cds1ENDER_DESCR_BAIRRO2.Value := sDescricao;
        end;
     end;
     3: begin
        sDescricao := Pesquisa('DISTRITO','ID',edEnderIdDistrito.Text,'DESCRICAO',
           'Distrito NÃO Cadastrado !!!');
        cds1ENDER_DESCR_DISTRITO.Value := sDescricao;
        if (sDescricao <> '') and (cds1ENDER_ID_DISTRITO2.IsNull) then
        begin
           cds1ENDER_ID_DISTRITO2.Value := cds1ENDER_ID_DISTRITO.Value;
           cds1ENDER_DESCR_DISTRITO2.Value := sDescricao;
        end;
     end;
     4: begin
        sDescricao := Pesquisa('LOGRADOURO','ID',edEnderIdLograd2.Text,'DESCRICAO',
           'Logradouro NÃO Cadastrado !!!');
        cds1ENDER_DESCR_LOGRADOURO2.Value := sDescricao;
     end;
     5: begin
        sDescricao := Pesquisa('BAIRRO','ID',edEnderIdBairro2.Text,'DESCRICAO',
           'Bairro NÃO Cadastrado !!!');
        cds1ENDER_DESCR_BAIRRO2.Value := sDescricao;
     end;
     6: begin
        sDescricao := Pesquisa('DISTRITO','ID',edEnderIdDistrito2.Text,'DESCRICAO',
           'Distrito NÃO Cadastrado !!!');
        cds1ENDER_DESCR_DISTRITO2.Value := sDescricao;
     end;
  end;
  }

  if sDescricao = '' then
     TcxCustomTextEdit(Sender).SetFocus;

end;

procedure TfrmLanctoRequerimento.edIdKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if btnNovo.Enabled then exit;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
  begin
     {case TCustomEdit(Sender).Tag of
        0: sbFindPessoa.Click;
        1: sbLogradouro.Click;
        2: sbBairro.Click;
        3: sbDistrito.Click;
        4: sbLogradouro2.Click;
        5: sbBairro2.Click;
        6: sbDistrito2.Click;

     end;}
  end;
end;

procedure TfrmLanctoRequerimento.edIdServicoExit(Sender: TObject);
begin
   if (Empty(edIdServico.Text)) or (cds1.State = dsBrowse) then exit;
   edDescrServico.Text := Pesquisa('TAB_SERVIC_REQUER','ID',edIdServico.Text,'DESCRICAO',
      'Identificador de Serviço NÃO Cadastrado ...');
   if edDescrServico.Text = '' then
      edIdServico.SetFocus;
end;

procedure TfrmLanctoRequerimento.edIdServicoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     btnServico.Click;
end;

procedure TfrmLanctoRequerimento.edIdUCExit(Sender: TObject);
Var
  iIdUC: Integer;
begin
  if Trim(ExtraiPonto(edIdUC.Text)) = '' then exit;
  edIdUC.Text := LeftSpace(Trim(edIdUC.Text),8);
  iIdUC := StrToInt(Trim(ExtraiPonto(edIdUC.Text)));
  qryUnidConsum.Close;
  qryUnidConsum.Params[0].Value := iIdUC;
  qryUnidConsum.Open;
  if qryUnidConsumNOME_PESSOA.IsNull then
  begin
     Mensagem('Identificador de Unid. Consumidora, inválido ...',
        'E r r o !!!',MB_ICONERROR+MB_OK);
     edIdUC.SetFocus;
     exit;
  end;
  cds1NOME_PESSOA.Value    := qryUnidConsumNOME_PESSOA.Value;
  cds1CPF_CNPJ.Value       := qryUnidConsumCPF_CNPJ_FTDO.Value;
  edEndereco.Text := qryUnidConsumENDER_DESCR_LOGRADOURO.Value+
    iIf(Trim(qryUnidConsumENDER_UC_NUM_LETRA.Value)<>'',
        ', '+qryUnidConsumENDER_UC_NUM_LETRA.AsString,
        'S/N')+' '+qryUnidConsumENDER_COMPLEMENTO.Value;
  edBairro.Text := qryUnidConsumENDER_DESCR_BAIRRO.Value;
  edDistrito.Text:= qryUnidConsumENDER_DESCR_DISTRITO.Value;

end;

procedure TfrmLanctoRequerimento.edIdUCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sbUC.Click;
end;

procedure TfrmLanctoRequerimento.edEnderNumLetraExit(Sender: TObject);
begin
{
   if (Empty(edEnderNumLetra.Text)) or (cds1.State = dsBrowse) then exit;
   if (Trim(edEnderNumLetra.Text) <> '') and (cds1ENDER_NUM_LETRA2.IsNull) then
      cds1ENDER_NUM_LETRA2.Value := cds1ENDER_NUM_LETRA.Value;
}
end;

procedure TfrmLanctoRequerimento.edIdPessoaExit(Sender: TObject);
Var
  sCPFCNPJ: string[14];
begin
{
  if (Empty(edIdPessoa.Text)) or (cds1.State = dsBrowse) then exit;
  sCPFCNPJ := Pesquisa('PESSOA','ID',edIdPessoa.Text,'CPF_CNPJ',
     'Pessoa NÃO Cadastrada !!!');
  if sCPFCNPJ = '' then
     edIdPessoa.SetFocus
  else
     DadosPessoa(edIdPessoa.Text);
}
end;

procedure TfrmLanctoRequerimento.edIdPessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmLanctoRequerimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cds1.Close;
  cdsUnidNav.Close;
end;

procedure TfrmLanctoRequerimento.FormCreate(Sender: TObject);
Var
  iConta: Integer;
begin
  inherited;
  Top := Top + 21;
  lblPadrao.Caption := '';
  pb_sNomeTab      := 'REQUERIMENTO';
  pb_sNomeCampoPK  := 'ID';
  pb_sTitJanela1   := 'REQUERIMENTO';
  pb_sTitJanela2   := 'LANÇAMENTOS DE REQUERIMENTOS ...';
  pb_sConfirmExclui:= 'este';
end;

procedure TfrmLanctoRequerimento.FormShow(Sender: TObject);
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

procedure TfrmLanctoRequerimento.sbConsultasClick(Sender: TObject);
begin
{
   frmListagemUnidConsumidora := TfrmListagemUnidConsumidora.Create(Self);
   frmListagemUnidConsumidora.Executa(cdsUnidNav);
   FreeAndNil(frmListagemUnidConsumidora);
}
end;

Procedure TfrmLanctoRequerimento.HabilitaBotoes(lOpcao: Boolean);
Var
   iConta: Integer;
   sTemp: string[3];
begin
   Nav1.Enabled            := lOpcao;
   btnNovo.Enabled         := lOpcao;
   btnAlterar.Enabled      := lOpcao;
   btnExcluir.Enabled      := lOpcao;
   btnPesquisar.Enabled    := lOpcao;
   //btnEditPessoa.Enabled   := lOpcao;
   //btnHistFaturas.Enabled  := lOpcao;
   btnGravar.Enabled       := not lOpcao;
   btnCancelar.Enabled     := not lOpcao;
{
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
   edEnderIdDistrito.Properties.ReadOnly := lOpcao;
   edEnderIdLograd2.Properties.ReadOnly := lOpcao;
   edEnderNum2.Properties.ReadOnly := lOpcao;
   edEnderNumLetra2.Properties.ReadOnly := lOpcao;
   edEnderIdBairro2.Properties.ReadOnly := lOpcao;
   edEnderIdDistrito2.Properties.ReadOnly := lOpcao;
   memObservacao.Properties.ReadOnly := lOpcao;
   sbFindPessoa.Enabled := not lOpcao;
   sbLogradouro.Enabled := not lOpcao;
   sbBairro.Enabled := not lOpcao;
   sbDistrito.Enabled := not lOpcao;
   sbLogradouro2.Enabled := not lOpcao;
   sbBairro2.Enabled := not lOpcao;
   sbDistrito2.Enabled := not lOpcao;
   }

   if lOpcao = True then
   begin
     sTemp := UsuarioPermissaoTabela(glb_iIdOperLogado,'REQUERIMENTO');
     btnNovo.Enabled := LeftStr(sTemp,1)='S';
     btnAlterar.Enabled := Copy(sTemp,2,1)='S';
     btnExcluir.Enabled := RightStr(sTemp,1)='S';
   end;

end;


Procedure TfrmLanctoRequerimento.DadosPessoa(sId: string);
begin
   qryPessoa.Close;
   qryPessoa.Params[0].AsString := sId;
   qryPessoa.Open;
{
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
}
end;

end.
