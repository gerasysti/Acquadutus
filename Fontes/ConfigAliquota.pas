unit ConfigAliquota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadTabPadrao2, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, DBClient, Provider, SqlExpr,
  cxTextEdit, StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox, cxPC,
  cxNavigator, cxDBNavigator, cxButtons, ExtCtrls, cxCurrencyEdit, cxDBEdit,
  cxLabel, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter;

type
  TfrmConfigAliquotas = class(TfrmCadTabPadrao2)
    sds1ID: TIntegerField;
    sds1ANO_MES_INI_VIG: TStringField;
    sds1ANO_MES_FIM_VIG: TStringField;
    sds1INI_FAIXA: TFMTBCDField;
    sds1FIM_FAIXA: TFMTBCDField;
    sds1ALIQUOTA: TFMTBCDField;
    sds1VAL_DEDUCAO: TFMTBCDField;
    cds1ID: TIntegerField;
    cds1ANO_MES_INI_VIG: TStringField;
    cds1ANO_MES_FIM_VIG: TStringField;
    cds1INI_FAIXA: TFMTBCDField;
    cds1FIM_FAIXA: TFMTBCDField;
    cds1ALIQUOTA: TFMTBCDField;
    cds1VAL_DEDUCAO: TFMTBCDField;
    sdsDeducaoIRRF: TSQLDataSet;
    dspDeducaoIRRF: TDataSetProvider;
    cdsDeducaoIRRF: TClientDataSet;
    dsDeducaoIRRF: TDataSource;
    sdsDeducaoIRRFID: TIntegerField;
    sdsDeducaoIRRFANO_MES_INI_VIG: TStringField;
    sdsDeducaoIRRFANO_MES_FIM_VIG: TStringField;
    sdsDeducaoIRRFVAL_ABONO: TFMTBCDField;
    sdsDeducaoIRRFVAL_DEDUCAO_DEPEND: TFMTBCDField;
    cdsDeducaoIRRFID: TIntegerField;
    cdsDeducaoIRRFANO_MES_INI_VIG: TStringField;
    cdsDeducaoIRRFANO_MES_FIM_VIG: TStringField;
    cdsDeducaoIRRFVAL_ABONO: TFMTBCDField;
    cdsDeducaoIRRFVAL_DEDUCAO_DEPEND: TFMTBCDField;
    dsAliqINSS: TDataSource;
    gbObservacao: TcxGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edValDeduzDepend: TcxDBCurrencyEdit;
    edValAbono: TcxDBCurrencyEdit;
    cxGroupBox1: TcxGroupBox;
    dsSalFamINSS: TDataSource;
    cxTabSheet1: TcxTabSheet;
    dsAliqIPM: TDataSource;
    dsSalFamIPM: TDataSource;
    cxTabSheet2: TcxTabSheet;
    dsAliqFAP: TDataSource;
    GridTable4: TcxGrid;
    GridDBTableView4: TcxGridDBTableView;
    GridDBTableView4Column1: TcxGridDBColumn;
    GridDBTableView4Column2: TcxGridDBColumn;
    cxGridLevel5: TcxGridLevel;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    dsAliqINSSPatronal: TDataSource;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    cxLabel3: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxLabel4: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    Bevel1: TBevel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    edIniVig: TcxTextEdit;
    edFimVig: TcxTextEdit;
    edValIsencaoIRRF: TcxCurrencyEdit;
    Bevel2: TBevel;
    cxLabel10: TcxLabel;
    edIniVigPrevid1: TcxTextEdit;
    cxLabel11: TcxLabel;
    edFimVigPrevid1: TcxTextEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Bevel3: TBevel;
    cxGroupBox2: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox5: TcxGroupBox;
    cxLabel5: TcxLabel;
    edValPatronalPrevid2: TcxDBCurrencyEdit;
    cxGroupBox6: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxLabel12: TcxLabel;
    edIniVigPrevid2: TcxTextEdit;
    cxLabel13: TcxLabel;
    edFimVigPrevid2: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel14: TcxLabel;
    Bevel4: TBevel;
    dsAliqIPMPatronal: TDataSource;
    edIniVigFAP: TcxTextEdit;
    edFimVigFAP: TcxTextEdit;
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure Page1Change(Sender: TObject);
    procedure cds1AfterOpen(DataSet: TDataSet);
    procedure cdsAliqIPMAfterOpen(DataSet: TDataSet);
    procedure cds1AfterApplyUpdates(Sender: TObject; var OwnerData: OleVariant);
    procedure cdsDeducaoIRRFAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
  private
    { Private declarations }
    sAnoMesVigIniAnter: String[6];
    Procedure OpenClient;
  public
    { Public declarations }
  end;

