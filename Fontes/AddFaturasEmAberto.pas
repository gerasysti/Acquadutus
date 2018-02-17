unit AddFaturasEmAberto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, Db, DBClient, Provider, SqlExpr, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, Buttons,
  cxCurrencyEdit, cxTextEdit, cxCheckBox, StrUtils, cxMaskEdit, FMTBcd, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  TfrmAddFatEmAberto = class(TfrmPadrao1)
    Panel1: TPanel;
    btnGravar: TcxButton;
    btnCancelar: TcxButton;
    cdsItemFatura: TClientDataSet;
    provItemFatura: TDataSetProvider;
    qryItemFatura: TSQLQuery;
    dbg1: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    GridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    GridDBTableView1Column4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    dsItemFatura: TDataSource;
    edTotSelect: TcxCurrencyEdit;
    chkIncidirMulta: TcxCheckBox;
    Label1: TLabel;
    GridDBTableView1Column1: TcxGridDBColumn;
    GridDBTableView1Column2: TcxGridDBColumn;
    GridDBTableView1Column3: TcxGridDBColumn;
    cdsItemFaturaANO_MES: TStringField;
    cdsItemFaturaMES_ANO_FTDO: TStringField;
    cdsItemFaturaDT_VENCIMENTO: TDateField;
    cdsItemFaturaVAL_PRINCIPAL: TFMTBCDField;
    cdsItemFaturaQTD_DIAS_ATRASO: TIntegerField;
    cdsItemFaturaVAL_TOTAL: TFMTBCDField;
    cdsItemFaturaADICIONAR: TStringField;
    qryCalcMulta: TSQLQuery;
    qryCalcMultaR_VALOR: TFMTBCDField;
    qryCalcMultaR_QTD_DIAS_ATRASO: TIntegerField;
    chkCalcMulta: TcxCheckBox;
    cdsItemFaturaVAL_JUROS: TFMTBCDField;
    procedure FormShow(Sender: TObject);
    procedure edIdItemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edReferenciaExit(Sender: TObject);
    procedure GridDBTableView1DblClick(Sender: TObject);
    procedure GridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnCalcMultaClick(Sender: TObject);
  private
    function ValidDados: Boolean;
    { Private declarations }
  public
    { Public declarations }
    pb_oDsItem: TDataSource;
    pb_iIdUnidConsum: Integer;
    pb_dDtVencto: TDate;
    Procedure executa(oDsItem: TDataSource; sIdUnidConsum: Integer);
  end;

var
  frmAddFatEmAberto: TfrmAddFatEmAberto;

implementation

uses udmPrincipal, gsLib, VarGlobais, UtilsDb;

{$R *.dfm}

procedure TfrmAddFatEmAberto.btnCalcMultaClick(Sender: TObject);
begin
  if cdsItemFatura.RecordCount = 0 then exit;
  edTotSelect.Value := 0;
  cdsItemFatura.First;
  while not cdsItemFatura.Eof do
  begin
     if not chkCalcMulta.Checked then
     begin
        cdsItemFatura.Edit;
        cdsItemFaturaVAL_JUROS.AsCurrency     := 0;
        cdsItemFaturaQTD_DIAS_ATRASO.AsInteger:= 0;
        cdsItemFaturaVAL_TOTAL.AsCurrency     := cdsItemFaturaVAL_PRINCIPAL.AsCurrency;
        edTotSelect.Value := edTotSelect.Value + cdsItemFaturaVAL_TOTAL.AsCurrency;
        cdsItemFatura.Post;
     end else
     begin
        if cdsItemFaturaADICIONAR.Value = 'S' then
        begin
           qryCalcMulta.Close;
           qryCalcMulta.ParamByName('pAnoMes').Value := cdsItemFaturaANO_MES.Value;
           qryCalcMulta.ParamByName('pUC').Value := pb_iIdUnidConsum;
           qryCalcMulta.ParamByName('pDtVencto').Value := pb_dDtVencto;
           qryCalcMulta.Open;
           cdsItemFatura.Edit;
           cdsItemFaturaVAL_JUROS.AsCurrency     := qryCalcMultaR_VALOR.AsCurrency;
           cdsItemFaturaQTD_DIAS_ATRASO.AsInteger:= qryCalcMultaR_QTD_DIAS_ATRASO.AsInteger;
           cdsItemFaturaVAL_TOTAL.AsCurrency     := cdsItemFaturaVAL_PRINCIPAL.AsCurrency +
              cdsItemFaturaVAL_JUROS.AsCurrency;
           edTotSelect.Value := edTotSelect.Value + cdsItemFaturaVAL_TOTAL.AsCurrency;
           cdsItemFatura.Post;
        end;
     end;

     cdsItemFatura.Next;

  end;

  chkIncidirMulta.Checked := False;
  if chkCalcMulta.Checked then
     chkIncidirMulta.Enabled := False
  else
     chkIncidirMulta.Enabled := True;

