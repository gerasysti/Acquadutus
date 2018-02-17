unit AlteraSenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, StdCtrls, Buttons, ExtCtrls,
  cxLabel, cxTextEdit, dxSkinsCore, dxSkinsDefaultPainters, FMTBcd, DB, SqlExpr,
  DBClient, Provider;

type
  TfrmAlteraSenha = class(TfrmPadrao1)
    edConfirmSenha: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    edNovaSenha: TcxTextEdit;
    qryUsuario: TSQLQuery;
    provUsuario: TDataSetProvider;
    cdsUsuario: TClientDataSet;
    qryUsuarioID: TIntegerField;
    qryUsuarioSENHA: TStringField;
    cdsUsuarioID: TIntegerField;
    cdsUsuarioSENHA: TStringField;
    cxLabel3: TcxLabel;
    edSenhaAtual: TcxTextEdit;
    procedure edConfirmSenhaExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edSenhaAtualExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function Executa: Boolean;
  end;

var
  frmAlteraSenha: TfrmAlteraSenha;

implementation

uses udmPrincipal, gsLib, UtilsDb, VarGlobais;

{$R *.dfm}

procedure TfrmAlteraSenha.btnOkClick(Sender: TObject);
Var
   sSenhaCript: string[8];
begin

   if (Empty(edNovaSenha.Text)) or
      (Empty(edConfirmSenha.Text)) then exit;

   edConfirmSenhaExit(edConfirmSenha);

   sSenhaCript := Criptografa(edNovaSenha.Text,'1',8);

   cdsUsuario.Close;
   qryUsuario.ParamByName('pUsuario').Value := glb_iIdOperLogado;
   cdsUsuario.Open;
   cdsUsuario.Edit;
   cdsUsuarioSENHA.Value := sSenhaCript;

   try
      SalvaTransacao(cdsUsuario);
      Mensagem('Senha Alterada com sucesso ...','P a r a b é n s !!!',
         MB_OK+MB_ICONEXCLAMATION);
   except

   end;

   {
   try
      try
         qryUsuario.ExecSQL();
         Mensagem('Senha Alterada com sucesso ...','P a r a b é n s !!!',
            MB_OK+MB_ICONEXCLAMATION);
      except
         on E: Exception do
         begin
            Mensagem('Não foi Posível Alterar a Senha ...'+#13+
               '('+E.Message+')',
               'Erro', MB_ICONERROR+MB_OK);
         end;
      end;
   finally
      qryUsuario.close;
   end;

   }

   cdsUsuario.Close;

   Close;

end;

procedure TfrmAlteraSenha.edConfirmSenhaExit(Sender: TObject);
begin
   If Empty(edConfirmSenha.Text) Then Exit;
   if edConfirmSenha.Text <> edNovaSenha.Text then
   begin
      Mensagem('As Senhas precisam ser iguais ...',
         'E r r o !!!',MB_OK+MB_ICONERROR);
      edNovaSenha.SetFocus;
   end;
end;

procedure TfrmAlteraSenha.edSenhaAtualExit(Sender: TObject);
Var
   sSenhaCript: String[8];
   sSenhaAtual: String[8];
begin

   If Empty(edSenhaAtual.Text) Then Exit;
   sSenhaAtual := Pesquisa('USUARIO','ID',IntToStr(glb_iIdOperLogado),'SENHA','');
   sSenhaCript := Criptografa(edSenhaAtual.Text,'1',8);
   If sSenhaCript <> sSenhaAtual Then
   begin
      Mensagem('Senha Atual Inválida ...','E r r o !!!',MB_OK+MB_ICONERROR);
      edSenhaAtual.SetFocus;
   end;

end;

Function TfrmAlteraSenha.Executa: Boolean;
begin
   ShowModal;
end;

procedure TfrmAlteraSenha.FormShow(Sender: TObject);
begin
   edSenhaAtual.SetFocus;
end;

end.
