unit AddEditPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, FMTBcd, DB,
  DBClient, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls, cxClasses,
  cxStyles, cxGridTableView, cxContainer, cxEdit,
  cxControls, cxGroupBox, Padrao1, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, dxSkinsCore, dxSkinsDefaultPainters, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TfrmAddEditPadrao = class(TfrmPadrao1)
    PanelClient: TPanel;
    Panel: TPanel;
    btnCancelar: TcxButton;
    btnGravar: TcxButton;
    ds1: TDataSource;
    lblPadrao: TcxLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    pv_sFormCall : String;
  public
    { Public declarations }
    pb_iIdAddEdit: Integer;
    pb_sNovoNova,
    pb_sNomeTab,
    pb_sNomeCampoPK,
    pb_sNomeGenerator,
    pb_sTitJanela: String;
    pb_iId : Integer;
    pb_lConfirmSave: Boolean;
    Function Executa(sFormCall: String; iId: Integer): Integer;
    //procedure HintInPanel(Sender: TObject); //esse é procedimento genérico
  end;

var
  frmAddEditPadrao: TfrmAddEditPadrao;

implementation

uses UtilsDb, gsLib, udmPrincipal, VarGlobais, udmTabelas;

{$R *.dfm}

procedure TfrmAddEditPadrao.btnGravarClick(Sender: TObject);
begin

   if (ds1.DataSet.State in [dsInsert, dsEdit]) then
      pb_lConfirmSave := Confirma('Gravar '+iIf(ds1.DataSet.State=dsInsert,'Novo '+
         pb_sTitJanela,'Alerações')+' ?');

   if pb_lConfirmSave then
      pb_iIdAddEdit := ds1.DataSet.FieldByName(pb_sNomeCampoPK).Value;

end;

Function TfrmAddEditPadrao.Executa(sFormCall: String; iId: Integer): Integer;
Begin
  pv_sFormCall:= sFormCall;
  pb_iIdAddEdit:= 0;
  pb_iId       := iId;
  ShowModal;
  Result       := pb_iIdAddEdit;
End;

procedure TfrmAddEditPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (ds1.DataSet.State in [dsInsert, dsEdit]) then
  begin
     if ds1.DataSet.State = dsInsert then
        CancelGenerator(ds1.DataSet.State,pb_sNomeTab,pb_sNomeCampoPK,
          ds1.DataSet.FieldByName(pb_sNomeCampoPK).Value);
     ds1.DataSet.Cancel;
  end;

end;

procedure TfrmAddEditPadrao.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNovoNova := 'NOVA';
end;

procedure TfrmAddEditPadrao.FormShow(Sender: TObject);
Var
  i: Integer;
begin

  inherited;

  if ds1.DataSet.State = dsInsert then
     ds1.DataSet.FieldByName(pb_sNomeCampoPK).AsString :=
       IncrementGenerator(pb_sNomeGenerator,1);

  Caption := ' '+iIf((ds1.DataSet.State=dsInsert),pb_sNovoNova,'ALTERANDO')+' '+pb_sTitJanela+' ...';

end;

end.
