inherited frmSelecionaItemFatura: TfrmSelecionaItemFatura
  Caption = 'frmSelecionaItemFatura'
  ClientWidth = 462
  ExplicitWidth = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnOk: TBitBtn
    Left = 360
    Top = 32
    ExplicitLeft = 360
    ExplicitTop = 32
  end
  inherited btnCancelar: TBitBtn
    Left = 360
    Top = 62
    ExplicitLeft = 360
    ExplicitTop = 62
  end
  inherited btnNovo: TBitBtn
    Left = 360
    ExplicitLeft = 360
  end
  inherited edPesquisa: TcxTextEdit
    ExplicitWidth = 253
    ExplicitHeight = 23
    Width = 253
  end
  inherited GridTable: TcxGrid
    Width = 348
    ExplicitWidth = 348
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
        Width = 46
      end
      inherited GridTableDBTableView1Column1: TcxGridDBColumn
        Width = 216
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Caption = 'Valor R$'
        DataBinding.FieldName = 'VALOR'
        HeaderAlignmentHorz = taRightJustify
        Width = 66
      end
    end
  end
  inherited qry1: TSQLQuery
    SQL.Strings = (
      'select id, descricao, valor'
      'from tab_outra_tarifa')
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
    object cds1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
  end
end
