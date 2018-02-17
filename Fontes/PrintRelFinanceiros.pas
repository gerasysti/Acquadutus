unit PrintRelFinanceiros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, Buttons, ComCtrls, fmeUnidOrcamentaria, StdCtrls, Mask,
  ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxTextEdit, cxLabel, fmeUnidGestora_, cxRadioGroup,
  cxCheckBox, StrUtils, cxPC, cxGroupBox, fmeServidor2, fmePeriodoM,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxMaskEdit,
  cxDropDownEdit, cxCalendar, fmeMultiSubUnidOrcament, fmeMultiUnidLotacao,
  fmeMultiCargo, fmeMultiEstFuncional, fmePeriodoAdminData, fmeMultiEvento,
  fmeEvento, fmePeriodoDatas, frxClass, frxDesgn, fmeEntidadeFinanceira, FMTBcd,
  DB, SqlExpr, DBCtrls, fmeMultiDepto, fmeMultiCategFuncional,
  fmeMultiTipoCargoTCM;

type
  TfrmPrintRelFinanceiros = class(TfrmPadrao1)
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
    rbOpRel103: TcxRadioButton;
    rbOpRel101: TcxRadioButton;
    rbOpRel102: TcxRadioButton;
    rbOpRel104: TcxRadioButton;
    gbOpGrupo2: TGroupBox;
    rbOpRel201: TcxRadioButton;
    rbOpRel202: TcxRadioButton;
    rbOpRel203: TcxRadioButton;
    gbDadosRel2: TGroupBox;
    nbDadosRel2: TNotebook;
    cxLabel25: TcxLabel;
    fmeUnidGestora21: TfmeUnidGestora;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    cxLabel34: TcxLabel;
    tsRelDoctos: TcxTabSheet;
    tsRelOutros: TcxTabSheet;
    rbOpRel105: TcxRadioButton;
    rbOpRel106: TcxRadioButton;
    rbOpRel107: TcxRadioButton;
    rbOpRel108: TcxRadioButton;
    rbOpRel109: TcxRadioButton;
    rbOpRel110: TcxRadioButton;
    gbDadosRel1: TGroupBox;
    nbDadosRel1: TNotebook;
    rbGrupo1OrdNum: TcxRadioButton;
    rbGrupo1OrdAlfa: TcxRadioButton;
    rbOpRel204: TcxRadioButton;
    rbOpRel206: TcxRadioButton;
    rbOpRel205: TcxRadioButton;
    rbOpRel207: TcxRadioButton;
    rbOpRel208: TcxRadioButton;
    rbOpRel209: TcxRadioButton;
    rbOpRel399: TcxRadioButton;
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
    cxGroupBox5: TcxGroupBox;
    rbTipoEventoT: TcxRadioButton;
    rbTipoEventoV: TcxRadioButton;
    rbTipoEventoD: TcxRadioButton;
    cxGroupBox6: TcxGroupBox;
    rbEventoOrdem1: TcxRadioButton;
    rbEventoOrdem2: TcxRadioButton;
    fmeUnidGestora22: TfmeUnidGestora;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxLabel30: TcxLabel;
    cbVinculo22: TcxComboBox;
    cxLabel37: TcxLabel;
    cxLabel38: TcxLabel;
    cbSituac22: TcxComboBox;
    cxLabel41: TcxLabel;
    cxLabel42: TcxLabel;
    rbRel22_1: TcxRadioButton;
    rbRel22_2: TcxRadioButton;
    cxLabel31: TcxLabel;
    cxLabel43: TcxLabel;
    cbVinculo23: TcxComboBox;
    cxLabel44: TcxLabel;
    cbSituac23: TcxComboBox;
    cxLabel45: TcxLabel;
    cxLabel35: TcxLabel;
    cxLabel49: TcxLabel;
    cxLabel50: TcxLabel;
    cxLabel51: TcxLabel;
    cxLabel52: TcxLabel;
    cxLabel53: TcxLabel;
    cxLabel54: TcxLabel;
    cxLabel55: TcxLabel;
    cxLabel56: TcxLabel;
    cxLabel57: TcxLabel;
    cxLabel58: TcxLabel;
    cbVinculo26: TcxComboBox;
    cxLabel59: TcxLabel;
    cbSituac26: TcxComboBox;
    cxLabel60: TcxLabel;
    cxLabel65: TcxLabel;
    frmeMultiSubUnidOrcam22: TfrmeMultiSubUnidOrcam;
    frmeMultiUnidLotacao22: TfrmeMultiUnidLotacao;
    frmeMultiCargo22: TfrmeMultiCargo;
    frmeMultiEstFuncional22: TfrmeMultiEstFuncional;
    frmePerAdminDt22: TfrmePeriodoDt;
    frmeMultiCargo23: TfrmeMultiCargo;
    frmeMultiSubUnidOrcam23: TfrmeMultiSubUnidOrcam;
    frmeMultiUnidLotacao23: TfrmeMultiUnidLotacao;
    frmeMultiEstFuncional23: TfrmeMultiEstFuncional;
    frmePerAdminDt23: TfrmePeriodoDt;
    cbSituac24: TcxComboBox;
    cbVinculo24: TcxComboBox;
    cxLabel36: TcxLabel;
    frmeMultiUnidLotacao24: TfrmeMultiUnidLotacao;
    frmeMultiSubUnidOrcam24: TfrmeMultiSubUnidOrcam;
    frmeMultiCargo24: TfrmeMultiCargo;
    frmeMultiEstFuncional24: TfrmeMultiEstFuncional;
    frmePerAdminDt24: TfrmePeriodoDt;
    frmeMultiEstFuncional26: TfrmeMultiEstFuncional;
    frmeMultiSubUnidOrcam26: TfrmeMultiSubUnidOrcam;
    frmeMultiCargo26: TfrmeMultiCargo;
    frmeMultiUnidLotacao26: TfrmeMultiUnidLotacao;
    frmePerAdminDt26: TfrmePeriodoDt;
    frmePerMovimDt26: TfrmePeriodoDt;
    cxPageControl4: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    sbMsgContraCheque411: TSpeedButton;
    fmeUnidGestora411: TfmeUnidGestora;
    cxLabel61: TcxLabel;
    frmeMultiSubUnidOrcam411: TfrmeMultiSubUnidOrcam;
    cxLabel62: TcxLabel;
    frmeMultiUnidLotacao411: TfrmeMultiUnidLotacao;
    cxLabel63: TcxLabel;
    edMsgContraCheque411: TcxTextEdit;
    cxLabel64: TcxLabel;
    chkOrdemUnidLotacao: TcxCheckBox;
    chkCChequeSomenteSemConta: TcxCheckBox;
    cbFormatoCCheque411: TcxComboBox;
    cxLabel66: TcxLabel;
    fmeUnidGestora207: TfmeUnidGestora;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    frmeMultiSubUnidOrcam207: TfrmeMultiSubUnidOrcam;
    nbDadosRel3: TNotebook;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    frmeMultiSubUnidOrcam301: TfrmeMultiSubUnidOrcam;
    cxLabel3: TcxLabel;
    cbVinculo301: TcxComboBox;
    rbOpRel301_1: TcxRadioButton;
    rbOpRel301_2: TcxRadioButton;
    frmeMultiEventos301: TfrmeMultiEventos;
    rbOpRel301_3: TcxRadioButton;
    pcRel32: TcxPageControl;
    tsRel321: TcxTabSheet;
    tsRel322: TcxTabSheet;
    fmeUnidGestora321: TfmeUnidGestora;
    frmeMultiSubUnidOrcam321: TfrmeMultiSubUnidOrcam;
    cxLabel14: TcxLabel;
    cbVinculo321: TcxComboBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    frmeMultiCargo321: TfrmeMultiCargo;
    cxLabel19: TcxLabel;
    frmeMultiCargo322: TfrmeMultiCargo;
    cbVinculo322: TcxComboBox;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    frmeMultiUnidLotacao322: TfrmeMultiUnidLotacao;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel46: TcxLabel;
    frmeMultiCargo33: TfrmeMultiCargo;
    frmeMultiUnidLotacao33: TfrmeMultiUnidLotacao;
    frmeMultiSubUnidOrcam33: TfrmeMultiSubUnidOrcam;
    fmeUnidGestora33: TfmeUnidGestora;
    cxLabel47: TcxLabel;
    cbTipoFolha33: TcxComboBox;
    cxLabel48: TcxLabel;
    cxComboBox2: TcxComboBox;
    pcRel33: TcxPageControl;
    cxTabSheet7: TcxTabSheet;
    fmeUnidGestora341: TfmeUnidGestora;
    frmeMultiSubUnidOrcam341: TfrmeMultiSubUnidOrcam;
    cxLabel68: TcxLabel;
    cxLabel69: TcxLabel;
    cxTabSheet8: TcxTabSheet;
    cxLabel67: TcxLabel;
    edMultiUnidGestora342: TcxTextEdit;
    sbMultiUnidGestora342: TSpeedButton;
    cbTipoResumo342: TcxComboBox;
    cxLabel70: TcxLabel;
    rbOpRel402: TcxRadioButton;
    fmeUnidGestora42: TfmeUnidGestora;
    frmeMultiSubUnidOrcam42: TfrmeMultiSubUnidOrcam;
    cxLabel71: TcxLabel;
    cxLabel72: TcxLabel;
    cxLabel4: TcxLabel;
    rbOpRel210: TcxRadioButton;
    cxLabel7: TcxLabel;
    cbSituac207: TcxComboBox;
    rbOpRel305: TcxRadioButton;
    rbOpRel306: TcxRadioButton;
    rbOpRel307: TcxRadioButton;
    fmeUnidGestora307: TfmeUnidGestora;
    frmeMultiSubUnidOrcam307: TfrmeMultiSubUnidOrcam;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel39: TcxLabel;
    frmeMultiCargo307: TfrmeMultiCargo;
    cxLabel40: TcxLabel;
    fmePeriodoM_307: TfmePeriodoM_;
    cbTipoRel307: TcxComboBox;
    cxLabel73: TcxLabel;
    fmeUnidGestora306: TfmeUnidGestora;
    cxLabel74: TcxLabel;
    cxLabel75: TcxLabel;
    cbTipoPrevid306: TcxComboBox;
    fmeServidor35: TfmeServidor2_;
    cxLabel5: TcxLabel;
    fmePeriodoM_35: TfmePeriodoM_;
    cxLabel6: TcxLabel;
    Panel: TPanel;
    btnSetup: TBitBtn;
    btnVisualizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    rbOpRel211: TcxRadioButton;
    frmeMultiSubUnidOrcam211: TfrmeMultiSubUnidOrcam;
    frmeMultiUnidLotacao211: TfrmeMultiUnidLotacao;
    frmeMultiEstFuncional211: TfrmeMultiEstFuncional;
    cbSituac211: TcxComboBox;
    cxLabel82: TcxLabel;
    cbVinculo211: TcxComboBox;
    cxLabel83: TcxLabel;
    cxLabel84: TcxLabel;
    cxLabel85: TcxLabel;
    cxLabel86: TcxLabel;
    cxLabel87: TcxLabel;
    frmeMultiCargo211: TfrmeMultiCargo;
    cxLabel88: TcxLabel;
    frmePerAdminDt211: TfrmePeriodoDt;
    frmePerMovimDt211: TfrmePeriodoDt;
    cxLabel89: TcxLabel;
    rbOpRel289: TcxRadioButton;
    cxLabel90: TcxLabel;
    frmePeriodoDt299: TfrmePeriodoDt;
    fmeServidor299: TfmeServidor2_;
    cxLabel91: TcxLabel;
    rbOpRel308: TcxRadioButton;
    Label1: TLabel;
    pcRel308: TcxPageControl;
    tsRel308_1: TcxTabSheet;
    frmeMultiSubUnidOrcam308_1: TfrmeMultiSubUnidOrcam;
    cxLabel92: TcxLabel;
    cxLabel93: TcxLabel;
    chkQuebraRelSUO308_1: TcxCheckBox;
    tsRel308_2: TcxTabSheet;
    cxLabel94: TcxLabel;
    frmeEntidFinanc308_1: TfrmeEntidFinanc;
    fmeUnidGestora308_1: TfmeUnidGestora;
    cxLabel95: TcxLabel;
    cxLabel97: TcxLabel;
    fmeUnidGestora308_2: TfmeUnidGestora;
    fmeUnidGestora301: TfmeUnidGestora;
    cxLabel15: TcxLabel;
    qryRemessa: TSQLQuery;
    cbRemessa308_1: TcxComboBox;
    qryRemessaID_REMESSA: TStringField;
    rbOpRel389: TcxRadioButton;
    fmeServidor389: TfmeServidor2_;
    cxLabel96: TcxLabel;
    edExercicio389: TcxTextEdit;
    sbAnoMais: TSpeedButton;
    sbAnoMenos: TSpeedButton;
    cxLabel98: TcxLabel;
    rbOpRelMod308_2_1: TcxRadioButton;
    rbOpRelMod308_2_2: TcxRadioButton;
    rbOpRel299: TcxRadioButton;
    cxLabel99: TcxLabel;
    fmeServidor2_299: TfmeServidor2_;
    frmeMultiDepto205: TfrmeMultiDepto;
    cxLabel100: TcxLabel;
    cbTipoPrevid42: TcxComboBox;
    cxLabel101: TcxLabel;
    cbOpcoesGPS42: TcxComboBox;
    cxLabel102: TcxLabel;
    cxLabel103: TcxLabel;
    cxLabel104: TcxLabel;
    cxLabel105: TcxLabel;
    cbVinculo205: TcxComboBox;
    cxLabel106: TcxLabel;
    cxLabel107: TcxLabel;
    frmeMultiSubUnidOrcam205: TfrmeMultiSubUnidOrcam;
    frmeMultiCargo205: TfrmeMultiCargo;
    frmeMultiUnidLotacao205: TfrmeMultiUnidLotacao;
    frmePeriodoAdm205: TfrmePeriodoDt;
    cbSituacao205: TcxComboBox;
    rbOpRel310: TcxRadioButton;
    cxLabel108: TcxLabel;
    cxLabel109: TcxLabel;
    cxLabel110: TcxLabel;
    frmeMultiUnidLotacao310: TfrmeMultiUnidLotacao;
    frmeMultiSubUnidOrcam310: TfrmeMultiSubUnidOrcam;
    fmeUnidGestora310: TfmeUnidGestora;
    cbTipoMapaFreq310: TcxComboBox;
    cxLabel111: TcxLabel;
    frmePeriodoDt208: TfrmePeriodoDt;
    cxLabel112: TcxLabel;
    rbOpAdm208: TcxRadioButton;
    rbOpDem208: TcxRadioButton;
    cxLabel113: TcxLabel;
    cxLabel114: TcxLabel;
    cxLabel115: TcxLabel;
    frmeMultiUnidLotac208: TfrmeMultiUnidLotacao;
    frmeMultiCargo208: TfrmeMultiCargo;
    frmeMultiSubUnidOrcam208: TfrmeMultiSubUnidOrcam;
    cxLabel116: TcxLabel;
    cbVinculo208: TcxComboBox;
    cxLabel117: TcxLabel;
    cbSituac208: TcxComboBox;
    frmePeriodoDt209: TfrmePeriodoDt;
    cxLabel118: TcxLabel;
    cxLabel119: TcxLabel;
    frmeMultiSubUnidOrcam209: TfrmeMultiSubUnidOrcam;
    cxLabel120: TcxLabel;
    cbVinculo201: TcxComboBox;
    cxLabel121: TcxLabel;
    cbTipoRel201: TcxComboBox;
    cxLabel122: TcxLabel;
    cbVinculo209: TcxComboBox;
    cxLabel123: TcxLabel;
    cbSituac209: TcxComboBox;
    chkMovim1_209: TcxCheckBox;
    chkMovim2_209: TcxCheckBox;
    chkMovim3_209: TcxCheckBox;
    chkQuebraSUO209: TcxCheckBox;
    frmeMultiCategFunc108: TfrmeMultiCategFunc;
    cxLabel124: TcxLabel;
    cxLabel125: TcxLabel;
    frmeMultiTipoCargoTCM108: TfrmeMultiTipoCargoTCM;
    cbSituacao108: TcxComboBox;
    cxLabel126: TcxLabel;
    rbOpRel212: TcxRadioButton;
    frmeEntidFinanc2012: TfrmeEntidFinanc;
    cxLabel127: TcxLabel;
    frmeMultiSubUnidOrcam212: TfrmeMultiSubUnidOrcam;
    cxLabel128: TcxLabel;
    chkQuebraSUO212: TcxCheckBox;
    cbOpcao212: TcxComboBox;
    cxLabel129: TcxLabel;
    cbOpcao342: TcxComboBox;
    cxLabel130: TcxLabel;
    rbOpRel403: TcxRadioButton;
    fmeUnidGestora403: TfmeUnidGestora;
    cxLabel131: TcxLabel;
    frmeMultiSubUnidOrcam403: TfrmeMultiSubUnidOrcam;
    cxLabel132: TcxLabel;
    chkSomenteSemCC403: TcxCheckBox;
    chkOrdemUnidLotac403: TcxCheckBox;
    rbOpRel279: TcxRadioButton;
    fmeUnidGestora279: TfmeUnidGestora;
    Label2: TLabel;
    cxLabel133: TcxLabel;
    frmeMultiSubUnidOrcam305_1: TfrmeMultiSubUnidOrcam;
    cxLabel76: TcxLabel;
    cxLabel80: TcxLabel;
    chkQuebraSUO305_1: TcxCheckBox;
    frmeMultiCargo305_1: TfrmeMultiCargo;
    cxLabel77: TcxLabel;
    cxLabel81: TcxLabel;
    cbVinculo305_1: TcxComboBox;
    cxLabel13: TcxLabel;
    fmeUnidGestora305_1: TfmeUnidGestora;
    frmeMultiEventos305_1: TfrmeMultiEventos;
    rbOpRel281: TcxRadioButton;
    rbOpRel309: TcxRadioButton;
    fmeUnidGestora309: TfmeUnidGestora;
    cxLabel78: TcxLabel;
    frmeMultiSubUnidOrcam21: TfrmeMultiSubUnidOrcam;
    cxLabel79: TcxLabel;
    rbOpRel311: TcxRadioButton;
    cxLabel134: TcxLabel;
    frmeMultiCargo311: TfrmeMultiCargo;
    rbOpRel282: TcxRadioButton;
    cxLabel137: TcxLabel;
    frmeMultiSubUnidOrcam282: TfrmeMultiSubUnidOrcam;
    cxLabel138: TcxLabel;
    fmeUnidGestora282: TfmeUnidGestora;
    chkFiltrarDependFilho: TcxCheckBox;
    rbOpRel213: TcxRadioButton;
    procedure rbOpRel301Enter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbSubUnidOrcamsClick(Sender: TObject);
    procedure edSubUnidOrcamsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edSubUnidOrcamsKeyPress(Sender: TObject; var Key: Char);
    procedure sbCargosFuncoesClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure fmeUnidGestora21edIdPropertiesChange(Sender: TObject);
    procedure edIdTipoUL1Exit(Sender: TObject);
    procedure edIdTipoUL1KeyPress(Sender: TObject; var Key: Char);
    procedure cbVinculo22PropertiesCloseUp(Sender: TObject);
    procedure cbVinculo22PropertiesPopup(Sender: TObject);
    procedure fmeUnidGestora22edIdExit(Sender: TObject);
    procedure nbDadosRel2Enter(Sender: TObject);
    procedure fmeUnidGestora411edIdExit(Sender: TObject);
    procedure fmeUnidGestora27edIdExit(Sender: TObject);
    procedure fmeUnidGestora321edIdExit(Sender: TObject);
    procedure fmeUnidGestora341edIdExit(Sender: TObject);
    procedure fmeUnidGestora33edIdExit(Sender: TObject);
    procedure sbMultiUnidGestora342Click(Sender: TObject);
    procedure edMultiUnidGestora342KeyPress(Sender: TObject; var Key: Char);
    procedure edMultiUnidGestora342KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure fmeUnidGestora42edIdExit(Sender: TObject);
    procedure fmeUnidGestora307edIdExit(Sender: TObject);
    procedure fmeUnidGestora306sbUnidGestoraClick(Sender: TObject);
    procedure frmeMultiUnidLotacao322sbUnidLotacsClick(Sender: TObject);
    procedure fmeServidor2_1edIdPropertiesChange(Sender: TObject);
    procedure btnSetupClick(Sender: TObject);
    procedure frmeMultiEventos31sbEventosClick(Sender: TObject);
    procedure frmeMultiSubUnidOrcam308_1sbS_U_OsClick(Sender: TObject);
    procedure fmeUnidGestora308_1edIdExit(Sender: TObject);
    procedure edRemessa308_1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure frmeEvento305_1sbEventoClick(Sender: TObject);
    procedure frmeMultiSubUnidOrcam305_1sbS_U_OsClick(Sender: TObject);
    procedure fmeUnidGestora1edIdExit(Sender: TObject);
    procedure fmeUnidGestora301edIdExit(Sender: TObject);
    procedure frmeEntidFinanc308_1edIdExit(Sender: TObject);
    procedure frmeEntidFinanc308_1sbEntidFinancClick(Sender: TObject);
    procedure sbAnoMaisClick(Sender: TObject);
    procedure edExercicio389KeyPress(Sender: TObject; var Key: Char);
    procedure frmeMultiUnidLotacao23sbUnidLotacsClick(Sender: TObject);
    procedure frmeMultiDepto1sbDeptoClick(Sender: TObject);
    procedure frmeMultiSubUnidOrcam23sbS_U_OsClick(Sender: TObject);
    procedure fmeUnidGestora309edIdExit(Sender: TObject);
    procedure frmeMultiSubUnidOrcam1sbS_U_OsClick(Sender: TObject);
    procedure frmeEntidFinanc2012sbEntidFinancClick(Sender: TObject);
    procedure fmeUnidGestora403edIdExit(Sender: TObject);
    procedure fmeUnidGestora305_1edIdExit(Sender: TObject);
    procedure frmeMultiEventos305_1sbEventosClick(Sender: TObject);
    procedure fmeUnidGestora21edIdExit(Sender: TObject);
    procedure fmeUnidGestora282edIdExit(Sender: TObject);
  private
    pv_sOpGrupo: string[1];
    pv_sParcela: string[1];
    procedure RelTabelas(lVisualizar: Boolean);
    procedure RelServidores(lVisualizar: Boolean);
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
  frmPrintRelFinanceiros: TfrmPrintRelFinanceiros;