var
  frmConfigAliquotas: TfrmConfigAliquotas;

implementation

uses udmPrincipal, gsLib, UtilsDb, AddEditAliqIRRF, VarGlobais,
     AddEditAliqPrevidencia, AddEditAliqFAP, udmAliquotasDiversas;

{$R *.dfm}

procedure TfrmConfigAliquotas.btnExcluirClick(Sender: TObject);
Var
  sAnoMesIniVig: String[6];
begin
  if Page1.ActivePageIndex = 0 then
  begin
     if cds1.RecordCount = 0 then exit;
     if Confirma('Deseja Realmente EXCLUIR essa Alíquota ?') then
     begin
        cds1.First;
        while (not cds1.Eof) do
           ExcluiRegistro(cds1);
        if cdsDeducaoIRRF.RecordCount > 0 then
           ExcluiRegistro(cdsDeducaoIRRF);
     end;
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     with dmAliquotasDiversas do
     begin
        if cdsAliqINSS.RecordCount = 0 then exit;
        if Confirma('Deseja Realmente EXCLUIR essa Alíquota ?') then
        begin
           cdsAliqINSS.First;
           while (not cdsAliqINSS.Eof) do
              ExcluiRegistro(dmAliquotasDiversas.cdsAliqINSS);
           if cdsAliqINSSPatronal.RecordCount > 0 then
              ExcluiRegistro(dmAliquotasDiversas.cdsAliqINSSPatronal);
           cdsSalFamINSS.First;
           if cdsSalFamINSS.RecordCount > 0 then
              while not cdsSalFamINSS.Eof do
                 ExcluiRegistro(dmAliquotasDiversas.cdsSalFamINSS);
        end;
     end;
  end else
  if Page1.ActivePageIndex = 2 then
  begin
     with dmAliquotasDiversas do
     begin
        if cdsAliqIPM.RecordCount = 0 then exit;
        if Confirma('Deseja Realmente EXCLUIR essa Alíquota ?') then
        begin
           cdsAliqIPM.First;
           while (not cdsAliqIPM.Eof) do
              ExcluiRegistro(dmAliquotasDiversas.cdsAliqIPM);
           if cdsAliqIPMPatronal.RecordCount > 0 then
              ExcluiRegistro(dmAliquotasDiversas.cdsAliqIPMPatronal);
           cdsSalFamIPM.First;
           if cdsSalFamIPM.RecordCount > 0 then
              while not cdsSalFamIPM.Eof do
                 ExcluiRegistro(dmAliquotasDiversas.cdsSalFamIPM);
        end;
     end;
  end;
end;

procedure TfrmConfigAliquotas.btnNovoClick(Sender: TObject);
Var
  iIdAddEdit: Integer;
