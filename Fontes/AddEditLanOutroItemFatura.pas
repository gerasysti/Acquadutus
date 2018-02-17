unit AddEditLanOutroItemFatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao2, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, Buttons,
  cxTextEdit, cxDBEdit, cxCheckBox, cxCalc, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, cxCalendar, cxCurrencyEdit, StrUtils, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ComCtrls, dxCore, cxDateUtils;

type
  TfrmAddEditLanOutroItem = class(TfrmAddEditPadrao2)
    edObservacao: TcxDBTextEdit;
    edNomePessoa: TcxDBTextEdit;
    sbUnidConsum: TSpeedButton;
    qryItemLancado: TSQLQuery;
    qryUnidComsumidora: TSQLQuery;
    cxLabel3: TcxLabel;
    cxLabel1: TcxLabel;
    edDtEvento: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edCPF_CNPJ: TcxDBTextEdit;
    edIdUnidConsum: TcxDBMaskEdit;
    cxLabel8: TcxLabel;
    edEndereco: TcxTextEdit;
    edBairroDistrito: TcxTextEdit;
    qryUnidComsumidoraNOME_PESSOA: TStringField;
    qryUnidComsumidoraENDER_DESCR_LOGRAD: TStringField;
    qryUnidComsumidoraENDER_NUM: TIntegerField;
    qryUnidComsumidoraENDER_NUM_LETRA: TStringField;
    qryUnidComsumidoraENDER_DESCR_BAIRRO: TStringField;
    qryUnidComsumidoraENDER_DESCR_DISTRITO: TStringField;
    qryUnidComsumidoraNUM_HIDROMETRO: TStringField;
    qryUnidComsumidoraENDER_COMPLEMENTO: TStringField;
    qryUnidComsumidoraENDER_ID_LOGRAD: TIntegerField;
    edValor: TcxDBCurrencyEdit;
    cxLabel9: TcxLabel;
    edDescrCategoria: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    edNumHidrometro: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    edIdItem: TcxDBMaskEdit;
    sbItem: TSpeedButton;
    edDescrItem: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cbTipo: TcxComboBox;
    edComplemento: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    qry1ANO_MES: TStringField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1ID_OUTRO: TIntegerField;
    qry1COMPLEMENTO: TStringField;
    qry1TIPO: TStringField;
    qry1DT_EVENTO: TDateField;
    qry1OBSERVACAO: TStringField;
    qry1DESCR_OUTRA_TARIFA: TStringField;
    qry1NOME_PESSOA: TStringField;
    qry1CPF_CNPJ_FTDO: TStringField;
    qry1NUM_HIDROMETRO: TStringField;
    qry1DESCR_TIPO_UNID_CONSUM: TStringField;
    cds1ANO_MES: TStringField;
    cds1ID_UNID_CONSUM: TIntegerField;
    cds1ID_OUTRO: TIntegerField;
    cds1COMPLEMENTO: TStringField;
    cds1TIPO: TStringField;
    cds1DT_EVENTO: TDateField;
    cds1OBSERVACAO: TStringField;
    cds1DESCR_OUTRA_TARIFA: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1CPF_CNPJ_FTDO: TStringField;
    cds1NUM_HIDROMETRO: TStringField;
    cds1DESCR_TIPO_UNID_CONSUM: TStringField;
    qryUnidComsumidoraCPF_CNPJ_FTDO: TStringField;
    qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM: TStringField;
    qry1VALOR: TFMTBCDField;
    cds1VALOR: TFMTBCDField;
    qryItemLancadoVALOR: TFMTBCDField;
    qryItemLancadoDT_EVENTO: TDateField;
    cxLabel2: TcxLabel;
    edMesAno: TcxMaskEdit;
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
    procedure edIdItemExit(Sender: TObject);
    procedure edMesAnoExit(Sender: TObject);
  private
    { Private declarations }
    function ValidaLanctoItem: Boolean;
  public
    { Public declarations }
    pb_sAnoMes: string[6];
  end;

var
  frmAddEditLanOutroItem: TfrmAddEditLanOutroItem;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, FindUnidConsumidora, SelecionaItemFatura;

{$R *.dfm}

procedure TfrmAddEditLanOutroItem.btnGravarClick(Sender: TObject);
begin
  if cds1.State = dsInsert then
  if Not ValidaLanctoItem then exit; // Verica se o evento já está lançado pro Servidor no mês/ano ..
  cds1ANO_MES.Value := RightStr(edMesAno.Text,4)+LeftStr(edMesAno.Text,2);
  inherited;
  pb_iIdAddEdit := cds1ID_UNID_CONSUM.Value
end;

