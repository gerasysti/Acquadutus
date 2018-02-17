inherited frmAddEditLanPagto: TfrmAddEditLanPagto
  Left = 214
  Top = 169
  Caption = 'frmAddEditLanPagto'
  ClientHeight = 378
  ClientWidth = 708
  ExplicitLeft = 214
  ExplicitTop = 169
  ExplicitWidth = 724
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 708
    Height = 345
    ExplicitLeft = 8
    ExplicitTop = -4
    ExplicitWidth = 708
    ExplicitHeight = 345
    object sbUnidConsum: TSpeedButton [0]
      Tag = 1
      Left = 212
      Top = 34
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
    inherited lblPadrao: TcxLabel
      Left = 9
      Top = 37
      Caption = 'Unid. Consumidora:'
      ExplicitLeft = 9
      ExplicitTop = 37
      ExplicitWidth = 119
      Width = 119
      AnchorX = 128
    end
    object edNomePessoa: TcxDBTextEdit
      Left = 237
      Top = 34
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NOME_PESSOA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 1
      Height = 26
      Width = 451
    end
    object cxLabel1: TcxLabel
      Left = 9
      Top = 253
      AutoSize = False
      Caption = 'Data do Vencimento:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 119
      AnchorX = 128
    end
    object cxLabel6: TcxLabel
      Left = 9
      Top = 79
      AutoSize = False
      Caption = 'Endere'#231'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 119
      AnchorX = 128
    end
    object cxLabel7: TcxLabel
      Left = 9
      Top = 123
      AutoSize = False
      Caption = 'Bairro e Distrito:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 119
      AnchorX = 128
    end
    object edCPF_CNPJ: TcxDBTextEdit
      Left = 512
      Top = 164
      TabStop = False
      DataBinding.DataField = 'CPF_CNPJ'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 5
      Width = 176
    end
    object cxLabel8: TcxLabel
      Left = 9
      Top = 166
      AutoSize = False
      Caption = 'Tipo de Pessoa:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 119
      AnchorX = 128
    end
    object edEndereco: TcxTextEdit
      Left = 128
      Top = 77
      TabStop = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 2
      Width = 560
    end
    object edBairroDistrito: TcxTextEdit
      Left = 128
      Top = 121
      TabStop = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 3
      Width = 329
    end
    object cxLabel9: TcxLabel
      Left = 473
      Top = 123
      AutoSize = False
      Caption = 'Categoria:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 78
      AnchorX = 551
    end
    object edDescrCategoria: TcxDBTextEdit
      Left = 552
      Top = 121
      TabStop = False
      DataBinding.DataField = 'DESCR_CATEGORIA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 4
      Width = 136
    end
    object cxLabel11: TcxLabel
      Left = 9
      Top = 210
      AutoSize = False
      Caption = 'Tipo de Fatura:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 119
      AnchorX = 128
    end
    object cbTipoFatura: TcxComboBox
      Left = 128
      Top = 208
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.Items.Strings = (
        'MENSAL'
        'AVULSA')
      Properties.ReadOnly = False
      Properties.OnChange = cbTipoFaturaPropertiesChange
      Properties.OnCloseUp = cbTipoPropertiesCloseUp
      Properties.OnPopup = cbTipoPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 6
      Text = 'MENSAL'
      Width = 150
    end
    object cxLabel2: TcxLabel
      Left = 435
      Top = 210
      AutoSize = False
      Caption = 'Refer'#234'ncia:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 117
      AnchorX = 552
    end
    object cxLabel3: TcxLabel
      Left = 398
      Top = 166
      AutoSize = False
      Caption = 'CPF/CNPJ:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 112
      AnchorX = 510
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 128
      Top = 164
      TabStop = False
      DataBinding.DataField = 'DESCR_TIPO_PESSOA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 17
      Width = 150
    end
    object edDtVencto: TcxDBTextEdit
      Left = 128
      Top = 251
      TabStop = False
      DataBinding.DataField = 'DT_VENCIMENTO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 18
      Width = 150
    end
    object cxLabel4: TcxLabel
      Left = 433
      Top = 253
      AutoSize = False
      Caption = 'Total da Fatura (R$):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 119
      AnchorX = 552
    end
    object edTotalFatura: TcxDBTextEdit
      Left = 552
      Top = 251
      TabStop = False
      DataBinding.DataField = 'VAL_FATURA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 20
      Width = 136
    end
    object edValorPago: TcxCurrencyEdit
      Left = 128
      Top = 295
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = '  ,0.00;'
      Properties.NullString = '0,00'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 21
      Width = 150
    end
    object cxLabel5: TcxLabel
      Left = 9
      Top = 299
      AutoSize = False
      Caption = 'Valor Pagto (R$):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 119
      AnchorX = 128
    end
    object cxLabel10: TcxLabel
      Left = 433
      Top = 299
      AutoSize = False
      Caption = 'Desconto (R$):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 119
      AnchorX = 552
    end
    object edDesconto: TcxCurrencyEdit
      Left = 552
      Top = 295
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.DisplayFormat = '  ,0.00;'
      Properties.NullString = '0,00'
      Properties.OnChange = cxCurrencyEdit1PropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 24
      Width = 136
    end
    object edReferencia: TcxMaskEdit
      Left = 552
      Top = 208
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.MaxLength = 0
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 7
      OnExit = edReferenciaExit
      Width = 136
    end
    object edIdUnidConsum: TcxMaskEdit
      Left = 128
      Top = 34
      AutoSize = False
      ParentFont = False
      ParentShowHint = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.EditMask = '9999999-9;0; '
      Properties.MaxLength = 0
      Properties.OnChange = edIDServidorPropertiesChange
      ShowHint = True
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 0
      Text = '        '
      OnExit = edIdUnidConsumExit
      OnKeyDown = edIdUnidConsumKeyDown
      Height = 26
      Width = 85
    end
  end
  inherited Panel: TPanel
    Top = 345
    Width = 708
    ExplicitTop = 400
    ExplicitWidth = 708
    inherited btnCancelar: TcxButton
      Left = 594
      ExplicitLeft = 594
    end
    inherited btnGravar: TcxButton
      Left = 499
      ExplicitLeft = 499
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
        Name = 'TIPO_FATURA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REFERENCIA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ID_UNID_CONSUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT_PAGTO'
        DataType = ftDate
      end
      item
        Name = 'ID_LOCAL_PAGTO'
        DataType = ftInteger
      end
      item
        Name = 'VAL_DESCONTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VAL_PAGTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VAL_FATURA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCR_TIPO_FATURA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CPF_CNPJ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENDER_ID_BAIRRO'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_ID_DISTRITO'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_DISTRITO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DT_VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'DESCR_CATEGORIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DESCR_LOCAL_PAGTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REFERENCIA_FTDO'
        DataType = ftString
        Size = 21
      end
      item
        Name = 'ENDER_DESCR_LOGRAD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDER_NUM_LETRA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ENDER_COMPLEMENTO'
        DataType = ftString
        Size = 30
      end>
    Params = <>
    AfterInsert = cds1AfterInsert
    Left = 64
    Top = 24
    object cds1TIPO_FATURA: TStringField
      FieldName = 'TIPO_FATURA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds1REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 10
    end
    object cds1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      Required = True
      DisplayFormat = '0-0;0; '
    end
    object cds1DT_PAGTO: TDateField
      FieldName = 'DT_PAGTO'
    end
    object cds1ID_LOCAL_PAGTO: TIntegerField
      FieldName = 'ID_LOCAL_PAGTO'
    end
    object cds1VAL_DESCONTO: TFMTBCDField
      FieldName = 'VAL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object cds1VAL_PAGTO: TFMTBCDField
      FieldName = 'VAL_PAGTO'
      Precision = 18
      Size = 2
    end
    object cds1VAL_FATURA: TFMTBCDField
      FieldName = 'VAL_FATURA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      currency = True
      Precision = 18
      Size = 2
    end
    object cds1DESCR_TIPO_FATURA: TStringField
      FieldName = 'DESCR_TIPO_FATURA'
      FixedChar = True
      Size = 6
    end
    object cds1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cds1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 14
    end
    object cds1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cds1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cds1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cds1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cds1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cds1DT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object cds1DESCR_CATEGORIA: TStringField
      FieldName = 'DESCR_CATEGORIA'
      FixedChar = True
      Size = 11
    end
    object cds1DESCR_LOCAL_PAGTO: TStringField
      FieldName = 'DESCR_LOCAL_PAGTO'
      Size = 40
    end
    object cds1REFERENCIA_FTDO: TStringField
      FieldName = 'REFERENCIA_FTDO'
      Size = 21
    end
    object cds1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cds1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 12
    end
    object cds1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
  end
  inherited ds1: TDataSource
    Left = 77
    Top = 37
  end
  object qryUnidComsumidora: TSQLQuery [5]
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '   nome_pessoa, descr_tipo_pessoa, ender_descr_lograd, '
      '   ender_num||ender_num_letra as ender_num_letra,'
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
    object qryUnidComsumidoraDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object qryUnidComsumidoraENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 12
    end
  end
  inherited qry1: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pTipoFatura'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pReferencia'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  d.*,'
      
        '  d1.ender_descr_lograd, d1.ender_complemento, d1.ender_uc_num_l' +
        'etra as ender_num_letra'
      'from'
      '  lancto_pagto d,'
      '  unid_consumidora d1'
      'where'
      '  (d.id_unid_consum = :pUnidConsum) and'
      '  (d.tipo_fatura = :pTipoFatura) and'
      '  (d.referencia = Trim(:pReferencia)) and'
      '  (d1.id = d.id_unid_consum)'
      '')
    Left = 16
    Top = 0
    object qry1TIPO_FATURA: TStringField
      FieldName = 'TIPO_FATURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qry1REFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object qry1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1DT_PAGTO: TDateField
      FieldName = 'DT_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1ID_LOCAL_PAGTO: TIntegerField
      FieldName = 'ID_LOCAL_PAGTO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1VAL_DESCONTO: TFMTBCDField
      FieldName = 'VAL_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qry1VAL_PAGTO: TFMTBCDField
      FieldName = 'VAL_PAGTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qry1VAL_FATURA: TFMTBCDField
      FieldName = 'VAL_FATURA'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qry1DESCR_TIPO_FATURA: TStringField
      FieldName = 'DESCR_TIPO_FATURA'
      ProviderFlags = []
      FixedChar = True
      Size = 6
    end
    object qry1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object qry1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object qry1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object qry1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
      ProviderFlags = []
    end
    object qry1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
      ProviderFlags = []
    end
    object qry1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
    object qry1DT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      ProviderFlags = []
    end
    object qry1DESCR_CATEGORIA: TStringField
      FieldName = 'DESCR_CATEGORIA'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object qry1DESCR_LOCAL_PAGTO: TStringField
      FieldName = 'DESCR_LOCAL_PAGTO'
      ProviderFlags = []
      Size = 40
    end
    object qry1REFERENCIA_FTDO: TStringField
      FieldName = 'REFERENCIA_FTDO'
      ProviderFlags = []
      Size = 21
    end
    object qry1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      ProviderFlags = []
      Size = 50
    end
    object qry1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      ProviderFlags = []
      Size = 7
    end
    object qry1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
  end
  object qryFatAvulsaItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pIdFatura'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   Trim(referencia) as Ano_Mes, val_total, val_desconto'
      'from'
      '   fatura_avulsa_item'
      'where'
      '   (id_fatura = :pIdFatura) and'
      '   (id_item = 1)'
      'order by'
      '   referencia')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 312
    Top = 200
    object qryFatAvulsaItemANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      Size = 6
    end
    object qryFatAvulsaItemVAL_TOTAL: TFMTBCDField
      FieldName = 'VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryFatAvulsaItemVAL_DESCONTO: TFMTBCDField
      FieldName = 'VAL_DESCONTO'
      Required = True
      Precision = 18
      Size = 2
    end
  end
  object qryAddPagtoTM: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'PE_TIPO_FATURA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 8
        Name = 'PE_REFERENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_UC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Precision = 4
        Name = 'PE_DT_PAGTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_LOCAL_PAGTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_VAL_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_VAL_PAGO'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    StoredProcName = 'SP_ADD_LANCTO_PAGO'
    Left = 272
    Top = 252
  end
end
