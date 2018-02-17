unit fmePrestServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, FMTBcd, DB, SqlExpr, cxTextEdit, Buttons, cxMaskEdit;

type
  TfrmePrestServico = class(TFrame)
    edId: TcxMaskEdit;
    sbPrestServico: TSpeedButton;
    edNome: TcxTextEdit;
    edCPF_CNPJ: TcxTextEdit;
    qryPrestServico: TSQLQuery;
    qryPrestServicoTIPO_PESSOA: TStringField;
    qryPrestServicoNOME: TStringField;
    qryPrestServicoCPF_CNPJ: TStringField;
    procedure edIdPropertiesChange(Sender: TObject);
    procedure edIdExit(Sender: TObject);
    procedure sbPrestServicoClick(Sender: TObject);
    procedure edIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

uses udmPrincipal, gsLib, VarGlobais, FindPrestServicos;

{$R *.dfm}

procedure TfrmePrestServico.edIdExit(Sender: TObject);
begin
  if Empty(edId.Text) then exit;
  qryPrestServico.Close;
  qryPrestServico.Params[0].Value:= StrToInt(Trim(edId.Text));
  qryPrestServico.Open;
  if qryPrestServicoNOME.IsNull then
  begin
     Mensagem('Identificador de Prestador de Serviço, inválido ...','E r r o !!!',MB_ICONERROR+MB_OK);
     edId.SetFocus;
  end else
  begin
     edNome.Text:= qryPrestServicoNOME.Value;
     edCPF_CNPJ.Text := FormatCPF_CNPJ(qryPrestServicoCPF_CNPJ.Value,qryPrestServicoTIPO_PESSOA.Value);
  end;
end;

procedure TfrmePrestServico.edIdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if ((Shift = [ssCtrl]) and (Key = VK_RETURN)) or
     ((Shift = []) and (Key = VK_F3))  then
     sbPrestServico.Click;
end;

procedure TfrmePrestServico.edIdPropertiesChange(Sender: TObject);
begin
  if not Empty(edId.Text) then exit;
  edNome.Text    := '';
  edCPF_CNPJ.Text:= '';
end;

constructor TfrmePrestServico.Create(AOwner: TComponent);
begin
  inherited;
  edId.Hint := 'Click no botão ao lado ou pressione '+#13+
               '[Ctrl+Enter] ou [F3] p/ Selecionar ...';
end;

procedure TfrmePrestServico.sbPrestServicoClick(Sender: TObject);
begin
  frmFindPrestServico.ShowModal;
  if glb_sCodigo <> '' then edId.Text := glb_sCodigo;
  edId.SetFocus;
end;

end.
