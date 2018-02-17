unit Config_Sistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxControls, cxPC, cxContainer, cxEdit, cxClasses, cxStyles, cxGridTableView,
  StdCtrls, cxButtons, ExtCtrls, FMTBcd, DB, DBClient, Provider, SqlExpr,
  cxButtonEdit, cxDBEdit, cxGroupBox, cxRadioGroup, cxImage,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCurrencyEdit, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxCalendar;

type
  TfrmConfigSistema = class(TfbsDefault5)
    btnAlterar1: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    sdsConfigOrgao: TSQLDataSet;
    dspConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    dsConfigOrgao: TDataSource;
    sdsConfigOrgaoID: TIntegerField;
    sdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    sdsConfigOrgaoSIGLA: TStringField;
    sdsConfigOrgaoCNPJ: TStringField;
    sdsConfigOrgaoLOGRADOURO: TStringField;
    sdsConfigOrgaoNUMERO: TStringField;
    sdsConfigOrgaoBAIRRO: TStringField;
    sdsConfigOrgaoCIDADE: TStringField;
    sdsConfigOrgaoCEP: TStringField;
    sdsConfigOrgaoUF: TStringField;
    sdsConfigOrgaoTELEFONE: TStringField;
    sdsConfigOrgaoDIRETOR: TStringField;
    sdsConfigOrgaoCOD_CNAE: TIntegerField;
    sdsConfigOrgaoCOD_FPAS: TIntegerField;
    sdsConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField;
    sdsConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField;
    sdsConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField;
    sdsConfigOrgaoTIPO: TIntegerField;
    sdsConfigOrgaoBRASAO: TBlobField;
    cbUF: TcxDBComboBox;
    edBairro: TcxDBTextEdit;
    edCEP: TcxDBTextEdit;
    edCidade: TcxDBTextEdit;
    edCnpj: TcxDBTextEdit;
    edCodCnae: TcxDBTextEdit;
    edCodFpas: TcxDBTextEdit;
    edCodMunRais: TcxDBTextEdit;
    edCodNaturezaJuridica: TcxDBTextEdit;
    edDiretor: TcxDBTextEdit;
    edLogradouro: TcxDBTextEdit;
    edNumero: TcxDBTextEdit;
    edRazaoSocial: TcxDBTextEdit;
    edSigla: TcxDBTextEdit;
    edTelefone: TcxDBTextEdit;
    imgBrasao: TcxDBImage;
    gbTipo: TcxDBRadioGroup;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblDescricao: TLabel;
    edCodMunTCM: TcxDBTextEdit;
    Label10: TLabel;
    Label9: TLabel;
    gbCodEventos: TGroupBox;
    Label11: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edQtdAnoATS: TcxDBTextEdit;
    Label24: TLabel;
    Label25: TLabel;
    edCodEventoSalFam: TbsDBButtonEdit;
    edCodEventoATS: TbsDBButtonEdit;
    edCodEventoPensaoAliment: TbsDBButtonEdit;
    edCodEventoHAulaSuplem: TbsDBButtonEdit;
    edCodEventoFaltaDia: TbsDBButtonEdit;
    edCodEvento13Ferias: TbsDBButtonEdit;
    edCodEventoAbonPecunFerias: TbsDBButtonEdit;
    edCodEvento13FeraisProporc: TbsDBButtonEdit;
    edCodEventoINSS: TbsDBButtonEdit;
    edCodEventoIPM: TbsDBButtonEdit;
    edCodEventoIRRF: TbsDBButtonEdit;
    edCodEventoAdiantFerias: TbsDBButtonEdit;
    edCodEventoFeriasProporc: TbsDBButtonEdit;
    edCodEvento13SalProporc: TbsDBButtonEdit;
    edCodEventoHAulaSubstit: TbsDBButtonEdit;
    gbCodSituacoes: TcxGroupBox;
    Label27: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    gbModeloCCheque: TcxDBRadioGroup;
    cxTabSheet3: TcxTabSheet;
    sdsOrdenadorDespesa: TSQLDataSet;
    sdsOrdenadorDespesaID: TIntegerField;
    sdsOrdenadorDespesaNOME: TStringField;
    sdsOrdenadorDespesaCARGO: TStringField;
    sdsOrdenadorDespesaSEXO: TStringField;
    dspOrdenadorDespesa: TDataSetProvider;
    cdsOrdenadorDepesa: TClientDataSet;
    cdsOrdenadorDepesaID: TIntegerField;
    cdsOrdenadorDepesaNOME: TStringField;
    cdsOrdenadorDepesaCARGO: TStringField;
    cdsOrdenadorDepesaSEXO: TStringField;
    dsOrdenadorDespesa: TDataSource;
    sdsConfigSistema: TSQLDataSet;
    dspConfigSistema: TDataSetProvider;
    cdsConfigSistema: TClientDataSet;
    dsConfigSistema: TDataSource;
    edCodSituacLicMatern: TbsDBButtonEdit;
    edCodSituacFeriasPagAdiant: TbsDBButtonEdit;
    edCodSituacDemitido: TbsDBButtonEdit;
    Label29: TLabel;
    Label30: TLabel;
    edCodEventoFaltaHAula: TbsDBButtonEdit;
    sdsConfigSistemaID: TIntegerField;
    sdsConfigSistemaID_EVENTO_PREVID_INSS: TIntegerField;
    sdsConfigSistemaID_EVENTO_PREVID_IPM: TIntegerField;
    sdsConfigSistemaID_EVENTO_SAL_FAMILIA: TIntegerField;
    sdsConfigSistemaID_EVENTO_IRRF: TIntegerField;
    sdsConfigSistemaID_EVENTO_FALTA_DIA: TIntegerField;
    sdsConfigSistemaID_EVENTO_FALTA_H_AULA: TIntegerField;
    sdsConfigSistemaID_EVENTO_TERCO_FERIAS: TIntegerField;
    sdsConfigSistemaID_EVENTO_ABONO_PECUN_FERIAS: TIntegerField;
    sdsConfigSistemaID_EVENTO_ADIANT_FERIAS: TIntegerField;
    sdsConfigSistemaID_EVENTO_TERCO_FERIAS_PROPORC: TIntegerField;
    sdsConfigSistemaID_EVENTO_FERIAS_PROPORC: TIntegerField;
    sdsConfigSistemaID_EVENTO_DEC_TERCEIRO_PROPORC: TIntegerField;
    sdsConfigSistemaID_EVENTO_H_AULA_SUPLEM: TIntegerField;
    sdsConfigSistemaID_EVENTO_H_AULA_SUBSTIT: TIntegerField;
    sdsConfigSistemaID_EVENTO_PENSAO_ALIMENTICIA: TIntegerField;
    sdsConfigSistemaID_EVENTO_ADIANT_DEC_TERCEIRO: TIntegerField;
    sdsConfigSistemaID_EVENTO_DIA_EXTRA: TIntegerField;
    sdsConfigSistemaID_EVENTO_ATS: TIntegerField;
    sdsConfigSistemaQTD_ANO_ATS: TIntegerField;
    sdsConfigSistemaPERCENT_ATS: TFMTBCDField;
    sdsConfigSistemaID_EST_FUNC_LICENC_MATERN: TIntegerField;
    sdsConfigSistemaID_EST_FUNC_DEMITIDO: TIntegerField;
    sdsConfigSistemaID_EST_FUNC_ADIANT_FERIAS: TIntegerField;
    sdsConfigSistemaMODELO_C_CHEQUE: TIntegerField;
    sdsConfigSistemaCARGA_HOR_PADRAO: TIntegerField;
    edPercentATS: TcxDBCurrencyEdit;
    sdsOrdenadorDespesaATIVO: TStringField;
    cdsOrdenadorDepesaATIVO: TStringField;
    cdsConfigSistemaID: TIntegerField;
    cdsConfigSistemaID_EVENTO_PREVID_INSS: TIntegerField;
    cdsConfigSistemaID_EVENTO_PREVID_IPM: TIntegerField;
    cdsConfigSistemaID_EVENTO_SAL_FAMILIA: TIntegerField;
    cdsConfigSistemaID_EVENTO_IRRF: TIntegerField;
    cdsConfigSistemaID_EVENTO_FALTA_DIA: TIntegerField;
    cdsConfigSistemaID_EVENTO_FALTA_H_AULA: TIntegerField;
    cdsConfigSistemaID_EVENTO_TERCO_FERIAS: TIntegerField;
    cdsConfigSistemaID_EVENTO_ABONO_PECUN_FERIAS: TIntegerField;
    cdsConfigSistemaID_EVENTO_ADIANT_FERIAS: TIntegerField;
    cdsConfigSistemaID_EVENTO_TERCO_FERIAS_PROPORC: TIntegerField;
    cdsConfigSistemaID_EVENTO_FERIAS_PROPORC: TIntegerField;
    cdsConfigSistemaID_EVENTO_DEC_TERCEIRO_PROPORC: TIntegerField;
    cdsConfigSistemaID_EVENTO_H_AULA_SUPLEM: TIntegerField;
    cdsConfigSistemaID_EVENTO_H_AULA_SUBSTIT: TIntegerField;
    cdsConfigSistemaID_EVENTO_PENSAO_ALIMENTICIA: TIntegerField;
    cdsConfigSistemaID_EVENTO_ADIANT_DEC_TERCEIRO: TIntegerField;
    cdsConfigSistemaID_EVENTO_DIA_EXTRA: TIntegerField;
    cdsConfigSistemaID_EVENTO_ATS: TIntegerField;
    cdsConfigSistemaQTD_ANO_ATS: TIntegerField;
    cdsConfigSistemaPERCENT_ATS: TFMTBCDField;
    cdsConfigSistemaID_EST_FUNC_LICENC_MATERN: TIntegerField;
    cdsConfigSistemaID_EST_FUNC_DEMITIDO: TIntegerField;
    cdsConfigSistemaID_EST_FUNC_ADIANT_FERIAS: TIntegerField;
    cdsConfigSistemaMODELO_C_CHEQUE: TIntegerField;
    cdsConfigSistemaCARGA_HOR_PADRAO: TIntegerField;
    cdsConfigOrgaoID: TIntegerField;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoSIGLA: TStringField;
    cdsConfigOrgaoCNPJ: TStringField;
    cdsConfigOrgaoLOGRADOURO: TStringField;
    cdsConfigOrgaoNUMERO: TStringField;
    cdsConfigOrgaoBAIRRO: TStringField;
    cdsConfigOrgaoCIDADE: TStringField;
    cdsConfigOrgaoCEP: TStringField;
    cdsConfigOrgaoUF: TStringField;
    cdsConfigOrgaoTELEFONE: TStringField;
    cdsConfigOrgaoDIRETOR: TStringField;
    cdsConfigOrgaoCOD_CNAE: TIntegerField;
    cdsConfigOrgaoCOD_FPAS: TIntegerField;
    cdsConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField;
    cdsConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField;
    cdsConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField;
    cdsConfigOrgaoTIPO: TIntegerField;
    cdsConfigOrgaoBRASAO: TBlobField;
    sdsConfigIPM: TSQLDataSet;
    dspConfigIPM: TDataSetProvider;
    cdsConfigIPM: TClientDataSet;
    dsConfigIPM: TDataSource;
    sdsConfigIPMID: TIntegerField;
    sdsConfigIPMNOME: TStringField;
    sdsConfigIPMENDERECO: TStringField;
    sdsConfigIPMNUMERO: TStringField;
    sdsConfigIPMBAIRRO: TStringField;
    sdsConfigIPMCIDADE: TStringField;
    sdsConfigIPMCEP: TStringField;
    sdsConfigIPMUF: TStringField;
    sdsConfigIPMCNPJ: TStringField;
    sdsConfigIPMDT_IMPLANTACAO: TDateField;
    sdsConfigIPMDT_ENCERRAMENTO: TDateField;
    sdsConfigIPMNOME_PRESIDENTE: TStringField;
    cdsConfigIPMID: TIntegerField;
    cdsConfigIPMNOME: TStringField;
    cdsConfigIPMENDERECO: TStringField;
    cdsConfigIPMNUMERO: TStringField;
    cdsConfigIPMBAIRRO: TStringField;
    cdsConfigIPMCIDADE: TStringField;
    cdsConfigIPMCEP: TStringField;
    cdsConfigIPMUF: TStringField;
    cdsConfigIPMCNPJ: TStringField;
    cdsConfigIPMDT_IMPLANTACAO: TDateField;
    cdsConfigIPMDT_ENCERRAMENTO: TDateField;
    cdsConfigIPMNOME_PRESIDENTE: TStringField;
    cxTabSheet4: TcxTabSheet;
    GridTable: TcxGrid;
    GridTableDBTableView1: TcxGridDBTableView;
    GridTableDBTableView1ID: TcxGridDBColumn;
    GridTableDBTableView1NOME: TcxGridDBColumn;
    GridTableDBTableView1CARGO: TcxGridDBColumn;
    GridTableDBTableView1SEXO: TcxGridDBColumn;
    GridTableDBTableView1Column1: TcxGridDBColumn;
    GridTableLevel1: TcxGridLevel;
    cxButton3: TcxButton;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    edNomeIPM: TcxDBTextEdit;
    edSiglaIPM: TcxDBTextEdit;
    edEnderIPM: TcxDBTextEdit;
    Label34: TLabel;
    edNumEnderIPM: TcxDBTextEdit;
    edCNPIPM: TcxDBTextEdit;
    edBairroIPM: TcxDBTextEdit;
    edPresidenteIPM: TcxDBTextEdit;
    edDtImplantIPM: TcxDBDateEdit;
    edDtEncerramentoIPM: TcxDBDateEdit;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    procedure cxButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterar1Click(Sender: TObject);
    procedure cdsConfigOrgaoAfterPost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigSistema: TfrmConfigSistema;

