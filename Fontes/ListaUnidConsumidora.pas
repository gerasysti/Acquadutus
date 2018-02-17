unit ListaUnidConsumidora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, StdCtrls, Buttons, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxGroupBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxLabel, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FMTBcd, SqlExpr, DBClient, Provider, cxCheckBox, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxDropDownEdit,
  cxMaskEdit, cxDBEdit, fmeLogradouro,
  fmeFiltraCategSituacao, dxCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TfrmListagemUnidConsumidora = class(TfrmPadrao1)
    Notebook1: TNotebook;
    GroupBox1: TGroupBox;
    rbOpcao1: TRadioButton;
    rbOpcao2: TRadioButton;
    rbOpcao3: TRadioButton;
    rbOpcao4: TRadioButton;
    btnListar: TBitBtn;
    cxGroupBox1: TcxGroupBox;
    btnOk1: TBitBtn;
    GridTable1: TcxGrid;
    GridTable1DBTableView1: TcxGridDBTableView;
    GridTable1DBTableView1Column7: TcxGridDBColumn;
    GridTable1DBTableView1Column8: TcxGridDBColumn;
    GridTable1DBTableView1Column1: TcxGridDBColumn;
    GridTable1DBTableView1Column3: TcxGridDBColumn;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    GridTable1DBTableView1Column6: TcxGridDBColumn;
    GridTable1DBTableView1Column5: TcxGridDBColumn;
    GridTable1DBTableView1Column9: TcxGridDBColumn;
    GridTable1Level1: TcxGridLevel;
    Panel: TPanel;
    edPesquisa1: TcxTextEdit;
    lblTitColPesquisa: TcxLabel;
    provListaUnidConsum1: TDataSetProvider;
    cdsListaUnidConsum1: TClientDataSet;
    dsListaUnidConsum1: TDataSource;
    qryListaUnidConsum1: TSQLQuery;
    btnSair1: TBitBtn;
    sbPosServid1: TSpeedButton;
    GridTable1DBTableView1Column2: TcxGridDBColumn;
    qryListaUnidConsum3: TSQLQuery;
    provListaUnidConsum3: TDataSetProvider;
    cdsListaUnidConsum3: TClientDataSet;
    dsListaUnidConsum3: TDataSource;
    qryListaUnidConsum2: TSQLQuery;
    provListaUnidConsum2: TDataSetProvider;
    cdsListaUnidConsum2: TClientDataSet;
    dsListaUnidConsum2: TDataSource;
    btnSair0: TBitBtn;
    btnLimpar1: TButton;
    GridTable1DBTableView1Column10: TcxGridDBColumn;
    cxLabel5: TcxLabel;
    lblQtdUnids1: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    btnOk2: TBitBtn;
    btnLimpar2: TButton;
    cxLabel2: TcxLabel;
    lblQtdUnids2: TcxLabel;
    Panel2: TPanel;
    sbPosServid2: TSpeedButton;
    edPesquisa2: TcxTextEdit;
    cxLabel7: TcxLabel;
    BitBtn2: TBitBtn;
    cxLabel8: TcxLabel;
    cbCategoria2: TcxComboBox;
    cxLabel9: TcxLabel;
    cbSituacao2: TcxComboBox;
    btnFiltrar2: TButton;
    cxGroupBox2: TcxGroupBox;
    btnOk3: TBitBtn;
    btnLimpar3: TButton;
    cxLabel1: TcxLabel;
    lblQtdUnids3: TcxLabel;
    Panel1: TPanel;
    sbPosServid3: TSpeedButton;
    edPesquisa3: TcxTextEdit;
    cxLabel10: TcxLabel;
    BitBtn3: TBitBtn;
    cxLabel11: TcxLabel;
    cbCategoria3: TcxComboBox;
    cxLabel12: TcxLabel;
    cbSituacao3: TcxComboBox;
    btnFiltrar3: TButton;
    cxGroupBox4: TcxGroupBox;
    btnOk4: TBitBtn;
    btnLimpar4: TButton;
    cxLabel6: TcxLabel;
    lblQtdUnids4: TcxLabel;
    Panel3: TPanel;
    sbPosServid4: TSpeedButton;
    edPesquisa4: TcxTextEdit;
    cxLabel14: TcxLabel;
    BitBtn4: TBitBtn;
    cxLabel15: TcxLabel;
    cbCategoria4: TcxComboBox;
    cxLabel16: TcxLabel;
    cbSituacao4: TcxComboBox;
    btnFiltrar4: TButton;
    qryListaUnidConsum4: TSQLQuery;
    provListaUnidConsum4: TDataSetProvider;
    cdsListaUnidConsum4: TClientDataSet;
    dsListaUnidConsum4: TDataSource;
    qryListaUnidConsum5: TSQLQuery;
    provListaUnidConsum5: TDataSetProvider;
    cdsListaUnidConsum5: TClientDataSet;
    dsListaUnidConsum5: TDataSource;
    qryListaUnidConsum5ID: TIntegerField;
    qryListaUnidConsum5NOME_SERVIDOR: TStringField;
    cdsListaUnidConsum5ID: TIntegerField;
    cdsListaUnidConsum5NOME_SERVIDOR: TStringField;
    cdsListaUnidConsum5DT_ADMISSAO: TDateField;
    cdsListaUnidConsum5DT_READMISSAO: TDateField;
    cdsListaUnidConsum5ID_SITUACAO_TCM: TIntegerField;
    cdsListaUnidConsum5DESCR_SITUAC_TCM: TStringField;
    cdsListaUnidConsum5ID_SUB_UNID_ORCAMENT: TIntegerField;
    cdsListaUnidConsum5DESCR_SUB_UNID_ORCAMENT: TStringField;
    cdsListaUnidConsum5SUB_UNID_ORCAMENT: TStringField;
    cdsListaUnidConsum5ID_CARGO_ATUAL: TIntegerField;
    cdsListaUnidConsum5DESCR_CARGO_ATUAL: TStringField;
    cdsListaUnidConsum5EFETIVO: TStringField;
    cdsListaUnidConsum5CARGA_HOR_MENSAL: TIntegerField;
    cdsListaUnidConsum5DESCR_UNID_LOTACAO: TStringField;
    cdsListaUnidConsum5ID_EST_FUNCIONAL: TIntegerField;
    cdsListaUnidConsum5DESCR_EST_FUNCIONAL: TStringField;
    frmeLogradouro1: TfrmeLogradouro;
    frmeFiltraCategSituac1: TfrmeFiltraCategSituac;
    cdsListaUnidConsum1ID: TIntegerField;
    cdsListaUnidConsum1TIPO_PESSOA: TStringField;
    cdsListaUnidConsum1DESCR_TIPO_PESSOA: TStringField;
    cdsListaUnidConsum1NOME_PESSOA: TStringField;
    cdsListaUnidConsum1CPF_CNPJ_FTDO: TStringField;
    cdsListaUnidConsum1DT_LIGACAO: TDateField;
    cdsListaUnidConsum1FORMA_CALCULO: TStringField;
    cdsListaUnidConsum1DESCR_FORMA_CALCULO: TStringField;
    cdsListaUnidConsum1TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum1DESCR_TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum1SITUACAO: TStringField;
    cdsListaUnidConsum1DESCR_SITUACAO: TStringField;
    cdsListaUnidConsum1ENDER_COMPLEMENTO: TStringField;
    cdsListaUnidConsum1ENDER_ID_BAIRRO: TIntegerField;
    cdsListaUnidConsum1ENDER_DESCR_BAIRRO: TStringField;
    cdsListaUnidConsum1ENDER_ID_DISTRITO: TIntegerField;
    cdsListaUnidConsum1ENDER_DESCR_DISTRITO: TStringField;
    cdsListaUnidConsum1QTD_TORNEIRA: TIntegerField;
    cdsListaUnidConsum1MULTIPLICADOR: TIntegerField;
    GridTable1DBTableView1Column11: TcxGridDBColumn;
    GridTable1DBTableView1Column12: TcxGridDBColumn;
    cdsListaUnidConsum1OBSERV_FATURA: TStringField;
    cbCategoria1: TcxComboBox;
    cbSituacao1: TcxComboBox;
    Grid3: TcxGrid;
    GridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn51: TcxGridDBColumn;
    cxGridDBColumn52: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Grid4: TcxGrid;
    GridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn53: TcxGridDBColumn;
    cxGridDBColumn54: TcxGridDBColumn;
    cxGridDBColumn55: TcxGridDBColumn;
    cxGridDBColumn58: TcxGridDBColumn;
    cxGridDBColumn60: TcxGridDBColumn;
    cxGridDBColumn61: TcxGridDBColumn;
    cxGridDBColumn62: TcxGridDBColumn;
    cxGridDBColumn63: TcxGridDBColumn;
    cxGridDBColumn64: TcxGridDBColumn;
    cxGridLevel6: TcxGridLevel;
    Label1: TLabel;
    frmeLogradouro2: TfrmeLogradouro;
    GridTable2: TcxGrid;
    GridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn31: TcxGridDBColumn;
    cxGridDBColumn32: TcxGridDBColumn;
    cxGridDBColumn33: TcxGridDBColumn;
    cxGridDBColumn34: TcxGridDBColumn;
    cxGridDBColumn35: TcxGridDBColumn;
    cxGridDBColumn36: TcxGridDBColumn;
    cxGridDBColumn37: TcxGridDBColumn;
    cxGridDBColumn38: TcxGridDBColumn;
    cxGridDBColumn39: TcxGridDBColumn;
    cxGridDBColumn40: TcxGridDBColumn;
    cxGridDBColumn41: TcxGridDBColumn;
    cxGridDBColumn42: TcxGridDBColumn;
    GridLevel2: TcxGridLevel;
    cdsListaUnidConsum2ID: TIntegerField;
    cdsListaUnidConsum2TIPO_PESSOA: TStringField;
    cdsListaUnidConsum2DESCR_TIPO_PESSOA: TStringField;
    cdsListaUnidConsum2NOME_PESSOA: TStringField;
    cdsListaUnidConsum2CPF_CNPJ_FTDO: TStringField;
    cdsListaUnidConsum2DT_LIGACAO: TDateField;
    cdsListaUnidConsum2FORMA_CALCULO: TStringField;
    cdsListaUnidConsum2DESCR_FORMA_CALCULO: TStringField;
    cdsListaUnidConsum2TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum2DESCR_TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum2SITUACAO: TStringField;
    cdsListaUnidConsum2DESCR_SITUACAO: TStringField;
    cdsListaUnidConsum2ENDER_COMPLEMENTO2: TStringField;
    cdsListaUnidConsum2ENDER_ID_BAIRRO2: TIntegerField;
    cdsListaUnidConsum2ENDER_DESCR_BAIRRO2: TStringField;
    cdsListaUnidConsum2ENDER_ID_DISTRITO2: TIntegerField;
    cdsListaUnidConsum2ENDER_DESCR_DISTRITO2: TStringField;
    cdsListaUnidConsum2QTD_TORNEIRA: TIntegerField;
    cdsListaUnidConsum2MULTIPLICADOR: TIntegerField;
    rbOpPesquisa31: TRadioButton;
    rbOpPesquisa32: TRadioButton;
    edTextoPesquisa3: TcxMaskEdit;
    rbCPF: TRadioButton;
    rbCNPJ: TRadioButton;
    edCPF_CNPJ: TcxMaskEdit;
    Label2: TLabel;
    edEnderComplemento: TcxDBTextEdit;
    edEnderDescrBairro: TcxDBTextEdit;
    edEnderDescrDisitro: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    Label4: TLabel;
    edDescrLograd: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    edEnderNum: TcxDBTextEdit;
    Label5: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    Label6: TLabel;
    cdsListaUnidConsum4ID: TIntegerField;
    cdsListaUnidConsum4TIPO_PESSOA: TStringField;
    cdsListaUnidConsum4DESCR_TIPO_PESSOA: TStringField;
    cdsListaUnidConsum4NOME_PESSOA: TStringField;
    cdsListaUnidConsum4NOME_FANTASIA: TStringField;
    cdsListaUnidConsum4CPF_CNPJ_FTDO: TStringField;
    cdsListaUnidConsum4DT_LIGACAO: TDateField;
    cdsListaUnidConsum4FORMA_CALCULO: TStringField;
    cdsListaUnidConsum4DESCR_FORMA_CALCULO: TStringField;
    cdsListaUnidConsum4TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum4DESCR_TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum4SITUACAO: TStringField;
    cdsListaUnidConsum4DESCR_SITUACAO: TStringField;
    cdsListaUnidConsum4ENDER_DESCR_LOGRAD: TStringField;
    cdsListaUnidConsum4ENDER_COMPLEMENTO: TStringField;
    cdsListaUnidConsum4ENDER_ID_BAIRRO2: TIntegerField;
    cdsListaUnidConsum4ENDER_DESCR_BAIRRO2: TStringField;
    cdsListaUnidConsum4ENDER_ID_DISTRITO2: TIntegerField;
    cdsListaUnidConsum4ENDER_DESCR_DISTRITO2: TStringField;
    cdsListaUnidConsum4QTD_TORNEIRA: TIntegerField;
    cdsListaUnidConsum4MULTIPLICADOR: TIntegerField;
    cdsListaUnidConsum4ENDER_DESCR_BAIRRO: TStringField;
    cdsListaUnidConsum4ENDER_DESCR_DISTRITO: TStringField;
    cdsListaUnidConsum2OBSERV_FATURA: TStringField;
    cdsListaUnidConsum4OBSERV_FATURA: TStringField;
    cdsListaUnidConsum1ENDER_UC_NUM_LETRA: TStringField;
    cdsListaUnidConsum2ENDER_UC_NUM_LETRA2: TStringField;
    cdsListaUnidConsum4ENDER_UC_NUM_LETRA: TStringField;
    cdsListaUnidConsum3ID: TIntegerField;
    cdsListaUnidConsum3TIPO_PESSOA: TStringField;
    cdsListaUnidConsum3DESCR_TIPO_PESSOA: TStringField;
    cdsListaUnidConsum3NOME_PESSOA: TStringField;
    cdsListaUnidConsum3NOME_FANTASIA: TStringField;
    cdsListaUnidConsum3CPF_CNPJ_FTDO: TStringField;
    cdsListaUnidConsum3DT_LIGACAO: TDateField;
    cdsListaUnidConsum3FORMA_CALCULO: TStringField;
    cdsListaUnidConsum3DESCR_FORMA_CALCULO: TStringField;
    cdsListaUnidConsum3TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum3DESCR_TIPO_UNID_CONSUM: TStringField;
    cdsListaUnidConsum3SITUACAO: TStringField;
    cdsListaUnidConsum3DESCR_SITUACAO: TStringField;
    cdsListaUnidConsum3ENDER_DESCR_LOGRAD: TStringField;
    cdsListaUnidConsum3ENDER_NUM_LETRA2: TStringField;
    cdsListaUnidConsum3ENDER_COMPLEMENTO: TStringField;
    cdsListaUnidConsum3ENDER_DESCR_BAIRRO: TStringField;
    cdsListaUnidConsum3ENDER_DESCR_DISTRITO: TStringField;
    cdsListaUnidConsum3ENDER_ID_BAIRRO2: TIntegerField;
    cdsListaUnidConsum3ENDER_DESCR_BAIRRO2: TStringField;
    cdsListaUnidConsum3ENDER_ID_DISTRITO2: TIntegerField;
    cdsListaUnidConsum3ENDER_DESCR_DISTRITO2: TStringField;
    cdsListaUnidConsum3QTD_TORNEIRA: TIntegerField;
    cdsListaUnidConsum3MULTIPLICADOR: TIntegerField;
    cdsListaUnidConsum3OBSERV_FATURA: TStringField;
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridDbColumn);
    procedure edPesquisa1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOk1Click(Sender: TObject);
    procedure sbPosServid1Click(Sender: TObject);
    procedure btnLimpar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnListarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSair3Click(Sender: TObject);
    procedure btnSair0Click(Sender: TObject);
    procedure cbVinculo1PropertiesCloseUp(Sender: TObject);
    procedure cbVinculo1PropertiesPopup(Sender: TObject);
    procedure btnFiltrar1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPesquisa1PropertiesChange(Sender: TObject);
    procedure frmeFiltraCategSituac1btnFiltrarClick(Sender: TObject);
    procedure rbCPFClick(Sender: TObject);
  private
    pv_sColIndex1,
    pv_sColIndex2,
    pv_sColIndex3,
    pv_sColIndex4: string;
    pv_iUltCol1: integer;
    procedure SetColGrid(iCol: integer);
    { Private declarations }
  public
    { Public declarations }
    pb_oCdsUnidConsum: TClientDataSet;
    procedure Executa(oCdsUnidConsum: TClientDataSet);
    procedure _OpenClient(sLista: string);
    procedure HabilitaBotoes(sLista: string; lHabil: Boolean);
  end;

