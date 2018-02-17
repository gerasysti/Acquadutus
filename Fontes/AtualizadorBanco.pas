unit AtualizadorBanco;

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
  DateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, DBCtrls;

type
  TfrmAtualizadorBanco = class(TfrmPadrao1)
    Panel: TPanel;
    btnFechar: TBitBtn;
    OpenDialog1: TOpenDialog;
    DataSource1: TDataSource;
    Qry1: TSQLQuery;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    GroupBox1: TGroupBox;
    gbDadosRel3: TGroupBox;
    btnAtualizar: TBitBtn;
    idFTP: TIdFTP;
    pgbProgresso: TcxProgressBar;
    lblProgresso: TLabel;
    lblVelocidade: TLabel;
    btnLimpar: TBitBtn;
    zfBackup: TZipForge;
    mTbScript: TClientDataSet;
    mTbScriptID: TIntegerField;
    mTbScriptDATA_ALTERA: TDateField;
    mTbScriptTEXTO_SCRIPT: TMemoField;
    DBGrid1: TDBGrid;
    dsScript: TDataSource;
    mTbScriptCOMANDO: TStringField;
    DBMemo1: TDBMemo;
    btnVerifAtualizacoes: TBitBtn;
    mTbScriptSALVA: TStringField;
    Label1: TLabel;
    lblDtUltAtulizaDb: TLabel;
    lblHoraUltAtualizaDb: TLabel;
    Label3: TLabel;
    mTbScriptHORA_ALTERA: TStringField;
    chkExibTodosComand: TCheckBox;
    mTbScriptEXIBE: TStringField;
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
    procedure btnVerifAtualizacoesClick(Sender: TObject);
    procedure chkExibTodosComandClick(Sender: TObject);
  private
    pv_lBaixouBkp,
    pv_lBaixouremun: Boolean;
    pv_sNomeArqBaixando: string;
    pv_tInicioTranferencia: TTime;
    pv_iFileSize: Integer;
    pv_sNomeArqBkp,
    pv_sNomeArqRemun,
    pv_sPathAtualizaExe: string;
    procedure HabilitaComponentes(lOpcao: Boolean);
    { Private declarations }
  public
    { Public declarations }
    pb_lAtualizaDireto: Boolean;
  end;

var
  frmAtualizadorBanco: TfrmAtualizadorBanco;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais;

{$R *.dfm}

procedure TfrmAtualizadorBanco.FormCreate(Sender: TObject);
Var
  dDtTemp: TDate;
  oQry1  : TSQLQuery;
  sHoraVerDb : String[8];
  sDtTemp : string[10];
  sHoraTemp: string[8];
begin
  inherited;
  if pb_lAtualizaDireto = null then
     pb_lAtualizaDireto := False;
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

procedure TfrmAtualizadorBanco.FormShow(Sender: TObject);
begin
  inherited;
  HabilitaComponentes(True);
  if pb_lAtualizaDireto then
  begin
     btnVerifAtualizacoes.Click;
     if mTbScript.RecordCount > 0 then

        btnAtualizar.Click;

     Close;

  end;

end;

procedure TfrmAtualizadorBanco.idFTPWork(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCount: Int64);
var
   nVelocidade: Double;
begin
   if (idFTP.Tag = 1) then
   begin
      pgbProgresso.Position := AWorkCount;

      nVelocidade := (AWorkCount/1024) / SecondSpan(Time, pv_tInicioTranferencia);

      lblVelocidade.Caption := FormatFloat('#,##0.00', nVelocidade)+' Kb/s ';
      lblProgresso.Caption := FormatFloat('#,##0.00', AWorkCount/1024)+' Kb de '+
         FormatFloat('#,##0.00', pv_iFileSize/1024)+' Kb';
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

procedure TfrmAtualizadorBanco.idFTPWorkBegin(ASender: TObject;
  AWorkMode: TWorkMode; AWorkCountMax: Int64);
begin

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

end;

procedure TfrmAtualizadorBanco.idFTPWorkEnd(ASender: TObject;
  AWorkMode: TWorkMode);
begin
   lblProgresso.Caption  := '';
   lblVelocidade.Caption := '';
   pgbProgresso.Position := 0;
end;

procedure TfrmAtualizadorBanco.btnAtualizarClick(Sender: TObject);
Var
   iErro: Integer;
   dDtAtual: TDate;
   oQry1: TSQLQuery;
   dUltData: TDate;
   tUltHora: String[8];
   lAtualizou: Boolean;
