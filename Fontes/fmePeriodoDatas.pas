unit fmePeriodoDatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxEdit, cxTextEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, dxSkinsCore, dxSkinsDefaultPainters,
  cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.ComCtrls, dxCore,
  cxDateUtils, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  TfrmePeriodoDt = class(TFrame)
    edDtIni: TcxDateEdit;
    cxLabel61: TcxLabel;
    edDtFim: TcxDateEdit;
    procedure edDtIniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses gsLib;

{$R *.dfm}

procedure TfrmePeriodoDt.edDtIniExit(Sender: TObject);
begin
   if TcxDateEdit(Sender).Tag = 1 then
   begin
      if not ValidaPeriodo2(edDtIni.Text,edDtFim.Text,'1') then
         edDtIni.SetFocus
   end else
      if not ValidaPeriodo2(edDtIni.Text,edDtFim.Text,'2') then
         edDtFim.SetFocus;
end;

end.
