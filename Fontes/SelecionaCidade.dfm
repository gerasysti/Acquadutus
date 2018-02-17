inherited frmSelecionaCidade: TfrmSelecionaCidade
  Caption = 'frmSelecionaCidade'
  ClientWidth = 527
  ExplicitWidth = 533
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Top = 10
    ExplicitTop = 10
  end
  inherited btnOk: TBitBtn
    Left = 428
    ExplicitLeft = 428
  end
  inherited btnCancelar: TBitBtn
    Left = 428
    ExplicitLeft = 428
  end
  inherited btnNovo: TBitBtn
    Left = 428
    Caption = '&Nova'
    OnClick = btnNovoClick
    ExplicitLeft = 428
  end
  inherited edPesquisa: TcxTextEdit
    Left = 101
    Top = 6
    ExplicitLeft = 101
    ExplicitTop = 6
    ExplicitWidth = 323
    ExplicitHeight = 23
    Width = 323
  end
  inherited GridTable: TcxGrid
    Width = 419
    ExplicitWidth = 419
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
      OnColumnHeaderClick = nil
      inherited GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'NOME'
        Width = 309
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'UF'
        Width = 25
      end
    end
  end
  inherited qry1: TSQLQuery
    SQL.Strings = (
      'select id, nome, uf from cidade')
  end
  inherited cds1: TClientDataSet
    Active = True
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1NOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cds1UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
  end
end