begin

   Screen.Cursor := crHourGlass;

   Panel.Caption := ' Aguarde, Salvando Alterações ...';
   Application.ProcessMessages;
   lAtualizou := False;

   mTbScript.First;
   while not mTbScript.eof do
   begin
     if mTbScriptSALVA.Value <> 'S' then
     begin
        mTbScript.Next;
        Continue;
     end;

     try
        dmPrincipal.SConPrincipal.ExecuteDirect(DBMemo1.Text);
        lAtualizou := True;
     except
        on E: Exception do
        begin
          iErro := 1;
          Mensagem('Não foi possível executar essas instruções ...'+#13+
            '('+E.Message+')',
            'E R R O !!!',MB_OK+MB_ICONERROR);
        end;
     end;
     //if iErro = 0 then
     //   Mensagem('Operação realizada com sucesso ...',
     //      'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);

     dUltData := mTbScriptDATA_ALTERA.Value;
     tUltHora := mTbScriptHORA_ALTERA.Value;
     mTbScript.Next;

   end;

   if lAtualizou then
   begin
      dDtAtual := dUltData;
      oQry1 := TSQLQuery.Create(Self);
      oQry1.SQLConnection := dmPrincipal.SConPrincipal;
      oQry1.sql.Add('update config_sistema set dt_ver_db = :pDt where id = 1');
      oQry1.Params[0].AsDate := dDtAtual;
      try
         oQry1.ExecSQL;
         oQry1.Close;
         oQry1.SQL.Clear;
         oQry1.sql.Add('update config_sistema set hora_ver_db = :pHora where id = 1');
         oQry1.Params[0].AsString := tUltHora;
         oQry1.ExecSQL;
      finally
         FreeAndNil(oQry1);
      end;

      lblDtUltAtulizaDb.Caption := DateToStr(date);
      lblHoraUltAtualizaDb.Caption := TimeToStr(Time);

      OcultaTriggers_e_procs;
      Mensagem('Atualização do Banco de Dados.'+#13+
        'Processo Concluído ...','Aviso !!!',MB_OK+MB_ICONWARNING);

   end else
      Mensagem('Processo Concluído sem atualizações ...','Aviso !!!',MB_OK+MB_ICONWARNING);

   btnLimpar.Click;
   Screen.Cursor := crDefault;

   if pb_lAtualizaDireto then
      btnFechar.Click;

end;

procedure TfrmAtualizadorBanco.btnCancelarClick(Sender: TObject);
begin
   btnLimpar.Click;
end;

procedure TfrmAtualizadorBanco.btnLimparClick(Sender: TObject);
begin
   pgbProgresso.Position := 0;
   lblProgresso.Caption := '';
   lblVelocidade.Caption := '';
   mTbScript.EmptyDataSet;
   mTbScript.Close;
   mTbScript.Open;
   Panel.Caption := '';
   Application.ProcessMessages;
   HabilitaComponentes(True);
end;

procedure TfrmAtualizadorBanco.btnVerifAtualizacoesClick(Sender: TObject);
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
begin

   Screen.Cursor := crHourGlass;
   Panel.Caption := ' Aguarde, Conectando ao Servidor Remoto ...';
   Application.ProcessMessages;

   sTextoScrit := TStringList.Create;
   slScript := TStringList.Create;

   iErroConect := 1;
   try
     idFTP.Connect;
     iErroConect := 0;
   except
      on e: exception do
         sMsgErro := E.Message;
   end;

   if iErroConect = 0 then
   begin
      idFTP.ChangeDir('CLIENTES/ATUALIZA');
      pv_sPathAtualizaExe := GetPathAtualizaVer;
      Panel.Caption := ' Conectado. Baixando arquivo de scripts ...';
      Application.ProcessMessages;
      IdFTP.Tag := 0;
      pv_iFileSize := idFTP.Size('ACQUAATUALIZABANCO.SCRIPT');
      IdFTP.Tag := 1;
      IdFTP.Get('ACQUAATUALIZABANCO.SCRIPT',IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
         '\ACQUAATUALIZABANCO.SCRIPT', True, False);
      pgbProgresso.Position := 0;
   end else
   begin
      Mensagem('Não foi possível conectar com o Servidor Remoto'+#13+
         'Vefique a Conexão da Internet.','Erro !!!',
         mb_ok+MB_ICONERROR);
   end;
   idFTP.Disconnect;

   Panel.Caption := '';
   Application.ProcessMessages;

   if iErroConect = 1 then
   begin
      Screen.Cursor := crDefault;
      Exit;
   end;

   slScript.LoadFromFile(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
      '\ACQUAATUALIZABANCO.SCRIPT');
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
         mTbScriptID.Value := iId;
         mTbScriptDATA_ALTERA.AsString := sData;
         mTbScriptHORA_ALTERA.AsString := sHora;
         mTbScriptCOMANDO.Value := sComando;
         mTbScriptTEXTO_SCRIPT.AsString := sTextoScrit.Text;
         mTbScriptSALVA.Value := 'N';
         mTbScriptEXIBE.Value := 'N';
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

   FreeAndNil(sTextoScrit);
   FreeAndNil(slScript);
   DeleteFile(IncludeTrailingPathDelimiter(pv_sPathAtualizaExe)+
      '\ACQUAATUALIZABANCO.SCRIPT');

   HabilitaComponentes(False);
   pgbProgresso.Position := 0;
   Application.ProcessMessages;
   Screen.Cursor := crDefault;

end;

procedure TfrmAtualizadorBanco.cbOpcaoPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAtualizadorBanco.cbOpcaoPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAtualizadorBanco.chkExibTodosComandClick(Sender: TObject);
begin
  mTbScript.DisableControls;
  mTbScript.Filtered := False;
  if not chkExibTodosComand.Checked then
     mTbScript.Filtered := True;
  mTbScript.EnableControls;
end;

procedure TfrmAtualizadorBanco.HabilitaComponentes(lOpcao: Boolean);
begin
  GroupBox1.Enabled := lOpcao;
  btnVerifAtualizacoes.Enabled := lOpcao;
  btnAtualizar.Enabled:= not lOpcao;
end;

end.
