unit AddEditItemFaturaAvulsa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, Db, DBClient, Provider, SqlExpr, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Buttons,
  cxCurrencyEdit, cxTextEdit, cxCheckBox, StrUtils, cxMaskEdit, FMTBcd, cxDropDownEdit, cxCalendar, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmAddEditItemFatAvulsa = class(TfrmPadrao1)
    Panel1: TPanel;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    LabelId: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    chkIncidirMulta: TcxCheckBox;
    edIdItem: TcxTextEdit;
    edValPrincipal: TcxCurrencyEdit;
    edValDesconto: TcxCurrencyEdit;
    edValTotal: TcxCurrencyEdit;
    edId: TcxTextEdit;
    sbItem: TSpeedButton;
    edDescrItem: TcxTextEdit;
    edReferencia: TcxMaskEdit;
    Label6: TLabel;
    edValJuros: TcxCurrencyEdit;
    edQtdDiasAtraso: TcxCurrencyEdit;
    Label8: TLabel;
    qryCalcMulta: TSQLQuery;
    qryCalcMultaR_VALOR: TFMTBCDField;
    qryCalcMultaR_QTD_DIAS_ATRASO: TIntegerField;
    chkCalcMulta: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure edIdItemPropertiesChange(Sender: TObject);
    procedure edValPrincipalPropertiesChange(Sender: TObject);
    procedure edIdItemKeyPress(Sender: TObject; var Key: Char);
    procedure sbItemClick(Sender: TObject);
    procedure edIdItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure edReferenciaEnter(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edReferenciaExit(Sender: TObject);
    procedure edIdItemExit(Sender: TObject);
    procedure btnCalcMultaClick(Sender: TObject);
    procedure edValJurosPropertiesChange(Sender: TObject);
  private
    function ValidDados: Boolean;
    { Private declarations }
  public
    { Public declarations }
    pb_oDsItem: TDataSource;
    pb_sIdUnidConsum: string[11];
    pb_dDtVencto: TDate;
    pb_lAdd: Boolean;
    Procedure executa(oDsItem: TDataSource; sIdUnidConsum: String; lAdd: Boolean);
  end;

var
  frmAddEditItemFatAvulsa: TfrmAddEditItemFatAvulsa;

implementation

uses udmPrincipal, gsLib, VarGlobais, UtilsDb, SelecionaItemFatura;

{$R *.dfm}

procedure TfrmAddEditItemFatAvulsa.btnCalcMultaClick(Sender: TObject);
begin

   if (Trim(edIdItem.Text)<>'1') or
      (Trim(edReferencia.Text)='') then exit;

   if chkCalcMulta.Checked then
   begin
      qryCalcMulta.Close;
      qryCalcMulta.ParamByName('pAnoMes').Value  := InverteAnoMes(Trim(edReferencia.Text),'1');
      qryCalcMulta.ParamByName('pUC').Value      := StrToInt(Trim(pb_sIdUnidConsum));
      qryCalcMulta.ParamByName('pDtVencto').Value:= pb_dDtVencto;
      qryCalcMulta.Open;

      edValJuros.Value := qryCalcMultaR_VALOR.AsCurrency;
      edQtdDiasAtraso.Value := qryCalcMultaR_QTD_DIAS_ATRASO.AsInteger;
   end else
   begin
      edValJuros.Value := 0;
      edQtdDiasAtraso.Value := 0;
   end;

end;

procedure TfrmAddEditItemFatAvulsa.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAddEditItemFatAvulsa.btnGravarClick(Sender: TObject);
begin
   if not ValidDados then exit;
   if pb_lAdd then
   begin
      pb_oDsItem.DataSet.Insert;
      pb_oDsItem.DataSet.FieldByName('Id').AsString := edId.Text;
   end else
      pb_oDsItem.DataSet.Edit;
   pb_oDsItem.DataSet.FieldByName('Id').AsString := edId.Text;
   pb_oDsItem.DataSet.FieldByName('Id_Item').AsString := edIdItem.Text;
   pb_oDsItem.DataSet.FieldByName('Descricao').AsString := edDescrItem.Text;
   pb_oDsItem.DataSet.FieldByName('Val_Principal').AsCurrency := edValPrincipal.Value;
   pb_oDsItem.DataSet.FieldByName('Val_Multa').AsCurrency := edValJuros.Value;
   pb_oDsItem.DataSet.FieldByName('Val_Desconto').AsCurrency := edValDesconto.Value;
   pb_oDsItem.DataSet.FieldByName('Val_Total').AsCurrency := edValTotal.Value;
   pb_oDsItem.DataSet.FieldByName('Qtd_Dias_Atraso').AsInteger := Inteiro(edQtdDiasAtraso.Value);
   pb_oDsItem.DataSet.FieldByName('Incidir_Multa').Value :=
      iIf(chkIncidirMulta.Checked,'S','N');
   if Trim(edIdItem.Text) = '1' then
   begin
      pb_oDsItem.DataSet.FieldByName('Referencia').Value :=
         RightStr(edReferencia.Text,4)+LeftStr(edReferencia.Text,2);
      pb_oDsItem.DataSet.FieldByName('Ref_Ftdo').AsString := edReferencia.Text;
   end else
   begin
      pb_oDsItem.DataSet.FieldByName('Referencia').Value :=
         Trim(edReferencia.Text);
      pb_oDsItem.DataSet.FieldByName('Ref_Ftdo').AsString :=
         Trim(edReferencia.Text);
   end;
   pb_oDsItem.DataSet.Post;
   Close;
end;

procedure TfrmAddEditItemFatAvulsa.edIdItemExit(Sender: TObject);
begin
  if Trim(edIdItem.Text)='' then exit;
  edDescrItem.Text := Pesquisa('TAB_OUTRA_TARIFA','ID',edIdItem.Text,'DESCRICAO',
     'Identificador de Outra Tarifa INVÁLIDO ....');
  if edDescrItem.Text = '' then edIdItem.SetFocus;
end;

procedure TfrmAddEditItemFatAvulsa.edIdItemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
     sbItem.Click;
end;

procedure TfrmAddEditItemFatAvulsa.edIdItemKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmAddEditItemFatAvulsa.edIdItemPropertiesChange(Sender: TObject);
begin
  if Empty(edIdItem.Text) then edDescrItem.Text := '';
end;

procedure TfrmAddEditItemFatAvulsa.edReferenciaEnter(Sender: TObject);
begin
   if Trim(edIdItem.Text) = '1' then
      edReferencia.Properties.EditMask := '99/9999;1; '
   else
      edReferencia.Properties.EditMask := '999;0; ';
end;

procedure TfrmAddEditItemFatAvulsa.edReferenciaExit(Sender: TObject);
Var
   oQry1: TSQLQuery;
   sAnoMes: string[6];
begin

   if Trim(ExtraiPonto(edReferencia.Text)) = '' then exit;
   if Trim(edIdItem.Text) = '1' then
   begin
      sAnoMes := RightStr(edReferencia.Text,4)+LeftStr(edReferencia.Text,2);
      if (Length(Trim(sAnoMes)) <> 6) or
         ((LeftStr(edReferencia.Text,2) < '01') or
          (LeftStr(edReferencia.Text,2) > '12')) then
      begin
         Mensagem('Mês/Ano inválido ...','E r r o !!!',MB_OK+MB_ICONWARNING);
         edReferencia.SetFocus;
         exit;
      end;
   end;

   oQry1 := TSQLQuery.Create(Self);
   oQry1.SQLConnection := dmPrincipal.SConPrincipal;

   try
      if Trim(edIdItem.Text) = '1' then
      begin
         oQry1.SQL.Add('select val_total, situacao');
         oQry1.SQL.Add('from calc_fatura_mensal');
         oQry1.SQL.Add('where (id_unid_consum = :pUnidConsum) and ');
         oQry1.SQL.Add('(ano_mes = :pAnoMes)');
         oQry1.ParamByName('pUnidConsum').AsString:= pb_sIdUnidConsum;
         oQry1.ParamByName('pAnoMes').Value:= sAnoMes;
         oQry1.Open;
         if (oQry1.FieldByName('val_total').IsNull) or
            (oQry1.FieldByName('val_total').AsCurrency = 0)  then
         begin
            Mensagem('Fatura NÃO CALCULADA nesse Mês/Ano p/ essa Unid. Consumidora ...',
               'E r r o !!!',MB_OK+MB_ICONWARNING);
            edReferencia.SetFocus;
         end else
         if (oQry1.FieldByName('situacao').Value <> '1') then
         begin
            Mensagem('Essa Fatura JÁ ESTÁ QUITADA ...',
               'E r r o !!!',MB_OK+MB_ICONWARNING);
            edReferencia.SetFocus;
         end else
            edValPrincipal.Value := oQry1.FieldByName('val_total').AsCurrency;
      end else
      begin
         oQry1.SQL.Add('select valor from tab_outra_tarifa where id = :pId');
         oQry1.ParamByName('pId').AsString := Trim(edIdItem.Text);
         oQry1.Open;
         try
            edValPrincipal.Value := StrToInt(Trim(edReferencia.Text)) *
               oQry1.FieldByName('Valor').AsCurrency;
         except
            edValPrincipal.Value := 0;
         end;
      end;
   finally
      oQry1.Close;
      FreeAndNil(oQry1);
   end;

end;

procedure TfrmAddEditItemFatAvulsa.edValJurosPropertiesChange(Sender: TObject);
begin

   chkIncidirMulta.Checked := False;

   if edValTotal.Value = 0 then
      chkIncidirMulta.Enabled := True
   else
      chkIncidirMulta.Enabled := False;

   edValTotal.Value := (edValPrincipal.Value + edValJuros.Value) - edValDesconto.Value;

end;

procedure TfrmAddEditItemFatAvulsa.edValPrincipalPropertiesChange(
  Sender: TObject);
begin
  edValTotal.Value := edValPrincipal.Value - edValDesconto.Value;
end;

Procedure TfrmAddEditItemFatAvulsa.executa(oDsItem: TDataSource;
  sIdUnidConsum: String;lAdd: Boolean);
begin
  pb_oDsItem:= oDsItem;
  pb_sIdUnidConsum:= Trim(ExtraiPonto(sIdUnidConsum));
  pb_lAdd   := lAdd;
  ShowModal;
end;

procedure TfrmAddEditItemFatAvulsa.FormShow(Sender: TObject);
begin
  inherited;
  Caption := iIf(pb_lAdd,'INCLUINDO NOVO ','ALTERANDO ')+' ÍTEM DA FARURA';
  if pb_lAdd then
  begin
     edId.Text := IntToStr(pb_oDsItem.DataSet.RecordCount+1);
     edIdItem.Text := '';
     edReferencia.Text := '';
     edValPrincipal.Value := 0;
     edValJuros.Value := 0;
     edValDesconto.Value := 0;
     edQtdDiasAtraso.Value:= 0;
     chkCalcMulta.Checked   := False;
     chkIncidirMulta.Checked:= False;
     chkIncidirMulta.Enabled:= True;
     edIdItem.SetFocus;
  end else
  begin
     edId.Text              := pb_oDsItem.DataSet.FieldByName('ID').AsString;
     edIdItem.Text          := pb_oDsItem.DataSet.FieldByName('ID_item').AsString;
     edDescrItem.Text       := pb_oDsItem.DataSet.FieldByName('descricao').Value;
     edReferencia.Text      := pb_oDsItem.DataSet.FieldByName('ref_ftdo').Value;
     edValPrincipal.Value   := pb_oDsItem.DataSet.FieldByName('Val_Principal').AsCurrency;
     edValJuros.Value       := pb_oDsItem.DataSet.FieldByName('Val_Multa').AsCurrency;
     edValDesconto.Value    := pb_oDsItem.DataSet.FieldByName('Val_Desconto').AsCurrency;
     chkIncidirMulta.Checked:= pb_oDsItem.DataSet.FieldByName('Incidir_multa').Value = 'S';
     edIdItem.Properties.ReadOnly    := True;
     sbItem.Enabled                  := False;
     edReferencia.Properties.ReadOnly:= True;
     edValPrincipal.SetFocus;
  end;

end;

procedure TfrmAddEditItemFatAvulsa.sbItemClick(Sender: TObject);
Var
  iRet : Integer;
begin
  frmSelecionaItemFatura := TfrmSelecionaItemFatura.Create(Self);
  iRet := frmSelecionaItemFatura.Executa(2,'ÍTEM P/ A FATURA','ID',True);
  if iRet > 0 then edIdItem.Text := IntToStr(iRet);
  edIdItem.SetFocus;
  FreeAndNil(frmSelecionaItemFatura);
end;

function TfrmAddEditItemFatAvulsa.ValidDados: Boolean;
begin
  Result := False;
  if Empty(edIdItem.Text) then exit
  else
  if Empty(edReferencia.Text) then exit
  else
  if edValTotal.Value = 0 then exit
  else
     Result := True;
end;

end.