begin
  inherited;
  if Page1.ActivePageIndex = 0 then
  begin
     if TcxButton(Sender).Tag = 1 then
     begin
        frmAddEditAliqIRRF.pb_sAnoMesIniVig := glb_sAnoMesTrab;
        frmAddEditAliqIRRF.pb_sAnoMesFimVig := '209912';
        frmAddEditAliqIRRF.Executa(Self.Name,0);
     end else
     begin
        if cds1.RecordCount = 0 then exit;
        frmAddEditAliqIRRF.pb_sAnoMesIniVig := cds1ANO_MES_INI_VIG.Value;
        frmAddEditAliqIRRF.pb_sAnoMesFimVig := cds1ANO_MES_FIM_VIG.Value;
        iIdAddEdit := frmAddEditAliqIRRF.Executa(Self.Name,cds1ID.Value);
     end;
     OpenClient;
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     frmAddEditAliqPrevid.pb_sTipoPrevid   := '1';
     if TcxButton(Sender).Tag = 1 then
     begin
        frmAddEditAliqPrevid.pb_sAnoMesIniVig := glb_sAnoMesTrab;
        frmAddEditAliqPrevid.pb_sAnoMesFimVig := '209912';
        frmAddEditAliqPrevid.Executa(Self.Name,0);
     end else
     begin
        with dmAliquotasDiversas do
        begin
           if cdsAliqINSS.RecordCount = 0 then exit;
           frmAddEditAliqPrevid.pb_sAnoMesIniVig := cdsAliqINSSANO_MES_INI_VIG.Value;
           frmAddEditAliqPrevid.pb_sAnoMesFimVig := cdsAliqINSSANO_MES_FIM_VIG.Value;
           iIdAddEdit := frmAddEditAliqPrevid.Executa(Self.Name,cdsAliqINSSID.Value);
        end;
     end;
     OpenClient;
  end else
  if Page1.ActivePageIndex = 2 then
  begin
     frmAddEditAliqPrevid.pb_sTipoPrevid   := '3';
     if TcxButton(Sender).Tag = 1 then
     begin
        frmAddEditAliqPrevid.pb_sAnoMesIniVig := glb_sAnoMesTrab;
        frmAddEditAliqPrevid.pb_sAnoMesFimVig := '209912';
        frmAddEditAliqPrevid.Executa(Self.Name,0);
     end else
     begin
        with dmAliquotasDiversas do
        begin
           if cdsAliqIPM.RecordCount = 0 then exit;
           frmAddEditAliqPrevid.pb_sAnoMesIniVig := cdsAliqIPMANO_MES_INI_VIG.Value;
           frmAddEditAliqPrevid.pb_sAnoMesFimVig := cdsAliqIPMANO_MES_FIM_VIG.Value;
           iIdAddEdit := frmAddEditAliqPrevid.Executa(Self.Name,cdsAliqIPMID.Value);
        end;
     end;
     OpenClient;
  end;
  if Page1.ActivePageIndex = 3 then
  begin
      if TcxButton(Sender).Tag = 1 then
      begin
         frmAddEditAliqFAP.pb_sAnoMesIniVig := glb_sAnoMesTrab;
         frmAddEditAliqFAP.pb_sAnoMesFimVig := '209912';
         frmAddEditAliqFAP.Executa(Self.Name,0);
      end else
      begin
         with dmAliquotasDiversas do
         begin
            if cdsAliqFAP.RecordCount = 0 then exit;
            frmAddEditAliqFAP.pb_sAnoMesIniVig := cdsAliqFAPANO_MES_INI_VIG.Value;
            frmAddEditAliqFAP.pb_sAnoMesFimVig := cdsAliqFAPANO_MES_FIM_VIG.Value;
            iIdAddEdit := frmAddEditAliqFAP.Executa(Self.Name,cdsAliqFAPID.Value);
         end;
      end;
      if iIdAddEdit <> 0 then
      begin
         //gsRefreshClient(cds1,'ID',iIdAddEdit);
         with dmAliquotasDiversas do
         begin
            cdsAliqFAP.Close;
            cdsAliqFAP.Open;
            cdsAliqFAP.Last;
         end;
      end;
  end;
end;

procedure TfrmConfigAliquotas.cds1AfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dmPrincipal.GeraLog(cds1,'3','TAB_IRRF',Self.Name,'');
end;

procedure TfrmConfigAliquotas.cds1AfterOpen(DataSet: TDataSet);
begin
  cdsDeducaoIRRF.Close;
  sdsDeducaoIRRF.ParamByName('pAnoMesIniVig').Value:= cds1ANO_MES_INI_VIG.Value;
  sdsDeducaoIRRF.ParamByName('pAnoMesFimVig').Value:= cds1ANO_MES_FIM_VIG.Value;
  cdsDeducaoIRRF.Open;
end;

procedure TfrmConfigAliquotas.cdsAliqIPMAfterOpen(DataSet: TDataSet);
begin
  with dmAliquotasDiversas do
  begin
     cdsSalFamIPM.Close;
     sdsSalFamIPM.ParamByName('sAnoMesIni').Value:= glb_sAnoMesTrab;
     sdsSalFamIPM.ParamByName('sAnoMesFim').Value:= glb_sAnoMesTrab;
     cdsSalFamIPM.Open;
     cdsAliqIPMPatronal.Close;
     sdsAliqIpmPatronal.ParamByName('sAnoMesIni').Value:= glb_sAnoMesTrab;
     sdsAliqIpmPatronal.ParamByName('sAnoMesFim').Value:= glb_sAnoMesTrab;
     cdsAliqIPMPatronal.Open;
  end;
