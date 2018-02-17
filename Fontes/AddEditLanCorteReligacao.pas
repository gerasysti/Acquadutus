unit AddEditLanCorteReligacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao2, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, Buttons,
  cxTextEdit, cxDBEdit, cxCheckBox, cxCalc, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, cxCalendar, cxCurrencyEdit;

type
  TfrmAddEditLanCorteReligacao = class(TfrmAddEditPadrao2)
    edObservacao: TcxDBTextEdit;
    edNomePessoa: TcxDBTextEdit;
    sbUnidConsum: TSpeedButton;
    qryUnidComsumidora: TSQLQuery;
    cxLabel1: TcxLabel;
    edDtMovim: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edCPF_CNPJ: TcxDBTextEdit;
    edIdUnidConsum: TcxDBMaskEdit;
    cxLabel8: TcxLabel;
    edEndereco: TcxTextEdit;
    edBairroDistrito: TcxTextEdit;
    qryUnidComsumidoraNOME_PESSOA: TStringField;
    qryUnidComsumidoraENDER_DESCR_LOGRAD: TStringField;
    qryUnidComsumidoraENDER_DESCR_BAIRRO: TStringField;
    qryUnidComsumidoraENDER_DESCR_DISTRITO: TStringField;
    qryUnidComsumidoraNUM_HIDROMETRO: TStringField;
    qryUnidComsumidoraENDER_COMPLEMENTO: TStringField;
    qryUnidComsumidoraENDER_ID_LOGRAD: TIntegerField;
    cxLabel9: TcxLabel;
    edDescrCategoria: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cbTipoMovim: TcxComboBox;
    qryUnidComsumidoraCPF_CNPJ_FTDO: TStringField;
    qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM: TStringField;
    cxLabel2: TcxLabel;
    qry1ID: TIntegerField;
    qry1TIPO_MOVIM: TStringField;
    qry1DT_MOVIM: TDateField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1MOTIVO: TIntegerField;
    qry1OBSERVACAO: TStringField;
    qry1NOME_PESSOA: TStringField;
    qry1DESCR_CATEGORIA: TStringField;
    qry1CPF_CNPJ: TStringField;
    qry1DESCR_TIPO_MOVIM: TStringField;
    qry1ANO_MES: TStringField;
    qry1ENDER_DESCR_LOGRADOURO: TStringField;
    qry1ENDER_COMPLEMENTO: TStringField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    cds1ID: TIntegerField;
    cds1TIPO_MOVIM: TStringField;
    cds1DT_MOVIM: TDateField;
    cds1ID_UNID_CONSUM: TIntegerField;
    cds1MOTIVO: TIntegerField;
    cds1OBSERVACAO: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1DESCR_CATEGORIA: TStringField;
    cds1CPF_CNPJ: TStringField;
    cds1DESCR_TIPO_MOVIM: TStringField;
    cds1ANO_MES: TStringField;
    cds1ENDER_DESCR_LOGRADOURO: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    qry1DESCR_TIPO_PESSOA: TStringField;
    cds1DESCR_TIPO_PESSOA: TStringField;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    qryUnidComsumidoraDESCR_TIPO_PESSOA: TStringField;
    qryUnidComsumidoraENDER_NUM_LETRA: TStringField;
    cxLabel4: TcxLabel;
    edId: TcxDBMaskEdit;
    qry1ENDER_NUM_LETRA: TStringField;
    cds1ENDER_NUM_LETRA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cds1AfterInsert(DataSet: TDataSet);
    procedure sbUnidConsumClick(Sender: TObject);
    procedure edIDServidorPropertiesChange(Sender: TObject);
    procedure edIdUnidConsumExit(Sender: TObject);
    procedure edIdUnidConsumKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cds1AfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure cds1BeforePost(DataSet: TDataSet);
    procedure cbTipoPropertiesCloseUp(Sender: TObject);
    procedure cbTipoPropertiesPopup(Sender: TObject);
    procedure cds1BeforeCancel(DataSet: TDataSet);
  private
    { Private declarations }
    Function ItemJaLancado: Boolean;
  public
    { Public declarations }
  end;

