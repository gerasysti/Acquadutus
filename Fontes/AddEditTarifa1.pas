unit AddEditTarifa1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, cxControls, cxContainer, cxEdit, StdCtrls, cxMaskEdit,
  cxDBEdit, cxTextEdit, DB, DBClient, Provider, SqlExpr, cxClasses, cxStyles,
  cxGridTableView, cxButtons, ExtCtrls,
  cxGroupBox, cxRadioGroup, cxCheckBox, cxDropDownEdit, cxCalc,
  cxLabel, cxCurrencyEdit, Buttons, dxSkinsCore, dxSkinsDefaultPainters,
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
  dxSkinXmas2008Blue;

type
  TfrmAddEditTarifa1 = class(TfrmAddEditPadrao)
    edValor: TcxDBCurrencyEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edId: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    edQtdFim: TcxDBCurrencyEdit;
    edQtdIni: TcxDBCurrencyEdit;
    cbFormaCalculo: TcxComboBox;
    cbCategoria: TcxComboBox;
    qry1ID: TIntegerField;
    qry1FORMA_CALCULO: TStringField;
    qry1TIPO_UNID_CONSUM: TStringField;
    qry1QTD_INI: TIntegerField;
    qry1QTD_FIM: TIntegerField;
    qry1VALOR: TFMTBCDField;
    qry1ID_VIGENCIA: TIntegerField;
    qry1DESCR_FORMA_CALCULO: TStringField;
    qry1DESCR_TIPO_UNID_CONSUM: TStringField;
    qry1INI_VIGENCIA: TStringField;
    qry1FIM_VIGENCIA: TStringField;
    qry1INI_VIG_FTDO: TStringField;
    qry1FIM_VIG_FTDO: TStringField;
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
    cds1INI_VIG_FTDO: TStringField;
    cds1FIM_VIG_FTDO: TStringField;
    cxLabel6: TcxLabel;
    edValExced: TcxDBCurrencyEdit;
    qry1VAL_EXCED: TFMTBCDField;
    cds1VAL_EXCED: TFMTBCDField;
    cxLabel7: TcxLabel;
    edQtdBase: TcxDBCurrencyEdit;
    qry1QTD_BASE: TIntegerField;
    cds1QTD_BASE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cds1BeforePost(DataSet: TDataSet);
    procedure cbFormaCalculoPropertiesCloseUp(Sender: TObject);
    procedure cbFormaCalculoPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_iIdVigencia: Integer;
  end;

var
  frmAddEditTarifa1: TfrmAddEditTarifa1;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, udmTabelas;

{$R *.dfm}

procedure TfrmAddEditTarifa1.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'TAB_TARIFA';
  pb_sNomeCampoPK  := 'ID';
  pb_sNomeGenerator:= 'GEN_ID_'+pb_sNomeTab;
  pb_sTitJanela    := '';
end;

procedure TfrmAddEditTarifa1.FormShow(Sender: TObject);
begin

  inherited;

  if pb_iId = null then
     pb_iId := 0;

  if ds1.DataSet.State = dsInsert then
  begin
     Caption := '[ NOVO ÍTEM DE TARIFA ]';
     ds1.DataSet.FieldByName('ID_VIGENCIA').Value:= pb_iIdVigencia;
     ds1.DataSet.FieldByName('qtd_base').Value   := 0;
     ds1.DataSet.FieldByName('val_exced').Value  := 0;
  end else
  begin
     Caption := '[ ALTERANDO ÍTEM DE TARIFA ]';
     cbFormaCalculo.ItemIndex := ds1.DataSet.FieldByName('FORMA_CALCULO').AsInteger-1;
     cbCategoria.ItemIndex    := ds1.DataSet.FieldByName('TIPO_UNID_CONSUM').AsInteger-1;
  end;

  cbFormaCalculo.SetFocus;

end;

procedure TfrmAddEditTarifa1.btnGravarClick(Sender: TObject);
begin

  inherited;

  if not pb_lConfirmSave then exit;

  ds1.DataSet.FieldByName('forma_calculo').Value         := IntToStr(cbFormaCalculo.ItemIndex+1);
  ds1.DataSet.FieldByName('tipo_unid_consum').Value      := IntToStr(cbCategoria.ItemIndex+1);
  ds1.DataSet.FieldByName('descr_forma_calculo').Value   := cbFormaCalculo.Properties.Items[cbFormaCalculo.ItemIndex];
  ds1.DataSet.FieldByName('descr_tipo_unid_consum').Value:= cbCategoria.Properties.Items[cbCategoria.ItemIndex];
  dmTabelas.GravaRegistro('cdsTabTarifa');

  Close;

end;

procedure TfrmAddEditTarifa1.cbFormaCalculoPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditTarifa1.cbFormaCalculoPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditTarifa1.cds1BeforePost(DataSet: TDataSet);
begin
  inherited;
  ds1.DataSet.FieldByName('FORMA_CALCULO').AsInteger   := cbFormaCalculo.ItemIndex+1;
  ds1.DataSet.FieldByName('TIPO_UNID_CONSUM').AsInteger:= cbCategoria.ItemIndex+1;
end;

end.