var
  frmListagemUnidConsumidora: TfrmListagemUnidConsumidora;

implementation

uses gsLib, UtilsDb, udmPrincipal;

{$R *.dfm}

procedure TfrmListagemUnidConsumidora.Executa(oCdsUnidConsum: TClientDataSet);
begin
   pb_oCdsUnidConsum:= oCdsUnidConsum;
   ShowModal;
end;

procedure TfrmListagemUnidConsumidora.btnFiltrar1Click(Sender: TObject);
begin
  _OpenClient(IntToStr(TButton(Sender).Tag));
end;

procedure TfrmListagemUnidConsumidora.btnLimpar1Click(Sender: TObject);
begin
  if TButton(Sender).Tag = 1 then
  begin
     cdsListaUnidConsum1.Close;
     lblQtdUnids1.Caption := '0';
     HabilitaBotoes('1',False);
     frmeLogradouro1.edId.Text := '';
     frmeLogradouro1.edId.SetFocus;
  end else
  if TButton(Sender).Tag = 2 then
  begin
     cdsListaUnidConsum2.Close;
     lblQtdUnids2.Caption := '0';
     HabilitaBotoes('2',False);
     frmeLogradouro2.edId.Text := '';
     frmeLogradouro2.edId.SetFocus;
  end else
  if TButton(Sender).Tag = 3 then
  begin
     cdsListaUnidConsum3.Close;
     lblQtdUnids3.Caption := '0';
     HabilitaBotoes('3',False);
     edTextoPesquisa3.Text := '';
     edTextoPesquisa3.SetFocus;
  end else
  if TButton(Sender).Tag = 4 then
  begin
     cdsListaUnidConsum4.Close;
     lblQtdUnids4.Caption := '0';
     HabilitaBotoes('4',False);
     edCPF_CNPJ.Text := '';
     edCPF_CNPJ.SetFocus;
  end else
  if TButton(Sender).Tag = 5 then
  begin
     {
     cdsListaServidor5.Close;
     lblQtdServid5.Caption := '0';
     HabilitaBotoes('5',False);
     edTextoPesquisa5.Text := '';
     edTextoPesquisa5.SetFocus;
     }
  end else
  if TButton(Sender).Tag = 6 then
  begin
     {
     cdsListaServidor6.Close;
     lblQtdServid6.Caption := '0';
     HabilitaBotoes('6',False);
     edPesquisa.Text := '';
     edPesquisa.SetFocus;
     }
  end
