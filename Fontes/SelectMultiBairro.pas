unit SelectMultiBairro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SelectMultiPadrao, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, DB, cxDBData, cxCheckBox, FMTBcd, DBClient, Provider, SqlExpr, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, StdCtrls,
  Buttons, cxTextEdit;

type
  TfrmSelectMultiBairro = class(TfrmSelectMultiPadrao)
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
  frmSelectMultiBairro: TfrmSelectMultiBairro;

implementation

{$R *.dfm}

procedure TfrmSelectMultiBairro.FormCreate(Sender: TObject);
begin
  inherited;
  pb_sNomeTab := 'BAIRRO';
  pb_sCampoPK := 'ID';
  pb_sTitSelect := 'Bairro(s)';
  pb_sTitForm := 'BAIRRO(S) ...';
end;

end.
