inherited frmSelecionaMultiDistrito: TfrmSelecionaMultiDistrito
  Caption = 'frmSelecionaMultiDistrito'
  ClientHeight = 344
  ClientWidth = 489
  ExplicitWidth = 495
  ExplicitHeight = 373
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Left = 7
    Top = 41
    ExplicitLeft = 7
    ExplicitTop = 41
  end
  inherited Label2: TLabel
    Left = 395
    Top = 296
    ExplicitLeft = 395
    ExplicitTop = 296
  end
  object Label3: TLabel [2]
    Left = 60
    Top = 9
    Width = 37
    Height = 13
    Alignment = taRightJustify
    Caption = 'Cidade:'
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
    Left = 99
    Top = 37
    ExplicitLeft = 99
    ExplicitTop = 37
    ExplicitWidth = 263
    Width = 263
  end
  inherited GridTable: TcxGrid
    Top = 64
    ExplicitTop = 64
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
    Top = 311
    Style.IsFontAssigned = True
    ExplicitLeft = 395
    ExplicitTop = 311
  end
  inherited chkMarcaTodos: TCheckBox
    Top = 38
    Width = 115
    ExplicitTop = 38
    ExplicitWidth = 115
  end
  object edCidade: TcxTextEdit [9]
    AlignWithMargins = True
    Left = 99
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
    Width = 384
  end
  inherited prov1: TDataSetProvider
    Top = 140
  end
  inherited qry1: TSQLQuery
    BeforeOpen = qry1BeforeOpen
    Params = <
      item
        DataType = ftInteger
        Name = 'cidade'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      'id, descricao, '#39'N'#39' as marcado'
      'from'
      'distrito'
      'where'
      'id_cidade = :cidade')
    Top = 179
  end
  inherited cds1: TClientDataSet
    Top = 107
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cds1MARCADO: TStringField
      Alignment = taCenter
      FieldName = 'MARCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  inherited DataSource1: TDataSource
    Top = 157
  end
end
