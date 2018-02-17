object dmTeste: TdmTeste
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 15
  Top = 143
  Height = 626
  Width = 1002
  object qryConfigOrgao: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    RAZAO_SOCIAL,'
      '    SIGLA,'
      '    CNPJ,'
      '    TIPO_ORGAO,'
      '    ENDER_LOGRAD,'
      '    ENDER_NUM,'
      '    ENDER_BAIRRO,'
      '    ENDER_CIDADE,'
      '    ENDER_CEP,'
      '    ENDER_UF,'
      '    TELEFONE,'
      '    NOME_DIR_DRH,'
      '    COD_CNAE,'
      '    COD_FPAS,'
      '    COD_NATUREZA_JURIDICA,'
      '    COD_MUNICIPIO_RAIS,'
      '    COD_MUNICIPIO_TCM,'
      '    BRASAO,'
      '    LOGO_ADMIN,'
      '    DESCR_TIPO_ORGAO'
      'FROM'
      '    CONFIG_ORGAO'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 88
    Top = 8
    object qryConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Required = True
      Size = 60
    end
    object qryConfigOrgaoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object qryConfigOrgaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Required = True
      Size = 14
    end
    object qryConfigOrgaoTIPO_ORGAO: TIntegerField
      FieldName = 'TIPO_ORGAO'
      Required = True
    end
    object qryConfigOrgaoENDER_LOGRAD: TStringField
      FieldName = 'ENDER_LOGRAD'
      Size = 80
    end
    object qryConfigOrgaoENDER_NUM: TStringField
      FieldName = 'ENDER_NUM'
      Size = 10
    end
    object qryConfigOrgaoENDER_BAIRRO: TStringField
      FieldName = 'ENDER_BAIRRO'
      Size = 40
    end
    object qryConfigOrgaoENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
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
    object qryConfigOrgaoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object qryConfigOrgaoNOME_DIR_DRH: TStringField
      FieldName = 'NOME_DIR_DRH'
      Size = 30
    end
    object qryConfigOrgaoCOD_CNAE: TIntegerField
      FieldName = 'COD_CNAE'
    end
    object qryConfigOrgaoCOD_FPAS: TIntegerField
      FieldName = 'COD_FPAS'
    end
    object qryConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField
      FieldName = 'COD_NATUREZA_JURIDICA'
    end
    object qryConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField
      FieldName = 'COD_MUNICIPIO_RAIS'
    end
    object qryConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField
      FieldName = 'COD_MUNICIPIO_TCM'
    end
    object qryConfigOrgaoBRASAO: TBlobField
      FieldName = 'BRASAO'
      Size = 1
    end
    object qryConfigOrgaoDESCR_TIPO_ORGAO: TStringField
      FieldName = 'DESCR_TIPO_ORGAO'
      FixedChar = True
    end
    object qryConfigOrgaoLOGO_ADMIN: TBlobField
      FieldName = 'LOGO_ADMIN'
      Size = 1
    end
  end
  object provConfigOrgao: TDataSetProvider
    DataSet = qryConfigOrgao
    Left = 144
    Top = 8
  end
  object cdsConfigOrgao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provConfigOrgao'
    Left = 208
    Top = 8
    object cdsConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Required = True
      Size = 60
    end
    object cdsConfigOrgaoSIGLA: TStringField
      FieldName = 'SIGLA'
      Size = 10
    end
    object cdsConfigOrgaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Required = True
      Size = 14
    end
    object cdsConfigOrgaoTIPO_ORGAO: TIntegerField
      FieldName = 'TIPO_ORGAO'
      Required = True
    end
    object cdsConfigOrgaoENDER_LOGRAD: TStringField
      FieldName = 'ENDER_LOGRAD'
      Size = 80
    end
    object cdsConfigOrgaoENDER_NUM: TStringField
      FieldName = 'ENDER_NUM'
      Size = 10
    end
    object cdsConfigOrgaoENDER_BAIRRO: TStringField
      FieldName = 'ENDER_BAIRRO'
      Size = 40
    end
    object cdsConfigOrgaoENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
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
    object cdsConfigOrgaoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object cdsConfigOrgaoNOME_DIR_DRH: TStringField
      FieldName = 'NOME_DIR_DRH'
      Size = 30
    end
    object cdsConfigOrgaoCOD_CNAE: TIntegerField
      FieldName = 'COD_CNAE'
    end
    object cdsConfigOrgaoCOD_FPAS: TIntegerField
      FieldName = 'COD_FPAS'
    end
    object cdsConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField
      FieldName = 'COD_NATUREZA_JURIDICA'
    end
    object cdsConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField
      FieldName = 'COD_MUNICIPIO_RAIS'
    end
    object cdsConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField
      FieldName = 'COD_MUNICIPIO_TCM'
    end
    object cdsConfigOrgaoBRASAO: TBlobField
      FieldName = 'BRASAO'
      Size = 1
    end
    object cdsConfigOrgaoLOGO_ADMIN: TBlobField
      FieldName = 'LOGO_ADMIN'
      Size = 1
    end
    object cdsConfigOrgaoDESCR_TIPO_ORGAO: TStringField
      FieldName = 'DESCR_TIPO_ORGAO'
      FixedChar = True
    end
    object cdsConfigOrgaoNOME_SYS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'NOME_SYS'
      Size = 120
    end
    object cdsConfigOrgaoTITULO_REL1: TWideStringField
      FieldKind = fkInternalCalc
      FieldName = 'TITULO_REL1'
      Size = 255
    end
    object cdsConfigOrgaoTITULO_REL2: TWideStringField
      FieldKind = fkInternalCalc
      FieldName = 'TITULO_REL2'
      Size = 255
    end
  end
  object qryHistFinancServidor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pIdServidor'
        ParamType = ptInput
        Value = '59521'
      end
      item
        DataType = ftString
        Name = 'pAnoMesIni'
        ParamType = ptInput
        Size = 7
        Value = '201101'
      end
      item
        DataType = ftString
        Name = 'pAnoMesFim'
        ParamType = ptInput
        Size = 7
        Value = '201106'
      end>
    SQL.Strings = (
      'select'
      
        'd.ano_mes||d.parcela as ano_mes_parcela, d.mes_ano, d.descr_parc' +
        'ela, d.ano_mes,'
      
        'd.parcela, d.id_servidor, d.tot_vencto, d.tot_desconto, d.sal_li' +
        'quido,'
      'd1.id_sub_unid_orcament, d1.descr_sub_und_orcam,'
      'd1.id_cargo, d1.descr_cargo, d1.dt_admissao, d1.id_unid_lotacao,'
      'd1.descr_unid_lotacao, d1.descr_efetivo, d1.id_progres_sal,'
      'd1.vencto_base_cargo, d1.descr_tipo_sal, d1.id_est_funcional,'
      'd1.descr_est_funcional'
      'from'
      'base_calc_mes_servidor d,'
      'inicializa_mes_servidor d1'
      'where'
      '(d.id_servidor = :pIdServidor) and'
      '(d.ano_mes >= :pAnoMesIni) and'
      '(d.ano_mes <= :pAnoMesFim) and'
      '(d1.id_servidor = d.id_servidor) and'
      '(d1.ano_mes = d.ano_mes)'
      'order by'
      'ano_mes_parcela')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 512
    Top = 8
    object qryHistFinancServidorANO_MES_PARCELA: TStringField
      FieldName = 'ANO_MES_PARCELA'
      Required = True
      Size = 7
    end
    object qryHistFinancServidorMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 13
    end
    object qryHistFinancServidorDESCR_PARCELA: TStringField
      FieldName = 'DESCR_PARCELA'
      FixedChar = True
      Size = 15
    end
    object qryHistFinancServidorANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object qryHistFinancServidorPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryHistFinancServidorID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object qryHistFinancServidorTOT_VENCTO: TFMTBCDField
      FieldName = 'TOT_VENCTO'
      Precision = 15
      Size = 2
    end
    object qryHistFinancServidorTOT_DESCONTO: TFMTBCDField
      FieldName = 'TOT_DESCONTO'
      Precision = 15
      Size = 2
    end
    object qryHistFinancServidorSAL_LIQUIDO: TFMTBCDField
      FieldName = 'SAL_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object qryHistFinancServidorID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object qryHistFinancServidorDESCR_SUB_UND_ORCAM: TStringField
      FieldName = 'DESCR_SUB_UND_ORCAM'
      Size = 60
    end
    object qryHistFinancServidorID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
      Required = True
    end
    object qryHistFinancServidorDESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object qryHistFinancServidorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object qryHistFinancServidorID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object qryHistFinancServidorDESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object qryHistFinancServidorDESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object qryHistFinancServidorID_PROGRES_SAL: TIntegerField
      FieldName = 'ID_PROGRES_SAL'
    end
    object qryHistFinancServidorVENCTO_BASE_CARGO: TFMTBCDField
      FieldName = 'VENCTO_BASE_CARGO'
      Precision = 15
      Size = 4
    end
    object qryHistFinancServidorDESCR_TIPO_SAL: TStringField
      FieldName = 'DESCR_TIPO_SAL'
      FixedChar = True
      Size = 9
    end
    object qryHistFinancServidorID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
      Required = True
    end
    object qryHistFinancServidorDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
  end
  object provHistFinancServidor: TDataSetProvider
    DataSet = qryHistFinancServidor
    Left = 512
    Top = 64
  end
  object cdsHistFinancServidor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provHistFinancServidor'
    AfterScroll = cdsHistFinancServidorAfterScroll
    Left = 512
    Top = 120
    object cdsHistFinancServidorANO_MES_PARCELA: TStringField
      FieldName = 'ANO_MES_PARCELA'
      Required = True
      Size = 7
    end
    object cdsHistFinancServidorMES_ANO: TStringField
      FieldName = 'MES_ANO'
      Size = 13
    end
    object cdsHistFinancServidorDESCR_PARCELA: TStringField
      FieldName = 'DESCR_PARCELA'
      FixedChar = True
      Size = 15
    end
    object cdsHistFinancServidorANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsHistFinancServidorPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsHistFinancServidorID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object cdsHistFinancServidorTOT_VENCTO: TFMTBCDField
      FieldName = 'TOT_VENCTO'
      Precision = 15
      Size = 2
    end
    object cdsHistFinancServidorTOT_DESCONTO: TFMTBCDField
      FieldName = 'TOT_DESCONTO'
      Precision = 15
      Size = 2
    end
    object cdsHistFinancServidorSAL_LIQUIDO: TFMTBCDField
      FieldName = 'SAL_LIQUIDO'
      Precision = 15
      Size = 2
    end
    object cdsHistFinancServidorID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object cdsHistFinancServidorDESCR_SUB_UND_ORCAM: TStringField
      FieldName = 'DESCR_SUB_UND_ORCAM'
      Size = 60
    end
    object cdsHistFinancServidorID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
      Required = True
    end
    object cdsHistFinancServidorDESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object cdsHistFinancServidorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object cdsHistFinancServidorID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object cdsHistFinancServidorDESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object cdsHistFinancServidorDESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object cdsHistFinancServidorID_PROGRES_SAL: TIntegerField
      FieldName = 'ID_PROGRES_SAL'
    end
    object cdsHistFinancServidorVENCTO_BASE_CARGO: TFMTBCDField
      FieldName = 'VENCTO_BASE_CARGO'
      Precision = 15
      Size = 4
    end
    object cdsHistFinancServidorDESCR_TIPO_SAL: TStringField
      FieldName = 'DESCR_TIPO_SAL'
      FixedChar = True
      Size = 9
    end
    object cdsHistFinancServidorID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
      Required = True
    end
    object cdsHistFinancServidorDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
  end
  object mTbHFEventoCalc: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 600
    Top = 72
    object mTbHFEventoCalcId: TIntegerField
      FieldName = 'Id'
    end
    object mTbHFEventoCalcCodVencto: TStringField
      FieldName = 'CodVencto'
      Size = 3
    end
    object mTbHFEventoCalcDescrVencto: TStringField
      FieldName = 'DescrVencto'
      Size = 35
    end
    object mTbHFEventoCalcObservVencto: TStringField
      FieldName = 'ObservVencto'
    end
    object mTbHFEventoCalcQtdVencto: TStringField
      FieldName = 'QtdVencto'
      Size = 12
    end
    object mTbHFEventoCalcValorVencto: TStringField
      FieldName = 'ValorVencto'
      Size = 15
    end
    object mTbHFEventoCalcCodDesc: TStringField
      FieldName = 'CodDesc'
      Size = 3
    end
    object mTbHFEventoCalcDescrDesc: TStringField
      FieldName = 'DescrDesc'
      Size = 35
    end
    object mTbHFEventoCalcObservDesc: TStringField
      FieldName = 'ObservDesc'
    end
    object mTbHFEventoCalcQtdDesc: TStringField
      FieldName = 'QtdDesc'
      Size = 12
    end
    object mTbHFEventoCalcValorDesc: TStringField
      FieldName = 'ValorDesc'
      Size = 15
    end
  end
  object qryHFEventoCalc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pano_mes'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pParcela'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pid_servidor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      'lancto_evento_calc'
      'WHERE'
      '(ano_mes = :pano_mes) and'
      '(parcela = :pParcela) and'
      '(id_servidor = :pid_servidor) '
      'order by'
      'tipo_evento2, cod_evento')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 600
    Top = 16
    object qryHFEventoCalcANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object qryHFEventoCalcPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryHFEventoCalcID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object qryHFEventoCalcID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
      Required = True
    end
    object qryHFEventoCalcQTD: TFMTBCDField
      FieldName = 'QTD'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryHFEventoCalcVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object qryHFEventoCalcOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
    end
    object qryHFEventoCalcDESCR_EVENTO: TStringField
      FieldName = 'DESCR_EVENTO'
      Size = 40
    end
    object qryHFEventoCalcTIPO_EVENTO: TStringField
      FieldName = 'TIPO_EVENTO'
      FixedChar = True
      Size = 1
    end
    object qryHFEventoCalcID_CATEG_EVENTO: TIntegerField
      FieldName = 'ID_CATEG_EVENTO'
    end
    object qryHFEventoCalcCOD_EVENTO: TStringField
      FieldName = 'COD_EVENTO'
      FixedChar = True
      Size = 3
    end
    object qryHFEventoCalcTIPO_EVENTO2: TStringField
      FieldName = 'TIPO_EVENTO2'
      FixedChar = True
      Size = 1
    end
  end
  object frxReport1: TfrxReport
    Version = '4.11.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40709.066932627300000000
    ReportOptions.LastChange = 40795.704063020840000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 16
    Top = 8
    Datasets = <
      item
        DataSet = frxConfigOrgao
        DataSetName = 'frxConfigOrgao'
      end
      item
        DataSet = frxHistFinancServidor
        DataSetName = 'frxHistFinancServidor'
      end
      item
        DataSet = frxmHFEventoCalc
        DataSetName = 'frxmHFEventoCalc'
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
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 75.590600000000000000
        Top = 196.535560000000000000
        Width = 755.905999999999900000
        DataSetName = 'frxHistFinancServid'
        RowCount = 0
        object frxHistFinancServidID_SUB_UNID_ORCAMENT: TfrxMemoView
          Left = 10.582677170000000000
          Top = 22.677165350000000000
          Width = 22.677180000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'ID_SUB_UNID_ORCAMENT'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxHistFinancServid."ID_SUB_UNID_ORCAMENT"]')
          ParentFont = False
        end
        object frxHistFinancServidDESCR_SUB_UND_ORCAM: TfrxMemoView
          Left = 35.086614170000000000
          Top = 22.677165350000000000
          Width = 283.464750000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DESCR_SUB_UND_ORCAM'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxHistFinancServid."DESCR_SUB_UND_ORCAM"]')
          ParentFont = False
        end
        object frxHistFinancServidANO_MES_PARCELA: TfrxMemoView
          Top = 1.495980000000003000
          Width = 71.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MES_ANO'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxHistFinancServid."MES_ANO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 75.102350000000000000
          Top = 1.495980000000003000
          Width = 136.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DESCR_PARCELA'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxHistFinancServid."DESCR_PARCELA"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 322.015735830000000000
          Top = 22.677165350000000000
          Width = 170.078850000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DESCR_CARGO'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxHistFinancServid."DESCR_CARGO"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 489.826771653543000000
          Top = 22.677165350000000000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DT_ADMISSAO'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxHistFinancServid."DT_ADMISSAO"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 549.921259842520000000
          Top = 22.677165350000000000
          Width = 37.795300000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DESCR_EFETIVO'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxHistFinancServid."DESCR_EFETIVO"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 624.377952755906000000
          Top = 22.677165350000000000
          Width = 64.252010000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataSetName = 'frxHistFinancServid'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.3n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxHistFinancServid."VENCTO_BASE_CARGO"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 688.629921259842900000
          Top = 22.677165350000000000
          Width = 68.031540000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DESCR_TIPO_SAL'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxHistFinancServid."DESCR_TIPO_SAL"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 592.629921259842900000
          Top = 22.677165350000000000
          Width = 30.236240000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'ID_PROGRES_SAL'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxHistFinancServid."ID_PROGRES_SAL"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 323.102350000000000000
          Top = 38.495980000000000000
          Width = 249.448980000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DESCR_EST_FUNCIONAL'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxHistFinancServid."DESCR_EST_FUNCIONAL"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 35.149606300000000000
          Top = 38.495980000000000000
          Width = 283.464750000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DESCR_UNID_LOTACAO'
          DataSetName = 'frxHistFinancServid'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxHistFinancServid."DESCR_UNID_LOTACAO"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Top = 53.889610000000000000
          Width = 374.172981810000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Frame.Color = clNone
        end
        object Shape3: TfrxShapeView
          Left = 382.866141732283000000
          Top = 53.889610000000000000
          Width = 374.172981810000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clBtnFace
          Frame.Color = clNone
        end
        object Memo26: TfrxMemoView
          Left = 12.000000000000000000
          Top = 55.889610000000000000
          Width = 350.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '>>>  V E N C I M E N T O S  <<<')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 393.000000000000000000
          Top = 55.889610000000000000
          Width = 350.110390000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '>>>  D E S C O N T O S  <<<')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 434.645950000000000000
        Width = 755.905999999999900000
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 3.779530000000000000
        Top = 170.078850000000000000
        Width = 755.905999999999900000
        Condition = 'frxHistFinancServid."ANO_MES_PARCELA"'
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 39.700680000000000000
        Top = 332.598640000000000000
        Width = 755.905999999999900000
        object frxHistFinancServidTOT_VENCTO: TfrxMemoView
          Left = 313.322834650000000000
          Top = 1.133858270000019000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOT_VENCTO'
          DataSetName = 'frxHistFinancServid'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxHistFinancServid."TOT_VENCTO"]')
          ParentFont = False
        end
        object frxHistFinancServidTOT_DESCONTO: TfrxMemoView
          Left = 692.787401570000000000
          Top = 1.133858270000019000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TOT_DESCONTO'
          DataSetName = 'frxHistFinancServid'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxHistFinancServid."TOT_DESCONTO"]')
          ParentFont = False
        end
        object frxHistFinancServidSAL_LIQUIDO: TfrxMemoView
          Left = 313.322834650000000000
          Top = 18.141732279999990000
          Width = 60.472440940000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'SAL_LIQUIDO'
          DataSetName = 'frxHistFinancServid'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxHistFinancServid."SAL_LIQUIDO"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 151.913385830000000000
          Top = 1.133858270000019000
          Width = 157.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total de Venctos >>>')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 532.000000000000000000
          Top = 1.133858267716562000
          Width = 157.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total de Descontos >>>')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 151.913385830000000000
          Top = 18.141732279999990000
          Width = 157.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Sal. L'#237'quido >>>')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 35.330550000000020000
          Width = 755.905511810000000000
          ShowHint = False
          ArrowWidth = 6
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
      object DetailData2: TfrxDetailData
        Height = 15.118120000000000000
        Top = 294.803340000000000000
        Width = 755.905999999999900000
        DataSet = dmRelFinanceiros.frxEventoCalc
        DataSetName = 'frxEventoCalc'
        RowCount = 0
        object Memo3: TfrxMemoView
          Left = 5.000000000000000000
          Top = 0.755905509999991000
          Width = 22.677180000000000000
          Height = 13.228346456692900000
          ShowHint = False
          DataField = 'CodVencto'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxEventoCalc."CodVencto"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 30.000000000000000000
          Top = 0.755905509999991000
          Width = 147.401670000000000000
          Height = 13.228346456692900000
          ShowHint = False
          DataField = 'DescrVencto'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxEventoCalc."DescrVencto"]')
          ParentFont = False
        end
        object frxEventoCalcCodDesc: TfrxMemoView
          Left = 382.866141732283000000
          Top = 0.755905509999991000
          Width = 22.677180000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'CodDesc'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxEventoCalc."CodDesc"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 180.000000000000000000
          Top = 0.755905509999991000
          Width = 90.708720000000000000
          Height = 13.228346456692900000
          ShowHint = False
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxEventoCalc."ObservVencto"]')
          ParentFont = False
        end
        object frxEventoCalcQtdVencto: TfrxMemoView
          Left = 273.000000000000000000
          Top = 0.755905509999991000
          Width = 37.795300000000000000
          Height = 13.228346456692900000
          ShowHint = False
          DataField = 'QtdVencto'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEventoCalc."QtdVencto"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 313.322834645669000000
          Top = 0.755905509999991000
          Width = 60.472440944881890000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'ValorVencto'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEventoCalc."ValorVencto"]')
          ParentFont = False
        end
        object frxEventoCalcObservDesc: TfrxMemoView
          Left = 557.000000000000000000
          Top = 0.755905509999991000
          Width = 90.708720000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'ObservDesc'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxEventoCalc."ObservDesc"]')
          ParentFont = False
        end
        object frxEventoCalcQtdDesc: TfrxMemoView
          Left = 652.000000000000000000
          Top = 0.755905509999991000
          Width = 37.795300000000000000
          Height = 13.228346456692900000
          ShowHint = False
          DataField = 'QtdDesc'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEventoCalc."QtdDesc"]')
          ParentFont = False
        end
        object frxEventoCalcValorDesc: TfrxMemoView
          Left = 692.787401570000000000
          Top = 0.755905509999991000
          Width = 60.472480000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'ValorDesc'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxEventoCalc."ValorDesc"]')
          ParentFont = False
        end
        object frxEventoCalcDescrDesc: TfrxMemoView
          Left = 410.000000000000000000
          Top = 0.755905509999991000
          Width = 143.622140000000000000
          Height = 13.228346460000000000
          ShowHint = False
          DataField = 'DescrDesc'
          DataSet = dmRelFinanceiros.frxEventoCalc
          DataSetName = 'frxEventoCalc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxEventoCalc."DescrDesc"]')
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 128.102350000000000000
        Top = 18.897650000000000000
        Width = 755.905999999999900000
        object Line1: TfrxLineView
          Top = 1.881879999999999000
          Width = 755.905511810000000000
          ShowHint = False
          ArrowWidth = 6
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Shape1: TfrxShapeView
          Top = 90.307050000000000000
          Width = 755.905511810000000000
          Height = 34.015770000000000000
          ShowHint = False
          Color = 13421772
          Frame.Color = clNone
        end
        object Memo1: TfrxMemoView
          Left = 10.582677170000000000
          Top = 92.220448030000000000
          Width = 162.519790000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Sub-Unid. Or'#231'ament'#225'ria')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 322.015735830000000000
          Top = 92.220448030000000000
          Width = 162.519790000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cargo/Fun'#231#227'o')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 489.826771650000000000
          Top = 92.220448030000000000
          Width = 57.519790000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Admiss'#227'o')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 592.629921260000000000
          Top = 92.220472440944900000
          Width = 26.456710000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Ref.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 548.921259840000000000
          Top = 92.220448030000000000
          Width = 41.574830000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Efetivo')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 619.377952760000000000
          Top = 92.220472440944900000
          Width = 68.031540000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Vencto Base')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 688.629921260000000000
          Top = 92.220448030000000000
          Width = 68.031540000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tipo Sal.')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 35.149606299212600000
          Top = 108.307050000000000000
          Width = 162.519790000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Unid. de Lota'#231#227'o')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 322.102350000000000000
          Top = 108.307050000000000000
          Width = 162.519790000000000000
          Height = 13.606299210000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Estado Funcional')
          ParentFont = False
        end
        object frxConfigOrgaoRAZAO_SOCIAL: TfrxMemoView
          Left = 113.452845000000000000
          Top = 4.102350000000001000
          Width = 529.000310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 113.452845000000000000
          Top = 21.102350000000000000
          Width = 529.000310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."NOME_SYS"]')
          ParentFont = False
        end
        object frxConfigOrgaoTITULO_REL1: TfrxMemoView
          Left = 113.452845000000000000
          Top = 50.543290000000000000
          Width = 529.000310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TITULO_REL1'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."TITULO_REL1"]')
          ParentFont = False
        end
        object frxConfigOrgaoTITULO_REL2: TfrxMemoView
          Left = 113.452845000000000000
          Top = 65.830704999999990000
          Width = 529.000310000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'TITULO_REL2'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."TITULO_REL2"]')
          ParentFont = False
        end
      end
    end
  end
  object frxConfigOrgao: TfrxDBDataset
    UserName = 'frxConfigOrgao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'SIGLA=SIGLA'
      'CNPJ=CNPJ'
      'TIPO_ORGAO=TIPO_ORGAO'
      'ENDER_LOGRAD=ENDER_LOGRAD'
      'ENDER_NUM=ENDER_NUM'
      'ENDER_BAIRRO=ENDER_BAIRRO'
      'ENDER_CIDADE=ENDER_CIDADE'
      'ENDER_CEP=ENDER_CEP'
      'ENDER_UF=ENDER_UF'
      'TELEFONE=TELEFONE'
      'NOME_DIR_DRH=NOME_DIR_DRH'
      'COD_CNAE=COD_CNAE'
      'COD_FPAS=COD_FPAS'
      'COD_NATUREZA_JURIDICA=COD_NATUREZA_JURIDICA'
      'COD_MUNICIPIO_RAIS=COD_MUNICIPIO_RAIS'
      'COD_MUNICIPIO_TCM=COD_MUNICIPIO_TCM'
      'BRASAO=BRASAO'
      'LOGO_ADMIN=LOGO_ADMIN'
      'DESCR_TIPO_ORGAO=DESCR_TIPO_ORGAO'
      'NOME_SYS=NOME_SYS'
      'TITULO_REL1=TITULO_REL1'
      'TITULO_REL2=TITULO_REL2')
    DataSet = cdsConfigOrgao
    BCDToCurrency = False
    Left = 272
    Top = 8
  end
  object frxHistFinancServidor: TfrxDBDataset
    UserName = 'frxHistFinancServidor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO_MES_PARCELA=ANO_MES_PARCELA'
      'MES_ANO=MES_ANO'
      'DESCR_PARCELA=DESCR_PARCELA'
      'ANO_MES=ANO_MES'
      'PARCELA=PARCELA'
      'ID_SERVIDOR=ID_SERVIDOR'
      'TOT_VENCTO=TOT_VENCTO'
      'TOT_DESCONTO=TOT_DESCONTO'
      'SAL_LIQUIDO=SAL_LIQUIDO'
      'ID_SUB_UNID_ORCAMENT=ID_SUB_UNID_ORCAMENT'
      'DESCR_SUB_UND_ORCAM=DESCR_SUB_UND_ORCAM'
      'ID_CARGO=ID_CARGO'
      'DESCR_CARGO=DESCR_CARGO'
      'DT_ADMISSAO=DT_ADMISSAO'
      'ID_UNID_LOTACAO=ID_UNID_LOTACAO'
      'DESCR_UNID_LOTACAO=DESCR_UNID_LOTACAO'
      'DESCR_EFETIVO=DESCR_EFETIVO'
      'ID_PROGRES_SAL=ID_PROGRES_SAL'
      'VENCTO_BASE_CARGO=VENCTO_BASE_CARGO'
      'DESCR_TIPO_SAL=DESCR_TIPO_SAL'
      'ID_EST_FUNCIONAL=ID_EST_FUNCIONAL'
      'DESCR_EST_FUNCIONAL=DESCR_EST_FUNCIONAL')
    DataSet = cdsHistFinancServidor
    BCDToCurrency = False
    Left = 512
    Top = 176
  end
  object frxmHFEventoCalc: TfrxDBDataset
    UserName = 'frxmHFEventoCalc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Id=Id'
      'CodVencto=CodVencto'
      'DescrVencto=DescrVencto'
      'ObservVencto=ObservVencto'
      'QtdVencto=QtdVencto'
      'ValorVencto=ValorVencto'
      'CodDesc=CodDesc'
      'DescrDesc=DescrDesc'
      'ObservDesc=ObservDesc'
      'QtdDesc=QtdDesc'
      'ValorDesc=ValorDesc')
    DataSet = mTbHFEventoCalc
    BCDToCurrency = False
    Left = 600
    Top = 120
  end
end
