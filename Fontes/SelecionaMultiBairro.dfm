inherited frmSelecionaMultiBairro: TfrmSelecionaMultiBairro
  Caption = 'frmSelecionaMultiBairro'
  ClientHeight = 378
  ClientWidth = 489
  ExplicitWidth = 495
  ExplicitHeight = 407
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 8
    Top = 41
    Width = 91
    ExplicitLeft = 8
    ExplicitTop = 41
    ExplicitWidth = 91
  end
  inherited Label2: TLabel
    Left = 395
    Top = 331
    ExplicitLeft = 395
    ExplicitTop = 331
  end
  object Label3: TLabel [2]
    Left = 9
    Top = 9
    Width = 90
    Height = 13
    Alignment = taRightJustify
    Caption = 'Distrito/Cidade:'
  end
  inherited btnOk: TBitBtn
    Top = 64
    Width = 116
    ExplicitTop = 64
    ExplicitWidth = 116
  end
  inherited btnCancelar: TBitBtn
    Top = 94
    Width = 116
    ExplicitTop = 94
    ExplicitWidth = 116
  end
  inherited edPesquisa: TcxTextEdit
    Left = 103
    Top = 37
    ExplicitLeft = 103
    ExplicitTop = 37
    ExplicitWidth = 259
    Width = 259
  end
  inherited GridTable: TcxGrid
    Top = 64
    Height = 307
    ExplicitTop = 64
    ExplicitHeight = 307
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
      inherited GridTableDBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'MARCADO'
        Width = 25
        IsCaptionAssigned = True
      end
    end
  end
  inherited edQtdSelect: TcxTextEdit
    Left = 395
    Top = 345
    Style.IsFontAssigned = True
    ExplicitLeft = 395
    ExplicitTop = 345
  end
  inherited chkMarcaTodos: TCheckBox
    Top = 38
    Width = 115
    ExplicitTop = 38
    ExplicitWidth = 115
  end
  object edDistritoCidade: TcxTextEdit [9]
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
    Width = 380
  end
  inherited qry1: TSQLQuery
    BeforeOpen = qry1BeforeOpen
    Params = <
      item
        DataType = ftInteger
        Name = 'cidade'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'distrito_ini'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'distrito_fim'
        ParamType = ptInput
        Value = '99999'
      end>
    SQL.Strings = (
      'select'
      'id, descricao, '#39'N'#39' as marcado'
      'from'
      'BAIRRO'
      'where'
      '(id_cidade = :cidade) and'
      '(id_distrito >= :distrito_ini) and'
      '(id_distrito <= :distrito_fim)')
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
    object cds1MARCADO: TStringField
      FieldName = 'MARCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
