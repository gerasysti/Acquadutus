unit SelectMultiLocalPagto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SelectMultiPadrao, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, FMTBcd, DBClient, Provider, SqlExpr, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  Buttons, cxTextEdit;

type
  TfrmSelectMultiLocalPagto = class(TfrmSelectMultiPadrao)
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
  frmSelectMultiLocalPagto: TfrmSelectMultiLocalPagto;

implementation

{$R *.dfm}

procedure TfrmSelectMultiLocalPagto.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab := 'LOCAL_PAGTO';
  pb_sCampoPK := 'ID';
  pb_sTitSelect := 'Local(is) de Pagto(s)';
  pb_sTitForm := 'LOCAL(AIS) DE PAGTO(S)...';
end;

end.
