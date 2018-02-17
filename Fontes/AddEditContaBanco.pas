unit AddEditContaBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, cxControls, cxContainer, cxEdit, StdCtrls, cxMaskEdit,
  cxDBEdit, cxTextEdit, DB, DBClient, Provider, SqlExpr, cxClasses, cxStyles,
  cxGridTableView, cxButtons, ExtCtrls,
  cxLabel, dxSkinsCore, dxSkinsDefaultPainters, Buttons, cxCurrencyEdit, cxDropDownEdit, cxCalendar;

type
  TfrmAddEditContaBanco = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edDescricao: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edNumero: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    edIdEntidFinanc: TcxDBTextEdit;
    sbEntidFinanc: TSpeedButton;
    edNomeEntidFinanc: TcxDBTextEdit;
    qry1ID: TIntegerField;
    qry1DESCRICAO: TStringField;
    qry1NUMERO: TStringField;
    qry1AGENCIA: TStringField;
    qry1ID_ENTID_FINANC: TIntegerField;
    qry1DT_SALDO_ANTER: TDateField;
    qry1VAL_SALDO_ANTER: TFMTBCDField;
    qry1TIPO_SALDO_ANTER: TStringField;
    qry1VAL_LIMITE: TFMTBCDField;
    qry1CONTAB_CAIXA: TStringField;
    qry1NOME_ENTID_FINANC: TStringField;
    qry1DT_ULT_MOVIM: TDateField;
    qry1VAL_SALDO_ATUAL: TFMTBCDField;
    qry1TIPO_SALDO_ATUAL: TStringField;
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1NUMERO: TStringField;
    cds1AGENCIA: TStringField;
    cds1ID_ENTID_FINANC: TIntegerField;
    cds1DT_SALDO_ANTER: TDateField;
    cds1VAL_SALDO_ANTER: TFMTBCDField;
    cds1TIPO_SALDO_ANTER: TStringField;
    cds1VAL_LIMITE: TFMTBCDField;
    cds1CONTAB_CAIXA: TStringField;
    cds1NOME_ENTID_FINANC: TStringField;
    cds1DT_ULT_MOVIM: TDateField;
    cds1VAL_SALDO_ATUAL: TFMTBCDField;
    cds1TIPO_SALDO_ATUAL: TStringField;
    cxLabel4: TcxLabel;
    edAgencia: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    edDtSaldoAnter: TcxDateEdit;
    cxLabel6: TcxLabel;
    cbTipoSaldo: TcxComboBox;
    edVaSaldoAnter: TcxDBCurrencyEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edIdEntidFinancExit(Sender: TObject);
    procedure edIdEntidFinancKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbEntidFinancClick(Sender: TObject);
    procedure edIdEntidFinancKeyPress(Sender: TObject; var Key: Char);
    procedure cbCategoriaPropertiesCloseUp(Sender: TObject);
    procedure cbCategoriaPropertiesPopup(Sender: TObject);
    procedure cds1BeforeEdit(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure cds1BeforePost(DataSet: TDataSet);
    procedure cds1AfterInsert(DataSet: TDataSet);
  private
    function ValidDados: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddEditContaBanco: TfrmAddEditContaBanco;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, SelecionaPadrao;

{$R *.dfm}

procedure TfrmAddEditContaBanco.btnGravarClick(Sender: TObject);
begin
  if not ValidDados then exit;
  inherited;
end;

procedure TfrmAddEditContaBanco.cbCategoriaPropertiesCloseUp(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditContaBanco.cbCategoriaPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditContaBanco.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds1VAL_SALDO_ANTER.AsCurrency := 0;
end;

procedure TfrmAddEditContaBanco.cds1BeforeEdit(DataSet: TDataSet);
begin
  edDtSaldoAnter.Text := cds1DT_SALDO_ANTER.AsString;
  if cds1TIPO_SALDO_ANTER.Value = 'C' then
     cbTipoSaldo.ItemIndex := 0
  Else
     cbTipoSaldo.ItemIndex := 1;
end;

procedure TfrmAddEditContaBanco.cds1BeforePost(DataSet: TDataSet);
begin
   cds1DT_SALDO_ANTER.Value := StrToDate(edDtSaldoAnter.Text);
   cds1TIPO_SALDO_ANTER.Value := Iif(cbTipoSaldo.ItemIndex=0,'C','D');
end;

procedure TfrmAddEditContaBanco.edIdEntidFinancExit(Sender: TObject);
begin
  cds1NOME_ENTID_FINANC.Value := Pesquisa('ENTID_FINANC','ID',edIdEntidFinanc.Text,'NOME',
     'Entid. Financeira NÃO Cadastrada !!!');
  if cds1NOME_ENTID_FINANC.Value = '' then
     edIdEntidFinanc.SetFocus;
end;

procedure TfrmAddEditContaBanco.edIdEntidFinancKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
     sbEntidFinanc.Click;
end;

procedure TfrmAddEditContaBanco.edIdEntidFinancKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmAddEditContaBanco.FormCreate(Sender: TObject);
begin
   inherited;
   pb_sNomeTab      := 'CONTA_BANCO';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_CONTA_BANCO';
   pb_sTitJanela    := 'CONTA CORRENTE/BANCÁRIA';
   pb_sNovoNova     := 'NOVA';
end;

procedure TfrmAddEditContaBanco.FormShow(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;
end;

procedure TfrmAddEditContaBanco.sbEntidFinancClick(Sender: TObject);
begin
  frmSelecionaPadrao := TfrmSelecionaPadrao.Create(Self);
  if frmSelecionaPadrao.Executa('ENTID. FINANCEIRA','ENTID_FINANC','NOME',
     'ID','NOME',True) then
     cds1ID_ENTID_FINANC.AsString := glb_sCodigo;
  edIdEntidFinanc.SetFocus;
  FreeAndNil(frmSelecionaPadrao);
end;

function TfrmAddEditContaBanco.ValidDados: Boolean;
begin
   Result := False;
   if Empty(edDescricao.Text) then
      Mensagem('Falta a Descrição da Conta ...','AVISO !!!',MB_OK+MB_ICONWARNING)
   else if Empty(edNumero.Text) then
      Mensagem('Falta o Número da Conta ...','AVISO !!!',MB_OK+MB_ICONWARNING)
   else if Empty(edAgencia.Text) then
      Mensagem('Falta a Agência da Conta ...','AVISO !!!',MB_OK+MB_ICONWARNING)
   else if Empty(edIdEntidFinanc.Text) then
      Mensagem('Falta a Entid. Finaneira da Conta ...','AVISO !!!',MB_OK+MB_ICONWARNING)
   else if EmptyData(edDtSaldoAnter.Text) then
      Mensagem('Falta a Data do Saldo Anterior ...','AVISO !!!',MB_OK+MB_ICONWARNING)
   else
      Result := True;
end;

end.