implementation

uses VarGlobais, udmPrincipal, gsLib, SelectMultiCargo,
     udmRelFinanceiros, UtilsDb, udmRelLanctos, uDmRelServidores,
     udmRelTabelas1, SelecionaUnidGestoras, udmRelDoctos, udmTeste,
     SelecionaPadrao, SelectMultiUnidLotacao, SelectMultiSubUnidOrcam,
     SelectMultiEstFuncional, SelecionaEventos, PrintRelOutros2,
     SelectMultiDepto, SelectMultiGenerico;

{$R *.dfm}

procedure TfrmPrintRelFinanceiros.Executa(sOpGrupo: String;
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

procedure TfrmPrintRelFinanceiros.fmeServidor2_1edIdPropertiesChange(
  Sender: TObject);
begin
  if fmeServidor299.edId.Text = '' then
  begin
     fmeServidor299.edId.Text := 'Deixe em branco p/ todos ...';
     exit;
  end;
  fmeServidor299.edNome.Text := '';
  fmeServidor299.edDescrCargo.Text := '';
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora1edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora305_1.edIdExit(Sender);
  if Empty(fmeUnidGestora305_1.edId.Text) then
     frmeMultiSubUnidOrcam305_1.pb_sId_Unid_Gestora := '0'
  else
     frmeMultiSubUnidOrcam305_1.pb_sId_Unid_Gestora :=
        Trim(fmeUnidGestora305_1.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora21edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora21.edIdExit(Sender);
  frmeMultiSubUnidOrcam21.pb_sId_Unid_Gestora :=
     Trim(fmeUnidGestora21.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora21edIdPropertiesChange(
  Sender: TObject);
begin
  if Page1.ActivePageIndex = 0 then
  begin
     if rbOpRel105.Checked then
        if Empty(edIdTipoUL1.Text) then
           edDescrTipoUL1.Text := 'Deixe em branco p/ todas ...';
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     if rbOpRel201.Checked then
     begin
        if Empty(fmeUnidGestora21.edId.Text) then exit;
        fmeUnidGestora21.edDescricao.Text:= '';
        fmeUnidGestora21.edCNPJ.Text     := '';
     end;
  end;
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora22edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora22.edIdExit(Sender);
  frmeMultiSubUnidOrcam22.pb_sId_Unid_Gestora := Trim(fmeUnidGestora22.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora27edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora207.edIdExit(Sender);
  frmeMultiSubUnidOrcam207.pb_sId_Unid_Gestora := Trim(fmeUnidGestora207.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora282edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora282.edIdExit(Sender);
  frmeMultiSubUnidOrcam282.pb_sId_Unid_Gestora :=
     fmeUnidGestora282.edId.Text;
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora301edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora301.edIdExit(Sender);
  if Empty(fmeUnidGestora301.edId.Text) then
     frmeMultiSubUnidOrcam301.pb_sId_Unid_Gestora := '0'
  else
     frmeMultiSubUnidOrcam301.pb_sId_Unid_Gestora :=
        Trim(fmeUnidGestora301.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora305_1edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora305_1.edIdExit(Sender);
  frmeMultiSubUnidOrcam305_1.pb_sId_Unid_Gestora :=
     Trim(fmeUnidGestora305_1.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora306sbUnidGestoraClick(
  Sender: TObject);
begin
  inherited;
  fmeUnidGestora306.sbUnidGestoraClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora307edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora307.edIdExit(Sender);
  frmeMultiSubUnidOrcam307.pb_sId_Unid_Gestora := Trim(fmeUnidGestora307.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora308_1edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora308_1.edIdExit(Sender);
  frmeMultiSubUnidOrcam308_1.pb_sId_Unid_Gestora :=
     Trim(fmeUnidGestora308_1.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora309edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora310.edIdExit(Sender);
  frmeMultiSubUnidOrcam310.pb_sId_Unid_Gestora := Trim(fmeUnidGestora310.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora321edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora321.edIdExit(Sender);
  frmeMultiSubUnidOrcam321.pb_sId_Unid_Gestora := Trim(fmeUnidGestora321.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora33edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora33.edIdExit(Sender);
  frmeMultiSubUnidOrcam33.pb_sId_Unid_Gestora := Trim(fmeUnidGestora33.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora341edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora341.edIdExit(Sender);
  frmeMultiSubUnidOrcam341.pb_sId_Unid_Gestora := Trim(fmeUnidGestora341.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora403edIdExit(Sender: TObject);
begin
  inherited;
  frmeMultiSubUnidOrcam403.pb_sId_Unid_Gestora :=
        Trim(fmeUnidGestora403.edId.Text);
  fmeUnidGestora403.edIdExit(Sender);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora411edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora411.edIdExit(Sender);
  frmeMultiSubUnidOrcam411.pb_sId_Unid_Gestora := Trim(fmeUnidGestora411.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.fmeUnidGestora42edIdExit(Sender: TObject);
begin
  inherited;
  fmeUnidGestora42.edIdExit(Sender);
  frmeMultiSubUnidOrcam42.pb_sId_Unid_Gestora := Trim(fmeUnidGestora42.edId.Text);
end;

procedure TfrmPrintRelFinanceiros.btnSetupClick(Sender: TObject);
begin
  if Page1.ActivePageIndex = 0 then
  begin
     dmRelTabelas1:= TdmRelTabelas1.Create(Self);
     dmRelTabelas1.frxReport1.DesignReport();
     FreeAndNil(dmRelTabelas1);
  end else
  if Page1.ActivePageIndex = 1 then
  begin
     dmRelServidores:= TdmRelServidores.Create(Self);
     dmRelServidores.frxReport1.DesignReport();
     FreeAndNil(dmRelServidores);
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

procedure TfrmPrintRelFinanceiros.btnVisualizarClick(Sender: TObject);
begin
  if Page1.ActivePageIndex = 0 then // rel tabelas ...
     RelTabelas(TBitBtn(Sender).Tag=1)
  else
  if Page1.ActivePageIndex = 1 then // rel servidores ...
     RelServidores(TBitBtn(Sender).Tag=1)
  else
  if Page1.ActivePageIndex = 2 then // rel financeiros ...
     RelFinanceiros(TBitBtn(Sender).Tag=1)
  else
  if Page1.ActivePageIndex = 3 then // rel Doctos ...
     RelDoctos(TBitBtn(Sender).Tag=1);
end;

procedure TfrmPrintRelFinanceiros.cbVinculo22PropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmPrintRelFinanceiros.cbVinculo22PropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmPrintRelFinanceiros.edExercicio389KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit
  else if Key = '+' then
  begin
     try
        edExercicio389.Text := IntToStr(StrToInt(edExercicio389.Text)+1);
     except
        edExercicio389.Text := LeftStr(glb_sAnoMesTrab,4);
     end;
  end
  else if Key = '-' then
  begin
     try
        edExercicio389.Text := IntToStr(StrToInt(edExercicio389.Text)-1);
     except
        edExercicio389.Text := LeftStr(glb_sAnoMesTrab,4);
     end;
  end else
      Key := #0;
end;

procedure TfrmPrintRelFinanceiros.edIdTipoUL1Exit(Sender: TObject);
begin
  if Empty(edIdTipoUL1.Text) then exit;
  edIdTipoUL1.Text := Trim(edIdTipoUL1.Text);
  edDescrTipoUL1.Text := Pesquisa('TIPO_UNID_LOTACAO','ID',edIdTipoUL1.Text,
     'DESCRICAO','Identificador de Unidade, inválido !');
  if edDescrTipoUL1.Text = '' then
     edIdTipoUL1.SetFocus;
end;

procedure TfrmPrintRelFinanceiros.edIdTipoUL1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0'..'9',#8] then exit else Key := #0;
end;

procedure TfrmPrintRelFinanceiros.edMultiUnidGestora342KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3)) then sbMultiUnidGestora342.Click;
end;

procedure TfrmPrintRelFinanceiros.edMultiUnidGestora342KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in ['0'..'9',';',#8] then exit else Key := #0;
end;

procedure TfrmPrintRelFinanceiros.edRemessa308_1Exit(Sender: TObject);
begin
  //if not Empty(edRemessa308_1.Text) then
  //   edRemessa308_1.Text := PreencheZeros(edRemessa308_1.Text,9);
end;

procedure TfrmPrintRelFinanceiros.edSubUnidOrcamsKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3)) then
  begin
     if Page1.ActivePageIndex = 0 then
     begin
        if rbOpRel105.Checked then
           sbTipoUL1.Click;
     end else
     if Page1.ActivePageIndex = 3 then  // rel doctos
     begin
        if rbOpRel401.Checked then
        begin
           if TcxCustomEdit(Sender).Tag = 3 then
              sbMsgContraCheque411.Click;
        end;
     end;
  end;
end;

procedure TfrmPrintRelFinanceiros.edSubUnidOrcamsKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['0' .. '9', ';', #8] then exit else Key := #0;
end;

procedure TfrmPrintRelFinanceiros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(dmRelFinanceiros);
  FreeAndNil(dmRelLanctos);
  FreeAndNil(frmSelectMultiCargo);
  FreeAndNil(frmSelectMultiUnidLotacao);
  FreeAndNil(frmSelectMultiSubUnidOrcam);
  FreeAndNil(frmSelecionaEventos);
  FreeAndNil(frmSelectMultiEstFuncional);
  FreeAndNil(frmSelectUnidGestoras);
  FreeAndNil(frmSelectMultiDEpto);
end;

procedure TfrmPrintRelFinanceiros.FormCreate(Sender: TObject);
Var
  sTipoOrgao: String[1];
begin
  inherited;
  sTipoOrgao := Pesquisa('CONFIG_ORGAO','ID','1','TIPO_ORGAO','');
  rbOpRel302.Visible:= Pos(sTipoOrgao,'1%2')>0;
  nbDadosRel1.PageIndex := 0;
  nbDadosRel2.PageIndex := 0;
  nbDadosRel3.PageIndex := 0;
  nbDadosRel4.PageIndex := 0;
  rbOpRel101.Checked := True;
  rbOpRel201.Checked := True;
  rbOpRel301.Checked := True;
  rbOpRel401.Checked := True;
  //rbOpRel101.Checked := True;
  //nbDadosRel5.PageIndex := 0;
end;

procedure TfrmPrintRelFinanceiros.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(dmRelTabelas1);
  FreeAndNil(dmRelServidores);
  FreeAndNil(dmRelFinanceiros);
  FreeAndNil(dmRelDoctos);
  //FreeAndNil(dmReloOutros);
end;

procedure TfrmPrintRelFinanceiros.FormShow(Sender: TObject);
Var
   iConta: Integer;
   sTipoCCheque: string[1];
   sOperConfigRel: string[1];
   sPermOperTemp: string[1];
begin
  if glb_sParcela = '1' then
     pv_sParcela := '2'
  else
     pv_sParcela := glb_sParcela;
  sOperConfigRel := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperExecut),
     'CONFIG_RELS','');
  btnSetup.Enabled := (sOperConfigRel='S');

  sPermOperTemp := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperExecut),
     'REL_TABELAS','');
  tsRelTab.Enabled := (sPermOperTemp='S');

  sPermOperTemp := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperExecut),
     'REL_SERVIDORES','');
  tsRelServid.Enabled := (sPermOperTemp='S');

  sPermOperTemp := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperExecut),
     'REL_FINANCEIROS','');
  tsRelFinanc.Enabled := (sPermOperTemp='S');

  sPermOperTemp := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperExecut),
     'REL_DOCTOS','');
  tsRelDoctos.Enabled := (sPermOperTemp='S');

  sPermOperTemp := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperExecut),
     'REL_OUTROS','');
  tsRelOutros.Enabled := (sPermOperTemp='S');

  sTipoCCheque := Pesquisa('CONFIG_ORGAO','ID','1','TIPO_CONTRA_CHEQUE','');
  edExercicio389.Text := LeftStr(glb_sAnoMesTrab,4);
  if sTipoCCheque = '' then
     sTipoCCheque := '0';
  cbFormatoCCheque411.ItemIndex := StrToInt(sTipoCCheque)-1;

  frmSelectMultiSubUnidOrcam:= TfrmSelectMultiSubUnidOrcam.Create(Self);
  frmSelectMultiUnidLotacao := TfrmSelectMultiUnidLotacao.Create(Self);
  frmSelectMultiCargo       := TfrmSelectMultiCargo.Create(Self);
  frmSelecionaEventos       := TfrmSelecionaEventos.Create(Self);
  frmSelectUnidGestoras     := TfrmSelectUnidGestoras.Create(Self);
  frmSelectMultiEstFuncional:= TfrmSelectMultiEstFuncional.Create(Self);
  frmSelectMultiDEpto       := TfrmSelectMultiDEpto.Create(Self);
  frmSelectMultiGenerico    := TfrmSelectMultiGenerico.Create(Self);

  Caption := 'OPÇÕES DE RELATÓRIOS ...';

  Page1.ActivePageIndex := StrToInt(pv_sOpGrupo)-1;

  //edMesAnoIni7.Text := _Right(glb_sAnoMesTrab,2)+_Left(glb_sAnoMesTrab,4);
  //edMesAnoFim7.Text := edMesAnoIni7.Text;
  //rbRel18.Enabled:= (glb_sTipoDeOrgao='1');
  if pv_sOpGrupo = '1' then
  begin
     For iConta := 0 To gbOpGrupo1.ControlCount - 1 Do
       If (gbOpGrupo1.Controls[iConta] is TRadioButton) Then
          If (gbOpGrupo1.Controls[iConta] as TRadioButton).Checked Then
             (gbOpGrupo1.Controls[iConta] As TRadioButton).SetFocus;
  end;
  //If wRelatorio = 0 Then wRelatorio := 301;
  //bExecBtn := True;
  //tbConfig.Open;
  //If Empty(edMesAnoIni7.Text) Then edMesAnoIni7.Text := InverteAnoMes(glb_sAnoMesTrab,'2');
  //If Empty(edMesAnoFim7.Text) Then edMesAnoFim7.Text := InverteAnoMes(glb_sAnoMesTrab,'2');

