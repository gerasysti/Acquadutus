unit CadEntidFinanc;

interface

uses
  bsLibrary,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, bsDefault3, Menus, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxStatusBar, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, cxTextEdit, StdCtrls, cxButtons, dxGDIPlusClasses, ExtCtrls,
  FMTBcd, SqlExpr, Provider, DBClient, cxCheckBox, cxLookAndFeels;

type
  TfCadEntidFinanc = class(TfbsDefault3)
    cdsEntidFinanc: TClientDataSet;
    cdsEntidFinancID: TIntegerField;
    cdsEntidFinancDESCRICAO: TStringField;
    dsEntidFinanc: TDataSource;
    dspEntidFinanc: TDataSetProvider;
    sdsEntidFinanc: TSQLDataSet;
    sdsEntidFinancID: TIntegerField;
    sdsEntidFinancDESCRICAO: TStringField;
    GridTableDBTableView1ID: TcxGridDBColumn;
    GridTableDBTableView1DESCRICAO: TcxGridDBColumn;
    sdsEntidFinancBANCO: TStringField;
    cdsEntidFinancBANCO: TStringField;
    GridTableDBTableView1BANCO: TcxGridDBColumn;
    sdsEntidFinancCOD_BANCO: TStringField;
    sdsEntidFinancAGENCIA: TStringField;
    sdsEntidFinancNUM_CONTA_EMPRESA: TStringField;
    sdsEntidFinancNUM_CONV: TStringField;
    sdsEntidFinancCOD_EMPRESA: TStringField;
    cdsEntidFinancCOD_BANCO: TStringField;
    cdsEntidFinancAGENCIA: TStringField;
    cdsEntidFinancNUM_CONTA_EMPRESA: TStringField;
    cdsEntidFinancNUM_CONV: TStringField;
    cdsEntidFinancCOD_EMPRESA: TStringField;
    procedure ButtonsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cdsEntidFinancIDGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadEntidFinanc: TfCadEntidFinanc;

implementation

uses AddEditEntidFinanc;

{$R *.dfm}

procedure TfCadEntidFinanc.ButtonsClick(Sender: TObject);
begin
  //AddEditForm := TfAddEditEntidFinanc.Create(Self);

  inherited;
end;

procedure TfCadEntidFinanc.cdsEntidFinancIDGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := FormatId(Sender.AsString, 2);
end;

procedure TfCadEntidFinanc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  Action := caFree;
end;

procedure TfCadEntidFinanc.FormCreate(Sender: TObject);
begin
  sdsEntidFinanc.SQLConnection := bsl_scConnection;
  DataSources[0] := dsEntidFinanc;

  inherited;
end;

end.
