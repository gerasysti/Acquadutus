unit fmeLogradouro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, Buttons, cxMaskEdit, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TfrmeLogradouro = class(TFrame)
    edId: TcxMaskEdit;
    sb1: TSpeedButton;
    edDescricao: TcxTextEdit;
    procedure edIdExit(Sender: TObject);
    procedure edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edIdPropertiesChange(Sender: TObject);
    procedure sb1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses gsLib, UtilsDb, VarGlobais, SelecionaPadrao, SelecionaLogradouro;

{$R *.dfm}

procedure TfrmeLogradouro.edIdExit(Sender: TObject);
begin
  if Empty(edId.Text) then exit;
  edId.Text := Trim(edId.Text);
  edDescricao.Text := Pesquisa('LOGRADOURO','ID',edId.Text,'DESCRICAO',
     'Identificador de Logradouro, inválido ...');
  if edDescricao.Text = '' then
     edId.SetFocus;
end;

procedure TfrmeLogradouro.edIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sb1.Click;
end;

procedure TfrmeLogradouro.edIdPropertiesChange(Sender: TObject);
begin
  if Empty(edId.Text) then edDescricao.Text:= '';
end;

procedure TfrmeLogradouro.sb1Click(Sender: TObject);
Var
  iIdRet: Integer;
begin
  frmSelecionaLogradouro := TfrmSelecionaLogradouro.Create(Nil);
  iIdRet := frmSelecionaLogradouro.Executa(3,'LOGRADOURO','ID',True);
  if iIdRet > 0 then
     edId.Text := IntToStr(iIdRet);
  edId.SetFocus;
  FreeAndNil(frmSelecionaLogradouro);
end;

constructor TfrmeLogradouro.Create(AOwner: TComponent);
begin
  inherited;
  edId.Hint := '[Ctrl+Enter] ou [F3] p/ Selecionar ...';
end;

end.
