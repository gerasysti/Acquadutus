unit Principal;

interface

uses
  StrUtils, DateUtils,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, SqlExpr, DB, DBClient, SimpleDS, Menus, IniFiles, ShellApi,
  ActnList, XPStyleActnCtrls, ActnMan, WideStrings, DBXInterbase, StdCtrls,
  cxHint, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxControls, cxGridCustomView, cxGrid, cxContainer,
  ToolWin, ComCtrls, ImgList, dxStatusBar, cxTreeView,
  cxTextEdit, cxMaskEdit, cxButtonEdit, cxDBEdit, Provider,
  dxBarExtItems, dxBar, cxLookAndFeels,
  cxLookAndFeelPainters, DBXFirebird, StdActns, XPMan, cxDropDownEdit,
  cxCalendar, ExtCtrls, cxButtons, cxGroupBox, cxLabel, Buttons, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinsdxStatusBarPainter, dxSkinsdxBarPainter, ActnCtrls, ActnMenus,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinXmas2008Blue, System.Actions;

type
  TfrmPrincipal = class(TForm)
    StatusBar1: TdxStatusBar;
    MainMenu1: TMainMenu;
    Tabelas1: TMenuItem;
    imBairro: TMenuItem;
    N2: TMenuItem;
    imSair1: TMenuItem;
    Lanamentos2: TMenuItem;
    imConsumHidrom: TMenuItem;
    N99: TMenuItem;
    Processamento1: TMenuItem;
    imRelatorios: TMenuItem;
    imRelTabelas: TMenuItem;
    N5: TMenuItem;
    imRelServidores: TMenuItem;
    N7: TMenuItem;
    imRelFinanceiros: TMenuItem;
    N14: TMenuItem;
    imRelDoctos: TMenuItem;
    N35: TMenuItem;
    imRelOutros: TMenuItem;
    Exportao1: TMenuItem;
    imFerramentas: TMenuItem;
    imSelectMesAnoTrab: TMenuItem;
    N13: TMenuItem;
    imBackup: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    Janelas1: TMenuItem;
    Tile1: TMenuItem;
    Cascade1: TMenuItem;
    ActionManager1: TActionManager;
    WindowCascade1: TWindowCascade;
    WindowClose1: TWindowClose;
    imLogradouro: TMenuItem;
    imLocalPagto: TMenuItem;
    N1: TMenuItem;
    imCadUnidConsum: TMenuItem;
    N10: TMenuItem;
    XPManifest1: TXPManifest;
    N6: TMenuItem;
    imConfigAjustes: TMenuItem;
    imCalcFaturaIndividual: TMenuItem;
    pnBarraFerramentas: TPanel;
    sbSair: TSpeedButton;
    imUsuarios: TMenuItem;
    N12: TMenuItem;
    imCalcFaturaBairro: TMenuItem;
    imEncerrarReabrirMovim: TMenuItem;
    imEditComandSQL: TMenuItem;
    Image1: TImage;
    N24: TMenuItem;
    N18: TMenuItem;
    imAlterarSenha: TMenuItem;
    imTrocarUsuario: TMenuItem;
    imAtualizar: TMenuItem;
    N27: TMenuItem;
    sbTabEventos: TSpeedButton;
    sbUnidConsum: TSpeedButton;
    sbFaturaAvulsa: TSpeedButton;
    sbLanctoLeitura: TSpeedButton;
    sbImportPagto: TSpeedButton;
    sbLanEventoServidor: TSpeedButton;
    sbLanPagtoFatura: TSpeedButton;
    sbHistFaturas: TSpeedButton;
    sbPrintRelFinanc: TSpeedButton;
    sbEncerraReabreMovim: TSpeedButton;
    sbBackup: TSpeedButton;
    sbCalcFaturaBairro: TSpeedButton;
    imTabTarifas: TMenuItem;
    N3: TMenuItem;
    imMsgFatura: TMenuItem;
    N4: TMenuItem;
    imOutroDebitoCredito: TMenuItem;
    N8: TMenuItem;
    imLanCorteReligacao: TMenuItem;
    N9: TMenuItem;
    imPagtoBaixaFatura: TMenuItem;
    N11: TMenuItem;
    imCalcularFaturaAvulsa: TMenuItem;
    N15: TMenuItem;
    imHistFaturas: TMenuItem;
    N16: TMenuItem;
    imImportArqPagto: TMenuItem;
    N17: TMenuItem;
    imRequerimentos: TMenuItem;
    imAtualizaLocal: TMenuItem;
    imSelecionaOrgao: TMenuItem;
    imCorrigeBaixa: TMenuItem;
    N20: TMenuItem;
    imEntidFinanc: TMenuItem;
    imContas: TMenuItem;
    imCadFavorec: TMenuItem;
    ransferirUnidConsumidora1: TMenuItem;
    N19: TMenuItem;
    imDecAnualQuita: TMenuItem;
    lblMesAnoTrab: TcxLabel;
    lblNada: TcxLabel;
    Grficos1: TMenuItem;
    ResumoFinanceiro1: TMenuItem;
    imTipoProdServic: TMenuItem;
    imCidades: TMenuItem;
    imDistritos: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure imSair1Click(Sender: TObject);
    procedure imBairroClick(Sender: TObject);
    procedure imConsumHidromClick(Sender: TObject);
    procedure imSelectMesAnoTrabClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure StatusBar1Panels1DblClick(Sender: TObject);
    procedure sbUnidConsumClick(Sender: TObject);
    procedure imRelFinanceirosClick(Sender: TObject);
    procedure imCredSalConta1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure imEditComandSQLClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure imBackupClick(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure imTabTarifasClick(Sender: TObject);
    procedure imCalcFaturaBairroClick(Sender: TObject);
    procedure sbCalcFaturaBairroClick(Sender: TObject);
    procedure sbLanPagtoFaturaClick(Sender: TObject);
    procedure imHistFaturasClick(Sender: TObject);
    procedure sbFaturaAvulsaClick(Sender: TObject);
    procedure sbImportPagtoClick(Sender: TObject);
    procedure imCalcFaturaIndividualClick(Sender: TObject);
    procedure imAtualizarClick(Sender: TObject);
    procedure imAtualizaLocalClick(Sender: TObject);
    procedure imSelecionaOrgaoClick(Sender: TObject);
    procedure StatusBar1Panels0DblClick(Sender: TObject);
    procedure imCorrigeBaixaClick(Sender: TObject);
    procedure ransferirUnidConsumidora1Click(Sender: TObject);
    procedure imDecAnualQuitaClick(Sender: TObject);
    procedure lblMesAnoTrabDblClick(Sender: TObject);
    procedure ResumoFinanceiro1Click(Sender: TObject);

  private
    pv_sFecharAplicacao: string[1];
    pv_lPerguntaFechar,
    pv_lPrimeiraVez,
    pv_lVerVersao,
    pv_lInicializacao: Boolean;
    pv_sPerguntaBackup: String[1];
    function JanelaExiste(Janela: TComponentName): Boolean;
    function VerificaVersao(sMsg: string): Boolean;
    procedure Atualiza_Executavel(sExe: string);
    procedure WriteStringIniFile(ipsFileName, ipsSection, ipsIdent,
      ipsValue: String);
    function ReadStringIniFile(ipsFileName, ipsSection, ipsIdent,
      ipsDefault: String): String;
    procedure HabilitaItensMenu;
    function ExecAndWait(const FileName, Params: string;
      const WindowState: Word): boolean;
    procedure RealizaBackup;
    function VerAnoMesTrava(sAnoMesCript: string): String;
    procedure ValidaAnoMesTrava;
    function AnoMesTrava: String;
  public

  end;

var
  frmPrincipal: TfrmPrincipal;
  Inicializacao: Boolean = True;

implementation

{$R *.dfm}

uses VarGlobais, udmPrincipal, gsLib, UtilsDb, AjudaSobre, Login, TabCidade,
  SelecionaOrgao, EditorComandosSQL, CorrigeBaixaFaturas,
  AtualizadorSistemaNovo, SelecionaMesAno, Configuracao, AlteraSenha,
  TabDistrito, TabBairro, TabLogradouro, TabTarifa, TabLocalPagto,
  CadUnidConsumidora, MudarPessoaDaUnidConsum, PrintRelDiversos, DecAnualQuitacao, LanctoRequerimento,
  HistoricoFaturaCalcPaga, CalcTarifaBairro, CalcFaturaAvulsa, ImportArqPagtoTxt, CalcTarifaIndividual,
  LanctoLeituraHidrometro, LanctoOutroItemFatura, LanctoCorteReligacao, LanctoPagto, TabUsuario;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
Var
  sDig: string;
Begin
{
  sDig := CalcDigMod10(Trim(Edit1.Text));

  Mensagem('Dígito do Nº '+Trim(Edit1.Text)+' - '+sDig,'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
}
end;

procedure TfrmPrincipal.imCredSalConta1Click(Sender: TObject);
Var
   oForm1: TForm;
begin
end;

procedure TfrmPrincipal.imDecAnualQuitaClick(Sender: TObject);
begin

   frmDecAnualQuita := TfrmDecAnualQuita.Create(Self);
   frmDecAnualQuita.ShowModal;
   FreeAndNil(frmDecAnualQuita);

end;

procedure TfrmPrincipal.imEditComandSQLClick(Sender: TObject);
begin
   if MDIChildCount > 0 then
   begin
      Mensagem('Você precisa Fechar todas as Janelas deste Programa, '+#13+
               'antes de Executar essa Operação ...',
               'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);
      exit;
   end;
   frmEditComandosSQL := TfrmEditComandosSQL.Create(Self);
   frmEditComandosSQL.ShowModal;
   FreeAndNil(frmEditComandosSQL);
end;

procedure TfrmPrincipal.imBairroClick(Sender: TObject);
begin

  case TMenuItem(Sender).Tag of
    11: begin
       if not JanelaExiste('frmTabCidade') then
          frmTabCidade := TfrmTabCidade.Create(Self);
       frmTabCidade.Show;
    end;
    12: begin
       if not JanelaExiste('frmTabDistrito') then
          frmTabDistrito := TfrmTabDistrito.Create(Self);
       frmTabDistrito.Show;
    end;
    13: begin
       if not JanelaExiste('frmTabBairro') then
          frmTabBairro := TfrmTabBairro.Create(Self);
       frmTabBairro.Show;
    end;
    14: begin
       if not JanelaExiste('frmTabLogradouro') then
          frmTabLogradouro := TfrmTabLogradouro.Create(Self);
       frmTabLogradouro.Show;
    end;
    3: begin
       if not JanelaExiste('frmTabLocalPagto') then
          frmTabLocalPagto := TfrmTabLocalPagto.Create(Self);
       frmTabLocalPagto.Show;
    end;
    4: begin
       if not JanelaExiste('frmCadUnidConsumidora') then
          frmCadUnidConsumidora := TfrmCadUnidConsumidora.Create(Self);
       frmCadUnidConsumidora.Show;
    end;
    { retirar
    5: begin
       if not JanelaExiste('frmEntidFinanc') then
          frmEntidFinanc := TfrmEntidFinanc.Create(Self);
       frmEntidFinanc.Show;
    end;
    6: begin
       if not JanelaExiste('frmTabContaBanco') then
          frmTabContaBanco := TfrmTabContaBanco.Create(Self);
       frmTabContaBanco.Show;
    end;
    7: begin
       if not JanelaExiste('frmCadFavorecido') then
          frmCadFavorecido := TfrmCadFavorecido.Create(Self);
       frmCadFavorecido.Show;
    end;
    }
    25: begin
       if not JanelaExiste('TfrmLanctoRequerimento') then
          frmLanctoRequerimento := TfrmLanctoRequerimento.Create(Self);
       frmLanctoRequerimento.Show;
    end;

  end;

end;

procedure TfrmPrincipal.imHistFaturasClick(Sender: TObject);
begin
   frmHistFatura := TfrmHistFatura.Create(Self);
   frmHistFatura.pb_iIdUnidConsum := 0;
   frmHistFatura.ShowModal;
   FreeAndNil(frmHistFatura);
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
label lblFim;
Var
   lSenhaOk: Boolean;
   sNomeUsuario: String[40];
   sTipoOrgao: string[1];
   iConta: integer;
   iIdUsuarioSave: integer;
begin

   if not pv_lPrimeiraVez then exit;
   //SelecionarMsAnoptrabalho1.Click;

   if pv_lInicializacao then
   begin
      Self.WindowState := wsMaximized;
      Application.ProcessMessages;
   end;

   //lblEnderBanco.Caption := dmPrincipal.SConPrincipal.Params.Values['DataBase'];

   //if pv_lVerVersao then
   //   if not VerificaVersao('N') then goto lblFim;

   if pv_lInicializacao then
   begin
      if not frmSobre.pb_lContinuar then
         goto lblFim
      else
      if frmSobre.pb_lAtualizaExe then
      begin
         Atualiza_Executavel('ACQUADUTUS2018');
         goto lblFim;
      end;
      frmSobre.Close;
      FreeAndNil(frmSobre);
      pv_lVerVersao := False;
   end else
      glb_iIdOperLogado := 0;

   frmLogin := TfrmLogin.Create(Self);
   lSenhaOk := frmLogin.Executa;
   if lSenhaOk then
   begin
      sNomeUsuario := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),
         'NOME_CURTO','');
      sNomeUsuario := Criptografa(sNomeUsuario,'2',20);
      StatusBar1.Panels[1].Text := ' '+'Usuário: '+sNomeUsuario;
      pv_lPrimeiraVez := False;
      HabilitaItensMenu;
   end else
   begin
      if pv_lInicializacao then
      begin
         lblFim:;
         Application.Terminate;
      end else
      begin
         glb_iIdOperLogado := iIdUsuarioSave;
         glb_iIdOperExecut := iIdUsuarioSave;
      end;
   end;

   pv_lInicializacao := False;
   FreeAndNil(frmLogin);

   Screen.Cursor := crDefault;

   if imSelecionaOrgao.Visible then imSelecionaOrgao.Click;

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  sPathExe: WideString;
  tfArq: TextFile;
  sLinReg: WideString;
  sStringList1: TStringList;
  iConta: Integer;
  lAlteraMes: Boolean;
begin
  lAlteraMes := False;
  sStringList1 := TStringList.Create;
  sPathexe := ExtractFilePath(ParamStr(0));
  if FileExists(sPathexe+'\ACQUADUTUS.INI') Then
  begin
     AssignFile(tfArq,sPathexe+'\ACQUADUTUS.INI');
     Reset(tfArq);
     while not eof(tfArq) do
     begin
       Readln(tfArq,sLinReg);
       sStringList1.Add(sLinReg);
     end;
  end;
  for iConta := 0 to sStringList1.Count - 1 do
  begin
    if UpperCase(sStringList1[iConta]) = '[ULT_ANO_MES]' then
    begin
       if (sStringList1[iConta+1] <>
          glb_sAnoMesTrab) then
       begin
          sStringList1[iConta+1] := glb_sAnoMesTrab;
          lAlteraMes := True;
          break;
       end;
    end;
  end;
  CloseFile(tfArq);

  if lAlteraMes then
  begin
     AssignFile(tfArq,sPathexe+'\ACQUADUTUS.INI');
     ReWrite(tfArq);
     for iConta := 0 to sStringList1.Count - 1 do
        Writeln(tfArq,sStringList1[iConta]);
     CloseFile(tfArq);
  end;

  if not DelphiCarregado then
     if Confirma('DESEJA REALIZAR BACKUP DA BASE DE DADOS ?') then
     begin
        pv_sPerguntaBackup := 'S';
        RealizaBackup;
     end;

  dmPrincipal.SConPrincipal.Connected := False;
end;

procedure TfrmPrincipal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (MDIChildCount = 0);
  if CanClose = True then
     CanClose := Confirma('DESEJA REALMENTE ECERRAR O PROGRAMA ?');
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
Var
  sPathEXE    : WideString;
  sAnoMes     : string[9];
  sAnoMesTrava: string[20];
  sHoraVerDb  : String[8];
  iTemp       : Integer;
begin

  lblNada.Caption := '';
  {
  pv_lPerguntaFechar:= False;
  if dmPrincipal.SConPrincipal.Connected = False then
  begin
     PostMessage(Handle,WM_CLOSE,0,0);
     Exit;
  end;
  }

  glb_hHND_Principal:= Handle;
  glb_sAnoMesTrava  := AnoMesTrava;
  Self.Width        := Screen.Width;
  Self.Height       := Screen.Height;
  glb_iHeight       := Image1.Height;
  glb_iWidth        := Image1.Width;
  glb_iIdOperLogado := 0;
  glb_iIdOperExecut := 0;
  Left   := 0;
  Top    := 0;
  //Height := 734;
  //Width  := 1024;
  pv_lPerguntaFechar    := True;
  pv_lPrimeiraVez       := True;
  pv_lVerVersao         := True;
  pv_lInicializacao     := True;
  glb_sAnoMesTrab       := GetUltAnoMes();

  ValidaAnoMesTrava;

  if glb_sAnoMesTrab > glb_sAnoMesTrava then
     glb_sAnoMesTrab := glb_sAnoMesTrava;

  glb_sSistema          := 'ACQUADUTU$2018 - CÁLCULO E EMISSÃO DE FATURAS DE COBRANÇA DE ÁGUA';
  glb_sVersao           := Versao_Executavel(Application.ExeName);
  Self.Caption          := glb_sSistema+' - [VER. '+glb_sVersao+']';
  glb_sDescrMesAnoTrab  := Maiusculas(NomeMes(StrToInt(RightStr(glb_sAnoMesTrab,2))))+
     ' / '+LeftStr(glb_sAnoMesTrab,4);
  glb_sEmpresa          := Criptografa(Pesquisa('CONFIG_ORGAO','ID','1',
     'RAZAO_SOCIAL',''),'2',60);
  StatusBar1.Panels[0].Text := ' '+glb_sEmpresa;
  //StatusBar1.Panels[1].Text := ' '+glb_sDescrMesAnoTrab;
  lblMesAnoTrab.Caption     := ' '+glb_sDescrMesAnoTrab;
  StatusBar1.Panels[2].Text := DateToStr(Date)+' ';
  sPathexe := ExtractFilePath(ParamStr(0));
  //Image1.Picture.LoadFromFile(sPathEXE+'\Wallpaper_GeraSys.Ti_02.jpg');

end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
Var
   sTipoOrgao: string[1];
   sPathAtualiza: Widestring;
   sNomeArq: WideString;
begin

  sPathAtualiza := Trim(ini_le_secao('Atualiza'));
  sNomeArq := sPathAtualiza+'\GERASYS_Logo_2016_II.Jpg';

  imSelecionaOrgao.Visible := (glb_sMultiOrgao='S');

  if not FileExists(ExtractFilePath(Application.ExeName)+'\GERASYS_Logo_2016_II.Jpg') then
  begin
     Screen.Cursor := crHourGlass;
     //StatusBar1.Panels[1].Text := 'Aguarde, Atualizando Papel de parede ...';
     Application.ProcessMessages;
     CopyFile(PWideChar(sNomeArq),
        PWideChar(ExtractFilePath(Application.ExeName)+'\GERASYS_Logo_2016_II.Jpg'),True);
     Screen.Cursor := crDefault;
  end;

  try
    Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
      '\GERASYS_Logo_2016_II.Jpg');
    //Image1.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+
    //  '\GERASYS_Logo_2016_II.Jpg');
  except
  end;

