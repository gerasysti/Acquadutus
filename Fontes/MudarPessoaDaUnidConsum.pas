unit MudarPessoaDaUnidConsum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxMaskEdit, cxTextEdit, Buttons, cxDBEdit, StdCtrls, cxButtons,
  ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr, cxDropDownEdit, cxCalendar, cxMemo,
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
  dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TfrmMudarPessoaUC = class(TfrmPadrao1)
    Panel1: TPanel;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    LabelId: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    sbFindPessoaNova: TSpeedButton;
    Label7: TLabel;
    edIdUC: TcxTextEdit;
    edNumLigacao: TcxTextEdit;
    edCPF_CNPJ_PessoaAtual: TcxMaskEdit;
    edDtLigacao: TcxDateEdit;
    edCPF_CNPJ_PessoaNova: TcxMaskEdit;
    Label4: TLabel;
    edDtTransf: TcxDateEdit;
    qryUnidComsumidora: TSQLQuery;
    qryUnidComsumidoraNOME_PESSOA: TStringField;
    qryUnidComsumidoraENDER_DESCR_LOGRAD: TStringField;
    qryUnidComsumidoraENDER_UC_NUM_LETRA: TStringField;
    qryUnidComsumidoraENDER_DESCR_BAIRRO: TStringField;
    qryUnidComsumidoraENDER_DESCR_DISTRITO: TStringField;
    qryUnidComsumidoraNUM_LIGACAO: TStringField;
    qryUnidComsumidoraENDER_COMPLEMENTO: TStringField;
    qryUnidComsumidoraENDER_ID_LOGRAD: TIntegerField;
    qryUnidComsumidoraCPF_CNPJ_FTDO: TStringField;
    qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM: TStringField;
    qryUnidComsumidoraID_PESSOA: TIntegerField;
    qryUnidComsumidoraDT_LIGACAO: TDateField;
    qryUnidComsumidoraTIPO_PESSOA: TStringField;
    qryUnidComsumidoraCPF_CNPJ: TStringField;
    Label8: TLabel;
    ds1: TDataSource;
    Label9: TLabel;
    edEnderDescrLograd: TcxDBTextEdit;
    dsUC: TDataSource;
    edEnderNum: TcxDBTextEdit;
    edEnderDescrBairro: TcxDBTextEdit;
    edEnderComplemen: TcxDBTextEdit;
    edEnderDescrDistrito: TcxDBTextEdit;
    Label10: TLabel;
    qryDeb: TSQLQuery;
    provDeb: TDataSetProvider;
    cdsDeb: TClientDataSet;
    cdsDebANO_MES: TStringField;
    cdsDebVAL_TOTAL: TFMTBCDField;
    edIdPessoaAtual: TcxTextEdit;
    edNomePessoaAtual: TcxTextEdit;
    edIdPessoaNova: TcxTextEdit;
    edObservacao: TcxMemo;
    edId: TcxTextEdit;
    edNomePessoaNova: TcxTextEdit;
    Label11: TLabel;
    Label12: TLabel;
    edDtRequer: TcxDateEdit;
    edNumRequer: TcxTextEdit;
    procedure edIdUCKeyPress(Sender: TObject; var Key: Char);
    procedure edIdUCExit(Sender: TObject);
    procedure edCPF_CNPJ_PessoaAtualExit(Sender: TObject);
    procedure edNumLigacaoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edIdPessoaNovaExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure sbFindPessoaNovaClick(Sender: TObject);
    procedure edIdPessoaNovaPropertiesChange(Sender: TObject);
    procedure edIdPessoaNovaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCPF_CNPJ_PessoaNovaExit(Sender: TObject);
    procedure edNumRequerExit(Sender: TObject);
  private
    pv_sState: String[1];
    function ValidDados: Boolean;
    procedure AlteraIdPessoaUC;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMudarPessoaUC: TfrmMudarPessoaUC;

implementation

uses udmPrincipal, gsLib, VarGlobais, UtilsDb, FindPessoa;

{$R *.dfm}

procedure TfrmMudarPessoaUC.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMudarPessoaUC.btnGravarClick(Sender: TObject);
Var
  lSalvar: Boolean;
  sDebAnter: string[1];
  sAnoMesDebAnter: string[6];
  sDtTransf: string[30];
  sTextSQL_Save: Widestring;
  sErro: String[1];
