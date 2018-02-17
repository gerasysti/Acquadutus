unit LanctoLeituraHidrometro;

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
  TfrmLanctoLeituraHidrom = class(TfrmPadrao1)
    gbServidores: TcxGroupBox;
    cds1: TClientDataSet;
    prov1: TDataSetProvider;
    dbgLeitura: TcxGrid;
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
    gbEvento: TcxGroupBox;
    btnOk: TBitBtn;
    GridDBTableView1Column2: TcxGridDBColumn;
    Panel: TPanel;
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    btnAdd: TBitBtn;
    btnEdit: TBitBtn;
    btnDel: TBitBtn;
    btnFechar: TBitBtn;
    frmeLogradouro1: TfrmeLogradouro;
    qry1: TSQLQuery;
    ds1: TDataSource;
    btnLimpar: TButton;
    qry1ANO_MES: TStringField;
    qry1ID_UNID_CONSUM: TIntegerField;
    qry1LEITURA_ANTERIOR: TIntegerField;
    qry1LEITURA_ATUAL: TIntegerField;
    qry1CONSUMO_M3: TLargeintField;
    qry1DT_LEITURA: TDateField;
    qry1ID_SERVID_LEITURA: TIntegerField;
    qry1NOME_PESSOA: TStringField;
    qry1ENDER_ID_LOGRAD: TIntegerField;
    qry1ENDER_DESCR_LOGRAD: TStringField;
    qry1ENDER_NUM_LETRA: TStringField;
    qry1ENDER_COMPLEMENTO: TStringField;
    qry1ENDER_ID_BAIRRO: TIntegerField;
    qry1ENDER_DESCR_BAIRRO: TStringField;
    qry1ENDER_ID_DISTRITO: TIntegerField;
    qry1ENDER_DESCR_DISTRITO: TStringField;
    qry1TIPO_PESSOA: TStringField;
    qry1DESCR_TIPO_PESSOA: TStringField;
    qry1CPF_CNPJ_FTDO: TStringField;
    cds1ANO_MES: TStringField;
    cds1ID_UNID_CONSUM: TIntegerField;
    cds1LEITURA_ANTERIOR: TIntegerField;
    cds1LEITURA_ATUAL: TIntegerField;
    cds1CONSUMO_M3: TLargeintField;
    cds1DT_LEITURA: TDateField;
    cds1ID_SERVID_LEITURA: TIntegerField;
    cds1NOME_PESSOA: TStringField;
    cds1ENDER_ID_LOGRAD: TIntegerField;
    cds1ENDER_DESCR_LOGRAD: TStringField;
    cds1ENDER_NUM_LETRA: TStringField;
    cds1ENDER_COMPLEMENTO: TStringField;
    cds1ENDER_ID_BAIRRO: TIntegerField;
    cds1ENDER_DESCR_BAIRRO: TStringField;
    cds1ENDER_ID_DISTRITO: TIntegerField;
    cds1ENDER_DESCR_DISTRITO: TStringField;
    cds1TIPO_PESSOA: TStringField;
    cds1DESCR_TIPO_PESSOA: TStringField;
    cds1CPF_CNPJ_FTDO: TStringField;
    qry1NUM_HIDROMETRO: TStringField;
    cds1NUM_HIDROMETRO: TStringField;
    Label1: TLabel;
    edTotM3Lograd: TcxCurrencyEdit;
    qryTotLograd: TSQLQuery;
    qryTotLogradENDER_ID_LOGRAD: TIntegerField;
    qryTotLogradCONSUMO_M3: TLargeintField;
    qryUsuarioPermissaoTabela: TSQLQuery;
    qryUsuarioPermissaoTabelaINCLUIR: TStringField;
    qryUsuarioPermissaoTabelaALTERAR: TStringField;
    qryUsuarioPermissaoTabelaEXCLUIR: TStringField;
    btnHistFaturas: TBitBtn;
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
      AColumn: TcxGridDbColumn);
    procedure cdsEventoFixoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure btnHistFaturasClick(Sender: TObject);
  private
    { Private declarations }
    pv_sCodIndex: string;
    Procedure HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
    procedure SetColGrid(iCol: Integer);
    procedure TotalLogradouro;
    procedure PermissoesUsuario(iIdUsuario: integer; sNomeTab: String);
  public
    { Public declarations }
  end;

var
  frmLanctoLeituraHidrom: TfrmLanctoLeituraHidrom;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AddEditLanLeituraHidrometro, HistoricoLanctoLeitura;

{$R *.dfm}

procedure TfrmLanctoLeituraHidrom.btnAddClick(Sender: TObject);
Var
  iAddEdit: Integer;
begin
   if TButton(Sender).Tag = 1 then
   begin
      iAddEdit := frmAddEditLanLeituraHidrom.Executa(Self.Name,0,
         StrToInt(Trim(frmeLogradouro1.edId.Text)),1,True);
   end else
   begin
      if cds1.RecordCount = 0 then exit;
      iAddEdit := frmAddEditLanLeituraHidrom.Executa(Self.Name,
         cds1ID_UNID_CONSUM.Value,
         StrToInt(Trim(frmeLogradouro1.edId.Text)),1,False);
   end;
   if iAddEdit > 0 then
   begin
      cds1.Close;
      cds1.Open;
      cds1.Locate('ID_UNID_CONSUM',IntToStr(iAddEdit),[]);
      TotalLogradouro;
   end;
end;