end;

procedure TfrmPrincipal.imCalcFaturaBairroClick(Sender: TObject);
begin
  case TMenuItem(Sender).Tag of
     2: begin
        frmCalcTarifaBairro := TfrmCalcTarifaBairro.Create(Self);
        frmCalcTarifaBairro.ShowModal;
        FreeAndNil(frmCalcTarifaBairro);
     end;
     3: begin
        frmCalcFaturaAvulsa := TfrmCalcFaturaAvulsa.Create(Self);
        frmCalcFaturaAvulsa.pb_iIdFatura := 0;
        frmCalcFaturaAvulsa.ShowModal;
        FreeAndNil(frmCalcFaturaAvulsa);
     end;
     5: begin
        frmLanctoImportar := TfrmLanctoImportar.Create(Self);
        frmLanctoImportar.ShowModal;
        FreeAndNil(frmLanctoImportar);
     end;
  End;

end;

procedure TfrmPrincipal.imCalcFaturaIndividualClick(Sender: TObject);
begin

  frmCalcTarifaIndividual := TfrmCalcTarifaIndividual.Create(Self);
  frmCalcTarifaIndividual.ShowModal;
  FreeAndNil(frmCalcTarifaIndividual);

end;

procedure TfrmPrincipal.imConsumHidromClick(Sender: TObject);
begin

  case TMenuItem(Sender).Tag of
    1: begin
       frmLanctoLeituraHidrom := TfrmLanctoLeituraHidrom.Create(Self);
       frmLanctoLeituraHidrom.ShowModal;
       FreeAndNil(frmLanctoLeituraHidrom);
    end;
    2: begin
       frmLanctoOutroItemFatura := TfrmLanctoOutroItemFatura.Create(Self);
       frmLanctoOutroItemFatura.ShowModal;
       FreeAndNil(frmLanctoOutroItemFatura);
    end;
    3: begin
       frmLanctoCorteReligacao := TfrmLanctoCorteReligacao.Create(Self);
       frmLanctoCorteReligacao.ShowModal;
       FreeAndNil(frmLanctoCorteReligacao);
    end;
    4: begin
       frmLanctoPagto := TfrmLanctoPagto.Create(Self);
       frmLanctoPagto.ShowModal;
       FreeAndNil(frmLanctoPagto);
    end;
  End;

