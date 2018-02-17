inherited frmSelectMultiBairro: TfrmSelectMultiBairro
  Caption = 'frmSelectMultiBairro'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited GridTable1: TcxGrid
    inherited GridTable1DBTableView1: TcxGridDBTableView
      Styles.Content = nil
      Styles.ContentEven = nil
      Styles.ContentOdd = nil
      Styles.Inactive = nil
      Styles.Selection = nil
      Styles.Footer = nil
      Styles.Group = nil
      Styles.GroupByBox = nil
      Styles.Header = nil
      Styles.Indicator = nil
      Styles.Preview = nil
      inherited GridTable1DBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'DESCRICAO'
      end
      inherited GridTable1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      inherited GridTable1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'MARCADO'
        IsCaptionAssigned = True
      end
    end
  end
  inherited cxLabel1: TcxLabel
    Style.IsFontAssigned = True
  end
  inherited cxLabel2: TcxLabel
    Style.IsFontAssigned = True
  end
  inherited lblTitSelect: TcxLabel
    Style.IsFontAssigned = True
    AnchorX = 612
  end
  inherited cxLabel4: TcxLabel
    Style.IsFontAssigned = True
    AnchorX = 653
  end
  inherited edQtdRegSelect: TcxTextEdit
    Style.IsFontAssigned = True
  end
  inherited chkMarcaDesmarcaTodos: TcxCheckBox
    Style.IsFontAssigned = True
  end
  inherited qry1: TSQLQuery
    SQL.Strings = (
      'SELECT ID, DESCRICAO, '#39'N'#39' AS MARCADO'
      'FROM BAIRRO')
  end
  inherited tb1: TClientDataSet
    object tb1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tb1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object tb1MARCADO: TStringField
      FieldName = 'MARCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
