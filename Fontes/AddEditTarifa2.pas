unit AddEditTarifa2;

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
  TfrmAddEditTarifa2 = class(TfrmAddEditPadrao)
    edValor: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    edId: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    edDescricao: TcxDBTextEdit;
    qry1ID: TIntegerField;
    qry1DESCRICAO: TStringField;
    qry1VALOR: TFMTBCDField;
    qry1ID_VIGENCIA: TIntegerField;
    qry1INI_VIGENCIA: TStringField;
    qry1FIM_VIGENCIA: TStringField;
    qry1INI_VIG_FTDO: TStringField;
    qry1FIM_VIG_FTDO: TStringField;
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1VALOR: TFMTBCDField;
    cds1ID_VIGENCIA: TIntegerField;
    cds1INI_VIGENCIA: TStringField;
    cds1FIM_VIGENCIA: TStringField;
    cds1INI_VIG_FTDO: TStringField;
    cds1FIM_VIG_FTDO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_iIdVigencia: Integer;
  end;

var
  frmAddEditTarifa2: TfrmAddEditTarifa2;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, udmTabelas;

{$R *.dfm}

procedure TfrmAddEditTarifa2.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab      := 'TAB_OUTRA_TARIFA';
  pb_sNomeCampoPK  := 'ID';
  pb_sNomeGenerator:= 'GEN_ID_'+pb_sNomeTab;
  pb_sTitJanela    := '';
end;

procedure TfrmAddEditTarifa2.FormShow(Sender: TObject);
begin

  inherited;
  if pb_iId = null then
     pb_iId := 0;

  if ds1.DataSet.State = dsInsert then
  begin
     Caption := '[ NOVO ÍTEM DE TARIFA (OUTRA) ]';
     ds1.DataSet.FieldByName('ID_VIGENCIA').Value:= pb_iIdVigencia;
     ds1.DataSet.FieldByName('valor').AsCurrency := 0;
  end else
  begin
     Caption := '[ ALTERANDO ÍTEM DE TARIFA (OUTRA) ]';
  end;
  edDescricao.SetFocus;

end;

procedure TfrmAddEditTarifa2.btnGravarClick(Sender: TObject);
begin

  inherited;

  if not pb_lConfirmSave then exit;

  dmTabelas.GravaRegistro('cdsTabOutraTarifa');

  Close;

end;

end.