end;

procedure TfrmConfigAliquotas.cdsDeducaoIRRFAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  dmPrincipal.GeraLog(cds1,'3','TAB_DEDUCAO_IRRF',Self.Name,'');
end;

procedure TfrmConfigAliquotas.edPesquisaPropertiesChange(Sender: TObject);
begin
  {
  //inherited;
  if Page1.ActivePageIndex = 0 then
     PesquisaIncremental(edPesquisa.Text,cds1)
  else if Page1.ActivePageIndex = 1 then
     PesquisaIncremental(edPesquisa.Text,cdsAliqINSS)
  else if Page1.ActivePageIndex = 2 then
     PesquisaIncremental(edPesquisa.Text,cdsAliqIPM)
  else
     PesquisaIncremental(edPesquisa.Text,cdsAliqFAP);
  }
end;

procedure TfrmConfigAliquotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  with dmAliquotasDiversas do
  begin
    cdsDeducaoIRRF.Close;
    cdsSalFamINSS.Close;
    cdsAliqINSS.Close;
    cdsAliqINSSPatronal.Close;
    cdsSalFamIPM.Close;
    cdsAliqIPM.Close;
    cdsAliqIPMPatronal.Close;
    cdsAliqFAP.Close;
  end;
end;

procedure TfrmConfigAliquotas.FormCreate(Sender: TObject);
begin
  inherited;
  Position := poDesigned;
  Left     := 52;
  Top      := 96;
  Application.ProcessMessages;

  btnPesquisar.Visible:= False;
  btnImprimir.Visible := False;
  if dmAliquotasDiversas = Nil then
     dmAliquotasDiversas := TdmAliquotasDiversas.Create(Self);
  frmAddEditAliqIRRF  := TfrmAddEditAliqIRRF.Create(Self);
  frmAddEditAliqPrevid:= TfrmAddEditAliqPrevid.Create(Self);
  frmAddEditAliqFAP   := TfrmAddEditAliqFAP.Create(Self);
end;

procedure TfrmConfigAliquotas.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditAliqIRRF);
  FreeAndNil(frmAddEditAliqPrevid);
  FreeAndNil(frmAddEditAliqFAP);
  FreeAndNil(dmAliquotasDiversas);
end;

procedure TfrmConfigAliquotas.FormShow(Sender: TObject);
begin
  inherited;
  OpenClient;
  sAnoMesVigIniAnter:= cds1ANO_MES_INI_VIG.Value;
  Caption := 'TABELAS DE ALÍQUOTAS DIVERSAS';
  cds1.IndexFieldNames       := 'ID';
  {
  with dmAliquotasDiversas do
  begin
     cdsAliqINSS.IndexFieldNames:= 'ID';
     cdsAliqINSSPatronal.IndexFieldNames:= 'ID';
     cdsAliqIPM.IndexFieldNames := 'ID';
     cdsAliqFAP.IndexFieldNames := 'ID';
  end;
  }
  Page1.ActivePageIndex:= 0;

  //lblTitColPesquisa.Caption:= 'Pesquisar por '+
  //  GridTable1DBTableView1.Columns[0].Caption+':';
  GridTable1.SetFocus;

end;

procedure TfrmConfigAliquotas.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
{
  if TcxGridTableView(Sender).Columns[AColumn.Index].Properties = Nil then
  begin
     lblTitColPesquisa.Enabled:= True;
     edPesquisa.Enabled       := True;
     lblTitColPesquisa.Caption:= 'Pesquisar por '+
        TcxGridTableView(Sender).Columns[AColumn.Index].Caption+':';
  end else
  begin
     lblTitColPesquisa.Enabled:= False;
     edPesquisa.Enabled       := False;
  end;
  TClientDataSet(TcxGridDBTableView(Sender).DataController.DataSource.DataSet).IndexFieldNames
     := TcxGridDBTableView(Sender).Columns[AColumn.Index].DataBinding.FieldName;
}
end;

