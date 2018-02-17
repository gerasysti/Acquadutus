unit AddEditLocalPagto;


interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, cxControls, cxContainer, cxEdit, StdCtrls, cxMaskEdit,
  cxDBEdit, cxTextEdit, DB, DBClient, Provider, SqlExpr, cxClasses, cxStyles,
  cxGridTableView, cxButtons, ExtCtrls,
  cxLabel, dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxDropDownEdit, cxCheckBox;

type
  TfrmAddEditLocalPagto = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edDescricao: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edCodBanco: TcxMaskEdit;
    chkLocalAtivo: TcxCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddEditLocalPagto: TfrmAddEditLocalPagto;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, udmTabelas;

{$R *.dfm}

procedure TfrmAddEditLocalPagto.btnGravarClick(Sender: TObject);
begin

  inherited;

  if not pb_lConfirmSave then exit;

  ds1.DataSet.FieldByName('cod_banco').AsString:= edCodBanco.Text;
  ds1.DataSet.FieldByName('ativo').AsString:= iIf(chkLocalAtivo.Checked,'S','N');

  dmTabelas.GravaRegistro(ds1.DataSet.Name);

  Close;

end;

procedure TfrmAddEditLocalPagto.FormCreate(Sender: TObject);
begin

   inherited;

   pb_sNomeTab      := 'LOCAL_PAGTO';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_LOCAL_PAGTO';
   pb_sTitJanela    := 'LOCAL DE PAGAMENTO';
   pb_sNovoNova     := 'NOVO';

end;

procedure TfrmAddEditLocalPagto.FormShow(Sender: TObject);
begin
  inherited;

  if ds1.DataSet.State = dsEdit then
  begin
     try
       edCodBanco.Text := ds1.DataSet.FieldByName('cod_banco').Value;
     except
       edCodBanco.Text := '0';
     end;
     chkLocalAtivo.Checked := ds1.DataSet.FieldByName('ativo').Value = 'S';
  end else
     chkLocalAtivo.Checked := True;

  edDescricao.SetFocus;

end;

end.
