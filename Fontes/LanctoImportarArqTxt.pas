unit LanctoImportarArqTxt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, Servidor_frme, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxGroupBox,
  StdCtrls, Buttons, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxDBEdit, FMTBcd,
  SqlExpr, Provider, DBClient, Menus, cxRadioGroup, Evento_frme, cxCalendar,
  fmeEvento, cxDropDownEdit, ComCtrls, cxPC, cxMemo, StrUtils, ExtCtrls,
  cxCurrencyEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  fmeEntidadeFinanceira, cxLabel, frxClass, ShellApi, frxDBSet, cxButtons;

type
  TfrmLanctoImportar = class(TfrmPadrao1)
    dsServidor: TDataSource;
    cdsConfigOrgao: TClientDataSet;
    provConfigOrgao: TDataSetProvider;
    sdsConfigOrgao: TSQLDataSet;
    gbEvento: TcxGroupBox;
    Label3: TLabel;
    btnOk: TBitBtn;
    Label1: TLabel;
    edNomeArquivo: TcxTextEdit;
    sbFindArqTxt: TSpeedButton;
    pcImport: TcxPageControl;
    tsImport: TcxTabSheet;
    tsMsg: TcxTabSheet;
    dbgServidores: TcxGrid;
    GridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    GridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    GridDBTableView1Column1: TcxGridDBColumn;
    GridLevel1: TcxGridLevel;
    dspServidor: TDataSetProvider;
    cdsServidor: TClientDataSet;
    Label2: TLabel;
    edTotRegArquivo: TcxCurrencyEdit;
    Label4: TLabel;
    edTotRegImport: TcxCurrencyEdit;
    edTotalImport: TcxCurrencyEdit;
    Label5: TLabel;
    mTbServidor: TClientDataSet;
    mTbServidorID: TIntegerField;
    mTbServidorNOME: TStringField;
    mTbServidorCPF_PIS_PASEP: TStringField;
    mTbServidorDT_ADMISSAO: TDateField;
    mTbServidorDESCR_CARGO: TStringField;
    mTbServidorRUBRICA: TStringField;
    mTbServidorVALOR: TCurrencyField;
    mTbServidorOBSERVACAO: TStringField;
    mTbServidorID_EVENTO: TIntegerField;
    Panel1: TPanel;
    lblTitColPesquisa: TLabel;
    edPesquisa: TcxTextEdit;
    btnLimpar: TButton;
    btnFechar: TBitBtn;
    frmeEntidFinanc1: TfrmeEntidFinanc;
    qryEntidFinancEvento: TSQLQuery;
    qryEntidFinancEventoID_EVENTO1: TIntegerField;
    qryEntidFinancEventoID_EVENTO2: TIntegerField;
    qryEntidFinancEventoID_EVENTO3: TIntegerField;
    dsEntidFinancEvento: TDataSource;
    lblPadrao: TcxLabel;
    qryEntidFinancEventoCOD_EVENTO1: TStringField;
    qryEntidFinancEventoCOD_EVENTO2: TStringField;
    qryEntidFinancEventoCOD_EVENTO3: TStringField;
    edEvento1: TcxTextEdit;
    cxLabel1: TcxLabel;
    edEvento2: TcxTextEdit;
    cxLabel2: TcxLabel;
    edEvento3: TcxTextEdit;
    sbEventos: TSpeedButton;
    OpenDialog1: TOpenDialog;
    qryEntidFinancEventoTIPO_LAY_OUT: TIntegerField;
    memLog: TMemo;
    qryServidor: TSQLQuery;
    spSalvaEvento: TSQLStoredProc;
    frxReport1: TfrxReport;
    SaveDialog1: TSaveDialog;
    mTbLog: TClientDataSet;
    mTbLoglinha: TWideStringField;
    frxLog: TfrxDBDataset;
    mTbLogid: TIntegerField;
    mTbServidorID_SUB_UNID_ORCAM: TIntegerField;
    mTbServidorDESCR_SUB_UNID_ORCAM: TStringField;
    frxServidor: TfrxDBDataset;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoBRASAO: TBlobField;
    cdsConfigOrgaoLOGO_ADMIN: TBlobField;
    frxConfigOrgao: TfrxDBDataset;
    cdsConfigOrgaonome_sys: TStringField;
    cdsConfigOrgaotit_rel1: TStringField;
    cdsConfigOrgaotit_rel2: TStringField;
    mTbServidorid_servid_ftdo: TStringField;
    mTbServidorcpf_ftdo: TStringField;
    btnGravar: TcxButton;
    btnImprimir: TBitBtn;
    qryServidorID_SERVIDOR: TIntegerField;
    qryServidorNOME_SERVIDOR: TStringField;
    qryServidorDT_ADMISSAO: TDateField;
    qryServidorDESCR_CARGO: TStringField;
    qryServidorCPF_PF: TStringField;
    cdsServidorID_SERVIDOR: TIntegerField;
    cdsServidorNOME_SERVIDOR: TStringField;
    cdsServidorDT_ADMISSAO: TDateField;
    cdsServidorDESCR_CARGO: TStringField;
    cdsServidorCPF_PF: TStringField;
    qryServidorID_SUB_UNID_ORCAMENT: TIntegerField;
    qryServidorDESCR_SUB_UNID_ORCAM2: TStringField;
    cdsServidorID_SUB_UNID_ORCAMENT: TIntegerField;
    cdsServidorDESCR_SUB_UNID_ORCAM2: TStringField;
    qryAbonoPASEP: TSQLQuery;
    provAbonoPASEP: TDataSetProvider;
    cdsAbonoPASEP: TClientDataSet;
    cdsAbonoPASEPID: TIntegerField;
    cdsAbonoPASEPNOME_SERVIDOR: TStringField;
    cdsAbonoPASEPDT_ADMISSAO: TDateField;
    cdsAbonoPASEPDT_READMISSAO: TDateField;
    cdsAbonoPASEPDESCR_CARGO_ATUAL: TStringField;
    cdsAbonoPASEPDESCR_EST_FUNCIONAL: TStringField;
    cdsAbonoPASEPSTATUS: TStringField;
    qryAbonoPASEPID: TIntegerField;
    qryAbonoPASEPNOME_SERVIDOR: TStringField;
    qryAbonoPASEPDT_ADMISSAO: TDateField;
    qryAbonoPASEPDT_READMISSAO: TDateField;
    qryAbonoPASEPDESCR_CARGO_ATUAL: TStringField;
    qryAbonoPASEPID_SUB_UNID_ORCAMENT: TIntegerField;
    qryAbonoPASEPDESCR_EST_FUNCIONAL: TStringField;
    qryAbonoPASEPSTATUS: TStringField;
    cdsAbonoPASEPID_SUB_UNID_ORCAMENT: TIntegerField;
    qrySalvaAbonoPASEP: TSQLQuery;
    qryAbonoPASEPDESCR_SUB_UNID_ORCAM2: TStringField;
    cdsAbonoPASEPDESCR_SUB_UNID_ORCAM2: TStringField;
    qrySalvaAbonoPASEPANO_MES: TStringField;
    qrySalvaAbonoPASEPPARCELA: TStringField;
    qrySalvaAbonoPASEPID_SERVIDOR: TIntegerField;
    qrySalvaAbonoPASEPTOT_VENCTO: TFMTBCDField;
    qrySalvaAbonoPASEPSAL_LIQUIDO: TFMTBCDField;
    provSalvaAbonoPASEP: TDataSetProvider;
    cdsSalvaAbonoPASEP: TClientDataSet;
    cdsSalvaAbonoPASEPANO_MES: TStringField;
    cdsSalvaAbonoPASEPPARCELA: TStringField;
    cdsSalvaAbonoPASEPID_SERVIDOR: TIntegerField;
    cdsSalvaAbonoPASEPTOT_VENCTO: TFMTBCDField;
    cdsSalvaAbonoPASEPSAL_LIQUIDO: TFMTBCDField;
    chkSomenteParaAtivos: TcxCheckBox;
    mTbServidorSalvar: TStringField;
    GridDBTableView1Column3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure cdsLanctoEventoCalcFields(DataSet: TDataSet);
    procedure edPesquisaPropertiesChange(Sender: TObject);
    procedure GridDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmeEntidFinanc1edIdExit(Sender: TObject);
    procedure sbFindArqTxtClick(Sender: TObject);
    procedure edNomeArquivoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sbEventosClick(Sender: TObject);
    procedure btnSalvaLanctoClick(Sender: TObject);
    procedure frmeEntidFinanc1sbEventoClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure frmeEntidFinanc1edIdPropertiesChange(Sender: TObject);
    procedure GridDBTableView1DblClick(Sender: TObject);
    procedure GridDBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    pv_sIdentArquivoValido: string[12];
    pv_sCNPJ_Orgao        : String[14];
    pv_lImportSaved       : Boolean;
    pv_iQtRegD            : Integer;
    pv_sPathRel           : WideString;
    Procedure ImportASPEB;
    procedure ImportEmprestConsigBB;
    procedure ImportEmprestConsigBMC;
    Procedure ImprtOutros;
    Function QtLanMesFuncionario(sMatric: String): Integer;
    Function ValidaArquivo: Boolean;
    Procedure HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
    Procedure VerServidor(sCPF: string);
    procedure ExecutePrograma(Nome, Parametros: String);
    procedure SetColGrid(iCol: Integer);
    procedure ImportAbonoPASEP;
  public
    { Public declarations }
  end;