procedure TfrmAddEditLanOutroItem.cbTipoPropertiesCloseUp(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditLanOutroItem.cbTipoPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditLanOutroItem.cds1AfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dmPrincipal.GeraLog(cds1,iIf(pb_lAdd,'1','2'),'LANCTO_OUTRO_ITEM',
     pb_sFormCall,Self.Name);
end;

procedure TfrmAddEditLanOutroItem.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  cds1VALOR.AsCurrency := 0;
  cbTipo.ItemIndex := 0;
end;

procedure TfrmAddEditLanOutroItem.cds1BeforePost(DataSet: TDataSet);
begin
  inherited;
  cds1DT_EVENTO.AsString := ValData(edDtEvento.Text);
  cds1TIPO.Value := iIf(cbTipo.ItemIndex=0,'D','C');
end;

procedure TfrmAddEditLanOutroItem.edIdUnidConsumExit(Sender: TObject);
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
  cds1NOME_PESSOA.Value := qryUnidComsumidoraNOME_PESSOA.Value;
  cds1NUM_HIDROMETRO.Value := qryUnidComsumidoraNUM_HIDROMETRO.Value;
  cds1CPF_CNPJ_FTDO.Value  := qryUnidComsumidoraCPF_CNPJ_FTDO.Value;
  cds1DESCR_TIPO_UNID_CONSUM.Value := qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM.Value;
  edEndereco.Text := qryUnidComsumidoraENDER_DESCR_LOGRAD.Value+
    iIf(qryUnidComsumidoraENDER_NUM.Value > 0,
        ', '+qryUnidComsumidoraENDER_NUM.AsString+
        qryUnidComsumidoraENDER_NUM_LETRA.Value,
        'S/N')+' '+qryUnidComsumidoraENDER_COMPLEMENTO.Value;
  edBairroDistrito.Text := qryUnidComsumidoraENDER_DESCR_BAIRRO.Value+' - '+
    qryUnidComsumidoraENDER_DESCR_DISTRITO.Value;
{
  if cds1.State = dsEdit then
     if ItemJaLancado then edIdUnidConsum.SetFocus;
}
end;

procedure TfrmAddEditLanOutroItem.edIdUnidConsumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     if TcxDBMaskEdit(Sender).Tag = 1 then
        sbUnidConsum.Click
     else
        sbItem.Click;
end;

procedure TfrmAddEditLanOutroItem.edMesAnoExit(Sender: TObject);
begin
  inherited;

  if Trim(ExtraiPonto(edMesAno.Text)) = '' then exit;

  if not ValidMesAno(edMesAno.Text) then
  begin
     edMesAno.SetFocus;
     exit;
  end;

  if Trim(edIdItem.Text) = '' then exit;

  if not ValidaLanctoItem then
  begin
     edMesAno.SetFocus;
     exit;
  end;

end;

procedure TfrmAddEditLanOutroItem.edIdItemExit(Sender: TObject);
begin
   if Trim(edIdItem.Text)='' then exit;
   cds1DESCR_OUTRA_TARIFA.Value := Pesquisa('TAB_OUTRA_TARIFA','ID',edIdItem.Text,
      'DESCRICAO','Identificador de Ítem de Fatura, inválido ...');

   if cds1.State = dsInsert then
      if cds1DESCR_OUTRA_TARIFA.Value <> '' then
      begin
         cds1VALOR.AsString := Pesquisa('TAB_OUTRA_TARIFA','ID',edIdItem.Text,'VALOR','');
         if not ValidaLanctoItem then
         begin
            edIdItem.SetFocus;
            Exit;
         end;
      end else
         edIdItem.SetFocus;
end;

procedure TfrmAddEditLanOutroItem.edIDServidorPropertiesChange(
  Sender: TObject);
begin
  if (not cds1.Active) or (cds1.State = dsBrowse) or
     (Trim(edIdUnidConsum.Text) <> '') then exit;
  cds1NOME_PESSOA.Value := '';
  cds1NUM_HIDROMETRO.Value := '';
  edEndereco.Text := '';
  edBairroDistrito.Text := '';
end;

procedure TfrmAddEditLanOutroItem.FormClose(Sender: TObject;
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

procedure TfrmAddEditLanOutroItem.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'LANCTO_OUTRO_ITEM';
  //pb_sNomeCampoPK  := 'ID_EVENTO';
  pb_sNovoNova     := 'NOVO';
  pb_sTitJanela    := 'LANÇAMENTO DE OUTROS ÍTENS DA FATURA ...';
end;

procedure TfrmAddEditLanOutroItem.FormShow(Sender: TObject);
begin
  inherited;

  Caption := iIf(pb_lAdd,'INCLUINDO NOVO ÍTEM ...',
     'ALTERANDO ÍTEM ...');

  edMesAno.Text := RightStr(pb_sAnoMes,2)+LeftStr(pb_sAnoMes,4);
  cds1.Close;
  qry1.ParamByName('pAnoMes').Value    := pb_sAnoMes;
  qry1.ParamByName('pUnidConsum').Value:= pb_iId1;
  qry1.ParamByName('pItem').Value      := pb_iId2;
  cds1.Open;

  if pb_lAdd then
     cds1.Insert
  else begin
     cds1.Edit;
     edDtEvento.Text := cds1DT_EVENTO.AsString;
     if cds1TIPO.Value = 'D' then
        cbTipo.ItemIndex := 0
     else
        cbTipo.ItemIndex := 1;
  end;

  if pb_iId1 > 0 then  // pb_iId1 = Id_Servidor
  begin
     edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleReadyOnly;
     edIdItem.Style.StyleController      := dmPrincipal.cxEditStyleReadyOnly;
     edMesAno.Style.StyleController      := dmPrincipal.cxEditStyleReadyOnly;

     cds1ID_UNID_CONSUM.Value := pb_iId1;
     edIdUnidConsumExit(edIdUnidConsum);
     cds1ID_OUTRO.Value := pb_iId2;
     edIdItemExit(edIdItem);

  end else
     edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleNormal;
  edIdUnidConsum.Properties.ReadOnly:= not (pb_iId1=0);
  edIdUnidConsum.TabStop            := (pb_iId1=0);
  sbUnidConsum.Enabled              := (pb_iId1=0);

  if pb_iId2 > 0 then  // pb_iId2 = Id do Ítem
  begin
     edIdItem.Style.StyleController:= dmPrincipal.cxEditStyleReadyOnly;
     cds1ID_OUTRO.Value := pb_iId2;
     edIdItemExit(edIdItem);
  end else
     edIdItem.Style.StyleController:= dmPrincipal.cxEditStyleNormal;
  edIdItem.Properties.ReadOnly:= not (pb_iId2=0);
  edIdItem.TabStop            := (pb_iId2=0);
  sbItem.Enabled              := (pb_iId2=0);

  if pb_iId1 = 0 then
     edIdUnidConsum.SetFocus
  else
     edValor.SetFocus;
end;

procedure TfrmAddEditLanOutroItem.sbUnidConsumClick(Sender: TObject);
Var
  iRet: Integer;
begin
  if TSpeedButton(Sender).Tag = 1 then
  begin
     //frmFindUnidConsumidora := TfrmFindUnidConsumidora.Create(Self);
     frmFindUnidConsum.ShowModal;
     if glb_sCodigo <> '' then
        cds1ID_UNID_CONSUM.AsString := glb_sCodigo;
     edIdUnidConsum.SetFocus;
     //FreeAndNil(frmFindUnidConsumidora);
  end else
  begin
     frmAddEditLanOutroItem := TfrmAddEditLanOutroItem.Create(Self);
     edIdItem.SetFocus;
     iRet := frmSelecionaItemFatura.Executa(2,'OUTRO ÍTEM DE FATURA','ID',True);
     if iRet > 0 then cds1ID_OUTRO.Value := iRet;
     FreeAndNil(frmSelecionaItemFatura);
  end;
end;

function TfrmAddEditLanOutroItem.ValidaLanctoItem: Boolean;
Var
  sMsg: string[60];
  sMes: string[2];
  sAno: string[4];
begin

  Result := True;
  if (pb_lAdd = False) or
     (Trim(ExtraiPonto(edIdUnidConsum.Text))='') then exit;

  sMes := LeftStr(edMesAno.Text,2);
  sAno := RightStr(edMesAno.Text,4);
  sMsg := '';

  qryItemLancado.Close;
  qryItemLancado.ParamByName('pAnoMes').Value := sAno+sMes;
  qryItemLancado.ParamByName('pUnidConsum').AsString:=
     Trim(ExtraiPonto(edIdUnidConsum.Text));
  qryItemLancado.ParamByName('pItem').AsString:= Trim(edIdItem.Text);
  qryItemLancado.Open;
  try
     If Not qryItemLancadoVALOR.IsNull then
     begin
        sMsg := 'Valor R$: '+FormatCurr(',0.00',qryItemLancadoVALOR.AsCurrency)+
          ' com data de '+qryItemLancadoDT_EVENTO.AsString;
     end;
  finally
     qryItemLancado.Close;
  end;

  if sMsg <> '' then
  begin
     Mensagem('Já está lançado esse Ítem pra essa'+#13+
              'Unidade Consumdora nesse Mês/ano.'+#13+
              sMsg,'Aviso !!!',
              MB_ICONEXCLAMATION+MB_OK);
     Result := False;
  end;

end;

end.