end;

procedure TfrmPrincipal.imCorrigeBaixaClick(Sender: TObject);
begin

   frmCorrigeBaixa := TfrmCorrigeBaixa.Create(Self);
   frmCorrigeBaixa.ShowModal;
   FreeAndNil(frmCorrigeBaixa);

end;

procedure TfrmPrincipal.imAtualizaLocalClick(Sender: TObject);
begin

   pv_sFecharAplicacao := 'N';
   VerificaVersao('S');
   if pv_sFecharAplicacao = 'S' then
      Application.Terminate;

end;

procedure TfrmPrincipal.imAtualizarClick(Sender: TObject);
Var
   lBaixouAtualizacao: Boolean;
begin

   frmAtualizadorSistema := TfrmAtualizadorSistema.Create(Self);
   frmAtualizadorSistema.ShowModal;
   lBaixouAtualizacao := frmAtualizadorSistema.pb_lBaixouAtualizacao;
   FreeAndNil(frmAtualizadorSistema);
   if lBaixouAtualizacao then
      imAtualizaLocal.Click;

end;

procedure TfrmPrincipal.imBackupClick(Sender: TObject);
begin
   if TSpeedButton(Sender).Tag = 0 then
      imEncerrarReabrirMovim.Click
   else begin
      pv_sPerguntaBackup := 'N';
      RealizaBackup;
   end;
