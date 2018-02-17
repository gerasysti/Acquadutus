unit HistoricoCorteReligacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxStyles, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, FMTBcd,
  DBClient, Provider, SqlExpr, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  StdCtrls, cxButtons, ExtCtrls, cxContainer, Buttons, cxTextEdit, cxMaskEdit,
  cxLabel, fmeUnidConsumidora, cxCurrencyEdit, frxClass, frxDBSet, frxExportXML,
  frxExportRTF, frxExportPDF, StrUtils, Mask, DBCtrls;

type
  TfrmHistCorteRelig = class(TfrmPadrao1)
    Panel1: TPanel;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1Column7: TcxGridDBColumn;
    GridTableDBTableView1Column8: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    qryHistCorteRelig: TSQLQuery;
    provHistCorteRelig: TDataSetProvider;
    cdsHistCorteRelig: TClientDataSet;
    dsHistCorteRelig: TDataSource;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableDBTableView1Column2: TcxGridDBColumn;
    BitBtn5: TBitBtn;
    cdsHistCorteReligID: TIntegerField;
    cdsHistCorteReligTIPO_MOVIM: TStringField;
    cdsHistCorteReligDT_MOVIM: TDateField;
    cdsHistCorteReligID_UNID_CONSUM: TIntegerField;
    cdsHistCorteReligMOTIVO: TIntegerField;
    cdsHistCorteReligID_SERVID_EXECUT: TIntegerField;
    cdsHistCorteReligOBSERVACAO: TStringField;
    cdsHistCorteReligNOME_PESSOA: TStringField;
    cdsHistCorteReligDESCR_CATEGORIA: TStringField;
    cdsHistCorteReligCPF_CNPJ: TStringField;
    cdsHistCorteReligDESCR_TIPO_MOVIM: TStringField;
    cdsHistCorteReligANO_MES: TStringField;
    cdsHistCorteReligENDER_ID_LOGRAD: TIntegerField;
    cdsHistCorteReligENDER_DESCR_LOGRAD: TStringField;
    cdsHistCorteReligENDER_COMPLEMENTO: TStringField;
    cdsHistCorteReligENDER_NUM_LETRA: TStringField;
    cdsHistCorteReligENDER_ID_BAIRRO: TIntegerField;
    cdsHistCorteReligENDER_DESCR_BAIRRO: TStringField;
    cdsHistCorteReligENDER_ID_DISTRITO: TIntegerField;
    cdsHistCorteReligENDER_DESCR_DISTRITO: TStringField;
    cdsHistCorteReligENDER_DESCR_LOGRADOURO: TStringField;
    cdsHistCorteReligENDER_UC_NUM_LETRA: TStringField;
    cdsHistCorteReligENDER_COMPLEMENTO_1: TStringField;
    cdsHistCorteReligENDER_DESCR_BAIRRO_1: TStringField;
    cdsHistCorteReligENDER_DESCR_DISTRITO_1: TStringField;
    qryUC: TSQLQuery;
    dsUC: TDataSource;
    qryUCID: TIntegerField;
    qryUCID_PESSOA: TIntegerField;
    qryUCTIPO_PESSOA: TStringField;
    qryUCNUM_LIGACAO: TStringField;
    qryUCDT_LIGACAO: TDateField;
    qryUCSITUACAO: TStringField;
    qryUCENDER_ID_LOGRAD: TIntegerField;
    qryUCENDER_NUM: TIntegerField;
    qryUCENDER_NUM_LETRA: TStringField;
    qryUCENDER_COMPLEMENTO: TStringField;
    qryUCENDER_ID_BAIRRO: TIntegerField;
    qryUCENDER_ID_DISTRITO: TIntegerField;
    qryUCENDER_ID_LOGRAD2: TIntegerField;
    qryUCENDER_NUM2: TIntegerField;
    qryUCENDER_NUM_LETRA2: TStringField;
    qryUCENDER_COMPLEMENTO2: TStringField;
    qryUCENDER_ID_BAIRRO2: TIntegerField;
    qryUCENDER_ID_DISTRITO2: TIntegerField;
    qryUCTIPO_UNID_CONSUM: TStringField;
    qryUCFORMA_CALCULO: TStringField;
    qryUCNUM_HIDROMETRO: TStringField;
    qryUCDT_INSTAL_HIDROM: TDateField;
    qryUCQTD_TORNEIRA: TIntegerField;
    qryUCMULTIPLICADOR: TIntegerField;
    qryUCOBSERV_FATURA: TStringField;
    qryUCOBSERVACAO: TMemoField;
    qryUCENDER_DESCR_BAIRRO: TStringField;
    qryUCENDER_DESCR_LOGRADOURO: TStringField;
    qryUCENDER_DESCR_BAIRRO2: TStringField;
    qryUCENDER_DESCR_LOGRADOURO2: TStringField;
    qryUCNOME_PESSOA: TStringField;
    qryUCCPF_CNPJ: TStringField;
    qryUCCPF_CNPJ_FTDO: TStringField;
    qryUCDESCR_TIPO_PESSOA: TStringField;
    qryUCNOME_FANTASIA: TStringField;
    qryUCRG_NUM: TStringField;
    qryUCRG_ORGAO_EMISSOR: TStringField;
    qryUCRG_UF: TStringField;
    qryUCRG_DT_EMISSAO: TDateField;
    qryUCENDER_DESCR_DISTRITO: TStringField;
    qryUCENDER_DESCR_DISTRITO2: TStringField;
    qryUCENDER_DESCR_LOGRAD: TStringField;
    qryUCENDER_DESCR_LOGRAD2: TStringField;
    qryUCDESCR_FORMA_CALCULO: TStringField;
    qryUCDESCR_TIPO_UNID_CONSUM: TStringField;
    qryUCDESCR_SITUACAO: TStringField;
    qryUCENDER_UC_NUM_LETRA: TStringField;
    qryUCENDER_UC_NUM_LETRA2: TStringField;
    qryUCDT_ULT_CORTE: TDateField;
    qryUCDT_ULT_RELIG: TDateField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    edIdUC: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    pv_sPathRel : string;
    procedure HabilitaBotoes(lOpcao: Boolean);
  public
    { Public declarations }
    pb_iIdUnidConsum: Integer;
  end;

var
  frmHistCorteRelig: TfrmHistCorteRelig;

implementation

uses udmPrincipal, gsLib, DetalhaFatura, VarGlobais, udmRelDoctos;

{$R *.dfm}

procedure TfrmHistCorteRelig.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmHistCorteRelig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cdsHistCorteRelig.Close;
  qryUC.Close;
end;

procedure TfrmHistCorteRelig.FormShow(Sender: TObject);
Var
  iTam: Integer;
begin
  inherited;

  qryUC.Close;
  qryUC.Params[0].Value := pb_iIdUnidConsum;
  qryUC.Open;

  iTam := Length(qryUCID.AsString);
  edIdUC.Text := LeftStr(qryUCID.AsString,iTam-1)+'-'+RightStr(qryUCID.AsString,1);

  cdsHistCorteRelig.Close;
  qryHistCorteRelig.ParamByName('pIdUC').Value := pb_iIdUnidConsum;
  cdsHistCorteRelig.Open;

end;

procedure TfrmHistCorteRelig.HabilitaBotoes(lOpcao: Boolean);
begin
end;

end.
