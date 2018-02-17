unit AddEditEntidFinanc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AddEditPadrao, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, FMTBcd, cxControls, cxContainer, cxEdit, StdCtrls, cxMaskEdit,
  cxDBEdit, cxTextEdit, DB, DBClient, Provider, SqlExpr, cxClasses, cxStyles,
  cxGridTableView, cxButtons, ExtCtrls,
  cxCheckBox, cxLabel, dxSkinsCore, dxSkinsDefaultPainters, Buttons,
  cxDropDownEdit;

type
  TfrmAddEditEntidFinanc = class(TfrmAddEditPadrao)
    edId: TcxDBTextEdit;
    edDescricao: TcxDBTextEdit;
    edCodBanco: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    qry1ID: TIntegerField;
    qry1NOME: TStringField;
    qry1COD_BANCO: TStringField;
    cds1ID: TIntegerField;
    cds1NOME: TStringField;
    cds1COD_BANCO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cds1AfterInsert(DataSet: TDataSet);
    procedure chkEntidBancariaClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cds1AfterEdit(DataSet: TDataSet);
    procedure cbTipoLayOutPropertiesCloseUp(Sender: TObject);
    procedure cbTipoLayOutPropertiesPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAddEditEntidFinanc: TfrmAddEditEntidFinanc;

implementation

uses UtilsDb, gsLib, VarGlobais, udmPrincipal, Seleciona3, SelecionaEvento;

{$R *.dfm}

procedure TfrmAddEditEntidFinanc.btnGravarClick(Sender: TObject);
begin
  {if not chkEntidBancaria.Checked then
  begin
     cds1COD_BANCO.AsVariant        := Null;
     cds1NUM_CONTA_EMPRESA.AsVariant:= Null;
     cds1AGENCIA.AsVariant          := Null;
  end;
  cds1TIPO_LAY_OUT.Value := cbTipoLayOut.ItemIndex;
  }
  inherited;

end;

procedure TfrmAddEditEntidFinanc.cbTipoLayOutPropertiesCloseUp(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 0;
end;

procedure TfrmAddEditEntidFinanc.cbTipoLayOutPropertiesPopup(Sender: TObject);
begin
  TCustomComboBox(Sender).Tag := 1;
end;

procedure TfrmAddEditEntidFinanc.cds1AfterEdit(DataSet: TDataSet);
begin
  //chkEntidBancariaClick(Nil);
end;

procedure TfrmAddEditEntidFinanc.cds1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  //cds1BANCO.Value := 'N';
end;

procedure TfrmAddEditEntidFinanc.chkEntidBancariaClick(Sender: TObject);
begin
{
  edCodBanco.Enabled           := (chkEntidBancaria.Checked);
  edNumContaEmpresa.Enabled    := edCodBanco.Enabled;
  edAgenciaContaEmpresa.Enabled:= edCodBanco.Enabled;
  }
end;

procedure TfrmAddEditEntidFinanc.FormCreate(Sender: TObject);
begin
   inherited;
   pb_sNovoNova     := 'NOVA';
   pb_sNomeTab      := 'ENTID_FINANC';
   pb_sNomeCampoPK  := 'ID';
   pb_sNomeGenerator:= 'GEN_ID_ENTID_FINANC';
   pb_sTitJanela    := 'ENTIDADE FINANCEIRA';
end;

procedure TfrmAddEditEntidFinanc.FormShow(Sender: TObject);
begin
  inherited;
  edDescricao.SetFocus;
end;

end.
