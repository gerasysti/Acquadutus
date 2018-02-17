unit EncerrarReabrirMovim;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, StrUtils,
  dxSkinsDefaultPainters, cxTextEdit, cxCheckBox, Menus, StdCtrls, cxButtons,
  ExtCtrls, FMTBcd, Provider, DBClient, DB, SqlExpr, cxMaskEdit, cxSpinEdit,
  cxSpinButton, cxDropDownEdit, Buttons;

type
  TfrmEncerraReabreMovim = class(TfrmPadrao1)
    Panel1: TPanel;
    Panel2: TPanel;
    edMes1: TcxTextEdit;
    edMes2: TcxTextEdit;
    edMes3: TcxTextEdit;
    edMes4: TcxTextEdit;
    edMes5: TcxTextEdit;
    edMes6: TcxTextEdit;
    cxTextEdit17: TcxTextEdit;
    cxTextEdit18: TcxTextEdit;
    cxTextEdit19: TcxTextEdit;
    cxTextEdit20: TcxTextEdit;
    edIniMes1: TcxTextEdit;
    edIniMes2: TcxTextEdit;
    edIniMes3: TcxTextEdit;
    edIniMes4: TcxTextEdit;
    edIniMes5: TcxTextEdit;
    edIniMes6: TcxTextEdit;
    edCalcMes1: TcxTextEdit;
    edCalcMes2: TcxTextEdit;
    edCalcMes3: TcxTextEdit;
    edCalcMes4: TcxTextEdit;
    edCalcMes5: TcxTextEdit;
    edCalcMes6: TcxTextEdit;
    chbAbrirFechar1: TcxCheckBox;
    edSituac1: TcxTextEdit;
    edSituac4: TcxTextEdit;
    edSituac5: TcxTextEdit;
    edSituac6: TcxTextEdit;
    edSituac2: TcxTextEdit;
    edSituac3: TcxTextEdit;
    chbAbrirFechar2: TcxCheckBox;
    chbAbrirFechar3: TcxCheckBox;
    chbAbrirFechar4: TcxCheckBox;
    chbAbrirFechar5: TcxCheckBox;
    chbAbrirFechar6: TcxCheckBox;
    edMes7: TcxTextEdit;
    edMes8: TcxTextEdit;
    edMes9: TcxTextEdit;
    edMes10: TcxTextEdit;
    edIniMes7: TcxTextEdit;
    edIniMes8: TcxTextEdit;
    edIniMes9: TcxTextEdit;
    edIniMes10: TcxTextEdit;
    edCalcMes7: TcxTextEdit;
    edCalcMes8: TcxTextEdit;
    edCalcMes9: TcxTextEdit;
    edCalcMes10: TcxTextEdit;
    edSituac7: TcxTextEdit;
    edSituac8: TcxTextEdit;
    edSituac9: TcxTextEdit;
    edSituac10: TcxTextEdit;
    chbAbrirFechar7: TcxCheckBox;
    chbAbrirFechar8: TcxCheckBox;
    chbAbrirFechar9: TcxCheckBox;
    chbAbrirFechar10: TcxCheckBox;
    edMes11: TcxTextEdit;
    edMes12: TcxTextEdit;
    edMes13: TcxTextEdit;
    edMes14: TcxTextEdit;
    edMes15: TcxTextEdit;
    edMes16: TcxTextEdit;
    edIniMes11: TcxTextEdit;
    edIniMes12: TcxTextEdit;
    edIniMes13: TcxTextEdit;
    edIniMes14: TcxTextEdit;
    edIniMes15: TcxTextEdit;
    edIniMes16: TcxTextEdit;
    edCalcMes11: TcxTextEdit;
    edCalcMes12: TcxTextEdit;
    edCalcMes13: TcxTextEdit;
    edCalcMes14: TcxTextEdit;
    edCalcMes15: TcxTextEdit;
    edCalcMes16: TcxTextEdit;
    edSituac11: TcxTextEdit;
    edSituac12: TcxTextEdit;
    edSituac13: TcxTextEdit;
    edSituac14: TcxTextEdit;
    edSituac15: TcxTextEdit;
    edSituac16: TcxTextEdit;
    chbAbrirFechar11: TcxCheckBox;
    chbAbrirFechar12: TcxCheckBox;
    chbAbrirFechar13: TcxCheckBox;
    chbAbrirFechar14: TcxCheckBox;
    chbAbrirFechar15: TcxCheckBox;
    chbAbrirFechar16: TcxCheckBox;
    pnMsg: TPanel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    Label1: TLabel;
    qryCtrlProcess: TSQLQuery;
    cdsCtrlProcess: TClientDataSet;
    provCtrlProcess: TDataSetProvider;
    spEdAno: TcxSpinEdit;
    qryCtrlProcessANO_MES: TStringField;
    qryCtrlProcessPARCELA: TStringField;
    qryCtrlProcessINICIALIZADO: TStringField;
    qryCtrlProcessCALCULADO: TStringField;
    qryCtrlProcessENCERRADO: TStringField;
    qryCtrlSubUnidOrcam: TSQLQuery;
    provCtrlSubUnidOrcam: TDataSetProvider;
    cdsCtrlSubUnidOrcam: TClientDataSet;
    qryCtrlSubUnidOrcamANO_MES: TStringField;
    qryCtrlSubUnidOrcamPARCELA: TStringField;
    qryCtrlSubUnidOrcamID_SUB_UNID_ORCAM: TIntegerField;
    qryCtrlSubUnidOrcamINICIALIZADO: TStringField;
    qryCtrlSubUnidOrcamDATA_INICIALIZ: TDateField;
    qryCtrlSubUnidOrcamHORA_INICIALIZ: TTimeField;
    qryCtrlSubUnidOrcamCALCULADO: TStringField;
    qryCtrlSubUnidOrcamDATA_CALC: TDateField;
    qryCtrlSubUnidOrcamHORA_CALC: TTimeField;
    qryCtrlSubUnidOrcamPROCESS_CONCLUIDO: TStringField;
    qryCtrlSubUnidOrcamENCERRADO: TStringField;
    qryCtrlSubUnidOrcamDATA_ENCERRA: TDateField;
    qryCtrlSubUnidOrcamHORA_ENCERRA: TTimeField;
    cdsCtrlProcessANO_MES: TStringField;
    cdsCtrlProcessPARCELA: TStringField;
    cdsCtrlProcessINICIALIZADO: TStringField;
    cdsCtrlProcessCALCULADO: TStringField;
    cdsCtrlProcessENCERRADO: TStringField;
    cdsCtrlSubUnidOrcamANO_MES: TStringField;
    cdsCtrlSubUnidOrcamPARCELA: TStringField;
    cdsCtrlSubUnidOrcamID_SUB_UNID_ORCAM: TIntegerField;
    cdsCtrlSubUnidOrcamINICIALIZADO: TStringField;
    cdsCtrlSubUnidOrcamDATA_INICIALIZ: TDateField;
    cdsCtrlSubUnidOrcamHORA_INICIALIZ: TTimeField;
    cdsCtrlSubUnidOrcamCALCULADO: TStringField;
    cdsCtrlSubUnidOrcamDATA_CALC: TDateField;
    cdsCtrlSubUnidOrcamHORA_CALC: TTimeField;
    cdsCtrlSubUnidOrcamPROCESS_CONCLUIDO: TStringField;
    cdsCtrlSubUnidOrcamENCERRADO: TStringField;
    cdsCtrlSubUnidOrcamDATA_ENCERRA: TDateField;
    cdsCtrlSubUnidOrcamHORA_ENCERRA: TTimeField;
    qryDesativaServidor: TSQLQuery;
    SQLStoredProc1: TSQLStoredProc;
    btnMes16: TcxButton;
    btnMes15: TcxButton;
    btnMes1: TcxButton;
    btnMes2: TcxButton;
    btnMes5: TcxButton;
    btnMes6: TcxButton;
    btnMes7: TcxButton;
    btnMes8: TcxButton;
    btnMes10: TcxButton;
    btnMes11: TcxButton;
    btnMes12: TcxButton;
    btnMes3: TcxButton;
    btnMes4: TcxButton;
    btnMes9: TcxButton;
    btnMes13: TcxButton;
    btnMes14: TcxButton;
    btnOk: TcxButton;
    spEncerraReabreMovSUO: TSQLStoredProc;
    mTbMes: TClientDataSet;
    mTbMesid_mes: TStringField;
    mTbMesDescr_mes: TStringField;
    mTbMesid_parcela: TStringField;
    mTbMesDescr_parcela: TStringField;
    mTbMesInicializado: TStringField;
    mTbMesCalculado: TStringField;
    mTbMesSituacao: TStringField;
    mTbMesDecrSituacao: TStringField;
    dsMes: TDataSource;
    cbParcela: TcxComboBox;
    Label2: TLabel;
    btnLimpar: TBitBtn;
    qryServidMovimMes: TSQLQuery;
    provServidMovimMes: TDataSetProvider;
    cdsServidMovimMes: TClientDataSet;
    qryServidMovimMesID_SERVIDOR: TIntegerField;
    cdsServidMovimMesID_SERVIDOR: TIntegerField;
    qryServidMovimDefinit: TSQLQuery;
    cdsServidMovimDefinit: TClientDataSet;
    provServidMovimDefinit: TDataSetProvider;
    qryServidMovimDefinitID: TIntegerField;
    cdsServidMovimDefinitID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMes16Click(Sender: TObject);
    procedure chbAbrirFechar1Click(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    pv_aMes: array[1..16] of string[1];
    procedure LimpaEditMeses;
    procedure HabilitaBotoesSubUnidOrcaments(lOpcao: Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEncerraReabreMovim: TfrmEncerraReabreMovim;

implementation

uses udmPrincipal, VarGlobais, gsLib, UtilsDb, EncerrarReabrirMovimS_U_O;

{$R *.dfm}

procedure TfrmEncerraReabreMovim.btnGravarClick(Sender: TObject);
Var
  sMes: string[2];
  oComponent: TComponent;
  sOperAtual: string[1];
  bConta: Byte;
  lHouveAlteracao: Boolean;
  iErro: Integer;
begin

  if not Confirma('Atenção: Será Reaberto/Encerrado o Movimento pra todas as'+#13+
                  '         Sub-Unidades Orçamentárias de cada mês/ano selecionado.'+#13+
                  'Deseja Continuar assim mesmo ?') then exit;

  pnMsg.Caption := 'Aguarde, salvando ...';
  Application.ProcessMessages;

  lHouveAlteracao := False;

  cdsCtrlProcess.First;
  while not cdsCtrlProcess.eof do
  begin
     sMes := Trim(RightStr(cdsCtrlProcessANO_MES.Value,2));

     {
     if pv_aMes[StrToInt(sMes)] = '' then
     begin
        cdsCtrlProcess.Next;
        Continue;
     end;
     }

     oComponent := FindComponent('chbAbrirFechar'+IntToStr(StrToInt(sMes)));
     with TcxCheckBox(oComponent) do
     begin
        if Checked then
        begin
           sOperAtual := iIf(Style.Font.Color=clRed,'E','A');
           if sOperAtual <> pv_aMes[StrToInt(sMes)] then
           begin
              cdsCtrlProcess.Edit;
              cdsCtrlProcessENCERRADO.Value := iIf(sOperAtual='E','S','N');
              SalvaTransacao(cdsCtrlProcess);
              if sOperAtual = 'E' then
              begin
                 spEncerraReabreMovSUO.Close;
                 spEncerraReabreMovSUO.ParamByName('pe_ano_mes').Value :=
                    cdsCtrlProcessANO_MES.Value;
                 spEncerraReabreMovSUO.ParamByName('pe_parcela').Value :=
                    cdsCtrlProcessPARCELA.Value;
                 spEncerraReabreMovSUO.ParamByName('pe_encerrar').Value:=
                    cdsCtrlProcessENCERRADO.Value;
                 spEncerraReabreMovSUO.ExecProc;
              end;
              if sOperAtual = 'E' then
                 lHouveAlteracao := True;
           end;
        end;
     end;
     cdsCtrlProcess.Next;
  end;

  if lHouveAlteracao then
  begin
     if Confirma('Desativar Servidores DEMITIDOS/DESLIGADOS/'+
          'APOSENTADOS etc ?') then
     begin
        iErro := 0;
        cdsServidMovimDefinit.Close;
        cdsServidMovimDefinit.Open;
        cdsServidMovimMes.IndexFieldNames := 'ID_SERVIDOR';
        cdsServidMovimMes.Close;
        qryServidMovimMes.ParamByName('pDtMovimIni').Value :=
           StrToDate('01/'+RightStr(glb_sAnoMesTrab,2)+'/'+
             LeftStr(glb_sAnoMesTrab,4));
        qryServidMovimMes.ParamByName('pDtMovimFim').Value :=
           UltimoDiaMes(InverteAnoMes(glb_sAnoMesTrab,'2'));
        cdsServidMovimMes.Open;
        while not cdsServidMovimDefinit.eof do
        begin
           if cdsServidMovimMes.FindKey([cdsServidMovimDefinitID.Value]) then
           begin
              cdsServidMovimDefinit.Next;
              Continue;
           end;

           qryDesativaServidor.Close;
           qryDesativaServidor.ParamByName('pServidor').Value :=
              cdsServidMovimDefinitID.Value;
           try
              qryDesativaServidor.ExecSQL();
           except
              on E: Exception do
              begin
                 iErro := 1;
                 Mensagem('Não foi possível Executar a Operação ...'+#13+
                   '('+E.Message+')',
                   'E R R O !!!',MB_OK+MB_ICONERROR);
                 break;
              end;
           end;

           cdsServidMovimDefinit.Next;

        end;

        Mensagem('Servidores Desativados com êxito ...',
           'Aviso !!!',MB_OK+MB_ICONEXCLAMATION);

     end;
  end;

  btnLimpar.Click;

end;

procedure TfrmEncerraReabreMovim.btnLimparClick(Sender: TObject);
Var
  bConta: integer;
begin
  cdsCtrlProcess.Close;
  for bConta := 1 to 16 do
     pv_aMes[bConta] := '';
  LimpaEditMeses;
  cbParcela.Properties.ReadOnly := False;
  HabilitaBotoesSubUnidOrcaments(False);
  btnOk.Enabled := True;
  btnGravar.Enabled:= False;
  pnMsg.Caption := '';
end;

procedure TfrmEncerraReabreMovim.btnMes16Click(Sender: TObject);
Var
   sMes: String[2];
begin
   sMes := IntToStr(TcxButton(Sender).Tag);
   sMes := PreencheZeros(sMes,2);
   frmEncerraReabreMovimS_U_O := TfrmEncerraReabreMovimS_U_O.Create(Self);
   frmEncerraReabreMovimS_U_O.Executa(IntToStr(spEdAno.Value)+sMes,
      IntToStr(cbParcela.ItemIndex),cbParcela.Text);
   FreeAndNil(frmEncerraReabreMovimS_U_O);
end;

procedure TfrmEncerraReabreMovim.btnOkClick(Sender: TObject);
Var
  iConta: Integer;
  oComponent: TComponent;
  sMes: string[2];
  bConta: Byte;
begin

  pnMsg.Caption := 'Aguarde, verificando ...';
  Application.ProcessMessages;

  spEdAno.Properties.ReadOnly := True;
  btnOk.Enabled := False;

  for bConta := 1 to 16 do
     pv_aMes[bConta] := '';

  LimpaEditMeses;

  cdsCtrlProcess.Close;
  cdsCtrlProcess.IndexFieldNames := 'ANO_MES';
  qryCtrlProcess.ParamByName('pAnoMesIni').Value:= IntToStr(spEdAno.Value)+'01';
  qryCtrlProcess.ParamByName('pAnoMesFim').Value:= IntToStr(spEdAno.Value)+'16';
  qryCtrlProcess.ParamByName('pParcela').Value  := IntToStr(cbParcela.ItemIndex);
  cdsCtrlProcess.Open;
  while not cdsCtrlProcess.eof do
  begin
     sMes := Trim(RightStr(cdsCtrlProcessANO_MES.Value,2));
     pv_aMes[StrToInt(RightStr(cdsCtrlProcessANO_MES.Value,2))] :=
        iIf(cdsCtrlProcessENCERRADO.Value<>'S','A','E');

     oComponent := FindComponent('edIniMes'+IntToStr(StrToInt(sMes)));
     TcxTextEdit(oComponent).Text :=
        iIf(cdsCtrlProcessINICIALIZADO.Value = 'S','SIM','NÃO');
     oComponent := FindComponent('edCalcMes'+IntToStr(StrToInt(sMes)));
     TcxTextEdit(oComponent).Text :=
        iIf(cdsCtrlProcessCALCULADO.Value = 'S','SIM','NÃO');
     oComponent := FindComponent('edSituac'+IntToStr(StrToInt(sMes)));
     TcxTextEdit(oComponent).Text :=
        iIf(cdsCtrlProcessENCERRADO.Value = 'S','ENCERRADO','EM ABERTO');
     if cdsCtrlProcessENCERRADO.Value = 'S' then
        TcxTextEdit(oComponent).Style.Font.Color := clRed
     else
        TcxTextEdit(oComponent).Style.Font.Color := clGreen;
     oComponent := FindComponent('chbAbrirFechar'+IntToStr(StrToInt(sMes)));
     with TcxCheckBox(oComponent) do
     begin
        if cdsCtrlProcessENCERRADO.Value = 'S' then
        begin
           Caption := 'Reabrir ...';
           Tag     := 1;
           Style.Font.Color :=  clRed;
        end else
        begin
           Caption := 'Encerrar ...';
           Tag     := 0;
           Style.Font.Color :=  clGreen;
        end;
        Visible := True;
     end;

     cdsCtrlProcess.Next;
  end;

  HabilitaBotoesSubUnidOrcaments(True);

  cbParcela.Properties.ReadOnly := True;
  btnGravar.Enabled := True;

  pnMsg.Caption := '';
  Application.ProcessMessages;

end;

procedure TfrmEncerraReabreMovim.chbAbrirFechar1Click(Sender: TObject);
begin
  if TcxCheckBox(Sender).Style.Font.Color = clRed then
  begin
     TcxCheckBox(Sender).Style.Font.Color := clGreen;
  end else
  begin
     TcxCheckBox(Sender).Style.Font.Color := clRed;
  end;
end;

procedure TfrmEncerraReabreMovim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cdsCtrlProcess.Close;
end;

procedure TfrmEncerraReabreMovim.FormCreate(Sender: TObject);
begin
  inherited;
  pnMsg.Caption := '';
  spEdAno.Value := StrToInt(LeftStr(glb_sAnoMesTrab,4));
  //spEdAno.Properties.MinValue := 1994;
  spEdAno.Properties.MaxValue := StrToInt(RightStr(DateToStr(Date),4));
  btnGravar.Enabled := False;
  LimpaEditMeses;
end;

procedure TfrmEncerraReabreMovim.FormShow(Sender: TObject);
begin
  inherited;
  spEdAno.Properties.ReadOnly := False;
  HabilitaBotoesSubUnidOrcaments(False);
  btnOk.Enabled := True;
  btnGravar.Enabled := False;
end;

procedure TfrmEncerraReabreMovim.LimpaEditMeses;
Var
  iConta: Integer;
  oComponent: TComponent;
  sMes: string[2];
begin
  For iConta := 1 to 16 do
  begin
     sMes := Trim(IntToStr(iConta));
     oComponent := FindComponent('edIniMes'+sMes);
     TcxTextEdit(oComponent).Text := '';
     oComponent := FindComponent('edCalcMes'+sMes);
     TcxTextEdit(oComponent).Text := '';
     oComponent := FindComponent('edSituac'+sMes);
     TcxTextEdit(oComponent).Text := '';
     oComponent := FindComponent('chbAbrirFechar'+sMes);
     TcxCheckBox(oComponent).Checked := False;
     TcxCheckBox(oComponent).Visible := False;
  end;
end;

procedure TfrmEncerraReabreMovim.HabilitaBotoesSubUnidOrcaments(lOpcao: Boolean);
Var
  bConta: Byte;
  oBtn  : TComponent;
  sAnoMes: string[6];
begin
  for bConta := 1 to 16 do
  begin
     oBtn := FindComponent('btnMes'+IntToStr(bConta));
     sAnoMes := ExtraiPonto(spEdAno.Text)+PreencheZeros(IntToStr(bConta),2);
     if (cdsCtrlProcess.Active) and (cdsCtrlProcess.FindKey([sAnoMes])) then
     begin
        if lOpcao = True then
           TcxButton(oBtn).Enabled := cdsCtrlProcessENCERRADO.Value<>'S'
        else
           TcxButton(oBtn).Enabled := lOpcao;
     end else
        TcxButton(oBtn).Enabled := False;
  end;
end;


end.
