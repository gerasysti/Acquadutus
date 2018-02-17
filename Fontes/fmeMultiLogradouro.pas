unit fmeMultiLogradouro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, Buttons,
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
  TfrmeMultiLogradouro = class(TFrame)
    sbMultiLograd: TSpeedButton;
    edMultiLograd: TcxTextEdit;
    procedure sbMultiLogradClick(Sender: TObject);
    procedure edMultiLogradKeyPress(Sender: TObject; var Key: Char);
    procedure edMultiLogradKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    pb_sIdDistrito,
    pb_sIdBairro: String[3];
  end;

implementation

uses gsLib, SelecionaMultiLogradouro;

{$R *.dfm}

procedure TfrmeMultiLogradouro.edMultiLogradKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3)) then
     sbMultiLograd.Click;
end;

procedure TfrmeMultiLogradouro.edMultiLogradKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0' .. '9', ';', #8] then exit else Key := #0;
end;

procedure TfrmeMultiLogradouro.sbMultiLogradClick(Sender: TObject);
begin
   frmSelecionaMultiLogradouro := TfrmSelecionaMultiLogradouro.Create(Nil);
   frmSelecionaMultiLogradouro.pb_iBairro := StrToInt(pb_sIdBairro);
   edMultiLograd.Text := frmSelecionaMultiLogradouro.Executa(edMultiLograd.Text,2,'LOGRADOUROS','ID_lograd');
   FreeAndNil(frmSelecionaMultiLogradouro);
end;

end.
