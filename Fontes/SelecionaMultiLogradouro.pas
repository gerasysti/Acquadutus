unit SelecionaMultiLogradouro;

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
  TfrmSelecionaMultiLogradouro = class(TfrmSelecionaPadraoMulti)
    Label3: TLabel;
    edBairroDistrito: TcxTextEdit;
    cds1ID: TIntegerField;
    cds1MARCADO: TStringField;
    cds1ID_LOGRAD: TIntegerField;
    cds1DESCR_LOGRAD: TStringField;
    procedure FormShow(Sender: TObject);
    procedure qry1BeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_iBairro: Integer;
  end;

var
  frmSelecionaMultiLogradouro: TfrmSelecionaMultiLogradouro;

implementation

{$R *.dfm}

uses UtilsDb, gsLib;

procedure TfrmSelecionaMultiLogradouro.FormShow(Sender: TObject);
begin
  inherited;

  edBairroDistrito.Text := Pesquisa('DISTRITO','ID',IntToStr(pb_iBairro),
     'descricao||'+QuotedStr(' / ')+'||descr_distrito','');

end;

procedure TfrmSelecionaMultiLogradouro.qry1BeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qry1.Params[0].Value := StrToInt(pb_sIdCidadeOrgao);
  if pb_iBairro = 0 then // todos
  begin
     qry1.Params[1].Value := 0;
     qry1.Params[2].Value := 99999;
  end else
  if pb_iBairro = 0 then
  begin
     qry1.Params[1].Value := pb_iBairro;
     qry1.Params[2].Value := pb_iBairro;
  end;
end;

end.