end;

procedure TfrmListagemUnidConsumidora.btnListarClick(Sender: TObject);
begin
  if rbOpcao1.Checked then
  begin
     Notebook1.PageIndex := 1;
     if cdsListaUnidConsum1.Active then
        GridTable1.SetFocus
     else
        frmeLogradouro1.edId.SetFocus;
  end else
  if rbOpcao2.Checked then
  begin
     Notebook1.PageIndex := 2;
     if cdsListaUnidConsum2.Active then
        GridTable2.SetFocus
     else
        frmeLogradouro2.edId.SetFocus;
  end else
  if rbOpcao3.Checked then
  begin
     Notebook1.PageIndex := 3;
     if not cdsListaUnidConsum3.Active then
        edTextoPesquisa3.SetFocus
     else
        Grid3.SetFocus;
  end else
  if rbOpcao4.Checked then
  begin
     Notebook1.PageIndex := 4;
     if not cdsListaUnidConsum4.Active then
        edCPF_CNPJ.SetFocus
     else
        Grid4.SetFocus;
  end;
end;

procedure TfrmListagemUnidConsumidora.btnOk1Click(Sender: TObject);
begin
  if TBitBtn(Sender).Tag = 1 then
  begin
     if Empty(frmeLogradouro1.edId.Text) then exit;
     _OpenClient('1');
     HabilitaBotoes('1',True);
     SetColGrid(2);
  end else
  if TBitBtn(Sender).Tag = 2 then
  begin
     if Empty(frmeLogradouro2.edId.Text) then exit;
     _OpenClient('2');
     HabilitaBotoes('2',True);
     SetColGrid(2);
  end else
  if TBitBtn(Sender).Tag = 3 then
  begin
     if Empty(edTextoPesquisa3.Text) then exit;
     _OpenClient('3');
     HabilitaBotoes('3',True);
  end else
  if TBitBtn(Sender).Tag = 4 then
  begin
     if Empty(ExtraiPonto(edCPF_CNPJ.Text)) then exit;
     _OpenClient('4');
     HabilitaBotoes('4',True);
  end;
