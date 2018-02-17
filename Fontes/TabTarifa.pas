unit TabTarifa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadTabPadrao2, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, FMTBcd, DBClient, Provider, SqlExpr,
  cxTextEdit, StdCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxGroupBox, cxPC,
  cxNavigator, cxDBNavigator, cxButtons, ExtCtrls, cxCurrencyEdit, cxDBEdit,
  cxLabel, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu;

type
  TfrmTabTarifa = class(TfrmCadTabPadrao2)
    sdsOutraTarifa: TSQLDataSet;
    provOutraTarifa: TDataSetProvider;
    cdsOutraTarifa: TClientDataSet;
    dsOutraTarifa: TDataSource;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    cxGroupBox4: TcxGroupBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridLevel6: TcxGridLevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    sds1ID: TIntegerField;
    sds1FORMA_CALCULO: TStringField;
    sds1TIPO_UNID_CONSUM: TStringField;
    sds1QTD_INI: TIntegerField;
    sds1QTD_FIM: TIntegerField;
    sds1VALOR: TFMTBCDField;
    sds1ID_VIGENCIA: TIntegerField;
    sds1DESCR_FORMA_CALCULO: TStringField;
    sds1DESCR_TIPO_UNID_CONSUM: TStringField;
    sds1INI_VIGENCIA: TStringField;
    sds1FIM_VIGENCIA: TStringField;
    sdsOutraTarifaID: TIntegerField;
    sdsOutraTarifaDESCRICAO: TStringField;
    sdsOutraTarifaVALOR: TFMTBCDField;
    sdsOutraTarifaID_VIGENCIA: TIntegerField;
    sdsOutraTarifaINI_VIGENCIA: TStringField;
    sdsOutraTarifaFIM_VIGENCIA: TStringField;
    cds1ID: TIntegerField;
    cds1FORMA_CALCULO: TStringField;
    cds1TIPO_UNID_CONSUM: TStringField;
    cds1QTD_INI: TIntegerField;
    cds1QTD_FIM: TIntegerField;
    cds1VALOR: TFMTBCDField;
    cds1ID_VIGENCIA: TIntegerField;
    cds1DESCR_FORMA_CALCULO: TStringField;
    cds1DESCR_TIPO_UNID_CONSUM: TStringField;
    cds1INI_VIGENCIA: TStringField;
    cds1FIM_VIGENCIA: TStringField;
    cdsOutraTarifaID: TIntegerField;
    cdsOutraTarifaDESCRICAO: TStringField;
    cdsOutraTarifaVALOR: TFMTBCDField;
    cdsOutraTarifaID_VIGENCIA: TIntegerField;
    cdsOutraTarifaINI_VIGENCIA: TStringField;
    cdsOutraTarifaFIM_VIGENCIA: TStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2Column2: TcxGridDBColumn;
    cxGridDBTableView2Column3: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    GridTable1DBTableView1Column5: TcxGridDBColumn;
    GridTable1DBTableView1Column6: TcxGridDBColumn;
    qryVigenciaTarifa: TSQLQuery;
    qryVigenciaTarifaID: TIntegerField;
    dsVigenciaTarifa: TDataSource;
    cxTabSheet1: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    qryVigencia: TSQLQuery;
    provVigencia: TDataSetProvider;
    cdsVigencia: TClientDataSet;
    dsVigencia: TDataSource;
    qryVigenciaID: TIntegerField;
    qryVigenciaINICIO: TStringField;
    qryVigenciaFIM: TStringField;
    sds1INI_VIG_FTDO: TStringField;
    sds1FIM_VIG_FTDO: TStringField;
    cds1INI_VIG_FTDO: TStringField;
    cds1FIM_VIG_FTDO: TStringField;
    qryVigenciaTarifaINI_VIG_FTDO: TStringField;
    qryVigenciaTarifaFIM_VIG_FTDO: TStringField;
    qryVigenciaINI_VIG_FTDO: TStringField;
    qryVigenciaFIM_VIG_FTDO: TStringField;
    cdsVigenciaID: TIntegerField;
    cdsVigenciaINICIO: TStringField;
    cdsVigenciaFIM: TStringField;
    cdsVigenciaINI_VIG_FTDO: TStringField;
    cdsVigenciaFIM_VIG_FTDO: TStringField;
    qryVigenciaOBSERVACAO: TStringField;
    cdsVigenciaOBSERVACAO: TStringField;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    sdsOutraTarifaINI_VIG_FTDO: TStringField;
    sdsOutraTarifaFIM_VIG_FTDO: TStringField;
    cdsOutraTarifaINI_VIG_FTDO: TStringField;
    cdsOutraTarifaFIM_VIG_FTDO: TStringField;
    GridTable1DBTableView1Column7: TcxGridDBColumn;
    sds1VAL_EXCED: TFMTBCDField;
    cds1VAL_EXCED: TFMTBCDField;
    sds1QTD_BASE: TIntegerField;
    cds1QTD_BASE: TIntegerField;
    GridTable1DBTableView1Column8: TcxGridDBColumn;
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure Page1Change(Sender: TObject);
  private
    { Private declarations }
    sAnoMesVigIniAnter: String[6];
    Procedure OpenClient;
  public
    { Public declarations }
  end;

