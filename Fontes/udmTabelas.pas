unit udmTabelas;

interface

uses
  SysUtils, Classes, FMTBcd, DBClient,
  Provider, DB, SqlExpr;

type
  TdmTabelas = class(TDataModule)
    qryCidade: TSQLQuery;
    qryCidadeID: TIntegerField;
    qryCidadeNOME: TStringField;
    qryCidadeCEP: TStringField;
    qryCidadeUF: TStringField;
    qryCidadeCEP_FTDO: TStringField;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeCEP: TStringField;
    cdsCidadeUF: TStringField;
    cdsCidadeCEP_FTDO: TStringField;
    qryDistrito: TSQLQuery;
    qryDistritoID: TIntegerField;
    qryDistritoDESCRICAO: TStringField;
    qryDistritoID_CIDADE: TIntegerField;
    qryDistritoNOME_CIDADE: TStringField;
    provDistrito: TDataSetProvider;
    cdsDistrito: TClientDataSet;
    qryCidadeFiltro: TSQLQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    provCidadeFiltro: TDataSetProvider;
    cdsCidadeFiltro: TClientDataSet;
    cdsCidadeFiltroID: TIntegerField;
    cdsCidadeFiltroNOME: TStringField;
    cdsCidadeFiltroCEP: TStringField;
    cdsCidadeFiltroUF: TStringField;
    cdsCidadeFiltroCEP_FTDO: TStringField;
    cdsDistritoID: TIntegerField;
    cdsDistritoDESCRICAO: TStringField;
    cdsDistritoID_CIDADE: TIntegerField;
    cdsDistritoNOME_CIDADE: TStringField;
    qryBairro: TSQLQuery;
    provBairro: TDataSetProvider;
    cdsBairro: TClientDataSet;
    qryBairroID: TIntegerField;
    qryBairroDESCRICAO: TStringField;
    qryBairroNOME_CURTO: TStringField;
    qryBairroNOME_CIDADE: TStringField;
    qryBairroID_DISTRITO: TIntegerField;
    qryBairroID_CIDADE: TIntegerField;
    qryBairroDESCR_DISTRITO: TStringField;
    qryBairroDESCR_DISTRITO_CIDADE: TStringField;
    cdsBairroID: TIntegerField;
    cdsBairroDESCRICAO: TStringField;
    cdsBairroNOME_CURTO: TStringField;
    cdsBairroNOME_CIDADE: TStringField;
    cdsBairroID_DISTRITO: TIntegerField;
    cdsBairroID_CIDADE: TIntegerField;
    cdsBairroDESCR_DISTRITO: TStringField;
    cdsBairroDESCR_DISTRITO_CIDADE: TStringField;
    qryLogradouro: TSQLQuery;
    provLogradouro: TDataSetProvider;
    cdsLogradouro: TClientDataSet;
    qryLogradouroID: TIntegerField;
    qryLogradouroDESCRICAO: TStringField;
    qryLogradouroID_DISTRITO: TIntegerField;
    qryLogradouroNOME_DISTRITO: TStringField;
    qryLogradouroID_CIDADE: TIntegerField;
    qryLogradouroNOME_CIDADE: TStringField;
    qryLogradouroDESCR_DISTRITO_CIDADE: TStringField;
    cdsLogradouroID: TIntegerField;
    cdsLogradouroDESCRICAO: TStringField;
    cdsLogradouroID_DISTRITO: TIntegerField;
    cdsLogradouroNOME_DISTRITO: TStringField;
    cdsLogradouroID_CIDADE: TIntegerField;
    cdsLogradouroNOME_CIDADE: TStringField;
    cdsLogradouroDESCR_DISTRITO_CIDADE: TStringField;
    provTabTarifa: TDataSetProvider;
    cdsTabTarifa: TClientDataSet;
    qryTabTarifa: TSQLQuery;
    qryTabTarifaID: TIntegerField;
    qryTabTarifaFORMA_CALCULO: TStringField;
    qryTabTarifaTIPO_UNID_CONSUM: TStringField;
    qryTabTarifaQTD_INI: TIntegerField;
    qryTabTarifaQTD_FIM: TIntegerField;
    qryTabTarifaVALOR: TFMTBCDField;
    qryTabTarifaID_VIGENCIA: TIntegerField;
    qryTabTarifaDESCR_FORMA_CALCULO: TStringField;
    qryTabTarifaDESCR_TIPO_UNID_CONSUM: TStringField;
    qryTabTarifaINI_VIGENCIA: TStringField;
    qryTabTarifaFIM_VIGENCIA: TStringField;
    qryTabTarifaINI_VIG_FTDO: TStringField;
    qryTabTarifaFIM_VIG_FTDO: TStringField;
    qryTabTarifaVAL_EXCED: TFMTBCDField;
    qryTabTarifaQTD_BASE: TIntegerField;
    cdsTabTarifaID: TIntegerField;
    cdsTabTarifaFORMA_CALCULO: TStringField;
    cdsTabTarifaTIPO_UNID_CONSUM: TStringField;
    cdsTabTarifaQTD_INI: TIntegerField;
    cdsTabTarifaQTD_FIM: TIntegerField;
    cdsTabTarifaVALOR: TFMTBCDField;
    cdsTabTarifaID_VIGENCIA: TIntegerField;
    cdsTabTarifaDESCR_FORMA_CALCULO: TStringField;
    cdsTabTarifaDESCR_TIPO_UNID_CONSUM: TStringField;
    cdsTabTarifaINI_VIGENCIA: TStringField;
    cdsTabTarifaFIM_VIGENCIA: TStringField;
    cdsTabTarifaINI_VIG_FTDO: TStringField;
    cdsTabTarifaFIM_VIG_FTDO: TStringField;
    cdsTabTarifaVAL_EXCED: TFMTBCDField;
    cdsTabTarifaQTD_BASE: TIntegerField;
    qryTabOutraTarifa: TSQLQuery;
    provTabOutraTarifa: TDataSetProvider;
    cdsTabOutraTarifa: TClientDataSet;
    qryVigenciaTarifa: TSQLQuery;
    qryVigenciaTarifaID: TIntegerField;
    qryVigenciaTarifaINI_VIG_FTDO: TStringField;
    qryVigenciaTarifaFIM_VIG_FTDO: TStringField;
    qryVigencia: TSQLQuery;
    qryVigenciaID: TIntegerField;
    qryVigenciaINICIO: TStringField;
    qryVigenciaFIM: TStringField;
    qryVigenciaINI_VIG_FTDO: TStringField;
    qryVigenciaFIM_VIG_FTDO: TStringField;
    qryVigenciaOBSERVACAO: TStringField;
    provVigencia: TDataSetProvider;
    cdsVigencia: TClientDataSet;
    cdsVigenciaID: TIntegerField;
    cdsVigenciaINICIO: TStringField;
    cdsVigenciaFIM: TStringField;
    cdsVigenciaINI_VIG_FTDO: TStringField;
    cdsVigenciaFIM_VIG_FTDO: TStringField;
    cdsVigenciaOBSERVACAO: TStringField;
    qryTabOutraTarifaID: TIntegerField;
    qryTabOutraTarifaDESCRICAO: TStringField;
    qryTabOutraTarifaVALOR: TFMTBCDField;
    qryTabOutraTarifaID_VIGENCIA: TIntegerField;
    qryTabOutraTarifaINI_VIGENCIA: TStringField;
    qryTabOutraTarifaFIM_VIGENCIA: TStringField;
    qryTabOutraTarifaINI_VIG_FTDO: TStringField;
    qryTabOutraTarifaFIM_VIG_FTDO: TStringField;
    cdsTabOutraTarifaID: TIntegerField;
    cdsTabOutraTarifaDESCRICAO: TStringField;
    cdsTabOutraTarifaVALOR: TFMTBCDField;
    cdsTabOutraTarifaID_VIGENCIA: TIntegerField;
    cdsTabOutraTarifaINI_VIGENCIA: TStringField;
    cdsTabOutraTarifaFIM_VIGENCIA: TStringField;
    cdsTabOutraTarifaINI_VIG_FTDO: TStringField;
    cdsTabOutraTarifaFIM_VIG_FTDO: TStringField;
    qryLocalPagto: TSQLQuery;
    provLocalPagto: TDataSetProvider;
    cdsLocalPagto: TClientDataSet;
    qryLocalPagtoID: TIntegerField;
    qryLocalPagtoDESCRICAO: TStringField;
    qryLocalPagtoID_ENTID_FINANC: TIntegerField;
    qryLocalPagtoCOD_BANCO: TStringField;
    qryLocalPagtoATIVO: TStringField;
    cdsLocalPagtoID: TIntegerField;
    cdsLocalPagtoDESCRICAO: TStringField;
    cdsLocalPagtoID_ENTID_FINANC: TIntegerField;
    cdsLocalPagtoCOD_BANCO: TStringField;
    cdsLocalPagtoATIVO: TStringField;
    qryUsuario: TSQLQuery;
    qryUsuarioID: TIntegerField;
    qryUsuarioNOME_CURTO: TStringField;
    qryUsuarioNOME_COMPLETO: TStringField;
    qryUsuarioFUNCIONARIO: TStringField;
    qryUsuarioID_FUNCIONARIO: TIntegerField;
    qryUsuarioCARGO_FUNCAO: TStringField;
    qryUsuarioOBSERVACAO: TStringField;
    qryUsuarioSENHA: TStringField;
    qryUsuarioACESS_TAB_TARIFA: TStringField;
    qryUsuarioACESS_CAD_UNID_CONSUM: TStringField;
    qryUsuarioCALC_TARIFA_INDIV: TStringField;
    qryUsuarioCALC_TARIFA_BAIRRO: TStringField;
    qryUsuarioIMPORT_PAGTO_TXT: TStringField;
    qryUsuarioLAN_PAGTO: TStringField;
    qryUsuarioCALC_REAJUSTE: TStringField;
    qryUsuarioCANCEL_TARIFA: TStringField;
    qryUsuarioCONFIG_RELS: TStringField;
    qryUsuarioREL_TABELAS: TStringField;
    qryUsuarioREL_UNID_CONSUM: TStringField;
    qryUsuarioREL_FINANCEIROS: TStringField;
    qryUsuarioREL_DOCTOS: TStringField;
    qryUsuarioREL_OUTROS: TStringField;
    qryUsuarioGERADOR_RELS: TStringField;
    qryUsuarioCONFIG_ORGAO: TStringField;
    qryUsuarioCONFIG_SISTEMA: TStringField;
    qryUsuarioEXECUT_COMAND_SQL: TStringField;
    qryUsuarioENCERRAR_REABRIR_MOVIM: TStringField;
    qryUsuarioREST_BACKUP: TStringField;
    provUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    cdsUsuarioID: TIntegerField;
    cdsUsuarioNOME_CURTO: TStringField;
    cdsUsuarioNOME_COMPLETO: TStringField;
    cdsUsuarioFUNCIONARIO: TStringField;
    cdsUsuarioID_FUNCIONARIO: TIntegerField;
    cdsUsuarioCARGO_FUNCAO: TStringField;
    cdsUsuarioOBSERVACAO: TStringField;
    cdsUsuarioSENHA: TStringField;
    cdsUsuarioACESS_TAB_TARIFA: TStringField;
    cdsUsuarioACESS_CAD_UNID_CONSUM: TStringField;
    cdsUsuarioCALC_TARIFA_INDIV: TStringField;
    cdsUsuarioCALC_TARIFA_BAIRRO: TStringField;
    cdsUsuarioIMPORT_PAGTO_TXT: TStringField;
    cdsUsuarioLAN_PAGTO: TStringField;
    cdsUsuarioCALC_REAJUSTE: TStringField;
    cdsUsuarioCANCEL_TARIFA: TStringField;
    cdsUsuarioCONFIG_RELS: TStringField;
    cdsUsuarioREL_TABELAS: TStringField;
    cdsUsuarioREL_UNID_CONSUM: TStringField;
    cdsUsuarioREL_FINANCEIROS: TStringField;
    cdsUsuarioREL_DOCTOS: TStringField;
    cdsUsuarioREL_OUTROS: TStringField;
    cdsUsuarioGERADOR_RELS: TStringField;
    cdsUsuarioCONFIG_ORGAO: TStringField;
    cdsUsuarioCONFIG_SISTEMA: TStringField;
    cdsUsuarioEXECUT_COMAND_SQL: TStringField;
    cdsUsuarioENCERRAR_REABRIR_MOVIM: TStringField;
    cdsUsuarioREST_BACKUP: TStringField;
    cdsUsuarioNOME_CURTO2: TStringField;
    cdsUsuarioNOME_COMPLETO2: TStringField;
    cdsUsuarioCARGO_FUNCAO2: TStringField;
    qryUsuarioPermTabela: TSQLQuery;
    qryUsuarioPermTabelaID_USUARIO: TIntegerField;
    qryUsuarioPermTabelaID_USUARIO_TABELA: TIntegerField;
    qryUsuarioPermTabelaINCLUIR: TStringField;
    qryUsuarioPermTabelaALTERAR: TStringField;
    qryUsuarioPermTabelaEXCLUIR: TStringField;
    qryUsuarioPermTabelaNOME_TABELA: TStringField;
    qryUsuarioPermTabelaDESCR_TABELA: TStringField;
    provUsuarioPermTabela: TDataSetProvider;
    cdsUsuarioPermTabela: TClientDataSet;
    cdsUsuarioPermTabelaID_USUARIO: TIntegerField;
    cdsUsuarioPermTabelaID_USUARIO_TABELA: TIntegerField;
    cdsUsuarioPermTabelaINCLUIR: TStringField;
    cdsUsuarioPermTabelaALTERAR: TStringField;
    cdsUsuarioPermTabelaEXCLUIR: TStringField;
    cdsUsuarioPermTabelaNOME_TABELA: TStringField;
    cdsUsuarioPermTabelaDESCR_TABELA: TStringField;
    qryConfigOrgao: TSQLQuery;
    qryConfigOrgaoID: TIntegerField;
    qryConfigOrgaoRAZAO_SOCIAL: TStringField;
    qryConfigOrgaoSIGLA: TStringField;
    qryConfigOrgaoCNPJ: TStringField;
    qryConfigOrgaoENDER_ID_LOGRAD: TIntegerField;
    qryConfigOrgaoENDER_LOGRAD_NUM: TStringField;
    qryConfigOrgaoENDER_ID_BAIRRO: TIntegerField;
    qryConfigOrgaoENDER_CIDADE: TStringField;
    qryConfigOrgaoENDER_CEP: TStringField;
    qryConfigOrgaoENDER_UF: TStringField;
    qryConfigOrgaoLOGOMARCA: TBlobField;
    qryConfigOrgaoTELEFONES: TStringField;
    qryConfigOrgaoE_MAIL: TStringField;
    qryConfigOrgaoPASTA_ATUALIZA: TStringField;
    qryConfigOrgaoTIPO_FATURA: TStringField;
    qryConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    qryConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
    qryConfigOrgaoCOD_FEBRABAN: TStringField;
    provConfigOrgao: TDataSetProvider;
    cdsConfigOrgao: TClientDataSet;
    cdsConfigOrgaoID: TIntegerField;
    cdsConfigOrgaoRAZAO_SOCIAL: TStringField;
    cdsConfigOrgaoSIGLA: TStringField;
    cdsConfigOrgaoCNPJ: TStringField;
    cdsConfigOrgaoENDER_ID_LOGRAD: TIntegerField;
    cdsConfigOrgaoENDER_LOGRAD_NUM: TStringField;
    cdsConfigOrgaoENDER_ID_BAIRRO: TIntegerField;
    cdsConfigOrgaoENDER_CIDADE: TStringField;
    cdsConfigOrgaoENDER_CEP: TStringField;
    cdsConfigOrgaoENDER_UF: TStringField;
    cdsConfigOrgaoLOGOMARCA: TBlobField;
    cdsConfigOrgaoTELEFONES: TStringField;
    cdsConfigOrgaoE_MAIL: TStringField;
    cdsConfigOrgaoPASTA_ATUALIZA: TStringField;
    cdsConfigOrgaoTIPO_FATURA: TStringField;
    cdsConfigOrgaoENDER_DESCR_LOGRAD: TStringField;
    cdsConfigOrgaoENDER_DESCR_BAIRRO: TStringField;
    cdsConfigOrgaoCOD_FEBRABAN: TStringField;
    qryConfigSistema: TSQLQuery;
    provConfigSistema: TDataSetProvider;
    cdsConfigSistema: TClientDataSet;
    qryConfigSistemaID: TIntegerField;
    qryConfigSistemaDT_VER_DB: TDateField;
    qryConfigSistemaHORA_VER_DB: TStringField;
    qryConfigSistemaPERC_MULTA: TFMTBCDField;
    qryConfigSistemaID_EXPEDIENTE: TIntegerField;
    qryConfigSistemaID_LIGACAO: TIntegerField;
    qryConfigSistemaID_RELIGACAO: TIntegerField;
    qryConfigSistemaID_RELIGACAO2: TIntegerField;
    qryConfigSistemaDT_VER_FR3: TDateField;
    qryConfigSistemaHORA_VER_FR3: TStringField;
    cdsConfigSistemaID: TIntegerField;
    cdsConfigSistemaDT_VER_DB: TDateField;
    cdsConfigSistemaHORA_VER_DB: TStringField;
    cdsConfigSistemaPERC_MULTA: TFMTBCDField;
    cdsConfigSistemaID_EXPEDIENTE: TIntegerField;
    cdsConfigSistemaID_LIGACAO: TIntegerField;
    cdsConfigSistemaID_RELIGACAO: TIntegerField;
    cdsConfigSistemaID_RELIGACAO2: TIntegerField;
    cdsConfigSistemaDT_VER_FR3: TDateField;
    cdsConfigSistemaHORA_VER_FR3: TStringField;
    qryPasta: TSQLQuery;
    qryPastaID: TIntegerField;
    qryPastaBACKUP_LOCAL: TStringField;
    qryPastaBACKUP_REMOTO: TStringField;
    provPasta: TDataSetProvider;
    cdsPasta: TClientDataSet;
    cdsPastaID: TIntegerField;
    cdsPastaBACKUP_LOCAL: TStringField;
    cdsPastaBACKUP_REMOTO: TStringField;
    procedure cdsCidadeFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsBairroFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsDistritoFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure cdsLogradouroFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AddItemFiltroCidade;
    procedure FiltraCidade(sNomeCDS,sNomeQRY: string);
    procedure GravaRegistro(sNomeCDS: string);
    procedure ExcluiRegistro(sNomeCDS: string);
    procedure OpenTable(sNomeCDS: String);
    procedure SetIndice(sNomeCDS, sCampoIndex: string);
    procedure OpenCDS_PermUsuario(iUsuario: integer);
  end;