begin

  if not ValidDados then Exit;

  Screen.Cursor := crHourGlass;

  sErro := '0';
  cdsDeb.Close;
  qryDeb.Params[0].AsString := Trim(edIdUC.Text);
  cdsDeb.IndexFieldNames := 'ANO_MES';
  cdsDeb.Open;
  if (not cdsDebVAL_TOTAL.IsNull) or
     (cdsDebVAL_TOTAL.AsCurrency > 0) then
  begin
     lSalvar := Confirma('ATENNÇÃO !!!'+#13+'Esta Unidade Consumidora tem Débito(s) Anterior(es), '+#13+' '+#13+
        'Deseja Efetivar a Transferência mesmo assim ?');
     sDebAnter := 'S';
     cdsDeb.Last;
     sAnoMesDebAnter := cdsDebANO_MES.Value;
  end else
  begin
     lSalvar := Confirma('Efetivar Transferencia ?');
     sDebAnter := 'N';
     sAnoMesDebAnter := '';
  end;

  Screen.Cursor := crDefault;

  if lSalvar then
  begin

     sDtTransf := StringReplace(edDtTransf.Text,'/','.',[rfIgnoreCase]);
     sDtTransf := StringReplace(sDtTransf,'/','.',[rfIgnoreCase]);
     sDtTransf := 'cast('+QuotedStr(sDtTransf)+' as date)';

     sTextSQL_Save := 'insert into hist_transf_uc_pessoa(id,ID_UNID_CONSUM,DT_TRANSF,ID_PESSOA_ANTER, '+
        'ID_PESSOA_ATUAL, DEBITO_ANTERIOR, ANO_MES_DEB_ANTER, ID_USUARIO, OBSERVACAO, id_requerimento) '+
        'values('+Trim(edId.Text)+', '+Trim(edIdUC.Text)+', '+sDtTransf+', '+Trim(edIdPessoaAtual.Text)+', '+
        Trim(edIdPessoaNova.Text)+', '+QuotedStr(sDebAnter)+', '+QuotedStr(sAnoMesDebAnter)+', '+
        IntToStr(glb_iIdOperLogado)+', '+QuotedStr(edObservacao.Text)+', '+Trim(edNumRequer.Text)+')';

     Try
       dmPrincipal.SConPrincipal.ExecuteDirect(sTextSQL_Save);
       AlteraIdPessoaUC;
       Mensagem('Transferência efetuada com Sucesso ...','AVISO !!!',MB_OK+MB_ICONINFORMATION);
     Except
       sErro := '1';
     End;

     {
     cdsHistTransfID_UNID_CONSUM.AsString := Trim(edIdUC.Text);
     cdsHistTransfDT_TRANSF.Value := StrToDate(edDtTransf.Text);
     cdsHistTransfID_PESSOA_ANTER.Value := qryUnidComsumidoraID_PESSOA.Value;
     cdsHistTransfDEBITO_ANTERIOR.Value :=
     if cdsHistTransfDEBITO_ANTERIOR.Value = 'S' then
        cdsHistTransfANO_MES_DEB_ANTER.Value :=
     cdsHistTransfID_USUARIO.Value := glb_iIdOperLogado;
     SalvaTransacao(cdsHistTransf);
     }
     if sErro = '0' then
     Begin
       pv_sState := '0';
       Close;
     End else
       Mensagem('Ao tentar Salvar a Transferência ...','ERRO !!!',MB_OK+MB_ICONERROR);

  end;

end;

procedure TfrmMudarPessoaUC.edCPF_CNPJ_PessoaAtualExit(Sender: TObject);
Var
  iTemp2: Currency;
begin

  if Empty(ExtraiPonto(edCPF_CNPJ_PessoaAtual.Text)) then exit;

  if not qryUnidComsumidora.Active then exit;

  if Trim(ExtraiPonto(edCPF_CNPJ_PessoaAtual.Text)) =
     Trim(qryUnidComsumidoraCPF_CNPJ.Value) then exit;

  iTemp2 := StrToCurr(Trim(ExtraiPonto(edCPF_CNPJ_PessoaAtual.Text)));

  if qryUnidComsumidoraTIPO_PESSOA.Value = 'F' then
  begin
     if not ValidCPF(edCPF_CNPJ_PessoaAtual.Text,True) then
     begin
        edCPF_CNPJ_PessoaAtual.SetFocus;
        exit;
     end;
  end else
  begin
     if not ValidaCGC(edCPF_CNPJ_PessoaAtual.Text,True) then
     begin
        edCPF_CNPJ_PessoaAtual.SetFocus;
        exit;
     end;
  end;

  if ExtraiPonto(edCPF_CNPJ_PessoaAtual.Text) <> Trim(qryUnidComsumidoraCPF_CNPJ.Value) then
  begin
     Mensagem('CPF/CNPJ NÃO corresponde ao do(a) Proprietário(a) atual ...','AVISO !!!',MB_OK+MB_ICONINFORMATION);
     edCPF_CNPJ_PessoaAtual.SetFocus;
     exit;
  end;

end;