end;

procedure TfrmPrintRelFinanceiros.frmeEntidFinanc2012sbEntidFinancClick(
  Sender: TObject);
begin
  inherited;
  frmeEntidFinanc2012.pb_sTipoEntidFinanc := 'B';
  frmeEntidFinanc2012.sbEntidFinancClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeEntidFinanc308_1edIdExit(Sender: TObject);
begin
  inherited;
  if Trim(frmeEntidFinanc308_1.edId.Text) = '' then exit;
  frmeEntidFinanc308_1.edIdExit(Sender);
  qryRemessa.Close;
  qryRemessa.ParamByName('pAnoMes').Value     := glb_sAnoMesTrab;
  qryRemessa.ParamByName('pParcela').Value    := pv_sParcela;
  qryRemessa.ParamByName('pUnidGestora').AsString :=
     Trim(fmeUnidGestora308_1.edId.Text);
  qryRemessa.ParamByName('pEntidFinanc').Value:=
     Trim(frmeEntidFinanc308_1.edId.Text);
  qryRemessa.Open;
  cbRemessa308_1.Properties.Items.Clear;
  while not qryRemessa.Eof do
  begin
     cbRemessa308_1.Properties.Items.Add(qryRemessaID_REMESSA.Value);
     qryRemessa.Next;
  end;
  cbRemessa308_1.ItemIndex := 0;
