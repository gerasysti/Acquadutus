unit AddEditLanLeituraHidrometro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao2, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, Buttons,
  cxTextEdit, cxDBEdit, cxCheckBox, cxCalc, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, cxCalendar, cxCurrencyEdit;

type
  TfrmAddEditLanLeituraHidrom = class(TfrmAddEditPadrao2)
    edLeituraAnterior: TcxDBTextEdit;
    edObservacao: TcxDBTextEdit;
    edNomePessoa: TcxDBTextEdit;
    sbUnidConsum: TSpeedButton;
    qryLeituraAnter: TSQLQuery;
    qryUnidComsumidora: TSQLQuery;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel4: TcxLabel;
    edConsumo_m3: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    edDtLeitura: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edNumHidrometro: TcxDBTextEdit;
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
    edLeituraAtual: TcxDBCurrencyEdit;
    edIdUnidConsum: TcxMaskEdit;
    qryUnidComsumidoraENDER_UC_NUM_LETRA: TStringField;
    qry1ANO_MES: TStringField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1DT_LEITURA: TDateField;
    qry1LEITURA_ANTERIOR: TIntegerField;
    qry1LEITURA_ATUAL: TIntegerField;
    qry1CONSUMO_M3: TLargeintField;
    qry1OBSERVACAO: TStringField;
    qry1ID_SERVID_LEITURA: TIntegerField;
    qry1NOME_PESSOA: TStringField;
    qry1NUM_HIDROMETRO: TStringField;
    qry1ENDER_DESCR_LOGRAD: TStringField;
    qry1ENDER_NUM_LETRA: TStringField;
    qry1ENDER_COMPLEMENTO: TStringField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    cds1ANO_MES: TStringField;
    cds1ID_UNID_CONSUM: TIntegerField;
    cds1DT_LEITURA: TDateField;
    cds1LEITURA_ANTERIOR: TIntegerField;
    cds1LEITURA_ATUAL: TIntegerField;
    cds1CONSUMO_M3: TLargeintField;
    cds1OBSERVACAO: TStringField;
    cds1ID_SERVID_LEITURA: TIntegerField;
    cds1NOME_PESSOA: TStringField;
    cds1NUM_HIDROMETRO: TStringField;
    cds1ENDER_DESCR_LOGRAD: TStringField;
    cds1ENDER_NUM_LETRA: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    provLeituraAnter: TDataSetProvider;
    cdsLeituraAnter: TClientDataSet;
    cdsLeituraAnterANO_MES: TStringField;
    cdsLeituraAnterLEITURA_ATUAL: TIntegerField;
    cdsLeituraAnterCONSUMO_M3: TLargeintField;
    qryLeituraLancada: TSQLQuery;
    qryLeituraLancadaLEITURA_ATUAL: TIntegerField;
    qryLeituraLancadaCONSUMO_M3: TLargeintField;
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
    procedure edLeituraAtualExit(Sender: TObject);
    procedure cds1BeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure MostraEvento;
    Function LeituraJaLancada: Boolean;
  public
    { Public declarations }
  end;

var
  frmAddEditLanLeituraHidrom: TfrmAddEditLanLeituraHidrom;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, FindUnidConsumidora;

{$R *.dfm}

procedure TfrmAddEditLanLeituraHidrom.btnGravarClick(Sender: TObject);
begin
  if cds1.State = dsInsert then
  begin
    if LeituraJaLancada then exit; // Verica se o evento já está lançado pro Servidor no mês/ano ..
    cds1ID_UNID_CONSUM.AsString := ExtraiPonto(Trim(edIdUnidConsum.Text));
    cds1ANO_MES.Value := glb_sAnoMesTrab;
  end;
  cds1DT_LEITURA.Value := StrToDate(edDtLeitura.Text);
  inherited;
  pb_iIdAddEdit := cds1ID_UNID_CONSUM.Value
end;

procedure TfrmAddEditLanLeituraHidrom.cds1AfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dmPrincipal.GeraLog(cds1,iIf(pb_lAdd,'1','2'),'LEITURA_HIDROMETRO',
     pb_sFormCall,Self.Name);