end;

procedure TfrmListagemUnidConsumidora.btnSair0Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmListagemUnidConsumidora.btnSair3Click(Sender: TObject);
begin
  Notebook1.PageIndex := 0;
end;

procedure TfrmListagemUnidConsumidora.cbVinculo1PropertiesCloseUp(Sender: TObject);
begin
   TcxComboBox(Sender).Tag := 0;
end;

procedure TfrmListagemUnidConsumidora.cbVinculo1PropertiesPopup(Sender: TObject);
begin
   TcxComboBox(Sender).Tag := 1;
end;

procedure TfrmListagemUnidConsumidora.edPesquisa1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift <> [] then exit;
  if rbOpcao1.Checked then
     NavegaClient(Key,GridTable1DBTableView1)
  else if rbOpcao2.Checked then
     NavegaClient(Key,GridDBTableView2)
  else if rbOpcao3.Checked then
     NavegaClient(Key,GridDBTableView3)
  else if rbOpcao4.Checked then
     NavegaClient(Key,GridDBTableView4);
end;

procedure TfrmListagemUnidConsumidora.edPesquisa1PropertiesChange(Sender: TObject);
begin
  if rbOpcao1.Checked then
     PesquisaIncremental(edPesquisa1.Text,dsListaUnidConsum1,pv_sColIndex1)
  else if rbOpcao2.Checked then
     PesquisaIncremental(edPesquisa2.Text,dsListaUnidConsum2,pv_sColIndex2)
  else if rbOpcao3.Checked then
     PesquisaIncremental(edPesquisa3.Text,dsListaUnidConsum3,pv_sColIndex3)
  else if rbOpcao4.Checked then
     PesquisaIncremental(edPesquisa4.Text,dsListaUnidConsum4,pv_sColIndex4);
end;

procedure TfrmListagemUnidConsumidora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsListaUnidConsum1.Close;
  cdsListaUnidConsum2.Close;
  cdsListaUnidConsum3.Close;
  cdsListaUnidConsum4.Close;
  cdsListaUnidConsum5.Close;
end;

procedure TfrmListagemUnidConsumidora.FormCreate(Sender: TObject);
Var
  iConta: integer;
