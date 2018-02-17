unit LanctoPagtoPrestServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, Servidor_frme, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxGroupBox,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBEdit, FMTBcd,
  SqlExpr, Provider, DBClient, Menus, cxRadioGroup, Evento_frme, cxCalendar,
  fmeEvento, fmePrestServico, cxLabel, fmeUnidOrcamentaria, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, ExtCtrls, frxClass, frxDBSet,
  frxDesgn, frxExportPDF, frxRich;

type
  TfrmLanctoPagtoPrestServico = class(TfrmPadrao1)
    dsPagtoPrestServ: TDataSource;
    cdsPagtoPrestServ: TClientDataSet;
    dspPagtoPrestServ: TDataSetProvider;
    sdsPagtoPrestServ: TSQLDataSet;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Alterar1: TMenuItem;
    Exluir1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    gbUnidOrcament: TcxGroupBox;
    btnOk: TBitBtn;
    frmeUnidOrcament1: TfrmeUnidOrcament;
    cxLabel1: TcxLabel;
    rbRecbIndiv: TcxRadioButton;
    rbRecbTodos: TcxRadioButton;
    rbRecbColet: TcxRadioButton;
    sdsPagtoPrestServID: TIntegerField;
    sdsPagtoPrestServID_PREST_SERVICO: TIntegerField;
    sdsPagtoPrestServDATA_PAGTO: TDateField;
    sdsPagtoPrestServANO_MES: TStringField;
    sdsPagtoPrestServID_ORDEM: TIntegerField;
    sdsPagtoPrestServID_UNID_ORCAMENT: TIntegerField;
    sdsPagtoPrestServVALOR_BRUTO: TFMTBCDField;
    sdsPagtoPrestServALIQUOTA_ISS: TFMTBCDField;
    sdsPagtoPrestServVALOR_ISS: TFMTBCDField;
    sdsPagtoPrestServDEDUZ_ISS_B_CALC_IRRF: TStringField;
    sdsPagtoPrestServBASE_CALC_PREVID: TFMTBCDField;
    sdsPagtoPrestServVALOR_PREVID: TFMTBCDField;
    sdsPagtoPrestServBASE_CALC_IRRF: TFMTBCDField;
    sdsPagtoPrestServQTD_DEPEND_IRRF: TIntegerField;
    sdsPagtoPrestServVALOR_IRRF: TFMTBCDField;
    sdsPagtoPrestServVALOR_LIQUIDO: TFMTBCDField;
    sdsPagtoPrestServVALOR_MAO_OBRA: TFMTBCDField;
    sdsPagtoPrestServHISTORICO: TStringField;
    sdsPagtoPrestServRECIBO_INDIVIDUAL: TStringField;
    sdsPagtoPrestServNOME_PREST_SERVICO: TStringField;
    sdsPagtoPrestServTIPO_PESSOA: TStringField;
    sdsPagtoPrestServCPF_CNPJ: TStringField;
    cdsPagtoPrestServID: TIntegerField;
    cdsPagtoPrestServID_PREST_SERVICO: TIntegerField;
    cdsPagtoPrestServDATA_PAGTO: TDateField;
    cdsPagtoPrestServANO_MES: TStringField;
    cdsPagtoPrestServID_ORDEM: TIntegerField;
    cdsPagtoPrestServID_UNID_ORCAMENT: TIntegerField;
    cdsPagtoPrestServVALOR_BRUTO: TFMTBCDField;
    cdsPagtoPrestServALIQUOTA_ISS: TFMTBCDField;
    cdsPagtoPrestServVALOR_ISS: TFMTBCDField;
    cdsPagtoPrestServDEDUZ_ISS_B_CALC_IRRF: TStringField;
    cdsPagtoPrestServBASE_CALC_PREVID: TFMTBCDField;
    cdsPagtoPrestServVALOR_PREVID: TFMTBCDField;
    cdsPagtoPrestServBASE_CALC_IRRF: TFMTBCDField;
    cdsPagtoPrestServQTD_DEPEND_IRRF: TIntegerField;
    cdsPagtoPrestServVALOR_IRRF: TFMTBCDField;
    cdsPagtoPrestServVALOR_LIQUIDO: TFMTBCDField;
    cdsPagtoPrestServVALOR_MAO_OBRA: TFMTBCDField;
    cdsPagtoPrestServHISTORICO: TStringField;
    cdsPagtoPrestServRECIBO_INDIVIDUAL: TStringField;
    cdsPagtoPrestServNOME_PREST_SERVICO: TStringField;
    cdsPagtoPrestServTIPO_PESSOA: TStringField;
    cdsPagtoPrestServCPF_CNPJ: TStringField;
    Panel: TPanel;
    edPesquisa: TcxTextEdit;
    lblTitColPesquisa: TcxLabel;
    cxLabel3: TcxLabel;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnLimpar: TButton;
    btnFechar: TBitBtn;
    dbg1: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    GridDBTableView1Column1: TcxGridDBColumn;
    GridDBTableView1Column2: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    btnRecibo: TBitBtn;
    btnGPS: TBitBtn;
    frxReport1: TfrxReport;
    frxRichObject1: TfrxRichObject;
    frxPDFExport1: TfrxPDFExport;
    frxDesigner1: TfrxDesigner;
    frxRecibo: TfrxDBDataset;
    qryConfigOrgao: TSQLQuery;
    qryConfigOrgaoID: TIntegerField;
    qryConfigOrgaoRAZAO_SOCIAL: TStringField;
    qryConfigOrgaoSIGLA: TStringField;
    qryConfigOrgaoCNPJ: TStringField;
    qryConfigOrgaoTIPO_ORGAO: TIntegerField;
    qryConfigOrgaoENDER_LOGRAD: TStringField;
    qryConfigOrgaoENDER_NUM: TStringField;
    qryConfigOrgaoENDER_BAIRRO: TStringField;
    qryConfigOrgaoENDER_CIDADE: TStringField;
    qryConfigOrgaoENDER_CEP: TStringField;
    qryConfigOrgaoENDER_UF: TStringField;
    qryConfigOrgaoTELEFONE: TStringField;
    qryConfigOrgaoNOME_DIR_DRH: TStringField;
    qryConfigOrgaoCOD_CNAE: TIntegerField;
    qryConfigOrgaoCOD_FPAS: TIntegerField;
    qryConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField;
    qryConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField;
    qryConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField;
    qryConfigOrgaoBRASAO: TBlobField;
    qryConfigOrgaoLOGO_ADMIN: TBlobField;
    qryConfigOrgaoVER_EXE: TStringField;
    qryConfigOrgaoDT_VER_EXE: TDateField;
    qryConfigOrgaoNOME_PASTA_ATUALIZA_EXE: TStringField;
    qryConfigOrgaoTIPO_CONTRA_CHEQUE: TStringField;
    qryConfigOrgaoDESCR_TIPO_ORGAO: TStringField;
    sdsPagtoPrestServPIS_PASEP: TStringField;
    sdsPagtoPrestServENDER_LOGRAD: TStringField;
    sdsPagtoPrestServENDER_NUM: TStringField;
    sdsPagtoPrestServENDER_BAIRRO: TStringField;
    sdsPagtoPrestServENDER_CIDADE: TStringField;
    sdsPagtoPrestServENDER_UF: TStringField;
    cdsPagtoPrestServPIS_PASEP: TStringField;
    cdsPagtoPrestServENDER_LOGRAD: TStringField;
    cdsPagtoPrestServENDER_NUM: TStringField;
    cdsPagtoPrestServENDER_BAIRRO: TStringField;
    cdsPagtoPrestServENDER_CIDADE: TStringField;
    cdsPagtoPrestServENDER_UF: TStringField;
    mTbRecibo: TClientDataSet;
    mTbReciboVAL_BRUTO: TStringField;
    mTbReciboVAL_ISS: TStringField;
    mTbReciboVAL_PREVID: TStringField;
    mTbReciboVAL_IRRF: TStringField;
    mTbReciboVAL_LIQUIDO: TStringField;
    mTbReciboVAL_LIQ_EXTENSO: TStringField;
    mTbReciboDESCR_TIPO_ORGAO: TStringField;
    mTbReciboHISTORICO: TStringField;
    mTbReciboFAVORECIDO: TStringField;
    mTbReciboCPF_CNPJ: TStringField;
    mTbReciboENDER_LOGRAD: TStringField;
    mTbReciboENDER_CIDADE: TStringField;
    mTbReciboDESCR_TIPO_ORGAO_TIT: TStringField;
    mTbReciboNOME_ORGAO: TStringField;
    mTbReciboCNPJ_ORGAO: TStringField;
    mTbReciboDT_PAGTO_EXTENSO: TStringField;
    mTbReciboENDER_ORGAO: TStringField;
    frxConfigOrgao: TfrxDBDataset;
    GridDBTableView1Column3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure rbRecbTodosClick(Sender: TObject);
    procedure cdsPagtoPrestServAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnGPSClick(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    pv_sPathRel: widestring;
    Procedure HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
    Procedure ExecutaFiltro;
  public
    { Public declarations }
  end;

var
  frmLanctoPagtoPrestServico: TfrmLanctoPagtoPrestServico;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AddEditLanctoPagtoPrestServico,
  udmRelFinanceiros, ConverteNumEmExtenso;

{$R *.dfm}

procedure TfrmLanctoPagtoPrestServico.btnGPSClick(Sender: TObject);
begin
   dmRelFinanceiros := TdmRelFinanceiros.Create(Nil);
   dmRelFinanceiros.RelGPS2(cdsPagtoPrestServID.Value,True);
   FreeAndNil(dmRelFinanceiros);
end;


procedure TfrmLanctoPagtoPrestServico.btnAddClick(Sender: TObject);
Var
  iAddEdit: Integer;
begin
  if TButton(Sender).Tag = 1 then
  begin
     iAddEdit := frmAddEditLanctoPagtoPrestServico.Executa(Self.Name,0,
        StrToInt(Trim(frmeUnidOrcament1.edId.Text)),1,True);
  end else
  begin
     if cdsPagtoPrestServ.RecordCount = 0 then exit;
     iAddEdit := frmAddEditLanctoPagtoPrestServico.Executa(Self.Name,
        cdsPagtoPrestServID.Value,0,1,False);
  end;
  if iAddEdit > 0 then
     gsRefreshClient(cdsPagtoPrestServ,'ID',iAddEdit);
end;

procedure TfrmLanctoPagtoPrestServico.btnDelClick(Sender: TObject);
begin
  if not Confirma('Deseja realmente EXCLUIR esse Pagamento ?') then exit;
  ExcluiRegistro(cdsPagtoPrestServ);
end;

procedure TfrmLanctoPagtoPrestServico.btnLimparClick(Sender: TObject);
begin
  cdsPagtoPrestServ.Close;
  HabilitaBotoes(False,True);
  frmeUnidOrcament1.edId.Text := '';
  frmeUnidOrcament1.edId.SetFocus;
end;

procedure TfrmLanctoPagtoPrestServico.btnOkClick(Sender: TObject);
begin
  //frmeUnidOrcament1.edIdExit(Nil);
  cdsPagtoPrestServ.Close;
  sdsPagtoPrestServ.ParamByName('pUnidOrcament').Value:= StrToInt(Trim(frmeUnidOrcament1.edId.Text));
  sdsPagtoPrestServ.ParamByName('pAnoMes').Value      := glb_sAnoMesTrab;
  cdsPagtoPrestServ.Open;
  ExecutaFiltro;
  cdsPagtoPrestServ.IndexFieldNames:= GridDBTableView1.Columns[2].DataBinding.FieldName;
  GridDBTableView1.Columns[2].SortOrder := soAscending;
  //lblTitColPesquisa.Caption:= '&Pesquisar p/ '+GridDBTableView1.Columns[2].Caption+':';
  HabilitaBotoes(True,False);
  cdsPagtoPrestServ.First;
  dbg1.SetFocus;
end;

procedure TfrmLanctoPagtoPrestServico.btnReciboClick(Sender: TObject);
begin
  mTbRecibo.Edit;
  mTbReciboVAL_BRUTO.Value := FormatCurr('0,0.00',
     cdsPagtoPrestServVALOR_BRUTO.AsCurrency);
  mTbReciboVAL_ISS.Value := FormatCurr('0,0.00',
     cdsPagtoPrestServVALOR_ISS.AsCurrency);
  mTbReciboVAL_PREVID.Value := FormatCurr('0,0.00',
     cdsPagtoPrestServVALOR_PREVID.AsCurrency);
  mTbReciboVAL_IRRF.Value := FormatCurr('0,0.00',
     cdsPagtoPrestServVALOR_IRRF.AsCurrency);
  mTbReciboVAL_LIQUIDO.Value := FormatCurr('0,0.00',
     cdsPagtoPrestServVALOR_LIQUIDO.AsCurrency);
  mTbReciboDESCR_TIPO_ORGAO.Value := qryConfigOrgaoDESCR_TIPO_ORGAO.Value;
  mTbReciboVAL_LIQ_EXTENSO.Value := Trim(NumeroEmExtenso(
     cdsPagtoPrestServVALOR_BRUTO.AsCurrency));
  mTbReciboHISTORICO.Value := Trim(cdsPagtoPrestServHISTORICO.Value);
  mTbReciboFAVORECIDO.Value:= cdsPagtoPrestServNOME_PREST_SERVICO.Value;
  if cdsPagtoPrestServTIPO_PESSOA.Value = 'F' then
     mTbReciboCPF_CNPJ.Value := FormatString('999.999.999-99',
        cdsPagtoPrestServCPF_CNPJ.Value)
  else
     mTbReciboCPF_CNPJ.Value := FormatString('99.999.999/9999-99',
        cdsPagtoPrestServCPF_CNPJ.Value);
  mTbReciboENDER_LOGRAD.Value := cdsPagtoPrestServENDER_LOGRAD.Value+','+
     cdsPagtoPrestServENDER_BAIRRO.Value;
     mTbReciboENDER_CIDADE.Value := cdsPagtoPrestServENDER_CIDADE.Value+'-'+
     cdsPagtoPrestServENDER_UF.Value;
  if qryConfigOrgaoTIPO_ORGAO.Value = 1 then
     mTbReciboDESCR_TIPO_ORGAO_TIT.Value := 'Poder Executivo Municipal'
  else
  if qryConfigOrgaoTIPO_ORGAO.Value = 2 then
     mTbReciboDESCR_TIPO_ORGAO_TIT.Value := 'Secretaria Municipal'
  else
  if qryConfigOrgaoTIPO_ORGAO.Value = 3 then
     mTbReciboDESCR_TIPO_ORGAO_TIT.Value := 'Poder Legislativo Municipal'
  else
  if qryConfigOrgaoTIPO_ORGAO.Value = 1 then
     mTbReciboDESCR_TIPO_ORGAO_TIT.Value := 'Autarquia Municipal'
  else
     mTbReciboDESCR_TIPO_ORGAO_TIT.Value := ' ... nada ...';
  mTbReciboNOME_ORGAO.Value := Criptografa(
     qryConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  mTbReciboCNPJ_ORGAO.Value := FormatString('99.999.999/9999-99',
     Criptografa(qryConfigOrgaoCNPJ.Value,'2',14));
  mTbReciboENDER_ORGAO.Value := qryConfigOrgaoENDER_LOGRAD.Value+','+
     qryConfigOrgaoENDER_NUM.Value+' - '+
     qryConfigOrgaoENDER_BAIRRO.Value+ ' - CEP: '+
     FormatString('99.999-999',qryConfigOrgaoENDER_CEP.Value)+' - '+
     qryConfigOrgaoENDER_CIDADE.Value +'-'+
     qryConfigOrgaoENDER_UF.Value;
  mTbReciboDT_PAGTO_EXTENSO.Value := qryConfigOrgaoENDER_CIDADE.Value+'-'+
     qryConfigOrgaoENDER_UF.Value+', '+
     DataExtenso(cdsPagtoPrestServDATA_PAGTO.AsString);

  frxReport1.LoadFromFile(pv_sPathRel+'ReciboPagtoPrestServicos.fr3');
  frxReport1.ShowReport();

end;

procedure TfrmLanctoPagtoPrestServico.cdsPagtoPrestServAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
   dmPrincipal.GeraLog(cdsPagtoPrestServ,'3','PAGTO_PREST_SERVICO',Self.Name,'');
end;

procedure TfrmLanctoPagtoPrestServico.GridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  lblTitColPesquisa.Enabled:= (GridDBTableView1.Columns[AColumn.Index].Tag = 1);
  edPesquisa.Enabled       := lblTitColPesquisa.Enabled;
  cdsPagtoPrestServ.IndexFieldNames := GridDBTableView1.
     Columns[AColumn.Index].DataBinding.FieldName
end;

procedure TfrmLanctoPagtoPrestServico.edPesquisaPropertiesChange(Sender: TObject);
begin
  if cdsPagtoPrestServ.RecordCount = 0 then exit;
  PesquisaIncremental(TcxTextEdit(Sender).Text,cdsPagtoPrestServ);
end;

procedure TfrmLanctoPagtoPrestServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  mTbRecibo.Close;
  qryConfigOrgao.Close;
end;

procedure TfrmLanctoPagtoPrestServico.FormCreate(Sender: TObject);
begin
  inherited;
  Position := poDesigned;
  Top  := 70;
  Left := 11;
  Application.ProcessMessages;
  qryConfigOrgao.Open;
  mTbRecibo.CreateDataSet;
  mTbRecibo.Open;
  frmAddEditLanctoPagtoPrestServico := TfrmAddEditLanctoPagtoPrestServico.
     Create(Self);
end;

procedure TfrmLanctoPagtoPrestServico.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditLanctoPagtoPrestServico);
end;

procedure TfrmLanctoPagtoPrestServico.FormShow(Sender: TObject);
begin
  inherited;
  Caption := 'LANÇAMENTOS DE PAGAMENTOS À PRESTADORES DE SERVIÇOS ...';
  HabilitaBotoes(False,True);
  frmeUnidOrcament1.edId.SetFocus;
  pv_sPathRel := GetPathRel();
end;

Procedure TfrmLanctoPagtoPrestServico.HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
begin
  btnAdd.Enabled := lHabilita1;
  btnEdit.Enabled:= lHabilita1;
  btnDel.Enabled := lHabilita1;
  btnLimpar.Enabled    := lHabilita1;
  frmeUnidOrcament1.edId.Enabled    := lHabilita2;
  frmeUnidOrcament1.sbUnidOrcament.Enabled:= lHabilita2;
  btnOk.Enabled        := lHabilita2;
end;

procedure TfrmLanctoPagtoPrestServico.Novo1Click(Sender: TObject);
begin
  if TMenuItem(Sender).Tag = 1 then
     btnAdd.Click
  else
     btnEdit.Click;
end;

procedure TfrmLanctoPagtoPrestServico.rbRecbTodosClick(Sender: TObject);
begin
  ExecutaFiltro;
end;

procedure TfrmLanctoPagtoPrestServico.ExecutaFiltro;
begin
  cdsPagtoPrestServ.DisableControls;
  if rbRecbTodos.Checked then
     cdsPagtoPrestServ.Filtered := False
  else
  begin
     if rbRecbIndiv.Checked then
        cdsPagtoPrestServ.Filter := 'RECIBO_INDIVIDUAL = '+QuotedStr('S')
     else
        cdsPagtoPrestServ.Filter := 'RECIBO_INDIVIDUAL = '+QuotedStr('N');
     cdsPagtoPrestServ.Filtered := True;
  end;
  cdsPagtoPrestServ.EnableControls;
end;

end.
