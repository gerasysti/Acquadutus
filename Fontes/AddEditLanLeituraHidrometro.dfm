inherited frmAddEditLanLeituraHidrom: TfrmAddEditLanLeituraHidrom
  Left = 214
  Top = 169
  Caption = 'frmAddEditLanLeituraHidrom'
  ClientHeight = 381
  ClientWidth = 625
  ExplicitLeft = 214
  ExplicitTop = 169
  ExplicitWidth = 641
  ExplicitHeight = 419
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 625
    Height = 348
    ExplicitWidth = 625
    ExplicitHeight = 26
    object sbUnidConsum: TSpeedButton [0]
      Tag = 2
      Left = 205
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
      Left = 10
      Top = 36
      Caption = 'Unid. Consumidora:'
      ExplicitLeft = 10
      ExplicitTop = 36
      ExplicitWidth = 111
      Width = 111
      AnchorX = 121
    end
    object edLeituraAnterior: TcxDBTextEdit
      Left = 121
      Top = 232
      AutoSize = False
      DataBinding.DataField = 'LEITURA_ANTERIOR'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = False
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 3
      Height = 26
      Width = 91
    end
    object edObservacao: TcxDBTextEdit
      Left = 121
      Top = 282
      AutoSize = False
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 6
      Height = 26
      Width = 484
    end
    object edNomePessoa: TcxDBTextEdit
      Left = 230
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
      Width = 375
    end
    object cxLabel3: TcxLabel
      Left = 10
      Top = 286
      AutoSize = False
      Caption = 'Observa'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 111
      AnchorX = 121
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 186
      AutoSize = False
      Caption = 'Data da Leitura:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 111
      AnchorX = 121
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 236
      AutoSize = False
      Caption = 'Leitura Anterior:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 111
      AnchorX = 121
    end
    object cxLabel4: TcxLabel
      Left = 242
      Top = 236
      AutoSize = False
      Caption = 'Leitura Atual:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 85
      AnchorX = 327
    end
    object edConsumo_m3: TcxDBTextEdit
      Left = 540
      Top = 232
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CONSUMO_M3'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 5
      Height = 26
      Width = 65
    end
    object cxLabel5: TcxLabel
      Left = 453
      Top = 236
      AutoSize = False
      Caption = 'Consumo m'#179':'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 85
      AnchorX = 538
    end
    object edDtLeitura: TcxDateEdit
      Left = 121
      Top = 182
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.InputKind = ikMask
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      Height = 25
      Width = 110
    end
    object cxLabel6: TcxLabel
      Left = 10
      Top = 86
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
      Top = 136
      AutoSize = False
      Caption = 'Bairro e Distrito:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 111
      AnchorX = 121
    end
    object edNumHidrometro: TcxDBTextEdit
      Left = 483
      Top = 132
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NUM_HIDROMETRO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 15
      Height = 26
      Width = 122
    end
    object cxLabel8: TcxLabel
      Left = 378
      Top = 136
      AutoSize = False
      Caption = 'N'#186' do Hidr'#244'metro:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 104
      AnchorX = 482
    end
    object edEndereco: TcxTextEdit
      Left = 121
      Top = 82
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 17
      Height = 26
      Width = 484
    end
    object edBairroDistrito: TcxTextEdit
      Left = 121
      Top = 132
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 18
      Height = 26
      Width = 249
    end
    object edLeituraAtual: TcxDBCurrencyEdit
      Left = 329
      Top = 232
      AutoSize = False
      DataBinding.DataField = 'LEITURA_ATUAL'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = '0'
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 4
      OnExit = edLeituraAtualExit
      Height = 26
      Width = 80
    end
    object edIdUnidConsum: TcxMaskEdit
      Left = 121
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
    Top = 348
    Width = 625
    ExplicitTop = 232
    ExplicitWidth = 546
    inherited btnCancelar: TcxButton
      Left = 511
      ExplicitLeft = 511
    end
    inherited btnGravar: TcxButton
      Left = 416
      ExplicitLeft = 416
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
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ID_UNID_CONSUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT_LEITURA'
        DataType = ftDate
      end
      item
        Name = 'LEITURA_ANTERIOR'
        DataType = ftInteger
      end
      item
        Name = 'LEITURA_ATUAL'
        DataType = ftInteger
      end
      item
        Name = 'CONSUMO_M3'
        DataType = ftLargeint
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'ID_SERVID_LEITURA'
        DataType = ftInteger
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NUM_HIDROMETRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
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
      end
      item
        Name = 'ENDER_DESCR_BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_DESCR_DISTRITO'
        DataType = ftString
        Size = 40
      end>
    Params = <>
    AfterInsert = cds1AfterInsert
    BeforePost = cds1BeforePost
    Left = 64
    Top = 24
    object cds1ANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      Size = 6
    end
    object cds1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      Required = True
    end
    object cds1DT_LEITURA: TDateField
      FieldName = 'DT_LEITURA'
    end
    object cds1LEITURA_ANTERIOR: TIntegerField
      FieldName = 'LEITURA_ANTERIOR'
    end
    object cds1LEITURA_ATUAL: TIntegerField
      FieldName = 'LEITURA_ATUAL'
    end
    object cds1CONSUMO_M3: TLargeintField
      FieldName = 'CONSUMO_M3'
    end
    object cds1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 120
    end
    object cds1ID_SERVID_LEITURA: TIntegerField
      FieldName = 'ID_SERVID_LEITURA'
    end
    object cds1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cds1NUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      FixedChar = True
      Size = 12
    end
    object cds1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cds1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 7
    end
    object cds1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cds1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cds1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
  end
  inherited ds1: TDataSource
    Left = 77
    Top = 37
  end
  object qryLeituraAnter: TSQLQuery [5]
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
      end>
    SQL.Strings = (
      'select'
      '  ano_mes, leitura_atual, consumo_m3'
      'from'
      '  leitura_hidrometro'
      'where'
      '  (ano_mes < :pAnoMes) and'
      '  (id_unid_consum = :pUnidConsum)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 456
    Top = 8
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
      '   nome_pessoa, ender_descr_lograd, ender_uc_num_letra,'
      '   ender_complemento, ender_id_lograd,'
      '   ender_descr_bairro, ender_descr_distrito,'
      '   num_hidrometro'
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
    object qryUnidComsumidoraENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
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
      end>
    SQL.Strings = (
      'select'
      '  ano_mes, id_unid_consum,'
      '  dt_leitura, leitura_anterior, leitura_atual, consumo_m3,'
      '  observacao, id_servid_leitura,'
      '  nome_pessoa, num_hidrometro,'
      '  ender_descr_lograd, ender_num_letra,'
      '  ender_complemento, ender_descr_bairro, ender_descr_distrito'
      'from'
      '  leitura_hidrometro'
      'where'
      '  (ano_mes = :pAnoMes) and'
      '  (id_unid_consum = :pUnidConsum)')
    Left = 16
    Top = 0
    object qry1ANO_MES: TStringField
      FieldName = 'ANO_MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object qry1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1DT_LEITURA: TDateField
      FieldName = 'DT_LEITURA'
      ProviderFlags = [pfInUpdate]
    end
    object qry1LEITURA_ANTERIOR: TIntegerField
      FieldName = 'LEITURA_ANTERIOR'
      ProviderFlags = [pfInUpdate]
    end
    object qry1LEITURA_ATUAL: TIntegerField
      FieldName = 'LEITURA_ATUAL'
      ProviderFlags = [pfInUpdate]
    end
    object qry1CONSUMO_M3: TLargeintField
      FieldName = 'CONSUMO_M3'
      ProviderFlags = []
    end
    object qry1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 120
    end
    object qry1ID_SERVID_LEITURA: TIntegerField
      FieldName = 'ID_SERVID_LEITURA'
      ProviderFlags = [pfInUpdate]
    end
    object qry1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object qry1NUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      ProviderFlags = []
      FixedChar = True
      Size = 12
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
    object qry1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
  end
  object provLeituraAnter: TDataSetProvider
    DataSet = qryLeituraAnter
    Left = 496
    Top = 32
  end
  object cdsLeituraAnter: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provLeituraAnter'
    Left = 512
    Top = 80
    object cdsLeituraAnterANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      Size = 6
    end
    object cdsLeituraAnterLEITURA_ATUAL: TIntegerField
      FieldName = 'LEITURA_ATUAL'
    end
    object cdsLeituraAnterCONSUMO_M3: TLargeintField
      FieldName = 'CONSUMO_M3'
    end
  end
  object qryLeituraLancada: TSQLQuery
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
      end>
    SQL.Strings = (
      'select'
      '  leitura_atual, consumo_m3'
      'from'
      '  leitura_hidrometro'
      'where'
      '  (ano_mes = :pAnoMes) and'
      '  (id_unid_consum = :pUnidConsum)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 368
    Top = 88
    object qryLeituraLancadaLEITURA_ATUAL: TIntegerField
      FieldName = 'LEITURA_ATUAL'
    end
    object qryLeituraLancadaCONSUMO_M3: TLargeintField
      FieldName = 'CONSUMO_M3'
    end
  end
end