begin
  inherited;
  cbCategoria1.Properties.Items.Clear;
  cbCategoria1.Properties.Items.Add('TODAS');
  cbCategoria1.Properties.Items.Add('RESIDENCIAL');
  cbCategoria1.Properties.Items.Add('COMERICAL');
  cbCategoria1.Properties.Items.Add('INDUSTRIAL');
  cbCategoria1.Properties.Items.Add('OUTRA');
  cbCategoria2.Properties.Items.Clear;
  cbCategoria3.Properties.Items.Clear;
  for iConta := 0 to cbCategoria1.Properties.Items.Count - 1 do
  begin
     cbCategoria2.Properties.Items.Add(cbCategoria1.Properties.Items[iConta]);
     cbCategoria3.Properties.Items.Add(cbCategoria1.Properties.Items[iConta]);
  end;
  cbCategoria1.ItemIndex := 0;
  cbCategoria2.ItemIndex := 0;
  cbCategoria3.ItemIndex := 0;

  cbSituacao1.Properties.Items.Clear;
  cbSituacao1.Properties.Items.Add('TODAS');
  cbSituacao1.Properties.Items.Add('AGUARDANDO LIGAÇÃO');
  cbSituacao1.Properties.Items.Add('ATIVA');
  cbSituacao1.Properties.Items.Add('CORTADA');
  cbSituacao1.Properties.Items.Add('DESATIVADA');
  cbSituacao1.Properties.Items.Add('ISENTA');
  cbSituacao1.Properties.Items.Add('OUTRA');
  cbSituacao2.Properties.Items.Clear;
  cbSituacao3.Properties.Items.Clear;
  for iConta := 0 to cbSituacao1.Properties.Items.Count - 1 do
  begin
     cbSituacao2.Properties.Items.Add(cbSituacao1.Properties.Items[iConta]);
     cbSituacao3.Properties.Items.Add(cbSituacao1.Properties.Items[iConta]);
  end;
  cbSituacao1.ItemIndex := 0;
  cbSituacao2.ItemIndex := 0;
  cbSituacao3.ItemIndex := 0;

  lblQtdUnids1.Caption := '0';
  cdsListaUnidConsum1.IndexFieldNames := 'ID';
  HabilitaBotoes('1',False);

  {
  lblQtdServid2.Caption := '0';
  cdsServidorUnidLotac.IndexFieldNames := 'ID';
  HabilitaBotoes('2',False);

  lblQtdServid3.Caption := '0';
  cdsListaServidor3.IndexFieldNames := 'ID';
  HabilitaBotoes('3',False);

  lblQtdServid4.Caption := '0';
  cdsListaServidor4.IndexFieldNames := 'ID';
  HabilitaBotoes('4',False);

  lblQtdServid5.Caption := '0';
  cdsListaServidor5.IndexFieldNames := 'ID';
  HabilitaBotoes('5',False);

  lblQtdServid6.Caption := '0';
  cdsListaServidor6.IndexFieldNames := 'ID';
  HabilitaBotoes('6',False);
  }

end;

procedure TfrmListagemUnidConsumidora.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
Var
  iConta,
  iConta2,
  iQtdCols: Integer;
begin
  inherited;
  if (Shift = []) and (Key = VK_F3) then
  begin
     if (rbOpcao1.Checked) and (edPesquisa1.Enabled) then
        edPesquisa1.SetFocus
     else if (rbOpcao2.Checked) and (edPesquisa2.Enabled) then
        edPesquisa2.SetFocus;
  end else
  if Key = VK_F4 then
  begin
     iConta  := 0;
     if Notebook1.PageIndex = 1 then
     begin
        iQtdCols:= GridTable1DBTableView1.ColumnCount - 1;
        while True do
        begin
           if iConta > iQtdCols then iConta := 0;
           if GridTable1DBTableView1.Columns[iConta].SortOrder <> soNone then
           begin
              GridTable1DBTableView1.Columns[iConta].SortOrder := soNone;
              iConta2 := iConta+1;
              while true do
              begin
                 if iConta2 > iQtdCols then iConta2 := 0;
                 if GridTable1DBTableView1.Columns[iConta2].Tag = 1 then
                 begin
                    GridTable1DBTableView1.Columns[iConta2].SortOrder := soAscending;
                    SetColGrid(iConta2);
                    exit;
                 end;
                 Inc(iConta2);
              end;
           end;
           Inc(iConta);
        end;
     end else
     if Notebook1.PageIndex = 2 then
     begin
        iQtdCols:= GridDBTableView2.ColumnCount - 1;
        while True do
        begin
           if iConta > iQtdCols then iConta := 0;
           if GridDBTableView2.Columns[iConta].SortOrder <> soNone then
           begin
              GridDBTableView2.Columns[iConta].SortOrder := soNone;
              iConta2 := iConta+1;
              while true do
              begin
                 if iConta2 > iQtdCols then iConta2 := 0;
                 if GridDBTableView2.Columns[iConta2].Tag = 1 then
                 begin
                    GridDBTableView2.Columns[iConta2].SortOrder := soAscending;
                    SetColGrid(iConta2);
                    exit;
                 end;
                 Inc(iConta2);
              end;
           end;
           Inc(iConta);
        end;
     end else
     if Notebook1.PageIndex = 3 then
     begin
        iQtdCols:= GridDBTableView3.ColumnCount - 1;
        while True do
        begin
           if iConta > iQtdCols then iConta := 0;
           if GridDBTableView3.Columns[iConta].SortOrder <> soNone then
           begin
              GridDBTableView3.Columns[iConta].SortOrder := soNone;
              iConta2 := iConta+1;
              while true do
              begin
                 if iConta2 > iQtdCols then iConta2 := 0;
                 if GridDBTableView3.Columns[iConta2].Tag = 1 then
                 begin
                    GridDBTableView3.Columns[iConta2].SortOrder := soAscending;
                    SetColGrid(iConta2);
                    exit;
                 end;
                 Inc(iConta2);
              end;
           end;
           Inc(iConta);
        end;
     end else
     if Notebook1.PageIndex = 4 then
     begin
        iQtdCols:= GridDBTableView4.ColumnCount - 1;
        while True do
        begin
           if iConta > iQtdCols then iConta := 0;
           if GridDBTableView4.Columns[iConta].SortOrder <> soNone then
           begin
              GridDBTableView4.Columns[iConta].SortOrder := soNone;
              iConta2 := iConta+1;
              while true do
              begin
                 if iConta2 > iQtdCols then iConta2 := 0;
                 if GridDBTableView4.Columns[iConta2].Tag = 1 then
                 begin
                    GridDBTableView4.Columns[iConta2].SortOrder := soAscending;
                    SetColGrid(iConta2);
                    exit;
                 end;
                 Inc(iConta2);
              end;
           end;
           Inc(iConta);
        end;
     end;
  end;
