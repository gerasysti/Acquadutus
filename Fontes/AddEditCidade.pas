unit AddEditCidade;


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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxDropDownEdit;

type
  TfrmAddEditCidade = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edDescricao: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edUF: TcxComboBox;
    edCEP: TcxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edUFPropertiesCloseUp(Sender: TObject);
    procedure edUFPropertiesPopup(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddEditCidade: TfrmAddEditCidade;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, udmTabelas;

{$R *.dfm}

procedure TfrmAddEditCidade.btnGravarClick(Sender: TObject);
begin

  inherited;

  if not pb_lConfirmSave then exit;

  ds1.DataSet.FieldByName('cep').AsString:= ExtraiPonto(edCEP.Text);
  ds1.DataSet.FieldByName('uf').AsString := edUF.Properties.Items[edUF.ItemIndex];

  dmTabelas.GravaRegistro('cdsCidade');

  Close;

end;

procedure TfrmAddEditCidade.edUFPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditCidade.edUFPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditCidade.FormCreate(Sender: TObject);
begin

   inherited;

   pb_sNomeTab      := 'CIDADE';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_CIDADE';
   pb_sTitJanela    := 'CIDADE';
   pb_sNovoNova     := 'NOVA';

   PreecheComboUF(edUF);

end;

procedure TfrmAddEditCidade.FormShow(Sender: TObject);
begin
  inherited;

  if ds1.DataSet.State = dsEdit then
  begin
     edCEP.Text := ds1.DataSet.FieldByName('cep').AsString;
     FindItemCombo(edUF,ds1.DataSet.FieldByName('UF').Value);
  end;

  edDescricao.SetFocus;

end;

end.
