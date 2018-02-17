inherited frmAddEditTarifa1: TfrmAddEditTarifa1
  Left = 212
  Top = 142
  Caption = 'frmAddEditTarifa1'
  ClientHeight = 427
  ClientWidth = 387
  Font.Height = -12
  Font.Name = 'Calibri'
  OnCreate = FormCreate
  ExplicitWidth = 393
  ExplicitHeight = 456
  PixelsPerInch = 96
  TextHeight = 14
  inherited PanelClient: TPanel
    Width = 387
    Height = 394
    ParentDoubleBuffered = False
    ExplicitWidth = 387
    ExplicitHeight = 394
    inherited lblPadrao: TcxLabel
      Left = 23
      Top = 69
      Caption = 'Forma de C'#225'lculo:'
      ExplicitLeft = 23
      ExplicitTop = 69
      ExplicitWidth = 103
      Width = 103
      AnchorX = 126
    end
    object edValor: TcxDBCurrencyEdit
      Left = 127
      Top = 246
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '  ,0.00'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 5
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 23
      Top = 114
      AutoSize = False
      Caption = 'Categoria:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object cxLabel2: TcxLabel
      Left = 23
      Top = 27
      AutoSize = False
      Caption = 'Id.:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object edId: TcxDBTextEdit
      Left = 127
      Top = 23
      TabStop = False
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 0
      Width = 74
    end
    object cxLabel3: TcxLabel
      Left = 23
      Top = 158
      AutoSize = False
      Caption = 'Inicial:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object cxLabel4: TcxLabel
      Left = 23
      Top = 203
      AutoSize = False
      Caption = 'Final:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object cxLabel5: TcxLabel
      Left = 23
      Top = 248
      AutoSize = False
      Caption = 'Valor (R$):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object edQtdFim: TcxDBCurrencyEdit
      Left = 127
      Top = 201
      DataBinding.DataField = 'QTD_FIM'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '  ,0'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 4
      Width = 121
    end
    object edQtdIni: TcxDBCurrencyEdit
      Left = 127
      Top = 156
      DataBinding.DataField = 'QTD_INI'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '  ,0'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 3
      Width = 121
    end
    object cbFormaCalculo: TcxComboBox
      Left = 127
      Top = 67
      ParentFont = False
      Properties.Items.Strings = (
        'ESTIMATIVA'
        'HIDR'#212'METRO')
      Properties.ReadOnly = False
      Properties.OnCloseUp = cbFormaCalculoPropertiesCloseUp
      Properties.OnPopup = cbFormaCalculoPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 1
      Text = 'ESTIMATIVA'
      Width = 143
    end
    object cbCategoria: TcxComboBox
      Left = 127
      Top = 112
      ParentFont = False
      Properties.Items.Strings = (
        'RESIDENCIAL'
        'COMERCIAL'
        'INDUSTRIAL'
        'OUTRA')
      Properties.ReadOnly = False
      Properties.OnCloseUp = cbFormaCalculoPropertiesCloseUp
      Properties.OnPopup = cbFormaCalculoPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      Text = 'RESIDENCIAL'
      Width = 173
    end
    object cxLabel6: TcxLabel
      Left = 23
      Top = 336
      AutoSize = False
      Caption = 'Excedente (R$):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object edValExced: TcxDBCurrencyEdit
      Left = 127
      Top = 334
      DataBinding.DataField = 'VAL_EXCED'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '  ,0.00'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 13
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 23
      Top = 291
      AutoSize = False
      Caption = 'Qtd. Base:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object edQtdBase: TcxDBCurrencyEdit
      Left = 127
      Top = 289
      DataBinding.DataField = 'QTD_BASE'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '  ,0'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 12
      Width = 121
    end
  end
  inherited Panel: TPanel
    Top = 394
    Width = 387
    ExplicitTop = 394
    ExplicitWidth = 387
    inherited btnCancelar: TcxButton
      Left = 288
      Top = 3
      ExplicitLeft = 288
      ExplicitTop = 3
    end
    inherited btnGravar: TcxButton
      Left = 193
      Top = 3
      ExplicitLeft = 193
      ExplicitTop = 3
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 48
    Top = 24
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
        Name = 'FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTD_INI'
        DataType = ftInteger
      end
      item
        Name = 'QTD_FIM'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ID_VIGENCIA'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 22
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'INI_VIGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FIM_VIGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'INI_VIG_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FIM_VIG_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'VALOR_EXCED'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'QTD_BASE'
        DataType = ftInteger
      end>
    Params = <>
    BeforePost = cds1BeforePost
    Left = 64
    Top = 40
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cds1TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object cds1QTD_INI: TIntegerField
      FieldName = 'QTD_INI'
    end
    object cds1QTD_FIM: TIntegerField
      FieldName = 'QTD_FIM'
    end
    object cds1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cds1ID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
    end
    object cds1DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 22
    end
    object cds1DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cds1INI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      Size = 6
    end
    object cds1FIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      Size = 6
    end
    object cds1INI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object cds1FIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
    object cds1VAL_EXCED: TFMTBCDField
      FieldName = 'VAL_EXCED'
      Precision = 18
      Size = 2
    end
    object cds1QTD_BASE: TIntegerField
      FieldName = 'QTD_BASE'
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsTabTarifa
    Left = 80
    Top = 56
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
      'TAB_TARIFA'
      'WHERE'
      '(ID = :pId)')
    Left = 24
    Top = 8
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1QTD_INI: TIntegerField
      FieldName = 'QTD_INI'
      ProviderFlags = [pfInUpdate]
    end
    object qry1QTD_FIM: TIntegerField
      FieldName = 'QTD_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object qry1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qry1ID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qry1DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      ProviderFlags = []
      FixedChar = True
      Size = 22
    end
    object qry1DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object qry1INI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object qry1FIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object qry1INI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object qry1FIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object qry1VAL_EXCED: TFMTBCDField
      FieldName = 'VAL_EXCED'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qry1QTD_BASE: TIntegerField
      FieldName = 'QTD_BASE'
      ProviderFlags = [pfInUpdate]
    end
  end
end