end;

procedure TfrmListagemUnidConsumidora.FormShow(Sender: TObject);
begin
  inherited;
  Notebook1.PageIndex := 0;
end;

procedure TfrmListagemUnidConsumidora.frmeFiltraCategSituac1btnFiltrarClick(
  Sender: TObject);
begin
   _OpenClient('1');;
end;

procedure TfrmListagemUnidConsumidora.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridDbColumn);
begin
   SetColGrid(AColumn.Index);
   if TcxGridTableView(Sender).Tag = 1 then
      pv_sColIndex1 := AColumn.DataBinding.FieldName
   else if TcxGridTableView(Sender).Tag = 2 then
      pv_sColIndex2 := AColumn.DataBinding.FieldName
   else if TcxGridTableView(Sender).Tag = 3 then
      pv_sColIndex3 := AColumn.DataBinding.FieldName
   else
      pv_sColIndex4 := AColumn.DataBinding.FieldName;
end;

procedure TfrmListagemUnidConsumidora.sbPosServid1Click(Sender: TObject);
begin
  if TSpeedButton(Sender).Tag = 1 then
  begin
     if cdsListaUnidConsum1.RecordCount > 0 then
        pb_oCdsUnidConsum.FindKey([cdsListaUnidConsum1ID.Value]);
  end else
  if TSpeedButton(Sender).Tag = 2 then
  begin
     if cdsListaUnidConsum2.RecordCount > 0 then
        pb_oCdsUnidConsum.FindKey([cdsListaUnidConsum2ID.Value]);
  end else
  if TSpeedButton(Sender).Tag = 3 then
  begin
     if cdsListaUnidConsum3.RecordCount > 0 then
        pb_oCdsUnidConsum.FindKey([cdsListaUnidConsum3ID.Value]);
  end else
  if TSpeedButton(Sender).Tag = 4 then
  begin
     if cdsListaUnidConsum4.RecordCount > 0 then
        pb_oCdsUnidConsum.FindKey([cdsListaUnidConsum4ID.Value]);
  end else
  if TSpeedButton(Sender).Tag = 5 then
  begin
     {
     if cdsListaServidor5.RecordCount > 0 then
        pb_oCdsServidor.FindKey([cdsListaServidor5ID.Value]);
        }
  end;
end;

