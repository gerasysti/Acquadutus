unit LanctoCorteReligacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxGroupBox,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBEdit, FMTBcd,
  SqlExpr, Provider, DBClient, Menus, cxRadioGroup, cxCalendar,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, ExtCtrls,
  fmeLogradouro, cxCurrencyEdit, StrUtils, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator;

type
  TfrmLanctoCorteReligacao = class(TfrmPadrao1)
    gbServidores: TcxGroupBox;
    cds1: TClientDataSet;
    prov1: TDataSetProvider;
    dbg1: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Alterar1: TMenuItem;
    Exluir1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    GridDBTableView1Column2: TcxGridDBColumn;
    Panel: TPanel;
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnFechar: TBitBtn;
    qry1: TSQLQuery;
    ds1: TDataSource;
    qryTotLograd: TSQLQuery;
    qryTotLogradENDER_ID_LOGRAD: TIntegerField;
    qryTotLogradCONSUMO_M3: TLargeintField;
    GridDBTableView1Column4: TcxGridDBColumn;
    GridDBTableView1Column5: TcxGridDBColumn;
    edEnderDescrDisitro: TcxDBTextEdit;
    edEnderDescrBairro: TcxDBTextEdit;
    edEnderComplemento: TcxDBTextEdit;
    edEnderNum: TcxDBTextEdit;
    edDescrLograd: TcxDBTextEdit;
    Label2: TLabel;
    qry1ID: TIntegerField;
    qry1TIPO_MOVIM: TStringField;
    qry1DT_MOVIM: TDateField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1MOTIVO: TIntegerField;
    qry1ID_SERVID_EXECUT: TIntegerField;
    qry1OBSERVACAO: TStringField;
    qry1NOME_PESSOA: TStringField;
    qry1DESCR_CATEGORIA: TStringField;
    qry1CPF_CNPJ: TStringField;
    qry1DESCR_TIPO_MOVIM: TStringField;
    qry1ANO_MES: TStringField;
    qry1ENDER_ID_LOGRAD: TIntegerField;
    qry1ENDER_DESCR_LOGRAD: TStringField;
    qry1ENDER_COMPLEMENTO: TStringField;
    qry1ENDER_NUM_LETRA: TStringField;
    qry1ENDER_ID_BAIRRO: TIntegerField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_ID_DISTRITO: TIntegerField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    qry1ENDER_DESCR_LOGRADOURO: TStringField;
    qry1ENDER_UC_NUM_LETRA: TStringField;
    qry1ENDER_COMPLEMENTO_1: TStringField;
    qry1ENDER_DESCR_BAIRRO_1: TStringField;
    qry1ENDER_DESCR_DISTRITO_1: TStringField;
    cds1ID: TIntegerField;
    cds1TIPO_MOVIM: TStringField;
    cds1DT_MOVIM: TDateField;
    cds1ID_UNID_CONSUM: TIntegerField;
    cds1MOTIVO: TIntegerField;
    cds1ID_SERVID_EXECUT: TIntegerField;
    cds1OBSERVACAO: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1DESCR_CATEGORIA: TStringField;
    cds1CPF_CNPJ: TStringField;
    cds1DESCR_TIPO_MOVIM: TStringField;
    cds1ANO_MES: TStringField;
    cds1ENDER_ID_LOGRAD: TIntegerField;
    cds1ENDER_DESCR_LOGRAD: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    cds1ENDER_NUM_LETRA: TStringField;
    cds1ENDER_ID_BAIRRO: TIntegerField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_ID_DISTRITO: TIntegerField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    cds1ENDER_DESCR_LOGRADOURO: TStringField;
    cds1ENDER_UC_NUM_LETRA: TStringField;
    cds1ENDER_COMPLEMENTO_1: TStringField;
    cds1ENDER_DESCR_BAIRRO_1: TStringField;
    cds1ENDER_DESCR_DISTRITO_1: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cdsEventoFixoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
  private
    { Private declarations }
    pv_sColIndex : string;
    procedure SetColGrid(iCol: Integer);
  public
    { Public declarations }
  end;