end;

procedure TfrmAddEditLanLeituraHidrom.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds1LEITURA_ATUAL.AsCurrency := 0;
  cds1CONSUMO_M3.AsCurrency  := 0;
end;

procedure TfrmAddEditLanLeituraHidrom.cds1BeforePost(DataSet: TDataSet);
begin
  inherited;
  cds1DT_LEITURA.AsString := ValData(edDtLeitura.Text);
end;

procedure TfrmAddEditLanLeituraHidrom.edIdUnidConsumExit(Sender: TObject);
begin
  if Trim(ExtraiPonto(edIdUnidConsum.Text)) = '' then exit;
  edIdUnidConsum.Text := LeftSpace(Trim(edIdUnidConsum.Text),8);
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
  cds1NOME_PESSOA.Value := qryUnidComsumidoraNOME_PESSOA.Value;
  cds1NUM_HIDROMETRO.Value := qryUnidComsumidoraNUM_HIDROMETRO.Value;
  edEndereco.Text := qryUnidComsumidoraENDER_DESCR_LOGRAD.Value+', '+
     Trim(qryUnidComsumidoraENDER_UC_NUM_LETRA.Value)+' - '+
     qryUnidComsumidoraENDER_COMPLEMENTO.Value;
  edBairroDistrito.Text := qryUnidComsumidoraENDER_DESCR_BAIRRO.Value+' - '+
    qryUnidComsumidoraENDER_DESCR_DISTRITO.Value;
  if qryUnidComsumidoraENDER_ID_LOGRAD.Value <> pb_iId2 then
  begin
     Mensagem('Essa Unid. Consumidora é de outro Logradouro ...',
        'E r r o !!!',MB_ICONERROR+MB_OK);
     edIdUnidConsum.SetFocus;
     exit;
  end;
  if LeituraJaLancada then
  begin
     edIdUnidConsum.SetFocus;
     exit;
  end;

  if pb_lAdd then
  begin
     cdsLeituraAnter.Close;
     qryLeituraAnter.ParamByName('pAnoMes').Value       := glb_sAnoMesTrab;
     qryLeituraAnter.ParamByName('pUnidConsum').AsString:= Trim(ExtraiPonto(edIdUnidConsum.Text));
     cdsLeituraAnter.Open;
     cdsLeituraAnter.Last;
     try
        try
           cds1LEITURA_ANTERIOR.Value := cdsLeituraAnterLEITURA_ATUAL.Value;
           if cds1LEITURA_ANTERIOR.IsNull then
              cds1LEITURA_ANTERIOR.Value := 0;
        except
           cds1LEITURA_ANTERIOR.Value := 0;
        end;
     finally
        cdsLeituraAnter.Close;
     end;
  end;

end;

procedure TfrmAddEditLanLeituraHidrom.edIdUnidConsumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sbUnidConsum.Click
end;

procedure TfrmAddEditLanLeituraHidrom.edLeituraAtualExit(Sender: TObject);
begin
  if cds1LEITURA_ATUAL.Value >= cds1LEITURA_ANTERIOR.Value then
     cds1CONSUMO_M3.Value := cds1LEITURA_ATUAL.Value - cds1LEITURA_ANTERIOR.Value
  else begin
     Mensagem('A Leitura Atual NÃO pode ser Menor que a Anterior ...',
        'E r r o !!!',MB_OK+MB_ICONEXCLAMATION);
     edLeituraAtual.SetFocus;
  end;
end;

procedure TfrmAddEditLanLeituraHidrom.edIDServidorPropertiesChange(
  Sender: TObject);
begin
  if (not cds1.Active) or (cds1.State = dsBrowse) or
     (Trim(edIdUnidConsum.Text) <> '') then exit;
  cds1NOME_PESSOA.Value := '';
  cds1NUM_HIDROMETRO.Value := '';
  edEndereco.Text := '';
  edBairroDistrito.Text := '';
end;

