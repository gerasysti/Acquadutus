unit AtualizadorSistemaNovo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxMemo, FMTBcd, DB, SqlExpr, StrUtils,
  Buttons, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, Provider,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DbClient,
  Grids, DBGrids, cxRadioGroup, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, ZipForge, cxProgressBar,
  DateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, DBCtrls, cxPC;

type
  TfrmAtualizadorSistema = class(TfrmPadrao1)
    Panel: TPanel;
    btnFechar: TBitBtn;
    OpenDialog1: TOpenDialog;
    btnAtualizar: TBitBtn;
    btnLimpar: TBitBtn;
    zfBackup: TZipForge;
    idFTP: TIdFTP;
    qryRel: TSQLQuery;
    provRel: TDataSetProvider;
    cdsRel: TClientDataSet;
    cdsRelID: TIntegerField;
    cdsRelNOME: TStringField;
    cdsRelDESCRICAO: TStringField;
    cdsRelDT_ATUALIZA: TDateField;
    cdsRelHORA_ATUALIZA: TStringField;
    Page1: TcxPageControl;
    tsRelTab: TcxTabSheet;
    tsRelServid: TcxTabSheet;
    GroupBox1: TGroupBox;
    lblProgresso: TLabel;
    lblVelocidade: TLabel;
    lblNomeArquivo: TLabel;
    pgbProgresso: TcxProgressBar;
    chkLiberacao: TCheckBox;
    chkExecutaveis: TCheckBox;
    Memo1: TMemo;
    Label1: TLabel;
    lblDtUltAtulizaDb: TLabel;
    lblHoraUltAtualizaDb: TLabel;
    btnVerAlterBanco: TBitBtn;
    lblProgresso2: TLabel;
    lblVelocidade2: TLabel;
    pgbProgresso2: TcxProgressBar;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    mTbScript: TClientDataSet;
    mTbScriptID: TIntegerField;
    mTbScriptDATA_ALTERA: TDateField;
    mTbScriptHORA_ALTERA: TStringField;
    mTbScriptCOMANDO: TStringField;
    mTbScriptTEXTO_SCRIPT: TMemoField;
    mTbScriptSALVA: TStringField;
    mTbScriptEXIBE: TStringField;
    dsScript: TDataSource;
    chkExibTodosComand: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure idFTPWork(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
    procedure idFTPWorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure idFTPWorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure btnLimparClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cbOpcaoPropertiesCloseUp(Sender: TObject);
    procedure cbOpcaoPropertiesPopup(Sender: TObject);
    procedure chkExecutaveisClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVerAlterBancoClick(Sender: TObject);
    procedure chkExibTodosComandClick(Sender: TObject);
    procedure Page1Change(Sender: TObject);
  private
    pv_lBaixouBkp,
    pv_lBaixouAcqua,
    pv_lAtualizouBco: Boolean;
    pv_sNomeArqBaixando: string;
    pv_tInicioTranferencia: TTime;
    pv_iFileSize: Integer;
    pv_sNomeArqBkp,
    pv_sNomeArqAqcua,
    pv_sPathAtualizaExe: string;
    procedure ExecutaConsulta;
    procedure AtualizaExecutaveis;
    function ExtraiArquivo(sNomeArquivo,sPath: string): Boolean;
    procedure AtualizaRelatorios;
    function GetFileDate(Arquivo: String): String;
    procedure LiberacaoPrazoLicenca;
    procedure HabilitaComponentes(lOpcao: Boolean);
    procedure DelArqTemp(sPasta,sScopo: string);
    procedure AtualizaBancoDeDados;
    procedure AtualizaSistema;
    function VerAlteracoesBco: String;
    function ConectaServidor: boolean;
    function TemAlteracoes: Boolean;
    { Private declarations }
  public
    { Public declarations }
    pb_lBaixouAtualizacao: Boolean;
  end;

var
  frmAtualizadorSistema: TfrmAtualizadorSistema;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais, AtualizadorBanco;

{$R *.dfm}

procedure TfrmAtualizadorSistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DelArqTemp('','*.ZIP');
  DelArqTemp('','*.VER');
end;

procedure TfrmAtualizadorSistema.FormCreate(Sender: TObject);
Var
  dDtTemp: TDate;
  oQry1  : TSQLQuery;
  sHoraVerDb : String[8];
  sDtTemp : string[10];
  sHoraTemp: string[8];
begin
  inherited;
  Memo1.Lines.Clear;
  lblProgresso.Caption := '';
  lblVelocidade.Caption:= '';
  lblNomeArquivo.Caption:= '';
  pv_iFileSize := 0;

  chkExibTodosComand.Checked := False;
  mTbScript.CreateDataSet;
  mTbScript.IndexFieldNames:= 'DATA_ALTERA;HORA_ALTERA;ID';
  mTbScript.Open;
  lblProgresso.Caption        := '';
  lblVelocidade.Caption       := '';
  try
     sDtTemp := Pesquisa('CONFIG_SISTEMA','ID','1','DT_VER_DB','');
  except
     sDtTemp := '01/01/1901';
  end;
  lblDtUltAtulizaDb.Caption := sDtTemp;
  sHoraTemp := '00:00:01';
  if sDtTemp <> '01/01/1901' then
  begin
     try
        sHoraTemp := Pesquisa('CONFIG_SISTEMA','ID','1','HORA_VER_DB','');
     except
        CriaCampoTab('CONFIG_SISTEMA','HORA_VER_DB','"VARCHAR(8)"');
     end;
  end;

  sHoraVerDb := sHoraTemp;
  lblHoraUltAtualizaDb.Caption:= sHoraTemp;

  if Trim(sDtTemp) <> '01/01/1901' then
  begin
     dDtTemp := StrToDate(sDtTemp);
     oQry1 := TSQLQuery.Create(Self);
     oQry1.SQLConnection := dmPrincipal.SConPrincipal;
     oQry1.sql.Add('update config_sistema set dt_ver_db = :pDt where id = 1');
     oQry1.Params[0].AsDate := dDtTemp;
     try
        oQry1.ExecSQL;
     finally
        FreeAndNil(oQry1);
     end;
     lblDtUltAtulizaDb.Caption := DateToStr(dDtTemp);
  end;
  pv_iFileSize := 0;

end;

procedure TfrmAtualizadorSistema.FormShow(Sender: TObject);
begin
  inherited;
  lblProgresso2.Caption := '';
  lblVelocidade2.Caption := '';
  pb_lBaixouAtualizacao := False;
  HabilitaComponentes(True);
  Page1.ActivePageIndex := 0;

end;

procedure TfrmAtualizadorSistema.idFTPWork(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCount: Int64);
var
   nVelocidade: Double;
begin
   if (idFTP.Tag = 1) then
   begin
      if Page1.ActivePageIndex = 0 then
      begin
         pgbProgresso.Position := AWorkCount;
         nVelocidade := (AWorkCount/1024) / SecondSpan(Time, pv_tInicioTranferencia);
         lblVelocidade.Caption := FormatFloat('#,##0.00', nVelocidade)+' Kb/s ';
         lblProgresso.Caption := FormatFloat('#,##0.00', AWorkCount/1024)+' Kb de '+
            FormatFloat('#,##0.00', pv_iFileSize/1024)+' Kb';
      end else
      begin
         pgbProgresso2.Position := AWorkCount;
         nVelocidade := (AWorkCount/1024) / SecondSpan(Time, pv_tInicioTranferencia);
         lblVelocidade2.Caption := FormatFloat('#,##0.00', nVelocidade)+' Kb/s ';
         lblProgresso2.Caption := FormatFloat('#,##0.00', AWorkCount/1024)+' Kb de '+
            FormatFloat('#,##0.00', pv_iFileSize/1024)+' Kb';
      end;

      Application.ProcessMessages;

   end;

   {
   if g_bParar then
   begin
      idFTP.Abort;

      try // embora abort já desconecta, é necessário chamar Disconnect para ocorrer o OnDisconnected
         idFTP.Disconnect;
      except
         //
      end;
   end;
   }
end;

procedure TfrmAtualizadorSistema.idFTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin

   if Page1.ActivePageIndex = 0 then
   begin

      lblNomeArquivo.Caption := pv_sNomeArqBaixando;
      //AWorCountMax não é confiável, por isso o uso de iFileSize, capturado antes de Put e Get
      if (idFTP.Tag = 1) then
      begin
         pv_tInicioTranferencia := Time-0.00001; //0.00001 = 1 segundo //evita divisão por 0
            pgbProgresso.Position := 0;
         pgbProgresso.Properties.Max := pv_iFileSize;
            lblProgresso.Caption := FormatFloat('#,##0.00', 0)+' Kb / '+
            FormatFloat('#,##0.00', pv_iFileSize/1024)+
            ' Kb (0 Kb/s)';
      end;
   end else
   begin
      if (idFTP.Tag = 1) then
      begin
         pv_tInicioTranferencia := Time-0.00001; //0.00001 = 1 segundo //evita divisão por 0
            pgbProgresso2.Position := 0;
         pgbProgresso2.Properties.Max := pv_iFileSize;
            lblProgresso2.Caption := FormatFloat('#,##0.00', 0)+' Kb / '+
            FormatFloat('#,##0.00', pv_iFileSize/1024)+
            ' Kb (0 Kb/s)';
      end;
   end;

end;

procedure TfrmAtualizadorSistema.idFTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
   if Page1.ActivePageIndex = 0 then
   begin
      lblProgresso.Caption  := '';
      lblVelocidade.Caption := '';
      lblNomeArquivo.Caption:= '';
      pgbProgresso.Position := 0;
   end else
   begin
      lblProgresso2.Caption  := '';
      lblVelocidade2.Caption := '';
      pgbProgresso2.Position := 0;
   end;
end;

procedure TfrmAtualizadorSistema.btnAtualizarClick(Sender: TObject);
begin

   if Page1.ActivePageIndex = 0 then
      if (not chkLiberacao.Checked) and
         (not chkExecutaveis.Checked) then
      begin
         Mensagem('Você precisa marcar pelo uma opção de Atualização...','Atenção !!!',
            MB_OK+MB_ICONWARNING);
         exit;
      end;

   if Page1.ActivePageIndex = 0 then
   begin
      if not ConectaServidor then exit;

      if chkLiberacao.Checked then
         LiberacaoPrazoLicenca;

     if chkExecutaveis.Checked then
        AtualizaSistema;

   end else
   begin
      if TemAlteracoes then
      begin
         AtualizaBancoDeDados;
         Page1.ActivePageIndex := 0;
      end;
   end;

   if idFTP.Connected then
      idFTP.Disconnect;

   Mensagem('Processo Concluído ...','TERMINOU !!!',MB_OK+MB_ICONINFORMATION);

   Panel.Caption := '';
   Application.ProcessMessages;
   btnFechar.SetFocus;

end;

procedure TfrmAtualizadorSistema.btnCancelarClick(Sender: TObject);
begin
   btnLimpar.Click;
end;

procedure TfrmAtualizadorSistema.btnLimparClick(Sender: TObject);
begin
   if Page1.ActivePageIndex = 0 then
   begin
      Memo1.Lines.Clear;
      pgbProgresso.Position := 0;
      lblProgresso.Caption := '';
      lblVelocidade.Caption := '';
      lblNomeArquivo.Caption := '';
      HabilitaComponentes(True);
   end else
   begin
      pgbProgresso2.Position := 0;
      lblProgresso2.Caption := '';
      lblVelocidade2.Caption := '';
      mTbScript.EmptyDataSet;
      mTbScript.Close;
      mTbScript.Open;
      Panel.Caption := '';
      Page1.ActivePageIndex := 0;
   end;
end;

procedure TfrmAtualizadorSistema.btnVerAlterBancoClick(Sender: TObject);
begin

  if not idFTP.Connected then
     if not ConectaServidor then exit;
  VerAlteracoesBco;

end;

procedure TfrmAtualizadorSistema.cbOpcaoPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAtualizadorSistema.cbOpcaoPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAtualizadorSistema.chkExecutaveisClick(Sender: TObject);
begin
  //if chkExecutaveis.Checked then
  //   chkRelatorios.Checked := True;
end;

procedure TfrmAtualizadorSistema.chkExibTodosComandClick(Sender: TObject);
begin
  mTbScript.DisableControls;
  mTbScript.Filtered := False;
  if not chkExibTodosComand.Checked then
     mTbScript.Filtered := True;
  mTbScript.EnableControls;
end;

procedure TfrmAtualizadorSistema.ExecutaConsulta;
begin
end;

procedure TfrmAtualizadorSistema.AtualizaExecutaveis;
var
   SearchRec  : TSearchRec;
   iErroConect: integer;
   slVersao   : TStringList;
   sVersaoFTP_Acqua,
   sVerExec_Acqua,
   sVerExeAtualiza_Acqua,
   sVersaoFTP_Bkp,
   sVerExec_Bkp,
   sVerExeAtualiza_Bkp  : string[12];
   sNomeArquivo: string;
   lAtualizar  : Boolean;
   sMsgErro: string;
begin

   Screen.Cursor := crHourGlass;
   slVersao := TStringList.Create;
   lAtualizar := False;

   pb_lBaixouAtualizacao := False;

   pv_lBaixouBkp  := False;
   pv_lBaixouAcqua:= False;

   Memo1.Lines.Add('Atualizando Executáveis.');
   Memo1.Lines.Add('Verficando a Versão ...');

   try
      sVerExeAtualiza_Acqua := GetUltmaVersao('ACQUADUTUS');
      if sVerExeAtualiza_Acqua = '' then
         sVerExeAtualiza_Acqua := '00000';
   except
      sVerExeAtualiza_Acqua := '00000';
   end;
   try
      sVerExeAtualiza_Bkp   := GetUltmaVersao('BACKUP');
   except
      sVerExeAtualiza_Bkp   := '00000';
   end;
   Memo1.Lines.Add('Versão (Acquadutus) da PASTA LOCAL de Atualização ......: '+sVerExeAtualiza_Acqua);
   Memo1.Lines.Add('Versão (Módulo de Backup) da PASTA LOCAL de Atualização.: '+sVerExeAtualiza_Bkp);
   Memo1.Lines.Add('');
   Application.ProcessMessages;

   pv_sNomeArqBaixando := 'GERASYS_TI_APPS.VER';
   IdFTP.Tag := 0;
   pv_iFileSize := idFTP.Size(pv_sNomeArqBaixando);
   IdFTP.Tag := 1;
   IdFTP.Get(pv_sNomeArqBaixando,IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
      '\'+pv_sNomeArqBaixando, True, False);
   pgbProgresso.Position := 0;

   slVersao.LoadFromFile(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+'\'+pv_sNomeArqBaixando);
   sVersaoFTP_Acqua := Copy(slVersao[3],21,8);
   sVersaoFTP_Bkp   := Copy(slVersao[4],21,8);
   Memo1.Lines.Add('Versão (Acquadutus) da PASTA REMOTA de Atualização .....: '+sVersaoFTP_Acqua);
   Memo1.Lines.Add('Versão (Módulo de Backup) da PASTA REMOTA de Atualização: '+sVersaoFTP_Bkp);

   sVerExec_Acqua := Versao_Executavel(Application.ExeName);
   sVerExec_Bkp   := Versao_Executavel('BACKUP.EXE');

   sNomeArquivo := 'BACKUP_'+sVersaoFTP_Bkp+'.ZIP';

   if StrToInt(ExtraiPonto(sVersaoFTP_Bkp)) > StrToInt(ExtraiPonto(sVerExeAtualiza_Bkp)) then
   begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Detectada nova Versão (Módulo de Backup).');
      pv_sNomeArqBaixando := sNomeArquivo;
      IdFTP.Tag := 0;
      pv_iFileSize := idFTP.Size(pv_sNomeArqBaixando);
      IdFTP.Tag := 1;
      Memo1.Lines.Add('Baixando arquivo ...');
      IdFTP.Get(sNomeArquivo,IncludeTrailingPathDelimiter(
         pv_sPathAtualizaExe)+sNomeArquivo, True, False);
      Memo1.Lines.Add('Arquivo baixado com sucesso ...');
      pv_sNomeArqBkp := pv_sNomeArqBaixando;
      pv_lBaixouBkp := True;

   end else
   begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Não foi encontrada uma nova Versão (Módulo de Backup). '+
        'O Mesmo está Atualizado ...');
   end;

   sNomeArquivo := 'ACQUADUTUS_'+sVersaoFTP_Acqua+'.ZIP';

   if StrToInt(ExtraiPonto(sVersaoFTP_Acqua)) > StrToInt(ExtraiPonto(sVerExeAtualiza_Acqua)) then
   begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Detectada nova Versão (Acquadutu$).');
      pv_sNomeArqBaixando := sNomeArquivo;
      IdFTP.Tag := 0;
      pv_iFileSize := idFTP.Size(pv_sNomeArqBaixando);
      IdFTP.Tag := 1;
      Memo1.Lines.Add('Baixando arquivo ...');
      IdFTP.Get(sNomeArquivo,IncludeTrailingPathDelimiter(
         pv_sPathAtualizaExe)+sNomeArquivo, True, False);
      Memo1.Lines.Add('Arquivo baixado com sucesso ...');
      pv_sNomeArqAqcua:= pv_sNomeArqBaixando;
      pv_lBaixouAcqua := True;
   end else
   begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Não foi encontrada uma nova Versão (Acquadutu$). '+'O Mesmo está Atualizado ...');
   end;

   FreeAndNil(slVersao);
   pgbProgresso.Position := 0;
   Screen.Cursor := crDefault;

end;

procedure TfrmAtualizadorSistema.LiberacaoPrazoLicenca;
var
   iConta      : integer;
   slContrato  : TStringList;
   sNomeArquivo: string;
   lBaixouArq,
   lCNPJ_OK    : Boolean;
   sMsgErro    : string;
   sCNPJ_Orgao,
   sCNPJ_Temp  : string[14];
   sNomeApp    : string[12];
   sUltAnoMesPago,
   sAnoMesTrava,
   sAnoMesLiberado: string[6];
   sQuadrimLiberado: string[6];
   sContratoAtivo: string[1];
   sAnoMesFimLicenca: string[20];
   sQuadrimTemp: string[9];
   sTextSQL: string;
begin

   Screen.Cursor := crHourGlass;

   Memo1.Lines.Add('Atualizando Liberação/Prazo da Licença.');

   sCNPJ_Orgao := Pesquisa('CONFIG_ORGAO','ID','1','CNPJ','');
   sCNPJ_Orgao := Criptografa(sCNPJ_Orgao,'2',14);

   sTextSQL := 'UPDATE CONFIG_ORGAO SET ANO_MES_TRAVA = ';

   lBaixouArq := False;

   pv_sNomeArqBaixando := 'CONTROLE_PAGTO_GERAL.CTRO';
   IdFTP.Tag := 0;
   pv_iFileSize := idFTP.Size(pv_sNomeArqBaixando);
   IdFTP.Tag := 1;
   IdFTP.Get(pv_sNomeArqBaixando,IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
      pv_sNomeArqBaixando , True, False);
   pgbProgresso.Position := 0;
   Application.ProcessMessages;
   lBaixouArq := True;

   if lBaixouArq then
   begin

      slContrato := TStringList.Create;
      slContrato.LoadFromFile(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+pv_sNomeArqBaixando);
      if FileExists(IncludeTrailingPathDelimiter(
            pv_sPathAtualizaExe)+pv_sNomeArqBaixando) then
         DeleteFile(IncludeTrailingPathDelimiter(
            pv_sPathAtualizaExe)+pv_sNomeArqBaixando);
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('Verificando pagamentos ... ');
      lCNPJ_OK   := False;
      for iConta := 1 to slContrato.Count - 1 do
      begin
         sNomeApp      := Copy(slContrato[iConta],8,12);
         sCNPJ_Temp    := Copy(slContrato[iConta],38,14);
         sContratoAtivo:= Copy(slContrato[iConta],78,1);
         if (sCNPJ_Temp = sCNPJ_Orgao) and
            (Trim(sNomeApp) = 'ACQUADUTUS') then
         begin
            lCNPJ_OK := True;
            if sContratoAtivo = 'S' then
            begin
               sUltAnoMesPago  := Copy(slContrato[iConta],54,6);
               sAnoMesTrava    := Copy(slContrato[iConta],65,6);
               sQuadrimLiberado:= '25380';
               Memo1.Lines.Add(' ');
               Memo1.Lines.Add('Último Pagamento      : '+RightStr(sUltAnoMesPago,2)+'/'+
                  LeftStr(sUltAnoMesPago,4)+' ...');
               Memo1.Lines.Add(' ');
               Memo1.Lines.Add('Sistema Liberado até  : '+RightStr(sAnoMesTrava,2)+'/'+
                  LeftStr(sAnoMesTrava,4)+' ...');
               Memo1.Lines.Add(' ');

               sAnoMesFimLicenca :=
                  '0 '+
                  leftStr(sQuadrimLiberado,4)+
                  '09'+
                  RightStr(sAnoMesTrava,2)+
                  Copy(sAnoMesTrava,3,2)+
                  '13 '+
                  LeftStr(sAnoMesTrava,2)+
                  '5'+
                  Copy(sQuadrimLiberado,5,1);
               //sAnoMesFimLicenca := CriptLiberaPrazoLicenca(sQuadrimLiberado,sAnoMesTrava);

// 0-QQQQ09MMaa13-AA5Q-
// 12345678901234567890
               sAnoMesFimLicenca := Criptografa(sAnoMesFimLicenca,'1',20);
               glb_sAnoMesTrava  := sAnoMesTrava;
               sTextSQL := sTextSQL + QuotedStr(sAnoMesFimLicenca);
               try
                  dmPrincipal.SConPrincipal.ExecuteDirect(sTextSQL);
                  Memo1.Lines.Add(' ');
                  Memo1.Lines.Add('Atualização concluída ...');
               except
               end;
            end else
            begin
               Memo1.Lines.Add(' ');
               Memo1.Lines.Add('O Contrato com este Órgão está Encerrado ...');
            end;
            {
            0 000MM00 0A2001A100
            12345679901234567990
            }
            Break; // já encontrou o cnpj e já fez o q tinha q fazer
         end;
      end;
   end;

   if not lCNPJ_OK then
   begin
      Memo1.Lines.Add(' ');
      Memo1.Lines.Add('CNPJ do Órgão NÃO encontrado. Entre em contato com a GERASYS.TI ...');
   end;

   pgbProgresso.Position := 0;
   Screen.Cursor := crDefault;

end;

procedure TfrmAtualizadorSistema.Page1Change(Sender: TObject);
begin
  chkExibTodosComand.Visible := (Page1.ActivePageIndex=1);
end;

function TfrmAtualizadorSistema.ExtraiArquivo(sNomeArquivo,
   sPath: string): Boolean;
begin

   //Mensagem(sNomeArquivo+' - '+sPathAtualizaExe,'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);

   with zfBackup do
   begin
      CloseArchive;
      FileName := sNomeArquivo;
      BaseDir := sPath;
      try
         try
            OpenArchive(fmOpenRead);
            ExtractFiles('*.*');
            Memo1.Lines.Add('Arquivo '+sNomeArquivo+' extraído com êxito na Pasta '+
               sPath+' ...');
            Memo1.Lines.Add('');
         except
            on E: Exception do
            begin
               Memo1.Lines.Add('Nome do Arquivo: '+FileName);
               Memo1.Lines.Add('Pasta de Destino: '+BaseDir);
               Mensagem('Não foi possível Descompactar o Arquivo ...'+#13+
                '('+E.Message+#13+
                'Pasta de Destino: '+sPath+')',
               'Erro !!!',MB_OK+MB_ICONERROR);
            end;
         end;
      finally
         CloseArchive;
      end;
   end;
end;

function TfrmAtualizadorSistema.GetFileDate(Arquivo: String): String;
var
  FHandle: integer;
begin
  FHandle := FileOpen(Arquivo, 0);
  try
    Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;

procedure TfrmAtualizadorSistema.HabilitaComponentes(lOpcao: Boolean);
begin
  GroupBox1.Enabled := lOpcao;
  btnAtualizar.Enabled:= lOpcao;
end;


procedure TfrmAtualizadorSistema.DelArqTemp(sPasta,sScopo: string);
Var
   SearchRec: TSearchRec;
   sPastaPrincipal: string;
   slArq: TStringList;
   iConta: Integer;
begin

   sPastaPrincipal := pv_sPathAtualizaExe;
   slArq := TStringList.Create;
   iConta := 0;
   if sPasta='' then
      sPastaPrincipal := sPastaPrincipal+'\'
   else
   if (sPasta<>'') and (RightStr(Trim(sPasta),1)<>'\') then
      sPasta := sPasta+'\';
   if FindFirst(sPastaPrincipal+sPasta+sScopo, faArchive, SearchRec) = 0 then
   begin
     repeat
       if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
       begin
          slArq.Add(SearchRec.Name);
          Inc(iConta);
       end;
     until
       FindNext(SearchRec) <> 0;
   end;
   if iConta > 0 then
      for iConta := 0 to slArq.Count - 1 do
         DeleteFile(pv_sPathAtualizaExe+sPasta+slArq[iConta]);
   FreeAndNil(slArq);

end;

procedure TfrmAtualizadorSistema.AtualizaBancoDeDados;
Var
   iErro   : Integer;
   dDtAtual: TDate;
   dUltData: TDate;
   tUltHora: String[8];
   sTextSQL: string;
   sDtTempSave: string;
begin

   if (not mTbScript.Active) or
      (mTbScript.RecordCount=0) then exit;

   Screen.Cursor := crHourGlass;

   Panel.Caption   := ' Aguarde, Salvando Alterações ...';
   pv_lAtualizouBco:= False;
   Application.ProcessMessages;

   mTbScript.First;
   while not mTbScript.eof do
   begin

     if mTbScriptSALVA.Value <> 'S' then
     begin
        mTbScript.Next;
        Continue;
     end;

     iErro := 0;
     try
        dmPrincipal.SConPrincipal.ExecuteDirect(DBMemo1.Text);
     except
        on E: Exception do
        begin
          iErro := 1;
          Mensagem('Não foi possível executar essas instruções ...'+#13+
            '('+E.Message+')',
            'E R R O !!!',MB_OK+MB_ICONERROR);
        end;
     end;

     if iErro = 0 then
        pv_lAtualizouBco := True;

     //if iErro = 0 then
     //   Mensagem('Operação realizada com sucesso ...',
     //      'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);

     dUltData := mTbScriptDATA_ALTERA.Value;
     tUltHora := mTbScriptHORA_ALTERA.Value;
     mTbScript.Next;

   end;

   if pv_lAtualizouBco then
   begin
      dDtAtual    := dUltData;
      sDtTempSave := FormataDataSaveDirect(dUltData);
      sTextSQL := 'update config_sistema set dt_ver_db = '+sDtTempSave+', hora_ver_db = '+
         QuotedStr(tUltHora)+' where id = 1';
      dmPrincipal.SConPrincipal.ExecuteDirect(sTextSQL);

      lblDtUltAtulizaDb.Caption := DateToStr(dUltData);
      lblHoraUltAtualizaDb.Caption := tUltHora;

      OcultaTriggers_e_procs;
      Mensagem('Atualização do Banco de Dados.'+#13+'Processo Concluído ...',
         'Aviso !!!',MB_OK+MB_ICONWARNING);

   end else

      Mensagem('Processo Concluído sem atualizações ...','Aviso !!!',MB_OK+MB_ICONWARNING);

   btnLimpar.Click;
   Screen.Cursor := crDefault;

end;

procedure TfrmAtualizadorSistema.AtualizaSistema;
Var
   iErroConect: Integer;
   sMsgErro: String;
begin

   Panel.Caption := ' Atualizando o Sistema, aguarde ....';
   Application.ProcessMessages;

   Memo1.Lines.Add(' ');

   AtualizaExecutaveis;

   if pv_lBaixouBkp then
   begin
      if ExtraiArquivo(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+pv_sNomeArqBkp,
            pv_sPathAtualizaExe) then
         pb_lBaixouAtualizacao := True;
   end;
   if pv_lBaixouAcqua then
   begin
      if ExtraiArquivo(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+pv_sNomeArqAqcua,
            pv_sPathAtualizaExe) then
         pb_lBaixouAtualizacao := True;
   end;

   if pv_lBaixouAcqua then
   begin

      Panel.Caption := 'Aguarde, Atualizando Banco de Dados ...';
      Application.ProcessMessages;

      Page1.ActivePageIndex := 1;

      if VerAlteracoesBco() = 'S' then
      begin
         AtualizaBancoDeDados;
         Page1.ActivePageIndex := 0;
      end;
   end;

   AtualizaRelatorios;

   btnAtualizar.Enabled := False;
   pgbProgresso.Position:= 0;
   Panel.Caption        := '';
   Application.ProcessMessages;

End;

function TfrmAtualizadorSistema.VerAlteracoesBco: String;
Var
   slScript: TStringList;
   iConta,
   iConta2: Integer;
   sLinha: string;
   iId: Integer;
   sData: String[10];
   sHora: String[8];
   sComando: String[240];
   sTextoScrit: TStringList;
   iErroConect: Integer;
   sMsgErro: String;
   sSalva: String[1];
   sTemAlteracao: string[1];
begin

   Screen.Cursor := crHourGlass;

   sTextoScrit  := TStringList.Create;
   slScript     := TStringList.Create;
   sTemAlteracao:= 'N';

      {
      idFTP.ChangeDir('CLIENTES/ATUALIZA');       // já está na function ConectaServidor
      pv_sPathAtualizaExe := GetPathAtualizaVer;
      }

   pv_sNomeArqBaixando := 'ACQUAATUALIZABANCO.SCRIPT';
   IdFTP.Tag := 0;
   pv_iFileSize := idFTP.Size(pv_sNomeArqBaixando);
   IdFTP.Tag := 1;
   IdFTP.Get(pv_sNomeArqBaixando,IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
      pv_sNomeArqBaixando , True, False);
   pgbProgresso.Position := 0;
   Application.ProcessMessages;

   slScript.LoadFromFile(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
      '\'+pv_sNomeArqBaixando);
   iId := 999;
   iConta := 0;
   while True do
   begin
      sLinha := slScript[iConta];
      if LeftStr(Trim(sLinha),6) = '[DATA]' then
      begin
         sTextoScrit.Clear;
         Dec(iId);
         sData := Copy(Trim(sLinha),8,10);
         sHora := Copy(Trim(sLinha),22,8);
         if Trim(sHora) = '' then
            sHora := '00:00:01';
         Inc(iConta,2);
         iConta2 := 1;
         while True do
         begin
            sLinha := slScript[iConta];
            if Trim(sLinha) = '}' then Break;
            if iConta2 = 1 then
            begin
               sComando := sLinha;
               Inc(iConta2);
            end;
            sTextoScrit.Add(sLinha);
            Inc(iConta);
         end;
         mTbScript.Insert;
         mTbScriptID.Value             := iId;
         mTbScriptDATA_ALTERA.AsString := sData;
         mTbScriptHORA_ALTERA.AsString := sHora;
         mTbScriptCOMANDO.Value        := sComando;
         mTbScriptTEXTO_SCRIPT.AsString:= sTextoScrit.Text;
         mTbScriptSALVA.Value          := 'N';
         mTbScriptEXIBE.Value          := 'N';
         mTbScript.Post;
         Inc(iConta);
      end;

      if Trim(slScript[iConta]) = '[FIM]' then  Break;

   end;

   mTbScript.DisableControls;
   mTbScript.First;
   while not mTbScript.eof do
   begin
      sSalva := 'N';
      if mTbScriptDATA_ALTERA.Value > StrToDate(lblDtUltAtulizaDb.Caption) then
         sSalva := 'S'
      else
      if (mTbScriptDATA_ALTERA.Value = StrToDate(lblDtUltAtulizaDb.Caption)) and
         (mTbScriptHORA_ALTERA.Value > lblHoraUltAtualizaDb.Caption) then
         sSalva := 'S';
      if sSalva = 'S' then
      begin
         sTemAlteracao := 'S';
         mTbScript.Edit;
         mTbScriptSALVA.Value := 'S';
         mTbScriptEXIBE.Value := 'S';
         mTbScript.Post;
      end;
      mTbScript.Next;
   end;

   mTbScript.Filtered := True;
   mTbScript.First;
   mTbScript.EnableControls;
   if sTemAlteracao <> 'S' then
      Mensagem('Não há alterações para o Banco de Dados ...','AVISO !!!',
         MB_OK+MB_ICONINFORMATION);

   FreeAndNil(sTextoScrit);
   FreeAndNil(slScript);
   DeleteFile(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
      '\ACQUAATUALIZABANCO.SCRIPT');

   btnVerAlterBanco.Enabled := False;

   pgbProgresso.Position := 0;
   Application.ProcessMessages;

   Result := sTemAlteracao;

   Screen.Cursor := crDefault;

end;

function TfrmAtualizadorSistema.ConectaServidor: boolean;
var
  iErroConect: Integer;
  sMsgErro: string;
begin

   Screen.Cursor := crHourGlass;
   pv_sPathAtualizaExe := GetPathAtualizaVer;

   Memo1.Lines.Clear;
   Memo1.Lines.Add('Aguarde, conectando ao Servidor Remoto ...');

   iErroConect := 1;
   try
     idFTP.Connect;
     iErroConect := 0;
   except
      on e: exception do
         sMsgErro := E.Message;
   end;

   Screen.Cursor := crDefault;

   if iErroConect = 1 then
   begin
      Memo1.Lines.Add('');
      Memo1.Lines.Add('Não foi possível conectar com o Servidor Remoto ...');
      Memo1.Lines.Add('Erro >> '+sMsgErro+' <<');
      Memo1.Lines.Add('Vefique a sua Conexão de Internet ...');
      exit;
   end else
      Memo1.Lines.Add('Servidor Remoto Conectado.');

   if iErroConect = 0 then
   Begin
      Try
         idFTP.ChangeDir('CLIENTES/ATUALIZA');
      except
         on E: Exception do
         begin
            Memo1.Lines.Add('Não foi possível acessar a Pasta de Atualização '+
              'do Servidor Remoto ...');
            Memo1.Lines.Add('Erro >> '+E.Message+' <<');
            iErroConect := 1;
         end;
      end;
   End;

   Result := (iErroConect=0);

end;

function TfrmAtualizadorSistema.TemAlteracoes: Boolean;
begin
   TemAlteracoes := False;
   mTbScript.DisableControls;
   mTbScript.First;
   while not mTbScript.eof do
   begin
      if mTbScriptSALVA.Value = 'S' then
      begin
         TemAlteracoes := True;
         Break;
      end;
      mTbScript.Next;
   end;
   mTbScript.First;
   mTbScript.EnableControls;
end;

procedure TfrmAtualizadorSistema.AtualizaRelatorios;
var
   iErroConect,
   iConta      : integer;
   slRelatorio : TStringList;
   sNomeArquivo: string;
   lBaixouArq  : Boolean;
   sMsgErro    : string;
   sDtArqOrigem,
   sDtArqDestino: String;
   dDtArqOrigem,
   dDtArqDestino: TDate;
   iHoraArqOrigem,
   iHoraArqDestino: Integer;
   sPathRel    : string;
   sArqOrigem,
   sArqDestino : string;
   SearchRec: TSearchRec;
   iQtdArqAdd,
   iQtdArqSubst: Integer;
begin

   Screen.Cursor := crHourGlass;
   iQtdArqAdd    := 0;
   iQtdArqSubst  := 0;

   sPathRel            := GetPathRel;
   sPathRel            := IncludeTrailingPathDelimiter(sPathRel);
   pv_sPathAtualizaExe := GetPathAtualizaVer;
   pv_sPathAtualizaExe := IncludeTrailingPathDelimiter(pv_sPathAtualizaExe);

   If Not DirectoryExists(pv_sPathAtualizaExe+'TEMP_REL') Then
      CreateDir(pv_sPathAtualizaExe+'TEMP_REL');

   DelArqTemp('\TEMP_REL','*.*');

   lBaixouArq := False;

   Memo1.Lines.Add('Atualizando Relatórios.');
   Memo1.Lines.Add('Baixando Arquivos de Relatórios ...');

   pv_sNomeArqBaixando := 'ACQUA_RELS.ZIP';
   IdFTP.Tag := 0;
   pv_iFileSize := idFTP.Size('ACQUA_RELS.ZIP');
   IdFTP.Tag := 1;
   IdFTP.Get('ACQUA_RELS.ZIP',pv_sPathAtualizaExe+'TEMP_REL\ACQUA_RELS.ZIP', True, False);
   pgbProgresso.Position := 0;
   Application.ProcessMessages;
   lBaixouArq := True;

   if lBaixouArq then
   begin

      ExtraiArquivo(pv_sPathAtualizaExe+'TEMP_REL\ACQUA_RELS.ZIP',pv_sPathAtualizaExe+'TEMP_REL');

      slRelatorio := TStringList.Create;

      if FindFirst(pv_sPathAtualizaExe+'TEMP_REL\*.fr3', faArchive, SearchRec) = 0 then
      begin
        repeat
          if (SearchRec.Name<>'.') and (SearchRec.Name<>'..') then
             slRelatorio.Add(SearchRec.Name);
        until
          FindNext(SearchRec) <> 0;
      end;

      //slRelatorio.LoadFromFile(pv_sPathAtualizaExe+'TEMP_REL\Relatorios.Descr');
      Memo1.Lines.Add('Comparando Arquivos ... ');
      Memo1.Lines.Add('');
      for iConta := 0 to slRelatorio.Count - 1 do
      begin

         sNomeArquivo := slRelatorio[iConta];
         //if sNomeArquivo = EmptyStr then continue;
         //if RightStr(Trim(sNomeArquivo),4) <> '.fr3' then
         //   sNomeArquivo := Trim(sNomeArquivo)+'.fr3';

         sArqDestino  := sPathRel+sNomeArquivo;
         sArqOrigem   := pv_sPathAtualizaExe+'TEMP_REL\'+sNomeArquivo;
         if not FileExists(sArqDestino) then
         begin
            CopyFile(PChar(sArqOrigem),PChar(sArqDestino),True);
            Memo1.Lines.Add('Arquivo: '+sNomeArquivo+' (Adicionado) -> Copiado com sucesso ...');
            Inc(iQtdArqAdd);
         end else
         begin
            {
            try
               sDtArqOrigem   := GetFileDate(sArqOrigem);
            except
               Memo1.Lines.Add('Erro ao Obter a Data do Arquivo Origem: '+sArqOrigem);
            end;
            try
               sDtArqDestino  := GetFileDate(sArqDestino);
            except
               Memo1.Lines.Add('Erro ao Obter a Data do Arquivo Destino: '+sArqDestino);
            end;
            try
               dDtArqOrigem   := StrToDate(LeftStr(sDtArqOrigem,10));
            except
               Memo1.Lines.Add('Erro ao Converter p/ a Data (Origem): '+sDtArqOrigem);
            end;
            try
               dDtArqDestino  := StrToDate(LeftStr(sDtArqDestino,10));
            except
               Memo1.Lines.Add('Erro ao Converter p/ a Data (Destino): '+sDtArqDestino);
               Memo1.Lines.Add(sArqDestino)
            end;
            iHoraArqOrigem := StrToInt(ExtraiPonto(Copy(sDtArqOrigem,12,5)));
            iHoraArqDestino:= StrToInt(ExtraiPonto(Copy(sDtArqDestino,12,5)));

            if dDtArqOrigem > dDtArqDestino then
            begin
               Memo1.Lines.Add('Arquivo: '+sNomeArquivo+' - (Modificado) -> copiado com sucesso ...');
               CopyFile(PChar(sArqOrigem),PChar(sArqDestino),True);
               Inc(iQtdArqSubst);
            end else
            if (dDtArqOrigem = dDtArqDestino) and
               (iHoraArqOrigem > iHoraArqDestino) then
            begin
               Memo1.Lines.Add('Arquivo: '+sNomeArquivo+' - (Modificado) -> copiado com sucesso ...');
               CopyFile(PChar(sArqOrigem),PChar(sArqDestino),True);
               Inc(iQtdArqSubst);
            end;

            DeleteFile(sArqOrigem);
            }

         end;
      end;
   end;

   //DelArqTemp('\TEMP_REL','*.*');

   if iQtdArqAdd > 0 then
      Memo1.Lines.Add(IntToStr(iQtdArqAdd)+' Arquivo(s) adicionado(s) ...')
   else
      Memo1.Lines.Add('Nenhum Arquivo adicionado ou substituido ...');

   {
   if iQtdArqSubst > 0 then
      Memo1.Lines.Add(IntToStr(iQtdArqSubst)+' Arquivo(s) substituido(s) ...');
   if iQtdArqAdd+iQtdArqSubst = 0 then
      Memo1.Lines.Add('Nenhum Arquivo adicionado ou substituido ...');
   }

   {
   if FileExists(pv_sPathAtualizaExe+'TEMP_REL\REMUN_RELS.ZIP') then
      DeleteFile(pv_sPathAtualizaExe+'TEMP_REL\REMUN_RELS.ZIP');
   }
   for iConta := 0 to 10000000 do;

   for iConta := 0 to slRelatorio.Count - 1 do
   begin
      sNomeArquivo := slRelatorio[iConta];
      DeleteFile(sArqOrigem);
   end;

   pgbProgresso.Position := 0;
   Application.ProcessMessages;

   Screen.Cursor := crDefault;

end;

end.
