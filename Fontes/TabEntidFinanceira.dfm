inherited frmEntidFinanc: TfrmEntidFinanc
  Left = 266
  Top = 163
  Caption = 'frmEntidFinanc'
  ClientHeight = 585
  ClientWidth = 625
  ExplicitLeft = 266
  ExplicitTop = 163
  ExplicitWidth = 641
  ExplicitHeight = 623
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel: TPanel
    Top = 544
    Width = 623
    Height = 40
    Align = alClient
    ExplicitTop = 531
    ExplicitWidth = 586
    ExplicitHeight = 34
    inherited edPesquisa: TcxTextEdit
      Top = 5
      ExplicitTop = 5
      ExplicitHeight = 21
    end
    inherited lblTitColPesquisa: TcxLabel
      Top = 7
      Style.IsFontAssigned = True
      ExplicitTop = 7
      AnchorX = 68
    end
    inherited cxLabel1: TcxLabel
      Left = 346
      Top = 7
      Style.IsFontAssigned = True
      ExplicitLeft = 346
      ExplicitTop = 7
      AnchorX = 453
    end
  end
  inherited pButtons: TPanel
    Width = 625
    ExplicitWidth = 873
    inherited btnNovo: TcxButton
      Left = 222
      ExplicitLeft = 222
    end
    inherited btnAlterar: TcxButton
      Left = 282
      OnClick = btnNovoClick
      ExplicitLeft = 282
    end
    inherited btnExcluir: TcxButton
      Left = 342
      ExplicitLeft = 342
    end
    inherited btnFechar: TcxButton
      Left = 564
      ExplicitLeft = 637
    end
    inherited btnPesquisar: TcxButton
      Left = 454
      ExplicitLeft = 454
    end
    inherited btnImprimir: TcxButton
      Left = 495
      Visible = False
      ExplicitLeft = 495
    end
  end
  inherited GridTable: TcxGrid
    Width = 625
    Height = 480
    ExplicitWidth = 586
    ExplicitHeight = 480
    inherited GridTableDBTableView1: TcxGridDBTableView
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
      inherited GridTableDBTableView1Column7: TcxGridDBColumn
        Tag = 1
        Width = 57
      end
      inherited GridTableDBTableView1Column8: TcxGridDBColumn
        Tag = 1
        Caption = 'Nome'
        DataBinding.FieldName = 'NOME'
        Width = 483
      end
      object GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'C'#243'd.Banco'
        DataBinding.FieldName = 'COD_BANCO'
        Width = 63
      end
    end
  end
  inherited dsp1: TDataSetProvider
    Top = 208
  end
  inherited cds1: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COD_BANCO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end>
    Top = 256
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cds1COD_BANCO: TStringField
      Alignment = taCenter
      FieldName = 'COD_BANCO'
      FixedChar = True
      Size = 3
    end
  end
  inherited ds1: TDataSource
    Top = 304
  end
  inherited qry1: TSQLQuery
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM '
      'ENTID_FINANC')
    Top = 152
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1NOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1COD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
end