Procedure TfrmConfigAliquotas.OpenClient;
begin
  cds1.Close;
  sds1.ParamByName('sAnoMesIni').Value := glb_sAnoMesTrab;
  sds1.ParamByName('sAnoMesFim').Value := glb_sAnoMesTrab;
  cds1.Open;
  edIniVig.Text := FormatString('99/9999',InverteAnoMes(cds1ANO_MES_INI_VIG.Value,'2'));
  edFimVig.Text := FormatString('99/9999',InverteAnoMes(cds1ANO_MES_FIM_VIG.Value,'2'));
  edValIsencaoIRRF.Value := cds1INI_FAIXA.AsCurrency - 0.01;
  with dmAliquotasDiversas do
  begin
     cdsAliqINSS.Close;
     sdsAliqINSS.ParamByName('sAnoMesIni').Value := glb_sAnoMesTrab;
     sdsAliqINSS.ParamByName('sAnoMesFim').Value := glb_sAnoMesTrab;
     cdsAliqINSS.Open;
     edIniVigPrevid1.Text := FormatString('99/9999',
        InverteAnoMes(cdsAliqINSSANO_MES_INI_VIG.Value,'2'));
     edFimVigPrevid1.Text := FormatString('99/9999',
        InverteAnoMes(cdsAliqINSSANO_MES_FIM_VIG.Value,'2'));
     cdsAliqIPM.Close;
     sdsAliqIPM.ParamByName('sAnoMesIni').Value := glb_sAnoMesTrab;
     sdsAliqIPM.ParamByName('sAnoMesFim').Value := glb_sAnoMesTrab;
     cdsAliqIPM.Open;
     edIniVigPrevid2.Text := FormatString('99/9999',
        InverteAnoMes(cdsAliqIPMANO_MES_INI_VIG.Value,'2'));
     edFimVigPrevid2.Text := FormatString('99/9999',
        InverteAnoMes(cdsAliqIPMANO_MES_FIM_VIG.Value,'2'));

     cdsAliqFAP.Close;
     sdsAliqFAP.ParamByName('sAnoMesIni').Value := glb_sAnoMesTrab;
     sdsAliqFAP.ParamByName('sAnoMesFim').Value := glb_sAnoMesTrab;
     cdsAliqFAP.Open;
     edIniVigFAP.Text := InverteAnoMes(cdsAliqFAPANO_MES_INI_VIG.Value,'2');
     edFimVigFAP.Text := InverteAnoMes(cdsAliqFAPANO_MES_FIM_VIG.Value,'2');
     edIniVigFAP.Text := FormatString('99/9999',edIniVigFAP.Text);
     edFimVigFAP.Text := FormatString('99/9999',edFimVigFAP.Text);
     //FormatString('99/9999',
  end;
end;

procedure TfrmConfigAliquotas.Page1Change(Sender: TObject);
Var
  iConta: Integer;
begin
{
  if Page1.ActivePageIndex = 0 then
  begin
     for iConta := 0 to GridTable1DBTableView1.ColumnCount -1 do
        if GridTable1DBTableView1.Columns[iConta].SortOrder <> soNone then
           lblTitColPesquisa.Caption := 'Pesquisar por '+
               GridTable1DBTableView1.Columns[iConta].Caption+':';
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     for iConta := 0 to cxGridDBTableView2.ColumnCount -1 do
        if cxGridDBTableView2.Columns[iConta].SortOrder <> soNone then
           lblTitColPesquisa.Caption := 'Pesquisar por '+
               cxGridDBTableView2.Columns[iConta].Caption+':';
  end else
  }
  {
  if Page1.ActivePageIndex = 2 then
  begin
     for iConta := 0 to GridDBTableView3.ColumnCount -1 do
        if GridDBTableView3.Columns[iConta].SortOrder <> soNone then
           lblTitColPesquisa.Caption := 'Pesquisar por '+
               GridDBTableView3.Columns[iConta].Caption+':';
  end else
  }
  {
  if Page1.ActivePageIndex = 3 then
  begin
     for iConta := 0 to GridDBTableView4.ColumnCount -1 do
        if GridDBTableView3.Columns[iConta].SortOrder <> soNone then
           lblTitColPesquisa.Caption := 'Pesquisar por '+
               GridDBTableView3.Columns[iConta].Caption+':';
  end;
  }
end;

end.
