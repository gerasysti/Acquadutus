object dmRelLanctos: TdmRelLanctos
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 89
  Top = 148
  Height = 672
  Width = 1005
  object frxReport1: TfrxReport
    Version = '4.11.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    OldStyleProgress = True
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40687.913054525500000000
    ReportOptions.LastChange = 40954.059661307870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 32
    Top = 16
    Datasets = <
      item
        DataSet = frxConfigOrgao
        DataSetName = 'frxConfigOrgao'
      end
      item
        DataSet = frxLanctoEvento
        DataSetName = 'frxLanctoEvento'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      object MasterData1: TfrxMasterData
        Height = 40.062992130000000000
        Top = 291.023810000000000000
        Width = 1084.725110000000000000
        DataSet = frxLanctoEvento
        DataSetName = 'frxLanctoEvento'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 30.236220470000000000
          Top = 1.511811023622044000
          Width = 41.574830000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'R_ID_SERVID_FTOD'
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxLanctoEvento."R_ID_SERVID_FTOD"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 316.724409448819000000
          Top = 1.559059999999988000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'R_DT_ADMISSAO'
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxLanctoEvento."R_DT_ADMISSAO"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 387.023622050000000000
          Top = 1.559059999999988000
          Width = 165.149660000000000000
          Height = 15.118120000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DataField = 'R_DESCR_CARGO'
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxLanctoEvento."R_DESCR_CARGO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 549.921259842519700000
          Top = 1.559059999999988000
          Width = 25.307050000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'R_EFETIVO'
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxLanctoEvento."R_EFETIVO"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 576.000000000000000000
          Top = 1.511811019999982000
          Width = 210.504020000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxLanctoEvento."R_DESCR_EST_FUNCIONAL"]')
          ParentFont = False
        end
        object frxLanctoEventoR_QTD: TfrxMemoView
          Left = 789.921259842519900000
          Top = 1.511811019999982000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxLanctoEvento."R_QTD"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 850.394250000000000000
          Top = 1.511811019999982000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'R_VALOR'
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxLanctoEvento."R_VALOR"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 925.984850000000000000
          Top = 1.511811019999982000
          Width = 158.740260000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxLanctoEvento."R_OBSERVACAO"]')
          ParentFont = False
        end
        object frxServidorNOME_SERVIDOR: TfrxMemoView
          Left = 75.212598430000000000
          Top = 1.511811019999982000
          Width = 245.669450000000000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'R_NOME_SERVIDOR'
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxLanctoEvento."R_NOME_SERVIDOR"]')
          ParentFont = False
        end
        object frxLanctoEventoR_DESCR_SUB_UNID_ORCAM: TfrxMemoView
          Left = 75.212598430000000000
          Top = 16.779530000000020000
          Width = 555.590910000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxLanctoEvento."R_ID_SUB_UNID_ORCAMENT"] - [frxLanctoEvento."R' +
              '_DESCR_SUB_UNID_ORCAM"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 20.779530000000000000
        Top = 393.071120000000000000
        Width = 1084.725110000000000000
        object Line3: TfrxLineView
          Top = 1.708410000000015000
          Width = 1084.725110000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object SysMemo1: TfrxSysMemoView
          Top = 3.779527559999963000
          Width = 94.488250000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          Left = 457.323130000000000000
          Top = 4.251700000000028000
          Width = 170.078850000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina: [PAGE#] / [TOTALPAGES#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          Left = 988.457330000000000000
          Top = 3.779530000000022000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'GeraSys.Ti (C)')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 196.535560000000000000
        Width = 1084.725110000000000000
        Condition = 'frxLanctoEvento."R_ID_EVENTO"'
        ReprintOnNewPage = True
        object frxLanctoEventoR_ID_EVENTO: TfrxMemoView
          Top = 3.559059999999988000
          Width = 600.945270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[<frxLanctoEvento."R_ID_EVENTO">] - [<frxLanctoEvento."R_DESCR_E' +
              'VENTO">] - [<frxLanctoEvento."R_TIPO_EVENTO">] - [<frxLanctoEven' +
              'to."R_COD_EVENTO">]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMoneyGreen
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 245.669450000000000000
        Width = 1084.725110000000000000
        Condition = 'frxLanctoEvento."R_ORIGEM_LANCTO"'
        KeepTogether = True
        ReprintOnNewPage = True
        object frxLanctoEventoR_ORIGEM_LANCTO: TfrxMemoView
          Left = 22.677180000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'R_ORIGEM_LANCTO'
          DataSet = frxLanctoEvento
          DataSetName = 'frxLanctoEvento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxLanctoEvento."R_ORIGEM_LANCTO"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 116.118120000000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Shape3: TfrxShapeView
          Top = 81.700867950000000000
          Width = 1084.725110000000000000
          Height = 30.236240000000000000
          ShowHint = False
          Color = 15197402
          Frame.Color = clWhite
        end
        object Memo28: TfrxMemoView
          Left = 30.236220472440900000
          Top = 89.850425430000000000
          Width = 41.574830000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'ID.')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 75.212598425196900000
          Top = 89.850425430000000000
          Width = 230.551330000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'NOME DO SERVIDOR')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 316.724409448819000000
          Top = 89.850425430000000000
          Width = 68.031540000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'ADMISS'#195'O')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 387.023622047244000000
          Top = 89.850425430000000000
          Width = 142.472480000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'CARGO/FUN'#199#195'O')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 549.921259842519700000
          Top = 89.850425430000000000
          Width = 25.307050000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'EFETIVO')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 576.000000000000000000
          Top = 89.850425430000000000
          Width = 210.504020000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ESTADO FUNCIONAL')
          ParentFont = False
        end
        object frxConfigOrgaoRAZAO_SOCIAL: TfrxMemoView
          Left = 109.606369999999000000
          Top = 7.559059999999999000
          Width = 865.512370000002000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'RAZAO_SOCIAL'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."RAZAO_SOCIAL"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 109.606572599999000000
          Top = 47.015802949999990000
          Width = 865.511964800002000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."TITULO_REL1"]')
          ParentFont = False
        end
        object frxConfigOrgaoNOME_SYS: TfrxMemoView
          Left = 109.606369999999000000
          Top = 23.212617950000000000
          Width = 865.512370000002000000
          Height = 15.118120000000000000
          ShowHint = False
          DataField = 'NOME_SYS'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."NOME_SYS"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 109.606572599999000000
          Top = 64.007917950000010000
          Width = 865.511964800002000000
          Height = 15.118120000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."TITULO_REL2"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 7.559059999999999000
          Width = 98.267780000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'BRASAO'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 981.898270000002000000
          Top = 3.779530000000001000
          Width = 98.267780000000000000
          Height = 71.811070000000000000
          ShowHint = False
          DataField = 'LOGO_ADMIN'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo5: TfrxMemoView
          Left = 789.921259840000000000
          Top = 90.708720000000000000
          Width = 56.692950000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'QUANT.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 854.173780000000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VALOR (R$)')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 937.323440000000000000
          Top = 90.708720000000000000
          Width = 158.740260000000000000
          Height = 14.362204720000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'OBSERVA'#199#195'O')
          ParentFont = False
        end
      end
    end
  end
  object qryCgaHorProfLancto: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pe_Ano_Mes'
        ParamType = ptInput
        Size = 7
        Value = '201106'
      end
      item
        DataType = ftInteger
        Name = 'pe_Unid_Gestora'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_s_u_o'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_unid_lotac'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_unid_lotac2'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_cargo'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_cargo2'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'pe_situac_tcm_ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pe_situac_tcm_fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      ' d.*,'
      ' d1.id_situacao_tcm'
      'from'
      ' carga_hor_prof_lancto d,'
      ' inicializa_mes_servidor d1'
      'where'
      ' (d.ano_mes = :pe_Ano_Mes) and'
      ' (d.id_unid_gestora = :pe_Unid_Gestora) and'
      
        ' (position('#39';'#39'||trim(cast(d.id_sub_unid_orcam as varchar(2048)))' +
        '||'#39';'#39
      '                in :pe_multi_s_u_o) > 0) and'
      
        ' ((position('#39';'#39'||trim(cast(d.id_unid_lotacao as varchar(2048)))|' +
        '|'#39';'#39
      '                in :pe_multi_unid_lotac) > 0) or'
      '  (trim(cast(:pe_multi_unid_lotac2 as varchar(2048)))='#39'0'#39')) and'
      ' ((position('#39';'#39'||trim(cast(d.id_cargo as char(2048)))||'#39';'#39
      '                in :pe_multi_cargo) > 0) or'
      '  (trim(cast(:pe_multi_cargo2 as varchar(2048)))='#39'0'#39')) and'
      '  ((d1.id_servidor = d.id_servidor) and'
      '   (d1.ano_mes = d.ano_mes)) and'
      '  ((d1.id_situacao_tcm >= :pe_situac_tcm_ini) and'
      '   (d1.id_situacao_tcm <= :pe_situac_tcm_fim))'
      'order by'
      
        '  d.descr_sub_unid_orcam, d.nome_servidor||d.id_servidor, d.desc' +
        'r_unid_lotacao')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 96
    Top = 72
    object qryCgaHorProfLanctoANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object qryCgaHorProfLanctoID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object qryCgaHorProfLanctoID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object qryCgaHorProfLanctoQTD_H_AULA_NORMAL: TIntegerField
      FieldName = 'QTD_H_AULA_NORMAL'
    end
    object qryCgaHorProfLanctoQTD_H_AULA_SUBSTIT: TIntegerField
      FieldName = 'QTD_H_AULA_SUBSTIT'
    end
    object qryCgaHorProfLanctoQTD_H_AULA_OUTRA1: TIntegerField
      FieldName = 'QTD_H_AULA_OUTRA1'
    end
    object qryCgaHorProfLanctoQTD_FALTA: TIntegerField
      FieldName = 'QTD_FALTA'
    end
    object qryCgaHorProfLanctoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object qryCgaHorProfLanctoNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object qryCgaHorProfLanctoID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object qryCgaHorProfLanctoDESCR_SUB_UNID_ORCAM: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM'
      Size = 60
    end
    object qryCgaHorProfLanctoID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
    end
    object qryCgaHorProfLanctoDESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object qryCgaHorProfLanctoDESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object qryCgaHorProfLanctoID_UNID_GESTORA: TIntegerField
      FieldName = 'ID_UNID_GESTORA'
    end
    object qryCgaHorProfLanctoEFETIVO: TStringField
      FieldName = 'EFETIVO'
      FixedChar = True
      Size = 1
    end
    object qryCgaHorProfLanctoDESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object qryCgaHorProfLanctoID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
    end
    object qryCgaHorProfLanctoDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object qryCgaHorProfLanctoDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object qryCgaHorProfLanctoDESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
    object qryCgaHorProfLanctoID_SITUACAO_TCM: TIntegerField
      FieldName = 'ID_SITUACAO_TCM'
      Required = True
    end
    object qryCgaHorProfLanctoID_SERVID_FTDO: TStringField
      FieldName = 'ID_SERVID_FTDO'
      Size = 80
    end
  end
  object provCgaHorProfLancto: TDataSetProvider
    DataSet = qryCgaHorProfLancto
    Left = 104
    Top = 104
  end
  object cdsCgaHorProfLancto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCgaHorProfLancto'
    Left = 112
    Top = 128
    object cdsCgaHorProfLanctoANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsCgaHorProfLanctoID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
      DisplayFormat = '000.000-0;0 '
    end
    object cdsCgaHorProfLanctoID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object cdsCgaHorProfLanctoQTD_H_AULA_NORMAL: TIntegerField
      FieldName = 'QTD_H_AULA_NORMAL'
    end
    object cdsCgaHorProfLanctoQTD_H_AULA_SUBSTIT: TIntegerField
      FieldName = 'QTD_H_AULA_SUBSTIT'
    end
    object cdsCgaHorProfLanctoQTD_H_AULA_OUTRA1: TIntegerField
      FieldName = 'QTD_H_AULA_OUTRA1'
    end
    object cdsCgaHorProfLanctoQTD_FALTA: TIntegerField
      FieldName = 'QTD_FALTA'
    end
    object cdsCgaHorProfLanctoOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object cdsCgaHorProfLanctoNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object cdsCgaHorProfLanctoID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object cdsCgaHorProfLanctoDESCR_SUB_UNID_ORCAM: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM'
      Size = 60
    end
    object cdsCgaHorProfLanctoID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
    end
    object cdsCgaHorProfLanctoDESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object cdsCgaHorProfLanctoDESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object cdsCgaHorProfLanctoID_UNID_GESTORA: TIntegerField
      FieldName = 'ID_UNID_GESTORA'
    end
    object cdsCgaHorProfLanctoEFETIVO: TStringField
      FieldName = 'EFETIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCgaHorProfLanctoDESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object cdsCgaHorProfLanctoID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
    end
    object cdsCgaHorProfLanctoDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object cdsCgaHorProfLanctoDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object cdsCgaHorProfLanctoDESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
    object cdsCgaHorProfLanctoID_SITUACAO_TCM: TIntegerField
      FieldName = 'ID_SITUACAO_TCM'
      Required = True
    end
    object cdsCgaHorProfLanctoID_SERVID_FTDO: TStringField
      FieldName = 'ID_SERVID_FTDO'
      Size = 80
    end
  end
  object frxCgaHorProfLancto: TfrxDBDataset
    UserName = 'frxCgaHorProfLancto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO_MES=ANO_MES'
      'ID_SERVIDOR=ID_SERVIDOR'
      'ID_UNID_LOTACAO=ID_UNID_LOTACAO'
      'QTD_H_AULA_NORMAL=QTD_H_AULA_NORMAL'
      'QTD_H_AULA_SUBSTIT=QTD_H_AULA_SUBSTIT'
      'QTD_H_AULA_OUTRA1=QTD_H_AULA_OUTRA1'
      'QTD_FALTA=QTD_FALTA'
      'OBSERVACAO=OBSERVACAO'
      'NOME_SERVIDOR=NOME_SERVIDOR'
      'ID_SUB_UNID_ORCAM=ID_SUB_UNID_ORCAM'
      'DESCR_SUB_UNID_ORCAM=DESCR_SUB_UNID_ORCAM'
      'ID_CARGO=ID_CARGO'
      'DESCR_CARGO=DESCR_CARGO'
      'DESCR_UNID_LOTACAO=DESCR_UNID_LOTACAO'
      'ID_UNID_GESTORA=ID_UNID_GESTORA'
      'EFETIVO=EFETIVO'
      'DESCR_EFETIVO=DESCR_EFETIVO'
      'ID_EST_FUNCIONAL=ID_EST_FUNCIONAL'
      'DESCR_EST_FUNCIONAL=DESCR_EST_FUNCIONAL'
      'DT_ADMISSAO=DT_ADMISSAO'
      'DESCR_SUB_UNID_ORCAM2=DESCR_SUB_UNID_ORCAM2'
      'ID_SITUACAO_TCM=ID_SITUACAO_TCM'
      'ID_SERVID_FTDO=ID_SERVID_FTDO')
    DataSet = cdsCgaHorProfLancto
    BCDToCurrency = False
    Left = 120
    Top = 152
  end
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
    Left = 256
    Top = 8
  end
  object qryCgaHorProfLancto2: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pe_Ano_Mes'
        ParamType = ptInput
        Size = 7
        Value = '201106'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_unid_lotac'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_s_u_o'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_s_u_o2'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_cargo'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pe_multi_cargo2'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'pe_situac_tcm_ini'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'pe_situac_tcm_fim'
        ParamType = ptInput
        Value = '99'
      end>
    SQL.Strings = (
      'select'
      ' d.*,'
      ' d1.id_situacao_tcm'
      'from'
      ' carga_hor_prof_lancto d,'
      ' inicializa_mes_servidor d1'
      'where'
      ' (d.ano_mes = :pe_Ano_Mes) and'
      
        ' ((position('#39';'#39'||trim(cast(d.id_unid_lotacao as varchar(2048)))|' +
        '|'#39';'#39
      '                in :pe_multi_unid_lotac) > 0)) and'
      
        ' ((position('#39';'#39'||trim(cast(d.id_sub_unid_orcam as varchar(2048))' +
        ')||'#39';'#39
      '                in :pe_multi_s_u_o) > 0) or'
      '  (trim(cast(:pe_multi_s_u_o2 as varchar(2048)))='#39'0'#39')) and'
      ' ((position('#39';'#39'||trim(cast(d.id_cargo as char(2048)))||'#39';'#39
      '                in :pe_multi_cargo) > 0) or'
      '  (trim(cast(:pe_multi_cargo2 as varchar(2048)))='#39'0'#39')) and'
      '  ((d1.id_servidor = d.id_servidor) and'
      '   (d1.ano_mes = d.ano_mes)) and'
      '  ((d1.id_situacao_tcm >= :pe_situac_tcm_ini) and'
      '   (d1.id_situacao_tcm <= :pe_situac_tcm_fim))'
      'order by'
      '  d.descr_unid_lotacao, d.nome_servidor||d.id_servidor')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 208
    Top = 72
    object qryCgaHorProfLancto2ANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object qryCgaHorProfLancto2ID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object qryCgaHorProfLancto2ID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object qryCgaHorProfLancto2QTD_H_AULA_NORMAL: TIntegerField
      FieldName = 'QTD_H_AULA_NORMAL'
    end
    object qryCgaHorProfLancto2QTD_H_AULA_SUBSTIT: TIntegerField
      FieldName = 'QTD_H_AULA_SUBSTIT'
    end
    object qryCgaHorProfLancto2QTD_H_AULA_OUTRA1: TIntegerField
      FieldName = 'QTD_H_AULA_OUTRA1'
    end
    object qryCgaHorProfLancto2QTD_FALTA: TIntegerField
      FieldName = 'QTD_FALTA'
    end
    object qryCgaHorProfLancto2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object qryCgaHorProfLancto2NOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object qryCgaHorProfLancto2ID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object qryCgaHorProfLancto2DESCR_SUB_UNID_ORCAM: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM'
      Size = 60
    end
    object qryCgaHorProfLancto2ID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
    end
    object qryCgaHorProfLancto2DESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object qryCgaHorProfLancto2DESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object qryCgaHorProfLancto2ID_UNID_GESTORA: TIntegerField
      FieldName = 'ID_UNID_GESTORA'
    end
    object qryCgaHorProfLancto2EFETIVO: TStringField
      FieldName = 'EFETIVO'
      FixedChar = True
      Size = 1
    end
    object qryCgaHorProfLancto2DESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object qryCgaHorProfLancto2ID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
    end
    object qryCgaHorProfLancto2DESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object qryCgaHorProfLancto2DT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object qryCgaHorProfLancto2DESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
    object qryCgaHorProfLancto2ID_SERVID_FTDO: TStringField
      FieldName = 'ID_SERVID_FTDO'
      Size = 80
    end
    object qryCgaHorProfLancto2ID_SITUACAO_TCM: TIntegerField
      FieldName = 'ID_SITUACAO_TCM'
      Required = True
    end
  end
  object provCgaHorProfLancto2: TDataSetProvider
    DataSet = qryCgaHorProfLancto2
    Left = 224
    Top = 96
  end
  object cdsCgaHorProfLancto2: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCgaHorProfLancto2'
    Left = 240
    Top = 112
    object cdsCgaHorProfLancto2ANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsCgaHorProfLancto2ID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object cdsCgaHorProfLancto2ID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object cdsCgaHorProfLancto2QTD_H_AULA_NORMAL: TIntegerField
      FieldName = 'QTD_H_AULA_NORMAL'
    end
    object cdsCgaHorProfLancto2QTD_H_AULA_SUBSTIT: TIntegerField
      FieldName = 'QTD_H_AULA_SUBSTIT'
    end
    object cdsCgaHorProfLancto2QTD_H_AULA_OUTRA1: TIntegerField
      FieldName = 'QTD_H_AULA_OUTRA1'
    end
    object cdsCgaHorProfLancto2QTD_FALTA: TIntegerField
      FieldName = 'QTD_FALTA'
    end
    object cdsCgaHorProfLancto2OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object cdsCgaHorProfLancto2NOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object cdsCgaHorProfLancto2ID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object cdsCgaHorProfLancto2DESCR_SUB_UNID_ORCAM: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM'
      Size = 60
    end
    object cdsCgaHorProfLancto2ID_CARGO: TIntegerField
      FieldName = 'ID_CARGO'
    end
    object cdsCgaHorProfLancto2DESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object cdsCgaHorProfLancto2DESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object cdsCgaHorProfLancto2ID_UNID_GESTORA: TIntegerField
      FieldName = 'ID_UNID_GESTORA'
    end
    object cdsCgaHorProfLancto2EFETIVO: TStringField
      FieldName = 'EFETIVO'
      FixedChar = True
      Size = 1
    end
    object cdsCgaHorProfLancto2DESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object cdsCgaHorProfLancto2ID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
    end
    object cdsCgaHorProfLancto2DESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object cdsCgaHorProfLancto2DT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object cdsCgaHorProfLancto2DESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
    object cdsCgaHorProfLancto2ID_SERVID_FTDO: TStringField
      FieldName = 'ID_SERVID_FTDO'
      Size = 80
    end
    object cdsCgaHorProfLancto2ID_SITUACAO_TCM: TIntegerField
      FieldName = 'ID_SITUACAO_TCM'
      Required = True
    end
  end
  object frxCgaHorProfLancto2: TfrxDBDataset
    UserName = 'frxCgaHorProfLancto2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ANO_MES=ANO_MES'
      'ID_SERVIDOR=ID_SERVIDOR'
      'ID_UNID_LOTACAO=ID_UNID_LOTACAO'
      'QTD_H_AULA_NORMAL=QTD_H_AULA_NORMAL'
      'QTD_H_AULA_SUBSTIT=QTD_H_AULA_SUBSTIT'
      'QTD_H_AULA_OUTRA1=QTD_H_AULA_OUTRA1'
      'QTD_FALTA=QTD_FALTA'
      'OBSERVACAO=OBSERVACAO'
      'NOME_SERVIDOR=NOME_SERVIDOR'
      'ID_SUB_UNID_ORCAM=ID_SUB_UNID_ORCAM'
      'DESCR_SUB_UNID_ORCAM=DESCR_SUB_UNID_ORCAM'
      'ID_CARGO=ID_CARGO'
      'DESCR_CARGO=DESCR_CARGO'
      'DESCR_UNID_LOTACAO=DESCR_UNID_LOTACAO'
      'ID_UNID_GESTORA=ID_UNID_GESTORA'
      'EFETIVO=EFETIVO'
      'DESCR_EFETIVO=DESCR_EFETIVO'
      'ID_EST_FUNCIONAL=ID_EST_FUNCIONAL'
      'DESCR_EST_FUNCIONAL=DESCR_EST_FUNCIONAL'
      'DT_ADMISSAO=DT_ADMISSAO'
      'DESCR_SUB_UNID_ORCAM2=DESCR_SUB_UNID_ORCAM2'
      'ID_SERVID_FTDO=ID_SERVID_FTDO'
      'ID_SITUACAO_TCM=ID_SITUACAO_TCM')
    DataSet = cdsCgaHorProfLancto2
    BCDToCurrency = False
    Left = 256
    Top = 145
  end
  object frxLanctoEvento: TfrxDBDataset
    UserName = 'frxLanctoEvento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ID_SERVIDOR=R_ID_SERVIDOR'
      'R_ID_SERVID_FTOD=R_ID_SERVID_FTOD'
      'R_NOME_SERVIDOR=R_NOME_SERVIDOR'
      'R_DT_ADMISSAO=R_DT_ADMISSAO'
      'R_ID_CARGO=R_ID_CARGO'
      'R_DESCR_CARGO=R_DESCR_CARGO'
      'R_TIPO_SALARIO=R_TIPO_SALARIO'
      'R_EFETIVO=R_EFETIVO'
      'R_ID_SITUAC_TCM=R_ID_SITUAC_TCM'
      'R_ID_SUB_UNID_ORCAMENT=R_ID_SUB_UNID_ORCAMENT'
      'R_DESCR_SUB_UNID_ORCAM=R_DESCR_SUB_UNID_ORCAM'
      'R_ID_EST_FUNCIONAL=R_ID_EST_FUNCIONAL'
      'R_DESCR_EST_FUNCIONAL=R_DESCR_EST_FUNCIONAL'
      'R_ID_EVENTO=R_ID_EVENTO'
      'R_DESCR_EVENTO=R_DESCR_EVENTO'
      'R_TIPO_EVENTO=R_TIPO_EVENTO'
      'R_COD_EVENTO=R_COD_EVENTO'
      'R_ID_CATEG_EVENTO=R_ID_CATEG_EVENTO'
      'R_QTD=R_QTD'
      'R_VALOR=R_VALOR'
      'R_OBSERVACAO=R_OBSERVACAO'
      'R_ORIGEM_LANCTO=R_ORIGEM_LANCTO')
    DataSet = cdsLanctoEvento
    BCDToCurrency = False
    Left = 432
    Top = 88
  end
  object qryLanctoEvento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
        Size = 7
        Value = '201201'
      end
      item
        DataType = ftString
        Name = 'pParcela'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pMultiEvento'
        ParamType = ptInput
        Value = ';3;'
      end
      item
        DataType = ftString
        Name = 'pOpcao'
        ParamType = ptInput
        Size = 2
        Value = 'T'
      end
      item
        DataType = ftWideString
        Name = 'pMultiSUO'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftWideString
        Name = 'pMultiCargo'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pVinculo'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end>
    SQL.Strings = (
      
        'select * from sp_rel_evento_lancto(:pAnoMes,:pParcela,:pMultiEve' +
        'nto,:pOpcao,'
      '   :pMultiSUO,:pMultiCargo,:pVinculo)'
      'order by'
      '   r_id_evento, r_origem_lancto, r_nome_servidor, r_id_servidor')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 384
    Top = 8
    object qryLanctoEventoR_ID_SERVIDOR: TIntegerField
      FieldName = 'R_ID_SERVIDOR'
    end
    object qryLanctoEventoR_ID_SERVID_FTOD: TStringField
      FieldName = 'R_ID_SERVID_FTOD'
      FixedChar = True
      Size = 9
    end
    object qryLanctoEventoR_NOME_SERVIDOR: TStringField
      FieldName = 'R_NOME_SERVIDOR'
      Size = 60
    end
    object qryLanctoEventoR_DT_ADMISSAO: TDateField
      FieldName = 'R_DT_ADMISSAO'
    end
    object qryLanctoEventoR_ID_CARGO: TIntegerField
      FieldName = 'R_ID_CARGO'
    end
    object qryLanctoEventoR_DESCR_CARGO: TStringField
      FieldName = 'R_DESCR_CARGO'
      Size = 40
    end
    object qryLanctoEventoR_TIPO_SALARIO: TStringField
      FieldName = 'R_TIPO_SALARIO'
      FixedChar = True
      Size = 1
    end
    object qryLanctoEventoR_EFETIVO: TStringField
      FieldName = 'R_EFETIVO'
      FixedChar = True
      Size = 1
    end
    object qryLanctoEventoR_ID_SITUAC_TCM: TIntegerField
      FieldName = 'R_ID_SITUAC_TCM'
    end
    object qryLanctoEventoR_ID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'R_ID_SUB_UNID_ORCAMENT'
    end
    object qryLanctoEventoR_DESCR_SUB_UNID_ORCAM: TStringField
      FieldName = 'R_DESCR_SUB_UNID_ORCAM'
      Size = 50
    end
    object qryLanctoEventoR_ID_EST_FUNCIONAL: TIntegerField
      FieldName = 'R_ID_EST_FUNCIONAL'
    end
    object qryLanctoEventoR_DESCR_EST_FUNCIONAL: TStringField
      FieldName = 'R_DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object qryLanctoEventoR_ID_EVENTO: TIntegerField
      FieldName = 'R_ID_EVENTO'
    end
    object qryLanctoEventoR_DESCR_EVENTO: TStringField
      FieldName = 'R_DESCR_EVENTO'
      Size = 30
    end
    object qryLanctoEventoR_TIPO_EVENTO: TStringField
      FieldName = 'R_TIPO_EVENTO'
      FixedChar = True
      Size = 1
    end
    object qryLanctoEventoR_COD_EVENTO: TStringField
      FieldName = 'R_COD_EVENTO'
      FixedChar = True
      Size = 3
    end
    object qryLanctoEventoR_ID_CATEG_EVENTO: TIntegerField
      FieldName = 'R_ID_CATEG_EVENTO'
    end
    object qryLanctoEventoR_QTD: TFMTBCDField
      FieldName = 'R_QTD'
      Precision = 18
      Size = 2
    end
    object qryLanctoEventoR_VALOR: TFMTBCDField
      FieldName = 'R_VALOR'
      Precision = 18
      Size = 2
    end
    object qryLanctoEventoR_OBSERVACAO: TStringField
      FieldName = 'R_OBSERVACAO'
    end
    object qryLanctoEventoR_ORIGEM_LANCTO: TStringField
      FieldName = 'R_ORIGEM_LANCTO'
      FixedChar = True
      Size = 14
    end
  end
  object provLanctoEvento: TDataSetProvider
    DataSet = qryLanctoEvento
    Left = 400
    Top = 32
  end
  object cdsLanctoEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provLanctoEvento'
    Left = 416
    Top = 56
    object cdsLanctoEventoR_ID_SERVIDOR: TIntegerField
      FieldName = 'R_ID_SERVIDOR'
    end
    object cdsLanctoEventoR_ID_SERVID_FTOD: TStringField
      FieldName = 'R_ID_SERVID_FTOD'
      FixedChar = True
      Size = 9
    end
    object cdsLanctoEventoR_NOME_SERVIDOR: TStringField
      FieldName = 'R_NOME_SERVIDOR'
      Size = 60
    end
    object cdsLanctoEventoR_DT_ADMISSAO: TDateField
      FieldName = 'R_DT_ADMISSAO'
    end
    object cdsLanctoEventoR_ID_CARGO: TIntegerField
      FieldName = 'R_ID_CARGO'
    end
    object cdsLanctoEventoR_DESCR_CARGO: TStringField
      FieldName = 'R_DESCR_CARGO'
      Size = 40
    end
    object cdsLanctoEventoR_TIPO_SALARIO: TStringField
      FieldName = 'R_TIPO_SALARIO'
      FixedChar = True
      Size = 1
    end
    object cdsLanctoEventoR_EFETIVO: TStringField
      FieldName = 'R_EFETIVO'
      FixedChar = True
      Size = 1
    end
    object cdsLanctoEventoR_ID_SITUAC_TCM: TIntegerField
      FieldName = 'R_ID_SITUAC_TCM'
    end
    object cdsLanctoEventoR_ID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'R_ID_SUB_UNID_ORCAMENT'
    end
    object cdsLanctoEventoR_DESCR_SUB_UNID_ORCAM: TStringField
      FieldName = 'R_DESCR_SUB_UNID_ORCAM'
      Size = 50
    end
    object cdsLanctoEventoR_ID_EST_FUNCIONAL: TIntegerField
      FieldName = 'R_ID_EST_FUNCIONAL'
    end
    object cdsLanctoEventoR_DESCR_EST_FUNCIONAL: TStringField
      FieldName = 'R_DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object cdsLanctoEventoR_ID_EVENTO: TIntegerField
      FieldName = 'R_ID_EVENTO'
    end
    object cdsLanctoEventoR_DESCR_EVENTO: TStringField
      FieldName = 'R_DESCR_EVENTO'
      Size = 30
    end
    object cdsLanctoEventoR_TIPO_EVENTO: TStringField
      FieldName = 'R_TIPO_EVENTO'
      FixedChar = True
      Size = 1
    end
    object cdsLanctoEventoR_COD_EVENTO: TStringField
      FieldName = 'R_COD_EVENTO'
      FixedChar = True
      Size = 3
    end
    object cdsLanctoEventoR_ID_CATEG_EVENTO: TIntegerField
      FieldName = 'R_ID_CATEG_EVENTO'
    end
    object cdsLanctoEventoR_QTD: TFMTBCDField
      FieldName = 'R_QTD'
      Precision = 18
      Size = 2
    end
    object cdsLanctoEventoR_VALOR: TFMTBCDField
      FieldName = 'R_VALOR'
      Precision = 18
      Size = 2
    end
    object cdsLanctoEventoR_OBSERVACAO: TStringField
      FieldName = 'R_OBSERVACAO'
    end
    object cdsLanctoEventoR_ORIGEM_LANCTO: TStringField
      FieldName = 'R_ORIGEM_LANCTO'
      FixedChar = True
      Size = 14
    end
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
    Top = 122
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Compressed = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 31
    Top = 69
  end
  object frxXMLExport1: TfrxXMLExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenExcelAfterExport = True
    Background = True
    Creator = 'FastReport'
    EmptyLines = True
    SuppressPageHeadersFooters = False
    RowsCount = 0
    Split = ssNotSplit
    Left = 40
    Top = 192
  end
  object frxRTFExport1: TfrxRTFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PictureType = gpPNG
    OpenAfterExport = True
    Wysiwyg = True
    Creator = 'FastReport'
    SuppressPageHeadersFooters = False
    HeaderFooterMode = hfText
    AutoSize = False
    Left = 48
    Top = 264
  end
end
