unit LanctoOutroItemFatura;

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
  fmeLogradouro, cxCurrencyEdit, StrUtils, cxSpinEdit, cxDropDownEdit,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxNavigator;

type
  TfrmLanctoOutroItemFatura = class(TfrmPadrao1)
    gbServidores: TcxGroupBox;
    cds1: TClientDataSet;
    prov1: TDataSetProvider;
    dbg1: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    GridDBTableView1Column1: TcxGridDBColumn;
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
    GridDBTableView1Column3: TcxGridDBColumn;
    qryTotLograd: TSQLQuery;
    qryTotLogradENDER_ID_LOGRAD: TIntegerField;
    qryTotLogradCONSUMO_M3: TLargeintField;
    qry1ANO_MES: TStringField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1ID_OUTRO: TIntegerField;
    qry1COMPLEMENTO: TStringField;
    qry1TIPO: TStringField;
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
    cds1OBSERVACAO: TStringField;
    cds1DESCR_OUTRA_TARIFA: TStringField;
    cds1NOME_PESSOA: TStringField;
    cds1CPF_CNPJ_FTDO: TStringField;
    cds1NUM_HIDROMETRO: TStringField;
    cds1DESCR_TIPO_UNID_CONSUM: TStringField;
    Label1: TLabel;
    edObservacao: TcxDBTextEdit;
    GridDBTableView1Column4: TcxGridDBColumn;
    qry1DT_EVENTO: TDateField;
    cds1DT_EVENTO: TDateField;
    qry1VALOR: TFMTBCDField;
    cds1VALOR: TFMTBCDField;
    qryUsuarioPermissaoTabela: TSQLQuery;
    qryUsuarioPermissaoTabelaINCLUIR: TStringField;
    qryUsuarioPermissaoTabelaALTERAR: TStringField;
    qryUsuarioPermissaoTabelaEXCLUIR: TStringField;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cbMes: TcxComboBox;
    edAno: TcxSpinEdit;
    btnOk_: TBitBtn;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Novo1Click(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridDbColumn);
    procedure cdsEventoFixoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnOk_Click(Sender: TObject);
  private
    { Private declarations }
    pv_sCodIndex: string;
    procedure SetColGrid(iCol: Integer);
  public
    { Public declarations }
  end;

var
  frmLanctoOutroItemFatura: TfrmLanctoOutroItemFatura;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AddEditLanOutroItemFatura;

{$R *.dfm}

procedure TfrmLanctoOutroItemFatura.btnAddClick(Sender: TObject);
Var
  iAddEdit: Integer;
begin

  frmAddEditLanOutroItem.pb_sAnoMes := edAno.Text+PreencheZeros(IntToStr(cbMes.ItemIndex+1),2);
  if TButton(Sender).Tag = 1 then
  begin
     iAddEdit := frmAddEditLanOutroItem.Executa(Self.Name,0,0,1,True);
  end else
  begin
     if cds1.RecordCount = 0 then exit;
     iAddEdit := frmAddEditLanOutroItem.Executa(Self.Name,
        cds1ID_UNID_CONSUM.Value,
        cds1ID_OUTRO.Value,1,False);
  end;
  if iAddEdit > 0 then
     gsRefreshClient(cds1,'ID_UNID_CONSUM',iAddEdit);
end;

procedure TfrmLanctoOutroItemFatura.btnDelClick(Sender: TObject);
begin
   if not Confirma('Deseja realmente EXCLUIR essa Leitura ?') then exit;
      ExcluiRegistro(cds1);
end;

procedure TfrmLanctoOutroItemFatura.btnOk_Click(Sender: TObject);
Var
  sMes: string[2];
  sAno: string[4];
begin

  sMes := PreencheZeros(IntToStr(cbMes.ItemIndex+1),2);
  sAno := edAno.Text;

  cds1.Close;
  qry1.ParamByName('pAnoMes').Value := sAno+sMes;
  cds1.Open;
  SetColGrid(1);
  cds1.First;
  dbg1.SetFocus;

end;

procedure TfrmLanctoOutroItemFatura.cdsEventoFixoAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
   dmPrincipal.GeraLog(cds1,'3','LANCTO_OUTRO_ITEM',Self.Name,'');
end;

procedure TfrmLanctoOutroItemFatura.GridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridDbColumn);
begin
   SetColGrid(AColumn.Index);
   pv_sCodIndex := AColumn.DataBinding.FieldName;
end;

procedure TfrmLanctoOutroItemFatura.edPesquisaPropertiesChange(Sender: TObject);
begin
   if cds1.RecordCount = 0 then exit;
   PesquisaIncremental(TcxTextEdit(Sender).Text,ds1,pv_sCodIndex);
end;

procedure TfrmLanctoOutroItemFatura.FormCreate(Sender: TObject);
begin
  inherited;
  frmAddEditLanOutroItem := TfrmAddEditLanOutroItem.Create(Self);
end;

procedure TfrmLanctoOutroItemFatura.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditLanOutroItem);
end;

procedure TfrmLanctoOutroItemFatura.FormShow
(Sender: TObject);
Var
  sTemp: string[3];
begin
  inherited;
  Caption := 'LANÇAMENTOS DE OUTROS ÍTENS P/ A FATURA ...';

  cbMes.ItemIndex := StrToInt(RightStr(glb_sAnoMesTrab,2))-1;
  edAno.Value     := StrToInt(LeftStr(glb_sAnoMesTrab,4));

  sTemp := UsuarioPermissaoTabela(glb_iIdOperLogado,'LANCTO_OUTRO_ITEM');
  btnAdd.Enabled := (LeftStr(sTemp,1) = 'S');
  btnEdit.Enabled := (Copy(sTemp,2,1) = 'S');
  btnDel.Enabled := (RightStr(sTemp,1) = 'S');

  btnOk_.Click;

end;

procedure TfrmLanctoOutroItemFatura.Novo1Click(Sender: TObject);
begin
  if TMenuItem(Sender).Tag = 1 then
     btnAdd.Click
  else
     btnEdit.Click;
end;

Procedure TfrmLanctoOutroItemFatura.SetColGrid(iCol: Integer);
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
end;

end.