end;

procedure TfrmPrincipal.imSair1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmPrincipal.imTabTarifasClick(Sender: TObject);
begin
   frmTabTarifa := TfrmTabTarifa.Create(Self);
   frmTabTarifa.ShowModal;
   FreeAndNil(frmTabTarifa);
end;

procedure TfrmPrincipal.sbCalcFaturaBairroClick(Sender: TObject);
begin
  case TSpeedButton(Sender).Tag of
     6: imConsumHidrom.Click;
    10: imCalcFaturaBairro.Click;
    11: imPagtoBaixaFatura.Click;
    12: imHistFaturas.Click;
  end;
end;

procedure TfrmPrincipal.sbFaturaAvulsaClick(Sender: TObject);
begin
   imCalcularFaturaAvulsa.Click;
end;

procedure TfrmPrincipal.sbImportPagtoClick(Sender: TObject);
begin
  imImportArqPagto.Click;
end;

procedure TfrmPrincipal.sbLanPagtoFaturaClick(Sender: TObject);
begin

  case TSpeedButton(Sender).Tag of
    10: imPagtoBaixaFatura.Click;
  end;
end;

procedure TfrmPrincipal.sbUnidConsumClick(Sender: TObject);
begin

  case TSpeedButton(Sender).Tag of
    4: imCadUnidConsum.Click;
  end;

