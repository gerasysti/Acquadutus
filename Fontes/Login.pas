unit Login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, StdCtrls, Buttons, ExtCtrls,
  cxLabel, cxTextEdit, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfrmLogin = class(TfrmPadrao1)
    edUsuario: TcxTextEdit;
    edSenha: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Image1: TImage;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    procedure edUsuarioExit(Sender: TObject);
    procedure edSenhaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    pv_sSenha: String[8];
  public
    { Public declarations }
    pb_lSenhaOk: Boolean;
    Function Executa: Boolean;
  end;

var
  frmLogin: TfrmLogin;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais;

{$R *.dfm}

procedure TfrmLogin.btnCancelarClick(Sender: TObject);
begin
   pb_lSenhaOk := False;
end;

procedure TfrmLogin.btnOkClick(Sender: TObject);
Var
   sIdUsuario: String[3];
   sSenhaTemp,
   sSenhaTemp2: String[8];
begin
   pb_lSenhaOk := True;
   {
   glb_iIdOperLogado := 1;
   glb_iIdOperExecut := glb_iIdOperLogado;
   }
   if (Empty(edUsuario.Text)) and (Empty(edSenha.Text)) then exit;
   sSenhaTemp := Pesquisa('USUARIO','NOME_CURTO',
      Criptografa(edUsuario.Text,'1',20),'SENHA','');
   sSenhaTemp2:= Criptografa(edSenha.Text,'1',8);
   pb_lSenhaOk := (sSenhaTemp2 = sSenhaTemp);
   If Not pb_lSenhaOk Then
   Begin
      Mensagem('Senha ou Usu�rio Inv�lido ...','Erro !!!',MB_OK+MB_ICONERROR);
      edUsuario.SetFocus;
      Exit;
   End;
   sSenhaTemp2 := Criptografa(sSenhaTemp2,'2',8);
   sIdUsuario := Pesquisa('USUARIO','NOME_CURTO',
      Criptografa(edUsuario.Text,'1',20),'ID','');
   glb_iIdOperLogado := StrToInt(sIdUsuario);
   glb_iIdOperExecut := 1;
   pb_lSenhaOk := True;
   Close;

end;

procedure TfrmLogin.edSenhaExit(Sender: TObject);
Var
   sSenhaCript: String[8];
begin
   If Empty(edSenha.Text) Then Exit;
   sSenhaCript := Criptografa(edSenha.Text,'1',8);
   //sSenhaCript := edSenha.Text;
   If sSenhaCript <> pv_sSenha Then
   begin
      Mensagem('Senha Inv�lida ...','E r r o !!!',MB_OK+MB_ICONERROR);
      edSenha.SetFocus;
   end;
end;

procedure TfrmLogin.edUsuarioExit(Sender: TObject);
begin
   If Empty(edUsuario.Text) Then Exit;
   pv_sSenha := Pesquisa('USUARIO','NOME_CURTO',
      Criptografa(edUsuario.Text,'1',20),'SENHA',
      'Nome de Usu�rio Inv�lido ...');
   //pv_sSenha := Pesquisa('USUARIO','NOME_CURTO',
   //   edUsuario.Text,'SENHA',
   if (pv_sSenha = '') then edUsuario.SetFocus;
end;

Function TfrmLogin.Executa: Boolean;
begin
   pb_lSenhaOk := False;
   ShowModal;
   Result := pb_lSenhaOk;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  if glb_iIdOperLogado = 0 then
  begin
     if DelphiCarregado then
     begin
        edUsuario.Text := 'GERASYS.TI';
        edSenha.Text   := 'gsti2010';
     end else
        edUsuario.Text := '';
     edUsuario.SetFocus
  end else
  begin
     edUsuario.Text := Criptografa(Pesquisa('USUARIO','NOME_CURTO',
        edUsuario.Text,'ID',''),'2',20);
     edSenha.Text:= '';
     edSenha.SetFocus;
  end;
end;

end.