procedure TfrmMudarPessoaUC.edCPF_CNPJ_PessoaNovaExit(Sender: TObject);
Var
  iTemp2: Currency;
  sTipoPessoa: String[1];
  sCPF_CNPJ_Temp: string[14];
  lCPF_CNPJ_Ok: Boolean;
begin

  if Trim(ExtraiPonto(edCPF_CNPJ_PessoaNova.Text)) = '' then Exit;

  iTemp2 := StrToCurr(Trim(ExtraiPonto(edCPF_CNPJ_PessoaNova.Text)));

  lCPF_CNPJ_Ok := True;

  sTipoPessoa := Pesquisa('PESSOA','ID',edIdPessoaNova.Text,'TIPO','');
  if sTipoPessoa = 'F' then
  begin
     if not ValidCPF(edCPF_CNPJ_PessoaNova.Text,True) then
        lCPF_CNPJ_Ok := False;
  end else
  begin
     if not ValidaCGC(edCPF_CNPJ_PessoaNova.Text,True) then
        lCPF_CNPJ_Ok := False;
  end;

  if lCPF_CNPJ_Ok then
  begin
     sCPF_CNPJ_Temp := Pesquisa('PESSOA','ID',edIdPessoaNova.Text,'CPF_CNPJ','');
     if Trim(sCPF_CNPJ_Temp) <> Trim(ExtraiPonto(edCPF_CNPJ_PessoaNova.Text)) then
     Begin
        Mensagem('CPF/CNPJ informado difere do CPF/CNPJ da Pessoa a Transferir ...','AVISO !!!',
           MB_OK+MB_ICONINFORMATION);
        lCPF_CNPJ_Ok := False;
     End;
  End;

  if not lCPF_CNPJ_Ok then
     edCPF_CNPJ_PessoaNova.SetFocus;

end;

procedure TfrmMudarPessoaUC.edIdPessoaNovaExit(Sender: TObject);
Var
   sTipoPessoa: string[1];
begin

   if Empty(edIdPessoaNova.Text) then exit;

   if (Trim(edIdPessoaAtual.Text)) = (Trim(edIdPessoaNova.Text)) then
   begin
     Mensagem('Identificador do Novo Proprietário (Pessoa), é o mesmo do Atual ...','AVISO !!!',
         MB_OK+MB_ICONINFORMATION);
     edIdPessoaNova.SetFocus;
     exit;
   end;

   edNomePessoaNova.Text := Pesquisa('PESSOA','ID',edIdPessoaNova.Text,'NOME_RAZAO_SOCIAL','');

   if edNomePessoaNova.Text = '' then
   Begin
     Mensagem('Identificador do Novo Proprietário (Pessoa), inválido ...','AVISO !!!',MB_OK+MB_ICONINFORMATION);
     edIdPessoaNova.SetFocus;
     exit;
   End;

   sTipoPessoa := Pesquisa('PESSOA','ID',edIdPessoaNova.Text,'TIPO','');

   if sTipoPessoa = 'F' then
      edCPF_CNPJ_PessoaNova.Properties.EditMask := '999.999.999-99;0; '
   else
      edCPF_CNPJ_PessoaNova.Properties.EditMask := '99.999.999/9999-99;0; ';

end;

procedure TfrmMudarPessoaUC.edIdPessoaNovaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
     sbFindPessoaNova.Click;
end;

procedure TfrmMudarPessoaUC.edIdPessoaNovaPropertiesChange(Sender: TObject);
begin
  if Trim(edIdPessoaNova.Text) = '' then
     edNomePessoaNova.Text := '';
end;

procedure TfrmMudarPessoaUC.edIdUCExit(Sender: TObject);
begin

  if Trim(ExtraiPonto(edIdUC.Text)) = '' then exit;

  qryUnidComsumidora.Close;
  qryUnidComsumidora.Params[0].AsString := Trim(ExtraiPonto(edIdUC.Text));
  qryUnidComsumidora.Open;
  if qryUnidComsumidoraNOME_PESSOA.IsNull then
  begin
     qryUnidComsumidora.Close;
     Mensagem('Identificador de Unid. Consumidora, inválido ...','E R R O !!!',MB_ICONERROR+MB_OK);
     edIdUC.SetFocus;
     exit;
  end;
  edDtLigacao.Text := qryUnidComsumidoraDT_LIGACAO.AsString;
  if qryUnidComsumidoraTIPO_PESSOA.Value = 'F' then
     edCPF_CNPJ_PessoaAtual.Properties.EditMask := '999.999.999-99;0; '
  else
     edCPF_CNPJ_PessoaAtual.Properties.EditMask := '99.999.999/9999-99;0; ';

end;

procedure TfrmMudarPessoaUC.edIdUCKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmMudarPessoaUC.edNumLigacaoExit(Sender: TObject);
Var
  lNumLigOk: Boolean;
