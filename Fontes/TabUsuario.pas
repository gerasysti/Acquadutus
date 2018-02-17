unit TabUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, CadTabPadrao, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, FMTBcd, DBClient, Provider,
  SqlExpr, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxNavigator,
  cxDBNavigator, StdCtrls, cxButtons, cxLabel, cxTextEdit, ExtCtrls, cxCheckBox,
  cxGroupBox, cxDBEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  TfrmTabUsuario = class(TfrmCadTabPadrao)
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    dsUsuarioPermTabela: TDataSource;
    cxGroupBox2: TcxGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    GridTableDBTableView1Column4: TcxGridDBColumn;
    cxDBCheckBox21: TcxDBCheckBox;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    chkCopEventoMesAnter: TcxDBCheckBox;
    chkImportEvArqTXT: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    GridTableDBTableView1Column3: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure btnNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ds1DataChange(Sender: TObject; Field: TField);
  private
    procedure InicializaParametros;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTabUsuario: TfrmTabUsuario;

implementation

uses udmPrincipal, gsLib, AddEditUsuario, UtilsDb, udmTabelas;

{$R *.dfm}

procedure TfrmTabUsuario.btnNovoClick(Sender: TObject);
Var
  iIdAddEdit: Integer;
begin
  frmAddEditUsuario := TfrmAddEditUsuario.Create(Self);
  if TcxButton(Sender).Tag = 1 then
     iIdAddEdit := frmAddEditUsuario.Executa(Name,0)
  else
     iIdAddEdit := frmAddEditUsuario.Executa(Name,ds1.DataSet.FieldByName('ID').Value);
  {
  if iIdAddEdit <> 0 then
     gsRefreshClient(cds1,'ID',iIdAddEdit);
  }
  FreeAndNil(frmAddEditUsuario);
end;

procedure TfrmTabUsuario.ds1DataChange(Sender: TObject; Field: TField);
begin

  if ds1.DataSet.State <> dsBrowse then exit;

  dmTabelas.OpenCDS_PermUsuario(ds1.DataSet.FieldByName('id').Value);

  if ds1.DataSet.FieldByName('ACESS_TAB_TARIFA').Value = 'S' then
     cxDBCheckBox21.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox21.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('ACESS_CAD_UNID_CONSUM').Value = 'S' then
     cxDBCheckBox22.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox22.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('CALC_TARIFA_INDIV').Value = 'S' then
     chkCopEventoMesAnter.StyleDisabled.TextColor := clGreen
  else
     chkCopEventoMesAnter.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('CALC_TARIFA_BAIRRO').Value = 'S' then
     chkImportEvArqTXT.StyleDisabled.TextColor := clGreen
  else
     chkImportEvArqTXT.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('CALC_REAJUSTE').Value = 'S' then
     cxDBCheckBox1.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox1.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('IMPORT_PAGTO_TXT').Value = 'S' then
     cxDBCheckBox2.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox2.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('LAN_PAGTO').Value = 'S' then
     cxDBCheckBox3.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox3.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('CANCEL_TARIFA').Value = 'S' then
     cxDBCheckBox4.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox4.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('CONFIG_ORGAO').Value = 'S' then
     cxDBCheckBox5.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox5.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('CONFIG_SISTEMA').Value = 'S' then
     cxDBCheckBox6.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox6.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('CONFIG_RELS').Value = 'S' then
     cxDBCheckBox7.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox7.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('REL_TABELAS').Value = 'S' then
     cxDBCheckBox14.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox14.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('REL_UNID_CONSUM').Value = 'S' then
     cxDBCheckBox15.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox15.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('REL_FINANCEIROS').Value = 'S' then
     cxDBCheckBox16.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox16.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('REL_DOCTOS').Value = 'S' then
     cxDBCheckBox17.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox17.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('REL_OUTROS').Value = 'S' then
     cxDBCheckBox18.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox18.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('GERADOR_RELS').Value = 'S' then
     cxDBCheckBox13.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox13.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('REST_BACKUP').Value = 'S' then
     cxDBCheckBox19.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox19.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('EXECUT_COMAND_SQL').Value = 'S' then
     cxDBCheckBox23.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox23.StyleDisabled.TextColor := clRed;
  if ds1.DataSet.FieldByName('ENCERRAR_REABRIR_MOVIM').Value = 'S' then
     cxDBCheckBox24.StyleDisabled.TextColor := clGreen
  else
     cxDBCheckBox24.StyleDisabled.TextColor := clRed;

end;

procedure TfrmTabUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  InicializaParametros;

end;

procedure TfrmTabUsuario.FormShow(Sender: TObject);
begin

  inherited;

  while not ds1.DataSet.eof do
  begin
     ds1.DataSet.Edit;
     ds1.DataSet.FieldByName('NOME_CURTO2').Value   := Criptografa(ds1.DataSet.FieldByName('NOME_CURTO').Value,'2',20);
     ds1.DataSet.FieldByName('NOME_COMPLETO2').Value:= Criptografa(ds1.DataSet.FieldByName('NOME_COMPLETO').Value,'2',40);
     ds1.DataSet.FieldByName('CARGO_FUNCAO2').Value := Criptografa(ds1.DataSet.FieldByName('CARGO_FUNCAO').Value,'2',40);
     ds1.DataSet.Post;
     ds1.DataSet.Next;
  end;

end;

procedure TfrmTabUsuario.InicializaParametros;
begin
  pb_sNomeTab      := 'USUARIO';
  pb_sNomeCampoPK  := 'ID';
  pb_sTitJanela1   := 'USUÁRIO';
  pb_sTitJanela2   := 'TABELA DE USUÁRIOS';
  pb_sConfirmExclui:= 'este';
  prpNomeCDS       := 'cdsUsuario';
end;

end.
