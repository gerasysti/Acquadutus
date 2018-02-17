unit frmAddEditPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, FMTBcd, DB,
  DBClient, Provider, SqlExpr, StdCtrls, cxButtons, ExtCtrls, cxClasses,
  cxStyles, cxGridTableView, cxContainer, cxEdit;

type
  TForm1 = class(TForm)
    cxEditStyleReadyOnly: TcxEditStyleController;
    cxEditStyleNormal: TcxEditStyleController;
    cxEditStyleCheckBox: TcxEditStyleController;
    cxStyleRepository: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxStyle28: TcxStyle;
    cxStyle29: TcxStyle;
    cxStyle30: TcxStyle;
    cxStyle31: TcxStyle;
    cxStyle32: TcxStyle;
    cxStyle33: TcxStyle;
    cxStyle34: TcxStyle;
    cxStyle35: TcxStyle;
    cxStyle36: TcxStyle;
    cxStyle37: TcxStyle;
    cxStyle38: TcxStyle;
    cxStyle39: TcxStyle;
    cxStyle40: TcxStyle;
    cxStyle41: TcxStyle;
    cxStyle42: TcxStyle;
    cxStyle43: TcxStyle;
    cxStyle44: TcxStyle;
    cxStyle45: TcxStyle;
    cxStyle46: TcxStyle;
    cxStyle47: TcxStyle;
    cxStyle48: TcxStyle;
    cxStyle49: TcxStyle;
    cxStyle50: TcxStyle;
    cxStyle51: TcxStyle;
    GridTableViewStyleSheetPadrao: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPadrao2: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPadrao3: TcxGridTableViewStyleSheet;
    GridTableViewStyleSheetPadrao4: TcxGridTableViewStyleSheet;
    PanelClient: TPanel;
    Panel: TPanel;
    btnCancelar: TcxButton;
    btnGravar: TcxButton;
    sds1: TSQLDataSet;
    sds1ID: TIntegerField;
    sds1DESCRICAO: TStringField;
    sds1DESCR_NO_C_CHEQUE: TStringField;
    sds1CNPJ: TStringField;
    sds1COD_CONTABIL: TStringField;
    sds1ID_TIPO_UNID_GESTORA: TIntegerField;
    sds1DESCR_TIPO_UNID_GESTORA: TStringField;
    sds1COD_ORGAO_NO_TCM: TIntegerField;
    dsp1: TDataSetProvider;
    cds1: TClientDataSet;
    cds1ID: TIntegerField;
    cds1DESCRICAO: TStringField;
    cds1DESCR_NO_C_CHEQUE: TStringField;
    cds1CNPJ: TStringField;
    cds1COD_CONTABIL: TStringField;
    cds1ID_TIPO_UNID_GESTORA: TIntegerField;
    cds1DESCR_TIPO_UNID_GESTORA: TStringField;
    cds1COD_ORGAO_NO_TCM: TIntegerField;
    ds1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
