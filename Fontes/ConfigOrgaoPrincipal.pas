unit ConfigOrgaoPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  frxClass, StdCtrls, FMTBcd, DB, SqlExpr, Provider, DBClient, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, cxLabel, cxMaskEdit, cxDropDownEdit,
  cxTextEdit, cxDBEdit, Buttons, Math, DBTables;

type
  TfrmPrincipal = class(TForm)
    cdsConfig: TClientDataSet;
    prov1: TDataSetProvider;
    qryConfig: TSQLQuery;
    edNomeRazaoSoc: TcxDBTextEdit;
    edSigla: TcxDBTextEdit;
    DataSource1: TDataSource;
    edCNPJ: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    qryConfigID: TIntegerField;
    qryConfigRAZAO_SOCIAL: TStringField;
    qryConfigSIGLA: TStringField;
    qryConfigCNPJ: TStringField;
    qryConfigENDER_ID_LOGRAD: TIntegerField;
    qryConfigENDER_LOGRAD_NUM: TStringField;
    qryConfigENDER_ID_BAIRRO: TIntegerField;
    qryConfigENDER_CIDADE: TStringField;
    qryConfigENDER_CEP: TStringField;
    qryConfigENDER_UF: TStringField;
    qryConfigLOGOMARCA: TBlobField;
    qryConfigTELEFONES: TStringField;
    qryConfigE_MAIL: TStringField;
    cdsConfigID: TIntegerField;
    cdsConfigRAZAO_SOCIAL: TStringField;
    cdsConfigSIGLA: TStringField;
    cdsConfigCNPJ: TStringField;
    cdsConfigENDER_ID_LOGRAD: TIntegerField;
    cdsConfigENDER_LOGRAD_NUM: TStringField;
    cdsConfigENDER_ID_BAIRRO: TIntegerField;
    cdsConfigENDER_CIDADE: TStringField;
    cdsConfigENDER_CEP: TStringField;
    cdsConfigENDER_UF: TStringField;
    cdsConfigLOGOMARCA: TBlobField;
    cdsConfigTELEFONES: TStringField;
    cdsConfigE_MAIL: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses udmPrincipal, gsLib;

{$R *.DFM}

var
  ar: array[0..9] of Integer = (0,1,2,3,4,5,6,7,8,9);

procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TfrmPrincipal.btnSalvarClick(Sender: TObject);
begin
   cdsConfigRAZAO_SOCIAL.Value := Criptografa(cdsConfigRAZAO_SOCIAL.Value,'1',60);
   cdsConfigSIGLA.Value        := Criptografa(cdsConfigSIGLA.Value,'1',10);
   cdsConfigCNPJ.Value         := Criptografa(cdsConfigCNPJ.Value,'1',14);
   cdsConfig.Post;
   cdsConfig.ApplyUpdates(0);
   cdsConfig.Close;

   Close;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if cdsConfig.State = dsEdit then
  begin
     cdsConfig.Cancel;
     cdsConfig.Close;
  end;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  cdsConfig.Close;
  cdsConfig.Open;
  cdsConfig.Edit;
  edNomeRazaoSoc.SetFocus;
end;

end.