var
  frmLanctoImportar: TfrmLanctoImportar;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AddEditLanEventoFixo,
     AddEditLanEventoMensal, AddEditEntidFinanc, TabEntidFinanceira,
  udmCalcFolhaMes;

{$R *.dfm}

procedure TfrmLanctoImportar.btnSalvaLanctoClick(Sender: TObject);
Var
  iPosTemp: Integer;
begin

  Screen.Cursor := crHourGlass;

  Panel1.Caption := ' Aguarde, salvando ...';
  Application.ProcessMessages;

  if qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 then
     dmCalcFolhaMes := TdmCalcFolhaMes.Create(Self);

  mTbServidor.First;
  while not mTbServidor.eof do
  begin

     if (mTbServidorRUBRICA.Value = '0') or
        (mTbServidorVALOR.Value <= 0) or
        (mTbServidorSalvar.Value <> 'S') then
     begin
        mTbServidor.Next;
        Continue;
     end;

     if qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 then
     begin
        dmCalcFolhaMes.InicializaMesServidor('1',mTbServidorID.AsString,
           glb_sAnoMesTrab,'0');
        cdsSalvaAbonoPASEP.Close;
        qrySalvaAbonoPASEP.ParamByName('pServidor').Value :=
           mTbServidorID.Value;
        qrySalvaAbonoPASEP.ParamByName('pAnoMes').Value :=
           glb_sAnoMesTrab;
        cdsSalvaAbonoPASEP.Open;
        cdsSalvaAbonoPASEP.edit;
        cdsSalvaAbonoPASEPANO_MES.Value := glb_sAnoMesTrab;
        cdsSalvaAbonoPASEPPARCELA.Value := '0';
        cdsSalvaAbonoPASEPID_SERVIDOR.Value := mTbServidorID.Value;
        cdsSalvaAbonoPASEPTOT_VENCTO.AsCurrency := mTbServidorVALOR.Value;
        cdsSalvaAbonoPASEPSAL_LIQUIDO.AsCurrency:= mTbServidorVALOR.Value;
        SalvaTransacao(cdsSalvaAbonoPASEP);
     end else
     begin
        if qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 then
           iPosTemp := Pos('(',mTbServidorRUBRICA.Value)-2
        else
           iPosTemp := 0;
        spSalvaEvento.Close;
        spSalvaEvento.ParamByName('pe_id_servidor').Value:= mTbServidorID.Value;
        spSalvaEvento.ParamByName('pe_ano_mes').Value:= glb_sAnoMesTrab;
        spSalvaEvento.ParamByName('pe_parcela').Value:= glb_sParcela;
        if iPosTemp = 0 then
           spSalvaEvento.ParamByName('pe_id_evento').Value :=
              mTbServidorRUBRICA.AsInteger
        else
           spSalvaEvento.ParamByName('pe_id_evento').AsString :=
              LeftStr(mTbServidorRUBRICA.Value,iPosTemp);
        spSalvaEvento.ParamByName('pe_qtd').Value:= 1;
        spSalvaEvento.ParamByName('pe_valor').AsCurrency:= mTbServidorVALOR.Value;
        spSalvaEvento.ParamByName('pe_observ').Value:= mTbServidorOBSERVACAO.Value;
        try
           try
              spSalvaEvento.ExecProc;
           except
              Mensagem('Não foi possível Salvar o Lançamento do Servidor '+
                 mTbServidorID.AsString+' - '+mTbServidorNOME.Value,
                 'E R R O !!!',
                 MB_OK+-MB_ICONERROR);
              break;
           end;
        finally
           spSalvaEvento.Close;
        end;

     end;

     mTbServidor.Next;

  end;

  if qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 then
     FreeAndNil(dmCalcFolhaMes);

  Mensagem('Fim do Processo de Gravação dos Lançamentos ...',
           'Aviso !!!',
           MB_OK+MB_ICONEXCLAMATION);

  Panel1.Caption := '';
  Application.ProcessMessages;

  btnGravar.Enabled := False;
  Screen.Cursor := crDefault;

end;

procedure TfrmLanctoImportar.btnImprimirClick(Sender: TObject);
var
  iConta: Integer;
begin
  if pcImport.ActivePageIndex = 1 then
  begin
     mTbLog.EmptyDataSet;
     for iConta := 0 to memLog.Lines.Count - 1 do
     begin
        mTbLog.Insert;
        mTbLogid.Value := iConta;
        mTbLoglinha.Value := memLog.Lines[iConta];
        mTbLog.Post;
     end;
     mTbLog.IndexFieldNames := 'id';
     mTbLog.First;
     frxReport1.LoadFromFile(pv_sPathRel+'Log1.fr3');
     frxReport1.ShowReport();
  end else
  begin
     cdsConfigOrgao.Edit;
     cdsConfigOrgaotit_rel1.Value := 'SERVIDORES IMPORTADOS DO ARQUIVO: '+
        edNomeArquivo.Text;
     cdsConfigOrgaotit_rel2.Value := frmeEntidFinanc1.edDescricao.Text;
     cdsConfigOrgao.Post;
     mTbServidor.First;
     frxReport1.LoadFromFile(pv_sPathRel+'ImportEvento1.fr3');
     frxReport1.ShowReport();
  end;
end;

procedure TfrmLanctoImportar.btnLimparClick(Sender: TObject);
begin
  memLog.Lines.Clear;
  cdsServidor.Close;
  mTbServidor.Close;
  frmeEntidFinanc1.edId.Text := '';
  edNomeArquivo.Text := '';
  HabilitaBotoes(True,False);
  frmeEntidFinanc1.edId.SetFocus;
end;

