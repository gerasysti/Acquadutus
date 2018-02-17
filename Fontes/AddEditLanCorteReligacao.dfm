inherited frmAddEditLanCorteReligacao: TfrmAddEditLanCorteReligacao
  Left = 214
  Top = 169
  Caption = 'frmAddEditLanCorteReligacao'
  ClientHeight = 386
  ClientWidth = 708
  ExplicitLeft = 214
  ExplicitTop = 169
  ExplicitWidth = 724
  ExplicitHeight = 424
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 708
    Height = 353
    ExplicitWidth = 602
    ExplicitHeight = 298
    object sbUnidConsum: TSpeedButton [0]
      Tag = 1
      Left = 212
      Top = 74
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
      Left = 17
      Top = 77
      Caption = 'Unid. Consumidora:'
      ExplicitLeft = 17
      ExplicitTop = 77
      ExplicitWidth = 112
      Width = 112
      AnchorX = 129
    end
    object edObservacao: TcxDBTextEdit
      Left = 128
      Top = 291
      AutoSize = False
      DataBinding.DataField = 'OBSERVACAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 8
      Height = 25
      Width = 560
    end
    object edNomePessoa: TcxDBTextEdit
      Left = 237
      Top = 75
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NOME_PESSOA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 1
      Height = 25
      Width = 451
    end
    object cxLabel1: TcxLabel
      Left = 17
      Top = 293
      AutoSize = False
      Caption = 'Observa'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 112
      AnchorX = 129
    end
    object edDtMovim: TcxDateEdit
      Left = 552
      Top = 248
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.InputKind = ikMask
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 7
      Height = 25
      Width = 136
    end
    object cxLabel6: TcxLabel
      Left = 17
      Top = 120
      AutoSize = False
      Caption = 'Endere'#231'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 112
      AnchorX = 129
    end
    object cxLabel7: TcxLabel
      Left = 17
      Top = 163
      AutoSize = False
      Caption = 'Bairro e Distrito:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 112
      AnchorX = 129
    end
    object edCPF_CNPJ: TcxDBTextEdit
      Left = 512
      Top = 205
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'CPF_CNPJ_FTDO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 5
      Height = 25
      Width = 176
    end
    object edIdUnidConsum: TcxDBMaskEdit
      Tag = 1
      Left = 128
      Top = 75
      AutoSize = False
      DataBinding.DataField = 'ID_UNID_CONSUM'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
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
      Top = 207
      AutoSize = False
      Caption = 'Tipo de Pessoa:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 112
      AnchorX = 129
    end
    object edEndereco: TcxTextEdit
      Left = 128
      Top = 118
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 2
      Height = 25
      Width = 560
    end
    object edBairroDistrito: TcxTextEdit
      Left = 128
      Top = 161
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 3
      Height = 25
      Width = 329
    end
    object cxLabel9: TcxLabel
      Left = 474
      Top = 163
      AutoSize = False
      Caption = 'Categoria:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 78
      AnchorX = 552
    end
    object edDescrCategoria: TcxDBTextEdit
      Left = 552
      Top = 161
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DESCR_CATEGORIA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 4
      Height = 25
      Width = 136
    end
    object cxLabel11: TcxLabel
      Left = 17
      Top = 250
      AutoSize = False
      Caption = 'Tipo de Movimento:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 112
      AnchorX = 129
    end
    object cbTipoMovim: TcxComboBox
      Left = 128
      Top = 248
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.Items.Strings = (
        'CORTE'
        'RELIGA'#199#195'O')
      Properties.ReadOnly = False
      Properties.OnCloseUp = cbTipoPropertiesCloseUp
      Properties.OnPopup = cbTipoPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 6
      Text = 'CORTE'
      Height = 25
      Width = 176
    end
    object cxLabel2: TcxLabel
      Left = 435
      Top = 250
      AutoSize = False
      Caption = 'Data do Movimento:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 117
      AnchorX = 552
    end
    object cxLabel3: TcxLabel
      Left = 398
      Top = 207
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
      Top = 205
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DESCR_TIPO_PESSOA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 18
      Height = 25
      Width = 176
    end
    object cxLabel4: TcxLabel
      Left = 17
      Top = 37
      AutoSize = False
      Caption = 'Id.:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 112
      AnchorX = 129
    end
    object edId: TcxDBMaskEdit
      Tag = 1
      Left = 128
      Top = 35
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Properties.OnChange = edIDServidorPropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 20
      OnExit = edIdUnidConsumExit
      OnKeyDown = edIdUnidConsumKeyDown
      Height = 25
      Width = 85
    end
  end
  inherited Panel: TPanel
    Top = 353
    Width = 708
    ExplicitTop = 232
    ExplicitWidth = 546
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
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_MOVIM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DT_MOVIM'
        DataType = ftDate
      end
      item
        Name = 'ID_UNID_CONSUM'
        DataType = ftInteger
      end
      item
        Name = 'MOTIVO'
        DataType = ftInteger
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESCR_CATEGORIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CPF_CNPJ'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DESCR_TIPO_MOVIM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ANO_MES'
        Attributes = [faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ENDER_DESCR_LOGRADOURO'
        DataType = ftString
        Size = 50
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
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ENDER_NUM_LETRA'
        DataType = ftString
        Size = 7
      end>
    Params = <>
    AfterInsert = cds1AfterInsert
    BeforePost = cds1BeforePost
    BeforeCancel = cds1BeforeCancel
    Left = 64
    Top = 24
    object cds1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds1TIPO_MOVIM: TStringField
      FieldName = 'TIPO_MOVIM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cds1DT_MOVIM: TDateField
      FieldName = 'DT_MOVIM'
      ProviderFlags = [pfInUpdate]
    end
    object cds1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
    end
    object cds1MOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      ProviderFlags = [pfInUpdate]
    end
    object cds1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 240
    end
    object cds1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object cds1DESCR_CATEGORIA: TStringField
      FieldName = 'DESCR_CATEGORIA'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object cds1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 80
    end
    object cds1DESCR_TIPO_MOVIM: TStringField
      FieldName = 'DESCR_TIPO_MOVIM'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object cds1ANO_MES: TStringField
      FieldName = 'ANO_MES'
      ProviderFlags = []
      FixedChar = True
      Size = 6
    end
    object cds1ENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object cds1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object cds1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object cds1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
    object cds1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cds1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 7
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
      '   ender_uc_num_letra as ender_num_letra,'
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
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      'd.*,'
      'd1.descr_tipo_pessoa, d1.ender_descr_logradouro, '
      'd1.ender_uc_num_letra as ender_num_letra,'
      'd1.ender_complemento,'
      'd1.ender_descr_bairro, d1.ender_descr_distrito'
      'from'
      'LANCTO_CORTE_RELIGACAO d,'
      'unid_consumidora d1'
      'where'
      '(d.id = :pId) and'
      '(d1.id = d.id_unid_consum)')
    Left = 16
    Top = 0
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1TIPO_MOVIM: TStringField
      FieldName = 'TIPO_MOVIM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1DT_MOVIM: TDateField
      FieldName = 'DT_MOVIM'
      ProviderFlags = [pfInUpdate]
    end
    object qry1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
    end
    object qry1MOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 240
    end
    object qry1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object qry1DESCR_CATEGORIA: TStringField
      FieldName = 'DESCR_CATEGORIA'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object qry1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 80
    end
    object qry1DESCR_TIPO_MOVIM: TStringField
      FieldName = 'DESCR_TIPO_MOVIM'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object qry1ANO_MES: TStringField
      FieldName = 'ANO_MES'
      ProviderFlags = []
      FixedChar = True
      Size = 6
    end
    object qry1ENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      ProviderFlags = []
      Size = 50
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
    object qry1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object qry1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      ProviderFlags = []
      Size = 7
    end
  end
end
