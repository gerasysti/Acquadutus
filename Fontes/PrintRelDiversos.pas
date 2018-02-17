unit PrintRelDiversos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, Buttons, ComCtrls, StdCtrls, Mask,
  ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxLabel, cxRadioGroup,
  cxCheckBox, StrUtils, cxPC, cxGroupBox, fmePeriodoM,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxMaskEdit,
  cxDropDownEdit, cxCalendar, fmePeriodoAdminData,
  fmePeriodoDatas, frxClass, frxDesgn, fmeEntidadeFinanceira, FMTBcd,
  DB, SqlExpr, DBCtrls, fmeLogradouro, fmeBairro, DBClient, Provider,
  fmeMultiLogradouro, fmeDistrito, fmeMultiBairro, fmeMultiDistrito,
  fmeMultiLocalPagto, cxSpinEdit, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxBarBuiltInMenu;

type
  TfrmPrintRelDiversos = class(TfrmPadrao1)
    Page1: TcxPageControl;
    tsRelTab: TcxTabSheet;
    tsRelServid: TcxTabSheet;
    tsRelFinanc: TcxTabSheet;
    gbOpGrupo3: TGroupBox;
    rbOpRel303: TcxRadioButton;
    rbOpRel301: TcxRadioButton;
    rbOpRel302: TcxRadioButton;
    rbOpRel304: TcxRadioButton;
    gbDadosRel3: TGroupBox;
    gbOpGrupo1: TGroupBox;
    gbOpGrupo2: TGroupBox;
    rbOpRel201: TcxRadioButton;
    rbOpRel202: TcxRadioButton;
    rbOpRel203: TcxRadioButton;
    gbDadosRel2: TGroupBox;
    nbDadosRel2: TNotebook;
    cxLabel25: TcxLabel;
    tsRelDoctos: TcxTabSheet;
    tsRelOutros: TcxTabSheet;
    gbDadosRel1: TGroupBox;
    nbDadosRel1: TNotebook;
    rbOpRel204: TcxRadioButton;
    rbOpRel205: TcxRadioButton;
    gbOpGrupo4: TGroupBox;
    rbOpRel401: TcxRadioButton;
    GroupBox2: TGroupBox;
    nbDadosRel4: TNotebook;
    cxGroupBox7: TcxGroupBox;
    rbSUO_SituacT: TcxRadioButton;
    rbSUO_Situac1: TcxRadioButton;
    rbSUO_Situac2: TcxRadioButton;
    cxGroupBox4: TcxGroupBox;
    rbSUO_Ordem1: TcxRadioButton;
    rbSUO_Ordem2: TcxRadioButton;
    cxGroupBox3: TcxGroupBox;
    rbUL_Ordem1: TcxRadioButton;
    rbUL_Ordem2: TcxRadioButton;
    cxLabel12: TcxLabel;
    edIdTipoUL1: TcxMaskEdit;
    sbTipoUL1: TSpeedButton;
    edDescrTipoUL1: TcxTextEdit;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cbCategoria202: TcxComboBox;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cbSituac202: TcxComboBox;
    cxLabel42: TcxLabel;
    rbOpRel402: TcxRadioButton;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel4: TcxLabel;
    rbOpRel305: TcxRadioButton;
    rbOpRel306: TcxRadioButton;
    rbOpRel307: TcxRadioButton;
    Panel: TPanel;
    btnSetup: TBitBtn;
    btnVisualizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    rbOpRel308: TcxRadioButton;
    cbTipoPrevid42: TcxComboBox;
    cxLabel101: TcxLabel;
    cbOpcoesGPS42: TcxComboBox;
    cxLabel105: TcxLabel;
    cbTipoEstatistica205: TcxComboBox;
    cxLabel120: TcxLabel;
    cbSituacao201: TcxComboBox;
    rbOpRel403: TcxRadioButton;
    cxLabel131: TcxLabel;
    cxLabel132: TcxLabel;
    chkSomenteSemCC403: TcxCheckBox;
    chkOrdemUnidLotac403: TcxCheckBox;
    rbOpRel309: TcxRadioButton;
    cxLabel79: TcxLabel;
    cxLabel61: TcxLabel;
    cxLabel62: TcxLabel;
    edMsgFatura411: TcxTextEdit;
    cxLabel64: TcxLabel;
    cbTipoFatura401: TcxComboBox;
    sbMsgContraCheque411: TSpeedButton;
    cxLabel66: TcxLabel;
    frmeBairro401: TfrmeBairro;
    frmeBairro202: TfrmeBairro;
    frmeMultiLogradouro202: TfrmeMultiLogradouro;
    cxLabel67: TcxLabel;
    cbOrdem103: TcxComboBox;
    frmeMultiBairro201: TfrmeMultiBairro;
    frmePeriodoDt202: TfrmePeriodoDt;
    cxLabel121: TcxLabel;
    cbTipoRel202: TcxComboBox;
    frmeMultiLogradouro203: TfrmeMultiLogradouro;
    frmeBairro203: TfrmeBairro;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel32: TcxLabel;
    frmePeriodoDt204: TfrmePeriodoDt;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    frmeBairro204: TfrmeBairro;
    frmeMultiLogradouro204: TfrmeMultiLogradouro;
    cxLabel31: TcxLabel;
    cbTipoMovm204: TcxComboBox;
    frmeMultiBairro205: TfrmeMultiBairro;
    cxLabel35: TcxLabel;
    cxLabel43: TcxLabel;
    frmeMultiDistrito205: TfrmeMultiDistrito;
    cxLabel49: TcxLabel;
    frmeMultiLogradouro205: TfrmeMultiLogradouro;
    cxLabel44: TcxLabel;
    frmePeriodoDt205: TfrmePeriodoDt;
    rbOpRel310: TcxRadioButton;
    nbDadosRel3: TNotebook;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cbCategoria303: TcxComboBox;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cbSituacao303: TcxComboBox;
    frmeBairro303: TfrmeBairro;
    frmeMultiLogradouro303: TfrmeMultiLogradouro;
    pcRel304: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    cxLabel41: TcxLabel;
    cxLabel47: TcxLabel;
    frmeBairro304_1: TfrmeBairro;
    frmeMultiLogradouro304_1: TfrmeMultiLogradouro;
    cxTabSheet8: TcxTabSheet;
    cxLabel63: TcxLabel;
    frmeMultiDistrito304_2: TfrmeMultiDistrito;
    cxLabel80: TcxLabel;
    cxLabel13: TcxLabel;
    frmePeriodoDt305: TfrmePeriodoDt;
    frmeMultiLocalPagto305: TfrmeMultiLocalPagto;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel39: TcxLabel;
    Label1: TLabel;
    pcRel308: TcxPageControl;
    tsRel308_1: TcxTabSheet;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    chkQuebraRelSUO308_1: TcxCheckBox;
    cxLabel94: TcxLabel;
    cxLabel95: TcxLabel;
    cbRemessa308_1: TcxComboBox;
    tsRel308_2: TcxTabSheet;
    cxLabel97: TcxLabel;
    rbOpRelMod308_2_1: TcxRadioButton;
    rbOpRelMod308_2_2: TcxRadioButton;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    cbOpcao309: TcxComboBox;
    cxLabel96: TcxLabel;
    chbSuprimeLograd205: TcxCheckBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    frmeMultiLogradouro301: TfrmeMultiLogradouro;
    frmeBairro301: TfrmeBairro;
    chkSomentePlanLancto301: TcxCheckBox;
    chkSumprimeLograd302: TcxCheckBox;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    frmeMultiLogradouro302: TfrmeMultiLogradouro;
    cxLabel14: TcxLabel;
    frmeMultiBairro302: TfrmeMultiBairro;
    chkSomenteResumo305: TcxCheckBox;
    cxLabel15: TcxLabel;
    edQtdMin304_1: TcxSpinEdit;
    cxLabel16: TcxLabel;
    edMesAnoIni304_1: TcxMaskEdit;
    cxLabel17: TcxLabel;
    edMesAnoIni304_2: TcxMaskEdit;
    cxLabel18: TcxLabel;
    edMesAnoFim304_2: TcxMaskEdit;
    cxLabel19: TcxLabel;
    edMesAnoFim304_1: TcxMaskEdit;
    rbOpRel104: TcxRadioButton;
    rbOpRel103: TcxRadioButton;
    rbOpRel102: TcxRadioButton;
    rbOpRel101: TcxRadioButton;
    frmeMultiLogradouro401: TfrmeMultiLogradouro;
    frmePeriodoDt309: TfrmePeriodoDt;
    rbOpRel311: TcxRadioButton;
    cxLabel20: TcxLabel;
    frmeDistrito311: TfrmeDistrito;
    cxLabel21: TcxLabel;
    frmeMultiBairro311: TfrmeMultiBairro;
    frmeMultiBairro310: TfrmeMultiBairro;
    cxLabel45: TcxLabel;
    frmeDistrito310: TfrmeDistrito;
    cbSituacao310: TcxComboBox;
    cxLabel50: TcxLabel;
    frmePeriodoDt310: TfrmePeriodoDt;
    cxLabel51: TcxLabel;
    edMesAnoIni306: TcxMaskEdit;
    edMesAnoFim306: TcxMaskEdit;
    frmeMultiBairro306: TfrmeMultiBairro;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    frmeDistrito306: TfrmeDistrito;
    chkQuebraPorBairro03: TCheckBox;
    frmeMultiDistrito302: TfrmeMultiDistrito;
    rbOpRel312: TcxRadioButton;
    chkImpSomenteNaoEmitidas312: TcxCheckBox;
    edAno312: TcxSpinEdit;
    frmeMultiLogradouro312: TfrmeMultiLogradouro;
    frmeBairro312: TfrmeBairro;
    spAtualizaVia: TSQLStoredProc;
    edMesAno311: TcxMaskEdit;
    cxLabel3: TcxLabel;
    rbOpRel206: TcxRadioButton;
    frmeBairro205: TfrmeBairro;
    cxLabel7: TcxLabel;
    cxLabel22: TcxLabel;
    cbSituacao206: TcxComboBox;
    frmeDistrito201: TfrmeDistrito;
    procedure rbOpRel301Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSubUnidOrcamsKeyPress(Sender: TObject; var Key: Char);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edIdTipoUL1Exit(Sender: TObject);
    procedure edIdTipoUL1KeyPress(Sender: TObject; var Key: Char);
    procedure cbVinculo22PropertiesCloseUp(Sender: TObject);
    procedure cbVinculo22PropertiesPopup(Sender: TObject);
    procedure edMultiUnidGestora342KeyPress(Sender: TObject; var Key: Char);
    procedure btnSetupClick(Sender: TObject);
    procedure frmeBairro1edIdExit(Sender: TObject);
    procedure frmeBairro202edIdExit(Sender: TObject);
    procedure frmeBairro303edIdExit(Sender: TObject);
    procedure frmeMultiLogradouro1sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiBairro201sbMultiBairroClick(Sender: TObject);
    procedure frmeMultiLogradouro202sbMultiLogradClick(Sender: TObject);
    procedure frmeBairro203edIdExit(Sender: TObject);
    procedure frmeBairro204edIdExit(Sender: TObject);
    procedure frmeBairro301edIdExit(Sender: TObject);
    procedure frmeMultiLogradouro401sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiLogradouro303sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiLogradouro301sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiLogradouro302sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiLogradouro304_1sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiLogradouro203sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiLogradouro204sbMultiLogradClick(Sender: TObject);
    procedure cbOrdem103PropertiesChange(Sender: TObject);
    procedure frmeMultiLogradouro205sbMultiLogradClick(Sender: TObject);
    procedure frmeMultiLogradouro312sbMultiLogradClick(Sender: TObject);
    procedure edMesAno311Exit(Sender: TObject);
    procedure frmeBairro401sb1Click(Sender: TObject);
    procedure frmeBairro1sb1Click(Sender: TObject);
    procedure frmeDistrito1sb1Click(Sender: TObject);
  private
    pv_sOpGrupo: string[1];
    pv_sParcela: string[1];
    procedure RelTabelas(lVisualizar: Boolean);
    procedure RelUnidConsumidoras(lVisualizar: Boolean);
    procedure RelFinanceiros(lVisualizar: Boolean);
    procedure RelDoctos(lVisualizar: Boolean);
    procedure BotaoSelectClickPg1(Sender: TObject);
    procedure BotaoSelectClickPg2(Sender: TObject);
    procedure BotaoSelectClickPg3(Sender: TObject);
    procedure BotaoSelectClickPg4(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    procedure Executa(sOpGrupo: String; lOp1,lOp2,lOp3,lOp4,lOp5: Boolean);
  end;

var
  frmPrintRelDiversos: TfrmPrintRelDiversos;

implementation

uses VarGlobais, udmPrincipal, gsLib, UtilsDb, udmRelDoctos, udmRelUnidConsum,
  udmRelFinanceiros, udmRelTabelas1, udmTabelas;

{$R *.dfm}

procedure TfrmPrintRelDiversos.Executa(sOpGrupo: String;
   lOp1,lOp2,lOp3,lOp4,lOp5: Boolean);
begin
   pv_sOpGrupo := sOpGrupo;
   tsRelTab.Enabled := lOp1;
   tsRelServid.Enabled := lOp2;
   tsRelFinanc.Enabled := lOp3;
   tsRelDoctos.Enabled := lOp4;
   tsRelOutros.Enabled := lOp5;
   ShowModal;
end;

procedure TfrmPrintRelDiversos.btnSetupClick(Sender: TObject);
begin
  if Page1.ActivePageIndex = 0 then
  begin
     dmRelTabelas1:= TdmRelTabelas1.Create(Self);
     dmRelTabelas1.frxReport1.DesignReport();
     FreeAndNil(dmRelTabelas1);
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     dmRelUnidConsum:= TdmRelUnidConsum.Create(Self);
     dmRelUnidConsum.frxReport1.DesignReport();
     FreeAndNil(dmRelUnidConsum);
  end else
  if Page1.ActivePageIndex = 2 then
  begin
     dmRelFinanceiros:= TdmRelFinanceiros.Create(Self);
     dmRelFinanceiros.frxReport1.DesignReport();
     FreeAndNil(dmRelFinanceiros);
  end else
  if Page1.ActivePageIndex = 3 then
  begin
     dmRelDoctos:= TdmRelDoctos.Create(Self);
     dmRelDoctos.frxReport1.DesignReport();
     FreeAndNil(dmRelDoctos);
  end;
end;

procedure TfrmPrintRelDiversos.btnVisualizarClick(Sender: TObject);
begin
  if Page1.ActivePageIndex = 0 then // rel tabelas ...
     RelTabelas(TBitBtn(Sender).Tag=1)
  else
  if Page1.ActivePageIndex = 1 then // rel servidores ...
     RelUnidConsumidoras(TBitBtn(Sender).Tag=1)
  else
  if Page1.ActivePageIndex = 2 then // rel financeiros ...
     RelFinanceiros(TBitBtn(Sender).Tag=1)
  else
  if Page1.ActivePageIndex = 3 then // rel Doctos ...
     RelDoctos(TBitBtn(Sender).Tag=1);
end;

procedure TfrmPrintRelDiversos.cbOrdem103PropertiesChange(Sender: TObject);
begin
   chkQuebraPorBairro03.Visible := (cbOrdem103.ItemIndex = 2);
end;

procedure TfrmPrintRelDiversos.cbVinculo22PropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmPrintRelDiversos.cbVinculo22PropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmPrintRelDiversos.edIdTipoUL1Exit(Sender: TObject);
begin
  if Empty(edIdTipoUL1.Text) then exit;
  edIdTipoUL1.Text := Trim(edIdTipoUL1.Text);
  edDescrTipoUL1.Text := Pesquisa('TIPO_UNID_LOTACAO','ID',edIdTipoUL1.Text,
     'DESCRICAO','Identificador de Unidade, inválido !');
  if edDescrTipoUL1.Text = '' then
     edIdTipoUL1.SetFocus;
end;

procedure TfrmPrintRelDiversos.edIdTipoUL1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmPrintRelDiversos.edMesAno311Exit(Sender: TObject);
begin
  if Not ValidMesAno(edMesAno311.Text) then
  begin
     edMesAno311.SetFocus;
     Exit;
  end;

end;

procedure TfrmPrintRelDiversos.edMultiUnidGestora342KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in ['0'..'9',';',#8] then exit else Key := #0;
end;

procedure TfrmPrintRelDiversos.edSubUnidOrcamsKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0' .. '9', ';', #8] then exit else Key := #0;
end;

procedure TfrmPrintRelDiversos.FormCreate(Sender: TObject);
Var
  sTipoOrgao: String[1];
begin
  inherited;
  chkQuebraPorBairro03.Visible := False;
  nbDadosRel1.PageIndex := 0;
  nbDadosRel2.PageIndex := 0;
  nbDadosRel3.PageIndex := 0;
  nbDadosRel4.PageIndex := 0;
  rbOpRel101.Checked := True;
  rbOpRel201.Checked := True;
  rbOpRel301.Checked := True;
  rbOpRel401.Checked := True;
end;

procedure TfrmPrintRelDiversos.FormShow(Sender: TObject);
Var
   iConta: Integer;
   sTipoFatura: string[1];
   sOperConfigRel: string[1];
   sPermOperTemp: string[1];
begin

  edMesAno311.Text := RightStr(glb_sAnoMesTrab,2)+LeftStr(glb_sAnoMesTrab,4);

  sTipoFatura := Pesquisa('CONFIG_ORGAO','ID','1','TIPO_FATURA','');
  if sTipoFatura = '' then
     sTipoFatura := '0';
  cbTipoFatura401.ItemIndex := StrToInt(sTipoFatura)-1;

  Caption := 'OPÇÕES DE RELATÓRIOS DIVERSOS ...';

  Page1.ActivePageIndex := StrToInt(pv_sOpGrupo)-1;

  if pv_sOpGrupo = '1' then
  begin
     For iConta := 0 To gbOpGrupo1.ControlCount - 1 Do
       If (gbOpGrupo1.Controls[iConta] is TRadioButton) Then
          If (gbOpGrupo1.Controls[iConta] as TRadioButton).Checked Then
             (gbOpGrupo1.Controls[iConta] As TRadioButton).SetFocus;
  end;

end;

procedure TfrmPrintRelDiversos.frmeBairro1edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro401.edIdExit(Sender);
end;

procedure TfrmPrintRelDiversos.frmeBairro1sb1Click(Sender: TObject);
begin
  inherited;
  frmeBairro205.sb1Click(Sender);
end;

procedure TfrmPrintRelDiversos.frmeBairro202edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro202.edIdExit(Sender);
  frmeMultiLogradouro202.pb_sIdBairro := frmeBairro202.edId.Text;
end;

procedure TfrmPrintRelDiversos.frmeBairro203edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro203.edIdExit(Sender);
  frmeMultiLogradouro203.pb_sIdBairro := frmeBairro203.edId.Text;
end;

procedure TfrmPrintRelDiversos.frmeBairro204edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro204.edIdExit(Sender);
  frmeMultiLogradouro204.pb_sIdBairro := frmeBairro204.edId.Text;
end;

procedure TfrmPrintRelDiversos.frmeBairro301edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro301.edIdExit(Sender);
  frmeMultiLogradouro301.pb_sIdBairro := Trim(frmeBairro301.edId.Text);
end;

procedure TfrmPrintRelDiversos.frmeBairro303edIdExit(Sender: TObject);
begin
  inherited;
  frmeBairro303.edIdExit(Sender);
  frmeMultiLogradouro303.pb_sIdBairro := Trim(frmeBairro303.edId.Text);
end;

procedure TfrmPrintRelDiversos.frmeBairro401sb1Click(Sender: TObject);
begin
  inherited;
  frmeBairro401.sb1Click(Sender);
end;

procedure TfrmPrintRelDiversos.frmeDistrito1sb1Click(Sender: TObject);
begin
  inherited;
  frmeDistrito201.sb1Click(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiBairro201sbMultiBairroClick(Sender: TObject);
begin
  inherited;
  frmeMultiBairro201.pb_iIdDistrito := StrToInt(iIf(frmeDistrito201.edId.Text=EmptyStr,'0',Trim(frmeDistrito201.edId.Text)));
  frmeMultiBairro201.sbMultiBairroClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro1sbMultiLogradClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro304_1.pb_sIdBairro := Trim(frmeBairro304_1.edId.Text);
  frmeMultiLogradouro304_1.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro202sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro202.pb_sIdBairro := Trim(frmeBairro202.edId.Text);
  frmeMultiLogradouro202.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro203sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro203.pb_sIdBairro := Trim(frmeBairro203.edId.Text);
  frmeMultiLogradouro203.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro204sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro204.pb_sIdBairro := Trim(frmeBairro204.edId.Text);
  frmeMultiLogradouro204.sbMultiLogradClick(Sender);

end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro205sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro205.sbMultiLogradClick(Sender);

end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro301sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro301.pb_sIdBairro := Trim(frmeBairro301.edId.Text);
  frmeMultiLogradouro301.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro302sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro302.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro303sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro303.pb_sIdBairro := frmeBairro303.edId.Text;
  frmeMultiLogradouro303.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro304_1sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro304_1.pb_sIdBairro := Trim(frmeBairro304_1.edId.Text);
  frmeMultiLogradouro304_1.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro312sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro312.pb_sIdBairro := frmeBairro312.edId.Text;
  frmeMultiLogradouro312.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.frmeMultiLogradouro401sbMultiLogradClick(Sender: TObject);
begin
  inherited;
  frmeMultiLogradouro401.pb_sIdBairro := Trim(frmeBairro401.edId.Text);
  frmeMultiLogradouro401.sbMultiLogradClick(Sender);
end;

procedure TfrmPrintRelDiversos.rbOpRel301Enter(Sender: TObject);
var
   iConta: Integer;
begin
  if Page1.ActivePageIndex = 0 then  // Tabelas
  begin
     for iConta := 0 to gbOpGrupo1.ControlCount - 1 do
        If (gbOpGrupo1.Controls[iConta] is TRadioButton) then
          TRadioButton(gbOpGrupo1.Controls[iConta]).Font.Style := [];
     TRadioButton(Sender).Font.Style := [fsBold];
     nbDadosRel1.PageIndex := TRadioButton(Sender).Tag;
  end else
  if Page1.ActivePageIndex = 1 then // Unid. Consumidoras
  begin
     for iConta := 0 to gbOpGrupo2.ControlCount - 1 do
        If (gbOpGrupo2.Controls[iConta] is TRadioButton) then
          TRadioButton(gbOpGrupo2.Controls[iConta]).Font.Style := [];
     TRadioButton(Sender).Font.Style := [fsBold];
     nbDadosRel2.PageIndex := TRadioButton(Sender).Tag;
  end else
  if Page1.ActivePageIndex = 2 then
  begin
     for iConta := 0 to gbOpGrupo3.ControlCount - 1 do
        If (gbOpGrupo3.Controls[iConta] is TRadioButton) then
          TRadioButton(gbOpGrupo3.Controls[iConta]).Font.Style := [];
     TRadioButton(Sender).Font.Style := [fsBold];
     nbDadosRel3.PageIndex := TcxRadioGroup(Sender).Tag;
  end else
  if Page1.ActivePageIndex = 3 then
  begin
     for iConta := 0 to gbOpGrupo4.ControlCount - 1 do
        If (gbOpGrupo4.Controls[iConta] is TRadioButton) then
          TRadioButton(gbOpGrupo4.Controls[iConta]).Font.Style := [];
     TRadioButton(Sender).Font.Style := [fsBold];
     nbDadosRel4.PageIndex := TcxRadioGroup(Sender).Tag;
  end;

end;

Procedure TfrmPrintRelDiversos.RelTabelas(lVisualizar: Boolean);
Var
  sTemp1: string[1];
begin
  dmRelTabelas1 := TdmRelTabelas1.Create(Self);
  if rbOpRel101.Checked then
     dmRelTabelas1.RelTabTarifas(glb_sAnoMesTrab,lVisualizar);
  if rbOpRel103.Checked then
  begin
     dmRelTabelas1.RelLogradouro(IntToStr(cbOrdem103.ItemIndex),iIf(chkQuebraPorBairro03.Checked,'S','N'),
        lVisualizar);
  end;
  FreeAndNil(dmRelTabelas1);
end;

procedure TfrmPrintRelDiversos.RelUnidConsumidoras(lVisualizar: Boolean);
Var
  sTipoVinculo: String[1];
  sTemp1,
  sTemp2: String[1];
begin

  dmRelUnidConsum := TdmRelUnidConsum.Create(Self);
  if rbOpRel201.Checked then
  begin
     dmRelUnidConsum.RelUnidConsumGeral(frmeDistrito201.edId.Text,
        frmeMultiBairro201.edMultiBairro.Text,
        IntToStr(cbSituacao201.ItemIndex),lVisualizar);
  end else
  if rbOpRel202.Checked then
  begin
     dmRelUnidConsum.RelUnidConsumLogradouro(frmeBairro202.edId.Text,
        frmeMultiLogradouro202.edMultiLograd.Text,
        '0',IntToStr(cbCategoria202.ItemIndex),IntToStr(cbSituac202.ItemIndex),'0',
        frmePeriodoDt202.edDtIni.Text,frmePeriodoDt202.edDtFim.Text,lVisualizar);
  end else
  if rbOpRel203.Checked then
  begin
     dmRelUnidConsum.RelUC_EnderCobrDiferente(frmeBairro203.edId.Text,
        frmeMultiLogradouro203.edMultiLograd.Text,lVisualizar);
  end else
  if rbOpRel204.Checked then
  begin
     dmRelUnidConsum.RelMovimCorteRelig(frmeBairro204.edId.Text,
        frmeMultiLogradouro204.edMultiLograd.Text,
        frmePeriodoDt204.edDtIni.Text, frmePeriodoDt204.edDtFim.Text,
        IntToStr(cbTipoMovm204.ItemIndex+1),lVisualizar);
  end else
  if rbOpRel205.Checked then
  begin
     dmRelUnidConsum.RelEstatisticaMovim(frmeMultiDistrito205.edMultiDistrito.Text,
        frmeMultiBairro205.edMultiBairro.Text,frmeMultiLogradouro205.edMultiLograd.Text,
        frmePeriodoDt205.edDtIni.Text,frmePeriodoDt205.edDtFim.Text,
        IntToStr(cbTipoEstatistica205.ItemIndex+1),iIf(chbSuprimeLograd205.Checked,'S','N'),lVisualizar);
  end Else
  if rbOpRel206.Checked then
  begin
     dmRelUnidConsum.RelResumoPontosConsumo(frmeBairro205.edId.Text,
       IntToStr(cbSituacao206.ItemIndex),lVisualizar);
  end;

  FreeAndNil(dmRelUnidConsum);

end;

procedure TfrmPrintRelDiversos.RelFinanceiros(lVisualizar: Boolean);
Var
  sTipoVinculo: String[1];
  sParcela,
  sTemp1,
  sTemp2: String[1];
begin
  dmRelFinanceiros := TdmRelFinanceiros.Create(Self);
  if rbOpRel301.Checked then
  begin
     dmRelFinanceiros.RelLanctoConsumo(glb_sAnoMesTrab,
        frmeBairro301.edId.Text,frmeMultiLogradouro301.edMultiLograd.Text,
        iIf(chkSomentePlanLancto301.Checked,'S','N') ,lVisualizar);
  end else
  if rbOpRel302.Checked then
  begin
     dmRelFinanceiros.RelResumoFatCalcLogradouro(glb_sAnoMesTrab,
        frmeMultiDistrito302.edMultiDistrito.Text,
        frmeMultiBairro302.edMultiBairro.Text,
        frmeMultiLogradouro302.edMultiLograd.Text,
        iIf(chkSumprimeLograd302.Checked,'S','N'),
        lVisualizar)
  end else
  if rbOpRel303.Checked then
  begin
     dmRelFinanceiros.RelFaturaCalc(glb_sAnoMesTrab,
        frmeBairro303.edId.Text,
        frmeMultiLogradouro303.edMultiLograd.Text,
        '0',lVisualizar)
  end else
  if rbOpRel304.Checked then
  begin
     if pcRel304.ActivePageIndex = 0 then
        dmRelFinanceiros.RelListaDeCorte(frmeBairro304_1.edId.Text,
           frmeMultiLogradouro304_1.edMultiLograd.Text,
           edQtdMin304_1.Value,edMesAnoIni304_1.Text,edMesAnoFim304_1.Text, lVisualizar)
     else
        dmRelFinanceiros.RelResumoInadimpBairro(frmeMultiDistrito304_2.edMultiDistrito.Text,
           edMesAnoIni304_2.Text,edMesAnoFim304_2.Text,lVisualizar)

  end else
  if rbOpRel305.Checked then
  begin
     dmRelFinanceiros.RelLanctoPagto(frmePeriodoDt305.edDtIni.Text,
        frmePeriodoDt305.edDtFim.Text,
        frmeMultiLocalPagto305.edMultiLocalPagto.Text,
        iIf(chkSomenteResumo305.Checked,'S','N'),lVisualizar);
  end else
  if rbOpRel306.Checked then
  begin
     dmRelFinanceiros.RelEmitidoArrecadado(frmeDistrito306.edId.Text,
        frmeMultiBairro306.edMultiBairro.Text,
        edMesAnoIni306.Text,
        edMesAnoFim306.Text,
        lVisualizar);
  end else
  if rbOpRel310.Checked then
  begin
     dmRelFinanceiros.RelRequerimentos(frmePeriodoDt310.edDtIni.Text,
       frmePeriodoDt310.edDtFim.Text,
       frmeDistrito310.edId.Text,IntToStr(cbSituacao310.ItemIndex),
       frmeMultiBairro310.edMultiBairro.Text,lVisualizar);
  end else
  if rbOpRel311.Checked then
  begin
     dmRelFinanceiros.RelLanctoOutroItem(RightStr(edMesAno311.Text,4)+LeftStr(edMesAno311.Text,2),
        frmeDistrito311.edId.Text,frmeMultiBairro311.edMultiBairro.Text,lVisualizar);
  end else
  if rbOpRel312.Checked then
  begin
     dmRelFinanceiros.RelDecAnualQuitacaoUC(0,Trim(frmeBairro312.edId.Text),edAno312.Text,
        frmeMultiLogradouro312.edMultiLograd.Text,lVisualizar);

     if Confirma('Deseja Registrar essa Impressão ?') then
     begin
        spAtualizaVia.Close;
        spAtualizaVia.ParamByName('pe_ano').Value := edAno312.Text;
        spAtualizaVia.ParamByName('pe_bairro').Value := Trim(frmeBairro312.edId.Text);
        spAtualizaVia.ParamByName('pe_multi_lograd').Value := AjustaTextoParamVarios(
           frmeMultiLogradouro312.edMultiLograd.Text);
        spAtualizaVia.ParamByName('pe_uc').Value := 0;
        spAtualizaVia.ExecProc;
     end;

  end else
  if rbOpRel309.Checked then
  begin
     dmRelFinanceiros.RelFaturasAvulsas(frmePeriodoDt309.edDtIni.Text,
        frmePeriodoDt309.edDtFim.Text,IntToStr(cbOpcao309.ItemIndex),lVisualizar);
  end;
  FreeAndNil(dmRelFinanceiros);
end;

procedure TfrmPrintRelDiversos.RelDoctos(lVisualizar: Boolean);
Var
  sTipoVinculo: String[1];
  sTemp1,
  sTemp2: String[1];
begin
  if rbOpRel401.Checked then
  begin
     dmRelDoctos := TdmRelDoctos.Create(Self);
     dmRelDoctos.RelFatura(glb_sAnoMesTrab,
        frmeBairro401.edId.Text,
        frmeMultiLogradouro401.edMultiLograd.Text,
        '0',IntToStr(cbTipoFatura401.ItemIndex+1),
        'S',edMsgFatura411.Text,lVisualizar);
     FreeAndNil(dmRelDoctos);
  end;
end;

procedure TfrmPrintRelDiversos.BotaoSelectClickPg1;
begin
end;

procedure TfrmPrintRelDiversos.BotaoSelectClickPg2(Sender: TObject);
begin
end;

procedure TfrmPrintRelDiversos.BotaoSelectClickPg3(Sender: TObject);
begin
end;

procedure TfrmPrintRelDiversos.BotaoSelectClickPg4(Sender: TObject);
begin
end;

end.
