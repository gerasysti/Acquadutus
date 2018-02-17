object dmTabelas: TdmTabelas
  OldCreateOrder = False
  Height = 510
  Width = 991
  object qryCidade: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 40
    Top = 16
    object qryCidadeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryCidadeCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qryCidadeUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qryCidadeCEP_FTDO: TStringField
      FieldName = 'CEP_FTDO'
      ProviderFlags = []
      Size = 26
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = qryCidade
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 64
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP_FTDO'
        DataType = ftString
        Size = 26
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspCidade'
    StoreDefs = True
    OnFilterRecord = cdsCidadeFilterRecord
    Left = 40
    Top = 112
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsCidadeCEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '99.999-999;0; '
      Size = 8
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object cdsCidadeCEP_FTDO: TStringField
      Alignment = taCenter
      FieldName = 'CEP_FTDO'
      ProviderFlags = []
      Size = 26
    end
  end
  object qryDistrito: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'Cidade_Ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Cidade_Fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM DISTRITO '
      'WHERE'
      '(ID_CIDADE >= :Cidade_Ini) and'
      '(id_cidade <= :Cidade_Fim)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 112
    Top = 16
    object qryDistritoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryDistritoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryDistritoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate]
    end
    object qryDistritoNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ProviderFlags = []
      Size = 40
    end
  end
  object provDistrito: TDataSetProvider
    DataSet = qryDistrito
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 64
  end
  object cdsDistrito: TClientDataSet
    Aggregates = <>
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
        Name = 'ID_CIDADE'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CIDADE'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provDistrito'
    StoreDefs = True
    OnFilterRecord = cdsDistritoFilterRecord
    Left = 112
    Top = 112
    object cdsDistritoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDistritoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsDistritoID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsDistritoNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 40
    end
  end
  object qryCidadeFiltro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 40
    Top = 168
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object StringField2: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object StringField3: TStringField
      FieldName = 'UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'CEP_FTDO'
      ProviderFlags = []
      Size = 26
    end
  end
  object provCidadeFiltro: TDataSetProvider
    DataSet = qryCidadeFiltro
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 216
  end
  object cdsCidadeFiltro: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CEP_FTDO'
        DataType = ftString
        Size = 26
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspCidade'
    StoreDefs = True
    Left = 40
    Top = 264
    object cdsCidadeFiltroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeFiltroNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeFiltroCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object cdsCidadeFiltroUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsCidadeFiltroCEP_FTDO: TStringField
      FieldName = 'CEP_FTDO'
      Size = 26
    end
  end
  object qryBairro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cidade_ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cidade_fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      'id, descricao, nome_curto, nome_cidade, '
      'id_distrito, id_cidade, descr_distrito, '
      'descricao||'#39' - '#39'||nome_cidade as descr_distrito_cidade'
      'FROM '
      'BAIRRO'
      'where'
      '(id_cidade >= :cidade_ini) and'
      '(id_cidade <= :cidade_fim)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 192
    Top = 16
    object qryBairroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryBairroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryBairroNOME_CURTO: TStringField
      FieldName = 'NOME_CURTO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryBairroNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ProviderFlags = []
      Size = 45
    end
    object qryBairroID_DISTRITO: TIntegerField
      FieldName = 'ID_DISTRITO'
      ProviderFlags = [pfInUpdate]
    end
    object qryBairroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      ProviderFlags = []
    end
    object qryBairroDESCR_DISTRITO: TStringField
      FieldName = 'DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
    object qryBairroDESCR_DISTRITO_CIDADE: TStringField
      FieldName = 'DESCR_DISTRITO_CIDADE'
      ProviderFlags = []
      Size = 88
    end
  end
  object provBairro: TDataSetProvider
    DataSet = qryBairro
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 192
    Top = 64
  end
  object cdsBairro: TClientDataSet
    Aggregates = <>
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
        Name = 'NOME_CURTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NOME_CIDADE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'ID_DISTRITO'
        DataType = ftInteger
      end
      item
        Name = 'ID_CIDADE'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_DISTRITO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DESCR_DISTRITO_CIDADE'
        DataType = ftString
        Size = 88
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provBairro'
    StoreDefs = True
    OnFilterRecord = cdsBairroFilterRecord
    Left = 192
    Top = 112
    object cdsBairroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBairroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsBairroNOME_CURTO: TStringField
      FieldName = 'NOME_CURTO'
      Size = 10
    end
    object cdsBairroNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 45
    end
    object cdsBairroID_DISTRITO: TIntegerField
      FieldName = 'ID_DISTRITO'
    end
    object cdsBairroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsBairroDESCR_DISTRITO: TStringField
      FieldName = 'DESCR_DISTRITO'
      Size = 40
    end
    object cdsBairroDESCR_DISTRITO_CIDADE: TStringField
      FieldName = 'DESCR_DISTRITO_CIDADE'
      Size = 88
    end
  end
  object qryLogradouro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cidade_ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cidade_fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      'id, descricao, id_distrito, nome_distrito,'
      
        'id_cidade, nome_cidade, nome_distrito||'#39' - '#39'||nome_cidade as des' +
        'cr_distrito_cidade'
      'FROM '
      'LOGRADOURO'
      'where'
      '(id_cidade >= :cidade_ini) and'
      '(id_cidade <= :cidade_fim)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 272
    Top = 16
    object qryLogradouroID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLogradouroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qryLogradouroID_DISTRITO: TIntegerField
      FieldName = 'ID_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryLogradouroNOME_DISTRITO: TStringField
      FieldName = 'NOME_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
    object qryLogradouroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      ProviderFlags = []
    end
    object qryLogradouroNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      ProviderFlags = []
      Size = 45
    end
    object qryLogradouroDESCR_DISTRITO_CIDADE: TStringField
      FieldName = 'DESCR_DISTRITO_CIDADE'
      ProviderFlags = []
      Size = 141
    end
  end
  object provLogradouro: TDataSetProvider
    DataSet = qryLogradouro
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 272
    Top = 64
  end
  object cdsLogradouro: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ID_DISTRITO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_DISTRITO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_CIDADE'
        DataType = ftInteger
      end
      item
        Name = 'NOME_CIDADE'
        DataType = ftString
        Size = 45
      end
      item
        Name = 'DESCR_DISTRITO_CIDADE'
        DataType = ftString
        Size = 141
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provLogradouro'
    StoreDefs = True
    OnFilterRecord = cdsLogradouroFilterRecord
    Left = 272
    Top = 112
    object cdsLogradouroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLogradouroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsLogradouroID_DISTRITO: TIntegerField
      FieldName = 'ID_DISTRITO'
      Required = True
    end
    object cdsLogradouroNOME_DISTRITO: TStringField
      FieldName = 'NOME_DISTRITO'
      Size = 40
    end
    object cdsLogradouroID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsLogradouroNOME_CIDADE: TStringField
      FieldName = 'NOME_CIDADE'
      Size = 45
    end
    object cdsLogradouroDESCR_DISTRITO_CIDADE: TStringField
      FieldName = 'DESCR_DISTRITO_CIDADE'
      Size = 141
    end
  end
  object provTabTarifa: TDataSetProvider
    DataSet = qryTabTarifa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 368
    Top = 64
  end
  object cdsTabTarifa: TClientDataSet
    Aggregates = <>
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
        Name = 'VAL_EXCED'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'QTD_BASE'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provTabTarifa'
    StoreDefs = True
    Left = 368
    Top = 112
    object cdsTabTarifaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTabTarifaFORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTabTarifaTIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsTabTarifaQTD_INI: TIntegerField
      FieldName = 'QTD_INI'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTabTarifaQTD_FIM: TIntegerField
      FieldName = 'QTD_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTabTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsTabTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTabTarifaDESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      ProviderFlags = []
      FixedChar = True
      Size = 22
    end
    object cdsTabTarifaDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object cdsTabTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object cdsTabTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object cdsTabTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object cdsTabTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object cdsTabTarifaVAL_EXCED: TFMTBCDField
      FieldName = 'VAL_EXCED'
      ProviderFlags = [pfInUpdate]
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsTabTarifaQTD_BASE: TIntegerField
      FieldName = 'QTD_BASE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryTabTarifa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'sAnoMesIni'
        ParamType = ptInput
        Value = '201201'
      end
      item
        DataType = ftString
        Name = 'sAnoMesFim'
        ParamType = ptInput
        Value = '209912'
      end>
    SQL.Strings = (
      'SELECT * FROM TAB_TARIFA'
      'where (:sAnoMesIni >= ini_vigencia) and'
      '      (:sAnoMesFim <= fim_vigencia)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 368
    Top = 16
    object qryTabTarifaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabTarifaFORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryTabTarifaTIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryTabTarifaQTD_INI: TIntegerField
      FieldName = 'QTD_INI'
      ProviderFlags = [pfInUpdate]
    end
    object qryTabTarifaQTD_FIM: TIntegerField
      FieldName = 'QTD_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object qryTabTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qryTabTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qryTabTarifaDESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      ProviderFlags = []
      FixedChar = True
      Size = 22
    end
    object qryTabTarifaDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object qryTabTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object qryTabTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object qryTabTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object qryTabTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object qryTabTarifaVAL_EXCED: TFMTBCDField
      FieldName = 'VAL_EXCED'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qryTabTarifaQTD_BASE: TIntegerField
      FieldName = 'QTD_BASE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qryTabOutraTarifa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMesAtual1'
        ParamType = ptInput
        Value = '201201'
      end
      item
        DataType = ftString
        Name = 'pAnoMesAtual2'
        ParamType = ptInput
        Value = '209912'
      end>
    SQL.Strings = (
      'SELECT '
      '* '
      'FROM '
      'TAB_OUTRA_TARIFA'
      'WHERE'
      '(:pAnoMesAtual1 >= ini_vigencia) AND'
      '(:pAnoMesAtual2 <= fim_vigencia)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 464
    Top = 16
    object qryTabOutraTarifaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryTabOutraTarifaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryTabOutraTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qryTabOutraTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object qryTabOutraTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object qryTabOutraTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object qryTabOutraTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object qryTabOutraTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
  end
  object provTabOutraTarifa: TDataSetProvider
    DataSet = qryTabOutraTarifa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 64
  end
  object cdsTabOutraTarifa: TClientDataSet
    Aggregates = <>
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
    IndexDefs = <>
    Params = <>
    ProviderName = 'provTabOutraTarifa'
    StoreDefs = True
    Left = 464
    Top = 112
    object cdsTabOutraTarifaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsTabOutraTarifaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsTabOutraTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsTabOutraTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsTabOutraTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object cdsTabOutraTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object cdsTabOutraTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object cdsTabOutraTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
  end
  object qryVigenciaTarifa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pe_ano_mes'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pe_ano_mes2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '  select'
      '    id, ini_vig_ftdo, fim_vig_ftdo'
      '  from'
      '    vigencia_tarifa'
      '  where'
      '    (:pe_ano_mes >= inicio) and'
      '    (:pe_ano_mes2 <= fim)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 563
    Top = 16
    object qryVigenciaTarifaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryVigenciaTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object qryVigenciaTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
  end
  object qryVigencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM vigencia_tarifa'
      'ORDER BY INICIO, FIM')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 643
    Top = 12
    object qryVigenciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVigenciaINICIO: TStringField
      FieldName = 'INICIO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object qryVigenciaFIM: TStringField
      FieldName = 'FIM'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object qryVigenciaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object qryVigenciaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
    object qryVigenciaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object provVigencia: TDataSetProvider
    DataSet = qryVigencia
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 643
    Top = 64
  end
  object cdsVigencia: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'INICIO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FIM'
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
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provVigencia'
    StoreDefs = True
    Left = 645
    Top = 112
    object cdsVigenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVigenciaINICIO: TStringField
      FieldName = 'INICIO'
      Size = 6
    end
    object cdsVigenciaFIM: TStringField
      FieldName = 'FIM'
      Size = 6
    end
    object cdsVigenciaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object cdsVigenciaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
    object cdsVigenciaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
  end
  object qryLocalPagto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM LOCAL_PAGTO')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 40
    Top = 320
    object qryLocalPagtoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLocalPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryLocalPagtoID_ENTID_FINANC: TIntegerField
      FieldName = 'ID_ENTID_FINANC'
      ProviderFlags = [pfInUpdate]
    end
    object qryLocalPagtoCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object qryLocalPagtoATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object provLocalPagto: TDataSetProvider
    DataSet = qryLocalPagto
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 368
  end
  object cdsLocalPagto: TClientDataSet
    Aggregates = <>
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
        Name = 'ID_ENTID_FINANC'
        DataType = ftInteger
      end
      item
        Name = 'COD_BANCO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provLocalPagto'
    StoreDefs = True
    Left = 40
    Top = 416
    object cdsLocalPagtoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsLocalPagtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsLocalPagtoID_ENTID_FINANC: TIntegerField
      FieldName = 'ID_ENTID_FINANC'
      ProviderFlags = [pfInUpdate]
    end
    object cdsLocalPagtoCOD_BANCO: TStringField
      Alignment = taCenter
      FieldName = 'COD_BANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
    object cdsLocalPagtoATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
  end
  object qryUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM '
      'USUARIO')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 752
    Top = 16
    object qryUsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuarioNOME_CURTO: TStringField
      FieldName = 'NOME_CURTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryUsuarioNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object qryUsuarioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object qryUsuarioCARGO_FUNCAO: TStringField
      FieldName = 'CARGO_FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryUsuarioOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
    object qryUsuarioACESS_TAB_TARIFA: TStringField
      FieldName = 'ACESS_TAB_TARIFA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioACESS_CAD_UNID_CONSUM: TStringField
      FieldName = 'ACESS_CAD_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioCALC_TARIFA_INDIV: TStringField
      FieldName = 'CALC_TARIFA_INDIV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioCALC_TARIFA_BAIRRO: TStringField
      FieldName = 'CALC_TARIFA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioIMPORT_PAGTO_TXT: TStringField
      FieldName = 'IMPORT_PAGTO_TXT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioLAN_PAGTO: TStringField
      FieldName = 'LAN_PAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioCALC_REAJUSTE: TStringField
      FieldName = 'CALC_REAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioCANCEL_TARIFA: TStringField
      FieldName = 'CANCEL_TARIFA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioCONFIG_RELS: TStringField
      FieldName = 'CONFIG_RELS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioREL_TABELAS: TStringField
      FieldName = 'REL_TABELAS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioREL_UNID_CONSUM: TStringField
      FieldName = 'REL_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioREL_FINANCEIROS: TStringField
      FieldName = 'REL_FINANCEIROS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioREL_DOCTOS: TStringField
      FieldName = 'REL_DOCTOS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioREL_OUTROS: TStringField
      FieldName = 'REL_OUTROS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioGERADOR_RELS: TStringField
      FieldName = 'GERADOR_RELS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioCONFIG_ORGAO: TStringField
      FieldName = 'CONFIG_ORGAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioCONFIG_SISTEMA: TStringField
      FieldName = 'CONFIG_SISTEMA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioEXECUT_COMAND_SQL: TStringField
      FieldName = 'EXECUT_COMAND_SQL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioENCERRAR_REABRIR_MOVIM: TStringField
      FieldName = 'ENCERRAR_REABRIR_MOVIM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryUsuarioREST_BACKUP: TStringField
      FieldName = 'REST_BACKUP'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object provUsuario: TDataSetProvider
    DataSet = qryUsuario
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 752
    Top = 64
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_CURTO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME_COMPLETO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FUNCIONARIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_FUNCIONARIO'
        DataType = ftInteger
      end
      item
        Name = 'CARGO_FUNCAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SENHA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ACESS_TAB_TARIFA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ACESS_CAD_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALC_TARIFA_INDIV'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALC_TARIFA_BAIRRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IMPORT_PAGTO_TXT'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LAN_PAGTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CALC_REAJUSTE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CANCEL_TARIFA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONFIG_RELS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REL_TABELAS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REL_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REL_FINANCEIROS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REL_DOCTOS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REL_OUTROS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'GERADOR_RELS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONFIG_ORGAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CONFIG_SISTEMA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EXECUT_COMAND_SQL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ENCERRAR_REABRIR_MOVIM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'REST_BACKUP'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOME_CURTO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NOME_COMPLETO2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CARGO_FUNCAO2'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provUsuario'
    StoreDefs = True
    Left = 752
    Top = 112
    object cdsUsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuarioNOME_CURTO: TStringField
      FieldName = 'NOME_CURTO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsUsuarioNOME_COMPLETO: TStringField
      FieldName = 'NOME_COMPLETO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object cdsUsuarioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsUsuarioCARGO_FUNCAO: TStringField
      FieldName = 'CARGO_FUNCAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsUsuarioOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
    object cdsUsuarioACESS_TAB_TARIFA: TStringField
      FieldName = 'ACESS_TAB_TARIFA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioACESS_CAD_UNID_CONSUM: TStringField
      FieldName = 'ACESS_CAD_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioCALC_TARIFA_INDIV: TStringField
      FieldName = 'CALC_TARIFA_INDIV'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioCALC_TARIFA_BAIRRO: TStringField
      FieldName = 'CALC_TARIFA_BAIRRO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioIMPORT_PAGTO_TXT: TStringField
      FieldName = 'IMPORT_PAGTO_TXT'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioLAN_PAGTO: TStringField
      FieldName = 'LAN_PAGTO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioCALC_REAJUSTE: TStringField
      FieldName = 'CALC_REAJUSTE'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioCANCEL_TARIFA: TStringField
      FieldName = 'CANCEL_TARIFA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioCONFIG_RELS: TStringField
      FieldName = 'CONFIG_RELS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioREL_TABELAS: TStringField
      FieldName = 'REL_TABELAS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioREL_UNID_CONSUM: TStringField
      FieldName = 'REL_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioREL_FINANCEIROS: TStringField
      FieldName = 'REL_FINANCEIROS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioREL_DOCTOS: TStringField
      FieldName = 'REL_DOCTOS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioREL_OUTROS: TStringField
      FieldName = 'REL_OUTROS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioGERADOR_RELS: TStringField
      FieldName = 'GERADOR_RELS'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioCONFIG_ORGAO: TStringField
      FieldName = 'CONFIG_ORGAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioCONFIG_SISTEMA: TStringField
      FieldName = 'CONFIG_SISTEMA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioEXECUT_COMAND_SQL: TStringField
      FieldName = 'EXECUT_COMAND_SQL'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioENCERRAR_REABRIR_MOVIM: TStringField
      FieldName = 'ENCERRAR_REABRIR_MOVIM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioREST_BACKUP: TStringField
      FieldName = 'REST_BACKUP'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioNOME_CURTO2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_CURTO2'
    end
    object cdsUsuarioNOME_COMPLETO2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_COMPLETO2'
      Size = 40
    end
    object cdsUsuarioCARGO_FUNCAO2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CARGO_FUNCAO2'
      Size = 40
    end
  end
  object qryUsuarioPermTabela: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pIdUsuario'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT * FROM USUARIO_PERMISSAO_TABELA '
      'WHERE ID_USUARIO = :pIdUsuario'
      'ORDER BY ID_USUARIO_TABELA')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 848
    Top = 14
    object qryUsuarioPermTabelaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuarioPermTabelaID_USUARIO_TABELA: TIntegerField
      FieldName = 'ID_USUARIO_TABELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuarioPermTabelaINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryUsuarioPermTabelaALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryUsuarioPermTabelaEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryUsuarioPermTabelaNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      ProviderFlags = []
      Size = 30
    end
    object qryUsuarioPermTabelaDESCR_TABELA: TStringField
      FieldName = 'DESCR_TABELA'
      ProviderFlags = []
      Size = 50
    end
  end
  object provUsuarioPermTabela: TDataSetProvider
    DataSet = qryUsuarioPermTabela
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 848
    Top = 64
  end
  object cdsUsuarioPermTabela: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_USUARIO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_USUARIO_TABELA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'INCLUIR'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ALTERAR'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'EXCLUIR'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOME_TABELA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DESCR_TABELA'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provUsuarioPermTabela'
    StoreDefs = True
    Left = 848
    Top = 112
    object cdsUsuarioPermTabelaID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuarioPermTabelaID_USUARIO_TABELA: TIntegerField
      FieldName = 'ID_USUARIO_TABELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsUsuarioPermTabelaINCLUIR: TStringField
      FieldName = 'INCLUIR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioPermTabelaALTERAR: TStringField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioPermTabelaEXCLUIR: TStringField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsUsuarioPermTabelaNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      ProviderFlags = []
      Size = 30
    end
    object cdsUsuarioPermTabelaDESCR_TABELA: TStringField
      FieldName = 'DESCR_TABELA'
      ProviderFlags = []
      Size = 50
    end
  end
  object qryConfigOrgao: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CONFIG_ORGAO WHERE ID = 1')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 848
    Top = 168
    object qryConfigOrgaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryConfigOrgaoSIGLA: TStringField
      FieldName = 'SIGLA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qryConfigOrgaoCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 14
    end
    object qryConfigOrgaoENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigOrgaoENDER_LOGRAD_NUM: TStringField
      FieldName = 'ENDER_LOGRAD_NUM'
      ProviderFlags = [pfInUpdate]
      Size = 7
    end
    object qryConfigOrgaoENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigOrgaoENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qryConfigOrgaoENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object qryConfigOrgaoENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qryConfigOrgaoLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object qryConfigOrgaoTELEFONES: TStringField
      FieldName = 'TELEFONES'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qryConfigOrgaoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qryConfigOrgaoPASTA_ATUALIZA: TStringField
      FieldName = 'PASTA_ATUALIZA'
      ProviderFlags = [pfInUpdate]
      Size = 240
    end
    object qryConfigOrgaoTIPO_FATURA: TStringField
      FieldName = 'TIPO_FATURA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryConfigOrgaoENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      ProviderFlags = []
      Size = 50
    end
    object qryConfigOrgaoENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qryConfigOrgaoCOD_FEBRABAN: TStringField
      FieldName = 'COD_FEBRABAN'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 4
    end
  end
  object provConfigOrgao: TDataSetProvider
    DataSet = qryConfigOrgao
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 848
    Top = 216
  end
  object cdsConfigOrgao: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'SIGLA'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CNPJ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ENDER_ID_LOGRAD'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_LOGRAD_NUM'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ENDER_ID_BAIRRO'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ENDER_CEP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ENDER_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'LOGOMARCA'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'TELEFONES'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'E_MAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'PASTA_ATUALIZA'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'TIPO_FATURA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ENDER_DESCR_LOGRAD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDER_DESCR_BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'COD_FEBRABAN'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provConfigOrgao'
    StoreDefs = True
    Left = 848
    Top = 264
    object cdsConfigOrgaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 60
    end
    object cdsConfigOrgaoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object cdsConfigOrgaoCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object cdsConfigOrgaoENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cdsConfigOrgaoENDER_LOGRAD_NUM: TStringField
      FieldName = 'ENDER_LOGRAD_NUM'
      Size = 7
    end
    object cdsConfigOrgaoENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsConfigOrgaoENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 30
    end
    object cdsConfigOrgaoENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      FixedChar = True
      Size = 8
    end
    object cdsConfigOrgaoENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object cdsConfigOrgaoLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Size = 1
    end
    object cdsConfigOrgaoTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 40
    end
    object cdsConfigOrgaoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 60
    end
    object cdsConfigOrgaoPASTA_ATUALIZA: TStringField
      FieldName = 'PASTA_ATUALIZA'
      Size = 240
    end
    object cdsConfigOrgaoTIPO_FATURA: TStringField
      FieldName = 'TIPO_FATURA'
      FixedChar = True
      Size = 1
    end
    object cdsConfigOrgaoENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cdsConfigOrgaoENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsConfigOrgaoCOD_FEBRABAN: TStringField
      FieldName = 'COD_FEBRABAN'
      FixedChar = True
      Size = 4
    end
  end
  object qryConfigSistema: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CONFIG_SISTEMA WHERE ID = 1')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 760
    Top = 168
    object qryConfigSistemaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConfigSistemaDT_VER_DB: TDateField
      FieldName = 'DT_VER_DB'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigSistemaHORA_VER_DB: TStringField
      FieldName = 'HORA_VER_DB'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object qryConfigSistemaPERC_MULTA: TFMTBCDField
      FieldName = 'PERC_MULTA'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qryConfigSistemaID_EXPEDIENTE: TIntegerField
      FieldName = 'ID_EXPEDIENTE'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigSistemaID_LIGACAO: TIntegerField
      FieldName = 'ID_LIGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigSistemaID_RELIGACAO: TIntegerField
      FieldName = 'ID_RELIGACAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigSistemaID_RELIGACAO2: TIntegerField
      FieldName = 'ID_RELIGACAO2'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigSistemaDT_VER_FR3: TDateField
      FieldName = 'DT_VER_FR3'
      ProviderFlags = [pfInUpdate]
    end
    object qryConfigSistemaHORA_VER_FR3: TStringField
      FieldName = 'HORA_VER_FR3'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
  end
  object provConfigSistema: TDataSetProvider
    DataSet = qryConfigSistema
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 760
    Top = 216
  end
  object cdsConfigSistema: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT_VER_DB'
        DataType = ftDate
      end
      item
        Name = 'HORA_VER_DB'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'PERC_MULTA'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ID_EXPEDIENTE'
        DataType = ftInteger
      end
      item
        Name = 'ID_LIGACAO'
        DataType = ftInteger
      end
      item
        Name = 'ID_RELIGACAO'
        DataType = ftInteger
      end
      item
        Name = 'ID_RELIGACAO2'
        DataType = ftInteger
      end
      item
        Name = 'DT_VER_FR3'
        DataType = ftDate
      end
      item
        Name = 'HORA_VER_FR3'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provConfigSistema'
    StoreDefs = True
    Left = 760
    Top = 264
    object cdsConfigSistemaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConfigSistemaDT_VER_DB: TDateField
      FieldName = 'DT_VER_DB'
    end
    object cdsConfigSistemaHORA_VER_DB: TStringField
      FieldName = 'HORA_VER_DB'
      FixedChar = True
      Size = 8
    end
    object cdsConfigSistemaPERC_MULTA: TFMTBCDField
      FieldName = 'PERC_MULTA'
      Precision = 18
      Size = 2
    end
    object cdsConfigSistemaID_EXPEDIENTE: TIntegerField
      FieldName = 'ID_EXPEDIENTE'
    end
    object cdsConfigSistemaID_LIGACAO: TIntegerField
      FieldName = 'ID_LIGACAO'
    end
    object cdsConfigSistemaID_RELIGACAO: TIntegerField
      FieldName = 'ID_RELIGACAO'
    end
    object cdsConfigSistemaID_RELIGACAO2: TIntegerField
      FieldName = 'ID_RELIGACAO2'
    end
    object cdsConfigSistemaDT_VER_FR3: TDateField
      FieldName = 'DT_VER_FR3'
    end
    object cdsConfigSistemaHORA_VER_FR3: TStringField
      FieldName = 'HORA_VER_FR3'
      FixedChar = True
      Size = 8
    end
  end
  object qryPasta: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PASTA_PADRAO WHERE ID = 1')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 632
    Top = 168
    object qryPastaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryPastaBACKUP_LOCAL: TStringField
      FieldName = 'BACKUP_LOCAL'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qryPastaBACKUP_REMOTO: TStringField
      FieldName = 'BACKUP_REMOTO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object provPasta: TDataSetProvider
    DataSet = qryPasta
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 633
    Top = 217
  end
  object cdsPasta: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BACKUP_LOCAL'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'BACKUP_REMOTO'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provPasta'
    StoreDefs = True
    Left = 635
    Top = 264
    object cdsPastaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPastaBACKUP_LOCAL: TStringField
      FieldName = 'BACKUP_LOCAL'
      Size = 80
    end
    object cdsPastaBACKUP_REMOTO: TStringField
      FieldName = 'BACKUP_REMOTO'
    end
  end
end