end;

procedure TfrmPrincipal.imSelecionaOrgaoClick(Sender: TObject);
Var
   sAnoMesTrava: string;
   sBanco: string;
   lSenhaOk: Boolean;
   sNomeUsuario: String[20];
   sIdUsuario: String;
begin

   sNomeUsuario := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),
      'NOME_CURTO','');

   frmSelectOrgao := TfrmSelectOrgao.Create(Self);
   sBanco := frmSelectOrgao.Executa;
   FreeAndNil(frmSelectOrgao);
   if sBanco = '' then
   begin
      Mensagem('Não foi selecionado um Novo Órgão,'#13+
         'você continuará usando o Órgão atual ...',
         'Aviso !!!',MB_OK+MB_ICONINFORMATION);
      exit;
   end;

   dmPrincipal.ConectaBanco(sBanco);

   glb_sEmpresa := Criptografa(Pesquisa('CONFIG_ORGAO','ID','1',
      'RAZAO_SOCIAL',''),'2',60);
   StatusBar1.Panels[0].Text := glb_sEmpresa;

   sIdUsuario := Pesquisa('USUARIO','NOME_CURTO',sNomeUsuario,'ID','');
   if sIdUsuario = ''  then
   begin
      frmLogin := TfrmLogin.Create(Self);
      glb_iIdOperLogado := 0;
      lSenhaOk := frmLogin.Executa;
   end else
   begin
      lSenhaOk := True;
      glb_iIdOperLogado := StrToInt(Pesquisa('USUARIO','NOME_CURTO',
         sNomeUsuario,'ID',''));
   end;
   if lSenhaOk then
   begin
      sNomeUsuario := Criptografa(sNomeUsuario,'2',20);
      StatusBar1.Panels[1].Text := ' '+'Usuário: '+sNomeUsuario;
      HabilitaItensMenu;
   end else
   begin
      Mensagem('Você precisa Informar o Usuário e Senha para o Órgão Selecionado.'+#13+
         'o Programa será Encerrado ...',
         'Erro !!!',MB_OK+MB_ICONERROR);
      Application.Terminate;
   end;

   sAnoMesTrava := Pesquisa('CONFIG_ORGAO','ID','1','ANO_MES_TRAVA','');

   VerAnoMesTrava(sAnoMesTrava);

   ValidaAnoMesTrava;

   if glb_sAnoMesTrab > glb_sAnoMesTrava then
   begin
      glb_sAnoMesTrab := glb_sAnoMesTrava;
      glb_sDescrMesAnoTrab := DescrMesAno(glb_sAnoMesTrab);
      lblMesAnoTrab.Caption := glb_sDescrMesAnoTrab;
   end;

end;

procedure TfrmPrincipal.imSelectMesAnoTrabClick(Sender: TObject);
begin

  case TMenuItem(Sender).Tag of
    1: begin
       frmSelecionaMesAno := TfrmSelecionaMesAno.Create(Self);
       frmSelecionaMesAno.ShowModal;
       if TMenuItem(Sender).Tag = 1 then
       begin
          lblMesAnoTrab.Caption := glb_sDescrMesAnoTrab;
       end;
       HabilitaItensMenu;
       FreeAndNil(frmSelecionaMesAno);
    end;
    2: begin
       frmConfiguracao := TfrmConfiguracao.Create(Self);
       frmConfiguracao.ShowModal;
       FreeAndNil(frmConfiguracao);
    end;
    4: begin
       if not JanelaExiste('frmTabUsuario') then
          frmTabUsuario := TfrmTabUsuario.Create(Self);
       frmTabUsuario.Show;
    end;
    { implementar
    3: begin
       oForm := TfrmEncerraReabreMovim.Create(Self);
       oForm.ShowModal;
    end;
    }
    5: begin
       frmAlteraSenha := TfrmAlteraSenha.Create(Self);
       frmAlteraSenha.ShowModal;
       FreeAndNil(frmAlteraSenha);
    end;
    6: begin
       pv_lPrimeiraVez := True;
       FormActivate(Self);
    end;
    8: begin
       VerificaVersao('S');
    end;
  end;

end;

procedure TfrmPrincipal.Sobre1Click(Sender: TObject);
begin

   frmSobre := TfrmSobre.Create(Self);
   frmSobre.btnOk.Visible := True;
   frmSobre.ShowModal;
   FreeAndNil(frmSobre);

end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
Var
   sTextTemp: WideString;
   sTextCrip: WideString;
   sTextTemp2: WideString;
begin
{ retirar
   sTextTemp  := 'SERVIÇO AUTÔNOMO DE ÁGUA E ESGOTO DE RONDON DO PARÁ';
   sTextCrip  := Criptografa(sTextTemp,'1',60);
   sTextTemp2 := Criptografa(sTextCrip,'2',60);
   Mensagem(sTextTemp+#13+sTextCrip+#13+sTextTemp2+#13+
            IntToStr(Length(sTextCrip)),
      'Texto Criptografado',MB_OK+MB_ICONINFORMATION);
}
end;

