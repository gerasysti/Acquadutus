inherited frmAddEditLanOutroItem: TfrmAddEditLanOutroItem
  Left = 214
  Top = 169
  Caption = 'frmAddEditLanOutroItem'
  ClientHeight = 390
  ClientWidth = 698
  ExplicitWidth = 704
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 698
    Height = 357
    ExplicitWidth = 698
    ExplicitHeight = 357
    object sbUnidConsum: TSpeedButton [0]
      Tag = 1
      Left = 205
      Top = 33
      Width = 26
      Height = 26
      Hint = 'Seleciona a Unid. Consumidora ...'
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
      OnClick = sbUnidConsumClick
    end
    object sbItem: TSpeedButton [1]
      Tag = 2
      Left = 358
      Top = 205
      Width = 26
      Height = 28
      Hint = 'Seleciona o '#205'tem ...'
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
      OnClick = sbUnidConsumClick
    end
    inherited lblPadrao: TcxLabel
      Left = 10
      Top = 37
      Caption = 'Unid. Consumidora:'
      ExplicitLeft = 10
      ExplicitTop = 37
      ExplicitWidth = 111
      Width = 111
      AnchorX = 121
    end
    object edObservacao: TcxDBTextEdit
      Left = 318
      Top = 294
      AutoSize = False
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 14
      Height = 25
      Width = 363
    end
    object edNomePessoa: TcxDBTextEdit
      Left = 230
      Top = 34
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NOME_PESSOA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 1
      Height = 25
      Width = 451
    end
    object cxLabel3: TcxLabel
      Left = 245
      Top = 297
      AutoSize = False
      Caption = 'Observa'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 72
      AnchorX = 317
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 253
      AutoSize = False
      Caption = 'Valor (R$):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 111
      AnchorX = 121
    end
    object edDtEvento: TcxDateEdit
      Left = 121
      Top = 294
      AutoSize = False
      ParentFont = False
      Properties.InputKind = ikMask
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 13
      Height = 25
      Width = 110
    end
    object cxLabel6: TcxLabel
      Left = 10
      Top = 80
      AutoSize = False
      Caption = 'Endere'#231'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 111
      AnchorX = 121
    end
    object cxLabel7: TcxLabel
      Left = 10
      Top = 123
      AutoSize = False
      Caption = 'Bairro e Distrito:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 111
      AnchorX = 121
    end
    object edCPF_CNPJ: TcxDBTextEdit
      Left = 121
      Top = 164
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CPF_CNPJ_FTDO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 5
      Height = 25
      Width = 176
    end
    object edIdUnidConsum: TcxDBMaskEdit
      Tag = 1
      Left = 121
      Top = 34
      AutoSize = False
      DataBinding.DataField = 'ID_UNID_CONSUM'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Properties.OnChange = edIDServidorPropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 0
      OnExit = edIdUnidConsumExit
      OnKeyDown = edIdUnidConsumKeyDown
      Height = 25
      Width = 85
    end
    object cxLabel8: TcxLabel
      Left = 17
      Top = 167
      AutoSize = False
      Caption = 'CPF/CNPJ:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 104
      AnchorX = 121
    end
    object edEndereco: TcxTextEdit
      Left = 121
      Top = 77
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 2
      Height = 25
      Width = 560
    end
    object edBairroDistrito: TcxTextEdit
      Left = 121
      Top = 120
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 3
      Height = 25
      Width = 264
    end
    object edValor: TcxDBCurrencyEdit
      Left = 121
      Top = 250
      AutoSize = False
      DataBinding.DataField = 'VALOR'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = ',0.00'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 10
      Height = 25
      Width = 110
    end
    object cxLabel9: TcxLabel
      Left = 467
      Top = 123
      AutoSize = False
      Caption = 'Categoria:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 78
      AnchorX = 545
    end
    object edDescrCategoria: TcxDBTextEdit
      Left = 545
      Top = 120
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DESCR_TIPO_UNID_CONSUM'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 4
      Height = 25
      Width = 136
    end
    object cxLabel10: TcxLabel
      Left = 441
      Top = 167
      AutoSize = False
      Caption = 'N'#186' do Hidr'#244'metro:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 104
      AnchorX = 545
    end
    object edNumHidrometro: TcxDBTextEdit
      Left = 545
      Top = 164
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NUM_HIDROMETRO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 6
      Height = 25
      Width = 136
    end
    object cxLabel11: TcxLabel
      Left = 4
      Top = 210
      AutoSize = False
      Caption = 'Referente ao M'#234's/Ano:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 117
      AnchorX = 121
    end
    object edIdItem: TcxDBMaskEdit
      Tag = 2
      Left = 318
      Top = 207
      AutoSize = False
      DataBinding.DataField = 'ID_OUTRO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.MaxLength = 0
      Properties.ReadOnly = False
      Properties.OnChange = edIDServidorPropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 8
      OnExit = edIdItemExit
      OnKeyDown = edIdUnidConsumKeyDown
      Height = 25
      Width = 41
    end
    object edDescrItem: TcxDBTextEdit
      Left = 383
      Top = 207
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DESCR_OUTRA_TARIFA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 9
      Height = 25
      Width = 298
    end
    object cxLabel12: TcxLabel
      Left = 8
      Top = 297
      AutoSize = False
      Caption = 'Data do Evento:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 111
      AnchorX = 119
    end
    object cbTipo: TcxComboBox
      Left = 231
      Top = 250
      AutoSize = False
      ParentFont = False
      Properties.Items.Strings = (
        'D'#201'BITO'
        'CR'#201'DITO')
      Properties.ReadOnly = False
      Properties.OnCloseUp = cbTipoPropertiesCloseUp
      Properties.OnPopup = cbTipoPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 11
      Text = 'D'#201'BITO'
      Height = 25
      Width = 90
    end
    object edComplemento: TcxDBTextEdit
      Left = 495
      Top = 250
      AutoSize = False
      DataBinding.DataField = 'COMPLEMENTO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 12
      Height = 25
      Width = 186
    end
    object cxLabel13: TcxLabel
      Left = 412
      Top = 253
      AutoSize = False
      Caption = 'Complemento:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 82
      AnchorX = 494
    end
    object cxLabel2: TcxLabel
      Left = 249
      Top = 209
      AutoSize = False
      Caption = #205'tem:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 67
      AnchorX = 316
    end
    object edMesAno: TcxMaskEdit
      Left = 121
      Top = 207
      AutoSize = False
      ParentFont = False
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.EditMask = '99/9999;0; '
      Properties.MaxLength = 0
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 7
      Text = '      '
      OnExit = edMesAnoExit
      Height = 25
      Width = 85
    end
  end
  inherited Panel: TPanel
    Top = 357
    Width = 698
    Color = 11783049
    ExplicitTop = 357
    ExplicitWidth = 698
    inherited btnCancelar: TcxButton
      Left = 587
      ExplicitLeft = 587
    end
    inherited btnGravar: TcxButton
      Left = 492
      ExplicitLeft = 492
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 36
    Top = 12
  end
  inherited cds1: TClientDataSet
    CommandText = ''
    FieldDefs = <
      item
        Name = 'ANO_MES'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_UNID_CONSUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_OUTRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COMPLEMENTO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TIPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DT_EVENTO'
        DataType = ftDate
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESCR_OUTRA_TARIFA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_CNPJ_FTDO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NUM_HIDROMETRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    Params = <>
    AfterInsert = cds1AfterInsert
    BeforePost = cds1BeforePost
    Left = 64
    Top = 24
    object cds1ANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cds1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      Required = True
    end
    object cds1ID_OUTRO: TIntegerField
      FieldName = 'ID_OUTRO'
      Required = True
    end
    object cds1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object cds1TIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cds1DT_EVENTO: TDateField
      FieldName = 'DT_EVENTO'
    end
    object cds1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 60
    end
    object cds1DESCR_OUTRA_TARIFA: TStringField
      FieldName = 'DESCR_OUTRA_TARIFA'
      Size = 40
    end
    object cds1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cds1CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cds1NUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      FixedChar = True
      Size = 12
    end
    object cds1DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cds1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      currency = True
      Precision = 18
      Size = 2
    end
  end
  inherited ds1: TDataSource
    Left = 77
    Top = 37
  end
  object qryItemLancado: TSQLQuery [5]
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pItem'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '   VALOR, DT_EVENTO'
      'FROM lancto_outro_item'
      'WHERE'
      '(ano_mes = :pAnoMes) and'
      '(id_unid_consum = :pUnidConsum) and'
      '(id_outro = :pItem)'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 456
    Top = 8
    object qryItemLancadoVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object qryItemLancadoDT_EVENTO: TDateField
      FieldName = 'DT_EVENTO'
    end
  end
  object qryUnidComsumidora: TSQLQuery [6]
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '   nome_pessoa, ender_descr_lograd, ender_num, ender_num_letra,'
      '   ender_complemento, ender_id_lograd,'
      '   ender_descr_bairro, ender_descr_distrito,'
      '   num_hidrometro, cpf_cnpj_ftdo, descr_tipo_unid_consum'
      'FROM'
      '   UNID_CONSUMIDORA'
      'WHERE'
      '   ID = :pUnidConsum')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 336
    Top = 8
    object qryUnidComsumidoraNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object qryUnidComsumidoraENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object qryUnidComsumidoraENDER_NUM: TIntegerField
      FieldName = 'ENDER_NUM'
    end
    object qryUnidComsumidoraENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      FixedChar = True
      Size = 1
    end
    object qryUnidComsumidoraENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object qryUnidComsumidoraENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object qryUnidComsumidoraNUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      FixedChar = True
      Size = 12
    end
    object qryUnidComsumidoraENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object qryUnidComsumidoraENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryUnidComsumidoraCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
  end
  inherited qry1: TSQLQuery
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pItem'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM lancto_outro_item'
      'WHERE'
      '(ano_mes = :pAnoMes) and'
      '(id_unid_consum = :pUnidConsum) and'
      '(id_outro = :pItem)')
    Left = 16
    Top = 0
    object qry1ANO_MES: TStringField
      FieldName = 'ANO_MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object qry1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1ID_OUTRO: TIntegerField
      FieldName = 'ID_OUTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qry1TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1DT_EVENTO: TDateField
      FieldName = 'DT_EVENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1DESCR_OUTRA_TARIFA: TStringField
      FieldName = 'DESCR_OUTRA_TARIFA'
      ProviderFlags = []
      Size = 40
    end
    object qry1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object qry1CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      ProviderFlags = []
      Size = 80
    end
    object qry1NUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      ProviderFlags = []
      FixedChar = True
      Size = 12
    end
    object qry1DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object qry1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
end