var
  frmAddEditLanCorteReligacao: TfrmAddEditLanCorteReligacao;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, FindUnidConsumidora;

{$R *.dfm}

procedure TfrmAddEditLanCorteReligacao.btnGravarClick(Sender: TObject);
begin
  if cds1.State = dsInsert then
  begin
     //if ItemJaLancado then exit; // Verica se o evento já está lançado pro Servidor no mês/ano ..
     cds1ANO_MES.Value := glb_sAnoMesTrab;
  end;
  inherited;
  pb_iIdAddEdit := cds1ID_UNID_CONSUM.Value
end;

procedure TfrmAddEditLanCorteReligacao.cbTipoPropertiesCloseUp(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditLanCorteReligacao.cbTipoPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditLanCorteReligacao.cds1AfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dmPrincipal.GeraLog(cds1,iIf(pb_lAdd,'1','2'),'LANCTO_CORTE_RELIGACAO',
     pb_sFormCall,Self.Name);
end;

procedure TfrmAddEditLanCorteReligacao.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds1ID.AsString := IncrementGenerator('GEN_ID_LANCTO_CORTE_RELIG', 1);
  cbTipoMovim.ItemIndex := 0;
  cds1MOTIVO.Value := 1;
end;

procedure TfrmAddEditLanCorteReligacao.cds1BeforeCancel(DataSet: TDataSet);
begin
   inherited;
   CancelGenerator(Self.cds1.State,Self.pb_sNomeTab,'ID',Self.cds1ID.Value);
end;

procedure TfrmAddEditLanCorteReligacao.cds1BeforePost(DataSet: TDataSet);
begin
  inherited;
  cds1DT_MOVIM.AsString := ValData(edDtMovim.Text);
  cds1TIPO_MOVIM.Value := iIf(cbTipoMovim.ItemIndex=0,'1','2');
end;

procedure TfrmAddEditLanCorteReligacao.edIdUnidConsumExit(Sender: TObject);
begin
  if Trim(ExtraiPonto(edIdUnidConsum.Text)) = '' then exit;
  qryUnidComsumidora.Close;
  qryUnidComsumidora.Params[0].AsString := Trim(ExtraiPonto(edIdUnidConsum.Text));
  qryUnidComsumidora.Open;
  if qryUnidComsumidoraNOME_PESSOA.IsNull then
  begin
     Mensagem('Identificador de Unid. Consumidora, inválido ...',
        'E r r o !!!',MB_ICONERROR+MB_OK);
     edIdUnidConsum.SetFocus;
     exit;
  end;
  cds1NOME_PESSOA.Value    := qryUnidComsumidoraNOME_PESSOA.Value;
  cds1DESCR_TIPO_PESSOA.Value := qryUnidComsumidoraDESCR_TIPO_PESSOA.Value;
  cds1CPF_CNPJ.Value       := qryUnidComsumidoraCPF_CNPJ_FTDO.Value;
  cds1DESCR_CATEGORIA.Value:= qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM.Value;
  edEndereco.Text := qryUnidComsumidoraENDER_DESCR_LOGRAD.Value+
    iIf(Trim(qryUnidComsumidoraENDER_NUM_LETRA.Value)<>'',
        ', '+qryUnidComsumidoraENDER_NUM_LETRA.AsString,
        'S/N')+' '+qryUnidComsumidoraENDER_COMPLEMENTO.Value;
  edBairroDistrito.Text := qryUnidComsumidoraENDER_DESCR_BAIRRO.Value+' - '+
    qryUnidComsumidoraENDER_DESCR_DISTRITO.Value;
  edDescrCategoria.Text := qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM.Value;

  //if ItemJaLancado then edIdUnidConsum.SetFocus;

end;

procedure TfrmAddEditLanCorteReligacao.edIdUnidConsumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     if TcxDBMaskEdit(Sender).Tag = 1 then
        sbUnidConsum.Click;
end;

procedure TfrmAddEditLanCorteReligacao.edIDServidorPropertiesChange(
  Sender: TObject);
begin
  if (not cds1.Active) or (cds1.State = dsBrowse) or
     (Trim(edIdUnidConsum.Text) <> '') then exit;
  cds1NOME_PESSOA.Value := '';
  edEndereco.Text := '';
  edBairroDistrito.Text := '';
end;

procedure TfrmAddEditLanCorteReligacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryUnidComsumidora.Close;
  //qryLeituraLancada.Close;
  if (cds1.State in [dsInsert, dsEdit]) then
  begin
     cds1.Cancel;
     cds1.CancelUpdates;
  end;
  inherited;
end;

procedure TfrmAddEditLanCorteReligacao.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'LANCTO_CORTE_RELIGACAO';
  pb_sNomeGenerator:= 'GEN_ID_LANCTO_CORTE_RELIG';
  pb_sNovoNova     := 'NOVO';
  pb_sTitJanela    := 'LANÇAMENTO DE CORTE OU RELIGAÇÃO ...';
end;

procedure TfrmAddEditLanCorteReligacao.FormShow(Sender: TObject);
begin
  inherited;

  Caption := iIf(pb_lAdd,'INCLUINDO NOVO LANÇAMENTO ...',
     'ALTERANDO LANÇAMENTO ...');

  cds1.Close;
  qry1.ParamByName('pId').Value := pb_iId1;
  cds1.Open;

  if pb_lAdd then
     cds1.Insert
  else begin
     cds1.Edit;
     edDtMovim.Text := cds1DT_MOVIM.AsString;
     if cds1TIPO_MOVIM.Value = '1' then
        cbTipoMovim.ItemIndex := 0
     else
        cbTipoMovim.ItemIndex := 1;
  end;

  if pb_iId1 > 0 then  // pb_iId1 = Id_UC
  begin
     edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleReadyOnly;
     cds1ID_UNID_CONSUM.Value := pb_iId2;
     edIdUnidConsumExit(edIdUnidConsum);
     cbTipoMovim.Enabled := False;
  end else
     edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleNormal;
  edIdUnidConsum.Properties.ReadOnly:= not (pb_iId1=0);
  edIdUnidConsum.TabStop            := (pb_iId1=0);
  sbUnidConsum.Enabled              := (pb_iId1=0);

  if pb_iId1 = 0 then
     edIdUnidConsum.SetFocus
  else
     edDtMovim.SetFocus;
end;

procedure TfrmAddEditLanCorteReligacao.sbUnidConsumClick(Sender: TObject);
begin
  if TSpeedButton(Sender).Tag = 1 then
  begin
     //frmFindUnidConsumidora := TfrmFindUnidConsumidora.Create(Self);
     frmFindUnidConsum.ShowModal;
     if glb_sCodigo <> '' then
        cds1ID_UNID_CONSUM.AsString := glb_sCodigo;
     edIdUnidConsum.SetFocus;
     //FreeAndNil(frmFindUnidConsumidora);
  end;
end;

Function TfrmAddEditLanCorteReligacao.ItemJaLancado: Boolean;
Var
  sMsg: string[60];
begin
{
  Result := False;
  if (pb_lAdd = False) or
     (Trim(ExtraiPonto(edIdUnidConsum.Text))='') then exit;
  qryItemLancado.Close;
  qryItemLancado.ParamByName('pAnoMes').Value    := glb_sAnoMesTrab;
  qryItemLancado.ParamByName('pUnidConsum').AsString:=
     Trim(ExtraiPonto(edIdUnidConsum.Text));
  qryItemLancado.Open;
  try
     Result := (not qryItemLancadoVALOR.IsNull);
     if Result = True then
     begin
        sMsg := 'Valor R$: '+FormatCurr(',0.00',qryItemLancadoVALOR.AsCurrency)+
          ' com data de '+qryItemLancadoDT_EVENTO.AsString;
     end;
  finally
     qryItemLancado.Close;
  end;
  if Result = True then
     Mensagem('Já está lançado esse Ítem pra essa'+#13+
              'Unidade Consumdora nesse Mês/ano.'+#13+
              sMsg,
        'Aviso !!!',MB_ICONEXCLAMATION+MB_OK);
}
end;

end.