var
  frmLanctoCorteReligacao: TfrmLanctoCorteReligacao;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AddEditLanCorteReligacao;

{$R *.dfm}

procedure TfrmLanctoCorteReligacao.btnAddClick(Sender: TObject);
Var
  iAddEdit: Integer;
begin
   if TButton(Sender).Tag = 1 then
   begin
      iAddEdit := frmAddEditLanCorteReligacao.Executa(Self.Name,0,0,1,True);
   end else
   begin
      if cds1.RecordCount = 0 then exit;
      iAddEdit := frmAddEditLanCorteReligacao.Executa(Self.Name,
         cds1ID.Value,cds1ID_UNID_CONSUM.Value,1,False);
   end;
   if iAddEdit > 0 then
      gsRefreshClient(cds1,'ID',iAddEdit);
end;

procedure TfrmLanctoCorteReligacao.btnDelClick(Sender: TObject);
begin
   if not Confirma('Deseja realmente EXCLUIR essa Movimento ?') then exit;
      ExcluiRegistro(cds1);
end;

procedure TfrmLanctoCorteReligacao.cdsEventoFixoAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
   dmPrincipal.GeraLog(cds1,'3','LANCTO_CORTE_RELIGACAO',Self.Name,'');
end;

procedure TfrmLanctoCorteReligacao.GridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SetColGrid(AColumn.Index);
   pv_sColIndex := GridDBTableView1.Columns[AColumn.Index].DataBinding.FieldName;
end;

procedure TfrmLanctoCorteReligacao.edPesquisaPropertiesChange(Sender: TObject);
begin
   if cds1.RecordCount = 0 then exit;
   PesquisaIncremental(TcxTextEdit(Sender).Text,ds1,pv_sColIndex);
end;

procedure TfrmLanctoCorteReligacao.FormCreate(Sender: TObject);
begin
  inherited;
  frmAddEditLanCorteReligacao := TfrmAddEditLanCorteReligacao.Create(Self);
end;

procedure TfrmLanctoCorteReligacao.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditLanCorteReligacao);
end;

procedure TfrmLanctoCorteReligacao.FormShow(Sender: TObject);
Var
  sTemp: string[3];
begin
  inherited;
  Caption := 'LANÇAMENTOS DE CORTE E/OU RELIGAÇÕES ...';

  sTemp := UsuarioPermissaoTabela(glb_iIdOperLogado,'LANCTO_CORTE_RELIGACAO');
  btnAdd.Enabled := (LeftStr(sTemp,1) = 'S');
  btnEdit.Enabled := (Copy(sTemp,2,1) = 'S');
  btnDel.Enabled := (RightStr(sTemp,1) = 'S');

  Screen.Cursor := crHourGlass;
  cds1.Close;
  qry1.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
  cds1.Open;

  SetColGrid(1);
  cds1.First;
  dbg1.SetFocus;

  Screen.Cursor := crDefault;

end;

procedure TfrmLanctoCorteReligacao.Novo1Click(Sender: TObject);
begin
  if TMenuItem(Sender).Tag = 1 then
     btnAdd.Click
  else
     btnEdit.Click;
end;

Procedure TfrmLanctoCorteReligacao.SetColGrid(iCol: Integer);
Var
   iConta: Integer;
begin
   //pb_iUltCol := iCol;
   edPesquisa.Enabled := GridDBTableView1.Columns[iCol].Tag = 1;
   cds1.IndexFieldNames := GridDBTableView1.
      Columns[iCol].DataBinding.FieldName;
   for iConta := 0 to GridDBTableView1.ColumnCount - 1  do
       GridDBTableView1.Columns[iConta].Styles.Header := nil;
   GridDBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   pv_sColIndex := GridDBTableView1.Columns[iConta].DataBinding.FieldName;

end;

end.