end;

procedure TfrmAddFatEmAberto.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAddFatEmAberto.btnGravarClick(Sender: TObject);
Var
   iUltItem: Integer;
begin
   if not Confirma('Deseja Realmente Adicionar todas as Faturas em Aberto Marcadas ?') then exit;

   pb_oDsItem.DataSet.Last;
   Try
      iUltItem := pb_oDsItem.DataSet.FieldByName('ID').Value;
   Except
      iUltItem := 0;
   End;

   cdsItemFatura.DisableControls;
   cdsItemFatura.First;
   while not cdsItemFatura.eof do
   begin
      if cdsItemFaturaADICIONAR.Value <> 'S' then
      begin
         cdsItemFatura.Next;
         Continue;
      end;
      Inc(iUltItem);
      pb_oDsItem.DataSet.Insert;
      pb_oDsItem.DataSet.FieldByName('Id').Value := iUltItem;
      pb_oDsItem.DataSet.FieldByName('Id_Item').AsString := '1';
      pb_oDsItem.DataSet.FieldByName('Descricao').AsString := 'FATURA MENSAL';
      pb_oDsItem.DataSet.FieldByName('Val_Principal').AsCurrency := cdsItemFaturaVAL_PRINCIPAL.AsCurrency;
      pb_oDsItem.DataSet.FieldByName('Val_Multa').AsCurrency := cdsItemFaturaVAL_JUROS.AsCurrency;
      pb_oDsItem.DataSet.FieldByName('Val_Desconto').AsCurrency := 0;
      pb_oDsItem.DataSet.FieldByName('Val_Total').AsCurrency := cdsItemFaturaVAL_TOTAL.AsCurrency;
      pb_oDsItem.DataSet.FieldByName('Qtd_Dias_Atraso').AsInteger := cdsItemFaturaQTD_DIAS_ATRASO.AsInteger;
      pb_oDsItem.DataSet.FieldByName('Incidir_Multa').Value := iIf(chkIncidirMulta.Checked,'S','N');
      pb_oDsItem.DataSet.FieldByName('Referencia').Value := cdsItemFaturaANO_MES.Value;
      pb_oDsItem.DataSet.FieldByName('Ref_Ftdo').AsString := cdsItemFaturaMES_ANO_FTDO.Value;

      pb_oDsItem.DataSet.Post;

      cdsItemFatura.Next;

   end;

   Close;

end;

procedure TfrmAddFatEmAberto.edIdItemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
     //sbItem.Click;
end;

procedure TfrmAddFatEmAberto.edReferenciaExit(Sender: TObject);
Var
   oQry1: TSQLQuery;
   sAnoMes: string[6];
begin

{
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
}

end;

Procedure TfrmAddFatEmAberto.executa(oDsItem: TDataSource; sIdUnidConsum: Integer);
begin
  pb_oDsItem:= oDsItem;
  pb_iIdUnidConsum:= sIdUnidConsum;
  ShowModal;
end;

procedure TfrmAddFatEmAberto.FormShow(Sender: TObject);
begin

  inherited;

  cdsItemFatura.Close;
  qryItemFatura.ParamByName('pUnidConsum').Value := pb_iIdUnidConsum;
  cdsItemFatura.Open;
  edTotSelect.Value := 0;
  cdsItemFatura.DisableControls;
  while not cdsItemFatura.eof do
  begin
     edTotSelect.Value := edTotSelect.Value + cdsItemFaturaVAL_TOTAL.AsCurrency;
     cdsItemFatura.Next;
  end;
  cdsItemFatura.First;

  cdsItemFatura.EnableControls;

  dbg1.SetFocus;

end;

procedure TfrmAddFatEmAberto.GridDBTableView1DblClick(Sender: TObject);
begin
  cdsItemFatura.Edit;
  if cdsItemFaturaADICIONAR.Value = 'S' then
  begin
     cdsItemFaturaADICIONAR.Value := 'N';
     edTotSelect.Value := edTotSelect.Value - cdsItemFaturaVAL_TOTAL.AsCurrency;
  end else
  begin
     cdsItemFaturaADICIONAR.Value := 'S';
     edTotSelect.Value := edTotSelect.Value + cdsItemFaturaVAL_TOTAL.AsCurrency;
  end;
  cdsItemFatura.Post;
end;

procedure TfrmAddFatEmAberto.GridDBTableView1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((Shift = []) and (Key = VK_SPACE)) or
     ((Shift = []) and (Key = VK_F4)) then
  begin
    GridDBTableView1DblClick(GridDBTableView1);
  end;

end;

function TfrmAddFatEmAberto.ValidDados: Boolean;
begin
end;

end.
