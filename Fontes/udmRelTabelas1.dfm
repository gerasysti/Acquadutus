object dmRelTabelas1: TdmRelTabelas1
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 546
  Width = 954
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40687.913054525500000000
    ReportOptions.LastChange = 43147.482811342590000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
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
        DataSet = frxMapaLogradouro
        DataSetName = 'frxMapaLogradouro'
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
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 20.779530000000000000
        Top = 272.126160000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 1.708410000000015000
          Width = 755.906000000000000000
          StretchMode = smActualHeight
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo5: TfrxSysMemoView
          Left = 319.370285000000000000
          Top = 4.157480309999983000
          Width = 117.165430000000000000
          Height = 15.118110236220470000
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
          Left = 659.638220000000000000
          Top = 4.157480309999983000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haRight
          Memo.UTF8W = (
            'GeraSys . Ti (c)')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Top = 4.157480309999983000
          Width = 215.433112360000000000
          Height = 15.118120000000000000
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxConfigOrgao."nome_fr3"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 109.606370000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape3: TfrxShapeView
          Align = baWidth
          Top = 78.504020000000000000
          Width = 755.906000000000000000
          Height = 30.236240000000000000
          Fill.BackColor = 15197402
          Frame.Color = clWhite
        end
        object frxConfigOrgaoRAZAO_SOCIAL: TfrxMemoView
          Left = 109.606370000000000000
          Top = 2.023622050000000000
          Width = 536.693260000000000000
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
          Left = 109.606572600000000000
          Top = 41.259895000000000000
          Width = 536.692854800000000000
          Height = 15.874015750000000000
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
          Left = 109.606370000000000000
          Top = 22.677180000000000000
          Width = 536.693260000000000000
          Height = 15.874015750000000000
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
        object Memo7: TfrxMemoView
          Left = 219.212598430000000000
          Top = 85.062992130000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Left = 109.606572600000000000
          Top = 59.338582677165400000
          Width = 536.692854800000000000
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
        object Memo4: TfrxMemoView
          Left = 68.031496060000000000
          Top = 85.488250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Id.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture2: TfrxPictureView
          Left = 3.779530000000000000
          Width = 90.708720000000000000
          Height = 73.322829760000000000
          DataField = 'LOGOMARCA'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Line6: TfrxLineView
          Left = 99.047310000000000000
          Top = 20.456710000000000000
          Width = 657.417115350000000000
          StretchMode = smActualHeight
          Color = clBlack
          Frame.Style = fsSquare
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 661.417750000000000000
          Top = 59.338582680000000000
          Width = 94.488250000000000000
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
        object Memo5: TfrxMemoView
          Left = 661.417750000000000000
          Top = 22.677180000000000000
          Width = 94.488250000000000000
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
            '[frxConfigOrgao."versao_SYS"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 21.921259840000000000
        Top = 188.976500000000000000
        Width = 755.906000000000000000
        DataSet = frxMapaLogradouro
        DataSetName = 'frxMapaLogradouro'
        RowCount = 0
        object frxTabTarifaQTD_INI: TfrxMemoView
          Left = 389.291546060000500000
          Top = 1.559059999999988000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          DataField = 'ENDER_ID_LOGRAD'
          DataSet = frxMapaLogradouro
          DataSetName = 'frxMapaLogradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxMapaLogradouro."ENDER_ID_LOGRAD"]')
          ParentFont = False
        end
        object frxTabTarifaQTD_FIM: TfrxMemoView
          Left = 449.763928430001100000
          Top = 1.559059999999988000
          Width = 302.362399999999000000
          Height = 15.118120000000000000
          DataField = 'ENDER_DESCR_LOGRAD'
          DataSet = frxMapaLogradouro
          DataSetName = 'frxMapaLogradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxMapaLogradouro."ENDER_DESCR_LOGRAD"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Top = 19.677180000000020000
          Width = 755.906000000000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779529999999994000
          Width = 143.622140000000000000
          Height = 15.118120000000000000
          DataSet = frxMapaLogradouro
          DataSetName = 'frxMapaLogradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxMapaLogradouro."ENDER_ID_DISTRITO">]-[<frxMapaLogradouro."E' +
              'NDER_DESCR_DISTRITO">]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 177.637910000000000000
          Top = 3.779529999999994000
          Width = 196.535560000000000000
          Height = 15.118120000000000000
          DataSet = frxMapaLogradouro
          DataSetName = 'frxMapaLogradouro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxMapaLogradouro."ENDER_ID_BAIRRO">]-[<frxMapaLogradouro."END' +
              'ER_DESCR_BAIRRO">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
      end
    end
  end
  object frxSubUnidOrcam: TfrxDBDataset
    UserName = 'frxSubUnidOrcam'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'ABREVIACAO=ABREVIACAO'
      'ID_UNID_ORCAMENT=ID_UNID_ORCAMENT'
      'DESCR_UNID_ORCAMENT=DESCR_UNID_ORCAMENT'
      'ID_SETOR=ID_SETOR'
      'DESCR_SETOR=DESCR_SETOR'
      'COD_ORGAO_BANCO=COD_ORGAO_BANCO'
      'ID_EVENTO_BASE=ID_EVENTO_BASE'
      'CALC_ATS=CALC_ATS'
      'CALC_SAL_FAMILIA=CALC_SAL_FAMILIA'
      'DESC_IRRF=DESC_IRRF'
      'PAGA_RESCISAO=PAGA_RESCISAO'
      'INATIVOS=INATIVOS'
      'GERA_RAIS=GERA_RAIS'
      'EM_USO=EM_USO'
      'COD_CONTAB_UNID_ORCAM=COD_CONTAB_UNID_ORCAM'
      'TIPO_VINCULO=TIPO_VINCULO'
      'TIPO_PREVID=TIPO_PREVID'
      'CONTRIB_INDIVIDUAL=CONTRIB_INDIVIDUAL'
      'TETO_VENCTO_BASE=TETO_VENCTO_BASE'
      'TETO_SALARIO=TETO_SALARIO'
      'ID_UNID_GESTORA=ID_UNID_GESTORA'
      'DESCR_TIPO_VINCULO=DESCR_TIPO_VINCULO'
      'DESCR_UNID_GESTORA=DESCR_UNID_GESTORA'
      'COD_ORGAO_TCM_UO=COD_ORGAO_TCM_UO'
      'COD_ORGAO_TCM_UG=COD_ORGAO_TCM_UG')
    DataSet = cdsSubUnidOrcam
    BCDToCurrency = False
    Left = 200
    Top = 16
  end
  object qrySubUnidOrcam: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM SUB_UNID_ORCAMENT')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 216
    Top = 48
  end
  object provSubUnidOrcam: TDataSetProvider
    DataSet = qrySubUnidOrcam
    Left = 224
    Top = 88
  end
  object cdsSubUnidOrcam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provSubUnidOrcam'
    Left = 240
    Top = 112
    object cdsSubUnidOrcamID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSubUnidOrcamDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object cdsSubUnidOrcamABREVIACAO: TStringField
      FieldName = 'ABREVIACAO'
    end
    object cdsSubUnidOrcamID_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_UNID_ORCAMENT'
      Required = True
    end
    object cdsSubUnidOrcamDESCR_UNID_ORCAMENT: TStringField
      FieldName = 'DESCR_UNID_ORCAMENT'
      Size = 60
    end
    object cdsSubUnidOrcamID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
      Required = True
    end
    object cdsSubUnidOrcamDESCR_SETOR: TStringField
      FieldName = 'DESCR_SETOR'
      Size = 40
    end
    object cdsSubUnidOrcamCOD_ORGAO_BANCO: TStringField
      FieldName = 'COD_ORGAO_BANCO'
      Size = 11
    end
    object cdsSubUnidOrcamID_EVENTO_BASE: TIntegerField
      FieldName = 'ID_EVENTO_BASE'
    end
    object cdsSubUnidOrcamCALC_ATS: TStringField
      FieldName = 'CALC_ATS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamCALC_SAL_FAMILIA: TStringField
      FieldName = 'CALC_SAL_FAMILIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamDESC_IRRF: TStringField
      FieldName = 'DESC_IRRF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamPAGA_RESCISAO: TStringField
      FieldName = 'PAGA_RESCISAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamINATIVOS: TStringField
      FieldName = 'INATIVOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamGERA_RAIS: TStringField
      FieldName = 'GERA_RAIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamEM_USO: TStringField
      FieldName = 'EM_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamCOD_CONTAB_UNID_ORCAM: TStringField
      FieldName = 'COD_CONTAB_UNID_ORCAM'
      Size = 6
    end
    object cdsSubUnidOrcamTIPO_VINCULO: TStringField
      FieldName = 'TIPO_VINCULO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamTIPO_PREVID: TStringField
      FieldName = 'TIPO_PREVID'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamCONTRIB_INDIVIDUAL: TStringField
      FieldName = 'CONTRIB_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object cdsSubUnidOrcamTETO_VENCTO_BASE: TFMTBCDField
      FieldName = 'TETO_VENCTO_BASE'
      Precision = 18
      Size = 2
    end
    object cdsSubUnidOrcamTETO_SALARIO: TFMTBCDField
      FieldName = 'TETO_SALARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsSubUnidOrcamID_UNID_GESTORA: TIntegerField
      FieldName = 'ID_UNID_GESTORA'
    end
    object cdsSubUnidOrcamDESCR_TIPO_VINCULO: TStringField
      FieldName = 'DESCR_TIPO_VINCULO'
      FixedChar = True
      Size = 17
    end
    object cdsSubUnidOrcamDESCR_UNID_GESTORA: TStringField
      FieldName = 'DESCR_UNID_GESTORA'
      Size = 60
    end
    object cdsSubUnidOrcamCOD_ORGAO_TCM_UO: TIntegerField
      FieldName = 'COD_ORGAO_TCM_UO'
    end
    object cdsSubUnidOrcamCOD_ORGAO_TCM_UG: TIntegerField
      FieldName = 'COD_ORGAO_TCM_UG'
    end
  end
  object qryConfigOrgao: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '    RAZAO_SOCIAL,'
      '    SIGLA,'
      '    CNPJ,'
      '    ENDER_DESCR_LOGRAD,'
      '    ENDER_LOGRAD_NUM,'
      '    ENDER_DESCR_BAIRRO,'
      '    ENDER_CIDADE,'
      '    ENDER_CEP,'
      '    ENDER_UF,'
      '    TELEFONES,'
      '    LOGOMARCA, '
      '    RAZAO_SOCIAL AS RAZAO_SOCIAL2,'
      '    '#39'00.000.000/0000-00'#39' AS CNPJ_FTDO,'
      '    RAZAO_SOCIAL||ENDER_DESCR_LOGRAD AS NOME_SYS,'
      '    RAZAO_SOCIAL||ENDER_DESCR_LOGRAD TIT_REL1,'
      '    RAZAO_SOCIAL||ENDER_DESCR_LOGRAD TIT_REL2'
      'FROM'
      '    CONFIG_ORGAO')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 112
    Top = 40
  end
  object provConfigOrgao: TDataSetProvider
    DataSet = qryConfigOrgao
    Left = 120
    Top = 64
  end
  object cdsConfigOrgao: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'provConfigOrgao'
    Left = 128
    Top = 96
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
    object cdsConfigOrgaoENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cdsConfigOrgaoENDER_LOGRAD_NUM: TStringField
      FieldName = 'ENDER_LOGRAD_NUM'
      Size = 7
    end
    object cdsConfigOrgaoENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
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
    object cdsConfigOrgaoTELEFONES: TStringField
      FieldName = 'TELEFONES'
      Size = 40
    end
    object cdsConfigOrgaoLOGOMARCA: TBlobField
      FieldName = 'LOGOMARCA'
      Size = 1
    end
    object cdsConfigOrgaoRAZAO_SOCIAL2: TStringField
      FieldName = 'RAZAO_SOCIAL2'
      Size = 60
    end
    object cdsConfigOrgaoCNPJ_FTDO: TStringField
      FieldName = 'CNPJ_FTDO'
      Required = True
      FixedChar = True
      Size = 18
    end
    object cdsConfigOrgaoNOME_SYS: TStringField
      FieldName = 'NOME_SYS'
      Size = 110
    end
    object cdsConfigOrgaoTIT_REL1: TStringField
      FieldName = 'TIT_REL1'
      Size = 110
    end
    object cdsConfigOrgaoTIT_REL2: TStringField
      FieldName = 'TIT_REL2'
      Size = 110
    end
    object cdsConfigOrgaoQUEBRA_PAG_BAIRRO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'QUEBRA_PAG_BAIRRO'
      Size = 1
    end
    object cdsConfigOrgaoVERSAO_SYS: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'VERSAO_SYS'
    end
    object cdsConfigOrgaonome_fr3: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'nome_fr3'
      Size = 50
    end
  end
  object frxConfigOrgao: TfrxDBDataset
    UserName = 'frxConfigOrgao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'SIGLA=SIGLA'
      'CNPJ=CNPJ'
      'ENDER_DESCR_LOGRAD=ENDER_DESCR_LOGRAD'
      'ENDER_LOGRAD_NUM=ENDER_LOGRAD_NUM'
      'ENDER_DESCR_BAIRRO=ENDER_DESCR_BAIRRO'
      'ENDER_CIDADE=ENDER_CIDADE'
      'ENDER_CEP=ENDER_CEP'
      'ENDER_UF=ENDER_UF'
      'TELEFONES=TELEFONES'
      'LOGOMARCA=LOGOMARCA'
      'RAZAO_SOCIAL2=RAZAO_SOCIAL2'
      'CNPJ_FTDO=CNPJ_FTDO'
      'NOME_SYS=NOME_SYS'
      'TIT_REL1=TIT_REL1'
      'TIT_REL2=TIT_REL2'
      'QUEBRA_PAG_BAIRRO=QUEBRA_PAG_BAIRRO'
      'VERSAO_SYS=VERSAO_SYS'
      'nome_fr3=nome_fr3')
    DataSet = cdsConfigOrgao
    BCDToCurrency = False
    Left = 104
    Top = 16
  end
  object frxCargoFuncao: TfrxDBDataset
    UserName = 'frxCargoFuncao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'ID_CATEG_FUNCIONAL=ID_CATEG_FUNCIONAL'
      'ID_TIPO_CARGO_TCM=ID_TIPO_CARGO_TCM'
      'VENCTO_BASE=VENCTO_BASE'
      'TIPO_SAL=TIPO_SAL'
      'FORMA_CALC=FORMA_CALC'
      'BASE_CALC_HORA_AULA=BASE_CALC_HORA_AULA'
      'CARGA_HOR_MENSAL=CARGA_HOR_MENSAL'
      'QTD_VAGA=QTD_VAGA'
      'ID_ESCOLARIDADE=ID_ESCOLARIDADE'
      'ID_CBO=ID_CBO'
      'ID_FAT_PROG_SAL=ID_FAT_PROG_SAL'
      'NUM_ATO_CRIACAO=NUM_ATO_CRIACAO'
      'DATA_ATO_CRIACAO=DATA_ATO_CRIACAO'
      'ID_EVENTO_BASE=ID_EVENTO_BASE'
      'CALC_ATS=CALC_ATS'
      'CALC_ATS_SOBRE_VENCTO_BASE=CALC_ATS_SOBRE_VENCTO_BASE'
      'CALC_DEC_TERC=CALC_DEC_TERC'
      'CALC_CONTRIB_SINDICAL=CALC_CONTRIB_SINDICAL'
      'SITUACAO=SITUACAO'
      'DT_EXTINSAO=DT_EXTINSAO'
      'OBSERVACAO=OBSERVACAO'
      'DESCR_CATEG_FUNCIONAL=DESCR_CATEG_FUNCIONAL'
      'DESCR_ESCOLARIDADE=DESCR_ESCOLARIDADE'
      'DESCR_TIPO_CARGO_TCM=DESCR_TIPO_CARGO_TCM'
      'QTD_REF_PROG_SAL=QTD_REF_PROG_SAL'
      'DESCR_EVENTO_BASE=DESCR_EVENTO_BASE'
      'COD_EVENTO_BASE=COD_EVENTO_BASE'
      'DESCR_CBO=DESCR_CBO'
      'COD_CBO=COD_CBO'
      'DESCR_SITUACAO=DESCR_SITUACAO'
      'DESCR_TIPO_SAL=DESCR_TIPO_SAL')
    DataSet = cdsCargoFuncao
    BCDToCurrency = False
    Left = 368
    Top = 104
  end
  object qryCargoFuncao: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM CARGO_FUNCAO')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 344
    Top = 19
  end
  object provCargoFuncao: TDataSetProvider
    DataSet = qryCargoFuncao
    Left = 352
    Top = 43
  end
  object cdsCargoFuncao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCargoFuncao'
    Left = 360
    Top = 75
    object cdsCargoFuncaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCargoFuncaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object cdsCargoFuncaoID_CATEG_FUNCIONAL: TIntegerField
      FieldName = 'ID_CATEG_FUNCIONAL'
      Required = True
    end
    object cdsCargoFuncaoID_TIPO_CARGO_TCM: TIntegerField
      FieldName = 'ID_TIPO_CARGO_TCM'
      Required = True
    end
    object cdsCargoFuncaoVENCTO_BASE: TFMTBCDField
      FieldName = 'VENCTO_BASE'
      Required = True
      Precision = 18
      Size = 4
    end
    object cdsCargoFuncaoTIPO_SAL: TStringField
      FieldName = 'TIPO_SAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCargoFuncaoFORMA_CALC: TStringField
      FieldName = 'FORMA_CALC'
      FixedChar = True
      Size = 1
    end
    object cdsCargoFuncaoBASE_CALC_HORA_AULA: TIntegerField
      FieldName = 'BASE_CALC_HORA_AULA'
    end
    object cdsCargoFuncaoCARGA_HOR_MENSAL: TIntegerField
      FieldName = 'CARGA_HOR_MENSAL'
    end
    object cdsCargoFuncaoQTD_VAGA: TIntegerField
      FieldName = 'QTD_VAGA'
    end
    object cdsCargoFuncaoID_ESCOLARIDADE: TIntegerField
      FieldName = 'ID_ESCOLARIDADE'
    end
    object cdsCargoFuncaoID_CBO: TIntegerField
      FieldName = 'ID_CBO'
    end
    object cdsCargoFuncaoID_FAT_PROG_SAL: TIntegerField
      FieldName = 'ID_FAT_PROG_SAL'
      Required = True
    end
    object cdsCargoFuncaoNUM_ATO_CRIACAO: TStringField
      FieldName = 'NUM_ATO_CRIACAO'
      FixedChar = True
      Size = 10
    end
    object cdsCargoFuncaoDATA_ATO_CRIACAO: TDateField
      FieldName = 'DATA_ATO_CRIACAO'
    end
    object cdsCargoFuncaoID_EVENTO_BASE: TIntegerField
      FieldName = 'ID_EVENTO_BASE'
    end
    object cdsCargoFuncaoCALC_ATS: TStringField
      FieldName = 'CALC_ATS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCargoFuncaoCALC_ATS_SOBRE_VENCTO_BASE: TStringField
      FieldName = 'CALC_ATS_SOBRE_VENCTO_BASE'
      FixedChar = True
      Size = 1
    end
    object cdsCargoFuncaoCALC_DEC_TERC: TStringField
      FieldName = 'CALC_DEC_TERC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCargoFuncaoCALC_CONTRIB_SINDICAL: TStringField
      FieldName = 'CALC_CONTRIB_SINDICAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCargoFuncaoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsCargoFuncaoDT_EXTINSAO: TDateField
      FieldName = 'DT_EXTINSAO'
    end
    object cdsCargoFuncaoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsCargoFuncaoDESCR_CATEG_FUNCIONAL: TStringField
      FieldName = 'DESCR_CATEG_FUNCIONAL'
      Size = 40
    end
    object cdsCargoFuncaoDESCR_ESCOLARIDADE: TStringField
      FieldName = 'DESCR_ESCOLARIDADE'
      Size = 40
    end
    object cdsCargoFuncaoDESCR_TIPO_CARGO_TCM: TStringField
      FieldName = 'DESCR_TIPO_CARGO_TCM'
      Size = 40
    end
    object cdsCargoFuncaoQTD_REF_PROG_SAL: TIntegerField
      FieldName = 'QTD_REF_PROG_SAL'
    end
    object cdsCargoFuncaoDESCR_EVENTO_BASE: TStringField
      FieldName = 'DESCR_EVENTO_BASE'
      Size = 40
    end
    object cdsCargoFuncaoCOD_EVENTO_BASE: TStringField
      FieldName = 'COD_EVENTO_BASE'
      FixedChar = True
      Size = 3
    end
    object cdsCargoFuncaoDESCR_CBO: TStringField
      FieldName = 'DESCR_CBO'
      Size = 140
    end
    object cdsCargoFuncaoCOD_CBO: TStringField
      FieldName = 'COD_CBO'
      FixedChar = True
      Size = 6
    end
    object cdsCargoFuncaoDESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 7
    end
    object cdsCargoFuncaoDESCR_TIPO_SAL: TStringField
      FieldName = 'DESCR_TIPO_SAL'
      FixedChar = True
      Size = 9
    end
  end
  object frxEvento: TfrxDBDataset
    UserName = 'frxEvento'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'CODIGO=CODIGO'
      'TIPO=TIPO'
      'FORMA_CALC=FORMA_CALC'
      'ID_CATEG=ID_CATEG'
      'ID_CATEG_TCM=ID_CATEG_TCM'
      'PERCENT_HORA_EXTRA=PERCENT_HORA_EXTRA'
      'HE_SOBRE_HORA_NORMAL=HE_SOBRE_HORA_NORMAL'
      'TIPO_BASE_CALC=TIPO_BASE_CALC'
      'INCIDE_SAL_FAMILIA=INCIDE_SAL_FAMILIA'
      'INCIDE_ATS=INCIDE_ATS'
      'INCIDE_FERIAS=INCIDE_FERIAS'
      'INCIDE_DEC_TERC=INCIDE_DEC_TERC'
      'INCIDE_FALTA=INCIDE_FALTA'
      'INCIDE_PREVID=INCIDE_PREVID'
      'INCIDE_IRRF=INCIDE_IRRF'
      'INCIDE_OUTRA_BC1=INCIDE_OUTRA_BC1'
      'INCIDE_OUTRA_BC2=INCIDE_OUTRA_BC2'
      'INCIDE_OUTRA_BC3=INCIDE_OUTRA_BC3'
      'VALOR_FIXO=VALOR_FIXO'
      'DIVISOR=DIVISOR'
      'SUBDIVISOR=SUBDIVISOR'
      'GERA_RAIS=GERA_RAIS'
      'COPIA_MES_ANTERIOR=COPIA_MES_ANTERIOR'
      'DESCR_CATEGORIA=DESCR_CATEGORIA'
      'DESCR_FORMA_CALC=DESCR_FORMA_CALC'
      'DESCR_BASE_CALC=DESCR_BASE_CALC'
      'DESCR_CATEG_TCM=DESCR_CATEG_TCM')
    DataSet = cdsEvento
    BCDToCurrency = False
    Left = 440
    Top = 16
  end
  object qryEvento: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM EVENTO')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 440
    Top = 72
  end
  object provEvento: TDataSetProvider
    DataSet = qryEvento
    Left = 440
    Top = 128
  end
  object cdsEvento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provEvento'
    Left = 440
    Top = 184
    object cdsEventoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEventoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object cdsEventoCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsEventoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEventoFORMA_CALC: TStringField
      FieldName = 'FORMA_CALC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEventoID_CATEG: TIntegerField
      FieldName = 'ID_CATEG'
    end
    object cdsEventoID_CATEG_TCM: TIntegerField
      FieldName = 'ID_CATEG_TCM'
    end
    object cdsEventoPERCENT_HORA_EXTRA: TFMTBCDField
      FieldName = 'PERCENT_HORA_EXTRA'
      Precision = 15
      Size = 2
    end
    object cdsEventoHE_SOBRE_HORA_NORMAL: TStringField
      FieldName = 'HE_SOBRE_HORA_NORMAL'
      FixedChar = True
      Size = 1
    end
    object cdsEventoTIPO_BASE_CALC: TStringField
      FieldName = 'TIPO_BASE_CALC'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_SAL_FAMILIA: TStringField
      FieldName = 'INCIDE_SAL_FAMILIA'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_ATS: TStringField
      FieldName = 'INCIDE_ATS'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_FERIAS: TStringField
      FieldName = 'INCIDE_FERIAS'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_DEC_TERC: TStringField
      FieldName = 'INCIDE_DEC_TERC'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_FALTA: TStringField
      FieldName = 'INCIDE_FALTA'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_PREVID: TStringField
      FieldName = 'INCIDE_PREVID'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_IRRF: TStringField
      FieldName = 'INCIDE_IRRF'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_OUTRA_BC1: TStringField
      FieldName = 'INCIDE_OUTRA_BC1'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_OUTRA_BC2: TStringField
      FieldName = 'INCIDE_OUTRA_BC2'
      FixedChar = True
      Size = 1
    end
    object cdsEventoINCIDE_OUTRA_BC3: TStringField
      FieldName = 'INCIDE_OUTRA_BC3'
      FixedChar = True
      Size = 1
    end
    object cdsEventoVALOR_FIXO: TFMTBCDField
      FieldName = 'VALOR_FIXO'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsEventoDIVISOR: TFMTBCDField
      FieldName = 'DIVISOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsEventoSUBDIVISOR: TFMTBCDField
      FieldName = 'SUBDIVISOR'
      Required = True
      Precision = 15
      Size = 2
    end
    object cdsEventoGERA_RAIS: TStringField
      FieldName = 'GERA_RAIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEventoCOPIA_MES_ANTERIOR: TStringField
      FieldName = 'COPIA_MES_ANTERIOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEventoDESCR_CATEGORIA: TStringField
      FieldName = 'DESCR_CATEGORIA'
      Size = 40
    end
    object cdsEventoDESCR_FORMA_CALC: TStringField
      FieldName = 'DESCR_FORMA_CALC'
      FixedChar = True
      Size = 18
    end
    object cdsEventoDESCR_BASE_CALC: TStringField
      FieldName = 'DESCR_BASE_CALC'
      FixedChar = True
      Size = 12
    end
    object cdsEventoDESCR_CATEG_TCM: TStringField
      FieldName = 'DESCR_CATEG_TCM'
      Size = 60
    end
  end
  object frxEstrutOrganiz: TfrxDBDataset
    UserName = 'frxEstrutOrganiz'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'ABREVIACAO=ABREVIACAO'
      'TIPO_VINCULO=TIPO_VINCULO'
      'ID_UNID_ORCAMENT=ID_UNID_ORCAMENT'
      'DESCR_UNID_ORCAMENT=DESCR_UNID_ORCAMENT'
      'ID_SETOR=ID_SETOR'
      'DESCR_SETOR=DESCR_SETOR'
      'COD_ORGAO_BANCO=COD_ORGAO_BANCO'
      'ID_EVENTO_BASE=ID_EVENTO_BASE'
      'CALC_ATS=CALC_ATS'
      'CALC_SAL_FAMILIA=CALC_SAL_FAMILIA'
      'DESC_IRRF=DESC_IRRF'
      'PAGA_RESCISAO=PAGA_RESCISAO'
      'INATIVOS=INATIVOS'
      'GERA_RAIS=GERA_RAIS'
      'EM_USO=EM_USO'
      'COD_CONTAB_UNID_ORCAM=COD_CONTAB_UNID_ORCAM'
      'ID_UNID_GESTORA=ID_UNID_GESTORA'
      'DESCR_TIPO_VINCULO=DESCR_TIPO_VINCULO'
      'DESCR_UNID_GESTORA=DESCR_UNID_GESTORA'
      'CONTRIB_INDIVIDUAL=CONTRIB_INDIVIDUAL'
      'TETO_VENCTO_BASE=TETO_VENCTO_BASE'
      'TETO_SALARIO=TETO_SALARIO'
      'COD_ORGAO_TCM_UO=COD_ORGAO_TCM_UO'
      'COD_ORGAO_TCM_UG=COD_ORGAO_TCM_UG'
      'TIPO_PREVID=TIPO_PREVID')
    DataSet = cdsEstrutOrganiz
    BCDToCurrency = False
    Left = 528
    Top = 16
  end
  object qryEstrutOrganiz: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT * '
      'FROM '
      'SUB_UNID_ORCAMENT'
      'WHERE '
      'EM_USO = '#39'S'#39
      'ORDER BY'
      'ID_UNID_GESTORA, ID_UNID_ORCAMENT, ID')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 528
    Top = 72
  end
  object provEstrutOrganiz: TDataSetProvider
    DataSet = qryEstrutOrganiz
    Left = 528
    Top = 128
  end
  object cdsEstrutOrganiz: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provEstrutOrganiz'
    Left = 528
    Top = 184
    object cdsEstrutOrganizID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstrutOrganizDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
    object cdsEstrutOrganizABREVIACAO: TStringField
      FieldName = 'ABREVIACAO'
    end
    object cdsEstrutOrganizTIPO_VINCULO: TStringField
      FieldName = 'TIPO_VINCULO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizID_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_UNID_ORCAMENT'
      Required = True
    end
    object cdsEstrutOrganizDESCR_UNID_ORCAMENT: TStringField
      FieldName = 'DESCR_UNID_ORCAMENT'
      Size = 60
    end
    object cdsEstrutOrganizID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
      Required = True
    end
    object cdsEstrutOrganizDESCR_SETOR: TStringField
      FieldName = 'DESCR_SETOR'
      Size = 40
    end
    object cdsEstrutOrganizCOD_ORGAO_BANCO: TStringField
      FieldName = 'COD_ORGAO_BANCO'
      Size = 11
    end
    object cdsEstrutOrganizID_EVENTO_BASE: TIntegerField
      FieldName = 'ID_EVENTO_BASE'
    end
    object cdsEstrutOrganizCALC_ATS: TStringField
      FieldName = 'CALC_ATS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizCALC_SAL_FAMILIA: TStringField
      FieldName = 'CALC_SAL_FAMILIA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizDESC_IRRF: TStringField
      FieldName = 'DESC_IRRF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizPAGA_RESCISAO: TStringField
      FieldName = 'PAGA_RESCISAO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizINATIVOS: TStringField
      FieldName = 'INATIVOS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizGERA_RAIS: TStringField
      FieldName = 'GERA_RAIS'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizEM_USO: TStringField
      FieldName = 'EM_USO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizCOD_CONTAB_UNID_ORCAM: TStringField
      FieldName = 'COD_CONTAB_UNID_ORCAM'
      Size = 6
    end
    object cdsEstrutOrganizID_UNID_GESTORA: TIntegerField
      FieldName = 'ID_UNID_GESTORA'
    end
    object cdsEstrutOrganizDESCR_TIPO_VINCULO: TStringField
      FieldName = 'DESCR_TIPO_VINCULO'
      FixedChar = True
      Size = 17
    end
    object cdsEstrutOrganizDESCR_UNID_GESTORA: TStringField
      FieldName = 'DESCR_UNID_GESTORA'
      Size = 60
    end
    object cdsEstrutOrganizCONTRIB_INDIVIDUAL: TStringField
      FieldName = 'CONTRIB_INDIVIDUAL'
      FixedChar = True
      Size = 1
    end
    object cdsEstrutOrganizTETO_VENCTO_BASE: TFMTBCDField
      FieldName = 'TETO_VENCTO_BASE'
      Precision = 18
      Size = 2
    end
    object cdsEstrutOrganizTETO_SALARIO: TFMTBCDField
      FieldName = 'TETO_SALARIO'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsEstrutOrganizCOD_ORGAO_TCM_UO: TIntegerField
      FieldName = 'COD_ORGAO_TCM_UO'
    end
    object cdsEstrutOrganizCOD_ORGAO_TCM_UG: TIntegerField
      FieldName = 'COD_ORGAO_TCM_UG'
    end
    object cdsEstrutOrganizTIPO_PREVID: TStringField
      FieldName = 'TIPO_PREVID'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object frxTabTarifa: TfrxDBDataset
    UserName = 'frxTabTarifa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'FORMA_CALCULO=FORMA_CALCULO'
      'TIPO_UNID_CONSUM=TIPO_UNID_CONSUM'
      'QTD_INI=QTD_INI'
      'QTD_FIM=QTD_FIM'
      'VALOR=VALOR'
      'ID_VIGENCIA=ID_VIGENCIA'
      'DESCR_FORMA_CALCULO=DESCR_FORMA_CALCULO'
      'DESCR_TIPO_UNID_CONSUM=DESCR_TIPO_UNID_CONSUM'
      'INI_VIGENCIA=INI_VIGENCIA'
      'FIM_VIGENCIA=FIM_VIGENCIA'
      'INI_VIG_FTDO=INI_VIG_FTDO'
      'FIM_VIG_FTDO=FIM_VIG_FTDO')
    DataSet = cdsTabTarifa
    BCDToCurrency = False
    Left = 48
    Top = 341
  end
  object qryTabTarifa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMesAtual'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesAtual'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from tab_tarifa'
      'where (:pAnoMesAtual >= ini_vigencia) and'
      ' (:pAnoMesAtual <= fim_vigencia)'
      'order by ini_vigencia,fim_vigencia,forma_calculo')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 24
    Top = 248
  end
  object provTabTarifa: TDataSetProvider
    DataSet = qryTabTarifa
    Left = 32
    Top = 280
  end
  object cdsTabTarifa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'provTabTarifa'
    Left = 40
    Top = 312
    object cdsTabTarifaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTabTarifaFORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cdsTabTarifaTIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object cdsTabTarifaQTD_INI: TIntegerField
      FieldName = 'QTD_INI'
    end
    object cdsTabTarifaQTD_FIM: TIntegerField
      FieldName = 'QTD_FIM'
    end
    object cdsTabTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsTabTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
    end
    object cdsTabTarifaDESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 22
    end
    object cdsTabTarifaDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsTabTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      Size = 6
    end
    object cdsTabTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      Size = 6
    end
    object cdsTabTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object cdsTabTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
  end
  object frxTabOutraTarifa: TfrxDBDataset
    UserName = 'frxTabOutraTarifa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'VALOR=VALOR'
      'ID_VIGENCIA=ID_VIGENCIA'
      'INI_VIGENCIA=INI_VIGENCIA'
      'FIM_VIGENCIA=FIM_VIGENCIA'
      'INI_VIG_FTDO=INI_VIG_FTDO'
      'FIM_VIG_FTDO=FIM_VIG_FTDO')
    DataSet = cdsTabOutraTarifa
    BCDToCurrency = False
    Left = 176
    Top = 336
  end
  object qryTabOutraTarifa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMesAtual'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesAtual'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from tab_outra_tarifa'
      'where (:pAnoMesAtual >= ini_vigencia) and'
      ' (:pAnoMesAtual <= fim_vigencia)'
      'order by ini_vigencia, id')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 136
    Top = 256
  end
  object provTabOutraTarifa: TDataSetProvider
    DataSet = qryTabOutraTarifa
    Left = 144
    Top = 288
  end
  object cdsTabOutraTarifa: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'provTabOutraTarifa'
    Left = 160
    Top = 312
    object cdsTabOutraTarifaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTabOutraTarifaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsTabOutraTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object cdsTabOutraTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
    end
    object cdsTabOutraTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      Size = 6
    end
    object cdsTabOutraTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      Size = 6
    end
    object cdsTabOutraTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object cdsTabOutraTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
  end
  object qryUnidLotacao: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pTipoIni'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pTipoFim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      '    UNID_LOTACAO'
      'WHERE'
      '   (ID_TIPO_UNID_LOTACAO >= :pTipoIni) AND'
      '  (ID_TIPO_UNID_LOTACAO <= :pTipoFim)'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 632
    Top = 24
  end
  object provUnidLotacao: TDataSetProvider
    DataSet = qryUnidLotacao
    Left = 632
    Top = 80
  end
  object cdsUnidLotacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provUnidLotacao'
    Left = 632
    Top = 136
    object cdsUnidLotacaoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsUnidLotacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object cdsUnidLotacaoID_TIPO_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_TIPO_UNID_LOTACAO'
      Required = True
    end
    object cdsUnidLotacaoDESCR_TIPO_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_TIPO_UNID_LOTACAO'
      Size = 30
    end
  end
  object frxUnidLotacao: TfrxDBDataset
    UserName = 'frxUnidLotacao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'ID_TIPO_UNID_LOTACAO=ID_TIPO_UNID_LOTACAO'
      'DESCR_TIPO_UNID_LOTACAO=DESCR_TIPO_UNID_LOTACAO')
    DataSet = cdsUnidLotacao
    BCDToCurrency = False
    Left = 632
    Top = 184
  end
  object qryDepto: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      '    DEPTO')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 728
    Top = 24
  end
  object provDepto: TDataSetProvider
    DataSet = qryDepto
    Left = 728
    Top = 80
  end
  object cdsDepto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provDepto'
    Left = 728
    Top = 136
    object cdsDeptoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDeptoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
  end
  object frxDepto: TfrxDBDataset
    UserName = 'frxDepto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO')
    DataSet = cdsDepto
    BCDToCurrency = False
    Left = 728
    Top = 184
  end
  object qryEstFuncional: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      '*'
      'FROM'
      '    ESTADO_FUNCIONAL')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 800
    Top = 24
    object qryEstFuncionalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryEstFuncionalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object qryEstFuncionalINICIA_SERVIDOR: TStringField
      FieldName = 'INICIA_SERVIDOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEstFuncionalCALC_SAL: TStringField
      FieldName = 'CALC_SAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryEstFuncionalTIPO_MOVIM: TStringField
      FieldName = 'TIPO_MOVIM'
      FixedChar = True
      Size = 1
    end
    object qryEstFuncionalCOD_AFAST_PREVID: TStringField
      FieldName = 'COD_AFAST_PREVID'
      FixedChar = True
      Size = 2
    end
    object qryEstFuncionalCOD_RETORNO_PREVID: TStringField
      FieldName = 'COD_RETORNO_PREVID'
      FixedChar = True
      Size = 2
    end
    object qryEstFuncionalMOVIM_DEFINITIVA: TStringField
      FieldName = 'MOVIM_DEFINITIVA'
      FixedChar = True
      Size = 1
    end
    object qryEstFuncionalPAGTO_ENTID_PREVID: TStringField
      FieldName = 'PAGTO_ENTID_PREVID'
      FixedChar = True
      Size = 1
    end
  end
  object provEstFuncional: TDataSetProvider
    DataSet = qryEstFuncional
    Left = 800
    Top = 80
  end
  object cdsEstFuncional: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provEstFuncional'
    Left = 800
    Top = 136
    object cdsEstFuncionalID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEstFuncionalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object cdsEstFuncionalINICIA_SERVIDOR: TStringField
      FieldName = 'INICIA_SERVIDOR'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstFuncionalCALC_SAL: TStringField
      FieldName = 'CALC_SAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstFuncionalTIPO_MOVIM: TStringField
      FieldName = 'TIPO_MOVIM'
      FixedChar = True
      Size = 1
    end
    object cdsEstFuncionalCOD_AFAST_PREVID: TStringField
      FieldName = 'COD_AFAST_PREVID'
      FixedChar = True
      Size = 2
    end
    object cdsEstFuncionalCOD_RETORNO_PREVID: TStringField
      FieldName = 'COD_RETORNO_PREVID'
      FixedChar = True
      Size = 2
    end
    object cdsEstFuncionalMOVIM_DEFINITIVA: TStringField
      FieldName = 'MOVIM_DEFINITIVA'
      FixedChar = True
      Size = 1
    end
    object cdsEstFuncionalPAGTO_ENTID_PREVID: TStringField
      FieldName = 'PAGTO_ENTID_PREVID'
      FixedChar = True
      Size = 1
    end
  end
  object frxEstFuncional: TfrxDBDataset
    UserName = 'frxEstFuncional'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO'
      'INICIA_SERVIDOR=INICIA_SERVIDOR'
      'CALC_SAL=CALC_SAL'
      'TIPO_MOVIM=TIPO_MOVIM'
      'COD_AFAST_PREVID=COD_AFAST_PREVID'
      'COD_RETORNO_PREVID=COD_RETORNO_PREVID'
      'MOVIM_DEFINITIVA=MOVIM_DEFINITIVA'
      'PAGTO_ENTID_PREVID=PAGTO_ENTID_PREVID')
    DataSet = cdsEstFuncional
    BCDToCurrency = False
    Left = 800
    Top = 184
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
  object qryTabLogradouro: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'select '
      '*'
      'from'
      'logradouro')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 264
    Top = 248
  end
  object provTabLogradouro: TDataSetProvider
    DataSet = qryTabLogradouro
    Left = 280
    Top = 272
  end
  object cdsTabLogradouro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provTabLogradouro'
    Left = 296
    Top = 304
    object cdsTabLogradouroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsTabLogradouroDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object frxTabLogradouro: TfrxDBDataset
    UserName = 'frxTabLogradouro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'DESCRICAO=DESCRICAO')
    DataSet = cdsTabLogradouro
    BCDToCurrency = False
    Left = 312
    Top = 328
  end
  object qryMapaLogradouro: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        'ENDER_ID_DISTRITO, ENDER_DESCR_DISTRITO, ENDER_ID_BAIRRO, ENDER_' +
        'DESCR_BAIRRO,'
      'ENDER_ID_LOGRAD, ENDER_DESCR_LOGRAD'
      'FROM'
      'unid_consumidora'
      'GROUP BY'
      
        'ENDER_ID_DISTRITO, ENDER_DESCR_DISTRITO, ENDER_ID_BAIRRO, ENDER_' +
        'DESCR_BAIRRO,'
      'ENDER_ID_LOGRAD, ENDER_DESCR_LOGRAD'
      'order by'
      'ENDER_ID_DISTRITO, ender_id_bairro, ender_descr_lograd')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 368
    Top = 264
  end
  object provMapaLogradouro: TDataSetProvider
    DataSet = qryMapaLogradouro
    Left = 384
    Top = 288
  end
  object cdsMapaLogradouro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provMapaLogradouro'
    Left = 400
    Top = 320
    object cdsMapaLogradouroENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cdsMapaLogradouroENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsMapaLogradouroENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsMapaLogradouroENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsMapaLogradouroENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cdsMapaLogradouroENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
  end
  object frxMapaLogradouro: TfrxDBDataset
    UserName = 'frxMapaLogradouro'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ENDER_ID_DISTRITO=ENDER_ID_DISTRITO'
      'ENDER_DESCR_DISTRITO=ENDER_DESCR_DISTRITO'
      'ENDER_ID_BAIRRO=ENDER_ID_BAIRRO'
      'ENDER_DESCR_BAIRRO=ENDER_DESCR_BAIRRO'
      'ENDER_ID_LOGRAD=ENDER_ID_LOGRAD'
      'ENDER_DESCR_LOGRAD=ENDER_DESCR_LOGRAD')
    DataSet = cdsMapaLogradouro
    BCDToCurrency = False
    Left = 416
    Top = 344
  end
end