procedure TfrmPrincipal.StatusBar1Panels0DblClick(Sender: TObject);
begin
  if imSelecionaOrgao.Visible then imSelecionaOrgao.Click;
end;

procedure TfrmPrincipal.StatusBar1Panels1DblClick(Sender: TObject);
begin
  imSelectMesAnoTrab.Click;
end;

Function TfrmPrincipal.JanelaExiste(Janela: TComponentName): Boolean;
Var
   wConta: Word;
Begin

   Result := False;
   If frmPrincipal.MDIChildCount = 0 Then Exit;
   For wConta := 0 To frmPrincipal.MDIChildCount - 1 Do
   Begin
      Result := frmPrincipal.MDIChildren[wConta].Name = Janela;
      If Result = True Then Break;
   End;

End;

procedure TfrmPrincipal.lblMesAnoTrabDblClick(Sender: TObject);
begin
  imSelectMesAnoTrab.Click;
end;

procedure TfrmPrincipal.ransferirUnidConsumidora1Click(Sender: TObject);
begin

   frmMudarPessoaUC := TfrmMudarPessoaUC.Create(Self);
   frmMudarPessoaUC.ShowModal;
   FreeAndNil(frmMudarPessoaUC);

end;

procedure TfrmPrincipal.imRelFinanceirosClick(Sender: TObject);
begin

  frmPrintRelDiversos.Executa(IntToStr(TMenuItem(Sender).Tag),
     imRelTabelas.Enabled,imRelServidores.Enabled,imRelFinanceiros.Enabled,
     imRelDoctos.Enabled,imRelOutros.Enabled);

end;

Function TfrmPrincipal.VerificaVersao(sMsg: string): Boolean;
Var
  sNomePastaAtuaizaExe: WideString;
  sVersaoExe_db,
  sVersaoBackup,
  sUltimaVersao: String;
begin

  Screen.Cursor := crHourGlass;

  sVersaoBackup := Versao_Executavel(ExtractFilePath(Application.ExeName)+
     'BACKUP.EXE');
  sUltimaVersao := GetUltimaVersao('BACKUP');
  if sUltimaVersao <> '' then
  begin
     if StrToInt(ExtraiPonto(sUltimaVersao)) > StrToInt(ExtraiPonto(sVersaoBackup)) then
     begin
        if Confirma('Foi dectada na Pasta Local de Atualização, uma Nova Versão do Programa de Backup.'+#13+
                 'Deseja fazer a Atualização do mesmo agora ?') then
        Atualiza_Executavel('BACKUP');
     end else
     if sMsg = 'S' then
        Mensagem('O Programa de Backup está atualizado ...',
          'Aviso !!!',MB_OK+MB_ICONINFORMATION);
  end;

  sUltimaVersao := GetUltimaVersao('ACQUADUTUS2018');
  if sUltimaVersao = '' then
  begin
     if Confirma('Não foi possível verificar se há nova versão do Sistema.'+#13+
                 'Deseja continuar assim mesmo ? '+#13+
                 'Obs.: Caso Não, entre em contacto com o Suporte Técnico do Sistema') then
        Result := True
     else
        Result := False;
     exit;
  end;

  if StrToInt(ExtraiPonto(sUltimaVersao)) > StrToInt(ExtraiPonto(glb_sVersao)) then
  begin
     Mensagem('Foi dectada na Pasta Local de Atualização, uma Nova Versão deste Programa. '+#13+
              'O mesmo será Fechado e Reinicializado automaticamente ...',
              'Aviso !!!',
              MB_OK+MB_ICONEXCLAMATION);
     Atualiza_Executavel('ACQUADUTUS2018');
     pv_sFecharAplicacao := 'S';  // somente quando chamado pelo Usuário
                                  // Menu 'Sistem' - 'Atualizar'
     Result := False;
  end else
  begin
     if sMsg = 'S' then
      Mensagem('Este Programa está atualizado ...',
        'Aviso !!!',MB_OK+MB_ICONINFORMATION);
     {
     sVersaoExe_db := Pesquisa('CONFIG_ORGAO','ID','1','VER_EXE','');
     if StrToInt(ExtraiPonto(glb_sVersao)) > StrToInt(ExtraiPonto(sVersaoExe_db)) then
     begin
        if Confirma('Uma nova Versão foi detectada, o Sistema fará uma auto-verificação '+#13+
                 'de mudança(s) na Estrutura da Base de Dados. Caso haja, serão feitas'+#13+
                 'as auto-alterações necessárias. Deseja iniciar o procedimento agora ?') then
        begin
           frmAtualizaDb := TfrmAtualizaDb.Create(Self);
           frmAtualizaDb.Executa(glb_sVersao);
           FreeAndNil(frmAtualizaDb);
        end;
     end;
     }
  end;

  Screen.Cursor := crDefault;

end;

procedure TfrmPrincipal.Atualiza_Executavel(sExe: string);
var
  tfAutoAtualiza: TextFile;
  sPathAtualizaExe: WideString;
begin

  Screen.Cursor := crHourGlass;

  sPathAtualizaExe := GetPathAtualizaVer;

  AssignFile(tfAutoAtualiza,sExe+'.bat');
  ReWrite(tfAutoAtualiza);

  WriteLn(tfAutoAtualiza,':1');
  WriteLn(tfAutoAtualiza, 'Del "'+sExe+'.exe'+'"');
  WriteLn(tfAutoAtualiza, 'If exist "'+sExe+'.exe'+'" goto 1');
  WriteLn(tfAutoAtualiza,':2');
  WriteLn(tfAutoAtualiza, 'Copy "'+IncludeTrailingPathDelimiter(sPathAtualizaExe)+
     sExe+'.exe'+'" "'+
     IncludeTrailingPathDelimiter(ExtractFileDir(Application.ExeName))+'"');
  if sExe = 'ACQUADUTUS2018' then
  begin
     WriteLn(tfAutoAtualiza,':3');
     WriteLn(tfAutoAtualiza, 'if exist "'+sExe+'.exe" then goto 4 else goto 3');
     WriteLn(tfAutoAtualiza,':4');
     WriteLn(tfAutoAtualiza,'"'+sExe+'.exe"');
  end;

  CloseFile(tfAutoAtualiza);

  ShellExecute(glb_hHND_Principal,'Open',PChar(sExe+'.bat'),nil,nil,SW_HIDE);

  Screen.Cursor := crDefault;

