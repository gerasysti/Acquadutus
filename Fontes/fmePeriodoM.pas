unit fmePeriodoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxLabel, cxTextEdit, cxMaskEdit,
  StrUtils, dxSkinsCore, dxSkinsDefaultPainters;

type
  TfmePeriodoM_ = class(TFrame)
    edMesAnoIni: TcxMaskEdit;
    edMesAnoFim: TcxMaskEdit;
    cxLabel1: TcxLabel;
    procedure edMesAnoIniExit(Sender: TObject);
    procedure edMesAnoFimExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses udmPrincipal, gsLib;

{$R *.dfm}

procedure TfmePeriodoM_.edMesAnoFimExit(Sender: TObject);
begin
  if not ValidaPeriodo(edMesAnoFim.Text,edMesAnoFim.Text,'2') then
     edMesAnoFim.SetFocus;
end;

procedure TfmePeriodoM_.edMesAnoIniExit(Sender: TObject);
begin
  if not ValidaPeriodo(edMesAnoIni.Text,edMesAnoFim.Text,'1') then
     edMesAnoIni.SetFocus;
end;

end.
