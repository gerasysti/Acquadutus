unit fmeLocalPagto;

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
  TfrmeLocalPagto = class(TFrame)
    edId: TcxMaskEdit;
    sb1: TSpeedButton;
    edDescricao: TcxTextEdit;
    procedure edIdExit(Sender: TObject);
    procedure sb1Click(Sender: TObject);
    procedure edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses gsLib, UtilsDb, VarGlobais, SelecionaLocalPagto;

{$R *.dfm}

procedure TfrmeLocalPagto.edIdExit(Sender: TObject);
begin
  if Empty(edId.Text) then exit;
  edId.Text := Trim(edId.Text);
  edDescricao.Text := Pesquisa('LOCAL_PAGTO','ID',edId.Text,'DESCRICAO',
    'Identificador de Local de Pagto, inválido ...');
  if edDescricao.Text = '' then edId.SetFocus;
end;

procedure TfrmeLocalPagto.edIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sb1.Click;
end;

procedure TfrmeLocalPagto.sb1Click(Sender: TObject);
Var
  iRet: Integer;
begin
  frmSelecionaLocalPagto := TfrmSelecionaLocalPagto.Create(Nil);
  iRet := frmSelecionaLocalPagto.Executa(4,'LOCAL DE PAGTO','ID',False);
  if iRet > 0 then edId.SetFocus;
  FreeAndNil(frmSelecionaLocalPagto);
end;

end.
