unit AddEditLanPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao2, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls,
  cxControls, cxContainer, cxEdit, cxMaskEdit, cxDropDownEdit, Buttons,
  cxTextEdit, cxDBEdit, cxCheckBox, cxCalc, cxLabel, dxSkinsCore, StrUtils,
  dxSkinsDefaultPainters, cxCalendar, cxCurrencyEdit, fmeLocalPagto;

type
  TfrmAddEditLanPagto = class(TfrmAddEditPadrao2)
    edNomePessoa: TcxDBTextEdit;
    sbUnidConsum: TSpeedButton;
    qryUnidComsumidora: TSQLQuery;
    cxLabel1: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edCPF_CNPJ: TcxDBTextEdit;
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
    cbTipoFatura: TcxComboBox;
    qryUnidComsumidoraCPF_CNPJ_FTDO: TStringField;
    qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM: TStringField;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    qryUnidComsumidoraDESCR_TIPO_PESSOA: TStringField;
    qryUnidComsumidoraENDER_NUM_LETRA: TStringField;
    edDtVencto: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    edTotalFatura: TcxDBTextEdit;
    edValorPago: TcxCurrencyEdit;
    cxLabel5: TcxLabel;
    cxLabel10: TcxLabel;
    edDesconto: TcxCurrencyEdit;
    qry1TIPO_FATURA: TStringField;
    qry1REFERENCIA: TStringField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1DT_PAGTO: TDateField;
    qry1ID_LOCAL_PAGTO: TIntegerField;
    qry1VAL_DESCONTO: TFMTBCDField;
    qry1VAL_PAGTO: TFMTBCDField;
    qry1VAL_FATURA: TFMTBCDField;
    qry1DESCR_TIPO_FATURA: TStringField;
    qry1DESCR_TIPO_PESSOA: TStringField;
    qry1CPF_CNPJ: TStringField;
    qry1NOME_PESSOA: TStringField;
    qry1ENDER_ID_BAIRRO: TIntegerField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_ID_DISTRITO: TIntegerField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    qry1DT_VENCIMENTO: TDateField;
    qry1DESCR_CATEGORIA: TStringField;
    qry1DESCR_LOCAL_PAGTO: TStringField;
    qry1REFERENCIA_FTDO: TStringField;
    qry1ENDER_DESCR_LOGRAD: TStringField;
    qry1ENDER_NUM_LETRA: TStringField;
    cds1TIPO_FATURA: TStringField;
    cds1REFERENCIA: TStringField;
    cds1ID_UNID_CONSUM: TIntegerField;
    cds1DT_PAGTO: TDateField;
    cds1ID_LOCAL_PAGTO: TIntegerField;
    cds1VAL_DESCONTO: TFMTBCDField;
    cds1VAL_PAGTO: TFMTBCDField;
    cds1VAL_FATURA: TFMTBCDField;
    cds1DESCR_TIPO_FATURA: TStringField;
    cds1DESCR_TIPO_PESSOA: TStringField;
    cds1CPF_CNPJ: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1ENDER_ID_BAIRRO: TIntegerField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_ID_DISTRITO: TIntegerField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    cds1DT_VENCIMENTO: TDateField;
    cds1DESCR_CATEGORIA: TStringField;
    cds1DESCR_LOCAL_PAGTO: TStringField;
    cds1REFERENCIA_FTDO: TStringField;
    cds1ENDER_DESCR_LOGRAD: TStringField;
    cds1ENDER_NUM_LETRA: TStringField;
    edReferencia: TcxMaskEdit;
    qry1ENDER_COMPLEMENTO: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    edIdUnidConsum: TcxMaskEdit;
    qryFatAvulsaItem: TSQLQuery;
    qryFatAvulsaItemANO_MES: TStringField;
    qryFatAvulsaItemVAL_TOTAL: TFMTBCDField;
    qryAddPagtoTM: TSQLStoredProc;
    qryFatAvulsaItemVAL_DESCONTO: TFMTBCDField;
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
    procedure cbTipoPropertiesCloseUp(Sender: TObject);
    procedure cbTipoPropertiesPopup(Sender: TObject);
    procedure cbTipoFaturaPropertiesChange(Sender: TObject);
    procedure edReferenciaExit(Sender: TObject);
    procedure cxCurrencyEdit1PropertiesChange(Sender: TObject);
  private
    function ValidDados: Boolean;
    { Private declarations }
    //Function ItemJaLancado: Boolean;
  public
    { Public declarations }
    pb_sTipoFatura: string[1];
    pb_sDtPagto: string[10];
    pb_iIdLocal: Integer;
  end;

var
  frmAddEditLanPagto: TfrmAddEditLanPagto;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, FindUnidConsumidora;

{$R *.dfm}