end;

procedure TfrmPrintRelFinanceiros.frmeEntidFinanc308_1sbEntidFinancClick(
  Sender: TObject);
begin
  inherited;
  frmeEntidFinanc308_1.sbEntidFinancClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeEvento305_1sbEventoClick(Sender: TObject);
begin
  inherited;
  frmeMultiEventos305_1.sbEventosClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiDepto1sbDeptoClick(Sender: TObject);
begin
  inherited;
  frmeMultiDepto205.sbDeptoClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiEventos305_1sbEventosClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiEventos305_1.sbEventosClick(Sender);

end;

procedure TfrmPrintRelFinanceiros.frmeMultiEventos31sbEventosClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiEventos301.sbEventosClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiSubUnidOrcam1sbS_U_OsClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiSubUnidOrcam209.sbS_U_OsClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiSubUnidOrcam23sbS_U_OsClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiSubUnidOrcam23.sbS_U_OsClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiSubUnidOrcam305_1sbS_U_OsClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiSubUnidOrcam305_1.sbS_U_OsClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiSubUnidOrcam308_1sbS_U_OsClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiSubUnidOrcam308_1.sbS_U_OsClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiUnidLotacao23sbUnidLotacsClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiUnidLotacao23.pb_iTipoFiltro := 4;
  frmeMultiUnidLotacao23.sbUnidLotacsClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.frmeMultiUnidLotacao322sbUnidLotacsClick(
  Sender: TObject);
