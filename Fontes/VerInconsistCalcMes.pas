unit VerInconsistCalcMes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels, StrUtils,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, DB, cxDBData, cxCheckBox, Menus, FMTBcd, DBClient,
  Provider, SqlExpr, cxButtons, ExtCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  fmeUnidGestora_, StdCtrls, Buttons, cxTextEdit, cxLabel, cxGroupBox, Gauges,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  fmeMultiSubUnidOrcament;

type
  TfrmVerInconsistCalcMes = class(TfrmPadrao1)
    gb1: TcxGroupBox;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    btnAplicar: TBitBtn;
    Panel: TPanel;
    btnSair: TcxButton;
    sdsNada: TSQLDataSet;
    dspSUO: TDataSetProvider;
    cdsSUO: TClientDataSet;
    ds1: TDataSource;
    btnDetCalculo: TcxButton;
    fmeUnidGestora1: TfmeUnidGestora;
    qrySUO: TSQLQuery;
    btnLimpar: TBitBtn;
    frmeMultiSubUnidOrcam1: TfrmeMultiSubUnidOrcam;
    GridTable1: TcxGrid;
    GridTable1DBTableView1: TcxGridDBTableView;
    GridTable1DBTableView1Column7: TcxGridDBColumn;
    GridTable1DBTableView1Column8: TcxGridDBColumn;
    GridTable1DBTableView1Column4: TcxGridDBColumn;
    GridTable1DBTableView1Column1: TcxGridDBColumn;
    GridTable1DBTableView1Column2: TcxGridDBColumn;
    GridTable1Level1: TcxGridLevel;
    qryTotEventoMes: TSQLQuery;
    mTbDetSUO: TClientDataSet;
    mTbDetSUOId: TIntegerField;
    mTbDetSUODescricao: TStringField;
    mTbDetSUOQtdErros: TIntegerField;
    mTbDetSUOQtdAvisos: TIntegerField;
    mTbDetSUODetalhar: TStringField;
    mTbDetSUODifTotais: TStringField;
    GridTable1DBTableView1Column3: TcxGridDBColumn;
    qrySUOID_SUB_UNID_ORCAM: TIntegerField;
    qrySUOTOT_VENCTO: TFMTBCDField;
    qrySUOTOT_DESCTO: TFMTBCDField;
    qrySUOSAL_LIQUIDO: TFMTBCDField;
    qrySUODESCRICAO: TStringField;
    cdsSUOID_SUB_UNID_ORCAM: TIntegerField;
    cdsSUOTOT_VENCTO: TFMTBCDField;
    cdsSUOTOT_DESCTO: TFMTBCDField;
    cdsSUOSAL_LIQUIDO: TFMTBCDField;
    cdsSUODESCRICAO: TStringField;
    qryTotEventoMesTOTAL_ATIVOS: TFMTBCDField;
    qryTotEventoMesTOTAL_DEMITIDOS: TFMTBCDField;
    qryInconsist: TSQLQuery;
    provInconsist: TDataSetProvider;
    cdsInconsist: TClientDataSet;
    qryInconsistID: TIntegerField;
    qryInconsistTIPO_PROCESS: TStringField;
    qryInconsistID_SERVIDOR: TIntegerField;
    qryInconsistREFERENCIA: TStringField;
    qryInconsistTIPO_INCONSIST: TStringField;
    qryInconsistID_SUB_UNID_ORCAM: TIntegerField;
    qryInconsistDESCRICAO: TStringField;
    qryInconsistDESCR_TIPO_INCONSIST: TStringField;
    cdsInconsistID: TIntegerField;
    cdsInconsistTIPO_PROCESS: TStringField;
    cdsInconsistID_SERVIDOR: TIntegerField;
    cdsInconsistREFERENCIA: TStringField;
    cdsInconsistTIPO_INCONSIST: TStringField;
    cdsInconsistID_SUB_UNID_ORCAM: TIntegerField;
    cdsInconsistDESCRICAO: TStringField;
    cdsInconsistDESCR_TIPO_INCONSIST: TStringField;
    qryDelInconsist: TSQLQuery;
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edSubUnidOrcamsKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure GridTable1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDetCalculoClick(Sender: TObject);
    procedure fmeUnidGestora1edIdExit(Sender: TObject);
    procedure frmeMultiSubUnidOrcam1sbS_U_OsClick(Sender: TObject);
    procedure cdsInconsistAfterInsert(DataSet: TDataSet);
  private
    procedure HabilitaBotoes(lOpcao1, lOpcao2: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVerInconsistCalcMes: TfrmVerInconsistCalcMes;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, SelectMultiSubUnidOrcam,
  udmRelOutros;

{$R *.dfm}

procedure TfrmVerInconsistCalcMes.btnAplicarClick(Sender: TObject);
Var
  sCCsTemp: WideString;
  iIdSUOTemp: integer;
  sDescrSUOTemp: string;
  iTemp,
  iTemp2: integer;
  iQtdErros,
  iQtdAvisos: Integer;
  sMultiSUODifTot: String;
begin

  Panel.Caption := ' Aguarde, Verificando ...';
  Application.ProcessMessages;

  sCCsTemp := AjustaTextoParamVarios(frmeMultiSubUnidOrcam1.edS_U_Os.Text);

  Screen.Cursor := crHourGlass;

  if mTbDetSUO.Active then
  begin
     mTbDetSUO.EmptyDataSet;
     mTbDetSUO.Close;
  end;
  mTbDetSUO.Open;

  cdsSUO.Close;
  qrySUO.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
  qrySUO.ParamByName('pParcela').Value := glb_sParcela;
  qrySUO.ParamByName('pMultiSUO').Value := sCCsTemp;
  cdsSUO.Open;
  cdsSUO.IndexFieldNames := 'ID_SUB_UNID_ORCAM';
  cdsSUO.First;
  sMultiSUODifTot := ';';

  while not cdsSUO.eof do
  begin
     iIdSUOTemp := cdsSUOID_SUB_UNID_ORCAM.Value;
     qryDelInconsist.Close;
     qryDelInconsist.ParamByName('pRef').Value := glb_sAnoMesTrab+' '+glb_sParcela;
     qryDelInconsist.ParamByName('pSUO').Value := iIdSUOTemp;
     try
        qryDelInconsist.ExecSQL();
     except
        Mensagem('Não foi possível limpar as inconsistências existentes ...',
            'Erro !!!',MB_OK+MB_ICONERROR);
     end;
     cdsInconsist.Close;
     qryInconsist.ParamByName('pRef').Value := glb_sAnoMesTrab+' '+glb_sParcela;
     qryInconsist.ParamByName('pMultiSUO').Value := sCCsTemp;
     cdsInconsist.Open;
     qryTotEventoMes.Close;
     qryTotEventoMes.ParamByName('pAnoMes').Value := glb_sAnoMesTrab;
     qryTotEventoMes.ParamByName('pParcela').Value:= glb_sParcela;
     qryTotEventoMes.ParamByName('pSUO').Value    := iIdSUOTemp;
     qryTotEventoMes.ParamByName('pTipo').Value   := 'V';
     qryTotEventoMes.Open;
     if cdsSUOTOT_VENCTO.AsCurrency <>
        qryTotEventoMesTOTAL_ATIVOS.AsCurrency then
     begin
        cdsInconsist.Insert;
        cdsInconsistTIPO_PROCESS.Value  := '1';
        cdsInconsistREFERENCIA.Value    := glb_sAnoMesTrab+' '+glb_sParcela;
        cdsInconsistTIPO_INCONSIST.Value:= '1';
        cdsInconsistID_SUB_UNID_ORCAM.Value := iIdSUOTemp;
        cdsInconsistDESCRICAO.Value     := 'Total de Vencimentos do Resumo '+
           'é Diferente da Folha ...';
        SalvaTransacao(cdsInconsist);
        sMultiSUODifTot := sMultiSUODifTot + IntToStr(iIdSUOTemp) + ';';
     end;
     cdsSUO.Next;
  end;
  cdsInconsist.IndexFieldNames := 'ID_SUB_UNID_ORCAM';
  cdsInconsist.First;
  cdsInconsist.Close;
  cdsInconsist.Open;
  while not cdsInconsist.eof do
  begin
     iQtdErros := 0;
     iQtdAvisos:= 0;
     iIdSUOTemp := cdsInconsistID_SUB_UNID_ORCAM.Value;
     while (not cdsInconsist.eof) and
           (cdsInconsistID_SUB_UNID_ORCAM.Value = iIdSUOTemp) do
     begin
        if cdsInconsistTIPO_INCONSIST.Value = '1' then
           Inc(iQtdErros)
        else
           Inc(iQtdAvisos);
        cdsInconsist.Next;
     end;
     mTbDetSUO.Insert;
     mTbDetSUOId.Value := iIdSUOTemp;
     mTbDetSUODescricao.Value := Pesquisa('SUB_UNID_ORCAMENT','ID',
        IntToStr(iIdSUOTemp),'DESCRICAO','');
     mTbDetSUOQtdErros.Value := iQtdErros;
     mTbDetSUOQtdAvisos.Value := iQtdAvisos;
     if Pos(';'+IntToStr(iIdSUOTemp)+';',sMultiSUODifTot) > 0 then
        mTbDetSUODifTotais.Value := 'S'
     else
        mTbDetSUODifTotais.Value := 'N';
     if (iQtdErros > 0) or (iQtdAvisos > 0) then
        mTbDetSUODetalhar.Value := 'S'
     else
        mTbDetSUODetalhar.Value := 'N';
     mTbDetSUO.Post;
  end;

  if mTbDetSUO.RecordCount = 0 then
  begin
     mTbDetSUO.Insert;
     mTbDetSUODescricao.Value:= 'NENHUMA INCONSISTÊNCIA NAS SUB-UNID. PESQUISADAS ...';
     mTbDetSUOQtdErros.Value := 0;
     mTbDetSUOQtdAvisos.Value:= 0;
     mTbDetSUODifTotais.Value:= 'N';
     mTbDetSUODetalhar.Value := 'N';
  end;

  Screen.Cursor := crDefault;

  btnDetCalculo.Enabled := (mTbDetSUO.RecordCount > 0);

  mTbDetSUO.IndexFieldNames:= 'Id';
  GridTable1DBTableView1ColumnHeaderClick(GridTable1DBTableView1,
     GridTable1DBTableView1.Columns[0]);
  mTbDetSUO.First;

  GridTable1.SetFocus;
  qryTotEventoMes.Close;
  cdsSUO.Close;
  cdsInconsist.Close;

  Mensagem('Fim de Processo ...','Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
  Panel.Caption := '';
  Application.ProcessMessages;
  btnLimpar.Enabled := True;

end;

procedure TfrmVerInconsistCalcMes.btnDetCalculoClick(Sender: TObject);
Var
  sMultiSUO: string;
begin
  sMultiSUO := ';';
  mTbDetSUO.First;
  while not mTbDetSUO.eof do
  begin
     if mTbDetSUODetalhar.Value = 'S' then
        sMultiSUO := sMultiSUO + mTbDetSUOId.AsString + ';';
     mTbDetSUO.Next;
  end;
  dmRelOutros := TdmRelOutros.Create(Self);
  dmRelOutros.RelInconsistencias(glb_sAnoMesTrab+' '+glb_sParcela,'1',sMultiSUO,
     1,9999999,True);
  FreeAndNil(dmRelOutros);
end;

procedure TfrmVerInconsistCalcMes.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmVerInconsistCalcMes.cdsInconsistAfterInsert(DataSet: TDataSet);
begin
   cdsInconsistID.AsString := ProximoNumero('INCONSIST_PROCESS','ID',False,9);
end;

procedure TfrmVerInconsistCalcMes.btnLimparClick(Sender: TObject);
begin
  HabilitaBotoes(True,False);
  cdsSUO.Close;
  mTbDetSUO.Close;
  qryTotEventoMes.Close;
  cdsInconsist.Close;
  frmeMultiSubUnidOrcam1.edS_U_Os.Text := '';
  fmeUnidGestora1.edId.Text:= '';
  fmeUnidGestora1.edId.SetFocus;
end;

procedure TfrmVerInconsistCalcMes.edSubUnidOrcamsKeyPress(Sender: TObject; var Key: Char);
begin
  if Key in ['0' .. '9', ';', #8] then exit else Key := #0;
end;

procedure TfrmVerInconsistCalcMes.fmeUnidGestora1edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora1.edIdExit(Sender);
  frmeMultiSubUnidOrcam1.pb_sId_Unid_Gestora := Trim(fmeUnidGestora1.edId.Text);
end;

procedure TfrmVerInconsistCalcMes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsSUO.Close;
  mTbDetSUO.Close;
  qryTotEventoMes.Close;
  cdsInconsist.Close;
end;

procedure TfrmVerInconsistCalcMes.FormCreate(Sender: TObject);
begin
 inherited;
 mTbDetSUO.CreateDataSet;
 Position := poMainFormCenter;
 Application.ProcessMessages;
 Caption := 'VERFICIAR INCONSISTÊNCIAS DO CÁLCULO DO MÊS ...';
 frmSelectMultiSubUnidOrcam := TfrmSelectMultiSubUnidOrcam.Create(Self);
end;

procedure TfrmVerInconsistCalcMes.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(frmSelectMultiSubUnidOrcam);
end;

procedure TfrmVerInconsistCalcMes.FormShow(Sender: TObject);
begin
  inherited;
  HabilitaBotoes(True,False);
  fmeUnidGestora1.edId.SetFocus;
end;

procedure TfrmVerInconsistCalcMes.frmeMultiSubUnidOrcam1sbS_U_OsClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiSubUnidOrcam1.sbS_U_OsClick(Sender);
end;

procedure TfrmVerInconsistCalcMes.GridTable1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  mTbDetSUO.IndexFieldNames := GridTable1DBTableView1.
     Columns[AColumn.Index].DataBinding.FieldName;
end;

procedure TfrmVerInconsistCalcMes.HabilitaBotoes(lOpcao1,lOpcao2: Boolean);
begin
   fmeUnidGestora1.edId.Enabled         := lOpcao1;
   fmeUnidGestora1.sbUnidGestora.Enabled:= lOpcao1;
   btnAplicar.Enabled                   := lOpcao1;
   btnLimpar.Enabled                    := lOpcao2;
   btnDetCalculo.Enabled                := lOpcao2;
end;

end.