procedure TfrmAddEditLanPagto.btnGravarClick(Sender: TObject);
Var
  sAnoMes: string[6];
  iRefTemp: Integer;
begin

  if not ValidDados then exit;

  if not Confirma('Salvar Lançto de Baixa ?') then exit;

  if cds1.State = dsInsert then
  begin
     cds1ID_UNID_CONSUM.Value := StrToInt(Trim(ExtraiPonto(edIdUnidConsum.Text)));
     cds1TIPO_FATURA.Value := IntToStr(cbTipoFatura.ItemIndex+1);
     if cds1TIPO_FATURA.Value = '1' then
     begin
        cds1REFERENCIA.Value := RightStr(edReferencia.Text,4)+LeftStr(edReferencia.Text,2)
     end else
     begin
        iRefTemp             := StrToInt(ExtraiPonto(Trim(edReferencia.Text)));
        cds1REFERENCIA.Value := PreencheZeros(IntToStr(iRefTemp),8);
     end;
  end;
  cds1VAL_PAGTO.AsCurrency    := edValorPago.Value;
  cds1VAL_DESCONTO.AsCurrency := edDesconto.Value;
  Try
    SalvaTransacao(cds1);
    if pb_lAdd then
    begin
       if cbTipoFatura.ItemIndex = 1 then // 0 - Fatura Mensal / 1 - Fatura Avulsa
       begin
          qryFatAvulsaItem.Close;
          qryFatAvulsaItem.ParamByName('pIdFatura').Value := StrToInt(Trim(edReferencia.Text));
          qryFatAvulsaItem.Open;
          while not qryFatAvulsaItem.eof do
          begin
             sAnoMes := RightStr(qryFatAvulsaItemANO_MES.Value,4)+LeftStr(qryFatAvulsaItemANO_MES.Value,2);
             qryAddPagtoTM.ParamByName('pe_tipo_fatura').Value      := '1';
             qryAddPagtoTM.ParamByName('pe_referencia').Value       := sAnoMes;
             qryAddPagtoTM.ParamByName('pe_Id_UC').Value            := cds1ID_UNID_CONSUM.Value;
             qryAddPagtoTM.ParamByName('pe_Dt_Pagto').Value         := cds1DT_PAGTO.Value;
             qryAddPagtoTM.ParamByName('pe_Local_pagto').Value      := cds1ID_LOCAL_PAGTO.Value;
             qryAddPagtoTM.ParamByName('pe_Val_desconto').AsCurrency:= qryFatAvulsaItemVAL_DESCONTO.AsCurrency;
             qryAddPagtoTM.ParamByName('pe_Val_Pago').AsCurrency    := qryFatAvulsaItemVAL_TOTAL.AsCurrency;
             qryAddPagtoTM.ExecProc;
             qryFatAvulsaItem.Next;
          end;
       end;
    end;
  except

  End;
  pb_iIdAddEdit := cds1ID_UNID_CONSUM.Value;

  Close;

end;

procedure TfrmAddEditLanPagto.cbTipoFaturaPropertiesChange(Sender: TObject);
begin
  if cbTipoFatura.ItemIndex = 0 then
  begin
     edReferencia.Properties.EditMask := '99/9999;0; ';
     edDesconto.Enabled := True;
  end else
  begin
     edReferencia.Properties.EditMask := '999999999;0; ';
     edDesconto.Enabled := False;
  end;
end;