begin
  inherited;
  frmeMultiUnidLotacao322.pb_iTipoFiltro := 4;
  frmeMultiUnidLotacao322.sbUnidLotacsClick(Sender);
end;

procedure TfrmPrintRelFinanceiros.nbDadosRel2Enter(Sender: TObject);
begin
  inherited;
  if TNotebook(Sender).PageIndex = 2 then
     frmeMultiSubUnidOrcam22.pb_sId_Unid_Gestora := '0'
  else if TNotebook(Sender).PageIndex = 3 then
     frmeMultiSubUnidOrcam23.pb_sId_Unid_Gestora := '0'
  else if TNotebook(Sender).PageIndex = 4 then
     frmeMultiSubUnidOrcam24.pb_sId_Unid_Gestora := '0'
  else if TNotebook(Sender).PageIndex = 6 then
     frmeMultiSubUnidOrcam26.pb_sId_Unid_Gestora := '0';
  {
  frmeMultiSubUnidOrcam1.edS_U_Os.Hint := 'Informe a(s) Sub-Unidade(s) '+
     'Orçamentária(s) (obrigatório) ...';
  frmeMultiSubUnidOrcam1.sbS_U_Os.Hint := 'Seleciona a(s) Sub-Unidade(s) '+
     'Orçamentária(s) (obrigatório) ...';
  }
end;

procedure TfrmPrintRelFinanceiros.rbOpRel301Enter(Sender: TObject);
var
   iConta: Integer;