begin

  if Empty(edNumLigacao.Text) then exit;

  if not qryUnidComsumidora.Active then exit;

  lNumLigOk := False;
  if (qryUnidComsumidoraNUM_LIGACAO.IsNull) or
     (Trim(qryUnidComsumidoraNUM_LIGACAO.AsString)='') then
  begin
     if Trim(edNumLigacao.Text) = '0' then
        lNumLigOk := True;
  end else
  begin
     if StrToInt(Trim(qryUnidComsumidoraNUM_LIGACAO.Value)) = StrToInt(Trim(edNumLigacao.Text)) then
        lNumLigOk := True;
  end;

  if not lNumLigOk then
  begin
     Mensagem('Nº de Ligação da Unid. Consumidora, inválido ...','E R R O !!!',MB_ICONERROR+MB_OK);
     edNumLigacao.SetFocus;
     exit;
  end;

  edIdPessoaAtual.Text := qryUnidComsumidoraID_PESSOA.AsString;
  edNomePessoaAtual.Text := qryUnidComsumidoraNOME_PESSOA.AsString;

end;

procedure TfrmMudarPessoaUC.edNumRequerExit(Sender: TObject);
Var
  sIdPessoaRequer: string[11];
begin

  if Trim(edNumRequer.Text)='' then Exit;

  edDtRequer.Text := Pesquisa('REQUERIMENTO','ID',edNumRequer.Text,'DATA_REQUER',
     'Nº de Requerimento Inválido ...');

  if EmptyData(edDtRequer.Text) then
  begin
     edNumRequer.SetFocus;
     exit;
  end;

  sIdPessoaRequer := Pesquisa('REQUERIMENTO','ID',edNumRequer.Text,'ID_PESSOA','');

  if (Trim(sIdPessoaRequer) <> Trim(edIdPessoaAtual.Text)) and
     (Trim(sIdPessoaRequer) <> Trim(edIdPessoaNova.Text)) then
  begin
     Mensagem('Nº de Requerimento que NÃO Corresponde ao '+#13+
        'Proprietário (Pessoa) Atual e nem ao Novo ...',
        'E R R O !!!',MB_ICONERROR+MB_OK);
     edIdUC.SetFocus;
  end;

end;

procedure TfrmMudarPessoaUC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if pv_sState = '1' then
     CancelGenerator(TDataSetState(3),'HIST_TRANSF_UC_PESSOA','ID',StrToInt(edId.Text));
  qryUnidComsumidora.Close;
  cdsDeb.Close;

end;

procedure TfrmMudarPessoaUC.FormShow(Sender: TObject);
begin
  inherited;

  pv_sState := '1';
  edId.Text := IncrementGenerator('GEN_ID_HIST_TRANSF_UC_PESSOA',1);
  edDtTransf.Text := DateToStr(Date);
  edIdUC.SetFocus;

end;

procedure TfrmMudarPessoaUC.sbFindPessoaNovaClick(Sender: TObject);
begin
   frmFindPessoa := TfrmFindPessoa.Create(Self);
   frmFindPessoa.ShowModal;
   if glb_sCodigo <> '' then
   begin
      edIdPessoaNova.Text := glb_sCodigo;
      edNomePessoaNova.Text := Pesquisa('PESSOA','ID',glb_sCodigo,'NOME_RAZAO_SOCIAL','');
   end;
   FreeAndNil(frmFindPessoa);
end;

function TfrmMudarPessoaUC.ValidDados: Boolean;
begin

   Result := False;

   if Empty(edIdUC.Text) then
      edId.SetFocus
   else if Empty(ExtraiPonto(edCPF_CNPJ_PessoaAtual.Text)) then
      edCPF_CNPJ_PessoaAtual.SetFocus
   else if Empty(edIdUC.Text) then
      edNumLigacao.SetFocus
   else if Empty(edIdPessoaNova.Text) then
      edIdPessoaNova.SetFocus
   else if Empty(ExtraiPonto(edCPF_CNPJ_PessoaNova.Text)) then
      edCPF_CNPJ_PessoaNova.SetFocus
   else if EmptyData(edDtTransf.Text) then
      edDtTransf.SetFocus
   else if Empty(edNumRequer.Text) then
      edNumRequer.SetFocus
   else
      Result := True;

end;

procedure TfrmMudarPessoaUC.AlteraIdPessoaUC;
Var
  sTextSQL: String;
begin

  sTextSQL := 'UPDATE UNID_CONSUMIDORA SET ID_PESSOA = '+Trim(edIdPessoaNova.Text)+' '+
     'WHERE ID = '+Trim(edIdUC.Text);

  dmPrincipal.SConPrincipal.ExecuteDirect(sTextSQL);

end;


end.