procedure TfrmAddEditLanPagto.cbTipoPropertiesCloseUp(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditLanPagto.cbTipoPropertiesPopup(Sender: TObject);
begin
   TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditLanPagto.cds1AfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dmPrincipal.GeraLog(cds1,iIf(pb_lAdd,'1','2'),'LANCTO_PAGTO',
     pb_sFormCall,Self.Name);
end;

procedure TfrmAddEditLanPagto.cds1AfterInsert(DataSet: TDataSet);
begin
  //inherited;
  cbTipoFatura.ItemIndex := 0;
end;

procedure TfrmAddEditLanPagto.cxCurrencyEdit1PropertiesChange(Sender: TObject);
begin
  if cds1.State = dsBrowse then exit;
  if edDesconto.Value > 0 then
     cds1VAL_PAGTO.AsCurrency := cds1VAL_FATURA.AsCurrency - edDesconto.Value;
end;

procedure TfrmAddEditLanPagto.edIdUnidConsumExit(Sender: TObject);
Var
  iIdUC: Integer;
begin
  if Trim(ExtraiPonto(edIdUnidConsum.Text)) = '' then exit;
  edIdUnidConsum.Text := LeftSpace(Trim(edIdUnidConsum.Text),8);
  iIdUC := StrToInt(Trim(ExtraiPonto(edIdUnidConsum.Text)));
  qryUnidComsumidora.Close;
  qryUnidComsumidora.Params[0].Value := iIdUC;
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
  //if ItemJaLancado then edIdUnidConsum.SetFocus;

end;

procedure TfrmAddEditLanPagto.edIdUnidConsumKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     if TcxDBMaskEdit(Sender).Tag = 1 then
        sbUnidConsum.Click;
end;

procedure TfrmAddEditLanPagto.edReferenciaExit(Sender: TObject);
Var
   oQry: TSQLQuery;
   sAnoMes: string[6];
   iIdUC: Integer;
begin
   if (Empty(ExtraiPonto(edReferencia.Text))) or
      (edReferencia.Properties.ReadOnly)
       then exit;

   if cbTipoFatura.ItemIndex = 0 then
      if not ValidMesAno(edReferencia.Text) then
      begin
         edReferencia.SetFocus;
         exit;
      end;

   iIdUC := StrToInt(Trim(ExtraiPonto(edIdUnidConsum.Text)));

   oQry := TSQLQuery.Create(Self);
   oQry.SQLConnection := dmPrincipal.SConPrincipal;
   if cbTipoFatura.ItemIndex = 0 then
   begin
      sAnoMes := InverteAnoMes(edReferencia.Text,'1');
      oQry.SQL.Add('select dt_vencimento, val_total, situacao ');
      oQry.SQL.Add('from calc_fatura_mensal ');
      oQry.SQL.Add('where (id_unid_consum = :pUnidConsum) and ');
      oQry.SQL.Add('(ano_mes = :pAnoMes) ');
      oQry.ParamByName('pUnidConsum').Value:= iIdUC;
      oQry.ParamByName('pAnoMes').Value       := sAnoMes;
   end else
   begin
      oQry.SQL.Add('select dt_vencimento, valor_total, situacao ');
      oQry.SQL.Add('from fatura_avulsa ');
      oQry.SQL.Add('where (id = :pId) and (id_unid_consum = :pUnidConsum) ');
      oQry.ParamByName('pUnidConsum').Value:= iIdUC;
      oQry.ParamByName('pId').AsString     := Trim(edReferencia.Text);
   end;

   try
     try
       oQry.Open;
       if oQry.FieldByName('Dt_vencimento').IsNull then
       begin
          Mensagem('Identificador de Fatura, inválido (inexistente) ou '#13+
             'NÃO pertence a essa Unid. Consumidora ...',
             'E r r o !!!',MB_OK+MB_ICONEXCLAMATION);
          edReferencia.SetFocus;
       end else
       if oQry.FieldByName('Situacao').Value <> '1' then
       begin
          Mensagem('Essa Fatura já está Quitada ...',
             'A v i s o  !!!',MB_OK+MB_ICONEXCLAMATION);
          edReferencia.SetFocus;
       end else
       begin
          cds1DT_VENCIMENTO.Value := oQry.FieldByName('dt_vencimento').Value;
          if cbTipoFatura.ItemIndex = 0 then
             cds1VAL_FATURA.AsCurrency := oQry.FieldByName('val_total').AsCurrency
          else
             cds1VAL_FATURA.AsCurrency := oQry.FieldByName('valor_total').AsCurrency;
          edValorPago.Value := cds1VAL_FATURA.AsCurrency;
       end;
     except
       on E: Exception do
       begin
          Mensagem('Não foi Possível executar as instruções ...'+#13+
             '('+E.Message+')',
             'Erro', MB_ICONERROR+MB_OK);
       end;
     end;
   finally
     oQry.Close;
     FreeAndNil(oQry);
   end;

end;

procedure TfrmAddEditLanPagto.edIDServidorPropertiesChange(
  Sender: TObject);
begin
  if (not cds1.Active) or (cds1.State = dsBrowse) or
     (Trim(edIdUnidConsum.Text) <> '') then exit;
  cds1NOME_PESSOA.Value := '';
  edEndereco.Text := '';
  edBairroDistrito.Text := '';
end;

procedure TfrmAddEditLanPagto.FormClose(Sender: TObject;
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

procedure TfrmAddEditLanPagto.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'LANCTO_PAGTO';
  //pb_sNomeCampoPK  := 'ID_EVENTO';
  pb_sNovoNova     := 'NOVO';
  pb_sTitJanela    := 'LANÇAMENTO DE PAGTO (BAIXA) DE FATURA ...';
end;

procedure TfrmAddEditLanPagto.FormShow(Sender: TObject);
begin
  inherited;

  Caption := iIf(pb_lAdd,'INCLUINDO NOVO LANÇAMENTO ...',
     'ALTERANDO LANÇAMENTO ...');

  edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleNormal;
  edReferencia.Style.StyleController  := dmPrincipal.cxEditStyleNormal;

  cds1.Close;
  qry1.ParamByName('pUnidConsum').Value := pb_iId1;
  qry1.ParamByName('pTipoFatura').Value := pb_sTipoFatura;
  if pb_sTipoFatura = '1' then
     qry1.ParamByName('pReferencia').Value := IntToStr(pb_iId2)
  else
     qry1.ParamByName('pReferencia').Value := PreencheZeros(IntToStr(pb_iId2),8);
  cds1.Open;

  if pb_lAdd then
  begin
     cds1.Insert;
     edIdUnidConsum.Text := '';
     edReferencia.Text := '';
     edValorPago.Value := 0;
     edDesconto.Value := 0;
     cbTipoFatura.ItemIndex := 0;
     edReferencia.Properties.EditMask := '99/9999;0; ';
     cds1DT_PAGTO.Value := StrToDate(pb_sDtPagto);
     cds1ID_LOCAL_PAGTO.Value := pb_iIdLocal;
  end else
  begin
     edIdUnidConsum.Text := cds1ID_UNID_CONSUM.AsString;
     edEndereco.Text := cds1ENDER_DESCR_LOGRAD.Value+', '+
        cds1ENDER_NUM_LETRA.Value+' - '+cds1ENDER_COMPLEMENTO.Value;
     edBairroDistrito.Text := cds1ENDER_DESCR_BAIRRO.Value+' - '+
        cds1ENDER_DESCR_DISTRITO.Value;
     cbTipoFatura.ItemIndex := cds1TIPO_FATURA.AsInteger-1;
     if cds1TIPO_FATURA.Value = '1' then
     begin
        edReferencia.Properties.EditMask := '99/9999';
        edReferencia.Text := RightStr(Trim(cds1REFERENCIA.Value),2)+
           LeftStr(Trim(cds1REFERENCIA.Value),4)
     end else
     begin
        edReferencia.Properties.EditMask := '99999999';
        edReferencia.Text := Trim(cds1REFERENCIA.Value);
     end;
     edValorPago.Value := cds1VAL_PAGTO.AsCurrency;
     edDesconto.Value := cds1VAL_DESCONTO.AsCurrency;
     cds1.Edit;
     if cds1TIPO_FATURA.Value = '1' then
        cbTipoFatura.ItemIndex := 0
     else
        cbTipoFatura.ItemIndex := 1;
  end;

  if pb_iId1 > 0 then  // pb_iId1 = Id_Servidor
  begin
     edIdUnidConsum.Style.StyleController:= dmPrincipal.cxEditStyleReadyOnly;
     edReferencia.Style.StyleController  := dmPrincipal.cxEditStyleReadyOnly;
  end;
  edIdUnidConsum.Properties.ReadOnly:= not (pb_iId1=0);
  edIdUnidConsum.TabStop            := (pb_iId1=0);
  sbUnidConsum.Enabled              := (pb_iId1=0);
  cbTipoFatura.Enabled              := not edIdUnidConsum.Properties.ReadOnly;

  if pb_iId1 = 0 then
     edIdUnidConsum.SetFocus
  else
     edValorPago.SetFocus;
end;

procedure TfrmAddEditLanPagto.sbUnidConsumClick(Sender: TObject);
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

function TfrmAddEditLanPagto.ValidDados: Boolean;
Var
   crValFatura,
   crValDesconto,
   crValPago: Currency;
begin
   Result := False;
   if Empty(ExtraiPonto(edIdUnidConsum.Text)) then
   begin
      Mensagem('Falta o Identificador da Unidade Consumidora ...',
         'E r r o !!!',MB_OK+MB_ICONERROR);
      edIdUnidConsum.SetFocus;
   end else
   if Empty(ExtraiPonto(edReferencia.Text)) then
   begin
      Mensagem('Falta o Identificador da Referência ...',
         'E r r o !!!',MB_OK+MB_ICONERROR);
      edReferencia.SetFocus;
   end else
   if edValorPago.Value = 0 then
   begin
      Mensagem('Falta o Valor Pago ...',
         'E r r o !!!',MB_OK+MB_ICONERROR);
      edValorPago.SetFocus;
   end else
   if (edValorPago.Value > 0) then
   begin
      if cbTipoFatura.ItemIndex = 1 then
         edDesconto.Value := 0;
      crValFatura := cds1VAL_FATURA.AsCurrency;
      crValPago   := edValorPago.Value;
      crValDesconto := edDesconto.Value;
      if (crValPago+crValDesconto <> crValFatura) then
      begin
         Mensagem('O Valor do Pagto está incorreto ...',
            'E r r o !!!',MB_OK+MB_ICONERROR);
         edValorPago.SetFocus;
      end else
         Result := True;
   end else
      Result := True;

end;

end.