end;

procedure TfrmPrincipal.WriteStringIniFile(ipsFileName, ipsSection, ipsIdent,
   ipsValue: String); //ult. vs. 2010/06/16
  //escreve um valor em uma dada identidade de uma dada seção de um dado arquivo ini
var
  lpifFile: TIniFile;
begin
  lpifFile := TIniFile.Create(ipsFileName); //abro o arquivo ini
  lpifFile.WriteString(ipsSection, ipsIdent, ipsValue); //escrevo o valor passado
  lpifFile.Free; //libero a variável criada
end;

function TfrmPrincipal.ReadStringIniFile(ipsFileName, ipsSection, ipsIdent,
   ipsDefault: String): String; //ult. vs. 2010/06/16
  //lê um valor de uma dada identidade de uma dada seção de um dado arquivo ini
var
  lpifFile: TIniFile;
begin
  lpifFile := TIniFile.Create(ipsFileName); //abro o arquivo ini
  Result := lpifFile.ReadString(ipsSection, ipsIdent, ipsDefault); //leio o valor desejado
  lpifFile.Free; //libero a variável criada
end;

procedure TfrmPrincipal.HabilitaItensMenu;
Var
  lMovimEncerrado: Boolean;
  sTemp: string[3];
  oQry1: TSQLQuery;
begin

  Screen.Cursor := crHourGlass;

  oQry1 := TSQLQuery.Create(Self);
  oQry1.SQLConnection := dmPrincipal.SConPrincipal;
  oQry1.SQL.Add('select * from usuario where id = '+IntToStr(glb_iIdOperLogado));

  try
    try
       oQry1.Open;
    except
       on E: Exception do
       begin
         Mensagem('('+E.Message+')','E R R O !!!',MB_OK+MB_ICONERROR);
         exit;
       end;
    end;

    pnBarraFerramentas.Visible := True;

    if sbEncerraReabreMovim.Visible then
       sbEncerraReabreMovim.Visible:= False;
    if sbPrintRelFinanc.Visible then
       sbPrintRelFinanc.Visible    := False;

    imTabTarifas.Visible := oQry1.FieldByName('ACESS_TAB_TARIFA').Value='S';
    imCalcFaturaIndividual.Visible:= oQry1.FieldByName('CALC_TARIFA_INDIV').Value='S';
    imCalcFaturaBairro.Visible:= oQry1.FieldByName('CALC_TARIFA_BAIRRO').Value='S';
    sbCalcFaturaBairro.Visible:= imCalcFaturaBairro.Visible;
    imImportArqPagto.Visible := oQry1.FieldByName('IMPORT_PAGTO_TXT').Value='S';
    sbImportPagto.Visible    := imImportArqPagto.Visible;

    imRelTabelas.Visible    := (oQry1.FieldByName('REL_TABELAS').Value='S');
    imRelServidores.Visible := (oQry1.FieldByName('REL_UNID_CONSUM').Value='S');
    imRelFinanceiros.Visible:= (oQry1.FieldByName('REL_FINANCEIROS').Value='S');
    imRelDoctos.Visible     := (oQry1.FieldByName('REL_DOCTOS').Value='S');

    sbPrintRelFinanc.Visible    := True;
    sbBackup.Visible            := True;
    sbSair.Visible              := True;

  finally
    oQry1.Close;
    FreeAndNil(oQry1);
  end;

  Screen.Cursor := crDefault;

end;

function TfrmPrincipal.ExecAndWait(const FileName, Params: string;
  const WindowState: Word): boolean;
var
  SUInfo: TStartupInfo;
  ProcInfo: TProcessInformation;
  CmdLine: string;
begin

  { Coloca o nome do arquivo entre aspas. Isto é necessário devido
    aos espaços contidos em nomes longos }
  //CmdLine := '"' + Filename + '"' + Params;

  CmdLine := Filename + ' ' + Params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, false,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);

  { Aguarda até ser finalizado }

  if Result then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;

end;

procedure TfrmPrincipal.RealizaBackup;
Var
   sParams: string;
   iTemp: integer;
   sIdOperador: string[3];
   sNomeOperador: string[20];
   sPermiteRestaurar,
   sBackupDireto: string[1];
   sAplicativoPrincipal,
   sPastaBkpLocal,
   sPastaBkpRemoto: string[80];
   sDataBase,
   sServidor,
   sAnoMesTemp: String;