procedure TfrmLanctoLeituraHidrom.btnDelClick(Sender: TObject);
begin
   if not Confirma('Deseja realmente EXCLUIR essa Leitura ?') then exit;
   begin
      ExcluiRegistro(cds1);
      TotalLogradouro;
   end;
end;

procedure TfrmLanctoLeituraHidrom.btnHistFaturasClick(Sender: TObject);
begin
  frmHistLanctoLeitura := TfrmHistLanctoLeitura.Create(Self);
  frmHistLanctoLeitura.pb_iIdUnidConsum := cds1ID_UNID_CONSUM.Value;
  frmHistLanctoLeitura.ShowModal;
  FreeAndNil(frmHistLanctoLeitura);
end;

procedure TfrmLanctoLeituraHidrom.btnLimparClick(Sender: TObject);
begin
  cds1.Close;
  HabilitaBotoes(False,True);
  frmeLogradouro1.edId.Text := '';
  edTotM3Lograd.Value := 0;
  frmeLogradouro1.edId.SetFocus;
end;

procedure TfrmLanctoLeituraHidrom.btnOkClick(Sender: TObject);
begin
  frmeLogradouro1.edIdExit(Nil);
  if Empty((frmeLogradouro1.edId.Text)) then exit;
  cds1.Close;
  qry1.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
  qry1.ParamByName('pLograd').AsString := Trim(frmeLogradouro1.edId.Text);
  cds1.Open;
  HabilitaBotoes(True,False);
  SetColGrid(1);
  cds1.First;
  TotalLogradouro;
  dbgLeitura.SetFocus;
end;

procedure TfrmLanctoLeituraHidrom.cdsEventoFixoAfterApplyUpdates(
  Sender: TObject; var OwnerData: OleVariant);
begin
   dmPrincipal.GeraLog(cds1,'3','LEITURA_HIDROMETRO',Self.Name,'');
end;

procedure TfrmLanctoLeituraHidrom.GridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridDbColumn);
begin
   SetColGrid(AColumn.Index);
   pv_sCodIndex := AColumn.DataBinding.FieldName;
end;

procedure TfrmLanctoLeituraHidrom.edPesquisaPropertiesChange(Sender: TObject);
begin
   if cds1.RecordCount = 0 then exit;
   PesquisaIncremental(TcxTextEdit(Sender).Text,ds1,pv_sCodIndex);
end;

procedure TfrmLanctoLeituraHidrom.FormCreate(Sender: TObject);
begin
  inherited;
  frmAddEditLanLeituraHidrom  := TfrmAddEditLanLeituraHidrom.Create(Self);
end;

procedure TfrmLanctoLeituraHidrom.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmAddEditLanLeituraHidrom);
end;

procedure TfrmLanctoLeituraHidrom.FormShow(Sender: TObject);
begin
  inherited;
  edTotM3Lograd.Value := 0;
  Caption := 'LANÇAMENTOS DO CONSUMO/LEITURA POR HIDRÔMETRO ...';

  HabilitaBotoes(False,True);

  frmeLogradouro1.edId.SetFocus;
end;

Procedure TfrmLanctoLeituraHidrom.HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
Var
  sTemp: string[3];
begin
  btnAdd.Enabled := lHabilita1;
  btnEdit.Enabled:= lHabilita1;
  btnDel.Enabled := lHabilita1;
  btnLimpar.Enabled    := lHabilita1;
  frmeLogradouro1.edId.Enabled    := lHabilita2;
  frmeLogradouro1.sb1.Enabled:= lHabilita2;
  btnOk.Enabled        := lHabilita2;
  edPesquisa.Enabled   := lHabilita1;

   if lHabilita1 = True then
   begin
      sTemp := UsuarioPermissaoTabela(glb_iIdOperLogado,'LEITURA_HIDROMETRO');
      btnAdd.Enabled := (LeftStr(sTemp,1) = 'S');
      btnEdit.Enabled := (Copy(sTemp,2,1) = 'S');
      btnDel.Enabled := (RightStr(sTemp,1) = 'S');
   end;

end;

procedure TfrmLanctoLeituraHidrom.Novo1Click(Sender: TObject);
begin
  if TMenuItem(Sender).Tag = 1 then
     btnAdd.Click
  else
     btnEdit.Click;
end;

Procedure TfrmLanctoLeituraHidrom.SetColGrid(iCol: Integer);
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

Procedure TfrmLanctoLeituraHidrom.TotalLogradouro;
begin
   qryTotLograd.Close;
   qryTotLograd.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
   qryTotLograd.ParamByName('pLograd').AsString := Trim(frmeLogradouro1.edId.Text);
   qryTotLograd.Open;
   try
      edTotM3Lograd.Value := qryTotLogradCONSUMO_M3.Value;
   finally
      qryTotLograd.Close;
   end;
end;

procedure TfrmLanctoLeituraHidrom.PermissoesUsuario(iIdUsuario: integer; sNomeTab: String);
begin

  qryUsuarioPermissaoTabela.Close;
  qryUsuarioPermissaoTabela.ParamByName('pIdUsuario').Value:= iIdUsuario;
  qryUsuarioPermissaoTabela.ParamByName('pNomeTab').Value  := sNomeTab;
  qryUsuarioPermissaoTabela.Open;
  btnAdd.Enabled   := (qryUsuarioPermissaoTabelaINCLUIR.Value='S');
  btnEdit.Enabled:= (qryUsuarioPermissaoTabelaALTERAR.Value='S');
  btnDel.Enabled:= (qryUsuarioPermissaoTabelaEXCLUIR.Value='S');
  qryUsuarioPermissaoTabela.Close;

end;


end.
