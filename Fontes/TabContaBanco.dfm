inherited frmTabContaBanco: TfrmTabContaBanco
  Left = 80
  Top = 164
  Caption = 'frmTabContaBanco'
  ClientHeight = 585
  ClientWidth = 1091
  ExplicitLeft = 80
  ExplicitTop = 164
  ExplicitWidth = 1107
  ExplicitHeight = 623
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel: TPanel
    Top = 544
    Width = 1089
    Height = 40
    Align = alClient
    ExplicitTop = 531
    ExplicitWidth = 586
    ExplicitHeight = 34
    inherited edPesquisa: TcxTextEdit
      Left = 60
      Top = 5
      ExplicitLeft = 60
      ExplicitTop = 5
    end
    inherited lblTitColPesquisa: TcxLabel
      Top = 7
      Style.IsFontAssigned = True
      ExplicitTop = 7
      ExplicitWidth = 55
      Width = 55
      AnchorX = 59
    end
    inherited cxLabel1: TcxLabel
      Left = 354
      Top = 7
      Style.IsFontAssigned = True
      ExplicitLeft = 354
      ExplicitTop = 7
      AnchorX = 461
    end
  end
  inherited pButtons: TPanel
    Width = 1091
    ExplicitWidth = 873
    inherited btnNovo: TcxButton
      Left = 271
      ExplicitLeft = 271
    end
    inherited btnAlterar: TcxButton
      Left = 330
      OnClick = btnNovoClick
      ExplicitLeft = 330
    end
    inherited btnExcluir: TcxButton
      Left = 389
      ExplicitLeft = 389
    end
    inherited btnFechar: TcxButton
      Left = 1030
      ExplicitLeft = 524
      ExplicitHeight = 57
    end
    inherited btnPesquisar: TcxButton
      Left = 526
      ExplicitLeft = 526
    end
    inherited btnImprimir: TcxButton
      Left = 725
      ExplicitLeft = 725
    end
  end
  inherited GridTable: TcxGrid
    Width = 1091
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
        Width = 40
      end
      inherited GridTableDBTableView1Column8: TcxGridDBColumn
        Tag = 1
        Width = 246
      end
      object GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'N'#250'mero'
        DataBinding.FieldName = 'NUMERO'
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Caption = 'Agencia'
        DataBinding.FieldName = 'AGENCIA'
        Width = 62
      end
      object GridTableDBTableView1Column3: TcxGridDBColumn
        Caption = 'Entid. Financeira'
        DataBinding.FieldName = 'NOME_ENTID_FINANC'
        Width = 250
      end
      object GridTableDBTableView1Column4: TcxGridDBColumn
        Caption = 'Dt.Saldo Anter'
        DataBinding.FieldName = 'DT_SALDO_ANTER'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 88
      end
      object GridTableDBTableView1Column5: TcxGridDBColumn
        Caption = 'Saldo Anter R$'
        DataBinding.FieldName = 'VAL_SALDO_ANTER'
        HeaderAlignmentHorz = taRightJustify
        HeaderGlyphAlignmentHorz = taRightJustify
        Width = 93
      end
      object GridTableDBTableView1Column6: TcxGridDBColumn
        Caption = 'D/C'
        DataBinding.FieldName = 'TIPO_SALDO_ANTER'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 30
      end
      object GridTableDBTableView1Column9: TcxGridDBColumn
        Caption = 'Ult.Movim'
        DataBinding.FieldName = 'DT_ULT_MOVIM'
        HeaderAlignmentHorz = taCenter
      end
      object GridTableDBTableView1Column10: TcxGridDBColumn
        Caption = 'Saldo Atual R$'
        DataBinding.FieldName = 'VAL_SALDO_ATUAL'
        HeaderAlignmentHorz = taRightJustify
        Width = 96
      end
      object GridTableDBTableView1Column11: TcxGridDBColumn
        Caption = 'D/C'
        DataBinding.FieldName = 'TIPO_SALDO_ATUAL'
        HeaderAlignmentHorz = taCenter
        Width = 30
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
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'AGENCIA'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'ID_ENTID_FINANC'
        DataType = ftInteger
      end
      item
        Name = 'DT_SALDO_ANTER'
        DataType = ftDate
      end
      item
        Name = 'VAL_SALDO_ANTER'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'TIPO_SALDO_ANTER'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VAL_LIMITE'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'CONTAB_CAIXA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOME_ENTID_FINANC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DT_ULT_MOVIM'
        DataType = ftDate
      end
      item
        Name = 'VAL_SALDO_ATUAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'TIPO_SALDO_ATUAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    Top = 256
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object cds1NUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 11
    end
    object cds1AGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 11
    end
    object cds1ID_ENTID_FINANC: TIntegerField
      FieldName = 'ID_ENTID_FINANC'
    end
    object cds1DT_SALDO_ANTER: TDateField
      Alignment = taCenter
      FieldName = 'DT_SALDO_ANTER'
    end
    object cds1VAL_SALDO_ANTER: TFMTBCDField
      FieldName = 'VAL_SALDO_ANTER'
      Precision = 18
      Size = 2
    end
    object cds1TIPO_SALDO_ANTER: TStringField
      FieldName = 'TIPO_SALDO_ANTER'
      FixedChar = True
      Size = 1
    end
    object cds1VAL_LIMITE: TFMTBCDField
      FieldName = 'VAL_LIMITE'
      Precision = 18
      Size = 2
    end
    object cds1CONTAB_CAIXA: TStringField
      FieldName = 'CONTAB_CAIXA'
      FixedChar = True
      Size = 1
    end
    object cds1NOME_ENTID_FINANC: TStringField
      FieldName = 'NOME_ENTID_FINANC'
      Size = 60
    end
    object cds1DT_ULT_MOVIM: TDateField
      Alignment = taCenter
      FieldName = 'DT_ULT_MOVIM'
    end
    object cds1VAL_SALDO_ATUAL: TFMTBCDField
      FieldName = 'VAL_SALDO_ATUAL'
      Precision = 18
      Size = 2
    end
    object cds1TIPO_SALDO_ATUAL: TStringField
      FieldName = 'TIPO_SALDO_ATUAL'
      FixedChar = True
      Size = 1
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
      'CONTA_BANCO'
      'ORDER BY'
      'ID')
    Top = 152
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1NUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qry1AGENCIA: TStringField
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qry1ID_ENTID_FINANC: TIntegerField
      FieldName = 'ID_ENTID_FINANC'
      ProviderFlags = [pfInUpdate]
    end
    object qry1DT_SALDO_ANTER: TDateField
      FieldName = 'DT_SALDO_ANTER'
      ProviderFlags = [pfInUpdate]
    end
    object qry1VAL_SALDO_ANTER: TFMTBCDField
      FieldName = 'VAL_SALDO_ANTER'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qry1TIPO_SALDO_ANTER: TStringField
      FieldName = 'TIPO_SALDO_ANTER'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1VAL_LIMITE: TFMTBCDField
      FieldName = 'VAL_LIMITE'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qry1CONTAB_CAIXA: TStringField
      FieldName = 'CONTAB_CAIXA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1NOME_ENTID_FINANC: TStringField
      FieldName = 'NOME_ENTID_FINANC'
      ProviderFlags = []
      Size = 60
    end
    object qry1DT_ULT_MOVIM: TDateField
      FieldName = 'DT_ULT_MOVIM'
      ProviderFlags = []
    end
    object qry1VAL_SALDO_ATUAL: TFMTBCDField
      FieldName = 'VAL_SALDO_ATUAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qry1TIPO_SALDO_ATUAL: TStringField
      FieldName = 'TIPO_SALDO_ATUAL'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
end