begin
  if Page1.ActivePageIndex = 0 then  // Tabelas
  begin
     for iConta := 0 to gbOpGrupo1.ControlCount - 1 do
        If (gbOpGrupo1.Controls[iConta] is TRadioButton) then
          TRadioButton(gbOpGrupo1.Controls[iConta]).Font.Style := [];
     TRadioButton(Sender).Font.Style := [fsBold];
     if TcxRadioGroup(Sender).Tag in [101,102,106,107,110] then
        nbDadosRel1.PageIndex := 0
     else if TcxRadioGroup(Sender).Tag = 103 then
        nbDadosRel1.PageIndex := 1
     else if TcxRadioGroup(Sender).Tag = 104 then
        nbDadosRel1.PageIndex := 2
     else if TcxRadioGroup(Sender).Tag = 105 then
        nbDadosRel1.PageIndex := 3
     else if TcxRadioGroup(Sender).Tag = 108 then
        nbDadosRel1.PageIndex := 6
     else if TcxRadioGroup(Sender).Tag = 109 then
        nbDadosRel1.PageIndex := 4;
  end else
  if Page1.ActivePageIndex = 1 then // Servidores
  begin
     for iConta := 0 to gbOpGrupo2.ControlCount - 1 do
        If (gbOpGrupo2.Controls[iConta] is TRadioButton) then
          TRadioButton(gbOpGrupo2.Controls[iConta]).Font.Style := [];
     TRadioButton(Sender).Font.Style := [fsBold];
     if rbOpRel210.Checked then
        nbDadosRel2.PageIndex := 1
     else if rbOpRel211.Checked then
        nbDadosRel2.PageIndex := 2
     else if rbOpRel212.Checked then
        nbDadosRel2.PageIndex := 9
     else if rbOpRel213.Checked then
        nbDadosRel2.PageIndex := 14
     else if rbOpRel289.Checked then
        nbDadosRel2.PageIndex := 11
     else if rbOpRel299.Checked then
        nbDadosRel2.PageIndex := 12
     else if rbOpRel279.Checked then
        nbDadosRel2.PageIndex := 13
     else if rbOpRel281.Checked then
        nbDadosRel2.PageIndex := 14
     else if rbOpRel282.Checked then
        nbDadosRel2.PageIndex := 15
     else
        nbDadosRel2.PageIndex := TcxRadioGroup(Sender).Tag - 201;
  end else
  if Page1.ActivePageIndex = 2 then
  begin
     for iConta := 0 to gbOpGrupo3.ControlCount - 1 do
        If (gbOpGrupo3.Controls[iConta] is TRadioButton) then
          TRadioButton(gbOpGrupo3.Controls[iConta]).Font.Style := [];
     TRadioButton(Sender).Font.Style := [fsBold];
     if rbOpRel308.Checked then
        cbRemessa308_1.Properties.Items.Clear
     else if rbOpRel310.Checked then
        nbDadosRel3.PageIndex := 8
     else if rbOpRel389.Checked then
        nbDadosRel3.PageIndex := 9
     else if rbOpRel309.Checked then
        nbDadosRel3.PageIndex := 11
     else if rbOpRel399.Checked then
        nbDadosRel3.PageIndex := 10
     else if rbOpRel311.Checked then
        nbDadosRel3.PageIndex := 12
     else
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

procedure TfrmPrintRelFinanceiros.sbAnoMaisClick(Sender: TObject);
begin
  if TSpeedButton(Sender).Tag = 1 then
     edExercicio389.Text := IntToStr(StrToInt(edExercicio389.Text)+1)
  else
     edExercicio389.Text := IntToStr(StrToInt(edExercicio389.Text)-1);
end;

procedure TfrmPrintRelFinanceiros.sbCargosFuncoesClick(Sender: TObject);
begin
  //edUnidsLotacao.Text := frmSelecionaUnidsLotacao.Executa(edUnidsLotacao.Text,'','');
end;

procedure TfrmPrintRelFinanceiros.sbMultiUnidGestora342Click(Sender: TObject);
begin
  edMultiUnidGestora342.Text := frmSelectUnidGestoras.Executa(edMultiUnidGestora342.Text);
end;

procedure TfrmPrintRelFinanceiros.sbSubUnidOrcamsClick(Sender: TObject);
begin
  if Page1.ActivePageIndex = 0 then // Rel Tabelas
     BotaoSelectClickPg1(Sender)
  else
  if Page1.ActivePageIndex = 1 then // Rel de Servidores - 3
     BotaoSelectClickPg2(Sender)
  else
  if Page1.ActivePageIndex = 2 then // Rel Financeiros - 3
     BotaoSelectClickPg3(Sender)
  else
  if Page1.ActivePageIndex = 3 then // Rel Doctos
     BotaoSelectClickPg4(Sender);
end;

Procedure TfrmPrintRelFinanceiros.RelTabelas(lVisualizar: Boolean);
Var
  sTemp1: string[1];
begin
  dmRelTabelas1 := TdmRelTabelas1.Create(Self);
  if rbOpRel101.Checked then
     dmRelTabelas1.RelUnidesGestoras(iIf(rbGrupo1OrdNum.Checked,
        'ID','DESCRICAO'),lVisualizar);
  if rbOpRel102.Checked then
     dmRelTabelas1.RelUnidesOrcamentarias(iIf(rbGrupo1OrdNum.Checked,
        'ID','DESCRICAO'),lVisualizar);
  if rbOpRel103.Checked then
  begin
     if rbSUO_SituacT.Checked then
        sTemp1 := 'T'
     else if rbSUO_Situac1.Checked then
        sTemp1 := 'S'
     else
        sTemp1 := 'N';
     dmRelTabelas1.RelSubUnidOrcament1(sTemp1,iIf(rbSUO_Ordem1.Checked,
        'ID','DESCRICAO'),lVisualizar);
  end else
  if rbOpRel104.Checked then
     dmRelTabelas1.RelEstruturaOrganizacional(lVisualizar)
  else if rbOpRel105.Checked then
     dmRelTabelas1.RelUniLotacao(edIdTipoUL1.Text,
        iIf(rbUL_Ordem1.Checked,'ID','DESCRICAO'),lVisualizar)
  else if rbOpRel106.Checked then
     dmRelTabelas1.RelDepto(iIf(rbUL_Ordem1.Checked,'ID','DESCRICAO'),lVisualizar)
  else if rbOpRel107.Checked then
     dmRelTabelas1.RelCargoFuncao1(iIf(rbUL_Ordem1.Checked,'ID',
        'DESCRICAO'),lVisualizar)
  else if rbOpRel108.Checked then
     dmRelTabelas1.RelTabCargosSalarios(frmeMultiCategFunc108.edMultiItens.Text,
        frmeMultiTipoCargoTCM108.edMultiItens.Text,
        IntToStr(cbSituacao108.ItemIndex),lVisualizar)
  else if rbOpRel109.Checked then
  begin
     sTemp1 := 'T';
     if rbTipoEventoV.Checked then
        sTemp1 := 'V'
     else if rbTipoEventoD.Checked then
        sTemp1 := 'D';
     dmRelTabelas1.RelEventos(sTemp1,iIf(rbEventoOrdem1.Checked,'ID',
        'DESCRICAO'),lVisualizar)
  end else
  if rbOpRel110.Checked then
     dmRelTabelas1.RelEstadosFuncionais(iIf(rbUL_Ordem1.Checked,'ID',
        'DESCRICAO'),lVisualizar);
  FreeAndNil(dmRelTabelas1);
end;

procedure TfrmPrintRelFinanceiros.RelServidores(lVisualizar: Boolean);
Var
  sTipoVinculo: String[1];
  sTemp1,
  sTemp2: String[1];
