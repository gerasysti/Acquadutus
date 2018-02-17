unit SelecionaBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SelecionaPadrao, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer,
  Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr, Datasnap.Provider, cxTextEdit,
  Vcl.StdCtrls, Vcl.Buttons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmSelecionaBairro = class(TfrmSelecionaPadrao)
    GridTableDBTableView1Column2: TcxGridDBColumn;
    dbgCidade: TDBGrid;
    sbFiltraCidade: TSpeedButton;
    dsCidadeFiltro: TDataSource;
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1DESCR_DISTRITO: TStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsCidadeFiltroDataChange(Sender: TObject; Field: TField);
    procedure sbFiltraCidadeClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgCidadeExit(Sender: TObject);
    procedure dbgCidadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaBairro: TfrmSelecionaBairro;

implementation

{$R *.dfm}

uses udmTabelas, UtilsDb, AddEditBairro;

procedure TfrmSelecionaBairro.btnNovoClick(Sender: TObject);
Var
  iIdAddEdit: Integer;
begin

  dmTabelas.OpenTable('cdsDistrito');

  frmAddEditBairro := TfrmAddEditBairro.Create(Self);
  dmTabelas.cdsDistrito.Insert;
  iIdAddEdit := frmAddEditBairro.Executa(Name,0);
  FreeAndNil(frmAddEditBairro);

  if iIdAddEdit > 0 then
  begin
     cds1.Close;
     cds1.Open;
     cds1.Locate('id',iIdAddEdit,[]);
     btnOk.SetFocus;
  end;

end;

procedure TfrmSelecionaBairro.dbgCidadeExit(Sender: TObject);
begin
  dbgCidade.Visible := False;
end;

procedure TfrmSelecionaBairro.dbgCidadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_ESCAPE)  then
     GridTable.SetFocus;
end;

procedure TfrmSelecionaBairro.dsCidadeFiltroDataChange(Sender: TObject;
  Field: TField);
begin

  if dsCidadeFiltro.DataSet.State <> dsBrowse then exit;

  cds1.DisableControls;
  cds1.Close;
  if dsCidadeFiltro.DataSet.FieldByName('id').Value = 0 then
  begin
     qry1.ParamByName('cidade_ini').Value := 0;
     qry1.ParamByName('cidade_fim').Value := 999999;
  end else
  begin
     qry1.ParamByName('cidade_ini').Value := dsCidadeFiltro.DataSet.FieldByName('id').Value;
     qry1.ParamByName('cidade_fim').Value := dsCidadeFiltro.DataSet.FieldByName('id').Value;
  end;
  cds1.Open;
  cds1.EnableControls;

  sbFiltraCidade.Caption := '[F8] => Bairros/Cidade: [ '+Trim(dsCidadeFiltro.DataSet.FieldByName('NOME').Value)+' ]';

end;

procedure TfrmSelecionaBairro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dsCidadeFiltro.DataSet.Close;
end;

procedure TfrmSelecionaBairro.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Shift = []) and (Key = VK_F8)  then
     sbFiltraCidadeClick(sbFiltraCidade);
end;

procedure TfrmSelecionaBairro.FormShow(Sender: TObject);
begin

  qry1.ParamByName('cidade_ini').Value := 0;
  qry1.ParamByName('cidade_fim').Value := 999999;

  inherited;

  dmTabelas.AddItemFiltroCidade;

end;

procedure TfrmSelecionaBairro.sbFiltraCidadeClick(Sender: TObject);
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

end.
