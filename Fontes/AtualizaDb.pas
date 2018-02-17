unit AtualizaDb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Padrao1, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons, ExtCtrls, cxControls, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMemo, FMTBcd, DB, SqlExpr, StrUtils;

type
  TfrmAtualizaDb = class(TfrmPadrao1)
    Panel: TPanel;
    btnSair: TcxButton;
    btnIniciar: TcxButton;
    Notebook1: TNotebook;
    memMsg: TcxMemo;
    memAtualiza2011: TcxMemo;
    qryAtualiza: TSQLQuery;
    procedure btnIniciarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    pv_sVerExe: String;
  public
    { Public declarations }
    Procedure Executa(sVerExe: String);
  end;

var
  frmAtualizaDb: TfrmAtualizaDb;

implementation

uses udmPrincipal, gsLib, UtilsDb;

{$R *.dfm}

procedure TfrmAtualizaDb.Executa(sVerExe: String);
begin
  pv_sVerExe := sVerExe;
  memMsg.Lines.Clear;
  Notebook1.PageIndex := 0;
  ShowModal;
end;

procedure TfrmAtualizaDb.FormShow(Sender: TObject);
begin
  inherited;
  btnIniciar.Click;
end;

procedure TfrmAtualizaDb.btnIniciarClick(Sender: TObject);
Var
  iConta,
  iConta2: Integer;
  sLinha: WideString;
  dDtAtualiza: TDate;
  sDtAtualizaDb: String[10];
  slTextoAtualiza,
  slTextoMensagem: TStringList;
  iErro,
  iQtdAtualizacao: Integer;
begin

  Screen.Cursor := crHourGlass;

  iQtdAtualizacao:= 0;
  Panel.Caption := 'Aguarde, atualizando Base de Dados ....';
  Application.ProcessMessages;

  slTextoAtualiza:= TStringList.Create;
  slTextoMensagem:= TStringList.Create;
  sDtAtualizaDb := Pesquisa('CONFIG_ORGAO','ID','1','DT_VER_EXE','');
  iConta := 0;
  sLinha := memAtualiza2011.Lines[iConta];
  while sLinha <> '<FIM>' do
  begin
     if sLinha = '<DATA_ATUALIZACAO>' then
     begin
        Inc(iConta);
        dDtAtualiza := StrToDate(memAtualiza2011.Lines[iConta]);
        Inc(iConta,2);
     end;
     sLinha := memAtualiza2011.Lines[iConta];
     while (sLinha <> '<FIM>') and (sLinha <> 'DATA_ATUALIZACAO') do
     begin
        slTextoAtualiza.Clear;
        slTextoMensagem.Clear;
        while (sLinha <> '<MENSAGEM>') do
        begin
           slTextoAtualiza.Add(sLinha);
           Inc(iConta);
           sLinha := memAtualiza2011.Lines[iConta];
        end;
        Inc(iConta);
        sLinha := memAtualiza2011.Lines[iConta];
        while True do
        begin
           slTextoMensagem.Add(sLinha);
           Inc(iConta);
           sLinha := memAtualiza2011.Lines[iConta];
           if (sLinha = '<FIM>') or (sLinha = '<DATA_ATUALIZACAO>') or
              (sLinha = '<TEXTO_ATUALIZACAO>') then break;
        end;

        if slTextoAtualiza.Count > 0 then
        begin
           if StrToDate(sDtAtualizaDb) < dDtAtualiza then
           begin
              qryAtualiza.Close;
              qryAtualiza.SQL.Clear;
              for iConta2 := 0 to slTextoAtualiza.Count - 1 do
              begin
                 memMsg.Lines.Add(slTextoAtualiza[iConta2]);
                 qryAtualiza.SQL.Add(slTextoAtualiza[iConta2]);
              end;
              iErro := 0;
              try
                 qryAtualiza.ExecSQL;
              except
                 iErro := 1;
              end;
              if iErro = 1 then
                 memMsg.Lines.Add('ERRO ao tentar:')
              else
                 Inc(iQtdAtualizacao);
              for iConta2 := 0 to slTextoMensagem.Count - 1 do
                 memMsg.Lines.Add(slTextoMensagem[iConta2]);
           end;
        end;

        if sLinha <> '<FIM>' then
        begin
           Inc(iConta);
           sLinha := memAtualiza2011.Lines[iConta];
        end;

     end;

  end;

  if iErro = 0 then
  begin
     qryAtualiza.Close;
     qryAtualiza.SQL.Clear;
     qryAtualiza.SQL.Add('UPDATE CONFIG_ORGAO SET VER_EXE = :pNovaVersao, ');
     qryAtualiza.SQL.Add('DT_VER_EXE = :pDtVersao');
     qryAtualiza.ParamByName('pNovaVersao').Value:= pv_sVerExe;
     qryAtualiza.ParamByName('pDtVersao').Value  := Date;
     try
       qryAtualiza.ExecSQL;
     except
       iErro := 1;
     end;
     if iErro = 0 then
        memMsg.Lines.Add('Atualização concluída com sucesso ...')
     else
     begin
        memMsg.Lines.Add('Não foi possível atualizar a base de dados. ');
        memMsg.Lines.Add('Entre em contacto com o suporte técnico do Sistema.');
     end;
  end;

  btnIniciar.Enabled:= False;
  btnSair.SetFocus;

  Panel.Caption := 'Fim de processo ...';
  Application.ProcessMessages;

  Screen.Cursor := crDefault;

end;

end.
