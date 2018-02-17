inherited frmSelecionaLocalPagto: TfrmSelecionaLocalPagto
  Caption = 'frmSelecionaLocalPagto'
  ClientHeight = 308
  ClientWidth = 625
  ExplicitWidth = 631
  ExplicitHeight = 337
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Top = 10
    ExplicitTop = 10
  end
  inherited btnOk: TBitBtn
    Left = 526
    Top = 33
    ExplicitLeft = 526
    ExplicitTop = 33
  end
  inherited btnCancelar: TBitBtn
    Left = 526
    Top = 62
    ExplicitLeft = 526
    ExplicitTop = 62
  end
  inherited btnNovo: TBitBtn
    Left = 526
    Top = 101
    OnClick = btnNovoClick
    ExplicitLeft = 526
    ExplicitTop = 101
  end
  inherited edPesquisa: TcxTextEdit
    Left = 101
    Top = 6
    ExplicitLeft = 101
    ExplicitTop = 6
    ExplicitWidth = 421
    Width = 421
  end
  inherited GridTable: TcxGrid
    Left = 1
    Top = 33
    Width = 521
    Height = 272
    ExplicitLeft = 1
    ExplicitTop = 33
    ExplicitWidth = 521
    ExplicitHeight = 272
    inherited GridTableDBTableView1: TcxGridDBTableView
      OnColumnHeaderClick = nil
      inherited GridTableDBTableView1Column0: TcxGridDBColumn
        Width = 53
      end
      inherited GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'Nome'
        Width = 334
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Caption = 'C'#243'd. Banco'
        DataBinding.FieldName = 'COD_BANCO'
        HeaderAlignmentHorz = taCenter
        Width = 73
      end
      object GridTableDBTableView1Column3: TcxGridDBColumn
        Caption = 'Ativo'
        DataBinding.FieldName = 'ATIVO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Width = 36
      end
    end
  end
  inherited qry1: TSQLQuery
    SQL.Strings = (
      'select id, descricao, cod_banco, ativo'
      'from local_pagto')
  end
  inherited cds1: TClientDataSet
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cds1COD_BANCO: TStringField
      Alignment = taCenter
      FieldName = 'COD_BANCO'
      FixedChar = True
      Size = 3
    end
    object cds1ATIVO: TStringField
      Alignment = taCenter
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
end
