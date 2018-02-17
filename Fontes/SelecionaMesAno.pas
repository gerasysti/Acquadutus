unit SelecionaMesAno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, StdCtrls, cxButtons,
  cxSpinEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Buttons,
  dxSkinsCore, dxSkinsDefaultPainters, StrUtils;

type
  TfrmSelecionaMesAno = class(TfrmPadrao1)
    gbMes: TcxGroupBox;
    cbMes: TcxComboBox;
    gbAno: TcxGroupBox;
    edAno: TcxSpinEdit;
    btnOk_: TBitBtn;
    btnCancel: TBitBtn;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbMesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbMesPropertiesPopup(Sender: TObject);
    procedure cbMesPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecionaMesAno: TfrmSelecionaMesAno;

implementation

uses udmPrincipal, VarGlobais, gsLib;

{$R *.dfm}

procedure TfrmSelecionaMesAno.btnOkClick(Sender: TObject);
begin
  glb_sAnoMesTrab     := edAno.Text+PreencheZeros(IntToStr(cbMes.ItemIndex+1),2);

  if glb_sAnoMesTrab > glb_sAnoMesTrava then
     glb_sAnoMesTrab := glb_sAnoMesTrava;

  //glb_sDescrMesAnoTrab:= cbMes.Text+' / '+edAno.Text;

  glb_sDescrMesAnoTrab:= Maiusculas(NomeMes(StrToInt(RightStr(glb_sAnoMesTrab,2))))+
     ' / '+LeftStr(glb_sAnoMesTrab,4);

    //Mensagem('Ano/Mes: '+glb_sAnoMesTrab,'Exibe ...',MB_OK+MB_ICONINFORMATION);

end;

procedure TfrmSelecionaMesAno.cbMesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //inherited;
end;

procedure TfrmSelecionaMesAno.cbMesPropertiesCloseUp(Sender: TObject);
begin
  TcxComboBox(Sender).Tag := 0;
end;

procedure TfrmSelecionaMesAno.cbMesPropertiesPopup(Sender: TObject);
begin
  TcxComboBox(Sender).Tag := 1;
end;

procedure TfrmSelecionaMesAno.FormShow(Sender: TObject);
begin
  inherited;
  cbMes.ItemIndex    := StrToInt(Copy(glb_sAnoMesTrab,5,2))-1;
  edAno.Value        := StrToInt(Copy(glb_sAnoMesTrab,1,4));
  cbMes.SetFocus;
end;

end.


