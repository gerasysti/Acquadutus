inherited frmAddEditContaBanco: TfrmAddEditContaBanco
  Caption = 'frmAddEditContaBanco'
  ClientHeight = 300
  ClientWidth = 517
  OnCreate = FormCreate
  ExplicitWidth = 533
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 517
    Height = 267
    ParentDoubleBuffered = False
    ExplicitTop = -4
    ExplicitWidth = 558
    ExplicitHeight = 452
    object sbEntidFinanc: TSpeedButton [0]
      Tag = 6
      Left = 133
      Top = 153
      Width = 26
      Height = 26
      Hint = 'Seleciona a Entid. Financeira'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777700000777770000070F000777770F00070F000777770F
        0007000000070000000700F000000F00000700F000700F00000700F000700F00
        00077000000000000077770F00070F0007777700000700000777777000777000
        77777770F07770F0777777700077700077777777777777777777}
      ParentFont = False
      OnClick = sbEntidFinancClick
    end
    inherited lblPadrao: TcxLabel
      Left = 7
      Top = 28
      Caption = 'Id.:'
      ExplicitLeft = 7
      ExplicitTop = 28
      ExplicitWidth = 86
      ExplicitHeight = 20
      Height = 20
      Width = 86
      AnchorX = 93
    end
    object edId: TcxDBTextEdit
      Left = 93
      Top = 26
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 0
      Width = 70
    end
    object edDescricao: TcxDBTextEdit
      Left = 93
      Top = 66
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 40
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 1
      Width = 401
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 68
      AutoSize = False
      Caption = 'Descri'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 86
      AnchorX = 93
    end
    object cxLabel2: TcxLabel
      Left = 7
      Top = 114
      AutoSize = False
      Caption = 'N'#250'mero:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 86
      AnchorX = 93
    end
    object edNumero: TcxDBTextEdit
      Left = 93
      Top = 112
      DataBinding.DataField = 'NUMERO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      Width = 101
    end
    object cxLabel3: TcxLabel
      Left = 7
      Top = 156
      AutoSize = False
      Caption = 'Entid. Financeira'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 86
      AnchorX = 93
    end
    object edIdEntidFinanc: TcxDBTextEdit
      Tag = 6
      Left = 93
      Top = 153
      AutoSize = False
      DataBinding.DataField = 'ID_ENTID_FINANC'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 8
      OnExit = edIdEntidFinancExit
      OnKeyDown = edIdEntidFinancKeyDown
      OnKeyPress = edIdEntidFinancKeyPress
      Height = 25
      Width = 41
    end
    object edNomeEntidFinanc: TcxDBTextEdit
      Left = 158
      Top = 153
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NOME_ENTID_FINANC'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 9
      Height = 25
      Width = 336
    end
    object cxLabel4: TcxLabel
      Left = 320
      Top = 114
      AutoSize = False
      Caption = 'Agencia:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 71
      AnchorX = 391
    end
    object edAgencia: TcxDBTextEdit
      Left = 393
      Top = 112
      DataBinding.DataField = 'AGENCIA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 3
      Width = 101
    end
    object cxLabel5: TcxLabel
      Left = 7
      Top = 204
      AutoSize = False
      Caption = 'Dt. Saldo Anter.:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 86
      AnchorX = 93
    end
    object edDtSaldoAnter: TcxDateEdit
      Left = 93
      Top = 202
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.InputKind = ikMask
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 12
      Height = 22
      Width = 110
    end
    object cxLabel6: TcxLabel
      Left = 215
      Top = 204
      AutoSize = False
      Caption = 'Val. Saldo Anter. R$:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 86
      AnchorX = 301
    end
    object cbTipoSaldo: TcxComboBox
      Left = 415
      Top = 202
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.Items.Strings = (
        'CREDOR'
        'DEVEDOR')
      Properties.ReadOnly = False
      Properties.OnCloseUp = cbCategoriaPropertiesCloseUp
      Properties.OnPopup = cbCategoriaPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 15
      Text = 'DEVEDOR'
      Height = 22
      Width = 79
    end
    object edVaSaldoAnter: TcxDBCurrencyEdit
      Left = 301
      Top = 202
      AutoSize = False
      DataBinding.DataField = 'VAL_SALDO_ANTER'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.DisplayFormat = '  ,0.00'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 13
      Height = 22
      Width = 114
    end
  end
  inherited Panel: TPanel
    Top = 267
    Width = 517
    ExplicitTop = 134
    ExplicitWidth = 520
    inherited btnCancelar: TcxButton
      Left = 419
      Top = 2
      ExplicitLeft = 419
      ExplicitTop = 2
    end
    inherited btnGravar: TcxButton
      Left = 323
      Top = 2
      ExplicitLeft = 323
      ExplicitTop = 2
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 224
    Top = 8
  end
  inherited cds1: TClientDataSet
    CommandText = ''
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
    Params = <>
    BeforeEdit = cds1BeforeEdit
    BeforePost = cds1BeforePost
    Left = 261
    Top = 8
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
    Left = 296
    Top = 8
  end
  inherited qry1: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM '
      'CONTA_BANCO'
      'WHERE'
      '(ID = :pId)')
    Left = 184
    Top = 8
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