procedure TfrmAddEditLanLeituraHidrom.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryUnidComsumidora.Close;
  qryLeituraLancada.Close;
  cdsLeituraAnter.Close;
  if (cds1.State in [dsInsert, dsEdit]) then
  begin
     cds1.Cancel;
     cds1.CancelUpdates;
  end;
  inherited;
end;

procedure TfrmAddEditLanLeituraHidrom.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'LEITURA_HIDROMETRO';
  //pb_sNomeCampoPK  := 'ID_EVENTO';
  pb_sNovoNova     := 'NOVO';
  pb_sTitJanela    := 'LANÇAMENTO DE LEITURA DE HIDRÔMETRO';
end;

procedure TfrmAddEditLanLeituraHidrom.FormShow(Sender: TObject);
begin
  inherited;

  Caption := iIf(pb_lAdd,'INCLUINDO NOVA LEITURA ...',
     'ALTERANDO LANÇAMENTO DE LEITURA ...');

  cds1.Close;
  qry1.ParamByName('pAnoMes').Value    := glb_sAnoMesTrab;
  qry1.ParamByName('pUnidConsum').Value:= pb_iId1;
  cds1.Open;

  if pb_lAdd then
     cds1.Insert
  else begin
     cds1.Edit;
     edDtLeitura.Text := cds1DT_LEITURA.AsString;
  end;

  if pb_iId1 > 0 then  // pb_iId1 = Id_Servidor
  begin
     edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleReadyOnly;
     edIdUnidConsum.Text := LeftSpace(IntToStr(pb_iId1),8);
     edEndereco.Text := Trim(cds1ENDER_DESCR_LOGRAD.Value)+', '+Trim(cds1ENDER_NUM_LETRA.Value)+' - '+
        cds1ENDER_COMPLEMENTO.Value;
     edBairroDistrito.Text := cds1ENDER_DESCR_BAIRRO.Value+' - '+cds1ENDER_DESCR_DISTRITO.Value;
     cds1ID_UNID_CONSUM.Value := pb_iId1;
     edIdUnidConsumExit(edIdUnidConsum);
  end else
  begin
     edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleNormal;
  end;
  edIdUnidConsum.Properties.ReadOnly:= not (pb_iId1=0);
  edIdUnidConsum.TabStop            := (pb_iId1=0);
  sbUnidConsum.Enabled              := (pb_iId1=0);

  if pb_iId1 = 0 then
     edIdUnidConsum.SetFocus
  else
     edDtLeitura.SetFocus;
end;

procedure TfrmAddEditLanLeituraHidrom.sbUnidConsumClick(Sender: TObject);
begin
  //frmFindUnidConsumidora := TfrmFindUnidConsumidora.Create(Self);
  frmFindUnidConsum.ShowModal;
  if glb_sCodigo <> '' then
     cds1ID_UNID_CONSUM.AsString := glb_sCodigo;
  edIdUnidConsum.SetFocus;
  //FreeAndNil(frmFindUnidConsumidora);
end;

Function TfrmAddEditLanLeituraHidrom.LeituraJaLancada: Boolean;
Var
  iQtdM3: integer;
begin
  Result := False;
  if (pb_lAdd = False) or
     (Trim(ExtraiPonto(edIdUnidConsum.Text))='') then exit;
  qryLeituraLancada.Close;
  qryLeituraLancada.ParamByName('pAnoMes').Value    := glb_sAnoMesTrab;
  qryLeituraLancada.ParamByName('pUnidConsum').AsString:=
     Trim(ExtraiPonto(edIdUnidConsum.Text));
  qryLeituraLancada.Open;
  try
     Result := (not qryLeituraLancadaCONSUMO_M3.IsNull);
     if Result = True then
        iQtdM3 := qryLeituraLancadaCONSUMO_M3.Value;
  finally
     qryLeituraLancada.Close;
  end;
  if Result = True then
     Mensagem('Já está lançada a Leitura pra essa'+#13+
              'Unidade Consumdora nesse Mês/ano.'+#13+
              IntToStr(iQtdM3)+' m³',
        'Aviso !!!',MB_ICONEXCLAMATION+MB_OK);
end;

Procedure TfrmAddEditLanLeituraHidrom.MostraEvento;
begin
end;

end.
