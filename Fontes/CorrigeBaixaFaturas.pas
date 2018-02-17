unit CorrigeBaixaFaturas;

interface

uses
  Windows, Messages, SysUtils, StrUtils, Variants, Classes, Graphics, Controls,
  Forms, Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxTextEdit, cxMemo, FMTBcd, DB, SqlExpr,
  Buttons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, Provider,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DbClient,
  Grids, DBGrids, cxLabel, fmePeriodoDatas;

type
  TfrmCorrigeBaixa = class(TfrmPadrao1)
    Panel: TPanel;
    GroupBox1: TGroupBox;
    btnLimpar: TButton;
    btnFechar: TBitBtn;
    OpenDialog1: TOpenDialog;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Qry1: TSQLQuery;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    frmePeriodoDt1: TfrmePeriodoDt;
    cxLabel61: TcxLabel;
    btnRun: TBitBtn;
    cds1R_ID_UC: TIntegerField;
    cds1R_ANO_MES: TStringField;
    cds1R_MES_ANO_FTDO: TStringField;
    cds1R_DT_PAGTO: TDateField;
    cds1R_NOME: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnRunClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure ExecutaConsulta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorrigeBaixa: TfrmCorrigeBaixa;

implementation

uses udmPrincipal, gsLib, UtilsDb;

{$R *.dfm}

procedure TfrmCorrigeBaixa.btnLimparClick(Sender: TObject);
begin
   cds1.Close;
   frmePeriodoDt1.edDtIni.SetFocus;
end;

procedure TfrmCorrigeBaixa.btnRunClick(Sender: TObject);
Var
  iErro: Integer;
begin

  Screen.Cursor := crHourGlass;

  Panel.Caption := 'Aguarde, processando ...';
  Application.ProcessMessages;

  iErro := 0;
  cds1.Close;
  Qry1.ParamByName('pDtIni').Value := StrToDate(frmePeriodoDt1.edDtIni.Text);
  Qry1.ParamByName('pDtFim').Value := StrToDate(frmePeriodoDt1.edDtFim.Text);

  try
    cds1.Open;
  except
    iErro := 1;
  end;

  Panel.Caption := '';
  Application.ProcessMessages;

  Screen.Cursor := crDefault;

  if iErro = 0 then
  Begin
     Mensagem('Baixa do Período Corrigida com Sucesso ...','Aviso !!!',MB_OK+MB_ICONINFORMATION);
     DBGrid1.SetFocus;
  end else
  begin
     Mensagem('Ao Efetuar a Correção da Baixa do Período ...','E R R O !!!',MB_OK+MB_ICONERROR);
     frmePeriodoDt1.edDtIni.SetFocus;
  end;

end;

procedure TfrmCorrigeBaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  cds1.Close;
end;

procedure TfrmCorrigeBaixa.FormShow(Sender: TObject);
begin
  inherited;
  frmePeriodoDt1.edDtIni.SetFocus;
end;

procedure TfrmCorrigeBaixa.ExecutaConsulta;
begin
end;

end.
