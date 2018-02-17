unit MsgDialog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, StdCtrls;

type
  TfrmMsgDialog = class(TfrmPadrao1)
    Memo1: TMemo;
    btnOp1: TButton;
    btnOp2: TButton;
    btnOp3: TButton;
    procedure btnOp1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    pv_iBtnEscolha: Integer;
  public
    { Public declarations }
    function Executa(sMsg1, sMsg2: string; sTitBtn1, sTitBtn2, sTitBtn3: string): Integer;
  end;

var
  frmMsgDialog: TfrmMsgDialog;

implementation

{$R *.dfm}

procedure TfrmMsgDialog.btnOp1Click(Sender: TObject);
begin

  pv_iBtnEscolha := TButton(Sender).Tag;

  Close;

end;

function TfrmMsgDialog.Executa(sMsg1, sMsg2: string; sTitBtn1, sTitBtn2, sTitBtn3: string): Integer;
begin

  pv_iBtnEscolha := 0;

  Memo1.Lines.Clear;
  Memo1.Lines.Add('');
  Memo1.Lines.Add(sMsg1);
  Memo1.Lines.Add('');
  Memo1.Lines.Add(sMsg2);

  btnOp1.Caption := sTitBtn1;
  btnOp2.Caption := sTitBtn2;
  btnOp3.Caption := sTitBtn3;

  ShowModal;

  Result := pv_iBtnEscolha;

end;

procedure TfrmMsgDialog.FormShow(Sender: TObject);
begin
  inherited;
  btnOp1.SetFocus;
end;

end.