procedure TfrmListagemUnidConsumidora._OpenClient(sLista: string);
begin
   if sLista = '1' then
   begin
      cdsListaUnidConsum1.Close;
      qryListaUnidConsum1.ParamByName('pIdLograd').AsString:=
         Trim(frmeLogradouro1.edId.Text);
      qryListaUnidConsum1.ParamByName('pTipoUnidIni').Value:= '1';
      qryListaUnidConsum1.ParamByName('pTipoUnidFim').Value:= '9';
      qryListaUnidConsum1.ParamByName('pSituacIni').Value  := '1';
      qryListaUnidConsum1.ParamByName('pSituacFim').Value  := '9';
      if cbCategoria1.ItemIndex > 0 then
      begin
         qryListaUnidConsum1.ParamByName('pTipoUnidIni').Value:=
            IntToStr(cbCategoria1.ItemIndex);
         qryListaUnidConsum1.ParamByName('pTipoUnidFim').Value:=
            IntToStr(cbCategoria1.ItemIndex);
      end;
      if cbSituacao1.ItemIndex > 0 then
      begin
         qryListaUnidConsum1.ParamByName('pSituacIni').Value:=
            IntToStr(cbSituacao1.ItemIndex-1);
         qryListaUnidConsum1.ParamByName('pSituacFim').Value:=
            IntToStr(cbSituacao1.ItemIndex-1);
      end;
      cdsListaUnidConsum1.Open;
      lblQtdUnids1.Caption := FormatCurr(',0',cdsListaUnidConsum1.RecordCount);
      GridTable1.SetFocus;
   end else
   if sLista = '2' then
   begin
      cdsListaUnidConsum2.Close;
      qryListaUnidConsum2.ParamByName('pIdLograd').AsString:=
         Trim(frmeLogradouro2.edId.Text);
      qryListaUnidConsum2.ParamByName('pTipoUnidIni').Value:= '1';
      qryListaUnidConsum2.ParamByName('pTipoUnidFim').Value:= '9';
      qryListaUnidConsum2.ParamByName('pSituacIni').Value  := '1';
      qryListaUnidConsum2.ParamByName('pSituacFim').Value  := '9';
      if cbCategoria2.ItemIndex > 0 then
      begin
         qryListaUnidConsum2.ParamByName('pTipoUnidIni').Value:=
            IntToStr(cbCategoria2.ItemIndex);
         qryListaUnidConsum2.ParamByName('pTipoUnidFim').Value:=
            IntToStr(cbCategoria2.ItemIndex);
      end;
      if cbSituacao2.ItemIndex > 0 then
      begin
         qryListaUnidConsum2.ParamByName('pSituacIni').Value:=
            IntToStr(cbSituacao2.ItemIndex-1);
         qryListaUnidConsum2.ParamByName('pSituacFim').Value:=
            IntToStr(cbSituacao2.ItemIndex-1);
      end;
      cdsListaUnidConsum2.Open;
      lblQtdUnids2.Caption := FormatCurr(',0',cdsListaUnidConsum2.RecordCount);
      GridTable2.SetFocus;
   end else
   if sLista = '3' then
   begin
      if rbOpPesquisa31.Checked then
      begin
         qryListaUnidConsum3.ParamByName('pNome').Value := edTextoPesquisa3.Text+'%';
         qryListaUnidConsum3.ParamByName('pNome2').Value := edTextoPesquisa3.Text+'%';
      end else
      begin
         qryListaUnidConsum3.ParamByName('pNome').Value := '%'+edTextoPesquisa3.Text+'%';
         qryListaUnidConsum3.ParamByName('pNome2').Value := '%'+edTextoPesquisa3.Text+'%';
      end;
      cdsListaUnidConsum3.Close;
      qryListaUnidConsum3.ParamByName('pTipoUnidIni').Value:= '1';
      qryListaUnidConsum3.ParamByName('pTipoUnidFim').Value:= '9';
      qryListaUnidConsum3.ParamByName('pSituacIni').Value  := '1';
      qryListaUnidConsum3.ParamByName('pSituacFim').Value  := '9';
      if cbCategoria2.ItemIndex > 0 then
      begin
         qryListaUnidConsum3.ParamByName('pTipoUnidIni').Value:=
            IntToStr(cbCategoria2.ItemIndex-1);
         qryListaUnidConsum3.ParamByName('pTipoUnidFim').Value:=
            IntToStr(cbCategoria2.ItemIndex-1);
      end;
      if cbSituacao2.ItemIndex > 0 then
      begin
         qryListaUnidConsum3.ParamByName('pSituacIni').Value:=
            IntToStr(cbSituacao2.ItemIndex-1);
         qryListaUnidConsum3.ParamByName('pSituacFim').Value:=
            IntToStr(cbSituacao2.ItemIndex-1);
      end;
      cdsListaUnidConsum3.Open;
      lblQtdUnids3.Caption := FormatCurr(',0',cdsListaUnidConsum3.RecordCount);
      Grid3.SetFocus;
   end else
   if sLista = '4' then
   begin
      cdsListaUnidConsum4.Close;
      qryListaUnidConsum4.ParamByName('pCPF_CNPJ').AsString:=
         edCPF_CNPJ.Text;
      qryListaUnidConsum4.ParamByName('pTipoUnidIni').Value:= '1';
      qryListaUnidConsum4.ParamByName('pTipoUnidFim').Value:= '9';
      qryListaUnidConsum4.ParamByName('pSituacIni').Value  := '1';
      qryListaUnidConsum4.ParamByName('pSituacFim').Value  := '9';
      if cbCategoria2.ItemIndex > 0 then
      begin
         qryListaUnidConsum4.ParamByName('pTipoUnidIni').Value:=
            IntToStr(cbCategoria2.ItemIndex);
         qryListaUnidConsum4.ParamByName('pTipoUnidFim').Value:=
            IntToStr(cbCategoria2.ItemIndex);
      end;
      if cbSituacao2.ItemIndex > 0 then
      begin
         qryListaUnidConsum4.ParamByName('pSituacIni').Value:=
            IntToStr(cbSituacao2.ItemIndex-1);
         qryListaUnidConsum4.ParamByName('pSituacFim').Value:=
            IntToStr(cbSituacao2.ItemIndex-1);
      end;
      cdsListaUnidConsum4.Open;
      lblQtdUnids4.Caption := FormatCurr(',0',cdsListaUnidConsum4.RecordCount);
      Grid4.SetFocus;
   end else
   if sLista = '5' then
   begin
      {
      cdsListaServidor5.Close;
      qryListaServidor5.ParamByName('pEfet1').Value       := 'A';
      qryListaServidor5.ParamByName('pEfet2').Value       := 'Z';
      qryListaServidor5.ParamByName('pSituacTCM1').Value  := 1;
      qryListaServidor5.ParamByName('pSituacTCM2').Value  := 99;
      qryListaServidor5.ParamByName('pStatus1').Value     := '1';
      qryListaServidor5.ParamByName('pStatus2').Value     := '3';
      if rbOpPesquisa51.Checked then
         qryListaServidor5.ParamByName('pNome').Value := edTextoPesquisa5.Text+'%'
      else
         qryListaServidor5.ParamByName('pNome').Value := '%'+edTextoPesquisa5.Text+'%';

      if cbVinculo5.ItemIndex > 0 then
      begin
         if cbVinculo5.ItemIndex = 2 then
         begin
            qryListaServidor5.ParamByName('pSituacTCM1').Value:= 10;
            qryListaServidor5.ParamByName('pSituacTCM2').Value:= 10;
         end else
         begin
            if cbVinculo5.ItemIndex = 1 then
            begin
               qryListaServidor5.ParamByName('pEfet1').Value := 'S';
               qryListaServidor5.ParamByName('pEfet2').Value := 'S';
            end else
            if cbVinculo5.ItemIndex = 3 then
            begin
               qryListaServidor5.ParamByName('pEfet1').Value := 'N';
               qryListaServidor5.ParamByName('pEfet2').Value := 'N';
            end;
         end;
      end;
      if cbSituacao5.ItemIndex > 0 then
      begin
         qryListaServidor5.ParamByName('pStatus1').AsInteger :=
            cbSituacao5.ItemIndex;
         qryListaServidor5.ParamByName('pStatus2').AsInteger :=
            cbSituacao5.ItemIndex;
      end;
      cdsListaServidor5.Open;
      lblQtdServid5.Caption := FormatCurr(',0',cdsListaServidor5.RecordCount);
      GridTable5.SetFocus;
      }
   end else
   if sLista = '6' then
   begin
      {
      cdsListaServidor6.Close;
      qryListaServidor6.ParamByName('pEfet1').Value       := 'A';
      qryListaServidor6.ParamByName('pEfet2').Value       := 'Z';
      qryListaServidor6.ParamByName('pSituacTCM1').Value  := 1;
      qryListaServidor6.ParamByName('pSituacTCM2').Value  := 99;
      qryListaServidor6.ParamByName('pStatus1').Value     := '1';
      qryListaServidor6.ParamByName('pStatus2').Value     := '3';
      qryListaServidor6.ParamByName('pCPF_Ini').Value     := '00000000000';
      qryListaServidor6.ParamByName('pCPF_Fim').Value     := '99999999999';
      qryListaServidor6.ParamByName('pPIS_PasepIni').Value:= '00000000000';
      qryListaServidor6.ParamByName('pPIS_PasepFim').Value:= '99999999999';

      if rbCPF.Checked then
      begin
         qryListaServidor6.ParamByName('pCPF_Ini').Value     :=
            ExtraiPonto(edPesquisa.Text);
         qryListaServidor6.ParamByName('pCPF_Fim').Value     :=
            ExtraiPonto(edPesquisa.Text);
      end else
      begin
         qryListaServidor6.ParamByName('pPIS_PasepIni').Value:=
            ExtraiPonto(edPesquisa.Text);
         qryListaServidor6.ParamByName('pPIS_PasepFim').Value:=
            ExtraiPonto(edPesquisa.Text);
      end;

      if cbVinculo6.ItemIndex > 0 then
      begin
         if cbVinculo6.ItemIndex = 2 then
         begin
            qryListaServidor6.ParamByName('pSituacTCM1').Value:= 10;
            qryListaServidor6.ParamByName('pSituacTCM2').Value:= 10;
         end else
         begin
            if cbVinculo6.ItemIndex = 1 then
            begin
               qryListaServidor6.ParamByName('pEfet1').Value := 'S';
               qryListaServidor6.ParamByName('pEfet2').Value := 'S';
            end else
            if cbVinculo6.ItemIndex = 3 then
            begin
               qryListaServidor6.ParamByName('pEfet1').Value := 'N';
               qryListaServidor6.ParamByName('pEfet2').Value := 'N';
            end;
         end;
      end;
      if cbSituacao6.ItemIndex > 0 then
      begin
         qryListaServidor6.ParamByName('pStatus1').AsInteger :=
            cbSituacao6.ItemIndex;
         qryListaServidor6.ParamByName('pStatus2').AsInteger :=
            cbSituacao6.ItemIndex;
      end;
      cdsListaServidor6.Open;
      lblQtdServid6.Caption := FormatCurr(',0',cdsListaServidor6.RecordCount);
      GridTable6.SetFocus;
      }
   end;

