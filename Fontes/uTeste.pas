unit uTeste;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB;

type
  TfrmTeste = class(TForm)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTeste: TfrmTeste;

implementation

uses udmRelFinanceiros;

{$R *.dfm}

end.
