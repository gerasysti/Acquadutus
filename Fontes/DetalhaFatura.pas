unit DetalhaFatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  DBClient, Provider, SqlExpr, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, ExtCtrls, cxContainer, Buttons, cxTextEdit, cxMaskEdit,
  cxLabel, fmeUnidConsumidora, cxCurrencyEdit, dxSkinBlack, dxSkinBlue,
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
  TfrmDetalhaFatura = class(TfrmPadrao1)
    Panel1: TPanel;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    qryDetFatura: TSQLQuery;
    provDetFatura: TDataSetProvider;
    cdsDetFatura: TClientDataSet;
    dsDetFatura: TDataSource;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    BitBtn5: TBitBtn;
    qryDetFaturaR_ID: TIntegerField;
    qryDetFaturaR_REFERENCIA: TStringField;
    qryDetFaturaR_DESCRICAO: TStringField;
    qryDetFaturaR_VALOR: TFMTBCDField;
    qryDetFaturaR_TIPO: TStringField;
    cdsDetFaturaR_ID: TIntegerField;
    cdsDetFaturaR_REFERENCIA: TStringField;
    cdsDetFaturaR_DESCRICAO: TStringField;
    cdsDetFaturaR_VALOR: TFMTBCDField;
    cdsDetFaturaR_TIPO: TStringField;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    edValTotal: TcxCurrencyEdit;
    cxLabel1: TcxLabel;
    edCreditos: TcxCurrencyEdit;
    edDebitos: TcxCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_iIdUnidConsum: integer;
    pb_sAnoMes: string[6];
  end;

var
  frmDetalhaFatura: TfrmDetalhaFatura;

implementation

uses udmPrincipal, gsLib;

{$R *.dfm}

procedure TfrmDetalhaFatura.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmDetalhaFatura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cdsDetFatura.Close;
end;

procedure TfrmDetalhaFatura.FormShow(Sender: TObject);
begin
  inherited;
  cdsDetFatura.Close;
  qryDetFatura.ParamByName('pUnidConsum').Value := pb_iIdUnidConsum;
  qryDetFatura.ParamByName('pAnoMes').Value := pb_sAnoMes;
  cdsDetFatura.Open;
  edDebitos.Value  := 0;
  edCreditos.Value := 0;
  edValTotal.Value := 0;
  while not cdsDetFatura.eof do
  begin
     if cdsDetFaturaR_TIPO.Value = 'D' then
        edDebitos.Value  := edDebitos.Value + cdsDetFaturaR_VALOR.AsCurrency
     else
        edCreditos.Value := edCreditos.Value + cdsDetFaturaR_VALOR.AsCurrency;
     cdsDetFatura.Next;
  end;
  edValTotal.Value := edDebitos.Value - edCreditos.Value;
  GridTable.SetFocus;
end;

end.
