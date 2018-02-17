unit SelecionaLocalPagto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SelecionaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
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
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider, cxTextEdit,
  Vcl.StdCtrls, Vcl.Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Grids, Vcl.DBGrids, cxCheckBox;

type
  TfrmSelecionaLocalPagto = class(TfrmSelecionaPadrao)
    GridTableDBTableView1Column2: TcxGridDBColumn;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1COD_BANCO: TStringField;
    cds1ATIVO: TStringField;
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaLocalPagto: TfrmSelecionaLocalPagto;

implementation

{$R *.dfm}

uses udmTabelas, UtilsDb;

procedure TfrmSelecionaLocalPagto.btnNovoClick(Sender: TObject);
Var
  iIdAddEdit: Integer;
begin
{
  dmTabelas.OpenTable('cdsDistrito');

  frmAddEditDistrito := TfrmAddEditDistrito.Create(Self);
  dmTabelas.cdsDistrito.Insert;
  iIdAddEdit := frmAddEditDistrito.Executa(Name,0);
  FreeAndNil(frmAddEditDistrito);

  if iIdAddEdit > 0 then
  begin
     cds1.Close;
     cds1.Open;
     cds1.Locate('id',iIdAddEdit,[]);
     btnOk.SetFocus;
  end;
}

end;

end.
