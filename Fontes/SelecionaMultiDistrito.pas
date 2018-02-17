unit SelecionaMultiDistrito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SelecionaPadraoMulti, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Data.FMTBcd,
  Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider, Vcl.StdCtrls, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, Vcl.Buttons, cxCheckBox;

type
  TfrmSelecionaMultiDistrito = class(TfrmSelecionaPadraoMulti)
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1MARCADO: TStringField;
    Label3: TLabel;
    edCidade: TcxTextEdit;
    procedure qry1BeforeOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaMultiDistrito: TfrmSelecionaMultiDistrito;

implementation

{$R *.dfm}

uses UtilsDb, gsLib;

procedure TfrmSelecionaMultiDistrito.FormShow(Sender: TObject);
begin
  inherited;
  edCidade.Text := Pesquisa('DISTRITO','ID',pb_sIdCidadeOrgao,'nome_cidade','');
end;

procedure TfrmSelecionaMultiDistrito.qry1BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry1.Params[0].Value := StrToInt(pb_sIdCidadeOrgao);
end;

end.
