unit fmeBairro;

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
  TfrmeBairro = class(TFrame)
    edId: TcxMaskEdit;
    sb1: TSpeedButton;
    edDescricao: TcxTextEdit;
    procedure sb1Click(Sender: TObject);
    procedure edIdExit(Sender: TObject);
    procedure edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses VarGlobais, gsLib, UtilsDb, SelecionaBairro;

{$R *.dfm}

procedure TfrmeBairro.edIdExit(Sender: TObject);
begin
  if Empty(edId.Text) then exit;
  edId.Text := Trim(edId.Text);
  edDescricao.Text := Pesquisa('BAIRRO','ID',edId.Text,'DESCRICAO',
                               'Identificador de Bairro, inválido ...');
  if edDescricao.Text = '' then
     edId.SetFocus;
end;

procedure TfrmeBairro.edIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sb1.Click;
end;

procedure TfrmeBairro.sb1Click(Sender: TObject);
Var
  iRet: Integer;
begin
  frmSelecionaBairro := TfrmSelecionaBairro.Create(Nil);
  iRet := frmSelecionaBairro.Executa(3,'BAIRRO','ID',False);
  if iRet > 0 then
     edId.Text := IntToStr(iRet);
  edId.SetFocus;
  FreeAndNil(frmSelecionaBairro);
end;

end.
