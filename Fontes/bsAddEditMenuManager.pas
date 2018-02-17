unit bsAddEditMenuManager;

interface

uses
  bsLibrary,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsDefault5, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxContainer, cxEdit, cxClasses, cxStyles, cxGridTableView, StdCtrls,
  dxGDIPlusClasses, ExtCtrls, cxButtons, FMTBcd, DB, SqlExpr, Provider, DBClient,
  cxControls, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxButtonEdit,
  bsDBButtonEdit, cxSpinEdit, ActnList;

type
  TfbsAddEditMenuManager = class(TfbsDefault5)
    dsMenu: TDataSource;
    cdsMenu: TClientDataSet;
    cdsMenuID: TIntegerField;
    cdsMenuID_MENU: TIntegerField;
    cdsMenuDESCRICAO: TStringField;
    cdsMenuORDEM: TIntegerField;
    cdsMenuINDICE_IMAGEM: TIntegerField;
    cdsMenuNOME_ACAO: TStringField;
    cdsMenuTAG: TIntegerField;
    cdsMenuID_MODULO: TIntegerField;
    sdpMenu: TDataSetProvider;
    sdsMenu: TSQLDataSet;
    sdsMenuID: TIntegerField;
    sdsMenuID_MENU: TIntegerField;
    sdsMenuDESCRICAO: TStringField;
    sdsMenuORDEM: TIntegerField;
    sdsMenuINDICE_IMAGEM: TIntegerField;
    sdsMenuNOME_ACAO: TStringField;
    sdsMenuTAG: TIntegerField;
    sdsMenuID_MODULO: TIntegerField;
    TextNome: TcxDBTextEdit;
    lblDescricao: TLabel;
    Label1: TLabel;
    cbNomeAcao: TcxDBComboBox;
    Label10: TLabel;
    beIdModulo: TbsDBButtonEdit;
    teDescricaoModulo: TcxTextEdit;
    Label2: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbsAddEditMenuManager: TfbsAddEditMenuManager;

implementation

{$R *.dfm}

procedure TfbsAddEditMenuManager.FormCreate(Sender: TObject);
begin
  DataSources[0] := dsMenu;

  inherited;
end;

procedure TfbsAddEditMenuManager.FormShow(Sender: TObject);
var
  lpiCount: Integer;
begin
  cbNomeAcao.Properties.Items.Clear;
  for lpiCount := 0 to bsl_scConnection.Owner.ComponentCount-1 do
    if bsl_scConnection.Owner.Components[lpiCount] is TAction then
      cbNomeAcao.Properties.Items.Add(bsl_scConnection.Owner.Components[lpiCount].Name);

  inherited;

  beIdModulo.RefreshLookupInformation;

end;

end.
