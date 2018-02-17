inherited frmSelecionaMultiLocalPagto: TfrmSelecionaMultiLocalPagto
  Caption = 'frmSelecionaMultiLocalPagto'
  ClientWidth = 543
  ExplicitWidth = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label2: TLabel
    Left = 451
    ExplicitLeft = 451
  end
  inherited btnOk: TBitBtn
    Left = 424
    Width = 112
    ExplicitLeft = 424
    ExplicitWidth = 112
  end
  inherited btnCancelar: TBitBtn
    Left = 424
    Width = 112
    ExplicitLeft = 424
    ExplicitWidth = 112
  end
  inherited edPesquisa: TcxTextEdit
    ExplicitWidth = 306
    Width = 306
  end
  inherited GridTable: TcxGrid
    Width = 405
    ExplicitWidth = 405
    inherited GridTableDBTableView1: TcxGridDBTableView
      Styles.Content = nil
      Styles.ContentEven = nil
      Styles.ContentOdd = nil
      Styles.Footer = nil
      Styles.Group = nil
      Styles.GroupByBox = nil
      Styles.Header = nil
      Styles.Inactive = nil
      Styles.Indicator = nil
      Styles.Preview = nil
      Styles.Selection = nil
      inherited GridTableDBTableView1Column0: TcxGridDBColumn
        Width = 54
      end
      inherited GridTableDBTableView1Column1: TcxGridDBColumn
        Width = 252
      end
      object GridTableDBTableView1Column3: TcxGridDBColumn [2]
        Caption = 'Ativo'
        DataBinding.FieldName = 'ATIVO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 36
      end
      inherited GridTableDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'ATIVO'
        Width = 40
        IsCaptionAssigned = True
      end
    end
  end
  inherited edQtdSelect: TcxTextEdit
    Left = 451
    Style.IsFontAssigned = True
    ExplicitLeft = 451
  end
  inherited chkMarcaTodos: TCheckBox
    Left = 424
    Width = 112
    ExplicitLeft = 424
    ExplicitWidth = 112
  end
  inherited qry1: TSQLQuery
    SQL.Strings = (
      'select'
      'id, descricao, cod_banco, ativo, '#39'N'#39' as marcado'
      'from '
      'local_pagto')
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
      FieldName = 'COD_BANCO'
      FixedChar = True
      Size = 3
    end
    object cds1ATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
    object cds1MARCADO: TStringField
      FieldName = 'MARCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