begin
  if rbOpRel299.Checked then
  begin
     frmPrintRelOutros2 := TfrmPrintRelOutros2.Create(Self);
     frmPrintRelOutros2.RelFichaCadIndividual(fmeServidor2_299.edId.Text,
        lVisualizar);
     FreeAndNil(frmPrintRelOutros2);
     exit;
  end;
  dmRelServidores := TdmRelServidores.Create(Self);
  if rbOpRel201.Checked then
  begin
     if cbTipoRel201.ItemIndex = 0 then
        dmRelServidores.RelGeral('2',fmeUnidGestora21.edId.Text,
           IntToStr(cbVinculo201.ItemIndex),
           frmeMultiSubUnidOrcam21.edS_U_Os.Text,lVisualizar)
     else
        dmRelServidores.RelGeral('1',fmeUnidGestora21.edId.Text,
           IntToStr(cbVinculo201.ItemIndex),
           frmeMultiSubUnidOrcam21.edS_U_Os.Text,lVisualizar);
  end else
  if rbOpRel202.Checked then
  begin
     dmRelServidores.RelSubUnidOrcament(fmeUnidGestora22.edId.Text,
        frmeMultiSubUnidOrcam22.edS_U_Os.Text,
        frmeMultiUnidLotacao22.edUnidsLotacs.Text,
        frmeMultiCargo22.edCargos.Text,
        frmeMultiEstFuncional22.edEstFuncs.Text,
        IntToStr(cbVinculo22.ItemIndex),
        IntToStr(cbSituac22.ItemIndex),
        frmePerAdminDt22.edDtIni.Text,
        frmePerAdminDt22.edDtFim.Text,
        iIf(rbRel22_1.Checked,'1','2'),'N',lVisualizar);
  end else
  if rbOpRel203.Checked then
  begin
     if Empty(frmeMultiCargo23.edCargos.Text) then exit;
     dmRelServidores.RelCargoFuncao('2',frmeMultiCargo23.edCargos.Text,
        frmeMultiSubUnidOrcam23.edS_U_Os.Text,
        frmeMultiUnidLotacao23.edUnidsLotacs.Text,
        frmeMultiEstFuncional23.edEstFuncs.Text,
        IntToStr(cbVinculo23.ItemIndex),IntToStr(cbSituac23.ItemIndex),
        frmePerAdminDt23.edDtIni.Text,
        frmePerAdminDt23.edDtFim.Text,lVisualizar);
  end else
  if rbOpRel204.Checked then
  begin
     if Empty(frmeMultiUnidLotacao24.edUnidsLotacs.Text) then exit;
     dmRelServidores.RelUnidLotacao(frmeMultiUnidLotacao24.edUnidsLotacs.Text,
        frmeMultiSubUnidOrcam24.edS_U_Os.Text,
        frmeMultiCargo24.edCargos.Text,
        frmeMultiEstFuncional24.edEstFuncs.Text,
        IntToStr(cbVinculo24.ItemIndex),IntToStr(cbSituac24.ItemIndex),
        frmePerAdminDt24.edDtIni.Text,
        frmePerAdminDt24.edDtFim.Text,
        lVisualizar);
  end else
  if rbOpRel205.Checked then
  begin
     if Empty(frmeMultiDepto205.edMultiDepto.Text) then exit;
     dmRelServidores.RelDepto(frmeMultiDepto205.edMultiDepto.Text,
        frmeMultiSubUnidOrcam205.edS_U_Os.Text,
        frmeMultiUnidLotacao205.edUnidsLotacs.Text,
        frmeMultiCargo205.edCargos.Text,'0',
        IntToStr(cbVinculo205.ItemIndex),
        IntToStr(cbSituacao205.ItemIndex),
        frmePeriodoAdm205.edDtIni.TextHint,
        frmePeriodoAdm205.edDtFim.TextHint,lVisualizar);
  end else
  if rbOpRel206.Checked then
  begin
     if Empty(frmeMultiEstFuncional26.edEstFuncs.Text) then exit;
     dmRelServidores.RelEstadoFuncional(frmeMultiEstFuncional26.edEstFuncs.Text,
        frmeMultiSubUnidOrcam26.edS_U_Os.Text,
        frmeMultiCargo26.edCargos.Text,
        frmeMultiUnidLotacao26.edUnidsLotacs.Text,
        IntToStr(cbVinculo24.ItemIndex),IntToStr(cbSituac24.ItemIndex),
        frmePerAdminDt26.edDtIni.Text,
        frmePerAdminDt26.edDtFim.Text,
        frmePerMovimDt26.edDtIni.Text,
        frmePerMovimDt26.edDtFim.Text,
        lVisualizar);
  end else
  if rbOpRel207.Checked then
  begin
     dmRelServidores.RelAniversariantes(glb_sAnoMesTrab,
        fmeUnidGestora207.edId.Text,
        frmeMultiSubUnidOrcam207.edS_U_Os.Text,
        IntToStr(cbSituac207.ItemIndex),
        lVisualizar);
  end else
  if rbOpRel208.Checked then
  begin
     dmRelServidores.RelServidAdmDemPeriodo(
        frmeMultiSubUnidOrcam208.edS_U_Os.Text,
        frmeMultiCargo208.edCargos.Text,
        frmeMultiUnidLotac208.edUnidsLotacs.Text,
        IntToStr(cbVinculo208.ItemIndex),
        IntToStr(cbSituac208.ItemIndex),
        frmePeriodoDt208.edDtIni.Text,
        frmePeriodoDt208.edDtFim.Text,
        iIf(rbOpAdm208.Checked,'1','2'),lVisualizar);
  end else
  if rbOpRel209.Checked then
  begin
     dmRelServidores.RelMovimPeriodo(frmePeriodoDt209.edDtIni.Text,
        frmePeriodoDt209.edDtFim.Text,
        frmeMultiSubUnidOrcam209.edS_U_Os.Text,
        IntToStr(cbVinculo209.ItemIndex),
        IntToStr(cbSituac209.ItemIndex),
        chkMovim1_209.Checked,
        chkMovim2_209.Checked,
        chkMovim3_209.Checked,
        chkQuebraSUO209.Checked,
        lVisualizar);
  end else
  if rbOpRel210.Checked then
  begin
     dmRelServidores.RelSubUnidOrcament(fmeUnidGestora22.edId.Text,
        frmeMultiSubUnidOrcam22.edS_U_Os.Text,
        frmeMultiUnidLotacao22.edUnidsLotacs.Text,
        frmeMultiCargo22.edCargos.Text,
        frmeMultiEstFuncional22.edEstFuncs.Text,
        IntToStr(cbVinculo22.ItemIndex),
        IntToStr(cbSituac22.ItemIndex),
        frmePerAdminDt22.edDtIni.Text,
        frmePerAdminDt22.edDtFim.Text,
        iIf(rbRel22_1.Checked,'1','2'),'S',lVisualizar);
  end else
  if rbOpRel211.Checked then
  begin
     dmRelServidores.RelDesvioFuncao(frmeMultiCargo23.edCargos.Text,
        frmeMultiSubUnidOrcam23.edS_U_Os.Text,
        frmeMultiUnidLotacao23.edUnidsLotacs.Text,
        frmeMultiEstFuncional23.edEstFuncs.Text,
        IntToStr(cbVinculo23.ItemIndex),
        IntToStr(cbSituac23.ItemIndex),
        frmePerAdminDt23.edDtIni.Text,
        frmePerAdminDt23.edDtFim.Text,
        '',
        '',
        lVisualizar);
  end else
  if rbOpRel212.Checked then
  begin
     dmRelServidores.RelContaCorrente(frmeEntidFinanc2012.edId.Text,
        frmeMultiSubUnidOrcam212.edS_U_Os.Text,
        IntToStr(cbOpcao212.ItemIndex),
        iIf(chkQuebraSUO212.Checked,'S','N'),
        lVisualizar);
  end else
  if rbOpRel213.Checked then
  begin
     dmRelServidores.RelResumoCargoVagas(lVisualizar);
  end else
  if rbOpRel279.Checked then
  begin
     dmRelServidores.RelFichaInscrPASEP(fmeUnidGestora279.edId.Text,
        lVisualizar);
  end else
  if rbOpRel281.Checked then
  begin
     dmRelServidores.RelServid_TRE(lVisualizar);
  end else
  if rbOpRel282.Checked then
  begin
     dmRelServidores.RelDependServidor(frmeMultiSubUnidOrcam282.edS_U_Os.Text,
       iIf(chkFiltrarDependFilho.Checked,'S','N'),lVisualizar);
  end else
  if rbOpRel289.Checked then
  begin
     dmRelServidores.RelAtestadosMedicos(frmePeriodoDt299.edDtIni.Text,
        frmePeriodoDt299.edDtFim.Text,fmeServidor299.edId.Text,lVisualizar);
  end;
  FreeAndNil(dmRelServidores);

end;

procedure TfrmPrintRelFinanceiros.RelFinanceiros(lVisualizar: Boolean);
Var
  sTipoVinculo: String[1];
  sParcela,
  sTemp1,
  sTemp2: String[1];
