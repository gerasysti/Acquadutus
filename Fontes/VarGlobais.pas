unit VarGlobais;

interface

Const
  glb_aUF: array[0..27] of String = ('','AC','AL','AP','AM','BA','CE','DF','ES','GO',
                                     'MA','MG','MT','MS','PA','PB','PE','PI','PR',
                                     'RJ','RN','RR','RS','RO','SC','SP','SE','TO');

Var
   glb_hHND_Principal: THandle;
   glb_sMultiOrgao   : string[1];
   glb_oConnecName   : String;
   glb_sMarketing    : String[30];
   glb_sAnoMesTrab   : String[6];
   glb_sAnoMesTrava  : String[6];
   //glb_sParcComplementar: string[1];
   //glb_sMatricula: String[6];
   glb_sCodigo: String;
   glb_sCodigos: WideString;
   glb_sEmpresa: String[80];
   glb_sTipoDeOrgao: String[1];
   glb_sDescrMesAnoTrab: String[50];
   glb_iWidth,
   glb_iHeight: Integer;
   glb_iIdOperLogado : Integer;
   glb_iIdOperExecut : Integer;
   glb_sNomeForm1,
   glb_sNomeForm2    : String[50];
   glb_sSistema      : String[80];
   glb_sVersao       : String[15];
   glb_sDtVer        : String[10];
   glb_sAlias: String;
   glb_lMovEmAberto: Boolean;
   glb_sTelefone1,
   glb_sTelefone2    : String[25];
   glb_sPathAplicao  : String;
   glb_sTextUltPesquisa: string;
   glb_sTextPesqTab  : string[50];

implementation

end.