end;

procedure TfrmListagemUnidConsumidora.HabilitaBotoes(sLista: string; lHabil: Boolean);
begin
   if sLista = '1' then
   begin
      frmeLogradouro1.Enabled:= not lHabil;
      btnOk1.Enabled      := not lHabil;
      btnLimpar1.Enabled  := lHabil;
      edPesquisa1.Enabled := lHabil;
      sbPosServid1.Enabled:= lHabil;
      cbCategoria1.Enabled:= lHabil;
      cbSituacao1.Enabled := lHabil;
      frmeFiltraCategSituac1.btnFiltrar.Enabled := lHabil;
   end else
   if sLista = '2' then
   begin
      {
      fmeLotacao_1.Enabled:= not lHabil;
      btnOk2.Enabled      := not lHabil;
      btnLimpar2.Enabled  := lHabil;
      edPesquisa2.Enabled := lHabil;
      sbPosServid2.Enabled:= lHabil;
      cbVinculo2.Enabled  := lHabil;
      cbSituacao2.Enabled := lHabil;
      btnFiltrar2.Enabled := lHabil;
      }
   end;
   if sLista = '3' then
   begin
      {
      fmeCargoFuncao1.Enabled:= not lHabil;
      btnOk3.Enabled      := not lHabil;
      btnLimpar3.Enabled  := lHabil;
      edPesquisa3.Enabled := lHabil;
      sbPosServid3.Enabled:= lHabil;
      cbVinculo3.Enabled  := lHabil;
      cbSituacao3.Enabled := lHabil;
      btnFiltrar3.Enabled := lHabil;
      }
   end;
end;

procedure TfrmListagemUnidConsumidora.rbCPFClick(Sender: TObject);
begin
  if TRadioButton(Sender).Tag = 1 then
     edCPF_CNPJ.Properties.EditMask := '999.999.999-99;0; '
  else
     edCPF_CNPJ.Properties.EditMask := '99.999.999/9999-99;0; ';
end;

Procedure TfrmListagemUnidConsumidora.SetColGrid(iCol: integer);
Var
   iConta: Integer;
begin
   if Notebook1.PageIndex = 1 then
   begin
      pv_iUltCol1 := iCol;
      edPesquisa1.Enabled := GridTable1DBTableView1.Columns[iCol].Tag = 1;
      cdsListaUnidConsum1.IndexFieldNames := GridTable1DBTableView1.
         Columns[iCol].DataBinding.FieldName;
      for iConta := 0 to GridTable1DBTableView1.ColumnCount - 1  do
          GridTable1DBTableView1.Columns[iConta].Styles.Header := nil;
      GridTable1DBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   end else
   if Notebook1.PageIndex = 2 then
   begin
      pv_iUltCol1 := iCol;
      edPesquisa1.Enabled := GridDBTableView2.Columns[iCol].Tag = 1;
      cdsListaUnidConsum1.IndexFieldNames := GridDBTableView2.
         Columns[iCol].DataBinding.FieldName;
      for iConta := 0 to GridDBTableView2.ColumnCount - 1  do
          GridDBTableView2.Columns[iConta].Styles.Header := nil;
      GridDBTableView2.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   end else
   if Notebook1.PageIndex = 3 then
   begin
      pv_iUltCol1 := iCol;
      edPesquisa1.Enabled := GridDBTableView3.Columns[iCol].Tag = 1;
      cdsListaUnidConsum1.IndexFieldNames := GridDBTableView3.
         Columns[iCol].DataBinding.FieldName;
      for iConta := 0 to GridDBTableView3.ColumnCount - 1  do
          GridDBTableView3.Columns[iConta].Styles.Header := nil;
      GridDBTableView3.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   end else
   if Notebook1.PageIndex = 4 then
   begin
      pv_iUltCol1 := iCol;
      edPesquisa1.Enabled := GridDBTableView4.Columns[iCol].Tag = 1;
      cdsListaUnidConsum1.IndexFieldNames := GridDBTableView4.
         Columns[iCol].DataBinding.FieldName;
      for iConta := 0 to GridDBTableView4.ColumnCount - 1  do
          GridDBTableView4.Columns[iConta].Styles.Header := nil;
      GridDBTableView4.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
   end;
end;


end.
