unit CriaUsuarioBanco;

interface

uses
  Padrao1, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinsDefaultPainters, Dialogs, StdCtrls, Buttons, Controls, cxTextEdit, Classes,
  StrUtils, SysUtils, Windows;

type
  TfrmCriaUsuarioBanco = class(TfrmPadrao1)
    sbFindArq: TSpeedButton;
    edNomeArquivo: TcxTextEdit;
    Label1: TLabel;
    btnOk: TBitBtn;
    btnCancel: TBitBtn;
    OpenDialog1: TOpenDialog;
    Label2: TLabel;
    rbVerXP: TRadioButton;
    rbVer7_8: TRadioButton;
    procedure sbFindArqClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure rbVerXPClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function ExecAndWait(const FileName, Params: string; const WindowState: Word): boolean;
    { Private declarations }
  public
    { Public declarations }
    pb_lCriouUsario: Boolean;
  end;

var
  frmCriaUsuarioBanco: TfrmCriaUsuarioBanco;

implementation

uses gsLib;

{$R *.dfm}

procedure TfrmCriaUsuarioBanco.btnOkClick(Sender: TObject);
Var
  sNomeArquivo,
  sParams: String;
  iErro  : Integer;
begin
  if Empty(edNomeArquivo.Text) then exit;
  if Pos('GSEC.EXE',UpperCase(edNomeArquivo.Text)) = 0 then
  begin
     Mensagem('Por Favor, localize o Arquivo GSEC.EXE','Erro !!!',
        MB_OK+MB_ICONEXCLAMATION);
     sbFindArq.Click;
     edNomeArquivo.SetFocus;
  end;

  sNomeArquivo:= edNomeArquivo.Text;
  sParams     := '-user SYSDBA -pass masterkey -add GERASYS.TI -pw gsti2010';
  iErro       := 0;

  try
    ExecAndWait(sNomeArquivo+' '+sParams,' ',SW_SHOW);
  except
    iErro := 1;
  end;

  if iErro = 1 then
  begin
    Mensagem('Não foi possível Criar o Usuário Administrador do Banco de Dados',
      'Erro !!!',MB_OK+MB_ICONEXCLAMATION);
    edNomeArquivo.SetFocus;
  end else
  begin
     Mensagem('Operação realizada com sucesso ...',
       'Parabéns !!!',MB_OK+MB_ICONINFORMATION);
     pb_lCriouUsario := True;
     Close;
  end;

end;

procedure TfrmCriaUsuarioBanco.FormShow(Sender: TObject);
begin
  pb_lCriouUsario := False;
  rbVerXPClick(rbVerXP);
  edNomeArquivo.SetFocus;
end;

procedure TfrmCriaUsuarioBanco.rbVerXPClick(Sender: TObject);
begin
  if TRadioButton(Sender).Tag = 1 then
     edNomeArquivo.Text := 'C:\Arquivo de Programas\Firebird\Firebird_2_5\Bin\GSEC.EXE'
  else
     edNomeArquivo.Text := 'C:\Program Files (x86)\Firebird\Firebird_2_5\bin\GSEC.EXE';
end;

procedure TfrmCriaUsuarioBanco.sbFindArqClick(Sender: TObject);
begin
  if not Empty(edNomeArquivo.Text) then
  begin
     OpenDialog1.InitialDir := LeftStr(Trim(edNomeArquivo.Text),
        Length(Trim(edNomeArquivo.Text))-9);
     OpenDialog1.FileName := edNomeArquivo.Text;
  end;
  if not OpenDialog1.Execute then exit;
  edNomeArquivo.Text := OpenDialog1.FileName;
end;

function TfrmCriaUsuarioBanco.ExecAndWait(const FileName, Params: string;
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
  with SUInfo do  begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, false,
    CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
    PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);

  { Aguarda até ser finalizado }
  if Result then begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;


end.
