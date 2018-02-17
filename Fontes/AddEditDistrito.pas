unit AddEditDistrito;


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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxDropDownEdit, Vcl.Buttons;

type
  TfrmAddEditDistrito = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edDescricao: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edNomeCidade: TcxDBTextEdit;
    edIdCidade: TcxDBTextEdit;
    sbCidade: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edUFPropertiesCloseUp(Sender: TObject);
    procedure edUFPropertiesPopup(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edIdCidadeExit(Sender: TObject);
    procedure edIdCidadeKeyPress(Sender: TObject; var Key: Char);
    procedure sbCidadeClick(Sender: TObject);
    procedure edIdCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edIdCidadePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddEditDistrito: TfrmAddEditDistrito;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, udmTabelas, SelecionaCidade;

{$R *.dfm}

procedure TfrmAddEditDistrito.btnGravarClick(Sender: TObject);
begin

  if ds1.DataSet.FieldByName('id_cidade').IsNull then exit;

  inherited;

  if not pb_lConfirmSave then exit;

  dmTabelas.GravaRegistro('cdsDistrito');

  Close;

end;

procedure TfrmAddEditDistrito.edIdCidadeExit(Sender: TObject);
begin

  if edIdCidade.Text = EmptyStr then exit;

  ds1.DataSet.FieldByName('nome_cidade').Value := Pesquisa('cidade','id',edIdCidade.Text,'nome',
    'Identificador de Cidade, Inválido ...');

  if edNomeCidade.Text = EmptyStr then edIdCidade.SetFocus;

end;

procedure TfrmAddEditDistrito.edIdCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
     sbCidade.Click;
end;

procedure TfrmAddEditDistrito.edIdCidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in ['0'..'9',#8,#13] then exit else Key := #0;
end;

procedure TfrmAddEditDistrito.edIdCidadePropertiesChange(Sender: TObject);
begin
  if edIdCidade.Text = EmptyStr then
     edNomeCidade.Text := '';
end;

procedure TfrmAddEditDistrito.edUFPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditDistrito.edUFPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditDistrito.FormCreate(Sender: TObject);
begin
   inherited;

   pb_sNomeTab      := 'DISTRITO';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_DISTRITO';
   pb_sTitJanela    := 'DISTRITO';
   pb_sNovoNova     := 'NOVO';

end;

procedure TfrmAddEditDistrito.FormShow(Sender: TObject);
Var
  sIdCidadeOrgao: string[5];
begin

  inherited;

  if ds1.DataSet.State = dsInsert then
  begin
     if dmTabelas.cdsCidadeFiltroID.Value <> 0 then
     begin
        ds1.DataSet.FieldByName('id_cidade').Value := dmTabelas.cdsCidadeFiltroID.Value;
        ds1.DataSet.FieldByName('nome_cidade').Value := dmTabelas.cdsCidadeFiltroNOME.Value;
     end else
     begin
        sIdCidadeOrgao := Pesquisa('CONFIG_ORGAO','ID','1','ender_ID_CIDADE','');
        ds1.DataSet.FieldByName('id_cidade').AsString := sIdCidadeOrgao;
        edIdCidadeExit(edIdCidade);
     end;
  end;

  edDescricao.SetFocus;

end;

procedure TfrmAddEditDistrito.sbCidadeClick(Sender: TObject);
Var
   iSelect: Integer;
begin

   frmSelecionaCidade := TfrmSelecionaCidade.Create(Self);
   iSelect := frmSelecionaCidade.Executa(3,'CIDADE','ID',True);
   if iSelect > 0 then
   begin
      ds1.DataSet.FieldByName('id_cidade').Value := iSelect;
      edIdCidadeExit(edIdCidade)
   end;

end;

end.