procedure TfrmLanctoImportar.btnOkClick(Sender: TObject);
begin

  // O arquivo será lido pelo Tipo de Lay-out que segue esse padrão, se precisar
  // será acescentado um novo lay-out ...

  Panel1.Caption := ' Aguarde, importando ...';
  memLog.Lines.Clear;

  Application.ProcessMessages;

  cdsServidor.IndexFieldNames := 'CPF_PF';
  cdsServidor.Close;
  qryServidor.Params[0].Value := glb_sAnoMesTrab;
  cdsServidor.Open;

  mTbServidorCPF_PIS_PASEP.EditMask := '999.999.999-99';
  mTbServidor.Close;
  mTbServidor.Open;

  HabilitaBotoes(False,True);

  If qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 Then   // Aspeb Seguros
  Begin
     If Empty(qryEntidFinancEventoID_EVENTO1.AsString) Or
        Empty(qryEntidFinancEventoID_EVENTO2.AsString) Then
     Begin
        Mensagem('Falta Configuar os Códigos dos Eventos ASPEB ...',
           'E r r o !!!',
           MB_OK+MB_ICONERROR);
        Exit;
     End;
     cxGridDBColumn5.Caption := 'Rubrica';
     ImportASPEB;
  End Else
  If qryEntidFinancEventoTIPO_LAY_OUT.Value = 2 Then   // Banco do Brasil
  Begin
     If Empty(qryEntidFinancEventoID_EVENTO1.AsString) Or
        Empty(qryEntidFinancEventoID_EVENTO2.AsString) Then Exit;
     If Empty(qryEntidFinancEventoID_EVENTO3.AsString) Then
        If Not Confirma('O Código do Terceiro Evento de Empréstimo Consginado do Banco do Brasil'+
                        #13+'não está configurado, caso tenha Servidores c/ 3(três) empréstimos'+
                        #13+'vc precisa configurá-lo. Deseja Continuar assim mesmo ?') Then Exit;
     ImportEmprestConsigBB;
  End Else
  If qryEntidFinancEventoTIPO_LAY_OUT.Value = 3 Then  // BMG (BMC)
  Begin
     {
     If Empty(edCodEmprestBMC1.Text) Or
        Empty(edCodEmprestBMC2.Text) Then Exit;
     If Empty(edCodEmprestBMC3.Text) Then
        If Not Confirma('O Código do Terceiro Evento de Empréstimo Consginado do B.M.C.'+
                        #13+'não está configurado, caso tenha Servidores c/ 3(três) empréstimos'+
                        #13+'vc precisa configuralo. Deseja Continuar assim mesmo ?') Then Exit;
     dbg1.Columns[3].Title.Caption:= 'Parcela';
     }
     ImportEmprestConsigBMC;
  End Else
  If qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 Then // Abono do PASEP
  Begin
     ImportAbonoPASEP;
  End Else
  If qryEntidFinancEventoTIPO_LAY_OUT.Value = 99 Then // Outos (Supermercado / Farmácia etc)
  Begin
     {
     If Empty(edCodSupermFarmac.Text) Then
     Begin
        Mensagem('Falta Configurar o Código do Evento de Supermercado/Farmácias etc ...','Aviso !!!');
        Exit;
     End;
     }
     ImprtOutros;
  End;

  GridDBTableView1ColumnHeaderClick(GridDBTableView1,cxGridDBColumn2);

  Panel1.Caption := '';
  Application.ProcessMessages;

end;

procedure TfrmLanctoImportar.cdsLanctoEventoCalcFields(DataSet: TDataSet);
begin
{
   DataSet.FieldByName('DtAdmissao2').AsString :=
      DataAdmissao(DataSet.FieldByName('Dt_Admissao').AsString,
                   DataSet.FieldByName('Dt_Readmissao').AsString);
}
end;

procedure TfrmLanctoImportar.GridDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
Var
   iConta: Integer;
begin
   SetColGrid(AColumn.Index);
   for iConta := 0 to TcxGridTableView(Sender).ColumnCount - 1  do
       TcxGridTableView(Sender).Columns[iConta].Styles.Header := nil;
   AColumn.Styles.Header := dmPrincipal.cxStyle20;
end;

procedure TfrmLanctoImportar.GridDBTableView1DblClick(Sender: TObject);
begin
  if (not mTbServidor.Active) or (mTbServidor.RecordCount = 0) then exit;
  mTbServidor.Edit;
  if mTbServidorSalvar.Value = 'N' then
     mTbServidorSalvar.Value := 'S'
  else
     mTbServidorSalvar.Value := 'N';
  mTbServidor.Post;
end;

procedure TfrmLanctoImportar.GridDBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_SPACE then GridDBTableView1DblClick(GridDBTableView1);
end;

procedure TfrmLanctoImportar.edNomeArquivoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sbFindArqTxt.Click;
end;

procedure TfrmLanctoImportar.edPesquisaPropertiesChange(Sender: TObject);
begin
  if (not mTbServidor.Active) or (mTbServidor.RecordCount = 0) then exit;
  PesquisaIncremental(TcxTextEdit(Sender).Text,mTbServidor);
end;

procedure TfrmLanctoImportar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsConfigOrgao.Close;
  cdsServidor.Close;
  mTbServidor.Close;
  mTbLog.Close;
  qryServidor.Close;
end;

procedure TfrmLanctoImportar.FormCreate(Sender: TObject);
begin
  inherited;
  Position := poMainFormCenter;
  //Left := 12;
  //Top := 79;
  Application.ProcessMessages;
  Panel1.Caption := '';
  pv_sIdentArquivoValido := 'ASPEB'+AnoStr(glb_sAnoMesTrab)+'REM';
  chkSomenteParaAtivos.Enabled := False;
  mTbLog.CreateDataSet;
  mTbServidor.CreateDataSet;
  mTbServidor.IndexFieldNames:= 'NOME';
end;

procedure TfrmLanctoImportar.FormShow(Sender: TObject);
begin
  inherited;
  cdsConfigOrgao.Close;
  cdsConfigOrgao.Open;
  cdsConfigOrgao.Edit;
  cdsConfigOrgaoRAZAO_SOCIAL.Value := Criptografa(
     cdsConfigOrgaoRAZAO_SOCIAL.Value,'2',60);
  cdsConfigOrgaonome_sys.Value := glb_sSistema;
  cdsConfigOrgao.Post;
  pv_sPathRel := GetPathRel();
  Caption := 'IMPORTAÇÃO DE EVENTOS (DE ARQUIVO .TXT) ...';
  pv_sCNPJ_Orgao := Pesquisa('CONFIG_ORGAO','ID','1','CNPJ','');
  pv_sCNPJ_Orgao := Criptografa(pv_sCNPJ_Orgao,'2',14);
  mTbLog.Open;
  HabilitaBotoes(True,False);
  frmeEntidFinanc1.edId.SetFocus;
end;

procedure TfrmLanctoImportar.frmeEntidFinanc1edIdExit(Sender: TObject);
begin
  inherited;
  frmeEntidFinanc1.edIdExit(Sender);
  if Trim(frmeEntidFinanc1.edId.Text) = '' then exit;
  qryEntidFinancEvento.Close;
  qryEntidFinancEvento.Params[0].Value :=
     StrToInt(Trim(frmeEntidFinanc1.edId.Text));
  qryEntidFinancEvento.Open;
  chkSomenteParaAtivos.Enabled := (RightStr(glb_sAnoMesTrab,2) = '16');
  if qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 then
  begin
     if (RightStr(glb_sAnoMesTrab,2) <> '16') then
     begin
        Mensagem('O Tipo de Lay-Out da Entidade Financeira '+#13+
           'é incompatível c/ o Mes/Ano ...',
           'Aviso !!!',MB_OK+MB_ICONERROR);
        frmeEntidFinanc1.edId.SetFocus;
        exit;
     end
  end else
  begin
     if (RightStr(glb_sAnoMesTrab,2) = '16') then
     begin
        Mensagem('O Tipo de Lay-Out da Entidade Financeira '+#13+
           'é incompatível c/ o Mes/Ano ...',
           'Aviso !!!',MB_OK+MB_ICONERROR);
        frmeEntidFinanc1.edId.SetFocus;
        exit;
     end;
  end;

  edEvento1.Text := qryEntidFinancEventoID_EVENTO1.AsString+' / '+
                    qryEntidFinancEventoCOD_EVENTO1.Value;
  edEvento2.Text := qryEntidFinancEventoID_EVENTO2.AsString+' / '+
                    qryEntidFinancEventoCOD_EVENTO2.Value;
  edEvento3.Text := qryEntidFinancEventoID_EVENTO3.AsString+' / '+
                    qryEntidFinancEventoCOD_EVENTO3.Value;
end;

procedure TfrmLanctoImportar.frmeEntidFinanc1edIdPropertiesChange(
  Sender: TObject);
begin
  inherited;
  if Trim(frmeEntidFinanc1.edId.Text) <> '' then exit;
  edEvento1.Text := '';
  edEvento2.Text := '';
  edEvento3.Text := '';
end;

procedure TfrmLanctoImportar.frmeEntidFinanc1sbEventoClick(Sender: TObject);
begin
  inherited;
  frmeEntidFinanc1.pb_sTipoEntidFinanc := 'T';
  frmeEntidFinanc1.sbEntidFinancClick(Sender);
end;

Procedure TfrmLanctoImportar.HabilitaBotoes(lHabilita1,lHabilita2: Boolean);
begin
  frmeEntidFinanc1.Enabled:= lHabilita1;
  edNomeArquivo.Enabled   := lHabilita1;
  sbFindArqTxt.Enabled    := lHabilita1;
  btnOk.Enabled           := lHabilita1;
  btnImprimir.Enabled     := lHabilita2;
  btnGravar.Enabled       := lHabilita2;
  btnLimpar.Enabled       := lHabilita2;
  sbEventos.Enabled       := lHabilita2;
end;

Procedure TfrmLanctoImportar.ImportASPEB;
Var
   sChar         : Char;
   tfArq         : TextFile;
   sRegistro     : String[85];
   iTotRegArquivo,
   iTotRegImport : Integer;
   iQtFuncArquivo,
   iQtFuncImport : Integer;
   crValImportado: Currency;
   wContaChar    : Word;
   lArqOk        : Boolean;
   sNumRegistro  : String[5];
   sMatricula    : string[7];
   sMatricTemp   : String[7];
   sCPF          : String[11];
   crValor       : Currency;
   sValor        : String[12];
   sRubrica      : String[3];
   sNomeServiTemp: string[60];
   crTotSeguros,
   crTotDiversos : Currency;
   lImportReg    : Boolean;
begin
   If Empty(edNomeArquivo.Text) Then
   Begin
      edNomeArquivo.SetFocus;
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   pv_lImportSaved := False;
   If Not ValidaArquivo Then
   Begin
      pcImport.ActivePage:= tsMsg;
      Exit;
   End;
   edTotRegArquivo.Value:= 0;
   edTotRegImport.Value := 0;
   edTotalImport.Value  := 0;
   crTotSeguros         := 0;
   crTotDiversos        := 0;
   crValImportado       := 0;
   if mTbServidor.Active then
      mTbServidor.EmptyDataSet;
   mTbServidor.Close;
   mTbServidor.Open;
   //lblStatus.Caption   := 'Aguarde, importando arquivo ....';
   //lblStatus.Refresh;
   AssignFile(tfArq,edNomeArquivo.Text);
   Reset(tfArq);
   Readln(tfArq,sRegistro);
   iTotRegArquivo:= 0;
   iTotRegImport := 0;
   memLog.Lines.Add(' ');
   memLog.Lines.Add('Importação: ');
   memLog.Lines.Add(' ');
   edTotRegArquivo.Value:= 0;
   edTotRegImport.Value := 0;
   edTotalImport.Value  := 0;
   iQtFuncArquivo:= 0;
   iQtFuncImport := 0;
   sMatricTemp   := '';
   While Not EOF(tfArq) Do
   Begin

      edTotRegArquivo.Value := edTotRegArquivo.Value + 1;
      lImportReg:= False;
      Readln(tfArq,sRegistro);
      If UpperCase(Copy(sRegistro,6,1)) = 'T' Then Break;
      sNumRegistro:= LeftStr(sRegistro,5);
      sMatricula:= Copy(sRegistro,8,6);
      sCPF      := Copy(sRegistro,15,11);
      sValor    := Copy(sRegistro,31,9)+','+Copy(sRegistro,40,2);
      crValor   := StrToCurr(sValor);
      sRubrica  := Copy(sRegistro,27,3);

      lImportReg := True;
      if not cdsServidor.FindKey([sCPF]) then
         lImportReg := False;

      if not lImportReg then
      begin
         sNomeServiTemp := Pesquisa('PESSOA_FISICA','CPF',sCPF,'NOME','');
         if sNomeServiTemp = '' then
            memLog.Lines.Add('Registro: '+sNumRegistro+' - Pessoa Física c/ CPF: '+
               FormatString('999.999.999-99',sCPF)+' - '+sNomeServiTemp+', NÃO '+
               'conta em nossos Cadastros ...')
         else
            memLog.Lines.Add('Registro: '+sNumRegistro+' - Servidor c/ CPF: '+
               FormatString('999.999.999-99',sCPF)+' - '+sNomeServiTemp+
               ', NÃO está ATIVO nesse mês/ano ...');
         Continue;
      end;

      Inc(iTotRegArquivo);
      If sMatricula <> sMatricTemp Then
      Begin
         Inc(iQtFuncArquivo);
         If lImportReg Then Inc(iQtFuncImport);
      End;
      sMatricTemp:= sMatricula;
      if lImportReg then
      begin
         mTbServidor.Insert;
         mTbServidorID.AsString               := cdsServidorID_SERVIDOR.AsString;
         mTbServidorNOME.Value                := cdsServidorNOME_SERVIDOR.Value;
         mTbServidorDT_ADMISSAO.AsString      := cdsServidorDT_ADMISSAO.AsString;
         mTbServidorDESCR_CARGO.Value         := cdsServidorDESCR_CARGO.Value;
         mTbServidorCPF_PIS_PASEP.Value       := sCPF;
         mTbServidorID_SUB_UNID_ORCAM.Value   := cdsServidorID_SUB_UNID_ORCAMENT.Value;
         mTbServidorDESCR_SUB_UNID_ORCAM.Value:= cdsServidorDESCR_SUB_UNID_ORCAM2.Value;
         mTbServidorid_servid_ftdo.Value      := FormatString('999.999-9',
             mTbServidorID.AsString);
         mTbServidorcpf_ftdo.Value := FormatString('999.999.999-99',
             mTbServidorCPF_PIS_PASEP.AsString);
         If sRubrica = '001' Then
         Begin
            mTbServidorRUBRICA.Value:=
               qryEntidFinancEventoID_EVENTO1.AsString+' ('+sRubrica+') - SEGURO';
            crTotSeguros := crTotSeguros + crValor;
         End Else
         Begin
            mTbServidorRUBRICA.Value:=
               qryEntidFinancEventoID_EVENTO2.AsString+' ('+sRubrica+') - DIVERSOS';
            crTotDiversos := crTotDiversos + crValor;
         End;
         mTbServidorVALOR.Value := crValor;
         mTbServidorSalvar.Value := 'S';
         mTbServidor.Post;
         Application.ProcessMessages;
         Inc(iTotRegImport);
         edTotRegImport.Value := edTotRegImport.Value + 1;
         edTotalImport.Value :=  edTotalImport.Value + mTbServidorVALOR.Value;
      end
   End;
   Panel1.Caption:= '';
   edTotRegArquivo.value:= iTotRegArquivo;
   edTotRegImport.value := iTotRegImport;
   edTotalImport.value  := crValImportado;
   If mTbServidor.RecordCount > 0 Then
   Begin
      memLog.Lines.Add('- Total de Registros do Arquivo : '+edTotRegArquivo.Text);
      memLog.Lines.Add('- Total de Servidores do Arquivo: '+IntToStr(iQtFuncArquivo));
      memLog.Lines.Add('- Total de Servidores importados: '+IntToStr(iQtFuncImport));
      Mensagem('Fim da Importação, visualize as mensagens antes de Salvar ...',
         'A v i s o !!!',MB_ICONEXCLAMATION+MB_OK);
      pcImport.ActivePageIndex := 0;
      dbgServidores.SetFocus;
   End;
   CloseFile(tfArq);
   Screen.Cursor := crDefault;
end;

Function TfrmLanctoImportar.ValidaArquivo: Boolean;
Var
   tfArq     : TextFile;
   sRegistro : String[240];
   lImporta  : Boolean;
   sBanco    : String[3];
   sIdArquivo: String[12];
   sCNPJ     : String[14];
   sNomeEmpresa: String[30];
   sAnoMesArq: String[6];
   iTotalReg : Integer;
   sCPF      : String[11];
   sValor    : String[13];
   crValor,
   crTotSeguro,
   crTotDiversos,
   crTotLote : Currency;
   sNumRegistro : String[5];
   iConta       : Integer;
   iQtOutrosReg : Integer;
Begin
   Screen.Cursor:= crHourGlass;
   Panel1.Caption   := ' Aguarde, validando o arquivo ....';
   Application.ProcessMessages;
   iConta := 0;
   While iConta <= memLog.Lines.Count - 1 Do
      memLog.Lines.Delete(iConta);
   iTotalReg    := 0;
   AssignFile(tfArq,edNomeArquivo.Text);
   Reset(tfArq);
   ReadLn(tfArq,sRegistro);
   sRegistro := Trim(sRegistro);
   Inc(iTotalReg);
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo da ASPEB Seguros: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 2 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo de Empréstimos Consignados BB: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 3 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo de Empréstimos Consignados BMC: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 Then
   Begin
      memLog.Lines.Add('Resultado da Importação do Arquivo de Abono PASEP: ');
      memLog.Lines.Add(' - '+edNomeArquivo.Text+' ...');
   End;
   memLog.Lines.Add(' ');
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 Then
   Begin
      sIdArquivo:= UpperCase(Trim(Copy(sRegistro,8,12)));
      sCNPJ     := Copy(sRegistro,23,14);
      sAnoMesArq:= Copy(sRegistro,83,6);
      If UpperCase(Copy(sRegistro,6,1)) <> 'H' Then
         memLog.Lines.Add('O Primeiro Registro não é válido ...')
      Else
      If sIdArquivo <> pv_sIdentArquivoValido Then
         memLog.Lines.Add('O identificador do Arquivo não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo é de outra Empresa, cujo CNPJ é: '+FormatString('99.999.999/9999-99',sCNPJ))
      Else
      If sAnoMesArq <> glb_sAnoMesTrab Then
         memLog.Lines.Add('Este Arquivo é referente ao Ano/Mês: '+
                          FormatString('9999/99',sAnoMesArq)+', o Ano/Mês atual é: '+
                          FormatString('9999/99',glb_sAnoMesTrab));
      pv_iQtRegD      := 0;
      iQtOutrosReg := 0;
      crTotSeguro  := 0;
      crTotDiversos:= 0;
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 2 Then
   Begin
      ReadLn(tfArq,sRegistro); // a primeira linha não consta no lay-out
      sBanco      := Copy(sRegistro,1,3);
      sCNPJ       := Copy(sRegistro,33,14);
      sNomeEmpresa:= Copy(sRegistro,93,30);
      sAnoMesArq  := Copy(sRegistro,17,4)+Copy(sRegistro,15,2);
      {sAnoMesArq  := DecAnoMes(sAnoMesArq);
      If MesStr(sAnoMesArq) = '13' Then
         sAnoMesArq := DecAnoMes(sAnoMesArq);}
      If UpperCase(Copy(sRegistro,8,1)) <> '1' Then
         memLog.Lines.Add('O Segundo Registro não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo da Empresa '+
                          FormatString('99.999.999/9999-99',sCNPJ)+' '+sNomeEmpresa)
      Else
      If sAnoMesArq <> glb_sAnoMesTrab Then
         If Not Confirma('Este Arquivo é referente ao Ano/Mês: '+FormatString('9999/99',sAnoMesArq)+' !!!'+#13+
                         'Deseja importar mesmo assim ?') Then
            memLog.Lines.Add('Este Arquivo é referente ao Ano/Mês: '+
                             FormatString('9999/99',sAnoMesArq)+', o Ano/Mês atual é: '+
                             FormatString('9999/99',glb_sAnoMesTrab));
      crTotLote := 0;
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 3 Then
   Begin
      sBanco      := Copy(sRegistro,1,3);
      sCNPJ       := Copy(sRegistro,31,14);
      sNomeEmpresa:= Copy(sRegistro,91,30);
      sAnoMesArq  := Copy(sRegistro,15,4)+Copy(sRegistro,13,2);
      If sBanco <> '318' Then
         memLog.Lines.Add('Esse Arquivo não pertence ao B.M.C. ...')
      Else If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Esse arquivo não é de Servidores deste Órgão ...'+'('+sNomeEmpresa+')')
      Else If UpperCase(Copy(sRegistro,7,1)) <> '1' Then
         memLog.Lines.Add('O Primeiro Registro não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo da Empresa '+
                          FormatString('99.999.999/9999-99',sCNPJ)+' '+sNomeEmpresa)
      Else
      If sAnoMesArq <> glb_sAnoMesTrab Then
         If Not Confirma('Este Arquivo é referente ao Ano/Mês: '+FormatString('9999/99',sAnoMesArq)+' !!!'+#13+
                         'Deseja importar mesmo assim ?') Then
            memLog.Lines.Add('Este Arquivo é referente ao Ano/Mês: '+
                             FormatString('9999/99',sAnoMesArq)+', o Ano/Mês atual é: '+
                             FormatString('9999/99',glb_sAnoMesTrab));
      crTotLote := 0;
   End Else
   If qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 Then
   Begin
      sBanco      := Copy(sRegistro,1,3);
      sCNPJ       := Copy(sRegistro,17,14);
      sNomeEmpresa:= Copy(sRegistro,91,30);
      sAnoMesArq  := Copy(sRegistro,15,4)+Copy(sRegistro,13,2);
      If Copy(sRegistro,2,7) <> 'FPSF910' Then
         memLog.Lines.Add('Esse Arquivo não é do Abono PASEP ...')
      Else If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Esse arquivo não é de Servidores deste Órgão ...'+'('+sNomeEmpresa+')')
      Else If UpperCase(Copy(sRegistro,1,1)) <> '1' Then
         memLog.Lines.Add('O Primeiro Registro não é válido ...')
      Else
      If sCNPJ <> pv_sCNPJ_Orgao Then
         memLog.Lines.Add('Este Arquivo é da Empresa '+
                          FormatString('99.999.999/9999-99',sCNPJ)+' '+sNomeEmpresa)
      Else
   End;

   While Not EOF(tfArq) Do
   Begin
      ReadLn(tfArq,sRegistro);
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 1 Then
      Begin
         sNumRegistro := LeftStr(sRegistro,5);
         Inc(iTotalReg);
         If (Copy(sRegistro,6,1)<>'D') And (Copy(sRegistro,6,1)<>'T') Then
            memLog.Lines.Add('O primeiro Caracther do Registro '+sNumRegistro+' não é valido');
         If RightStr(Trim(sRegistro),1) <> '*' Then
            memLog.Lines.Add('O Registro '+sNumRegistro+' não contém o marcador de Fim de Linha (*), ou está fora da posição')
         Else
         If UpperCase(Copy(sRegistro,6,1)) = 'D' Then
         Begin
            Inc(pv_iQtRegD);
            sValor := Copy(sRegistro,31,9)+','+Copy(sRegistro,40,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 999999.99;
            End;
            If crValor = 999999.99 Then
               memLog.Lines.Add('Registro '+sNumRegistro+': o Valor do Lançamento não é válido');
            If Copy(sRegistro,27,3) = '001' Then
               crTotSeguro := crTotSeguro + crValor
            Else If Copy(sRegistro,27,3) = '002' Then
               crTotDiversos := crTotDiversos + crValor
            Else
               memLog.Lines.Add('Registro '+sNumRegistro+': a Rúbrica é diferente de 001 e 002');
         End Else
         If UpperCase(Copy(sRegistro,6,1)) = 'T' Then
         Begin
            If StrToInt(Copy(sRegistro,8,6)) <> pv_iQtRegD Then
               memLog.Lines.Add('A quantidade de Registros tipo (D) é diferente da informada no Trailer do Arquivo');
            sValor := Copy(sRegistro,15,9)+','+Copy(sRegistro,24,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crTotSeguro <> crValor Then
               memLog.Lines.Add('O Total da Rubrica 001 (Seguro) é diferente da informada no Trailer do Arquivo');
            sValor := Copy(sRegistro,27,9)+','+Copy(sRegistro,36,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor <> crTotDiversos Then
               memLog.Lines.Add('O Total da Rubrica 002 (Diversos) é diferente da informada no Trailer do Arquivo');
            sValor := Copy(sRegistro,39,9)+','+Copy(sRegistro,48,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor <> (crTotSeguro+crTotDiversos) Then
               memLog.Lines.Add('O Total Geral do Arquivo é diferente da informada no Trailer do Arquivo');
         End Else
            Inc(iQtOutrosReg);
      End Else
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 2 Then
      Begin
         sNumRegistro := Copy(sRegistro,9,5);
         Inc(iTotalReg);
         If Pos(Copy(sRegistro,8,1),'3_5_9')=0 Then
            memLog.Lines.Add('O Tipo do Registro '+sNumRegistro+' não é válido');
         If Copy(sRegistro,8,1) = '3' Then  // Detalhe
         Begin
            Inc(pv_iQtRegD);
            sValor := Copy(sRegistro,144,7)+','+Copy(sRegistro,151,2);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor = 0 Then
               memLog.Lines.Add('Registro '+sNumRegistro+': o Valor do Lançamento não é válido')
            Else
               crTotLote:= crTotLote + crValor;
         End Else
         If Copy(sRegistro,8,1) = '5' Then
         Begin
            If StrToInt(Copy(sRegistro,16,6)) <> pv_iQtRegD+2 Then
               memLog.Lines.Add('A quantidade de Registros do Arquivo é diferente da informada no Trailer do Arquivo');
            Break;
         End;
      End;
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 3 Then
      Begin
         sNumRegistro := Copy(sRegistro,8,5);
         Inc(iTotalReg);
         If Pos(Copy(sRegistro,7,1),'1_2_3')=0 Then
            memLog.Lines.Add('O Tipo do Registro '+sNumRegistro+' não é válido');
         If Copy(sRegistro,7,1) = '3' Then  // Detalhe
         Begin
            Inc(pv_iQtRegD);
            sValor := Copy(sRegistro,56,13);
            Try
               crValor:= StrToCurr(sValor);
            Except
               crValor:= 0;
            End;
            If crValor = 0 Then
               memLog.Lines.Add('Registro '+sNumRegistro+': o Valor do Lançamento não é válido')
            Else
               crTotLote:= crTotLote + crValor;
         End Else
         If Copy(sRegistro,7,1) = '3' Then
         Begin
            If StrToInt(Copy(sRegistro,49,7)) <> pv_iQtRegD+2 Then
               memLog.Lines.Add('A quantidade de Registros do Arquivo é diferente da informada no Trailer do Arquivo');
            Break;
         End;
      End Else
      If qryEntidFinancEventoTIPO_LAY_OUT.Value = 4 Then
      Begin
         sNumRegistro := Copy(sRegistro,8,5);
         If Copy(sRegistro,1,1) = '2' Then
            Inc(pv_iQtRegD)
         Else If Copy(sRegistro,1,1) = '9' Then
         Begin
            If StrToInt(Copy(sRegistro,223,6)) <> pv_iQtRegD Then
               memLog.Lines.Add('A quantidade de Registros tipo "2", é diferente da informada no Trailer do Arquivo');
            Break;
         End;
      End;
   End;
   CloseFile(tfArq);
   Panel1.Caption := '';
   Application.ProcessMessages;
   Screen.Cursor := crDefault;
   If memLog.Lines.Count < 4 Then
   Begin
      memLog.Lines.Add('Arquivo validado com Êxito !');
      lImporta:= True;
   End Else
      lImporta:= False;
   Result := lImporta;
End;

procedure TfrmLanctoImportar.ImportEmprestConsigBB;
Var
   sChar         : Char;
   tfArq         : TextFile;
   sRegistro     : String[240];
   iTotRegArquivo,
   iTotRegImport : Integer;
   crTotImportado: Currency;
   lArqOk        : Boolean;
   sNumRegistro  : String[5];
   sMatricula    : String[7];
   sNomeFuncTemp,
   sNOmeFuncTemp2: String[60];
   sCPF          : String[11];
   crValor       : Currency;
   sValor        : String[12];
   sParcela,
   sTotParcelas  : String[2];
   lImportReg    : Boolean;
   iQtLanFunc    : Integer;
begin
   If Empty(edNomeArquivo.Text) Then
   Begin
      edNomeArquivo.SetFocus;
      Exit;
   End;
   pv_lImportSaved := False;
   If Not ValidaArquivo Then
   Begin
      pcImport.ActivePage := tsMsg;
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   if mTbServidor.Active then
      mTbServidor.EmptyDataSet;
   mTbServidor.Close;
   mTbServidor.Open;
   edTotRegArquivo.Value:= 0;
   edTotRegImport.Value := 0;
   edTotalImport.Value  := 0;
   crTotImportado       := 0;
   //cdsServidor.EmptyDataSet;
   Panel1.Caption   := ' Aguarde, importando arquivo ....';
   Application.ProcessMessages;
   AssignFile(tfArq,edNomeArquivo.Text);
   Reset(tfArq);
   Readln(tfArq,sRegistro);
   Readln(tfArq,sRegistro);
   iTotRegArquivo:= 0;
   iTotRegImport := 0;
   memLog.Lines.Add(' ');
   memLog.Lines.Add('Importação: ');
   memLog.Lines.Add(' ');
   While Not EOF(tfArq) Do
   Begin
      lImportReg:= False;
      Readln(tfArq,sRegistro);
      Inc(iTotRegArquivo);
      If Copy(sRegistro,8,1) = '5' Then Break;
      sNumRegistro:= Copy(sRegistro,9,5);
      //sMatricula:= _Right(Copy(sRegistro,8,6),4);
      sCPF      := Copy(sRegistro,52,11);
      sValor    := Copy(sRegistro,144,7)+','+Copy(sRegistro,151,2);
      crValor   := StrToCurr(sValor);
      sParcela  := Copy(sRegistro,106,2);
      sTotParcelas:= Copy(sRegistro,108,2);
      sNomeFuncTemp:= Trim(Copy(sRegistro,16,30));
      If (Empty(sCPF)) Or (Not ValidCPF(sCPF,False)) Then
      Begin
         memLog.Lines.Add('Registro: '+sNumRegistro+' - '+sNomeFuncTemp+' > CPF inválido ('+sCPF+')');
         Continue;
      End;
      //VerServidor(sCPF);
      If not cdsServidor.FindKey([sCPF]) Then
      Begin
         sNomeFuncTemp2 := Pesquisa('PESSOA_FISICA','CPF',sCPF,'NOME','');
         if sNomeFuncTemp2 = '' then
            memLog.Lines.Add('Registro: '+sNumRegistro+' - '+sNomeFuncTemp+
               ' > CPF não cadastrado no Sistema ('+sCPF+') ...')
         else
            memLog.Lines.Add('Registro: '+sNumRegistro+' - '+sNomeFuncTemp2+
               ' > CPF: '+sCPF+'), NÃO está Ativo nesse mês/Ano ...');
         Continue;
      End;
      sMatricula := cdsServidorID_SERVIDOR.AsString;
      iQtLanFunc := QtLanMesFuncionario(sMatricula);
      mTbServidor.Append;
      mTbServidorID.AsString         := sMatricula;
      mTbServidorNOME.Value          := cdsServidorNOME_SERVIDOR.Value;
      mTbServidorCPF_PIS_PASEP.Value := sCPF;
      mTbServidorDT_ADMISSAO.AsString:= cdsServidorDT_ADMISSAO.AsString;
      mTbServidorDESCR_CARGO.Value   := cdsServidorDESCR_CARGO.Value;
      mTbServidorOBSERVACAO.Value    := sParcela+'/'+sTotParcelas;
      mTbServidorVALOR.Value         := crValor;
      mTbServidorID_SUB_UNID_ORCAM.Value := cdsServidorID_SUB_UNID_ORCAMENT.Value;
      mTbServidorDESCR_SUB_UNID_ORCAM.Value := cdsServidorDESCR_SUB_UNID_ORCAM2.Value;
      If iQtLanFunc = 0 Then
         mTbServidorRUBRICA.AsString:= qryEntidFinancEventoID_EVENTO1.AsString
      Else If iQtLanFunc = 1 Then
         mTbServidorRUBRICA.AsString:= qryEntidFinancEventoID_EVENTO2.AsString
      Else If iQtLanFunc = 2 Then
         mTbServidorRUBRICA.AsString:= qryEntidFinancEventoID_EVENTO3.AsString
      Else
         mTbServidorRUBRICA.Value:= '0';
      mTbServidorid_servid_ftdo.Value := FormatString('999.999-9',
          mTbServidorID.AsString);
      mTbServidorcpf_ftdo.Value := FormatString('999.999.999-99',
          mTbServidorCPF_PIS_PASEP.AsString);
      mTbServidorSalvar.Value := 'S';
      mTbServidor.Post;
      Application.ProcessMessages;
      Inc(iTotRegImport);
      crTotImportado:= crTotImportado + mTbServidorVALOR.Value;
   End;
   Panel1.Caption:= '';
   edTotRegArquivo.Value:= iTotRegArquivo;
   edTotRegImport.Value := iTotRegImport;
   edTotalImport.Value  := crTotImportado;
   If mTbServidor.RecordCount > 0 Then
   Begin
      memLog.Lines.Add('- Total de Registros do Arquivo  : '+edTotRegArquivo.Text);
      memLog.Lines.Add('- Quant. de Servidores importados: '+IntToStr(iTotRegImport));
      memLog.Lines.Add('- Total dos Servidores (em R$)   : '+FormatCurr(',0.00',edTotalImport.Value));
      Mensagem('Fim da Importação, visualize as mensagens antes de Salvar ...',
         'A v i s o !!!',MB_ICONEXCLAMATION+MB_OK);
      dbgServidores.SetFocus;
   End;
   CloseFile(tfArq);
   Screen.Cursor := crDefault;
end;

procedure TfrmLanctoImportar.ImportAbonoPASEP;
Var
   sChar         : Char;
   tfArq         : TextFile;
   sRegistro     : String[240];
   iTotRegArquivo,
   iTotRegImport : Integer;
   crTotImportado: Currency;
   lArqOk        : Boolean;
   sNumRegistro  : String[5];
   sMatricula    : String[7];
   sNomeServidor : String[60];
   sDtAdmissao   : string[10];
   sCargoAtual   : string[40];
   sEstFuncional : string[40];
   sPIS_PASEP    : String[11];
   sIdSUO        : string[5];
   sDescrSUO     : string[60];
   crValor       : Currency;
   sValor        : String[12];
   lImportReg    : Boolean;
   iQtLanFunc    : Integer;
begin
   If Empty(edNomeArquivo.Text) Then
   Begin
      edNomeArquivo.SetFocus;
      Exit;
   End;
   pv_lImportSaved := False;
   {
   If Not ValidaArquivo Then
   Begin
      pcImport.ActivePage := tsMsg;
      Exit;
   End;
   }
   Screen.Cursor := crHourGlass;
   mTbServidorCPF_PIS_PASEP.EditMask := '9.999.999.999-9;0; ';

   if mTbServidor.Active then
      mTbServidor.EmptyDataSet;
   mTbServidor.Close;
   mTbServidor.Open;
   edTotRegArquivo.Value:= 0;
   edTotRegImport.Value := 0;
   edTotalImport.Value  := 0;
   crTotImportado       := 0;
   //cdsServidor.EmptyDataSet;
   Panel1.Caption := ' Aguarde, importando arquivo ....';
   Application.ProcessMessages;
   AssignFile(tfArq,edNomeArquivo.Text);
   Reset(tfArq);
   Readln(tfArq,sRegistro);
   if Copy(sRegistro,8,9) <> 'FPSF91020' then
   begin
      memLog.Lines.Add('Esse Arquivo NÃO corresponde ao Formato FPSF91020 ...');
      memLog.Lines.Add('Operação Abotada ....');
      Panel1.Caption:= '';
      CloseFile(tfArq);
      Screen.Cursor := crDefault;
      exit;
   end;

   iTotRegArquivo:= 0;
   iTotRegImport := 0;
   memLog.Lines.Add(' ');
   memLog.Lines.Add('Importação: ');
   memLog.Lines.Add(' ');
   While Not EOF(tfArq) Do
   Begin
      lImportReg:= False;
      Readln(tfArq,sRegistro);
      Inc(iTotRegArquivo);
      If Copy(sRegistro,8,1) = '5' Then Break;
      sNumRegistro:= Copy(sRegistro,2,5);
      //sMatricula:= _Right(Copy(sRegistro,8,6),4);
      sPIS_PASEP:= Copy(sRegistro,23,11);
      sValor    := Copy(sRegistro,107,9)+','+Copy(sRegistro,116,2);
      crValor   := StrToCurr(sValor);
      if crValor = 0 then
      begin
         Continue;
      end;

      cdsAbonoPASEP.Close;
      qryAbonoPASEP.ParamByName('pPisPASEP').Value := sPIS_PASEP;
      cdsAbonoPASEP.Open;
      If cdsAbonoPASEP.RecordCount = 0 Then
      Begin
         memLog.Lines.Add('Registro: '+sNumRegistro+' - PIS/PASEP: '+
           FormatString('9.999.999.999-9',sPIS_PASEP)+
           ' -> não cadastrado no Sistema ...');
         Continue;
      End else
      begin
         if (chkSomenteParaAtivos.Enabled) and
            (chkSomenteParaAtivos.Checked) then
         begin
            If (cdsAbonoPASEP.RecordCount = 1) and
               (cdsAbonoPASEPSTATUS.Value <> '3') Then
            begin
               sMatricula := PreencheZeros(cdsAbonoPASEPID.AsString,6);
               sNomeServidor:= cdsAbonoPASEPNOME_SERVIDOR.Value;
               sDtAdmissao := DataAdmissao(cdsAbonoPASEPDT_ADMISSAO.AsString,
                  cdsAbonoPASEPDT_READMISSAO.AsString);
               sCargoAtual := cdsAbonoPASEPDESCR_CARGO_ATUAL.Value;
               sEstFuncional := cdsAbonoPASEPDESCR_EST_FUNCIONAL.Value;
               sIdSUO := cdsAbonoPASEPID_SUB_UNID_ORCAMENT.AsString;
               sDescrSUO := cdsAbonoPASEPDESCR_SUB_UNID_ORCAM2.Value;
               lImportReg := True;
            end else
            begin
               lImportReg := False;
               while not cdsAbonoPASEP.eof do
               begin
                  sMatricula := PreencheZeros(cdsAbonoPASEPID.AsString,6);
                  sNomeServidor:= cdsAbonoPASEPNOME_SERVIDOR.Value;
                  sDtAdmissao := DataAdmissao(cdsAbonoPASEPDT_ADMISSAO.AsString,
                     cdsAbonoPASEPDT_READMISSAO.AsString);
                  sCargoAtual := cdsAbonoPASEPDESCR_CARGO_ATUAL.Value;
                  sEstFuncional := cdsAbonoPASEPDESCR_EST_FUNCIONAL.Value;
                  sIdSUO := cdsAbonoPASEPID_SUB_UNID_ORCAMENT.AsString;
                  sDescrSUO := cdsAbonoPASEPDESCR_SUB_UNID_ORCAM2.Value;
                  if cdsAbonoPASEPSTATUS.Value <> '3' then
                  begin
                     lImportReg := True;
                     break;
                  end;
                  cdsAbonoPASEP.Next;
               end;
            end;
         end else
         begin
            sMatricula := PreencheZeros(cdsAbonoPASEPID.AsString,6);
            sNomeServidor:= cdsAbonoPASEPNOME_SERVIDOR.Value;
            sDtAdmissao := DataAdmissao(cdsAbonoPASEPDT_ADMISSAO.AsString,
               cdsAbonoPASEPDT_READMISSAO.AsString);
            sCargoAtual := cdsAbonoPASEPDESCR_CARGO_ATUAL.Value;
            sEstFuncional := cdsAbonoPASEPDESCR_EST_FUNCIONAL.Value;
            sIdSUO := cdsAbonoPASEPID_SUB_UNID_ORCAMENT.AsString;
            sDescrSUO := cdsAbonoPASEPDESCR_SUB_UNID_ORCAM2.Value;
            lImportReg := True;
         end;
      end;

      if lImportReg then
      begin
         iQtLanFunc := QtLanMesFuncionario(sMatricula);
         mTbServidor.Append;
         mTbServidorID.AsString         := sMatricula;
         mTbServidorNOME.Value          := sNomeServidor;
         mTbServidorCPF_PIS_PASEP.Value := sPIS_PASEP;
         mTbServidorDT_ADMISSAO.AsString:= sDtAdmissao;
         mTbServidorDESCR_CARGO.Value   := sCargoAtual;
         mTbServidorOBSERVACAO.Value    := sEstFuncional;
         mTbServidorVALOR.Value         := crValor;
         mTbServidorid_servid_ftdo.Value := FormatString('99999-9',
            mTbServidorID.AsString);
         mTbServidorID_SUB_UNID_ORCAM.AsString := sIdSUO;
         mTbServidorDESCR_SUB_UNID_ORCAM.AsString := sDescrSUO;
         mTbServidorcpf_ftdo.Value := FormatString('9.999.999.999-9',sPIS_PASEP);
         mTbServidorSalvar.Value := 'S';
         mTbServidor.Post;
         Application.ProcessMessages;
         Inc(iTotRegImport);
         crTotImportado:= crTotImportado + mTbServidorVALOR.Value;
      end else
      begin
         memLog.Lines.Add('Matric.: '+sMatricula+' - '+sNomeServidor+' - PIS/PASEP: '+
           FormatString('9.999.999.999-9',sPIS_PASEP)+
           ' -> não faz mais parte do quadro de Servidores ...');
      end;

   End;
   Panel1.Caption:= '';
   edTotRegArquivo.Value:= iTotRegArquivo;
   edTotRegImport.Value := iTotRegImport;
   edTotalImport.Value  := crTotImportado;
   If mTbServidor.RecordCount > 0 Then
   Begin
      memLog.Lines.Add('- Total de Registros do Arquivo  : '+edTotRegArquivo.Text);
      memLog.Lines.Add('- Quant. de Servidores importados: '+IntToStr(iTotRegImport));
      memLog.Lines.Add('- Total dos Servidores (em R$)   : '+FormatCurr(',0.00',edTotalImport.Value));
      Mensagem('Fim da Importação, visualize as mensagens antes de Salvar ...',
         'A v i s o !!!',MB_ICONEXCLAMATION+MB_OK);
      dbgServidores.SetFocus;
   End;
   CloseFile(tfArq);
   Screen.Cursor := crDefault;
end;

procedure TfrmLanctoImportar.ImportEmprestConsigBMC;
Var
   sChar         : Char;
   tfArq         : TextFile;
   sRegistro     : String[240];
   iTotRegArquivo,
   iTotRegImport : Integer;
   crTotImportado: Currency;
   lArqOk        : Boolean;
   sNumRegistro  : String[5];
   sMatricula    : String[7];
   sNomeFuncTemp,
   sNomeFuncTemp2: String[60];
   sCPF          : String[11];
   crValor       : Currency;
   sValor        : String[12];
   sParcela,
   sTotParcelas  : String[2];
   lImportReg    : Boolean;
   iQtLanFunc    : Integer;
begin
   If Empty(edNomeArquivo.Text) Then
   Begin
      edNomeArquivo.SetFocus;
      Exit;
   End;
   {
   If (Empty(edIdEvento1.Text)) Or (Empty(edIdEvento2.Text)) Then
   Begin
      Mensagem('Falta especificar os Códigos dos Eventos (click em Configuração) ...',
               'Aviso !!!',MB_ICONEXCLAMATION+MB_OK);
      btnOk.SetFocus;
      Exit;
   End;
   }

   pv_lImportSaved := False;
   If Not ValidaArquivo Then
   Begin
      pcImport.ActivePage := tsMsg;
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   edTotRegArquivo.Value:= 0;
   edTotRegImport.Value := 0;
   edTotalImport.Value  := 0;
   crTotImportado       := 0;
   if mTbServidor.Active then
      mTbServidor.EmptyDataSet;
   mTbServidor.Close;
   mTbServidor.Open;
   Panel1.Caption   := ' Aguarde, importando arquivo ....';
   Application.ProcessMessages;
   AssignFile(tfArq,edNomeArquivo.Text);
   Reset(tfArq);
   Readln(tfArq,sRegistro);
   iTotRegArquivo:= 0;
   iTotRegImport := 0;
   memLog.Lines.Add(' ');
   memLog.Lines.Add('Importação: ');
   memLog.Lines.Add(' ');
   While Not EOF(tfArq) Do
   Begin
      lImportReg:= False;
      Readln(tfArq,sRegistro);
      Inc(iTotRegArquivo);
      If Copy(sRegistro,7,1) = '3' Then Break;
      sNumRegistro:= Copy(sRegistro,8,5);
      //sMatricula:= _Right(Copy(sRegistro,8,6),4);
      sCPF      := Copy(sRegistro,43,11);
      sValor    := Copy(sRegistro,136,10);
      crValor   := StrToCurr(sValor);
      sParcela  := Copy(sRegistro,98,2);
      sTotParcelas:= Copy(sRegistro,100,2);
      sNomeFuncTemp:= Trim(Copy(sRegistro,13,30));
      If (Empty(sCPF)) Or (Not ValidCPF(sCPF,False)) Then
      Begin
         memLog.Lines.Add('Registro: '+sNumRegistro+' - '+sNomeFuncTemp+' > CPF inválido ('+sCPF+')');
         Continue;
      End;

      // VerServidor(sCPF);

      If not cdsServidor.FindKey([sCPF]) Then
      Begin
         sNomeFuncTemp2 := Pesquisa('PESSOA_FISICA','CPF',sCPF,'NOME','');
         if sNomeFuncTemp2 = '' then
            memLog.Lines.Add('Pessoa Física de CPF: '+
              FormatString('999.999.999-99',sCPF)+' - '+sNomeFuncTemp+
              ' -> NÃO consta em nossos cadastros ')
         else
            memLog.Lines.Add('Registro: '+sNumRegistro+' - Servidor: '+sNomeFuncTemp2);
            memLog.Lines.Add('          não está Ativo nesse Mês/Ano');
         Continue;
      End;
      {
      If qryFuncionarioBloqLanEventoAuto.Value='S' Then
      Begin
         memLog.Lines.Add('Registro: '+sNumRegistro+' - Matric.: '+qryFuncionarioMATRICULA.Value+' '+
                          qryFuncionarioNOME.Value+' > Esse Servidor já tem esse Lançto na outra Folha ...');
         Continue;
      End;
      }
      sMatricula := cdsServidorID_SERVIDOR.AsString;
      iQtLanFunc := QtLanMesFuncionario(sMatricula);
      mTbServidor.Append;
      mTbServidorID.AsString := sMatricula;
      mTbServidorNOME.Value      := cdsServidorNOME_SERVIDOR.Value;
      mTbServidorDESCR_CARGO.Value    := cdsServidorDESCR_CARGO.Value;
      mTbServidorDT_ADMISSAO.AsString := cdsServidorDT_ADMISSAO.AsString;
      mTbServidorDESCR_SUB_UNID_ORCAM.AsString := cdsServidorDESCR_SUB_UNID_ORCAM2.AsString;
      mTbServidorCPF_PIS_PASEP.Value:= sCPF;
      mTbServidorOBSERVACAO.Value   := sParcela+'/'+sTotParcelas;
      mTbServidorVALOR.Value     := crValor;
      If iQtLanFunc = 0 Then
         mTbServidorRUBRICA.AsString:= qryEntidFinancEventoID_EVENTO1.AsString
      Else If iQtLanFunc = 1 Then
         mTbServidorRUBRICA.AsString:= qryEntidFinancEventoID_EVENTO2.AsString
      Else If iQtLanFunc = 2 Then
         mTbServidorRUBRICA.AsString:= qryEntidFinancEventoID_EVENTO3.AsString
      Else
         mTbServidorRUBRICA.AsString:= '0';
      mTbServidorSalvar.Value := 'S';
      mTbServidor.Post;
      Application.ProcessMessages;
      Inc(iTotRegImport);
      crTotImportado:= crTotImportado + mTbServidorVALOR.Value;
   End;
   Panel1.Caption:= '';
   edTotRegArquivo.Value:= iTotRegArquivo;
   edTotRegImport.Value := iTotRegImport;
   edTotalImport.Value  := crTotImportado;
   If mTbServidor.RecordCount > 0 Then
   Begin
      memLog.Lines.Add('- Total de Registros do Arquivo  : '+edTotRegArquivo.Text);
      memLog.Lines.Add('- Quant. de Servidores importados: '+IntToStr(iTotRegImport));
      memLog.Lines.Add('- Total dos Servidores (em R$)   : '+FormatCurr(',0.00',edTotalImport.Value));
      Mensagem('ARQUIVO IMPORTADO COM SUCESSO !','AVISO !!!',MB_ICONEXCLAMATION+MB_OK);
      dbgServidores.SetFocus;
   End;
   CloseFile(tfArq);
   Screen.Cursor := crDefault;
end;

Function TfrmLanctoImportar.QtLanMesFuncionario(sMatric: String): Integer;
Var
   sMtbFuncIndexSave: String;
Begin
   Result := 0;
   sMtbFuncIndexSave:= mTbServidor.IndexFieldNames;
   mTbServidor.DisableControls;
   mTbServidor.IndexFieldNames:= 'id';
   mTbServidor.FindKey([sMatric]);
   While (Not mTbServidor.EOF) And (mTbServidorID.AsString=sMatric) Do
   Begin
      Inc(Result);
      mTbServidor.Next;
   End;
   mTbServidor.IndexFieldNames:= sMtbFuncIndexSave;
   mTbServidor.EnableControls;
End;

procedure TfrmLanctoImportar.sbEventosClick(Sender: TObject);
begin
  if Trim(frmeEntidFinanc1.edId.Text) = '' then exit;
  frmAddEditEntidFinanc := TfrmAddEditEntidFinanc.Create(Self);
  frmAddEditEntidFinanc.Executa(Self.Name,
     StrToInt(Trim(frmeEntidFinanc1.edId.Text)));
  FreeAndNil(frmAddEditEntidFinanc);
  frmeEntidFinanc1edIdExit(frmeEntidFinanc1.edId);
end;

procedure TfrmLanctoImportar.sbFindArqTxtClick(Sender: TObject);
begin
  if not OpenDialog1.Execute then exit;
  edNomeArquivo.Text := OpenDialog1.FileName;
  btnOk.SetFocus;
end;

Procedure TfrmLanctoImportar.ImprtOutros;
Var
   sChar         : Char;
   tfArq         : TextFile;
   sRegistro     : String[85];
   iTotRegArquivo,
   iTotRegImport : Integer;
   iQtFuncArquivo,
   iQtFuncImport : Integer;
   crValImportado: Currency;
   wContaChar    : Word;
   lArqOk        : Boolean;
   sNumRegistro  : String[5];
   sMatricula    : string[7];
   sMatricTemp   : String[4];
   sCPF          : String[11];
   crValor       : Currency;
   sValor        : String[12];
   sRubrica      : String[3];
   lImportReg    : Boolean;
begin
   If Empty(edNomeArquivo.Text) Then
   Begin
      edNomeArquivo.SetFocus;
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   pv_lImportSaved := False;
{
   If Not ValidaArquivo Then
   Begin
      pcImport.ActivePage:= tsLog;
      Exit;
   End;
}
{
   edTotRegArquivo.Text:= '0';
   edTotRegImport.Text := '0';
   edTotalImport.Text  := '0';
   crValImportado      := 0;
   mTbServidor.EmptyDataSet;
   Panel1.Caption   := 'Aguarde, importando arquivo ....';
   Application.ProcessMessages;
   AssignFile(tfArq,edNomeArquivo.Text);
   Reset(tfArq);
   Readln(tfArq,sRegistro);
   iTotRegArquivo:= 0;
   iTotRegImport := 0;
   memLog.Lines.Add(' ');
   memLog.Lines.Add('Importação: ');
   memLog.Lines.Add(' ');
   iQtFuncArquivo:= 0;
   iQtFuncImport := 0;
   sMatricTemp   := '';
   While Not EOF(tfArq) Do
   Begin
{
99999999999 999999,99 999999,99
12345678901 234567890 123456789
}
{
      lImportReg:= False;
      Readln(tfArq,sRegistro);
      If UpperCase(Copy(sRegistro,6,1)) = 'T' Then Break;
      sNumRegistro:= LeftStr(sRegistro,5);
      sCPF      := LeftStr(sRegistro,11);
      sValor    := RightStr(sRegistro,13);
      Try
         crValor := StrToCurr(sValor);
      Except
         crValor := 0;
      End;
      cdsServidor.Close;
      sdsServidor.ParamByName('pCPF').Value:= sCPF;
      sdsServidor.ParamByName('pAnoMes').Value:= sCPF;
      cdsServidor.Open;
      lImportReg := (cdsServidor.RecordCount > 0);
      Inc(iTotRegArquivo);
      If sMatricula <> sMatricTemp Then
      Begin
         Inc(iQtFuncArquivo);
         If lImportReg Then Inc(iQtFuncImport);
      End;
      sMatricTemp:= sMatricula;

      If lImportReg Then
      Begin
         sMatricula := cdsServidorID.AsString;
         mTbServidor.Append;
         mTbServidorID.AsString     := sMatricula;
         mTbServidorNOME.Value      := cdsServidorNOME_SERVIDOR.Value;
         mTbServidorCPF_PIS_PASEP.Value       := sCPF;
         mTbServidorVALOR.Value := crValor;
         mTbServidor.Post;
         Application.ProcessMessages;
         Inc(iTotRegImport);
         crValImportado:= crValImportado + mTbServidorVALOR.Value;
      End Else
         memLog.Lines.Add('Registro: '+sNumRegistro+' - Servidor: '+sMatricula+', não está Ativo nessa Folha nesse Mês/Ano');
   End;
   Panel1.Caption:= '';
   edTotRegArquivo.Text:= IntToStr(iTotRegArquivo);
   edTotRegImport.Text := IntToStr(iTotRegImport);
   edTotalImport.Text  := CurrToStr(crValImportado);
   If mTbServidor.RecordCount > 0 Then
   Begin
      memLog.Lines.Add('- Total de Registros do Arquivo: '+edTotRegArquivo.Text);
      memLog.Lines.Add('- Total de Servidores do Arquivo: '+IntToStr(iQtFuncArquivo));
      memLog.Lines.Add('- Total de Servidores importados: '+IntToStr(iQtFuncImport));
      Mensagem('ARQUIVO IMPORTADO COM SUCESSO !','AVISO !!!',MB_ICONEXCLAMATION+MB_OK);
      dbgServidores.SetFocus;
   End;
   CloseFile(tfArq);
   Screen.Cursor := crDefault;
}
end;

procedure TfrmLanctoImportar.VerServidor(sCPF: string);
begin
   {
   qryServidor.Close;
   qryServidor.Params[0].Value := sCPF;
   qryServidor.Open;
   if not qryServidorNOME_SERVIDOR.IsNull then
   begin
      cdsServidor2.Close;
      qryServidor2.ParamByName('pIdServidor').Value:= qryServidorID.Value;
      qryServidor2.ParamByName('pAnoMes').Value    := glb_sAnoMesTrab;
      qryServidor2.ParamByName('pParcela').Value   := glb_sParcela;
      cdsServidor2.Open;
   end;
   }
end;

procedure TfrmLanctoImportar.ExecutePrograma(Nome, Parametros: String);
Var
   Comando: Array[0..1024] of Char;
   Parms: Array[0..1024] of Char;
begin
   StrPCopy (Comando, Nome);
   StrPCopy (Parms, Parametros);
   ShellExecute (0, Nil, Comando, Parms, Nil, SW_Shownormal);
end;

Procedure TfrmLanctoImportar.SetColGrid(iCol: Integer);
begin
   lblTitColPesquisa.Enabled:= GridDBTableView1.Columns[iCol].Tag=1;
   edPesquisa.Enabled       := lblTitColPesquisa.Enabled;
   mTbServidor.IndexFieldNames := GridDBTableView1.Columns[iCol].
      DataBinding.FieldName;
end;

end.
