unit TabLocalPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadTabPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridTableView, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator,
  StdCtrls, cxButtons, ExtCtrls, dxGDIPlusClasses, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, cxCheckBox;

type
  TfrmTabLocalPagto = class(TfrmCadTabPadrao)
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabLocalPagto: TfrmTabLocalPagto;

implementation

uses udmPrincipal, UtilsDb, udmTabelas, AddEditLocalPagto;

{$R *.dfm}

procedure TfrmTabLocalPagto.btnNovoClick(Sender: TObject);
Var
   iIdAddEdit: Integer;
begin

  inherited;
  frmAddEditLocalPagto := TfrmAddEditLocalPagto.Create(Self);
  if TcxButton(Sender).Tag = 1 then
  begin
     iIdAddEdit := frmAddEditLocalPagto.Executa(Self.Name,0)
  end else
     iIdAddEdit := frmAddEditLocalPagto.Executa(Name,ds1.DataSet.FieldByName('ID').Value);
  FreeAndNil(frmAddEditLocalPagto);

end;

procedure TfrmTabLocalPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  Action := caFree;

end;

procedure TfrmTabLocalPagto.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab       := 'LOCAL_PAGTO';
  prpNomeCDS        := 'cdsLocalPagto';
  pb_sNomeCampoPK   := 'ID';
  pb_sNomeGen       := 'GEN_ID_LOCAL_PAGTO';
  pb_sTitJanela1    := 'LOCAL DE PAGAMENTO';
  pb_sTitJanela2    := 'TABELA DE LOCAIS DE PAGAMENTOS';
  pb_sConfirmExclui := 'este';

end;

end.