begin
  dmRelFinanceiros := TdmRelFinanceiros.Create(Self);
  dmRelLanctos     := TdmRelLanctos.Create(Self);
  if rbOpRel301.Checked then
  begin
     if rbOpRel301_1.Checked then
        sTemp1 := 'T'
     else if rbOpRel301_2.Checked then
        sTemp1 := 'M'
     else
        sTemp1 := 'F';
     dmRelLanctos.RelEventosPorServidor(frmeMultiEventos301.edEventos.Text,
        frmeMultiSubUnidOrcam301.edS_U_Os.Text,'0',
        IntToStr(cbVinculo301.ItemIndex),sTemp1,lVisualizar);
  end else
  if rbOpRel302.Checked then
  begin
     if pcRel32.ActivePageIndex = 0 then
        dmRelLanctos.RelLanctoCargaHorProf(StrToInt(trim(fmeUnidGestora321.edId.Text)),
            frmeMultiSubUnidOrcam321.edS_U_Os.Text,'',
            frmeMultiCargo321.edCargos.Text,
            IntToStr(cbVinculo321.ItemIndex),
            lVisualizar)
     else
        dmRelLanctos.RelLanctoCargaHorProf2(
           frmeMultiUnidLotacao322.edUnidsLotacs.Text,
           frmeMultiCargo322.edCargos.Text,
           IntToStr(cbVinculo322.ItemIndex),
           lVisualizar);
  end else
  if rbOpRel303.Checked then
  begin
     if cbTipoFolha33.ItemIndex = 0 then
        dmRelFinanceiros.RelFolhaAnalitica(StrToInt(trim(fmeUnidGestora33.edId.Text)),
           frmeMultiSubUnidOrcam33.edS_U_Os.Text,
           frmeMultiUnidLotacao33.edUnidsLotacs.Text,
           frmeMultiCargo33.edCargos.Text,'T',lVisualizar)
     else
        dmRelFinanceiros.RelFolhaSintetica(StrToInt(trim(fmeUnidGestora33.edId.Text)),
           frmeMultiSubUnidOrcam33.edS_U_Os.Text,
           frmeMultiUnidLotacao33.edUnidsLotacs.Text,
           frmeMultiCargo33.edCargos.Text,'T',lVisualizar);
  end else
  if rbOpRel304.Checked then
  begin
     if pcRel33.ActivePageIndex = 0 then
     begin
        if Empty(frmeMultiSubUnidOrcam341.edS_U_Os.Text) then exit;
        dmRelFinanceiros.RelTotaisSubUnidOrcam(glb_sAnoMesTrab,pv_sParcela,
            StrToInt(trim(fmeUnidGestora341.edId.Text)),
            frmeMultiSubUnidOrcam341.edS_U_Os.Text,lVisualizar);
     end else
     begin
        if Empty(edMultiUnidGestora342.Text) then exit;
        dmRelFinanceiros.RelTotalPorUnidGestora(glb_sAnoMesTrab,pv_sParcela,
            edMultiUnidGestora342.Text,
            IntToStr(cbTipoResumo342.ItemIndex+1),
            IntToStr(cbOpcao342.ItemIndex),
            lVisualizar);
     end;
  end else
  if rbOpRel305.Checked then
  begin
     dmRelFinanceiros.RelEventoCalc(glb_sAnoMesTrab,pv_sParcela,
        frmeMultiEventos305_1.edEventos.Text,
        frmeMultiSubUnidOrcam305_1.edS_U_Os.Text,
        frmeMultiCargo305_1.edCargos.Text,
        IntToStr(cbVinculo305_1.ItemIndex),
        'S',iIf(chkQuebraSUO305_1.Checked,'S','N'),
        lVisualizar);
  end else
  if rbOpRel306.Checked then
  begin
     dmRelFinanceiros.RelDeducaoEntidPrevidencia(
         StrToInt(Trim(fmeUnidGestora306.edId.Text)),
         glb_sAnoMesTrab,pv_sParcela,
         '0',IntToStr(cbTipoPrevid306.ItemIndex+1),
         lVisualizar)
  end else
  if rbOpRel307.Checked then
  begin
     dmRelFinanceiros.RelComparativoEntreMeses(fmePeriodoM_307.edMesAnoIni.Text,
        fmePeriodoM_307.edMesAnoFim.Text,
        StrToInt(Trim(fmeUnidGestora307.edId.Text)),
        frmeMultiSubUnidOrcam307.edS_U_Os.Text,
        frmeMultiCargo307.edCargos.Text,
        IntToStr(cbTipoRel307.ItemIndex+1),
        lVisualizar);
  end else
  if rbOpRel308.Checked then
  begin
     //if glb_sParcComplementar = 'S' then
     //   sParcela := '2'
     //else
        sParcela := pv_sParcela;
     if pcRel308.ActivePageIndex = 0 then
        dmRelFinanceiros.RelBancario(glb_sAnoMesTrab,sParcela,
           '',frmeEntidFinanc308_1.edId.Text,
           frmeMultiSubUnidOrcam308_1.edS_U_Os.Text,
           cbRemessa308_1.Text,'1',Iif(chkQuebraRelSUO308_1.Checked,'S','N'),
           '',lVisualizar)
     else
        dmRelFinanceiros.RelBancario(glb_sAnoMesTrab,sParcela,
           fmeUnidGestora308_2.edId.Text,'','','','2','N',
           iIf(rbOpRelMod308_2_1.Checked,'1','2'),lVisualizar);
  end else
  if rbOpRel309.Checked then
  begin
     //if glb_sParcComplementar = 'S' then
     //   sParcela := '2'
     //else
        sParcela := pv_sParcela;
     dmRelFinanceiros.RelServidSemDepositoConta(glb_sAnoMesTrab,sParcela,
        fmeUnidGestora309.edId.Text,lVisualizar);
  end else
  if rbOpRel310.Checked then
  begin
     dmRelFinanceiros.RelMapaFrequencia(glb_sAnoMesTrab,
        frmeMultiSubUnidOrcam310.edS_U_Os.Text,
        frmeMultiUnidLotacao310.edUnidsLotacs.Text,
        IntToStr(cbTipoMapaFreq310.ItemIndex+1),lVisualizar);
  end else
  if rbOpRel311.Checked then
  begin
     dmRelFinanceiros.RelServidCargoRemuneracao(glb_sAnoMesTrab,
        frmeMultiCargo311.edCargos.Text,lVisualizar);
  end else
  if rbOpRel389.Checked then
  begin
     dmRelFinanceiros.RelFichaFinancAnualServid(fmeServidor389.edId.Text,
        fmeServidor389.edNome.Text,fmeServidor389.edDescrCargo.Text,
        edExercicio389.Text,lVisualizar);
  end else
  if rbOpRel399.Checked then
  begin
     dmRelFinanceiros.RelHistFinancServidor(fmeServidor35.edId.Text,
        fmePeriodoM_35.edMesAnoIni.Text,
        fmePeriodoM_35.edMesAnoFim.Text,
        lVisualizar);
  end;
  FreeAndNil(dmRelFinanceiros);
  FreeAndNil(dmRelLanctos);
end;

procedure TfrmPrintRelFinanceiros.RelDoctos(lVisualizar: Boolean);
Var
  sTipoVinculo: String[1];
  sTemp1,
  sTemp2: String[1];
begin
  if rbOpRel401.Checked then
  begin
     dmRelDoctos := TdmRelDoctos.Create(Self);
     dmRelDoctos.RelConta_Cheque(glb_sAnoMesTrab,pv_sParcela,
        StrToInt(trim(fmeUnidGestora411.edId.Text)),
        frmeMultiSubUnidOrcam411.edS_U_Os.Text,
        frmeMultiUnidLotacao411.edUnidsLotacs.Text,
        edMsgContraCheque411.Text,
        '0',IntToStr(cbFormatoCCheque411.ItemIndex+1),
        chkCChequeSomenteSemConta.Checked,
        chkOrdemUnidLotacao.Checked,lVisualizar);
     FreeAndNil(dmRelDoctos);
  end else
  if rbOpRel402.Checked then
  begin
     dmRelFinanceiros := TdmRelFinanceiros.Create(Self);
     dmRelFinanceiros.RelGPS(StrToInt(Trim(fmeUnidGestora42.edId.Text)),
        glb_sAnoMesTrab,pv_sParcela,
        frmeMultiSubUnidOrcam42.edS_U_Os.Text,
        IntToStr(cbTipoPrevid42.ItemIndex+1),
        IntToStr(cbOpcoesGPS42.ItemIndex),
        lVisualizar);
     FreeAndNil(dmRelFinanceiros);
  end else
  if rbOpRel403.Checked then
  begin
     dmRelDoctos := TdmRelDoctos.Create(Self);
     dmRelDoctos.RelProtocolEntregaCCheque(
        glb_sAnoMesTrab,
        pv_sParcela,
        StrToInt(trim(fmeUnidGestora403.edId.Text)),
        frmeMultiSubUnidOrcam403.edS_U_Os.Text,
        '0',
        chkSomenteSemCC403.Checked,
        chkOrdemUnidLotac403.Checked,lVisualizar);
     FreeAndNil(dmRelDoctos);
  end;
end;

procedure TfrmPrintRelFinanceiros.BotaoSelectClickPg1;
begin
   frmSelecionaPadrao := TfrmSelecionaPadrao.Create(Nil);
   if rbOpRel105.Checked then
      if frmSelecionaPadrao.Executa('TIPO DE UNIDADE DE LOTAÇÃO','TIPO_UNID_LOTACAO',
            'DESCRICAO','ID','ID',False) then
      edIdTipoUL1.Text := glb_sCodigo;
   FreeAndNil(frmSelecionaPadrao);
end;

procedure TfrmPrintRelFinanceiros.BotaoSelectClickPg2(Sender: TObject);
begin
end;

procedure TfrmPrintRelFinanceiros.BotaoSelectClickPg3(Sender: TObject);
begin
end;

procedure TfrmPrintRelFinanceiros.BotaoSelectClickPg4(Sender: TObject);
begin
  if rbOpRel401.Checked then
  begin
     if frmSelecionaPadrao.Executa
       ('MENSGEM P/ O CONTRA-CHEQUE','MSG_CONTRA_CHEQUE','DESCRICAO','ID',
        'ID',False) then
     begin
        edMsgContraCheque411.Text := Pesquisa('MSG_CONTRA_CHEQUE','ID',glb_sCodigo,'DESCRICAO','');
        edMsgContraCheque411.SetFocus;
     end;
  end;
end;

end.
