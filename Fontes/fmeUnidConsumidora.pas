unit fmeUnidConsumidora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, Buttons,
  cxMaskEdit, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmeUnidConsum = class(TFrame)
    edId: TcxMaskEdit;
    sb1: TSpeedButton;
    edNomePessoa: TcxTextEdit;
    procedure sb1Click(Sender: TObject);
    procedure edIdExit(Sender: TObject);
    procedure edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses FindUnidConsumidora, VarGlobais, gsLib, UtilsDb;

{$R *.dfm}

procedure TfrmeUnidConsum.edIdExit(Sender: TObject);
begin
  if Empty(edId.Text) then exit;
  edId.Text := Trim(ExtraiPonto(edId.Text));
  edNomePessoa.Text := Pesquisa('UNID_CONSUMIDORA','ID',edId.Text,'NOME_PESSOA',
                               'Identificador de Unid. Consumidora, inválido ...');
  if edNomePessoa.Text = '' then edId.SetFocus;
end;

procedure TfrmeUnidConsum.edIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sb1.Click;
end;

procedure TfrmeUnidConsum.sb1Click(Sender: TObject);
begin
  //frmFindUnidConsumidora := TfrmFindUnidConsumidora.Create(Self);
  frmFindUnidConsum.ShowModal;
  if glb_sCodigo <> '' then
     edId.Text := glb_sCodigo;
  //FreeAndNil(frmFindUnidConsumidora);
end;

end.
