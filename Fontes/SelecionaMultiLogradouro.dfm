inherited frmSelecionaMultiLogradouro: TfrmSelecionaMultiLogradouro
  Caption = 'frmSelecionaMultiLogradouro'
  ClientHeight = 472
  ClientWidth = 546
  ExplicitWidth = 552
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 9
    Top = 41
    ExplicitLeft = 9
    ExplicitTop = 41
  end
  inherited Label2: TLabel
    Left = 443
    Top = 427
    ExplicitLeft = 443
    ExplicitTop = 427
  end
  object Label3: TLabel [2]
    Left = 61
    Top = 9
    Width = 38
    Height = 13
    Alignment = taRightJustify
    Caption = 'Distrito:'
  end
  inherited btnOk: TBitBtn
    Left = 423
    Top = 64
    Width = 116
    ExplicitLeft = 423
    ExplicitTop = 64
    ExplicitWidth = 116
  end
  inherited btnCancelar: TBitBtn
    Left = 423
    Top = 94
    Width = 116
    ExplicitLeft = 423
    ExplicitTop = 94
    ExplicitWidth = 116
  end
  inherited edPesquisa: TcxTextEdit
    Left = 103
    Top = 37
    ExplicitLeft = 103
    ExplicitTop = 37
    ExplicitWidth = 315
    Width = 315
  end
  inherited GridTable: TcxGrid
    Top = 64
    Width = 411
    Height = 403
    ExplicitTop = 64
    ExplicitWidth = 411
    ExplicitHeight = 403
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
        DataBinding.FieldName = 'ID_LOGRAD'
      end
      inherited GridTableDBTableView1Column1: TcxGridDBColumn
        DataBinding.FieldName = 'DESCR_LOGRAD'
      end
      inherited GridTableDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'MARCADO'
        Width = 25
        IsCaptionAssigned = True
      end
    end
  end
  inherited edQtdSelect: TcxTextEdit
    Left = 443
    Top = 441
    Style.IsFontAssigned = True
    ExplicitLeft = 443
    ExplicitTop = 441
  end
  inherited chkMarcaTodos: TCheckBox
    Left = 424
    Top = 38
    Width = 115
    ExplicitLeft = 424
    ExplicitTop = 38
    ExplicitWidth = 115
  end
  object edBairroDistrito: TcxTextEdit [9]
    AlignWithMargins = True
    Left = 103
    Top = 5
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.BorderColor = clWhite
    Style.Color = clMoneyGreen
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 6
    Height = 23
    Width = 436
  end
  inherited qry1: TSQLQuery
    BeforeOpen = qry1BeforeOpen
    Params = <
      item
        DataType = ftInteger
        Name = 'Bairro_Ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Bairro_Fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  count(id) as id, ender_id_lograd as id_lograd, '
      '  ender_descr_lograd as descr_lograd, '
      '  '#39'N'#39' AS MARCADO'
      'from'
      '  unid_consumidora'
      'where'
      '  (ender_id_bairro >= :Bairro_Ini) and'
      '  (ender_id_bairro <= :Bairro_Fim)'
      'group by'
      '  ender_id_lograd, ender_descr_lograd'
      'order by'
      '  ender_descr_lograd')
  end
  inherited cds1: TClientDataSet
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1ID_LOGRAD: TIntegerField
      FieldName = 'ID_LOGRAD'
    end
    object cds1DESCR_LOGRAD: TStringField
      FieldName = 'DESCR_LOGRAD'
      Size = 50
    end
    object cds1MARCADO: TStringField
      FieldName = 'MARCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
