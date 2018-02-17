unit AddEditLogradouro;


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
  TfrmAddEditLogradouro = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edDescricao: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edNomeDistrito: TcxDBTextEdit;
    edIdDistrito: TcxDBTextEdit;
    sbDistrito: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edUFPropertiesCloseUp(Sender: TObject);
    procedure edUFPropertiesPopup(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edIdDistritoExit(Sender: TObject);
    procedure edIdDistritoKeyPress(Sender: TObject; var Key: Char);
    procedure sbDistritoClick(Sender: TObject);
    procedure edIdDistritoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edIdCidadePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddEditLogradouro: TfrmAddEditLogradouro;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, SelecionaDistrito, udmTabelas;

{$R *.dfm}

procedure TfrmAddEditLogradouro.btnGravarClick(Sender: TObject);
begin

  if ds1.DataSet.FieldByName('id_distrito').IsNull then exit;

  inherited;

  if not pb_lConfirmSave then exit;

  dmTabelas.GravaRegistro('cdsLogradouro');

  Close;

end;

procedure TfrmAddEditLogradouro.edIdDistritoExit(Sender: TObject);
Var
  sIdCidade: string[5];
begin

  if edIdDistrito.Text = EmptyStr then exit;

  ds1.DataSet.FieldByName('descr_distrito_cidade').Value := Pesquisa('distrito','id',
    edIdDistrito.Text,'descricao||'+QuotedStr(' - ')+'||nome_cidade',
    'Identificador de Distrito, Inválido ...');

  if edNomeDistrito.Text = EmptyStr then
  begin
     edIdDistrito.SetFocus;
     exit;
  end;

  sIdCidade := Pesquisa('distrito','id',edIdDistrito.Text,'id_cidade','');
  ds1.DataSet.FieldByName('id_cidade').Value := sIdCidade;
  ds1.DataSet.FieldByName('descr_distrito_cidade').Value := Pesquisa('distrito','id',
    edIdDistrito.Text,'descricao||'+QuotedStr(' - ')+'||nome_cidade','');
  ds1.DataSet.FieldByName('nome_cidade').Value := Pesquisa('cidade','id',
    sIdCidade,'nome||'+QuotedStr(' - ')+'||uf','');

end;

procedure TfrmAddEditLogradouro.edIdDistritoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  If ((Shift = [ssCtrl]) And (Key = VK_RETURN)) or
     ((Shift = []) And (Key = VK_F3)) Then
     sbDistrito.Click;
end;

procedure TfrmAddEditLogradouro.edIdDistritoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in ['0'..'9',#8,#13] then exit else Key := #0;
end;

procedure TfrmAddEditLogradouro.edIdCidadePropertiesChange(Sender: TObject);
begin
  if edIdDistrito.Text = EmptyStr then
     edNomeDistrito.Text := '';
end;

procedure TfrmAddEditLogradouro.edUFPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditLogradouro.edUFPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditLogradouro.FormCreate(Sender: TObject);
begin
   inherited;

   pb_sNomeTab      := 'LOGRADOURO';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_LOGRADOURO';
   pb_sTitJanela    := 'LOGRADOURO';
   pb_sNovoNova     := 'NOVO';

end;

procedure TfrmAddEditLogradouro.FormShow(Sender: TObject);
Var
  sIdCidadeOrgao: string[5];
begin

  inherited;
  {
  if ds1.DataSet.State = dsInsert then
  begin
     if dmTabelas.cdsCidadeFiltroID.Value <> 0 then
     begin
        ds1.DataSet.FieldByName('id_Distrito').Value   := dmTabelas.cdsCidadeFiltroID.Value;
        ds1.DataSet.FieldByName('nome_distrito').Value := dmTabelas.cdsCidadeFiltroNOME.Value;
     end else
     begin
        sIdCidadeOrgao := Pesquisa('CONFIG_ORGAO','ID','1','ender_ID_CIDADE','');
        ds1.DataSet.FieldByName('id_cidade').AsString := sIdCidadeOrgao;
        edIdDistritoExit(edIdDistrito);
     end;
  end;
  }
  edDescricao.SetFocus;

end;

procedure TfrmAddEditLogradouro.sbDistritoClick(Sender: TObject);
Var
   iSelect: Integer;
begin

   frmSelecionaDistrito := TfrmSelecionaDistrito.Create(Self);
   iSelect := frmSelecionaDistrito.Executa(3,'DISTRITO','ID',True);
   if iSelect > 0 then
   begin
      ds1.DataSet.FieldByName('id_distrito').Value := iSelect;
      edIdDistritoExit(edIdDistrito)
   end;

end;

end.
