unit ConfigAtualizacaoDB;

interface

uses
  bsLibrary, ContadorGlobal,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsDefault, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxContainer, cxEdit, cxClasses, cxStyles, cxGridTableView, StdCtrls,
  cxButtons, ExtCtrls, cxControls, dxGDIPlusClasses, cxProgressBar, FMTBcd, DB,
  SqlExpr, Provider, DBClient, cxPC, cxTextEdit, cxMemo;

type
  TfConfigAtualizacaoDB = class(TfbsDefault)
    Bevel1: TBevel;
    pbConfigAutoSistema: TcxProgressBar;
    iAviso: TImage;
    lAviso: TLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxMemo1: TcxMemo;
    cxMemo2: TcxMemo;
    cxMemo3: TcxMemo;
    cxMemo4: TcxMemo;
    cxMemo5: TcxMemo;
    cxTabSheet6: TcxTabSheet;
    cxMemo6: TcxMemo;
    cxTabSheet7: TcxTabSheet;
    cxMemo7: TcxMemo;
    cxTabSheet8: TcxTabSheet;
    cxMemo8: TcxMemo;
    cxTabSheet9: TcxTabSheet;
    cxMemo9: TcxMemo;
    cxTabSheet10: TcxTabSheet;
    cxMemo10: TcxMemo;
    cxTabSheet11: TcxTabSheet;
    cxMemo11: TcxMemo;
    cxTabSheet12: TcxTabSheet;
    cxMemo12: TcxMemo;
    cxTabSheet13: TcxTabSheet;
    cxMemo13: TcxMemo;
    cxTabSheet14: TcxTabSheet;
    cxMemo14: TcxMemo;
    cxTabSheet15: TcxTabSheet;
    cxMemo15: TcxMemo;
    cxTabSheet16: TcxTabSheet;
    cxMemo16: TcxMemo;
    cxTabSheet17: TcxTabSheet;
    cxMemo17: TcxMemo;
    cxTabSheet18: TcxTabSheet;
    cxMemo18: TcxMemo;
    cxTabSheet19: TcxTabSheet;
    cxMemo19: TcxMemo;
    cxTabSheet20: TcxTabSheet;
    cxMemo20: TcxMemo;
    cxTabSheet21: TcxTabSheet;
    cxMemo21: TcxMemo;
    cxTabSheet22: TcxTabSheet;
    cxMemo22: TcxMemo;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConfigAtualizacaoDB: TfConfigAtualizacaoDB;

implementation

{$R *.dfm}

procedure TfConfigAtualizacaoDB.FormActivate(Sender: TObject);
begin
//  inherited;  [
  pbConfigAutoSistema.Position := 0;
  pbConfigAutoSistema.Properties.Max := 1;

  lAviso.Caption := 'Atualizando banco de dados...';


  pbConfigAutoSistema.Position := 1;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo1.Text);
  except

  end;

 (*
  pbConfigAutoSistema.Position := 2;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo2.Text);
  except

  end;


  pbConfigAutoSistema.Position := 3;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo3.Text);
  except

  end;


  pbConfigAutoSistema.Position := 4;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo4.Text);
  except

  end;


  pbConfigAutoSistema.Position := 5;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo5.Text);
  except

  end;


  pbConfigAutoSistema.Position := 6;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo6.Text);
  except

  end;

  pbConfigAutoSistema.Position := 7;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo7.Text);
  except

  end;

  pbConfigAutoSistema.Position := 8;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo8.Text);
  except

  end;

  pbConfigAutoSistema.Position := 9;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo9.Text);
  except

  end;

  pbConfigAutoSistema.Position := 10;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo10.Text);
  except

  end;

  pbConfigAutoSistema.Position := 11;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo11.Text);
  except

  end;
  (*
  pbConfigAutoSistema.Position := 12;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo12.Text);
  except

  end;

  pbConfigAutoSistema.Position := 13;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo13.Text);
  except

  end;

  pbConfigAutoSistema.Position := 14;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo14.Text);
  except

  end;

  pbConfigAutoSistema.Position := 15;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo15.Text);
  except

  end;

  pbConfigAutoSistema.Position := 16;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo16.Text);
  except

  end;

  pbConfigAutoSistema.Position := 17;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo17.Text);
  except

  end;

  pbConfigAutoSistema.Position := 18;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo18.Text);
  except

  end;

  pbConfigAutoSistema.Position := 19;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo19.Text);
  except

  end;

  pbConfigAutoSistema.Position := 20;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo20.Text);
  except

  end;

  pbConfigAutoSistema.Position := 21;
  Application.ProcessMessages;
  try
    bsl_scConnection.ExecuteDirect(cxMemo21.Text);
  except

  end;


  pbConfigAutoSistema.Position := 22;
  Application.ProcessMessages;
  try
    ExecuteQuery(cxMemo22.Text);
  except

  end;
*)

  FinishTransacation(True);
  StartTransaction;

  Tag := 1;

  Sleep(1000);
  PostMessage(self.handle, WM_CLOSE, 0, 0);
end;

procedure TfConfigAtualizacaoDB.FormShow(Sender: TObject);
begin
//  inherited;

end;

end.
