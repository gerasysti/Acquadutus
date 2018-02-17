unit TabDistrito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadTabPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, FMTBcd, DBClient, Provider, SqlExpr,
  cxGridTableView, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator,
  StdCtrls, cxButtons, ExtCtrls, dxGDIPlusClasses, cxLabel, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, dxSkinBlack, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons;

type
  TfrmTabDistrito = class(TfrmCadTabPadrao)
    dbgCidade: TDBGrid;
    dsCidadeFiltro: TDataSource;
    sbFiltraCidade: TSpeedButton;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure sbFiltraCidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgCidadeExit(Sender: TObject);
    procedure dsCidadeFiltroDataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure InicializaParametros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabDistrito: TfrmTabDistrito;

implementation

uses udmPrincipal, UtilsDb, udmTabelas, AddEditDistrito;

{$R *.dfm}

procedure TfrmTabDistrito.btnNovoClick(Sender: TObject);
Var
   iIdAddEdit: Integer;
begin

  inherited;

  frmAddEditDistrito := TfrmAddEditDistrito.Create(Self);
  if TcxButton(Sender).Tag = 1 then
     iIdAddEdit := frmAddEditDistrito.Executa(Name,0)
  else
     iIdAddEdit := frmAddEditDistrito.Executa(Name,ds1.DataSet.FieldByName('ID').Value);
  FreeAndNil(frmAddEditDistrito);

end;

procedure TfrmTabDistrito.dbgCidadeExit(Sender: TObject);
begin
  dbgCidade.Visible := False;
end;

procedure TfrmTabDistrito.dsCidadeFiltroDataChange(Sender: TObject; Field: TField);
begin

  if dsCidadeFiltro.DataSet.State <> dsBrowse then exit;

  if prpNomeCDS = EmptyStr then InicializaParametros;

  dmTabelas.FiltraCidade(prpNomeCDS,'qryDistrito');

  sbFiltraCidade.Caption := '[F8] => Distritos/Cidade: [ '+Trim(dsCidadeFiltro.DataSet.FieldByName('NOME').Value)+' ]';

end;

procedure TfrmTabDistrito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfrmTabDistrito.FormCreate(Sender: TObject);
begin
  inherited;
  InicializaParametros;
end;

procedure TfrmTabDistrito.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_F8)  then
     sbFiltraCidadeClick(sbFiltraCidade);
end;

procedure TfrmTabDistrito.FormShow(Sender: TObject);
begin

  dmTabelas.qryDistrito.ParamByName('cidade_ini').Value := 0;
  dmTabelas.qryDistrito.ParamByName('cidade_fim').Value := 999999;

  inherited;

  dmTabelas.AddItemFiltroCidade;

end;

procedure TfrmTabDistrito.sbFiltraCidadeClick(Sender: TObject);
begin
  if dbgCidade.Visible then
  begin
     dbgCidade.Visible := False;
     GridTable.SetFocus;
  end else
  begin
     dbgCidade.Visible := True;
     dbgCidade.SetFocus;
  end;
end;

procedure TfrmTabDistrito.InicializaParametros;
begin
  pb_sNomeTab      := 'DISTRITO';
  prpNomeCDS       := 'cdsDistrito';
  pb_sNomeCampoPK  := 'ID';
  pb_sNomeGen      := 'GEN_ID_DISTRITO';
  pb_sTitJanela1   := 'DISTRITO';
  pb_sTitJanela2   := 'TABELA DE DISTRITOS';
  pb_sConfirmExclui:= 'este';
end;

end.
