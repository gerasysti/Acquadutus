object dmRelFinanceiros: TdmRelFinanceiros
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 639
  Width = 1005
  object qryCalcFatMesResumo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
        Size = 7
        Value = '201104'
      end
      item
        DataType = ftWideString
        Name = 'pMultiDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiDistrito2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '    ID_DISTRITO, ID_BAIRRO, DT_EMISSAO, DT_VENCIMENTO, '
      '    QTD_UNID_CONSUM_TOTAL, QTD_UNID_CONSUM_CALC,'
      '    VAL_PRINCIPAL, VAL_MULTA, VAL_OUTRO_DEB, VAL_OUTRO_CRED,'
      '    VAL_TOTAL, DESCR_DISTRITO, DESCR_BAIRRO'
      'from calc_fatura_mensal_resumo'
      'where'
      '(ano_mes = :pAnoMes) and'
      '((position('#39';'#39'||trim(cast(id_distrito as varchar(2048)))||'#39';'#39
      '                    in :pMultiDistrito) > 0) or'
      ' (:pMultiDistrito2 = '#39'0'#39'))'
      'order by'
      '   id_distrito, id_bairro')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 808
    Top = 280
    object qryCalcFatMesResumoID_DISTRITO: TIntegerField
      FieldName = 'ID_DISTRITO'
      Required = True
    end
    object qryCalcFatMesResumoID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      Required = True
    end
    object qryCalcFatMesResumoDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qryCalcFatMesResumoDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object qryCalcFatMesResumoQTD_UNID_CONSUM_TOTAL: TIntegerField
      FieldName = 'QTD_UNID_CONSUM_TOTAL'
    end
    object qryCalcFatMesResumoQTD_UNID_CONSUM_CALC: TIntegerField
      FieldName = 'QTD_UNID_CONSUM_CALC'
    end
    object qryCalcFatMesResumoVAL_PRINCIPAL: TFMTBCDField
      FieldName = 'VAL_PRINCIPAL'
      Precision = 18
      Size = 2
    end
    object qryCalcFatMesResumoVAL_MULTA: TFMTBCDField
      FieldName = 'VAL_MULTA'
      Precision = 18
      Size = 2
    end
    object qryCalcFatMesResumoVAL_OUTRO_DEB: TFMTBCDField
      FieldName = 'VAL_OUTRO_DEB'
      Precision = 18
      Size = 2
    end
    object qryCalcFatMesResumoVAL_OUTRO_CRED: TFMTBCDField
      FieldName = 'VAL_OUTRO_CRED'
      Precision = 18
      Size = 2
    end
    object qryCalcFatMesResumoVAL_TOTAL: TFMTBCDField
      FieldName = 'VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object qryCalcFatMesResumoDESCR_DISTRITO: TStringField
      FieldName = 'DESCR_DISTRITO'
      Size = 40
    end
    object qryCalcFatMesResumoDESCR_BAIRRO: TStringField
      FieldName = 'DESCR_BAIRRO'
      Size = 40
    end
  end
  object frxCalcFatMesResumo: TfrxDBDataset
    UserName = 'frxCalcFatMesResumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_DISTRITO=ID_DISTRITO'
      'ID_BAIRRO=ID_BAIRRO'
      'DT_EMISSAO=DT_EMISSAO'
      'DT_VENCIMENTO=DT_VENCIMENTO'
      'QTD_UNID_CONSUM_TOTAL=QTD_UNID_CONSUM_TOTAL'
      'QTD_UNID_CONSUM_CALC=QTD_UNID_CONSUM_CALC'
      'VAL_PRINCIPAL=VAL_PRINCIPAL'
      'VAL_MULTA=VAL_MULTA'
      'VAL_OUTRO_DEB=VAL_OUTRO_DEB'
      'VAL_OUTRO_CRED=VAL_OUTRO_CRED'
      'VAL_TOTAL=VAL_TOTAL'
      'DESCR_DISTRITO=DESCR_DISTRITO'
      'DESCR_BAIRRO=DESCR_BAIRRO')
    DataSet = cdsCalcFatMesResumo
    BCDToCurrency = False
    Left = 840
    Top = 376
  end
  object frxConfigOrgao: TfrxDBDataset
    UserName = 'frxConfigOrgao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'SIGLA=SIGLA'
      'CNPJ=CNPJ'
      'ENDER_ID_LOGRAD=ENDER_ID_LOGRAD'
      'ENDER_LOGRAD_NUM=ENDER_LOGRAD_NUM'
      'ENDER_ID_BAIRRO=ENDER_ID_BAIRRO'
      'ENDER_CIDADE=ENDER_CIDADE'
      'ENDER_CEP=ENDER_CEP'
      'ENDER_UF=ENDER_UF'
      'LOGOMARCA=LOGOMARCA'
      'TELEFONES=TELEFONES'
      'E_MAIL=E_MAIL'
      'PASTA_ATUALIZA=PASTA_ATUALIZA'
      'TIPO_FATURA=TIPO_FATURA'
      'ENDER_DESCR_LOGRAD=ENDER_DESCR_LOGRAD'
      'ENDER_DESCR_BAIRRO=ENDER_DESCR_BAIRRO'
      'RAZAO_SOCIAL2=RAZAO_SOCIAL2'
      'NOME_SYS=NOME_SYS'
      'TIT_REL1=TIT_REL1'
      'TIT_REL2=TIT_REL2'
      'TIT_REL3=TIT_REL3'
      'ENDER_CEP_FTDO=ENDER_CEP_FTDO'
      'CNPJ_FTDO=CNPJ_FTDO'
      'SIGLA2=SIGLA2'
      'VERSAO_SYS=VERSAO_SYS'
      'NOME_FR3=NOME_FR3')
    DataSet = cdsConfigOrgao
    BCDToCurrency = False
    Left = 72
    Top = 72
  end
  object cdsCalcFatMesResumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCalcFatMesResumo'
    Left = 824
    Top = 344
    object cdsCalcFatMesResumoID_DISTRITO: TIntegerField
      FieldName = 'ID_DISTRITO'
      Required = True
    end
    object cdsCalcFatMesResumoID_BAIRRO: TIntegerField
      FieldName = 'ID_BAIRRO'
      Required = True
    end
    object cdsCalcFatMesResumoDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsCalcFatMesResumoDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object cdsCalcFatMesResumoQTD_UNID_CONSUM_TOTAL: TIntegerField
      FieldName = 'QTD_UNID_CONSUM_TOTAL'
    end
    object cdsCalcFatMesResumoQTD_UNID_CONSUM_CALC: TIntegerField
      FieldName = 'QTD_UNID_CONSUM_CALC'
    end
    object cdsCalcFatMesResumoVAL_PRINCIPAL: TFMTBCDField
      FieldName = 'VAL_PRINCIPAL'
      Precision = 18
      Size = 2
    end
    object cdsCalcFatMesResumoVAL_MULTA: TFMTBCDField
      FieldName = 'VAL_MULTA'
      Precision = 18
      Size = 2
    end
    object cdsCalcFatMesResumoVAL_OUTRO_DEB: TFMTBCDField
      FieldName = 'VAL_OUTRO_DEB'
      Precision = 18
      Size = 2
    end
    object cdsCalcFatMesResumoVAL_OUTRO_CRED: TFMTBCDField
      FieldName = 'VAL_OUTRO_CRED'
      Precision = 18
      Size = 2
    end
    object cdsCalcFatMesResumoVAL_TOTAL: TFMTBCDField
      FieldName = 'VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsCalcFatMesResumoDESCR_DISTRITO: TStringField
      FieldName = 'DESCR_DISTRITO'
      Size = 40
    end
    object cdsCalcFatMesResumoDESCR_BAIRRO: TStringField
      FieldName = 'DESCR_BAIRRO'
      Size = 40
    end
  end
  object qryResumoCalcFatLograd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiBairro'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiLograd'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' *'
      'from'
      
        ' sp_rel_resumo_calc_lograd(:pAnoMes,:pMultiDistrito,:pMultiBairr' +
        'o,:pMultiLograd)'
      'order by'
      ' r_id_distrito, r_id_bairro, r_descr_lograd')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 48
    Top = 400
  end
  object provResumoCalcFatLograd: TDataSetProvider
    DataSet = qryResumoCalcFatLograd
    Left = 56
    Top = 424
  end
  object cdsResumoCalcFatLograd: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provResumoCalcFatLograd'
    AfterScroll = cdsResumoCalcFatLogradAfterScroll
    Left = 64
    Top = 456
    object cdsResumoCalcFatLogradR_ID_DISTRITO: TIntegerField
      FieldName = 'R_ID_DISTRITO'
    end
    object cdsResumoCalcFatLogradR_DESCR_DISTRITO: TStringField
      FieldName = 'R_DESCR_DISTRITO'
      Size = 30
    end
    object cdsResumoCalcFatLogradR_ID_BAIRRO: TIntegerField
      FieldName = 'R_ID_BAIRRO'
    end
    object cdsResumoCalcFatLogradR_DESCR_BAIRRO: TStringField
      FieldName = 'R_DESCR_BAIRRO'
      Size = 30
    end
    object cdsResumoCalcFatLogradR_ID_LOGRAD: TIntegerField
      FieldName = 'R_ID_LOGRAD'
    end
    object cdsResumoCalcFatLogradR_DESCR_LOGRAD: TStringField
      FieldName = 'R_DESCR_LOGRAD'
      Size = 50
    end
    object cdsResumoCalcFatLogradR_QTD_USUARIO: TIntegerField
      FieldName = 'R_QTD_USUARIO'
    end
    object cdsResumoCalcFatLogradR_QTD_CALC: TIntegerField
      FieldName = 'R_QTD_CALC'
    end
    object cdsResumoCalcFatLogradR_VAL_PRINCIPAL: TFMTBCDField
      FieldName = 'R_VAL_PRINCIPAL'
      Precision = 18
      Size = 2
    end
    object cdsResumoCalcFatLogradR_VAL_MULTA: TFMTBCDField
      FieldName = 'R_VAL_MULTA'
      Precision = 18
      Size = 2
    end
    object cdsResumoCalcFatLogradR_VAL_OUTRO_DEB: TFMTBCDField
      FieldName = 'R_VAL_OUTRO_DEB'
      Precision = 18
      Size = 2
    end
    object cdsResumoCalcFatLogradR_VAL_OUTRO_CRED: TFMTBCDField
      FieldName = 'R_VAL_OUTRO_CRED'
      Precision = 18
      Size = 2
    end
    object cdsResumoCalcFatLogradR_VAL_TOTAL: TFMTBCDField
      FieldName = 'R_VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsResumoCalcFatLogradR_QTD_TORN: TIntegerField
      FieldName = 'R_QTD_TORN'
    end
    object cdsResumoCalcFatLogradR_QTD_IMOVEL: TIntegerField
      FieldName = 'R_QTD_IMOVEL'
    end
    object cdsResumoCalcFatLogradR_QTD_TIPO_CONSUM_TORN: TIntegerField
      FieldName = 'R_QTD_TIPO_CONSUM_TORN'
    end
    object cdsResumoCalcFatLogradR_QTD_TIPO_CONSUM_M3: TIntegerField
      FieldName = 'R_QTD_TIPO_CONSUM_M3'
    end
    object cdsResumoCalcFatLogradR_QTD_CATEG_RESID: TIntegerField
      FieldName = 'R_QTD_CATEG_RESID'
    end
    object cdsResumoCalcFatLogradR_QTD_CATEG_COMER: TIntegerField
      FieldName = 'R_QTD_CATEG_COMER'
    end
    object cdsResumoCalcFatLogradR_QTD_CATEG_INDUSTR: TIntegerField
      FieldName = 'R_QTD_CATEG_INDUSTR'
    end
    object cdsResumoCalcFatLogradR_QTD_CATEG_OUTRA: TIntegerField
      FieldName = 'R_QTD_CATEG_OUTRA'
    end
    object cdsResumoCalcFatLogradR_QTD_CONSUM_M3: TIntegerField
      FieldName = 'R_QTD_CONSUM_M3'
    end
  end
  object qryLanctoPagto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDtIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDtFim'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pMultiLocalPagto'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  sp_rel_pagto(:pDtIni,:pDtFim,:pMultiLocalPagto)'
      'order by'
      '  r_dt_pagto, r_id_local_pagto, r_nome_pessoa, r_referencia')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 200
    Top = 24
  end
  object frxLanctoPagto: TfrxDBDataset
    UserName = 'frxLanctoPagto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID_UNID_CONSUM=R_ID_UNID_CONSUM'
      'R_NOME_PESSOA=R_NOME_PESSOA'
      'R_DESCR_TIPO_PESSOA=R_DESCR_TIPO_PESSOA'
      'R_CPF_CNPJ_FTDO=R_CPF_CNPJ_FTDO'
      'R_TIPO_FATURA=R_TIPO_FATURA'
      'R_DESCR_TIPO_FATURA=R_DESCR_TIPO_FATURA'
      'R_REFERENCIA=R_REFERENCIA'
      'R_REF_FTDO=R_REF_FTDO'
      'R_DT_PAGTO=R_DT_PAGTO'
      'R_ID_LOCAL_PAGTO=R_ID_LOCAL_PAGTO'
      'R_DESCR_LOCAL_PAGTO=R_DESCR_LOCAL_PAGTO'
      'R_DT_VENCIMENTO=R_DT_VENCIMENTO'
      'R_VAL_FATURA=R_VAL_FATURA'
      'R_VAL_DESCONTO=R_VAL_DESCONTO'
      'R_VAL_PAGTO=R_VAL_PAGTO'
      'R_VAL_EXPEDIENTE=R_VAL_EXPEDIENTE'
      'R_VAL_LIGACAO=R_VAL_LIGACAO'
      'R_VAL_RELIGACAO=R_VAL_RELIGACAO'
      'R_VAL_AGUA=R_VAL_AGUA'
      'R_VAL_JUROS=R_VAL_JUROS'
      'R_VAL_OUTRO_DEB=R_VAL_OUTRO_DEB'
      'R_VAL_PROVA=R_VAL_PROVA'
      'R_OK=R_OK')
    DataSet = cdsLanctoPagto
    BCDToCurrency = False
    Left = 232
    Top = 120
  end
  object provCalcFatMesResumo: TDataSetProvider
    DataSet = qryCalcFatMesResumo
    Left = 816
    Top = 312
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40687.913054525500000000
    ReportOptions.LastChange = 43082.738819537040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 24
    Top = 136
    Datasets = <
      item
        DataSet = frxConfigOrgao
        DataSetName = 'frxConfigOrgao'
      end
      item
        DataSet = frxPlanLanctoConsumo
        DataSetName = 'frxPlanLanctoConsumo'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 3.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 5.000000000000000000
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 20.779530000000000000
        Top = 393.071120000000000000
        Width = 763.465060000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 1.708410000000015000
          Width = 763.465060000000000000
          StretchMode = smActualHeight
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo5: TfrxSysMemoView
          Top = 4.157480309999983000
          Width = 117.165430000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'P'#225'gina: [PAGE#] / [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 666.197280000000100000
          Top = 4.157480309999983000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'GeraSys.Ti (c)')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 18.897650000000000000
        Width = 763.465060000000000000
        object Shape3: TfrxShapeView
          Align = baWidth
          Top = 84.504020000000000000
          Width = 763.465060000000000000
          Height = 34.015770000000000000
          Fill.BackColor = 15197402
          Frame.Color = clWhite
        end
        object frxConfigOrgaoRAZAO_SOCIAL: TfrxMemoView
          Left = 124.724490000000000000
          Top = 2.023622050000000000
          Width = 506.457020000000000000
          Height = 15.874015750000000000
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxConfigOrgao."RAZAO_SOCIAL2"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 124.724692600000000000
          Top = 44.818955000000000000
          Width = 506.456614800000000000
          Height = 15.874015748031500000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxConfigOrgao."TIT_REL1"]')
          ParentFont = False
        end
        object frxConfigOrgaoNOME_SYS: TfrxMemoView
          Left = 124.724490000000000000
          Top = 23.811023622047200000
          Width = 506.457020000000000000
          Height = 15.874015750000000000
          DataField = 'NOME_SYS'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxConfigOrgao."NOME_SYS"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 61.228339130000000000
          Top = 87.488188980000000000
          Width = 166.299320000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome / Raz'#227'o Social')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 61.228339130000000000
          Top = 102.606299212598000000
          Width = 115.716760000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CPF / CNPJ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 124.724692600000000000
          Top = 63.874015748031500000
          Width = 506.456614800000000000
          Height = 15.874015750000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxConfigOrgao."TIT_REL2"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 459.724402130000000000
          Top = 87.488188980000000000
          Width = 123.275820000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #218'ltimas '
            'Leituras')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 10.960615280000000000
          Top = 87.488188980000000000
          Width = 46.149660000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' da Conta')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 593.385826771654000000
          Top = 87.488250000000000000
          Width = 59.023810000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dt. '#218'ltima '
            'Leitura')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 672.756340000000000000
          Top = 87.488250000000000000
          Width = 66.582870000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Leitura'
            'Atual')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 340.157700000000000000
          Top = 87.488250000000000000
          Width = 40.126160000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'N'#186' do'
            'Im'#243'vel')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 383.976370630000000000
          Top = 87.488250000000000000
          Width = 66.582870000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'N'#186' do'
            'Hidr'#244'metro')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 260.787570000000000000
          Top = 102.606299210000000000
          Width = 66.582870000000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Categoria')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Width = 105.826840000000000000
          Height = 77.102359760000000000
          DataField = 'LOGOMARCA'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line6: TfrxLineView
          Left = 117.944960000000000000
          Top = 21.118120000000000000
          Width = 645.520100000000000000
          StretchMode = smActualHeight
          Color = clBlack
          Frame.Style = fsSquare
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 658.393700787402000000
          Top = 63.874015750000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 658.393700790000000000
          Top = 23.811023620000000000
          Width = 102.047310000000000000
          Height = 15.874015750000000000
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxConfigOrgao."VERSAO_SYS"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 763.465060000000000000
        Condition = 'frxPlanLanctoConsumo."R_DESCR_LOGRAD"'
        ReprintOnNewPage = True
        StartNewPage = True
        object frxServidorSUOR_DESCR_SUB_UNID_ORCAMENT: TfrxMemoView
          Left = 1.889763780000000000
          Width = 442.205010000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxServidorSUO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[<frxPlanLanctoConsumo."R_ID_LOGRAD">] - [<frxPlanLanctoConsumo.' +
              '"R_DESCR_LOGRAD">]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 19.015770000000000000
          Width = 763.465060000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 41.574817800000000000
        Top = 245.669450000000000000
        Width = 763.465060000000000000
        DataSet = frxPlanLanctoConsumo
        DataSetName = 'frxPlanLanctoConsumo'
        RowCount = 0
        object frxServidorID: TfrxMemoView
          Left = 10.960615280000000000
          Top = 1.133858269999990000
          Width = 46.149660000000000000
          Height = 15.118120000000000000
          DataField = 'R_ID_UNID_CONSUM'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_ID_UNID_CONSUM"]')
          ParentFont = False
        end
        object frxServidorNOME_SERVIDOR: TfrxMemoView
          Left = 61.228339130000000000
          Top = 18.141732283464620000
          Width = 115.716760000000000000
          Height = 15.118120000000000000
          DataField = 'R_CPF_CNPJ'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_CPF_CNPJ"]')
          ParentFont = False
        end
        object frxServidorDESCR_SUB_UNID_ORCAMENT: TfrxMemoView
          Left = 61.228339130000000000
          Top = 1.133858269999990000
          Width = 275.976500000000000000
          Height = 15.118120000000000000
          DataField = 'R_NOME_PESSOA'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_NOME_PESSOA"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 456.566919370000000000
          Top = 1.133858269999990000
          Width = 43.905690000000000000
          Height = 15.118120000000000000
          DataField = 'R_ULT_MES'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_ULT_MES"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 340.157700000000000000
          Top = 1.133858269999990000
          Width = 40.126160000000000000
          Height = 15.118120000000000000
          DataField = 'R_ENDER_NUM_LETRA'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_ENDER_NUM_LETRA"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 383.976370630000000000
          Top = 1.133858269999990000
          Width = 66.582870000000000000
          Height = 15.118120000000000000
          DataField = 'R_NUM_HIDROM'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_NUM_HIDROM"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 456.566919370000000000
          Top = 18.141732280000010000
          Width = 43.905690000000000000
          Height = 15.118120000000000000
          DataField = 'R_PENULT_MES'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_PENULT_MES"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 503.141712760000000000
          Top = 1.133858269999990000
          Width = 40.126160000000000000
          Height = 15.118120000000000000
          DataField = 'R_ULT_LEITURA'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_ULT_LEITURA"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 503.141712760000000000
          Top = 18.141732280000010000
          Width = 40.126160000000000000
          Height = 15.118120000000000000
          DataField = 'R_PENULT_LEITURA'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_PENULT_LEITURA"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 593.385826771654000000
          Top = 11.338582679999920000
          Width = 59.023810000000000000
          Height = 15.118120000000000000
          DataField = 'R_DT_ULT_LEITURA'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_DT_ULT_LEITURA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 653.858690000000000000
          Top = 11.338582679999920000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '___/___/____')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 733.228820000000000000
          Top = 11.338582677165420000
          Width = 26.456710000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '____')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 37.795300000000030000
          Width = 763.465060000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo22: TfrxMemoView
          Left = 546.031850000000000000
          Top = 1.133858269999990000
          Width = 43.905690000000000000
          Height = 15.118120000000000000
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_ULT_CONSUMO"] m'#179)
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 546.031850000000000000
          Top = 18.141732280000010000
          Width = 43.905690000000000000
          Height = 15.118120000000000000
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_PENULT_CONSUMO"] m'#179)
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 260.787570000000000000
          Top = 18.141732280000010000
          Width = 115.716760000000000000
          Height = 15.118120000000000000
          DataField = 'R_DESCR_CATEG'
          DataSet = frxPlanLanctoConsumo
          DataSetName = 'frxPlanLanctoConsumo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxPlanLanctoConsumo."R_DESCR_CATEG"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 763.465060000000000000
        object SysMemo2: TfrxSysMemoView
          Left = 205.433210000000000000
          Top = 2.913388269999985000
          Width = 60.472480000000000000
          Height = 14.362204720000000000
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 31.677180000000000000
          Top = 2.913388269999985000
          Width = 170.078850000000000000
          Height = 14.362204720000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd. de Unidades:')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object provLanctoPagto: TDataSetProvider
    DataSet = qryLanctoPagto
    Left = 216
    Top = 48
  end
  object cdsLanctoPagto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provLanctoPagto'
    Left = 232
    Top = 72
    object cdsLanctoPagtoR_ID_UNID_CONSUM: TIntegerField
      FieldName = 'R_ID_UNID_CONSUM'
      DisplayFormat = '0-0;0; '
    end
    object cdsLanctoPagtoR_NOME_PESSOA: TStringField
      FieldName = 'R_NOME_PESSOA'
      Size = 60
    end
    object cdsLanctoPagtoR_DESCR_TIPO_PESSOA: TStringField
      FieldName = 'R_DESCR_TIPO_PESSOA'
      Size = 15
    end
    object cdsLanctoPagtoR_CPF_CNPJ_FTDO: TStringField
      FieldName = 'R_CPF_CNPJ_FTDO'
      Size = 18
    end
    object cdsLanctoPagtoR_TIPO_FATURA: TStringField
      FieldName = 'R_TIPO_FATURA'
      FixedChar = True
      Size = 1
    end
    object cdsLanctoPagtoR_DESCR_TIPO_FATURA: TStringField
      FieldName = 'R_DESCR_TIPO_FATURA'
    end
    object cdsLanctoPagtoR_REFERENCIA: TStringField
      FieldName = 'R_REFERENCIA'
      Size = 10
    end
    object cdsLanctoPagtoR_REF_FTDO: TStringField
      FieldName = 'R_REF_FTDO'
      Size = 11
    end
    object cdsLanctoPagtoR_DT_PAGTO: TDateField
      FieldName = 'R_DT_PAGTO'
    end
    object cdsLanctoPagtoR_ID_LOCAL_PAGTO: TIntegerField
      FieldName = 'R_ID_LOCAL_PAGTO'
    end
    object cdsLanctoPagtoR_DESCR_LOCAL_PAGTO: TStringField
      FieldName = 'R_DESCR_LOCAL_PAGTO'
      Size = 40
    end
    object cdsLanctoPagtoR_DT_VENCIMENTO: TDateField
      FieldName = 'R_DT_VENCIMENTO'
    end
    object cdsLanctoPagtoR_VAL_FATURA: TFMTBCDField
      FieldName = 'R_VAL_FATURA'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_DESCONTO: TFMTBCDField
      FieldName = 'R_VAL_DESCONTO'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_PAGTO: TFMTBCDField
      FieldName = 'R_VAL_PAGTO'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_EXPEDIENTE: TFMTBCDField
      FieldName = 'R_VAL_EXPEDIENTE'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_LIGACAO: TFMTBCDField
      FieldName = 'R_VAL_LIGACAO'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_RELIGACAO: TFMTBCDField
      FieldName = 'R_VAL_RELIGACAO'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_AGUA: TFMTBCDField
      FieldName = 'R_VAL_AGUA'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_JUROS: TFMTBCDField
      FieldName = 'R_VAL_JUROS'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_OUTRO_DEB: TFMTBCDField
      FieldName = 'R_VAL_OUTRO_DEB'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_VAL_PROVA: TFMTBCDField
      FieldName = 'R_VAL_PROVA'
      Precision = 18
      Size = 2
    end
    object cdsLanctoPagtoR_OK: TStringField
      FieldName = 'R_OK'
      FixedChar = True
      Size = 3
    end
  end
  object frxResumoCalcFatLograd: TfrxDBDataset
    UserName = 'frxResumoCalcFatLograd'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID_DISTRITO=R_ID_DISTRITO'
      'R_DESCR_DISTRITO=R_DESCR_DISTRITO'
      'R_ID_BAIRRO=R_ID_BAIRRO'
      'R_DESCR_BAIRRO=R_DESCR_BAIRRO'
      'R_ID_LOGRAD=R_ID_LOGRAD'
      'R_DESCR_LOGRAD=R_DESCR_LOGRAD'
      'R_QTD_USUARIO=R_QTD_USUARIO'
      'R_QTD_CALC=R_QTD_CALC'
      'R_VAL_PRINCIPAL=R_VAL_PRINCIPAL'
      'R_VAL_MULTA=R_VAL_MULTA'
      'R_VAL_OUTRO_DEB=R_VAL_OUTRO_DEB'
      'R_VAL_OUTRO_CRED=R_VAL_OUTRO_CRED'
      'R_VAL_TOTAL=R_VAL_TOTAL'
      'R_QTD_TORN=R_QTD_TORN'
      'R_QTD_IMOVEL=R_QTD_IMOVEL'
      'R_QTD_TIPO_CONSUM_TORN=R_QTD_TIPO_CONSUM_TORN'
      'R_QTD_TIPO_CONSUM_M3=R_QTD_TIPO_CONSUM_M3'
      'R_QTD_CATEG_RESID=R_QTD_CATEG_RESID'
      'R_QTD_CATEG_COMER=R_QTD_CATEG_COMER'
      'R_QTD_CATEG_INDUSTR=R_QTD_CATEG_INDUSTR'
      'R_QTD_CATEG_OUTRA=R_QTD_CATEG_OUTRA'
      'R_QTD_CONSUM_M3=R_QTD_CONSUM_M3')
    DataSet = cdsResumoCalcFatLograd
    BCDToCurrency = False
    Left = 80
    Top = 482
  end
  object qryEmit_Arrecad: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pMultiBairro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesFim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from sp_rel_emitido_x_arrec(:pDistrito,:pMultiBairro,:p' +
        'AnoMesIni,:pAnoMesFim)'
      'order by r_ano_mes_descr, r_id_bairro')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 872
    Top = 16
  end
  object provEmit_Arrecad: TDataSetProvider
    DataSet = qryEmit_Arrecad
    Left = 872
    Top = 56
  end
  object cdsEmit_Arrecad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provEmit_Arrecad'
    Left = 872
    Top = 104
    object cdsEmit_ArrecadR_ANO_MES: TStringField
      FieldName = 'R_ANO_MES'
      FixedChar = True
      Size = 6
    end
    object cdsEmit_ArrecadR_ANO_MES_DESCR: TStringField
      FieldName = 'R_ANO_MES_DESCR'
    end
    object cdsEmit_ArrecadR_ID_BAIRRO: TIntegerField
      FieldName = 'R_ID_BAIRRO'
    end
    object cdsEmit_ArrecadR_DESCR_BAIRRO: TStringField
      FieldName = 'R_DESCR_BAIRRO'
      Size = 50
    end
    object cdsEmit_ArrecadR_DT_VENCTO: TDateField
      FieldName = 'R_DT_VENCTO'
    end
    object cdsEmit_ArrecadR_QTD_CALC: TIntegerField
      FieldName = 'R_QTD_CALC'
    end
    object cdsEmit_ArrecadR_QTD_PAG: TIntegerField
      FieldName = 'R_QTD_PAG'
    end
    object cdsEmit_ArrecadR_QTD_DIF: TIntegerField
      FieldName = 'R_QTD_DIF'
    end
    object cdsEmit_ArrecadR_QTD_DIF_PERC: TFMTBCDField
      FieldName = 'R_QTD_DIF_PERC'
      Precision = 18
      Size = 2
    end
    object cdsEmit_ArrecadR_VAL_EMITIDO: TFMTBCDField
      FieldName = 'R_VAL_EMITIDO'
      Precision = 18
      Size = 2
    end
    object cdsEmit_ArrecadR_VAL_PAGO: TFMTBCDField
      FieldName = 'R_VAL_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsEmit_ArrecadR_VAL_DIF: TFMTBCDField
      FieldName = 'R_VAL_DIF'
      Precision = 18
      Size = 2
    end
    object cdsEmit_ArrecadR_VAL_DIF_PERC: TFMTBCDField
      FieldName = 'R_VAL_DIF_PERC'
      Precision = 18
      Size = 2
    end
  end
  object frxEmit_Arrecad: TfrxDBDataset
    UserName = 'frxEmit_Arrecad'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ANO_MES=R_ANO_MES'
      'R_ANO_MES_DESCR=R_ANO_MES_DESCR'
      'R_ID_BAIRRO=R_ID_BAIRRO'
      'R_DESCR_BAIRRO=R_DESCR_BAIRRO'
      'R_DT_VENCTO=R_DT_VENCTO'
      'R_QTD_CALC=R_QTD_CALC'
      'R_QTD_PAG=R_QTD_PAG'
      'R_QTD_DIF=R_QTD_DIF'
      'R_QTD_DIF_PERC=R_QTD_DIF_PERC'
      'R_VAL_EMITIDO=R_VAL_EMITIDO'
      'R_VAL_PAGO=R_VAL_PAGO'
      'R_VAL_DIF=R_VAL_DIF'
      'R_VAL_DIF_PERC=R_VAL_DIF_PERC')
    DataSet = cdsEmit_Arrecad
    BCDToCurrency = False
    Left = 872
    Top = 160
  end
  object qryRequerimento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDtIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDtFim'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pSituacIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pSituacFim'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pmultibairro'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiBairro'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      'd.*,'
      
        'd1.ender_id_distrito, d1.ender_id_bairro, d1.ender_descr_logrado' +
        'uro,'
      
        'd1.ender_uc_num_letra, d1.ender_complemento, d1.ender_descr_dist' +
        'rito,'
      'd1.ender_descr_bairro'
      'from'
      'requerimento d,'
      'unid_consumidora d1'
      'where'
      '(d.data_requer >= :pDtIni) and'
      '(d.data_requer <= :pDtFim) and'
      '(d.situacao >= :pSituacIni) and'
      '(d.situacao <= :pSituacFim) and'
      '(d1.id = d.id_unid_consum) and'
      '(d1.ender_id_distrito = :pDistrito) and'
      
        '((position('#39';'#39'||trim(cast(d1.ender_id_bairro as VARCHAR(512)))||' +
        #39';'#39
      '         in :pmultibairro) > 0) or'
      ' (trim(cast(:pMultiBairro as VARCHAR(512)))='#39'0'#39'))'
      'order by'
      'd1.ender_id_bairro, d.nome_pessoa, d.id_unid_consum')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 640
    Top = 154
  end
  object provRequerimento: TDataSetProvider
    DataSet = qryRequerimento
    Left = 640
    Top = 201
  end
  object cdsRequerimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provRequerimento'
    Left = 640
    Top = 248
    object cdsRequerimentoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsRequerimentoDATA_REQUER: TDateField
      FieldName = 'DATA_REQUER'
      Required = True
    end
    object cdsRequerimentoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object cdsRequerimentoID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cdsRequerimentoID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      DisplayFormat = '0-0;0;  '
      EditFormat = '0-0;0;  '
    end
    object cdsRequerimentoNUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      Size = 15
    end
    object cdsRequerimentoNUM_LIVRO: TStringField
      FieldName = 'NUM_LIVRO'
      Size = 10
    end
    object cdsRequerimentoDATA_PROTOCOL: TDateField
      FieldName = 'DATA_PROTOCOL'
    end
    object cdsRequerimentoDATA_DESPACHO: TDateField
      FieldName = 'DATA_DESPACHO'
    end
    object cdsRequerimentoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsRequerimentoSERVID_RESPONSAV: TStringField
      FieldName = 'SERVID_RESPONSAV'
      Size = 50
    end
    object cdsRequerimentoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cdsRequerimentoDESCR_SERVICO: TStringField
      FieldName = 'DESCR_SERVICO'
      Size = 40
    end
    object cdsRequerimentoNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsRequerimentoENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cdsRequerimentoENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 7
    end
    object cdsRequerimentoENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsRequerimentoENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cdsRequerimentoENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cdsRequerimentoENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsRequerimentoENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsRequerimentoENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cdsRequerimentoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 80
    end
    object cdsRequerimentoDESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 14
    end
    object cdsRequerimentoENDER_ID_DISTRITO_1: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO_1'
    end
    object cdsRequerimentoENDER_ID_BAIRRO_1: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO_1'
    end
    object cdsRequerimentoENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      Size = 50
    end
    object cdsRequerimentoENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
    object cdsRequerimentoENDER_COMPLEMENTO_1: TStringField
      FieldName = 'ENDER_COMPLEMENTO_1'
      Size = 30
    end
    object cdsRequerimentoENDER_DESCR_DISTRITO_1: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO_1'
      Size = 40
    end
    object cdsRequerimentoENDER_DESCR_BAIRRO_1: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO_1'
      Size = 40
    end
  end
  object frxRequerimento: TfrxDBDataset
    UserName = 'frxRequerimento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DATA_REQUER=DATA_REQUER'
      'ID_PESSOA=ID_PESSOA'
      'ID_SERVICO=ID_SERVICO'
      'ID_UNID_CONSUM=ID_UNID_CONSUM'
      'NUM_PROTOCOLO=NUM_PROTOCOLO'
      'NUM_LIVRO=NUM_LIVRO'
      'DATA_PROTOCOL=DATA_PROTOCOL'
      'DATA_DESPACHO=DATA_DESPACHO'
      'SITUACAO=SITUACAO'
      'SERVID_RESPONSAV=SERVID_RESPONSAV'
      'OBSERVACAO=OBSERVACAO'
      'DESCR_SERVICO=DESCR_SERVICO'
      'NOME_PESSOA=NOME_PESSOA'
      'ENDER_ID_LOGRAD=ENDER_ID_LOGRAD'
      'ENDER_NUM_LETRA=ENDER_NUM_LETRA'
      'ENDER_ID_BAIRRO=ENDER_ID_BAIRRO'
      'ENDER_ID_DISTRITO=ENDER_ID_DISTRITO'
      'ENDER_DESCR_LOGRAD=ENDER_DESCR_LOGRAD'
      'ENDER_DESCR_BAIRRO=ENDER_DESCR_BAIRRO'
      'ENDER_DESCR_DISTRITO=ENDER_DESCR_DISTRITO'
      'ENDER_COMPLEMENTO=ENDER_COMPLEMENTO'
      'CPF_CNPJ=CPF_CNPJ'
      'DESCR_SITUACAO=DESCR_SITUACAO'
      'ENDER_ID_DISTRITO_1=ENDER_ID_DISTRITO_1'
      'ENDER_ID_BAIRRO_1=ENDER_ID_BAIRRO_1'
      'ENDER_DESCR_LOGRADOURO=ENDER_DESCR_LOGRADOURO'
      'ENDER_UC_NUM_LETRA=ENDER_UC_NUM_LETRA'
      'ENDER_COMPLEMENTO_1=ENDER_COMPLEMENTO_1'
      'ENDER_DESCR_DISTRITO_1=ENDER_DESCR_DISTRITO_1'
      'ENDER_DESCR_BAIRRO_1=ENDER_DESCR_BAIRRO_1')
    DataSet = cdsRequerimento
    BCDToCurrency = False
    Left = 640
    Top = 299
  end
  object frxDesigner1: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 27
    Top = 186
  end
  object qryFaturaMensal: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pBairro'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiLograd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pUnidConsumIni'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pUnidConsumFim'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pSomenteAbertas'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select * from sp_rel_fatura(:pAnoMes,:pDistrito,:pBairro,:pMulti' +
        'Lograd,'
      '   :pUnidConsumIni,:pUnidConsumFim,:pSomenteAbertas)'
      'order by'
      '   r_ender_id_lograd, r_ender_num_letra'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 112
    Top = 258
  end
  object provFaturaMensal: TDataSetProvider
    DataSet = qryFaturaMensal
    Left = 128
    Top = 281
  end
  object cdsFaturaMensal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provFaturaMensal'
    Left = 144
    Top = 304
    object cdsFaturaMensalR_ID_UNID_CONSUM: TIntegerField
      FieldName = 'R_ID_UNID_CONSUM'
      DisplayFormat = '0-0;0; '
    end
    object cdsFaturaMensalR_DT_LIGACAO: TDateField
      FieldName = 'R_DT_LIGACAO'
    end
    object cdsFaturaMensalR_DT_EMISSAO: TDateField
      FieldName = 'R_DT_EMISSAO'
    end
    object cdsFaturaMensalR_DIAS_CONSUMO: TStringField
      FieldName = 'R_DIAS_CONSUMO'
      FixedChar = True
      Size = 3
    end
    object cdsFaturaMensalR_DT_PREV_PROX_LEITURA: TStringField
      FieldName = 'R_DT_PREV_PROX_LEITURA'
      FixedChar = True
      Size = 10
    end
    object cdsFaturaMensalR_DT_LEITURA: TStringField
      FieldName = 'R_DT_LEITURA'
      FixedChar = True
      Size = 10
    end
    object cdsFaturaMensalR_LEITURA_ANTERIOR: TStringField
      FieldName = 'R_LEITURA_ANTERIOR'
      FixedChar = True
      Size = 10
    end
    object cdsFaturaMensalR_LEITURA_ATUAL: TStringField
      FieldName = 'R_LEITURA_ATUAL'
      FixedChar = True
      Size = 10
    end
    object cdsFaturaMensalR_CONSUMO_M3: TStringField
      FieldName = 'R_CONSUMO_M3'
      FixedChar = True
      Size = 11
    end
    object cdsFaturaMensalR_VOLUME_FATURADO: TStringField
      FieldName = 'R_VOLUME_FATURADO'
      FixedChar = True
      Size = 3
    end
    object cdsFaturaMensalR_DT_VENCIMENTO: TDateField
      FieldName = 'R_DT_VENCIMENTO'
    end
    object cdsFaturaMensalR_QTD_TORNEIRA: TIntegerField
      FieldName = 'R_QTD_TORNEIRA'
    end
    object cdsFaturaMensalR_MULTIPLICADOR: TIntegerField
      FieldName = 'R_MULTIPLICADOR'
    end
    object cdsFaturaMensalR_VAL_PRINCIPAL: TFMTBCDField
      FieldName = 'R_VAL_PRINCIPAL'
      Precision = 18
      Size = 2
    end
    object cdsFaturaMensalR_VAL_MULTA: TFMTBCDField
      FieldName = 'R_VAL_MULTA'
      Precision = 18
      Size = 2
    end
    object cdsFaturaMensalR_VAL_OUTRO_DEB: TFMTBCDField
      FieldName = 'R_VAL_OUTRO_DEB'
      Precision = 18
      Size = 2
    end
    object cdsFaturaMensalR_VAL_OUTRO_CRED: TFMTBCDField
      FieldName = 'R_VAL_OUTRO_CRED'
      Precision = 18
      Size = 2
    end
    object cdsFaturaMensalR_VAL_TOTAL: TFMTBCDField
      FieldName = 'R_VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsFaturaMensalR_OBSERV_FATURA: TStringField
      FieldName = 'R_OBSERV_FATURA'
      Size = 40
    end
    object cdsFaturaMensalR_NOME_PESSOA: TStringField
      FieldName = 'R_NOME_PESSOA'
      Size = 60
    end
    object cdsFaturaMensalR_CPF_CNPJ_FTDO: TStringField
      FieldName = 'R_CPF_CNPJ_FTDO'
      Size = 18
    end
    object cdsFaturaMensalR_DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'R_DESCR_TIPO_UNID_CONSUM'
      Size = 30
    end
    object cdsFaturaMensalR_DESCR_FORMA_CALCULO: TStringField
      FieldName = 'R_DESCR_FORMA_CALCULO'
    end
    object cdsFaturaMensalR_NUM_HIDROMETRO: TStringField
      FieldName = 'R_NUM_HIDROMETRO'
    end
    object cdsFaturaMensalR_ENDER_COMPLETO: TStringField
      FieldName = 'R_ENDER_COMPLETO'
      Size = 140
    end
    object cdsFaturaMensalR_ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'R_ENDER_ID_BAIRRO'
    end
    object cdsFaturaMensalR_ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'R_ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsFaturaMensalR_ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'R_ENDER_ID_LOGRAD'
    end
    object cdsFaturaMensalR_ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'R_ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cdsFaturaMensalR_ENDER_NUM_LETRA: TStringField
      FieldName = 'R_ENDER_NUM_LETRA'
      Size = 10
    end
    object cdsFaturaMensalR_ENDER_COMPLEMENTO: TStringField
      FieldName = 'R_ENDER_COMPLEMENTO'
      Size = 30
    end
    object cdsFaturaMensalR_ENDER_COMPLETO2: TStringField
      FieldName = 'R_ENDER_COMPLETO2'
      Size = 140
    end
    object cdsFaturaMensalR_ENDER_ID_BAIRRO2: TIntegerField
      FieldName = 'R_ENDER_ID_BAIRRO2'
    end
    object cdsFaturaMensalR_ENDER_DESCR_BAIRRO2: TStringField
      FieldName = 'R_ENDER_DESCR_BAIRRO2'
      Size = 40
    end
    object cdsFaturaMensalR_ENDER_ID_LOGRAD2: TIntegerField
      FieldName = 'R_ENDER_ID_LOGRAD2'
    end
    object cdsFaturaMensalR_ENDER_DESCR_LOGRAD2: TStringField
      FieldName = 'R_ENDER_DESCR_LOGRAD2'
      Size = 50
    end
    object cdsFaturaMensalR_ENDER_NUM_LETRA2: TStringField
      FieldName = 'R_ENDER_NUM_LETRA2'
      Size = 10
    end
    object cdsFaturaMensalR_ENDER_COMPLEMENTO2: TStringField
      FieldName = 'R_ENDER_COMPLEMENTO2'
      Size = 30
    end
    object cdsFaturaMensalR_MES_ANO_FTDO: TStringField
      FieldName = 'R_MES_ANO_FTDO'
      Size = 8
    end
    object cdsFaturaMensalR_ID_UNID_CONSUM_FTDO: TStringField
      FieldName = 'R_ID_UNID_CONSUM_FTDO'
      Size = 8
    end
    object cdsFaturaMensalR_LOCAL_PAGTO1: TStringField
      FieldName = 'R_LOCAL_PAGTO1'
      Size = 30
    end
    object cdsFaturaMensalR_LOCAL_PAGTO2: TStringField
      FieldName = 'R_LOCAL_PAGTO2'
      Size = 30
    end
    object cdsFaturaMensalR_LOCAL_PAGTO3: TStringField
      FieldName = 'R_LOCAL_PAGTO3'
      Size = 30
    end
    object cdsFaturaMensalR_LOCAL_PAGTO4: TStringField
      FieldName = 'R_LOCAL_PAGTO4'
      Size = 30
    end
    object cdsFaturaMensalR_LOCAL_PAGTO5: TStringField
      FieldName = 'R_LOCAL_PAGTO5'
      Size = 30
    end
    object cdsFaturaMensalR_LOCAL_PAGTO6: TStringField
      FieldName = 'R_LOCAL_PAGTO6'
      Size = 30
    end
    object cdsFaturaMensalR_LOCAL_PAGTO7: TStringField
      FieldName = 'R_LOCAL_PAGTO7'
      Size = 30
    end
    object cdsFaturaMensalR_LOCAL_PAGTO8: TStringField
      FieldName = 'R_LOCAL_PAGTO8'
      Size = 30
    end
  end
  object frxFaturaMensal: TfrxDBDataset
    UserName = 'frxFaturaMensal'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID_UNID_CONSUM=R_ID_UNID_CONSUM'
      'R_DT_LIGACAO=R_DT_LIGACAO'
      'R_DT_EMISSAO=R_DT_EMISSAO'
      'R_DIAS_CONSUMO=R_DIAS_CONSUMO'
      'R_DT_PREV_PROX_LEITURA=R_DT_PREV_PROX_LEITURA'
      'R_DT_LEITURA=R_DT_LEITURA'
      'R_LEITURA_ANTERIOR=R_LEITURA_ANTERIOR'
      'R_LEITURA_ATUAL=R_LEITURA_ATUAL'
      'R_CONSUMO_M3=R_CONSUMO_M3'
      'R_VOLUME_FATURADO=R_VOLUME_FATURADO'
      'R_DT_VENCIMENTO=R_DT_VENCIMENTO'
      'R_QTD_TORNEIRA=R_QTD_TORNEIRA'
      'R_MULTIPLICADOR=R_MULTIPLICADOR'
      'R_VAL_PRINCIPAL=R_VAL_PRINCIPAL'
      'R_VAL_MULTA=R_VAL_MULTA'
      'R_VAL_OUTRO_DEB=R_VAL_OUTRO_DEB'
      'R_VAL_OUTRO_CRED=R_VAL_OUTRO_CRED'
      'R_VAL_TOTAL=R_VAL_TOTAL'
      'R_OBSERV_FATURA=R_OBSERV_FATURA'
      'R_NOME_PESSOA=R_NOME_PESSOA'
      'R_CPF_CNPJ_FTDO=R_CPF_CNPJ_FTDO'
      'R_DESCR_TIPO_UNID_CONSUM=R_DESCR_TIPO_UNID_CONSUM'
      'R_DESCR_FORMA_CALCULO=R_DESCR_FORMA_CALCULO'
      'R_NUM_HIDROMETRO=R_NUM_HIDROMETRO'
      'R_ENDER_COMPLETO=R_ENDER_COMPLETO'
      'R_ENDER_ID_BAIRRO=R_ENDER_ID_BAIRRO'
      'R_ENDER_DESCR_BAIRRO=R_ENDER_DESCR_BAIRRO'
      'R_ENDER_ID_LOGRAD=R_ENDER_ID_LOGRAD'
      'R_ENDER_DESCR_LOGRAD=R_ENDER_DESCR_LOGRAD'
      'R_ENDER_NUM_LETRA=R_ENDER_NUM_LETRA'
      'R_ENDER_COMPLEMENTO=R_ENDER_COMPLEMENTO'
      'R_ENDER_COMPLETO2=R_ENDER_COMPLETO2'
      'R_ENDER_ID_BAIRRO2=R_ENDER_ID_BAIRRO2'
      'R_ENDER_DESCR_BAIRRO2=R_ENDER_DESCR_BAIRRO2'
      'R_ENDER_ID_LOGRAD2=R_ENDER_ID_LOGRAD2'
      'R_ENDER_DESCR_LOGRAD2=R_ENDER_DESCR_LOGRAD2'
      'R_ENDER_NUM_LETRA2=R_ENDER_NUM_LETRA2'
      'R_ENDER_COMPLEMENTO2=R_ENDER_COMPLEMENTO2'
      'R_MES_ANO_FTDO=R_MES_ANO_FTDO'
      'R_ID_UNID_CONSUM_FTDO=R_ID_UNID_CONSUM_FTDO'
      'R_LOCAL_PAGTO1=R_LOCAL_PAGTO1'
      'R_LOCAL_PAGTO2=R_LOCAL_PAGTO2'
      'R_LOCAL_PAGTO3=R_LOCAL_PAGTO3'
      'R_LOCAL_PAGTO4=R_LOCAL_PAGTO4'
      'R_LOCAL_PAGTO5=R_LOCAL_PAGTO5'
      'R_LOCAL_PAGTO6=R_LOCAL_PAGTO6'
      'R_LOCAL_PAGTO7=R_LOCAL_PAGTO7'
      'R_LOCAL_PAGTO8=R_LOCAL_PAGTO8')
    DataSet = cdsFaturaMensal
    BCDToCurrency = False
    Left = 160
    Top = 331
  end
  object qryLanctoOutroItem: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pmultibairro'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiBairro'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      'd.*,'
      
        'd1.ender_id_distrito, d1.ender_id_bairro, d1.ender_descr_logrado' +
        'uro,'
      
        'd1.ender_uc_num_letra, d1.ender_complemento, d1.ender_descr_dist' +
        'rito,'
      'd1.ender_descr_bairro'
      'from'
      'lancto_outro_item d,'
      'unid_consumidora d1'
      'where'
      '(d.ano_mes = :pAnoMes) and'
      '(d1.id = d.id_unid_consum) and'
      '(d1.ender_id_distrito = :pDistrito) and'
      
        '((position('#39';'#39'||trim(cast(d1.ender_id_bairro as VARCHAR(512)))||' +
        #39';'#39
      '         in :pmultibairro) > 0) or'
      ' (trim(cast(:pMultiBairro as VARCHAR(512)))='#39'0'#39'))'
      'order by'
      'd1.ender_id_bairro, d.nome_pessoa, d.id_unid_consum')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 528
    Top = 154
  end
  object provLanctoOutroItem: TDataSetProvider
    DataSet = qryLanctoOutroItem
    Left = 528
    Top = 201
  end
  object cdsLanctoOutroItem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provLanctoOutroItem'
    Left = 529
    Top = 246
    object cdsLanctoOutroItemANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsLanctoOutroItemID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      Required = True
      DisplayFormat = '0-0;0;  '
    end
    object cdsLanctoOutroItemID_OUTRO: TIntegerField
      FieldName = 'ID_OUTRO'
      Required = True
    end
    object cdsLanctoOutroItemCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 15
    end
    object cdsLanctoOutroItemVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsLanctoOutroItemTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsLanctoOutroItemDT_EVENTO: TDateField
      FieldName = 'DT_EVENTO'
    end
    object cdsLanctoOutroItemOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 140
    end
    object cdsLanctoOutroItemDESCR_OUTRA_TARIFA: TStringField
      FieldName = 'DESCR_OUTRA_TARIFA'
      Size = 40
    end
    object cdsLanctoOutroItemNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsLanctoOutroItemCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsLanctoOutroItemNUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      FixedChar = True
      Size = 12
    end
    object cdsLanctoOutroItemDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsLanctoOutroItemENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cdsLanctoOutroItemENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsLanctoOutroItemENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      Size = 50
    end
    object cdsLanctoOutroItemENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
    object cdsLanctoOutroItemENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cdsLanctoOutroItemENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsLanctoOutroItemENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
  end
  object frxLanctoOutroItem: TfrxDBDataset
    UserName = 'frxLanctoOutroItem'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO_MES=ANO_MES'
      'ID_UNID_CONSUM=ID_UNID_CONSUM'
      'ID_OUTRO=ID_OUTRO'
      'COMPLEMENTO=COMPLEMENTO'
      'VALOR=VALOR'
      'TIPO=TIPO'
      'DT_EVENTO=DT_EVENTO'
      'OBSERVACAO=OBSERVACAO'
      'DESCR_OUTRA_TARIFA=DESCR_OUTRA_TARIFA'
      'NOME_PESSOA=NOME_PESSOA'
      'CPF_CNPJ_FTDO=CPF_CNPJ_FTDO'
      'NUM_HIDROMETRO=NUM_HIDROMETRO'
      'DESCR_TIPO_UNID_CONSUM=DESCR_TIPO_UNID_CONSUM'
      'ENDER_ID_DISTRITO=ENDER_ID_DISTRITO'
      'ENDER_ID_BAIRRO=ENDER_ID_BAIRRO'
      'ENDER_DESCR_LOGRADOURO=ENDER_DESCR_LOGRADOURO'
      'ENDER_UC_NUM_LETRA=ENDER_UC_NUM_LETRA'
      'ENDER_COMPLEMENTO=ENDER_COMPLEMENTO'
      'ENDER_DESCR_DISTRITO=ENDER_DESCR_DISTRITO'
      'ENDER_DESCR_BAIRRO=ENDER_DESCR_BAIRRO')
    DataSet = cdsLanctoOutroItem
    BCDToCurrency = False
    Left = 528
    Top = 293
  end
  object qryConfigOrgao: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select *'
      'from'
      '   config_orgao'
      'where id = 1')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 16
    Top = 8
    object qryConfigOrgaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 60
    end
    object qryConfigOrgaoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object qryConfigOrgaoCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object qryConfigOrgaoENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryConfigOrgaoENDER_LOGRAD_NUM: TStringField
      FieldName = 'ENDER_LOGRAD_NUM'
      Size = 7
    end
    object qryConfigOrgaoENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object qryConfigOrgaoENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 30
    end
    object qryConfigOrgaoENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      FixedChar = True
      Size = 8
    end
    object qryConfigOrgaoENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object qryConfigOrgaoLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Size = 1
    end
    object qryConfigOrgaoTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 40
    end
    object qryConfigOrgaoE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 60
    end
    object qryConfigOrgaoPASTA_ATUALIZA: TStringField
      FieldName = 'PASTA_ATUALIZA'
      Size = 240
    end
    object qryConfigOrgaoTIPO_FATURA: TStringField
      FieldName = 'TIPO_FATURA'
      FixedChar = True
      Size = 1
    end
    object qryConfigOrgaoENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object qryConfigOrgaoENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
  end
  object provConfigOrgao: TDataSetProvider
    DataSet = qryConfigOrgao
    Left = 40
    Top = 16
  end
  object cdsConfigOrgao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provConfigOrgao'
    Left = 56
    Top = 40
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
    object cdsConfigOrgaoRAZAO_SOCIAL2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'RAZAO_SOCIAL2'
      Size = 60
    end
    object cdsConfigOrgaoNOME_SYS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_SYS'
      Size = 80
    end
    object cdsConfigOrgaoTIT_REL1: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TIT_REL1'
      Size = 120
    end
    object cdsConfigOrgaoTIT_REL2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TIT_REL2'
      Size = 120
    end
    object cdsConfigOrgaoTIT_REL3: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TIT_REL3'
      Size = 120
    end
    object cdsConfigOrgaoENDER_CEP_FTDO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ENDER_CEP_FTDO'
      Size = 11
    end
    object cdsConfigOrgaoCNPJ_FTDO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CNPJ_FTDO'
      Size = 18
    end
    object cdsConfigOrgaoSIGLA2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'SIGLA2'
      Size = 11
    end
    object cdsConfigOrgaoVERSAO_SYS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VERSAO_SYS'
    end
    object cdsConfigOrgaoNOME_FR3: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_FR3'
      Size = 50
    end
  end
  object qryPlanLanctoConsumo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pBairro'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiLograd'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pPlanLancto'
        ParamType = ptInput
      end>
    SQL.Strings = (
      ''
      'select * from sp_rel_plan_lancto_consumo('
      '  :pAnoMes,:pDistrito,:pBairro,:pMultiLograd,:pPlanLancto)'
      'order by'
      'r_descr_lograd, r_ender_num_letra, r_nome_pessoa')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 232
    Top = 400
  end
  object provPlanLanctoConsumo: TDataSetProvider
    DataSet = qryPlanLanctoConsumo
    Left = 240
    Top = 432
  end
  object cdsPlanLanctoConsumo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provPlanLanctoConsumo'
    Left = 248
    Top = 464
    object cdsPlanLanctoConsumoR_ID_LOGRAD: TIntegerField
      FieldName = 'R_ID_LOGRAD'
    end
    object cdsPlanLanctoConsumoR_DESCR_LOGRAD: TStringField
      FieldName = 'R_DESCR_LOGRAD'
      Size = 50
    end
    object cdsPlanLanctoConsumoR_ID_UNID_CONSUM: TIntegerField
      FieldName = 'R_ID_UNID_CONSUM'
    end
    object cdsPlanLanctoConsumoR_DT_LIGACAO: TDateField
      FieldName = 'R_DT_LIGACAO'
    end
    object cdsPlanLanctoConsumoR_NOME_PESSOA: TStringField
      FieldName = 'R_NOME_PESSOA'
      Size = 60
    end
    object cdsPlanLanctoConsumoR_CPF_CNPJ: TStringField
      FieldName = 'R_CPF_CNPJ'
      Size = 18
    end
    object cdsPlanLanctoConsumoR_DESCR_CATEG: TStringField
      FieldName = 'R_DESCR_CATEG'
      Size = 30
    end
    object cdsPlanLanctoConsumoR_NUM_HIDROM: TStringField
      FieldName = 'R_NUM_HIDROM'
    end
    object cdsPlanLanctoConsumoR_ENDER_NUM_LETRA: TStringField
      FieldName = 'R_ENDER_NUM_LETRA'
      Size = 7
    end
    object cdsPlanLanctoConsumoR_ULT_MES: TStringField
      FieldName = 'R_ULT_MES'
      FixedChar = True
      Size = 7
    end
    object cdsPlanLanctoConsumoR_PENULT_MES: TStringField
      FieldName = 'R_PENULT_MES'
      FixedChar = True
      Size = 7
    end
    object cdsPlanLanctoConsumoR_ULT_LEITURA: TIntegerField
      FieldName = 'R_ULT_LEITURA'
    end
    object cdsPlanLanctoConsumoR_PENULT_LEITURA: TIntegerField
      FieldName = 'R_PENULT_LEITURA'
    end
    object cdsPlanLanctoConsumoR_ULT_CONSUMO: TIntegerField
      FieldName = 'R_ULT_CONSUMO'
    end
    object cdsPlanLanctoConsumoR_PENULT_CONSUMO: TIntegerField
      FieldName = 'R_PENULT_CONSUMO'
    end
    object cdsPlanLanctoConsumoR_DT_ULT_LEITURA: TDateField
      FieldName = 'R_DT_ULT_LEITURA'
    end
    object cdsPlanLanctoConsumoR_LEITURA_ANTER: TIntegerField
      FieldName = 'R_LEITURA_ANTER'
    end
    object cdsPlanLanctoConsumoR_LEITURA_ATUAL: TIntegerField
      FieldName = 'R_LEITURA_ATUAL'
    end
    object cdsPlanLanctoConsumoR_CONSUMO_ATUAL: TIntegerField
      FieldName = 'R_CONSUMO_ATUAL'
    end
    object cdsPlanLanctoConsumoR_DT_LEITURA_ATUAL: TDateField
      FieldName = 'R_DT_LEITURA_ATUAL'
    end
    object cdsPlanLanctoConsumoR_OBSERVACAO: TStringField
      FieldName = 'R_OBSERVACAO'
      Size = 120
    end
  end
  object frxPlanLanctoConsumo: TfrxDBDataset
    UserName = 'frxPlanLanctoConsumo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID_LOGRAD=R_ID_LOGRAD'
      'R_DESCR_LOGRAD=R_DESCR_LOGRAD'
      'R_ID_UNID_CONSUM=R_ID_UNID_CONSUM'
      'R_DT_LIGACAO=R_DT_LIGACAO'
      'R_NOME_PESSOA=R_NOME_PESSOA'
      'R_CPF_CNPJ=R_CPF_CNPJ'
      'R_DESCR_CATEG=R_DESCR_CATEG'
      'R_NUM_HIDROM=R_NUM_HIDROM'
      'R_ENDER_NUM_LETRA=R_ENDER_NUM_LETRA'
      'R_ULT_MES=R_ULT_MES'
      'R_PENULT_MES=R_PENULT_MES'
      'R_ULT_LEITURA=R_ULT_LEITURA'
      'R_PENULT_LEITURA=R_PENULT_LEITURA'
      'R_ULT_CONSUMO=R_ULT_CONSUMO'
      'R_PENULT_CONSUMO=R_PENULT_CONSUMO'
      'R_DT_ULT_LEITURA=R_DT_ULT_LEITURA'
      'R_LEITURA_ANTER=R_LEITURA_ANTER'
      'R_LEITURA_ATUAL=R_LEITURA_ATUAL'
      'R_CONSUMO_ATUAL=R_CONSUMO_ATUAL'
      'R_DT_LEITURA_ATUAL=R_DT_LEITURA_ATUAL'
      'R_OBSERVACAO=R_OBSERVACAO')
    DataSet = cdsPlanLanctoConsumo
    BCDToCurrency = False
    Left = 264
    Top = 496
  end
  object qryListaDeCorte: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pBairro'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiLograd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pQtdMin'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesFim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT * from sp_rel_lista_de_corte(:pDistrito,:pBairro,:pMultiL' +
        'ograd,:pQtdMin,:pAnoMesIni,:pAnoMesFim)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 320
    Top = 24
  end
  object provListaDeCorte: TDataSetProvider
    DataSet = qryListaDeCorte
    Left = 336
    Top = 48
  end
  object cdsListaDeCorte: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provListaDeCorte'
    Left = 352
    Top = 72
    object cdsListaDeCorteR_ID_LOGRAD: TIntegerField
      FieldName = 'R_ID_LOGRAD'
    end
    object cdsListaDeCorteR_DESCR_LOGRAD: TStringField
      FieldName = 'R_DESCR_LOGRAD'
      Size = 60
    end
    object cdsListaDeCorteR_ID_UNID_CONSUM: TIntegerField
      FieldName = 'R_ID_UNID_CONSUM'
      DisplayFormat = '0-0;0; '
    end
    object cdsListaDeCorteR_NOME_PESSOA: TStringField
      FieldName = 'R_NOME_PESSOA'
      Size = 60
    end
    object cdsListaDeCorteR_DESCR_TIPO_PESSOA: TStringField
      FieldName = 'R_DESCR_TIPO_PESSOA'
      Size = 15
    end
    object cdsListaDeCorteR_CPF_CNPJ: TStringField
      FieldName = 'R_CPF_CNPJ'
      Size = 18
    end
    object cdsListaDeCorteR_ENDER_NUM_LETRA: TStringField
      FieldName = 'R_ENDER_NUM_LETRA'
      FixedChar = True
      Size = 7
    end
    object cdsListaDeCorteR_DT_LIGACAO: TDateField
      FieldName = 'R_DT_LIGACAO'
    end
    object cdsListaDeCorteR_ANO_MES: TStringField
      FieldName = 'R_ANO_MES'
      FixedChar = True
      Size = 7
    end
    object cdsListaDeCorteR_MES_ANO: TStringField
      FieldName = 'R_MES_ANO'
      FixedChar = True
      Size = 7
    end
    object cdsListaDeCorteR_DT_VENCTO: TDateField
      FieldName = 'R_DT_VENCTO'
    end
    object cdsListaDeCorteR_VALOR: TFMTBCDField
      FieldName = 'R_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsListaDeCorteR_QTD_MESES: TIntegerField
      FieldName = 'R_QTD_MESES'
    end
    object cdsListaDeCorteR_DESCR_CATEG: TStringField
      FieldName = 'R_DESCR_CATEG'
      Size = 30
    end
    object cdsListaDeCorteR_NUM_IMOVEL_ID_UC: TStringField
      FieldName = 'R_NUM_IMOVEL_ID_UC'
    end
    object cdsListaDeCorteR_ENDER_COMPLEMEN: TStringField
      FieldName = 'R_ENDER_COMPLEMEN'
    end
  end
  object frxListaDeCorte: TfrxDBDataset
    UserName = 'frxListaDeCorte'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID_LOGRAD=R_ID_LOGRAD'
      'R_DESCR_LOGRAD=R_DESCR_LOGRAD'
      'R_ID_UNID_CONSUM=R_ID_UNID_CONSUM'
      'R_NOME_PESSOA=R_NOME_PESSOA'
      'R_DESCR_TIPO_PESSOA=R_DESCR_TIPO_PESSOA'
      'R_CPF_CNPJ=R_CPF_CNPJ'
      'R_ENDER_NUM_LETRA=R_ENDER_NUM_LETRA'
      'R_DT_LIGACAO=R_DT_LIGACAO'
      'R_ANO_MES=R_ANO_MES'
      'R_MES_ANO=R_MES_ANO'
      'R_DT_VENCTO=R_DT_VENCTO'
      'R_VALOR=R_VALOR'
      'R_QTD_MESES=R_QTD_MESES'
      'R_DESCR_CATEG=R_DESCR_CATEG'
      'R_NUM_IMOVEL_ID_UC=R_NUM_IMOVEL_ID_UC'
      'R_ENDER_COMPLEMEN=R_ENDER_COMPLEMEN')
    DataSet = cdsListaDeCorte
    BCDToCurrency = False
    Left = 352
    Top = 120
  end
  object qryResumoInadimpBairro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pMultiDistrito'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesFim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      
        'from sp_resumo_inadimp_bairro(:pMultiDistrito,:pAnoMesIni,:pAnoM' +
        'esFim)'
      'order by'
      '   r_id_distrito, r_ano, r_mes')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 376
    Top = 400
  end
  object provResumoInadimpBairro: TDataSetProvider
    DataSet = qryResumoInadimpBairro
    Left = 384
    Top = 432
  end
  object cdsResumoInadimpBairro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provResumoInadimpBairro'
    Left = 392
    Top = 464
    object cdsResumoInadimpBairroR_ID_DISTRITO: TIntegerField
      FieldName = 'R_ID_DISTRITO'
    end
    object cdsResumoInadimpBairroR_DESCR_DISTRITO: TStringField
      FieldName = 'R_DESCR_DISTRITO'
      Size = 30
    end
    object cdsResumoInadimpBairroR_ANO: TStringField
      FieldName = 'R_ANO'
      FixedChar = True
      Size = 4
    end
    object cdsResumoInadimpBairroR_MES: TStringField
      FieldName = 'R_MES'
      FixedChar = True
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_MES: TStringField
      FieldName = 'R_NOME_MES'
      FixedChar = True
      Size = 3
    end
    object cdsResumoInadimpBairroR_ANO_MES: TStringField
      FieldName = 'R_ANO_MES'
      FixedChar = True
      Size = 6
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO01: TStringField
      FieldName = 'R_NOME_BAIRRO01'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO01: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO01'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO02: TStringField
      FieldName = 'R_NOME_BAIRRO02'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO02: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO02'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO03: TStringField
      FieldName = 'R_NOME_BAIRRO03'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO03: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO03'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO04: TStringField
      FieldName = 'R_NOME_BAIRRO04'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO04: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO04'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO05: TStringField
      FieldName = 'R_NOME_BAIRRO05'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO05: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO05'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO06: TStringField
      FieldName = 'R_NOME_BAIRRO06'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO06: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO06'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO07: TStringField
      FieldName = 'R_NOME_BAIRRO07'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO07: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO07'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO08: TStringField
      FieldName = 'R_NOME_BAIRRO08'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO08: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO08'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO09: TStringField
      FieldName = 'R_NOME_BAIRRO09'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO09: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO09'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO10: TStringField
      FieldName = 'R_NOME_BAIRRO10'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO10: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO10'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO11: TStringField
      FieldName = 'R_NOME_BAIRRO11'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO11: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO11'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO12: TStringField
      FieldName = 'R_NOME_BAIRRO12'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO12: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO12'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO13: TStringField
      FieldName = 'R_NOME_BAIRRO13'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO13: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO13'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO14: TStringField
      FieldName = 'R_NOME_BAIRRO14'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO14: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO14'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO15: TStringField
      FieldName = 'R_NOME_BAIRRO15'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO15: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO15'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO16: TStringField
      FieldName = 'R_NOME_BAIRRO16'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO16: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO16'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO17: TStringField
      FieldName = 'R_NOME_BAIRRO17'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO17: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO17'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO18: TStringField
      FieldName = 'R_NOME_BAIRRO18'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO18: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO18'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO19: TStringField
      FieldName = 'R_NOME_BAIRRO19'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO19: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO19'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO20: TStringField
      FieldName = 'R_NOME_BAIRRO20'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO20: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO20'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_NOME_BAIRRO21: TStringField
      FieldName = 'R_NOME_BAIRRO21'
      Size = 10
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO21: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO21'
      Precision = 18
      Size = 2
    end
    object cdsResumoInadimpBairroR_TOT_BAIRRO_ANO_MES: TFMTBCDField
      FieldName = 'R_TOT_BAIRRO_ANO_MES'
      Precision = 18
      Size = 2
    end
  end
  object frxResumoInadimpBairro: TfrxDBDataset
    UserName = 'frxResumoInadimpBairro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID_DISTRITO=R_ID_DISTRITO'
      'R_DESCR_DISTRITO=R_DESCR_DISTRITO'
      'R_ANO=R_ANO'
      'R_MES=R_MES'
      'R_NOME_MES=R_NOME_MES'
      'R_ANO_MES=R_ANO_MES'
      'R_NOME_BAIRRO01=R_NOME_BAIRRO01'
      'R_TOT_BAIRRO01=R_TOT_BAIRRO01'
      'R_NOME_BAIRRO02=R_NOME_BAIRRO02'
      'R_TOT_BAIRRO02=R_TOT_BAIRRO02'
      'R_NOME_BAIRRO03=R_NOME_BAIRRO03'
      'R_TOT_BAIRRO03=R_TOT_BAIRRO03'
      'R_NOME_BAIRRO04=R_NOME_BAIRRO04'
      'R_TOT_BAIRRO04=R_TOT_BAIRRO04'
      'R_NOME_BAIRRO05=R_NOME_BAIRRO05'
      'R_TOT_BAIRRO05=R_TOT_BAIRRO05'
      'R_NOME_BAIRRO06=R_NOME_BAIRRO06'
      'R_TOT_BAIRRO06=R_TOT_BAIRRO06'
      'R_NOME_BAIRRO07=R_NOME_BAIRRO07'
      'R_TOT_BAIRRO07=R_TOT_BAIRRO07'
      'R_NOME_BAIRRO08=R_NOME_BAIRRO08'
      'R_TOT_BAIRRO08=R_TOT_BAIRRO08'
      'R_NOME_BAIRRO09=R_NOME_BAIRRO09'
      'R_TOT_BAIRRO09=R_TOT_BAIRRO09'
      'R_NOME_BAIRRO10=R_NOME_BAIRRO10'
      'R_TOT_BAIRRO10=R_TOT_BAIRRO10'
      'R_NOME_BAIRRO11=R_NOME_BAIRRO11'
      'R_TOT_BAIRRO11=R_TOT_BAIRRO11'
      'R_NOME_BAIRRO12=R_NOME_BAIRRO12'
      'R_TOT_BAIRRO12=R_TOT_BAIRRO12'
      'R_NOME_BAIRRO13=R_NOME_BAIRRO13'
      'R_TOT_BAIRRO13=R_TOT_BAIRRO13'
      'R_NOME_BAIRRO14=R_NOME_BAIRRO14'
      'R_TOT_BAIRRO14=R_TOT_BAIRRO14'
      'R_NOME_BAIRRO15=R_NOME_BAIRRO15'
      'R_TOT_BAIRRO15=R_TOT_BAIRRO15'
      'R_NOME_BAIRRO16=R_NOME_BAIRRO16'
      'R_TOT_BAIRRO16=R_TOT_BAIRRO16'
      'R_NOME_BAIRRO17=R_NOME_BAIRRO17'
      'R_TOT_BAIRRO17=R_TOT_BAIRRO17'
      'R_NOME_BAIRRO18=R_NOME_BAIRRO18'
      'R_TOT_BAIRRO18=R_TOT_BAIRRO18'
      'R_NOME_BAIRRO19=R_NOME_BAIRRO19'
      'R_TOT_BAIRRO19=R_TOT_BAIRRO19'
      'R_NOME_BAIRRO20=R_NOME_BAIRRO20'
      'R_TOT_BAIRRO20=R_TOT_BAIRRO20'
      'R_NOME_BAIRRO21=R_NOME_BAIRRO21'
      'R_TOT_BAIRRO21=R_TOT_BAIRRO21'
      'R_TOT_BAIRRO_ANO_MES=R_TOT_BAIRRO_ANO_MES')
    DataSet = cdsResumoInadimpBairro
    BCDToCurrency = False
    Left = 408
    Top = 496
  end
  object qryFatAvulsa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDate
        Name = 'pDtIni'
        ParamType = ptInput
        Value = 40544d
      end
      item
        DataType = ftDate
        Name = 'pDtFim'
        ParamType = ptInput
        Value = 40908d
      end
      item
        DataType = ftString
        Name = 'pSituacao'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from sp_rel_fatura_avulsa(:pDtIni,:pdtFim,:pSituacao)'
      'order by r_dt_emissao, r_id, r_item'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 544
    Top = 400
  end
  object provFatAvulsa: TDataSetProvider
    DataSet = qryFatAvulsa
    Left = 544
    Top = 448
  end
  object cdsFatAvulsa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provFatAvulsa'
    Left = 549
    Top = 496
    object cdsFatAvulsaR_ID: TIntegerField
      FieldName = 'R_ID'
    end
    object cdsFatAvulsaR_DT_EMISSAO: TDateField
      FieldName = 'R_DT_EMISSAO'
    end
    object cdsFatAvulsaR_DT_VENCTO: TDateField
      FieldName = 'R_DT_VENCTO'
    end
    object cdsFatAvulsaR_ID_UC: TIntegerField
      FieldName = 'R_ID_UC'
    end
    object cdsFatAvulsaR_DESCR_SITUAC: TStringField
      FieldName = 'R_DESCR_SITUAC'
    end
    object cdsFatAvulsaR_NOME_PESSOA: TStringField
      FieldName = 'R_NOME_PESSOA'
      Size = 60
    end
    object cdsFatAvulsaR_CPF_CNPJ: TStringField
      FieldName = 'R_CPF_CNPJ'
      Size = 18
    end
    object cdsFatAvulsaR_DESCR_CATEG: TStringField
      FieldName = 'R_DESCR_CATEG'
      Size = 30
    end
    object cdsFatAvulsaR_ENDER_LOGRAD: TStringField
      FieldName = 'R_ENDER_LOGRAD'
      Size = 120
    end
    object cdsFatAvulsaR_ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'R_ENDER_DESCR_BAIRRO'
      Size = 50
    end
    object cdsFatAvulsaR_DESCR_DISTRITO: TStringField
      FieldName = 'R_DESCR_DISTRITO'
      Size = 50
    end
    object cdsFatAvulsaR_VAL_TOTAL: TFMTBCDField
      FieldName = 'R_VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaR_DT_PAGTO: TDateField
      FieldName = 'R_DT_PAGTO'
    end
    object cdsFatAvulsaR_VAL_PAGO: TFMTBCDField
      FieldName = 'R_VAL_PAGO'
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaR_ITEM: TIntegerField
      FieldName = 'R_ITEM'
    end
    object cdsFatAvulsaR_COD_ITEM: TIntegerField
      FieldName = 'R_COD_ITEM'
    end
    object cdsFatAvulsaR_REF_ITEM: TStringField
      FieldName = 'R_REF_ITEM'
      Size = 7
    end
    object cdsFatAvulsaR_DESCR_ITEM: TStringField
      FieldName = 'R_DESCR_ITEM'
      Size = 40
    end
    object cdsFatAvulsaR_VAL_ITEM: TFMTBCDField
      FieldName = 'R_VAL_ITEM'
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaR_DESCONTOS: TFMTBCDField
      FieldName = 'R_DESCONTOS'
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaR_VAL_MULTA: TFMTBCDField
      FieldName = 'R_VAL_MULTA'
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaR_VAL_JUROS: TFMTBCDField
      FieldName = 'R_VAL_JUROS'
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaR_ITEM_VAL_TOTAL: TFMTBCDField
      FieldName = 'R_ITEM_VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaR_INCIDIR_MULTA: TStringField
      FieldName = 'R_INCIDIR_MULTA'
      FixedChar = True
      Size = 1
    end
    object cdsFatAvulsaR_DESCR_LOCAL_PAGTO: TStringField
      FieldName = 'R_DESCR_LOCAL_PAGTO'
      Size = 40
    end
    object cdsFatAvulsaR_OBSERV: TStringField
      FieldName = 'R_OBSERV'
      Size = 40
    end
  end
  object frxFatAvulsa: TfrxDBDataset
    UserName = 'frxFatAvulsa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID=R_ID'
      'R_DT_EMISSAO=R_DT_EMISSAO'
      'R_DT_VENCTO=R_DT_VENCTO'
      'R_ID_UC=R_ID_UC'
      'R_DESCR_SITUAC=R_DESCR_SITUAC'
      'R_NOME_PESSOA=R_NOME_PESSOA'
      'R_CPF_CNPJ=R_CPF_CNPJ'
      'R_DESCR_CATEG=R_DESCR_CATEG'
      'R_ENDER_LOGRAD=R_ENDER_LOGRAD'
      'R_ENDER_DESCR_BAIRRO=R_ENDER_DESCR_BAIRRO'
      'R_DESCR_DISTRITO=R_DESCR_DISTRITO'
      'R_VAL_TOTAL=R_VAL_TOTAL'
      'R_DT_PAGTO=R_DT_PAGTO'
      'R_VAL_PAGO=R_VAL_PAGO'
      'R_ITEM=R_ITEM'
      'R_COD_ITEM=R_COD_ITEM'
      'R_REF_ITEM=R_REF_ITEM'
      'R_DESCR_ITEM=R_DESCR_ITEM'
      'R_VAL_ITEM=R_VAL_ITEM'
      'R_DESCONTOS=R_DESCONTOS'
      'R_VAL_MULTA=R_VAL_MULTA'
      'R_VAL_JUROS=R_VAL_JUROS'
      'R_ITEM_VAL_TOTAL=R_ITEM_VAL_TOTAL'
      'R_INCIDIR_MULTA=R_INCIDIR_MULTA'
      'R_DESCR_LOCAL_PAGTO=R_DESCR_LOCAL_PAGTO'
      'R_OBSERV=R_OBSERV')
    DataSet = cdsFatAvulsa
    BCDToCurrency = False
    Left = 550
    Top = 544
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 32
    Top = 240
  end
  object qryHistFatura: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
        Value = '36751'
      end
      item
        DataType = ftString
        Name = 'pAnoMesIni'
        ParamType = ptInput
        Size = 7
        Value = '200001'
      end
      item
        DataType = ftDate
        Name = 'pDataHoje'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '* '
      'from '
      'sp_hist_fatura_unid_consum(:pUnidConsum,:pAnoMesIni,:pDataHoje)'
      'order by'
      'r_ano_mes')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 240
    Top = 216
  end
  object provHistFatura: TDataSetProvider
    DataSet = qryHistFatura
    Left = 256
    Top = 240
  end
  object cdsHistFatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provHistFatura'
    Left = 272
    Top = 280
    object cdsHistFaturaR_ANO_MES: TStringField
      Alignment = taCenter
      FieldName = 'R_ANO_MES'
      FixedChar = True
      Size = 6
    end
    object cdsHistFaturaR_MES_ANO_FTDO: TStringField
      Alignment = taCenter
      FieldName = 'R_MES_ANO_FTDO'
      FixedChar = True
      Size = 7
    end
    object cdsHistFaturaR_DT_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'R_DT_EMISSAO'
    end
    object cdsHistFaturaR_DT_VENCTO: TDateField
      Alignment = taCenter
      FieldName = 'R_DT_VENCTO'
    end
    object cdsHistFaturaR_VAL_FATURA: TFMTBCDField
      FieldName = 'R_VAL_FATURA'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsHistFaturaR_DT_PAGTO: TDateField
      Alignment = taCenter
      FieldName = 'R_DT_PAGTO'
    end
    object cdsHistFaturaR_VAL_DESCONTO: TFMTBCDField
      FieldName = 'R_VAL_DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsHistFaturaR_VAL_MULTA: TFMTBCDField
      FieldName = 'R_VAL_MULTA'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsHistFaturaR_VAL_PAGTO: TFMTBCDField
      FieldName = 'R_VAL_PAGTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsHistFaturaR_ID_LOCAL_PAGTO: TIntegerField
      FieldName = 'R_ID_LOCAL_PAGTO'
    end
    object cdsHistFaturaR_DESCR_LOCAL_PAGTO: TStringField
      FieldName = 'R_DESCR_LOCAL_PAGTO'
      Size = 40
    end
    object cdsHistFaturaR_DESCR_SITUACAO: TStringField
      FieldName = 'R_DESCR_SITUACAO'
    end
    object cdsHistFaturaR_SITUACAO: TStringField
      FieldName = 'R_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsHistFaturaR_VAL_DEBITO: TFMTBCDField
      FieldName = 'R_VAL_DEBITO'
      Precision = 18
      Size = 2
    end
    object cdsHistFaturaR_SIT_CONT: TIntegerField
      FieldName = 'R_SIT_CONT'
    end
  end
  object frxHistFatura: TfrxDBDataset
    UserName = 'frxHistFatura'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ANO_MES=R_ANO_MES'
      'R_MES_ANO_FTDO=R_MES_ANO_FTDO'
      'R_DT_EMISSAO=R_DT_EMISSAO'
      'R_DT_VENCTO=R_DT_VENCTO'
      'R_VAL_FATURA=R_VAL_FATURA'
      'R_DT_PAGTO=R_DT_PAGTO'
      'R_VAL_DESCONTO=R_VAL_DESCONTO'
      'R_VAL_MULTA=R_VAL_MULTA'
      'R_VAL_PAGTO=R_VAL_PAGTO'
      'R_ID_LOCAL_PAGTO=R_ID_LOCAL_PAGTO'
      'R_DESCR_LOCAL_PAGTO=R_DESCR_LOCAL_PAGTO'
      'R_DESCR_SITUACAO=R_DESCR_SITUACAO'
      'R_SITUACAO=R_SITUACAO'
      'R_VAL_DEBITO=R_VAL_DEBITO'
      'R_SIT_CONT=R_SIT_CONT')
    DataSet = cdsHistFatura
    BCDToCurrency = False
    Left = 288
    Top = 312
  end
  object qryUC_Hist: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '  id, NOME_PESSOA, cpf_cnpj_ftdo, dt_ligacao, NUM_LIGACAO,'
      '  ender_id_distrito, ender_id_bairro, ender_id_lograd,'
      '  ENDER_DESCR_LOGRAD,'
      '  ENDER_UC_NUM_LETRA, ENDER_DESCR_BAIRRO, ENDER_DESCR_DISTRITO,'
      
        '  DESCR_tipo_unid_consum, descr_situacao, dt_ult_corte, dt_ult_r' +
        'elig,'
      '  ender_id_distrito2, ender_id_bairro2, ender_id_lograd2,'
      '  ENDER_DESCR_LOGRAD2,'
      
        '  ENDER_UC_NUM_LETRA2, ENDER_DESCR_BAIRRO2, ENDER_DESCR_DISTRITO' +
        '2,'
      '  id_ftdo'
      'FROM'
      '  UNID_CONSUMIDORA'
      'WHERE'
      '   ID = :pId')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 320
    Top = 216
    object qryUC_HistNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object qryUC_HistCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object qryUC_HistDT_LIGACAO: TDateField
      FieldName = 'DT_LIGACAO'
    end
    object qryUC_HistNUM_LIGACAO: TStringField
      FieldName = 'NUM_LIGACAO'
      FixedChar = True
      Size = 10
    end
    object qryUC_HistENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object qryUC_HistENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
    object qryUC_HistENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object qryUC_HistENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object qryUC_HistDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object qryUC_HistDESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 18
    end
    object qryUC_HistDT_ULT_CORTE: TDateField
      FieldName = 'DT_ULT_CORTE'
    end
    object qryUC_HistDT_ULT_RELIG: TDateField
      FieldName = 'DT_ULT_RELIG'
    end
    object qryUC_HistENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object qryUC_HistENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object qryUC_HistENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryUC_HistENDER_ID_DISTRITO2: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO2'
    end
    object qryUC_HistENDER_ID_BAIRRO2: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO2'
    end
    object qryUC_HistENDER_ID_LOGRAD2: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD2'
    end
    object qryUC_HistENDER_DESCR_LOGRAD2: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD2'
      Size = 50
    end
    object qryUC_HistENDER_UC_NUM_LETRA2: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA2'
      Size = 7
    end
    object qryUC_HistENDER_DESCR_BAIRRO2: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO2'
      Size = 40
    end
    object qryUC_HistENDER_DESCR_DISTRITO2: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO2'
      Size = 40
    end
    object qryUC_HistID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '0-0;0; '
    end
    object qryUC_HistID_FTDO: TStringField
      FieldName = 'ID_FTDO'
      Size = 11
    end
  end
  object frxUC_Hist: TfrxDBDataset
    UserName = 'frxUC_Hist'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME_PESSOA=NOME_PESSOA'
      'CPF_CNPJ_FTDO=CPF_CNPJ_FTDO'
      'DT_LIGACAO=DT_LIGACAO'
      'NUM_LIGACAO=NUM_LIGACAO'
      'ENDER_DESCR_LOGRAD=ENDER_DESCR_LOGRAD'
      'ENDER_UC_NUM_LETRA=ENDER_UC_NUM_LETRA'
      'ENDER_DESCR_BAIRRO=ENDER_DESCR_BAIRRO'
      'ENDER_DESCR_DISTRITO=ENDER_DESCR_DISTRITO'
      'DESCR_TIPO_UNID_CONSUM=DESCR_TIPO_UNID_CONSUM'
      'DESCR_SITUACAO=DESCR_SITUACAO'
      'DT_ULT_CORTE=DT_ULT_CORTE'
      'DT_ULT_RELIG=DT_ULT_RELIG'
      'ENDER_ID_DISTRITO=ENDER_ID_DISTRITO'
      'ENDER_ID_BAIRRO=ENDER_ID_BAIRRO'
      'ENDER_ID_LOGRAD=ENDER_ID_LOGRAD'
      'ENDER_ID_DISTRITO2=ENDER_ID_DISTRITO2'
      'ENDER_ID_BAIRRO2=ENDER_ID_BAIRRO2'
      'ENDER_ID_LOGRAD2=ENDER_ID_LOGRAD2'
      'ENDER_DESCR_LOGRAD2=ENDER_DESCR_LOGRAD2'
      'ENDER_UC_NUM_LETRA2=ENDER_UC_NUM_LETRA2'
      'ENDER_DESCR_BAIRRO2=ENDER_DESCR_BAIRRO2'
      'ENDER_DESCR_DISTRITO2=ENDER_DESCR_DISTRITO2'
      'ID=ID'
      'ID_FTDO=ID_FTDO')
    DataSet = qryUC_Hist
    BCDToCurrency = False
    Left = 328
    Top = 264
  end
  object qryDecAnualQuitaUC: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'ano'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'bairro'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Distrito'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'MultiLograd'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UC_ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'UC_fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      'd.*,'
      'cast(coalesce(d.via_emitida,'#39'0'#39') as integer)+1 as num_via,'
      
        'd1.ender_descr_lograd2, d1.ender_complemento2, d1.ender_descr_ba' +
        'irro2, d1.ender_descr_distrito2'
      'from'
      'dec_anual_quitacao d,'
      'unid_consumidora d1'
      'where'
      '(d.ano = :ano) and'
      '(d.ender_id_bairro = :bairro) and'
      '(d.ender_id_distrito = :Distrito) and'
      
        '(position('#39';'#39'||trim(cast(d.ender_id_lograd as "VARCHAR(2048)"))|' +
        '|'#39';'#39
      ' in :MultiLograd) > 0) and'
      '(d.id_unid_consum >= :UC_ini) and'
      '(d.id_unid_consum <= :UC_fim) and'
      '(d1.id = d.id_unid_consum)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 648
    Top = 400
  end
  object provDecAnualQuitaUC: TDataSetProvider
    DataSet = qryDecAnualQuitaUC
    Left = 649
    Top = 448
  end
  object cdsDecAnualQuitaUC: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provDecAnualQuitaUC'
    Left = 650
    Top = 496
    object cdsDecAnualQuitaUCANO: TStringField
      FieldName = 'ANO'
      Required = True
      FixedChar = True
      Size = 4
    end
    object cdsDecAnualQuitaUCID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      Required = True
    end
    object cdsDecAnualQuitaUCVENCTO_01: TDateField
      FieldName = 'VENCTO_01'
    end
    object cdsDecAnualQuitaUCVALOR_01: TFMTBCDField
      FieldName = 'VALOR_01'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_01: TDateField
      FieldName = 'DT_PAGTO_01'
    end
    object cdsDecAnualQuitaUCVENCTO_02: TDateField
      FieldName = 'VENCTO_02'
    end
    object cdsDecAnualQuitaUCVALOR_02: TFMTBCDField
      FieldName = 'VALOR_02'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_02: TDateField
      FieldName = 'DT_PAGTO_02'
    end
    object cdsDecAnualQuitaUCVENCTO_03: TDateField
      FieldName = 'VENCTO_03'
    end
    object cdsDecAnualQuitaUCVALOR_03: TFMTBCDField
      FieldName = 'VALOR_03'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_03: TDateField
      FieldName = 'DT_PAGTO_03'
    end
    object cdsDecAnualQuitaUCVENCTO_04: TDateField
      FieldName = 'VENCTO_04'
    end
    object cdsDecAnualQuitaUCVALOR_04: TFMTBCDField
      FieldName = 'VALOR_04'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_04: TDateField
      FieldName = 'DT_PAGTO_04'
    end
    object cdsDecAnualQuitaUCVENCTO_05: TDateField
      FieldName = 'VENCTO_05'
    end
    object cdsDecAnualQuitaUCVALOR_05: TFMTBCDField
      FieldName = 'VALOR_05'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_05: TDateField
      FieldName = 'DT_PAGTO_05'
    end
    object cdsDecAnualQuitaUCVENCTO_06: TDateField
      FieldName = 'VENCTO_06'
    end
    object cdsDecAnualQuitaUCVALOR_06: TFMTBCDField
      FieldName = 'VALOR_06'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_06: TDateField
      FieldName = 'DT_PAGTO_06'
    end
    object cdsDecAnualQuitaUCVENCTO_07: TDateField
      FieldName = 'VENCTO_07'
    end
    object cdsDecAnualQuitaUCVALOR_07: TFMTBCDField
      FieldName = 'VALOR_07'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_07: TDateField
      FieldName = 'DT_PAGTO_07'
    end
    object cdsDecAnualQuitaUCVENCTO_08: TDateField
      FieldName = 'VENCTO_08'
    end
    object cdsDecAnualQuitaUCVALOR_08: TFMTBCDField
      FieldName = 'VALOR_08'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_08: TDateField
      FieldName = 'DT_PAGTO_08'
    end
    object cdsDecAnualQuitaUCVENCTO_09: TDateField
      FieldName = 'VENCTO_09'
    end
    object cdsDecAnualQuitaUCVALOR_09: TFMTBCDField
      FieldName = 'VALOR_09'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_09: TDateField
      FieldName = 'DT_PAGTO_09'
    end
    object cdsDecAnualQuitaUCVENCTO_10: TDateField
      FieldName = 'VENCTO_10'
    end
    object cdsDecAnualQuitaUCVALOR_10: TFMTBCDField
      FieldName = 'VALOR_10'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_10: TDateField
      FieldName = 'DT_PAGTO_10'
    end
    object cdsDecAnualQuitaUCVENCTO_11: TDateField
      FieldName = 'VENCTO_11'
    end
    object cdsDecAnualQuitaUCVALOR_11: TFMTBCDField
      FieldName = 'VALOR_11'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_11: TDateField
      FieldName = 'DT_PAGTO_11'
    end
    object cdsDecAnualQuitaUCVENCTO_12: TDateField
      FieldName = 'VENCTO_12'
    end
    object cdsDecAnualQuitaUCVALOR_12: TFMTBCDField
      FieldName = 'VALOR_12'
      Precision = 18
      Size = 2
    end
    object cdsDecAnualQuitaUCDT_PAGTO_12: TDateField
      FieldName = 'DT_PAGTO_12'
    end
    object cdsDecAnualQuitaUCVIA_EMITIDA: TStringField
      FieldName = 'VIA_EMITIDA'
      FixedChar = True
      Size = 1
    end
    object cdsDecAnualQuitaUCENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cdsDecAnualQuitaUCENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cdsDecAnualQuitaUCENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
    object cdsDecAnualQuitaUCENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cdsDecAnualQuitaUCENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsDecAnualQuitaUCENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cdsDecAnualQuitaUCENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsDecAnualQuitaUCID_UC_FTDO: TStringField
      FieldName = 'ID_UC_FTDO'
      Size = 11
    end
    object cdsDecAnualQuitaUCNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsDecAnualQuitaUCCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 80
    end
    object cdsDecAnualQuitaUCNUM_LIGACAO: TStringField
      FieldName = 'NUM_LIGACAO'
      FixedChar = True
      Size = 10
    end
    object cdsDecAnualQuitaUCNUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      FixedChar = True
      Size = 12
    end
    object cdsDecAnualQuitaUCDT_LIGACAO: TDateField
      FieldName = 'DT_LIGACAO'
    end
    object cdsDecAnualQuitaUCDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsDecAnualQuitaUCENDER_ID_LOGRAD2: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD2'
    end
    object cdsDecAnualQuitaUCENDER_UC_NUM_LETRA2: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA2'
      Size = 7
    end
    object cdsDecAnualQuitaUCENDER_ID_BAIRRO2: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO2'
    end
    object cdsDecAnualQuitaUCENDER_ID_DISTRITO2: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO2'
    end
    object cdsDecAnualQuitaUCDESCR_CATEGORIA: TStringField
      FieldName = 'DESCR_CATEGORIA'
      FixedChar = True
      Size = 11
    end
    object cdsDecAnualQuitaUCENDER_DESCR_LOGRAD2: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD2'
      Size = 50
    end
    object cdsDecAnualQuitaUCENDER_DESCR_BAIRRO2: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO2'
      Size = 40
    end
    object cdsDecAnualQuitaUCENDER_DESCR_DISTRITO2: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO2'
      Size = 40
    end
    object cdsDecAnualQuitaUCENDER_COMPLEMENTO2: TStringField
      FieldName = 'ENDER_COMPLEMENTO2'
      Size = 30
    end
    object cdsDecAnualQuitaUCNUM_VIA: TLargeintField
      FieldName = 'NUM_VIA'
    end
    object cdsDecAnualQuitaUCENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
  end
  object frxDecAnualQuitaUC: TfrxDBDataset
    UserName = 'frxDecAnualQuitaUC'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO=ANO'
      'ID_UNID_CONSUM=ID_UNID_CONSUM'
      'VENCTO_01=VENCTO_01'
      'VALOR_01=VALOR_01'
      'DT_PAGTO_01=DT_PAGTO_01'
      'VENCTO_02=VENCTO_02'
      'VALOR_02=VALOR_02'
      'DT_PAGTO_02=DT_PAGTO_02'
      'VENCTO_03=VENCTO_03'
      'VALOR_03=VALOR_03'
      'DT_PAGTO_03=DT_PAGTO_03'
      'VENCTO_04=VENCTO_04'
      'VALOR_04=VALOR_04'
      'DT_PAGTO_04=DT_PAGTO_04'
      'VENCTO_05=VENCTO_05'
      'VALOR_05=VALOR_05'
      'DT_PAGTO_05=DT_PAGTO_05'
      'VENCTO_06=VENCTO_06'
      'VALOR_06=VALOR_06'
      'DT_PAGTO_06=DT_PAGTO_06'
      'VENCTO_07=VENCTO_07'
      'VALOR_07=VALOR_07'
      'DT_PAGTO_07=DT_PAGTO_07'
      'VENCTO_08=VENCTO_08'
      'VALOR_08=VALOR_08'
      'DT_PAGTO_08=DT_PAGTO_08'
      'VENCTO_09=VENCTO_09'
      'VALOR_09=VALOR_09'
      'DT_PAGTO_09=DT_PAGTO_09'
      'VENCTO_10=VENCTO_10'
      'VALOR_10=VALOR_10'
      'DT_PAGTO_10=DT_PAGTO_10'
      'VENCTO_11=VENCTO_11'
      'VALOR_11=VALOR_11'
      'DT_PAGTO_11=DT_PAGTO_11'
      'VENCTO_12=VENCTO_12'
      'VALOR_12=VALOR_12'
      'DT_PAGTO_12=DT_PAGTO_12'
      'VIA_EMITIDA=VIA_EMITIDA'
      'ENDER_ID_LOGRAD=ENDER_ID_LOGRAD'
      'ENDER_DESCR_LOGRAD=ENDER_DESCR_LOGRAD'
      'ENDER_UC_NUM_LETRA=ENDER_UC_NUM_LETRA'
      'ENDER_COMPLEMENTO=ENDER_COMPLEMENTO'
      'ENDER_ID_BAIRRO=ENDER_ID_BAIRRO'
      'ENDER_ID_DISTRITO=ENDER_ID_DISTRITO'
      'ENDER_DESCR_DISTRITO=ENDER_DESCR_DISTRITO'
      'ID_UC_FTDO=ID_UC_FTDO'
      'NOME_PESSOA=NOME_PESSOA'
      'CPF_CNPJ=CPF_CNPJ'
      'NUM_LIGACAO=NUM_LIGACAO'
      'NUM_HIDROMETRO=NUM_HIDROMETRO'
      'DT_LIGACAO=DT_LIGACAO'
      'DT_EMISSAO=DT_EMISSAO'
      'ENDER_ID_LOGRAD2=ENDER_ID_LOGRAD2'
      'ENDER_UC_NUM_LETRA2=ENDER_UC_NUM_LETRA2'
      'ENDER_ID_BAIRRO2=ENDER_ID_BAIRRO2'
      'ENDER_ID_DISTRITO2=ENDER_ID_DISTRITO2'
      'DESCR_CATEGORIA=DESCR_CATEGORIA'
      'ENDER_DESCR_LOGRAD2=ENDER_DESCR_LOGRAD2'
      'ENDER_DESCR_BAIRRO2=ENDER_DESCR_BAIRRO2'
      'ENDER_DESCR_DISTRITO2=ENDER_DESCR_DISTRITO2'
      'ENDER_COMPLEMENTO2=ENDER_COMPLEMENTO2'
      'NUM_VIA=NUM_VIA'
      'ENDER_DESCR_BAIRRO=ENDER_DESCR_BAIRRO')
    DataSet = cdsDecAnualQuitaUC
    BCDToCurrency = False
    Left = 653
    Top = 544
  end
end
