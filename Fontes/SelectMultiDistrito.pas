unit SelectMultiDistrito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SelectMultiPadrao, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, FMTBcd, DBClient, Provider, SqlExpr, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  Buttons, cxTextEdit;

type
  TfrmSelectMultiDistrito = class(TfrmSelectMultiPadrao)
    tb1ID: TIntegerField;
    tb1DESCRICAO: TStringField;
    tb1MARCADO: TStringField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelectMultiDistrito: TfrmSelectMultiDistrito;

implementation

{$R *.dfm}

procedure TfrmSelectMultiDistrito.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab := 'DISTRITO';
  pb_sCampoPK := 'ID';
  pb_sTitSelect := 'Distrito(s)';
  pb_sTitForm := 'DISTRITO(S) ...';
end;

end.