var
  dmTabelas: TdmTabelas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses udmPrincipal, UtilsDb, VarGlobais;

{$R *.dfm}

procedure TdmTabelas.GravaRegistro(sNomeCDS: string);
Var
  oCDS1: TComponent;
begin
  oCDS1 := FindComponent(sNomeCDS);
  SalvaTransacao(TClientDataSet(oCDS1));

end;

procedure TdmTabelas.cdsBairroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   Accept :=
     (Pos(glb_sTextPesqTab,cdsBairroID.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsBairroDESCRICAO.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsBairroDESCR_DISTRITO.AsString) > 0);
end;

procedure TdmTabelas.cdsCidadeFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   Accept :=
     (Pos(glb_sTextPesqTab,cdsCidadeID.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsCidadeNOME.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsCidadeCEP.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsCidadeUF.AsString) > 0);
end;

procedure TdmTabelas.cdsDistritoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
   Accept :=
     (Pos(glb_sTextPesqTab,cdsDistritoId.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsDistritoDESCRICAO.AsString) > 0);
end;

procedure TdmTabelas.cdsLogradouroFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin

   if glb_sTextPesqTab = '' then exit;

   Accept :=
     (Pos(glb_sTextPesqTab,cdsLogradouroID.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsLogradouroDESCRICAO.AsString) > 0) or
     (Pos(glb_sTextPesqTab,cdsLogradouroNOME_DISTRITO.AsString) > 0);
