unit AddEditContaCorr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsDefault5, Menus, cxLookAndFeelPainters, StdCtrls, dxGDIPlusClasses,
  ExtCtrls, cxButtons, cxDBEdit, cxTextEdit, cxControls, cxContainer, cxEdit,
  cxMaskEdit, cxButtonEdit, FMTBcd, DB, DBClient, Provider, SqlExpr,
  bsDBButtonEdit;

type
  TfAddEditContaCorr = class(TfbsDefault5)
    Label33: TLabel;
    Label34: TLabel;
    Label1: TLabel;
    TextDescricaoBancoConv: TcxTextEdit;
    TextAgencia: TcxDBTextEdit;
    TextNumConta: TcxDBTextEdit;
    ButtonEditIdBancoConv: TbsDBButtonEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAddEditContaCorr: TfAddEditContaCorr;

implementation

{$R *.dfm}

procedure TfAddEditContaCorr.FormShow(Sender: TObject);
begin
  inherited;

  ButtonEditIdBancoConv.DataBinding.DataSource := DataSource;
  TextAgencia.DataBinding.DataSource := DataSource;
  TextNumConta.DataBinding.DataSource := DataSource;
end;

end.
