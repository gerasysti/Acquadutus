inherited frmSelecionaServicoRequerim: TfrmSelecionaServicoRequerim
  Caption = 'frmSelecionaServicoRequerim'
  PixelsPerInch = 96
  TextHeight = 13
  inherited btnOk: TBitBtn
    Top = 32
    ExplicitTop = 32
  end
  inherited btnCancelar: TBitBtn
    Top = 62
    ExplicitTop = 62
  end
  inherited edPesquisa: TcxTextEdit
    ExplicitHeight = 23
  end
  inherited GridTable: TcxGrid
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
        Width = 290
      end
    end
  end
  inherited qry1: TSQLQuery
    SQL.Strings = (
      'select id, descricao'
      'from TAB_SERVIC_REQUER')
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
  end
end