begin

  Screen.Cursor := crHourGlass;

   sIdOperador   := IntToStr(glb_iIdOperLogado);
   sServidor     := ini_le_secao('Servidor');
   sNomeOperador := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),
      'NOME_CURTO','');
   sNomeOperador := Trim(Criptografa(sNomeOperador,'2',20));
   iTemp := pos(' ',sNomeOperador);
   if iTemp > 0 then
      sNomeOperador := LeftStr(sNomeOperador,iTemp-1);

   sPermiteRestaurar := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),
      'REST_BACKUP','');
   sBackupDireto := iIf(pv_sPerguntaBackup='-','S',pv_sPerguntaBackup);
   sAplicativoPrincipal:= 'ACQUADUTUS';
   if glb_sMultiOrgao = 'S' then
      sPastaBkpLocal := ini_le_secao('Backup')
   else
      sPastaBkpLocal := Pesquisa('PASTA_PADRAO','ID','1','BACKUP_LOCAL','');
   sPastaBkpRemoto := Pesquisa('PASTA_PADRAO','ID','1','BACKUP_REMOTO','');

   if (Trim(sPastaBkpLocal)='') or (Trim(sPastaBkpRemoto)='') then
   begin
      Mensagem('Você precisa configurar as Pastas Local e Remota de Backup.'#13+
         'Para fazer isso vá em Sistema - Configurações e Ajustes - Pasta Padrão.',
         'Erro !!!',MB_OK+MB_ICONERROR);
      exit;
   end;

   if RightStr(Trim(sPastaBkpLocal),1) <> '\' then
      sPastaBkpLocal := sPastaBkpLocal;
   if RightStr(Trim(sPastaBkpRemoto),1) = '\' then
      sPastaBkpRemoto := LeftStr(sPastaBkpRemoto,Length(Trim(sPastaBkpRemoto))-1);
   if not DirectoryExists(sPastaBkpLocal+'\'+sPastaBkpRemoto) then
   begin
      if not CreateDir(sPastaBkpLocal+'\'+sPastaBkpRemoto) then
      begin
         Mensagem('Não foi possíevel Criar a Sub-Pasta de Backup.'#13+
            'Entre em contacto com o Suporte do Sistema.',
            'Erro !!!',MB_OK+MB_ICONERROR);
         exit;
      end;
   end;

   sDataBase := dmPrincipal.SConPrincipal.Params.Values['DataBase'];
   sDataBase := Trim(Copy(sDataBase,Pos(':',sDataBase)+1,255));
   {
   sParams := '-'+IntToStr(glb_iIdOperLogado)+'%'+sNomeOperador+'%'+
      Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),
      'REST_BACKUP','');
   }

   if Trim(sServidor) = EmptyStr then
      sParams := '-'+Trim(sIdOperador)+'%'+
                 Trim(sNomeOperador)+'%'+
                 sPermiteRestaurar+'%'+
                 sBackupDireto+'%'+
                 sAplicativoPrincipal+'%'+
                 sPastaBkpLocal+'%'+
                 sPastaBkpRemoto+'%'+sDataBase
   else
       sParams := '-'+Trim(sIdOperador)+'%'+
                 Trim(sNomeOperador)+'%'+
                 sPermiteRestaurar+'%'+
                 sBackupDireto+'%'+
                 sAplicativoPrincipal+'%'+
                 sPastaBkpLocal+'%'+
                 sPastaBkpRemoto+'%'+sServidor+':'+sDataBase;

   //Mensagem(sParams,'Teste',MB_OK+MB_ICONEXCLAMATION);

      {
-[id_operador]%[nome_operador]%[permite_rest]%[backup_direto]%
 [nome_arq_ini]%[aplicativo_principal]%[nome_pasta_ftp]
      }
   dmPrincipal.SConPrincipal.Close;

   ExecAndWait(ExtractFilePath(Application.ExeName)+'BACKUP.exe',
      sParams,SW_SHOW);
   {
   if dmPrincipal.SConPrincipal.Connected then
      Mensagem('O Banco Continua conectado ...','Aviso !!!',
        MB_OK+MB_ICONWARNING);
   }

   dmPrincipal.SConPrincipal.Connected := True;

   //sAnoMesTemp := Pesquisa('CONFIG_ORGAO','ID','1','ANO_MES_TRAVA','');

   //glb_sAnoMesTrava := VerAnoMesTrava(sAnoMesTemp);

   Screen.Cursor := crDefault;

end;

procedure TfrmPrincipal.ResumoFinanceiro1Click(Sender: TObject);
begin
{ retirar

   frmGrfcoResumFinanc := TfrmGrfcoResumFinanc.Create(Self);
   frmGrfcoResumFinanc.ShowModal;
   FreeAndNil(frmGrfcoResumFinanc);
}
end;

Function TfrmPrincipal.VerAnoMesTrava(sAnoMesCript: string): String;
Var
  sAnoMesTemp : string[20];
  sAnoMesTrava: string[6];
begin

// 0-QQQQ09MMaa13-AA5Q-
// 12345678901234567890

  sAnoMesTemp := Criptografa(sAnoMesCript,'2',20);
  sAnoMesTrava := Copy(sAnoMesTemp,16,2)+Copy(sAnoMesTemp,11,2)+Copy(sAnoMesTemp,9,2);

  {
  glb_sGeraRemBcoTrava := Copy(sAnoMesTemp,4,1)+
     Copy(sAnoMesTemp,9,1)+
     Copy(sAnoMesTemp,11,1)+
     Copy(sAnoMesTemp,15,1)+
     Copy(sAnoMesTemp,16,1)+
     Copy(sAnoMesTemp,19,1);
  }
  //glb_sQuadrimTrava := Copy(sAnoMesTemp,3,4)+
  //   Copy(sAnoMesTemp,19,1);

  Result := sAnoMesTrava;

end;

procedure TfrmPrincipal.ValidaAnoMesTrava;
Var
  iTemp: Integer;
begin

  try
     iTemp := StrToInt(LeftStr(glb_sAnoMesTrava,4));
     if ((RightStr(glb_sAnoMesTrava,2) < '01') or
         (RightStr(glb_sAnoMesTrava,2) > '12')) then
        glb_sAnoMesTrava := '190101';
  except
     glb_sAnoMesTrava := '190101';
  end;

end;

function TfrmPrincipal.AnoMesTrava: String;
Var
   sAnoMesTrava: string[20];
   sAnoMesTrava2: string[6];
begin

   sAnoMesTrava := Pesquisa('CONFIG_ORGAO','ID','1','ANO_MES_TRAVA','');
   sAnoMesTrava := Criptografa(sAnoMesTrava,'2',20);

   // 0-qqqq09mmra13-la5q
   // 12345678901234567890

   sAnoMesTrava2 := Copy(sAnoMesTrava,16,2)+Copy(sAnoMesTrava,11,2)+Copy(sAnoMesTrava,9,2);

   Result := sAnoMesTrava2;

end;

end.

