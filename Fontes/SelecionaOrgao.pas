unit SelecionaOrgao;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, FMTBcd, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, DBClient, SqlExpr, Provider, StdCtrls,
  Buttons, cxGridLevel, cxGridCustomView, cxGrid, cxClasses, cxContainer,
  cxTextEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxGDIPlusClasses, ExtCtrls, dxCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator;

type
  TfrmSelectOrgao = class(TfrmPadrao1)
    GridTable1: TcxGrid;
    GridTable1DBTableView1: TcxGridDBTableView;
    GridTable1Level1: TcxGridLevel;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    cdsOrgao: TClientDataSet;
    DataSource1: TDataSource;
    GridTable1DBTableView1Column1: TcxGridDBColumn;
    GridTable1DBTableView1Column2: TcxGridDBColumn;
    GridTable1DBTableView1Column3: TcxGridDBColumn;
    cdsOrgaoID: TIntegerField;
    cdsOrgaoNOME: TStringField;
    cdsOrgaoCNPJ: TStringField;
    cdsOrgaoDATABASE: TStringField;
    lblDataBase: TLabel;
    cdsOrgaoEXIBE: TStringField;
    edPesquisa: TcxTextEdit;
    Image1: TImage;
    lblQtdOrgaos: TLabel;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridTable1DBTableView1DblClick(Sender: TObject);
    procedure cdsOrgaoAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edPesquisaPropertiesChange(Sender: TObject);
  private
    pv_iConta,
    pv_iConta2: Integer;
    pv_sDataBase: string;
    procedure SetColGrid(iCol: integer);
    procedure ExibeRegisto(sTexto: string);
    { Private declarations }
  public
    { Public declarations }
    Function Executa: string;
  end;

var
  frmSelectOrgao: TfrmSelectOrgao;

implementation

uses VarGlobais, udmPrincipal, gsLib, UtilsDb;

{$R *.dfm}

procedure TfrmSelectOrgao.btnOkClick(Sender: TObject);
begin
   pv_sDataBase := Trim(lblDataBase.Caption);
end;

procedure TfrmSelectOrgao.cdsOrgaoAfterScroll(DataSet: TDataSet);
begin
  lblDataBase.Caption:= cdsOrgaoDATABASE.Value;
end;

procedure TfrmSelectOrgao.edPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Shift = [] then NavegaClient(Key,GridTable1DBTableView1);
end;

procedure TfrmSelectOrgao.edPesquisaPropertiesChange(Sender: TObject);
begin
   ExibeRegisto(edPesquisa.Text);
end;

Function TfrmSelectOrgao.Executa: String;
Begin
  pv_sDataBase:= '';
  ShowModal;
  if pv_sDataBase <> '' then
     Result := ini_le_secao('Servidor')+':'+pv_sDataBase
  else
     Result := '';
  //Mensagem(Result,'Teste',MB_OK+MB_ICONEXCLAMATION);
End;

procedure TfrmSelectOrgao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsOrgao.Close;
end;

procedure TfrmSelectOrgao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  iQtdCols: Integer;
begin
  inherited;

  if Key = VK_F4 then
  begin
     iQtdCols:= GridTable1DBTableView1.ColumnCount - 1;
     if pv_iConta > iQtdCols then PV_iConta := 0;
     if GridTable1DBTableView1.Columns[pv_iConta].SortOrder <> soNone then
     begin
        GridTable1DBTableView1.Columns[pv_iConta].SortOrder := soNone;
        pv_iConta2 := pv_iConta+1;
        if pv_iConta2 > iQtdCols then pv_iConta2 := 0;
        GridTable1DBTableView1.Columns[pv_iConta2].SortOrder := soAscending;
        SetColGrid(pv_iConta2);
     end;
     Inc(pv_iConta);
  end else
  if Key = VK_F3 then
     edPesquisa.SetFocus;
end;

procedure TfrmSelectOrgao.FormShow(Sender: TObject);
Var
  sCaminhoExe: string;
  iConta: Integer;
  slOrgao: TStringList;
  sEmpresa: String;
begin
  cdsOrgao.CreateDataSet;
  cdsOrgao.Open;
  sCaminhoExe := ExtractFilePath(Application.ExeName);
  slOrgao := TStringList.Create;
  slOrgao.LoadFromFile(sCaminhoExe+'MULTI.ORG');
  for iConta := 0 to slOrgao.Count - 1 do
  begin
     cdsOrgao.Insert;
     cdsOrgaoID.AsString := Trim(LeftStr(slOrgao[iConta],4));
     cdsOrgaoNOME.Value  := Trim(Copy(slOrgao[iConta],6,60));
     cdsOrgaoCNPJ.Value  := Copy(slOrgao[iConta],66,18);
     cdsOrgaoDATABASE.Value:= Copy(slOrgao[iConta],85,255);
     cdsOrgaoEXIBE.Value := 'S';
     cdsOrgao.Post;
  end;
  cdsOrgao.IndexFieldNames:= 'NOME';
  sEmpresa := Trim(glb_sEmpresa);
  cdsOrgao.FindKey([sEmpresa]);
  SetColGrid(1);

  lblQtdOrgaos.Caption := 'Qtd. de Órgãos: '+IntToStr(cdsOrgao.RecordCount);
  GridTable1.SetFocus;
  FreeAndNil(slOrgao);

  GridTable1.SetFocus;

end;

procedure TfrmSelectOrgao.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
   SetColGrid(AColumn.Index);
end;

procedure TfrmSelectOrgao.GridTable1DBTableView1DblClick(Sender: TObject);
begin
   btnOk.Click;
end;

Procedure TfrmSelectOrgao.SetColGrid(iCol: integer);
Var
   iConta: Integer;
begin
   cdsOrgao.IndexFieldNames := GridTable1DBTableView1.
      Columns[iCol].DataBinding.FieldName;
   for iConta := 0 to GridTable1DBTableView1.ColumnCount - 1  do
       GridTable1DBTableView1.Columns[iConta].Styles.Header := nil;
   GridTable1DBTableView1.Columns[iCol].Styles.Header := dmPrincipal.cxStyle20;
end;

procedure TfrmSelectOrgao.ExibeRegisto(sTexto: string);
begin
   cdsOrgao.DisableControls;
   cdsOrgao.Filtered := False;
   cdsOrgao.First;
   while not cdsOrgao.eof do
   begin
      cdsOrgao.Edit;
      if Trim(sTexto) = EmptyStr then
         cdsOrgaoEXIBE.Value := 'S'
      else
         cdsOrgaoEXIBE.Value := iIf(Pos(sTexto,cdsOrgaoNOME.Value)>0,'S','N');
      cdsOrgao.Post;
      cdsOrgao.Next;
   end;
   cdsOrgao.Filtered := True;
   cdsOrgao.First;
   cdsOrgao.EnableControls;
end;

end.
