inherited frmAddEditTarifa2: TfrmAddEditTarifa2
  Left = 212
  Top = 142
  Caption = 'frmAddEditTarifa2'
  ClientHeight = 218
  ClientWidth = 519
  Font.Height = -12
  Font.Name = 'Calibri'
  OnCreate = FormCreate
  ExplicitWidth = 525
  ExplicitHeight = 247
  PixelsPerInch = 96
  TextHeight = 14
  inherited PanelClient: TPanel
    Width = 519
    Height = 185
    ParentDoubleBuffered = False
    ExplicitWidth = 519
    ExplicitHeight = 185
    inherited lblPadrao: TcxLabel
      Left = 23
      Top = 71
      Caption = 'Descri'#231#227'o:'
      ExplicitLeft = 23
      ExplicitTop = 71
      ExplicitWidth = 103
      Width = 103
      AnchorX = 126
    end
    object edValor: TcxDBCurrencyEdit
      Left = 127
      Top = 112
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = '  ,0.00'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      Width = 121
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
    object cxLabel5: TcxLabel
      Left = 23
      Top = 116
      AutoSize = False
      Caption = 'Valor (R$):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 103
      AnchorX = 126
    end
    object edDescricao: TcxDBTextEdit
      Left = 127
      Top = 66
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 1
      Width = 362
    end
  end
  inherited Panel: TPanel
    Top = 185
    Width = 519
    ExplicitTop = 185
    ExplicitWidth = 519
    inherited btnCancelar: TcxButton
      Left = 422
      Top = 3
      ExplicitLeft = 422
      ExplicitTop = 3
    end
    inherited btnGravar: TcxButton
      Left = 327
      Top = 3
      ExplicitLeft = 327
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
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
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
      end>
    Params = <>
    Left = 64
    Top = 40
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cds1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cds1ID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
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
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsTabOutraTarifa
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
      'TAB_OUTRA_TARIFA'
      'WHERE'
      '(ID = :pId)')
    Left = 24
    Top = 8
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
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
  end
end