implementation

Uses
   bsLibrary, AddEditOrdenadorDespesa;

{$R *.dfm}

procedure TfrmConfigSistema.btnAlterar1Click(Sender: TObject);
begin
  btnCancelar.Caption := '&Cancelar';
  cdsConfigOrgao.Edit;
  cdsConfigSistema.Edit;
  cdsConfigIPM.Edit;
  btnGravar.Enabled  := True;
  //btnCancelar.Enabled:= True;
  btnAlterar1.Enabled:= False;
  edSigla.SetFocus;
end;

procedure TfrmConfigSistema.btnCancelarClick(Sender: TObject);
begin
   if btnCancelar.Caption = '&Sair' then
   Begin
      Close;
      Exit;
   End;
   if (cdsConfigOrgao.State in [dsEdit]) then
   Begin
      cdsConfigOrgao.Cancel;
      cdsConfigSistema.Cancel;
   End;
   cdsConfigOrgao.CancelUpdates;
   cdsConfigSistema.CancelUpdates;
   btnCancelar.Caption := '&Sair';
end;

procedure TfrmConfigSistema.cdsConfigOrgaoAfterPost(DataSet: TDataSet);
begin
  inherited;
  btnGravar.Enabled := False;
  btnCancelar.Enabled:= False;
end;

