unit PrestadorServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, DBClient,
  SimpleDS, ExtCtrls, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  StdCtrls, cxButtons, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxContainer,
  cxTextEdit, cxGroupBox, cxRadioGroup, cxLabel, cxCalendar, FMTBcd, Provider,
  SqlExpr, Default;

type
  TfPrestadorServico = class(TfDefault)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrestadorServico: TfPrestadorServico;

implementation

uses Principal, AddEditPrestadorServico;

{$R *.dfm}

procedure TfPrestadorServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  fAddEditPrestadorServico.Free;
  FreeAndNil(fPrestadorServico);
end;

procedure TfPrestadorServico.FormShow(Sender: TObject);
begin
  fAddEditPrestadorServico := TfAddEditPrestadorServico.Create(Self);
  fAddEdit := fAddEditPrestadorServico;

  Self.AliasTable := 'P';
  Self.Table := 'PRESTADOR_SERVICO';
  Self.Sql := 'select P.* from PRESTADOR_SERVICO where P.ID<>-1 ';

  inherited;
end;

end.