var
  frmTabTarifa: TfrmTabTarifa;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AddEditTarifa1, AddEditTarifa2,
  udmTabelas;

{$R *.dfm}

procedure TfrmTabTarifa.btnExcluirClick(Sender: TObject);
Var
  sAnoMesIniVig: String[6];
begin
  if Page1.ActivePageIndex = 0 then
  begin
     if ds1.DataSet.RecordCount = 0 then exit;
     if Confirma('Deseja Realmente EXCLUIR esse Ítem de Tarifa ?') then
        dmTabelas.ExcluiRegistro(ds1.DataSet.Name);
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     if dsOutraTarifa.DataSet.RecordCount = 0 then exit;
     if Confirma('Deseja Realmente EXCLUIR esse Ítem de Tarifa (Outra) ?') then
        dmTabelas.ExcluiRegistro(dsOutraTarifa.DataSet.Name);
  end;
end;

procedure TfrmTabTarifa.btnNovoClick(Sender: TObject);
Var
  iIdAddEdit: Integer;
begin
  inherited;
  if Page1.ActivePageIndex = 0 then
  begin
     if TcxButton(Sender).Tag = 1 then
     begin
        ds1.DataSet.Insert;
        frmAddEditTarifa1.pb_iIdVigencia := dsVigenciaTarifa.DataSet.FieldByName('ID').Value;
        frmAddEditTarifa1.Executa(Name,0);
     end else
     begin
        if ds1.DataSet.RecordCount = 0 then exit;
        ds1.DataSet.Edit;
        iIdAddEdit := frmAddEditTarifa1.Executa(Name,ds1.DataSet.FieldByName('ID').Value);
     end;
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     if TcxButton(Sender).Tag = 1 then
     begin
        dsOutraTarifa.DataSet.Insert;
        frmAddEditTarifa2.pb_iIdVigencia := dsVigenciaTarifa.DataSet.FieldByName('ID').Value;
        frmAddEditTarifa2.Executa(Self.Name,0);
     end else
     begin
        if dsOutraTarifa.DataSet.RecordCount = 0 then exit;
        dsOutraTarifa.DataSet.Edit;
        iIdAddEdit := frmAddEditTarifa2.Executa(Name,dsOutraTarifa.DataSet.FieldByName('ID').Value);
     end;
     OpenClient;
  end;

end;

procedure TfrmTabTarifa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ds1.DataSet.Close;
  dsOutraTarifa.DataSet.Close;
  dsVigencia.DataSet.Close;
  dsVigenciaTarifa.DataSet.Close;
end;

procedure TfrmTabTarifa.FormCreate(Sender: TObject);
begin

  inherited;

  btnPesquisar.Visible:= False;
  btnImprimir.Visible := False;

  frmAddEditTarifa1  := TfrmAddEditTarifa1.Create(Self);
  frmAddEditTarifa2  := TfrmAddEditTarifa2.Create(Self);

end;

procedure TfrmTabTarifa.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditTarifa1);
  FreeAndNil(frmAddEditTarifa2);
end;

procedure TfrmTabTarifa.FormShow(Sender: TObject);
begin

  inherited;

  OpenClient;

  sAnoMesVigIniAnter:= ds1.DataSet.FieldByName('INI_VIGENCIA').Value;
  dmTabelas.SetIndice('cdsTabTarifa','id');

  Page1.ActivePageIndex:= 0;
  cxDBNavigator1.DataSource := ds1;

  with dmTabelas do
  begin
     qryVigenciaTarifa.Close;
     qryVigenciaTarifa.ParamByName('pe_ano_mes').Value := glb_sAnoMesTrab;
     qryVigenciaTarifa.ParamByName('pe_ano_mes2').Value := glb_sAnoMesTrab;
     qryVigenciaTarifa.Open;
     cdsVigencia.Close;
     cdsVigencia.Open;
  end;

  GridTable1.SetFocus;

end;

procedure TfrmTabTarifa.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
{
  if TcxGridTableView(Sender).Columns[AColumn.Index].Properties = Nil then
  begin
     lblTitColPesquisa.Enabled:= True;
     edPesquisa.Enabled       := True;
     lblTitColPesquisa.Cap]tion:= 'Pesquisar por '+
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

Procedure TfrmTabTarifa.OpenClient;
begin

  with dmTabelas do
  begin
     cdsTabTarifa.Close;
     qryTabTarifa.ParamByName('sAnoMesIni').Value := glb_sAnoMesTrab;
     qryTabTarifa.ParamByName('sAnoMesFim').Value := glb_sAnoMesTrab;
     cdsTabTarifa.Open;
     cdsTabOutraTarifa.Close;
     qryTabOutraTarifa.ParamByName('pAnoMesAtual1').Value := glb_sAnoMesTrab;
     qryTabOutraTarifa.ParamByName('pAnoMesAtual2').Value := glb_sAnoMesTrab;
     cdsTabOutraTarifa.Open;
  end;

end;

procedure TfrmTabTarifa.Page1Change(Sender: TObject);
Var
  iConta: Integer;
begin

  if Page1.ActivePageIndex = 0 then
     cxDBNavigator1.DataSource := ds1
  else if Page1.ActivePageIndex = 1 then
     cxDBNavigator1.DataSource := dsOutraTarifa
  else
     cxDBNavigator1.DataSource := dsVigencia;

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