procedure TfrmConfigSistema.cxButton1Click(Sender: TObject);
var
  AddEditForm: TForm;

  iId: Integer;
begin
  AddEditForm := TfAddEditOrdenadorDespesa.Create(Self);

  if TcxButton(Sender).Tag in [1, 2] then
  begin
    TfbsDefault5(AddEditForm).Tag := 1; //para nao comitar a transacao
    TfbsDefault5(AddEditForm).DataSources[2].Tag :=  TcxButton(Sender).Tag;
    if TcxButton(Sender).Tag = 1 then
      TfbsDefault5(AddEditForm).DataSources[2].DataSet.Tag := -1
    else
      TfbsDefault5(AddEditForm).DataSources[2].DataSet.Tag :=
        DataSources[2].DataSet.FieldByName(bsl_sFieldPrimaryCode).AsInteger;
    AddEditForm.ShowModal;

    iId := TClientDataSet(DataSources[2].DataSet).FieldByName(bsl_sFieldPrimaryCode).AsInteger;
    CloseClient(TClientDataSet(DataSources[2].DataSet));
    OpenClient(TClientDataSet(DataSources[2].DataSet), '');
    TClientDataSet(DataSources[2].DataSet).Locate(bsl_sFieldPrimaryCode, iId, []);
  end
  else
  begin
    //verifico se há registros no datasource principal
    //e se o usuário não confirmou a exclusão
    if (Self.DataSources[2].DataSet.RecordCount = 0) or
      (CustomMessage('Você tem certeza de que quer excluir?', 'Confirma', MB_ICONQUESTION+MB_YESNO) = IDNO) then
        Abort; //aborto

    TClientDataSet(DataSources[2].DataSet).Delete; //deleto o registro do clientdataset principal

    //verifico se aplicou as aterações no clientdataset principal
    if ApplyUpdates(TClientDataSet(DataSources[2].DataSet)) then
    begin
//      FinishTransaction(True); //finalizo a transação com commit
//      StartTransaction; //inicio outra transação
    end
    else
    begin
//      FinishTransaction(False); //finalizao a transação com rollback
//      StartTransaction; //inicio outra transação
    end;
  end;

  AddEditForm.Free;
end;

procedure TfrmConfigSistema.FormCreate(Sender: TObject);
begin
  inherited;

  sdsConfigOrgao.SQLConnection     := bsl_scConnection;
  sdsConfigSistema.SQLConnection   := bsl_scConnection;
  sdsConfigIPM.SQLConnection       := bsl_scConnection;
  sdsOrdenadorDespesa.SQLConnection:= bsl_scConnection;

  DataSources[0] := dsConfigOrgao;
  DataSources[1] := dsConfigSistema;
  DataSources[2] := dsConfigIPM;
  DataSources[3] := dsOrdenadorDespesa;

end;

procedure TfrmConfigSistema.FormShow(Sender: TObject);
begin
  inherited;
  btnGravar.Enabled  := False;
  //btnCancelar.Enabled:= False;
  cxPageControl1.ActivePageIndex:= 0;

end;

end.
