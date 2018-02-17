unit fmeEntidadeFinanceira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, FMTBcd, DB, SqlExpr, cxTextEdit, Buttons, cxMaskEdit,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmeEntidFinanc = class(TFrame)
    edId: TcxMaskEdit;
    sbEntidFinanc: TSpeedButton;
    edDescricao: TcxTextEdit;
    edCodigo: TcxTextEdit;
    procedure edIdPropertiesChange(Sender: TObject);
    procedure edIdExit(Sender: TObject);
    procedure sbEntidFinancClick(Sender: TObject);
    procedure edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_sTipoEntidFinanc: String[1];
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses udmPrincipal, gsLib, VarGlobais, SelecionaPadrao, UtilsDb;

{$R *.dfm}

procedure TfrmeEntidFinanc.edIdExit(Sender: TObject);
begin
  if Trim(edId.Text)='' then exit;
  edDescricao.Text := Pesquisa('ENTID_FINANC','ID',Trim(edId.Text),'DESCRICAO',
     'Id. de Entidade Financeira, inexistente ...');
  if edDescricao.Text = '' then
  begin
     edId.SetFocus;
     exit;
  end;
  edCodigo.Text := Pesquisa('ENTID_FINANC','ID',Trim(edId.Text),'COD_BANCO',
     '');
end;

procedure TfrmeEntidFinanc.edIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sbEntidFinanc.Click;
end;

procedure TfrmeEntidFinanc.edIdPropertiesChange(Sender: TObject);
begin
  if not Empty(edId.Text) then exit;
  edDescricao.Text:= '';
  edCodigo.Text   := '';
end;

constructor TfrmeEntidFinanc.Create(AOwner: TComponent);
begin
  inherited;
  //edId.Hint := ' Id. do Evento '+#13+'(Ctrl+Enter / F3 > Pesquisa)';
end;

procedure TfrmeEntidFinanc.sbEntidFinancClick(Sender: TObject);
begin
{
  frmSeleciona3 := TfrmSeleciona3.Create(Nil);
  if pb_sTipoEntidFinanc = null then
     pb_sTipoEntidFinanc := 'T';
  if pb_sTipoEntidFinanc = 'B' then
  begin
     if frmSeleciona3.Executa(['Descrição','Código','Banco','Id.'],
        'ENTIDADE FINANCEIRA','ENTID_FINANC','DESCRICAO','COD_BANCO','NUM_CONV',
        'ID','BANCO','S',True) then
     edId.Text := glb_sCodigo;
  end else
  if pb_sTipoEntidFinanc = 'T' then
  begin
     if frmSeleciona3.Executa(['Descrição','Código','Banco','Id.'],
        'ENTIDADE FINANCEIRA','ENTID_FINANC','DESCRICAO','COD_BANCO','NUM_CONV',
        'ID','','',True) then
     edId.Text := glb_sCodigo;
  end else
  begin
     if frmSeleciona3.Executa(['Descrição','Código','Banco','Id.'],
        'ENTIDADE FINANCEIRA','ENTID_FINANC','DESCRICAO','COD_BANCO','NUM_CONV',
        'ID','BANCO','N',True) then
     edId.Text := glb_sCodigo;
  end;
  edId.SetFocus;
  FreeAndNil(frmSeleciona3);
  }
end;

end.
