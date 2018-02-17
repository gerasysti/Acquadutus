unit fmePeriodoAdminData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxEdit, cxTextEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, dxSkinsCore, dxSkinsDefaultPainters,
  cxLabel, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfrmePerAdminDt = class(TFrame)
    edDtAdminIni: TcxDateEdit;
    cxLabel61: TcxLabel;
    edDtAdminFim: TcxDateEdit;
    procedure edDtAdminIniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses gsLib;

{$R *.dfm}

procedure TfrmePerAdminDt.edDtAdminIniExit(Sender: TObject);
begin
   if TcxDateEdit(Sender).Tag = 1 then
   begin
      if not ValidaPeriodo2(edDtAdminIni.Text,edDtAdminFim.Text,'1') then
         edDtAdminIni.SetFocus
   end else
      if not ValidaPeriodo2(edDtAdminIni.Text,edDtAdminFim.Text,'2') then
         edDtAdminFim.SetFocus;
end;

end.