end;

procedure TdmTabelas.ExcluiRegistro(sNomeCDS: string);
Var
  oCDS1: TComponent;
begin


  oCDS1 := FindComponent(sNomeCDS);
  TClientDataSet(oCDS1).Delete;
  SalvaTransacao(TClientDataSet(oCDS1));

end;

procedure TdmTabelas.OpenTable(sNomeCDS: String);
Var
  oCDs         : TComponent;
  lReposionaRec: Boolean;
  iValTemp     : Integer;
begin
  lReposionaRec := False;
  oCDs := FindComponent(sNomeCDS);
  if (TClientDataSet(oCDs).Active) and
     (TClientDataSet(oCDs).RecordCount > 0) then
  begin
     lReposionaRec := True;
     iValTemp      := TClientDataSet(oCDs).Fields[0].Value;
  end;
  TClientDataSet(oCDs).Close;
  TClientDataSet(oCDs).Open;
  if lReposionaRec then
     TClientDataSet(oCDs).Locate(TClientDataSet(oCDs).Fields[0].FieldName,iValTemp,[]);

end;

procedure TdmTabelas.FiltraCidade(sNomeCDS,sNomeQRY: string);
Var
  oCDS1,
  oQRY1: TComponent;
begin

  oCDS1 := FindComponent(sNomeCDS);
  oQRY1 := FindComponent(sNomeQRY);

  TClientDataSet(oCDS1).DisableControls;
  TClientDataSet(oCDS1).Close;
  TClientDataSet(oCDS1).Filtered := False;
  if cdsCidadeFiltro.FieldByName('ID').Value > 0 then
  begin
     TSQLQuery(oQRY1).ParamByName('cidade_ini').Value := cdsCidadeFiltro.FieldByName('id').AsString;
     TSQLQuery(oQRY1).ParamByName('cidade_fim').Value := cdsCidadeFiltro.FieldByName('id').AsString;
  end else
  begin
     TSQLQuery(oQRY1).ParamByName('cidade_ini').Value := 0;
     TSQLQuery(oQRY1).ParamByName('cidade_fim').Value := 999999;
  end;

  TClientDataSet(oCDS1).Open;
  TClientDataSet(oCDS1).EnableControls;

end;

procedure TdmTabelas.AddItemFiltroCidade;
Var
  sIdCidadeOrgao: string[7];
begin

  sIdCidadeOrgao := Pesquisa('CONFIG_ORGAO','ID','1','ender_ID_CIDADE','');

  with cdsCidadeFiltro do
  begin
    Close;
    Open;
    IndexFieldNames := 'ID';
    Insert;
    FieldByName('ID').Value := 0;
    FieldByName('NOME').Value := '<TODAS AS CIDADES>';
    Post;
    FindKey([StrToInt(sIdCidadeOrgao)]);
  end;

end;

procedure TdmTabelas.SetIndice(sNomeCDS, sCampoIndex: string);
Var
  oCDS1: TComponent;
begin
  oCDS1 := FindComponent(sNomeCDS);
  TClientDataSet(oCDS1).IndexFieldNames := sCampoIndex;
end;

procedure TdmTabelas.OpenCDS_PermUsuario(iUsuario: integer);
begin
   cdsUsuarioPermTabela.Close;
   qryUsuarioPermTabela.Params[0].Value := iUsuario;
   cdsUsuarioPermTabela.Open;
end;

end.
