object frmPrintRelOutros2: TfrmPrintRelOutros2
  Left = 92
  Top = 157
  Caption = 'frmPrintRelOutros2'
  ClientHeight = 502
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBMemo1: TDBMemo
    Left = 8
    Top = 21
    Width = 689
    Height = 473
    DataField = 'OBSERVACAO'
    DataSource = DataSource1
    TabOrder = 0
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
  object cdsConfigOrgao: TClientDataSet
    Active = True
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
  object provConfigOrgao: TDataSetProvider
    DataSet = qryConfigOrgao
    Left = 144
    Top = 8
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
    ReportOptions.LastChange = 40982.913889513890000000
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
        DataSet = frxFichaCadObs
        DataSetName = 'frxFichaCadObs'
      end
      item
        DataSet = frxFichaCadServidor
        DataSetName = 'frxFichaCadServidor'
      end
      item
        DataSet = frxItemFichaCad
        DataSetName = 'frxItemFichaCad'
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
      object PageFooter1: TfrxPageFooter
        Height = 24.559060000000000000
        Top = 978.898270000000000000
        Width = 755.906000000000000000
        object Line3: TfrxLineView
          Top = 1.708410000000185000
          Width = 755.905536220000000000
          ShowHint = False
          StretchMode = smActualHeight
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object SysMemo1: TfrxSysMemoView
          Top = 3.779527560000247000
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
          Left = 330.708875000000000000
          Top = 4.157480314960708000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
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
        object Memo15: TfrxMemoView
          Left = 661.417750000001000000
          Top = 4.157480309999869000
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
            'GeraSys.Ti (c)')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 139.842610000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape1: TfrxShapeView
          Align = baWidth
          Top = 90.708720000000000000
          Width = 755.906000000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Color = 16700346
          Frame.Color = clWhite
        end
        object frxConfigOrgaoRAZAO_SOCIAL: TfrxMemoView
          Left = 108.661417320000000000
          Top = 3.023622050000000000
          Width = 536.693260000000000000
          Height = 30.236240000000000000
          ShowHint = False
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."RAZAO_SOCIAL"]'
            '[frxConfigOrgao."NOME_SYS"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 108.661417320000000000
          Top = 44.259895000000000000
          Width = 536.692854800000000000
          Height = 30.236240000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."TITULO_REL1"]'
            '[frxConfigOrgao."TITULO_REL2"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 98.267780000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'BRASAO'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture2: TfrxPictureView
          Left = 654.858690000000000000
          Top = 3.023622050000000000
          Width = 98.267780000000000000
          Height = 79.370130000000000000
          ShowHint = False
          DataField = 'LOGO_ADMIN'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = 1.133858267716540000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Id.')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'N o m e')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 515.575140000000000000
          Top = 94.488250000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Matricula')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 589.606680000000000000
          Top = 94.488250000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sexo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 634.961040000000000000
          Top = 94.488250000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'PIS/PASEP')
          ParentFont = False
        end
        object frxFichaCadServidorNOME_SERVIDOR: TfrxMemoView
          Left = 79.370130000000000000
          Top = 112.165430000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME_SERVIDOR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxFichaCadServidor."NOME_SERVIDOR"]')
          ParentFont = False
        end
        object frxFichaCadServidorMATRICULA: TfrxMemoView
          Left = 517.016080000000000000
          Top = 110.385900000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'MATRICULA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxFichaCadServidor."MATRICULA"]')
          ParentFont = False
        end
        object frxFichaCadServidorSEXO: TfrxMemoView
          Left = 595.386210000000000000
          Top = 110.165430000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'SEXO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxFichaCadServidor."SEXO"]')
          ParentFont = False
        end
        object frxFichaCadServidorPIS_PASEP_FTDO: TfrxMemoView
          Left = 634.961040000000000000
          Top = 112.165430000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'PIS_PASEP_FTDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxFichaCadServidor."PIS_PASEP_FTDO"]')
          ParentFont = False
        end
        object frxFichaCadServidorID_FTDO: TfrxMemoView
          Left = 1.133858267716540000
          Top = 112.165430000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'ID_FTDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxFichaCadServidor."ID_FTDO"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 64.251966060000000000
        Top = 706.772110000000000000
        Width = 755.906000000000000000
        Condition = 'frxItemFichaCad."R_ITEM"'
        ReprintOnNewPage = True
        object frxItemFichaCadR_DESCR_ITEM: TfrxMemoView
          Top = 3.779530000000022000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_ITEM"] - [frxItemFichaCad."R_DESCR_ITEM"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 24.354360000000040000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          Align = baWidth
          Top = 2.000000000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Top = 27.236220470000040000
          Width = 45.354360000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_TIT_COL1"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 49.133890000000000000
          Top = 27.236220470000040000
          Width = 124.724490000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_TIT_COL2"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 180.330860000000000000
          Top = 27.236220470000040000
          Width = 132.283550000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_TIT_COL3"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 340.157700000000000000
          Top = 27.236220470000040000
          Width = 75.590600000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_TIT_COL4"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 457.661720000000000000
          Top = 27.236220470000040000
          Width = 90.708720000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_TIT_COL5"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 49.133890000000000000
          Top = 42.692949999999990000
          Width = 124.724490000000000000
          Height = 15.118110240000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_TIT_COL7"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 628.535433070000000000
          Top = 27.236239999999950000
          Width = 90.708720000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxItemFichaCad."R_TIT_COL6"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Align = baWidth
          Top = 61.590600000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        Height = 34.015770000000010000
        Top = 793.701300000000000000
        Width = 755.906000000000000000
        DataSet = frxItemFichaCad
        DataSetName = 'frxItemFichaCad'
        RowCount = 0
        object frxItemFichaCadR_ID: TfrxMemoView
          Top = 0.267716540000037600
          Width = 45.354360000000000000
          Height = 15.118110236220470000
          ShowHint = False
          DataField = 'R_COL1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItemFichaCad."R_COL1"]')
          ParentFont = False
        end
        object frxItemFichaCadR_CAMPO2: TfrxMemoView
          Left = 49.133858267716530000
          Top = 0.267716540000037600
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'R_COL2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItemFichaCad."R_COL2"]')
          ParentFont = False
        end
        object frxItemFichaCadR_CAMPO3: TfrxMemoView
          Left = 180.330860000000000000
          Top = 0.267716540000037600
          Width = 151.181200000000000000
          Height = 15.118110236220470000
          ShowHint = False
          DataField = 'R_COL3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItemFichaCad."R_COL3"]')
          ParentFont = False
        end
        object frxItemFichaCadR_CAMPO4: TfrxMemoView
          Left = 340.157700000000000000
          Top = 0.267716540000037600
          Width = 109.606370000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          DataField = 'R_COL4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItemFichaCad."R_COL4"]')
          ParentFont = False
        end
        object frxItemFichaCadR_CAMPO6: TfrxMemoView
          Left = 457.661720000000000000
          Top = 0.267716540000037600
          Width = 158.740260000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          DataField = 'R_COL5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItemFichaCad."R_COL5"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 628.535433070000000000
          Top = 0.267716540000037600
          Width = 124.724490000000000000
          Height = 15.118110236220470000
          ShowHint = False
          AutoWidth = True
          DataField = 'R_COL6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItemFichaCad."R_COL6"]')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 49.133890000000000000
          Top = 16.456710000000040000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          AutoWidth = True
          DataField = 'R_COL7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = []
          Memo.UTF8W = (
            '[frxItemFichaCad."R_COL7"]')
          ParentFont = False
        end
      end
      object MasterData2: TfrxMasterData
        Height = 464.882190000000000000
        Top = 219.212740000000000000
        Width = 755.906000000000000000
        DataSet = frxFichaCadServidor
        DataSetName = 'frxFichaCadServidor'
        RowCount = 0
        object frxFichaCadServidorDESCR_ESCOLARIDADE: TfrxMemoView
          Top = 441.543600000000000000
          Width = 374.173470000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."ID_ESCOLARIDADE"]-[frxFichaCadServidor."DE' +
              'SCR_ESCOLARIDADE"]')
          ParentFont = False
        end
        object frxFichaCadServidorFORMACAO_CONS: TfrxMemoView
          Left = 377.952755910000000000
          Top = 441.543600000000000000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'FORMACAO_CONS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."FORMACAO_CONS"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 1.779530000000000000
          Top = 3.779529999999994000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '01 - DADOS PESSOAIS E DOCUMENTA'#199#195'O')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 26.252010000000010000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object frxFichaCadServidorDT_NASCIMENTO: TfrxMemoView
          Top = 49.015770000000030000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DT_NASCIMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."DT_NASCIMENTO"]')
          ParentFont = False
        end
        object frxFichaCadServidorNATURALID: TfrxMemoView
          Left = 94.110236220000000000
          Top = 49.015770000000030000
          Width = 177.637910000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'NATURALID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."NATURALID"]')
          ParentFont = False
        end
        object frxFichaCadServidorDESCR_ESTADO_CIVIL: TfrxMemoView
          Left = 277.795275590000000000
          Top = 49.015770000000030000
          Width = 117.165430000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'DESCR_ESTADO_CIVIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."DESCR_ESTADO_CIVIL"]')
          ParentFont = False
        end
        object frxFichaCadServidorCART_IDENTIDADE: TfrxMemoView
          Left = 404.787401570000000000
          Top = 49.015770000000030000
          Width = 204.094620000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CART_IDENTIDADE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."CART_IDENTIDADE"]')
          ParentFont = False
        end
        object frxFichaCadServidorCPF_FTDO: TfrxMemoView
          Top = 88.929190000000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CPF_FTDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."CPF_FTDO"]')
          ParentFont = False
        end
        object frxFichaCadServidorTIT_ELEITOR_NUM: TfrxMemoView
          Left = 124.346456690000000000
          Top = 88.929190000000000000
          Width = 287.244280000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."TIT_ELEITOR_NUM"]/[frxFichaCadServidor."TI' +
              'T_ELEITOR_ZONA"]/[frxFichaCadServidor."TIT_ELEITOR_SECAO"]')
          ParentFont = False
        end
        object frxFichaCadServidorRESERVISTA: TfrxMemoView
          Left = 425.196850390000000000
          Top = 88.929190000000000000
          Width = 181.417440000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'RESERVISTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."RESERVISTA"]')
          ParentFont = False
        end
        object Shape2: TfrxShapeView
          Left = 628.913385826771700000
          Top = 52.913420000000030000
          Width = 124.724490000000000000
          Height = 139.842610000000000000
          ShowHint = False
        end
        object Picture3: TfrxPictureView
          Left = 634.401980000000000000
          Top = 60.472480000000010000
          Width = 113.385900000000000000
          Height = 124.724490000000000000
          ShowHint = False
          DataField = 'FOTO'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object frxFichaCadServidorCHN: TfrxMemoView
          Top = 131.039370080000000000
          Width = 151.181200000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CART_HABILITACAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."CART_HABILITACAO"]')
          ParentFont = False
        end
        object frxFichaCadServidorFILIACAO_PAI: TfrxMemoView
          Left = 160.629921260000000000
          Top = 131.039370080000000000
          Width = 226.771800000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'FILIACAO_PAI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."FILIACAO_PAI"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 392.692913390000000000
          Top = 131.039370080000000000
          Width = 226.771800000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'FILIACAO_MAE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."FILIACAO_MAE"]')
          ParentFont = False
        end
        object frxFichaCadServidorCONJUGE_NOME: TfrxMemoView
          Top = 171.637795280000000000
          Width = 321.260050000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CONJUGE_NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."CONJUGE_NOME"]')
          ParentFont = False
        end
        object frxFichaCadServidorCONJUGE_CPF: TfrxMemoView
          Left = 453.543307090000000000
          Top = 171.637795280000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'CONJUGE_CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."CONJUGE_CPF"]')
          ParentFont = False
        end
        object frxFichaCadServidorENDERECO: TfrxMemoView
          Top = 213.433210000000000000
          Width = 585.827150000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'ENDERECO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."ENDERECO"]')
          ParentFont = False
        end
        object frxFichaCadServidorTELEFONE: TfrxMemoView
          Left = 592.629921260000000000
          Top = 213.433210000000000000
          Width = 162.519790000000000000
          Height = 15.118110240000000000
          ShowHint = False
          DataField = 'TELEFONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."TELEFONE"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 238.685220000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 261.881880000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo12: TfrxMemoView
          Top = 240.984230000000000000
          Width = 317.480520000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '02 - DADOS FUNCIONAIS')
          ParentFont = False
        end
        object frxFichaCadServidorSEXO1: TfrxMemoView
          Top = 282.110236220473000000
          Width = 49.133890000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."DESCR_EFETIVO"]')
          ParentFont = False
        end
        object frxFichaCadServidorDT_CONCURSO: TfrxMemoView
          Left = 185.196850393701000000
          Top = 282.110236220000000000
          Width = 109.606370000000000000
          Height = 15.118110236220470000
          ShowHint = False
          DataField = 'DT_CONCURSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."DT_CONCURSO"]')
          ParentFont = False
        end
        object frxFichaCadServidorDT_ADMISSAO: TfrxMemoView
          Left = 377.952755910000000000
          Top = 282.110236220000000000
          Width = 109.606370000000000000
          Height = 15.118110236220470000
          ShowHint = False
          DataField = 'DT_ADMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."DT_ADMISSAO"]')
          ParentFont = False
        end
        object frxFichaCadServidorDT_READMISSAO: TfrxMemoView
          Left = 566.929133858268000000
          Top = 282.110236220000000000
          Width = 109.606370000000000000
          Height = 15.118110236220470000
          ShowHint = False
          DataField = 'DT_READMISSAO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."DT_READMISSAO"]')
          ParentFont = False
        end
        object frxFichaCadServidorDESCR_SUB_UNID_ORCAMENT: TfrxMemoView
          Top = 319.795300000000100000
          Width = 374.173470000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."ID_SUB_UNID_ORCAMENT"]-[frxFichaCadServido' +
              'r."DESCR_SUB_UNID_ORCAMENT"]')
          ParentFont = False
        end
        object frxFichaCadServidorID_UNID_LOTACAO: TfrxMemoView
          Left = 377.952755905512000000
          Top = 319.795300000000100000
          Width = 370.393940000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."ID_UNID_LOTACAO"]-[frxFichaCadServidor."DE' +
              'SCR_UNID_LOTACAO"]')
          ParentFont = False
        end
        object frxFichaCadServidorDESCR_CARGO_ORIGEM: TfrxMemoView
          Top = 358.149660000000000000
          Width = 374.173470000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."ID_CARGO_ORIGEM"]-[frxFichaCadServidor."DE' +
              'SCR_CARGO_ORIGEM"]')
          ParentFont = False
        end
        object frxFichaCadServidorDESCR_CARGO_ATUAL: TfrxMemoView
          Left = 377.952755905512000000
          Top = 358.236220470000000000
          Width = 294.803340000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."ID_CARGO_ATUAL"]-[frxFichaCadServidor."DES' +
              'CR_CARGO_ATUAL"]')
          ParentFont = False
        end
        object frxFichaCadServidorDESCR_DEPTO: TfrxMemoView
          Top = 399.283550000000100000
          Width = 374.173470000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."ID_DEPTO"]-[frxFichaCadServidor."DESCR_DEP' +
              'TO"]')
          ParentFont = False
        end
        object frxFichaCadServidorDESCR_EST_FUNCIONAL: TfrxMemoView
          Left = 377.952755910000000000
          Top = 399.283550000000100000
          Width = 370.393940000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxFichaCadServidor."ID_EST_FUNCIONAL"]-[frxFichaCadServidor."D' +
              'ESCR_EST_FUNCIONAL"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Align = baWidth
          Top = 2.779530000000022000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          Top = 34.236240000000010000
          Width = 79.370130000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nascimento')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 94.110236220000000000
          Top = 32.456709999999990000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Naturalidade:')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 277.795275590000000000
          Top = 32.456709999999990000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado Civil:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 404.787401570000000000
          Top = 32.503937007874020000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Carteira de Identidade:')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Top = 72.944881889999970000
          Width = 117.165430000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.P.F.:')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 124.346456690000000000
          Top = 72.944881889999970000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'T'#237'tulo de Eleitor:')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Top = 155.740157480000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome do C'#244'njuge:')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 425.196850390000000000
          Top = 72.811070000000030000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Certificado de Reservista:')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Top = 114.897637800000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Carteira de Habilita'#231#227'o:')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Left = 160.629921260000000000
          Top = 114.897637800000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome do Pai:')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 392.692913390000000000
          Top = 114.897637800000000000
          Width = 128.504020000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Nome da M'#227'e:')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 453.543307090000000000
          Top = 155.740157480000000000
          Width = 120.944960000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C.P.F. do C'#244'njuge:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 197.535560000000000000
          Width = 132.283550000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o Completo:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 592.629921260000000000
          Top = 197.535560000000000000
          Width = 94.488250000000000000
          Height = 15.118110240000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Telefone(s):')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Top = 268.125984250000000000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Efetivo:')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 566.929133858268000000
          Top = 268.125984250000000000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Readmiss'#227'o:')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 185.196850393701000000
          Top = 268.125984250000000000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Dt. Concurso:')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 377.952755905512000000
          Top = 268.125984250000000000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Admiss'#227'o:')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Top = 303.921459999999900000
          Width = 226.771800000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Sub-Unid. Or'#231'ament. (Centro de Custos)')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 377.952755905512000000
          Top = 303.921459999999900000
          Width = 196.535560000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Unid. de Lota'#231#227'o (Local de Trabalho)')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Top = 341.716759999999900000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cargo de Or'#237'gem:')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          Left = 377.952755905512000000
          Top = 341.716535429999900000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cargo Atual:')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          Top = 383.071120000000000000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Departamento:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 377.952755910000000000
          Top = 383.071120000000000000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Estado Funcional:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Top = 425.205009999999900000
          Width = 113.385900000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Grau de Instru'#231#227'o:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 377.952755910000000000
          Top = 425.205009999999900000
          Width = 181.417440000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Forma'#231#227'o / Conselho e Registro:')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          Left = 672.251968500000000000
          Top = 343.716535429999900000
          Width = 94.488250000000000000
          Height = 15.118110236220470000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Carga Hor. M'#234's:')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 692.251968500000000000
          Top = 362.236220470000000000
          Width = 60.472480000000000000
          Height = 15.118110236220470000
          ShowHint = False
          DataField = 'CARGA_HOR_MENSAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadServidor."CARGA_HOR_MENSAL"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          Left = 628.913385830000000000
          Top = 32.503937007874020000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Foto 3 x 4')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        Height = 26.456710000000000000
        Top = 850.394250000000000000
        Width = 755.906000000000000000
        Condition = 'frxFichaCadObs."ITEM"'
        ReprintOnNewPage = True
        object frxFichaCadObsITEM: TfrxMemoView
          Top = 2.000000000000000000
          Width = 241.889919999999900000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxFichaCadObs
          DataSetName = 'frxFichaCadObs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[frxFichaCadObs."ITEM"] - [frxFichaCadObs."DESCR_ITEM"]')
          ParentFont = False
        end
        object Line9: TfrxLineView
          Align = baWidth
          Top = 22.692950000000000000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Line10: TfrxLineView
          Align = baWidth
          Top = 1.338589999999954000
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
      end
      object MasterData3: TfrxMasterData
        Height = 18.897650000000000000
        Top = 899.528140000000000000
        Width = 755.906000000000000000
        DataSet = frxFichaCadObs
        DataSetName = 'frxFichaCadObs'
        RowCount = 0
        object frxFichaCadObsTEXTO: TfrxMemoView
          Top = 1.779530000000022000
          Width = 752.126470000000300000
          Height = 15.874015750000000000
          ShowHint = False
          DataField = 'TEXTO'
          DataSet = frxFichaCadObs
          DataSetName = 'frxFichaCadObs'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxFichaCadObs."TEXTO"]')
          ParentFont = False
        end
      end
    end
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
    Left = 29
    Top = 87
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
    Top = 138
  end
  object qryFichaCadServidor: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pServidor'
        ParamType = ptInput
        Value = '1518'
      end>
    SQL.Strings = (
      'select'
      '   d.id, d.nome_servidor, d.matricula, d.pis_pasep_pf, d.cpf_pf,'
      
        '   d.descr_efetivo, d.dt_concurso, d.dt_admissao, d.dt_readmissa' +
        'o,'
      '   d.id_sub_unid_orcament, d.descr_sub_unid_orcament,'
      '   d.id_unid_lotacao, d.descr_unid_lotacao,'
      '   d.id_cargo_origem, d.descr_cargo_origem,'
      '   d.id_cargo_atual, d.descr_cargo_atual,'
      '   d.carga_hor_mensal, d.id_depto, d.descr_depto,'
      '   d.id_est_funcional, d.descr_est_funcional,'
      '   d.id_escolaridade, d.descr_escolaridade,'
      '   d.formacao||'#39' '#39'||d.conselho_registro as formacao_cons,'
      '   d.observacao,'
      '   d1.sexo, d1.dt_nascimento, d1.natural_cidade||'#39'-'#39'||'
      '      d1.natural_uf as naturalid,'
      '   d1.descr_estado_civil,'
      '   d1.rg_num, d1.rg_orgao_emissor, d1.rg_uf, d1.rg_dt_emissao,'
      
        '   d1.tit_eleitor_num, d1.tit_eleitor_zona, d1.tit_eleitor_secao' +
        ','
      '   d1.reservista, d1.cnh_num, d1.cnh_dt_vencto,'
      
        '   d1.filiacao_pai, d1.filiacao_mae, d1.conjuge_nome, d1.conjuge' +
        '_cpf,'
      
        '   d1.ender_lograd, d1.ender_num, d1.ender_bairro, d1.ender_cida' +
        'de,'
      '      d1.ender_uf,'
      '   d1.telefone, d1.foto'
      'from'
      '   servidor d,'
      '   pessoa_fisica d1'
      'where'
      '   (d.id = :pServidor) and'
      '   (d1.id = d.id_pessoa_fisica)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 96
    Top = 80
    object qryFichaCadServidorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryFichaCadServidorNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object qryFichaCadServidorMATRICULA: TIntegerField
      FieldName = 'MATRICULA'
    end
    object qryFichaCadServidorPIS_PASEP_PF: TStringField
      FieldName = 'PIS_PASEP_PF'
      Size = 11
    end
    object qryFichaCadServidorCPF_PF: TStringField
      FieldName = 'CPF_PF'
      FixedChar = True
      Size = 11
    end
    object qryFichaCadServidorDESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object qryFichaCadServidorDT_CONCURSO: TDateField
      FieldName = 'DT_CONCURSO'
    end
    object qryFichaCadServidorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Required = True
    end
    object qryFichaCadServidorDT_READMISSAO: TDateField
      FieldName = 'DT_READMISSAO'
    end
    object qryFichaCadServidorID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object qryFichaCadServidorDESCR_SUB_UNID_ORCAMENT: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAMENT'
      Size = 60
    end
    object qryFichaCadServidorID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object qryFichaCadServidorDESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object qryFichaCadServidorID_CARGO_ORIGEM: TIntegerField
      FieldName = 'ID_CARGO_ORIGEM'
      Required = True
    end
    object qryFichaCadServidorDESCR_CARGO_ORIGEM: TStringField
      FieldName = 'DESCR_CARGO_ORIGEM'
      Size = 60
    end
    object qryFichaCadServidorID_CARGO_ATUAL: TIntegerField
      FieldName = 'ID_CARGO_ATUAL'
      Required = True
    end
    object qryFichaCadServidorDESCR_CARGO_ATUAL: TStringField
      FieldName = 'DESCR_CARGO_ATUAL'
      Size = 60
    end
    object qryFichaCadServidorCARGA_HOR_MENSAL: TIntegerField
      FieldName = 'CARGA_HOR_MENSAL'
    end
    object qryFichaCadServidorID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Required = True
    end
    object qryFichaCadServidorDESCR_DEPTO: TStringField
      FieldName = 'DESCR_DEPTO'
      Size = 40
    end
    object qryFichaCadServidorID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
      Required = True
    end
    object qryFichaCadServidorDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object qryFichaCadServidorID_ESCOLARIDADE: TIntegerField
      FieldName = 'ID_ESCOLARIDADE'
      Required = True
    end
    object qryFichaCadServidorDESCR_ESCOLARIDADE: TStringField
      FieldName = 'DESCR_ESCOLARIDADE'
      Size = 40
    end
    object qryFichaCadServidorFORMACAO_CONS: TStringField
      FieldName = 'FORMACAO_CONS'
      Size = 81
    end
    object qryFichaCadServidorOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object qryFichaCadServidorSEXO: TStringField
      FieldName = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryFichaCadServidorDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object qryFichaCadServidorNATURALID: TStringField
      FieldName = 'NATURALID'
      Size = 43
    end
    object qryFichaCadServidorDESCR_ESTADO_CIVIL: TStringField
      FieldName = 'DESCR_ESTADO_CIVIL'
      Size = 40
    end
    object qryFichaCadServidorRG_NUM: TStringField
      FieldName = 'RG_NUM'
      Size = 11
    end
    object qryFichaCadServidorRG_ORGAO_EMISSOR: TStringField
      FieldName = 'RG_ORGAO_EMISSOR'
      Size = 11
    end
    object qryFichaCadServidorRG_UF: TStringField
      FieldName = 'RG_UF'
      FixedChar = True
      Size = 2
    end
    object qryFichaCadServidorRG_DT_EMISSAO: TDateField
      FieldName = 'RG_DT_EMISSAO'
    end
    object qryFichaCadServidorTIT_ELEITOR_NUM: TStringField
      FieldName = 'TIT_ELEITOR_NUM'
      FixedChar = True
      Size = 12
    end
    object qryFichaCadServidorTIT_ELEITOR_ZONA: TStringField
      FieldName = 'TIT_ELEITOR_ZONA'
      FixedChar = True
      Size = 4
    end
    object qryFichaCadServidorTIT_ELEITOR_SECAO: TStringField
      FieldName = 'TIT_ELEITOR_SECAO'
      FixedChar = True
      Size = 4
    end
    object qryFichaCadServidorRESERVISTA: TStringField
      FieldName = 'RESERVISTA'
      Size = 40
    end
    object qryFichaCadServidorCNH_NUM: TStringField
      FieldName = 'CNH_NUM'
      Size = 11
    end
    object qryFichaCadServidorCNH_DT_VENCTO: TDateField
      FieldName = 'CNH_DT_VENCTO'
    end
    object qryFichaCadServidorFILIACAO_PAI: TStringField
      FieldName = 'FILIACAO_PAI'
      Size = 40
    end
    object qryFichaCadServidorFILIACAO_MAE: TStringField
      FieldName = 'FILIACAO_MAE'
      Size = 40
    end
    object qryFichaCadServidorCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 40
    end
    object qryFichaCadServidorCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 11
    end
    object qryFichaCadServidorENDER_LOGRAD: TStringField
      FieldName = 'ENDER_LOGRAD'
      Size = 80
    end
    object qryFichaCadServidorENDER_NUM: TStringField
      FieldName = 'ENDER_NUM'
      Size = 10
    end
    object qryFichaCadServidorENDER_BAIRRO: TStringField
      FieldName = 'ENDER_BAIRRO'
      Size = 40
    end
    object qryFichaCadServidorENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
    end
    object qryFichaCadServidorENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object qryFichaCadServidorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 40
    end
    object qryFichaCadServidorFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
  end
  object provFichaCadServidor: TDataSetProvider
    DataSet = qryFichaCadServidor
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 112
    Top = 104
  end
  object cdsFichaCadServidor: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_SERVIDOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'MATRICULA'
        DataType = ftInteger
      end
      item
        Name = 'PIS_PASEP_PF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CPF_PF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DESCR_EFETIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end
      item
        Name = 'DT_CONCURSO'
        DataType = ftDate
      end
      item
        Name = 'DT_ADMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DT_READMISSAO'
        DataType = ftDate
      end
      item
        Name = 'ID_SUB_UNID_ORCAMENT'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_SUB_UNID_ORCAMENT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_UNID_LOTACAO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_UNID_LOTACAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_CARGO_ORIGEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_CARGO_ORIGEM'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_CARGO_ATUAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_CARGO_ATUAL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CARGA_HOR_MENSAL'
        DataType = ftInteger
      end
      item
        Name = 'ID_DEPTO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_DEPTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_EST_FUNCIONAL'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_EST_FUNCIONAL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_ESCOLARIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_ESCOLARIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FORMACAO_CONS'
        DataType = ftString
        Size = 81
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'SEXO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DT_NASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'NATURALID'
        DataType = ftString
        Size = 43
      end
      item
        Name = 'DESCR_ESTADO_CIVIL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'RG_NUM'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'RG_ORGAO_EMISSOR'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'RG_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RG_DT_EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'TIT_ELEITOR_NUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'TIT_ELEITOR_ZONA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'TIT_ELEITOR_SECAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 4
      end
      item
        Name = 'RESERVISTA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CNH_NUM'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CNH_DT_VENCTO'
        DataType = ftDate
      end
      item
        Name = 'FILIACAO_PAI'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FILIACAO_MAE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONJUGE_NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONJUGE_CPF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'ENDER_LOGRAD'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ENDER_NUM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ENDER_BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_CIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'ID_FTDO'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'PIS_PASEP_FTDO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CPF_FTDO'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CART_IDENTIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CART_HABILITACAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 140
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provFichaCadServidor'
    StoreDefs = True
    Left = 128
    Top = 128
    object cdsFichaCadServidorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFichaCadServidorNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object cdsFichaCadServidorMATRICULA: TIntegerField
      FieldName = 'MATRICULA'
    end
    object cdsFichaCadServidorPIS_PASEP_PF: TStringField
      FieldName = 'PIS_PASEP_PF'
      Size = 11
    end
    object cdsFichaCadServidorCPF_PF: TStringField
      FieldName = 'CPF_PF'
      FixedChar = True
      Size = 11
    end
    object cdsFichaCadServidorDESCR_EFETIVO: TStringField
      FieldName = 'DESCR_EFETIVO'
      FixedChar = True
      Size = 3
    end
    object cdsFichaCadServidorDT_CONCURSO: TDateField
      FieldName = 'DT_CONCURSO'
    end
    object cdsFichaCadServidorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Required = True
    end
    object cdsFichaCadServidorDT_READMISSAO: TDateField
      FieldName = 'DT_READMISSAO'
    end
    object cdsFichaCadServidorID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object cdsFichaCadServidorDESCR_SUB_UNID_ORCAMENT: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAMENT'
      Size = 60
    end
    object cdsFichaCadServidorID_UNID_LOTACAO: TIntegerField
      FieldName = 'ID_UNID_LOTACAO'
      Required = True
    end
    object cdsFichaCadServidorDESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object cdsFichaCadServidorID_CARGO_ORIGEM: TIntegerField
      FieldName = 'ID_CARGO_ORIGEM'
      Required = True
    end
    object cdsFichaCadServidorDESCR_CARGO_ORIGEM: TStringField
      FieldName = 'DESCR_CARGO_ORIGEM'
      Size = 60
    end
    object cdsFichaCadServidorID_CARGO_ATUAL: TIntegerField
      FieldName = 'ID_CARGO_ATUAL'
      Required = True
    end
    object cdsFichaCadServidorDESCR_CARGO_ATUAL: TStringField
      FieldName = 'DESCR_CARGO_ATUAL'
      Size = 60
    end
    object cdsFichaCadServidorCARGA_HOR_MENSAL: TIntegerField
      FieldName = 'CARGA_HOR_MENSAL'
    end
    object cdsFichaCadServidorID_DEPTO: TIntegerField
      FieldName = 'ID_DEPTO'
      Required = True
    end
    object cdsFichaCadServidorDESCR_DEPTO: TStringField
      FieldName = 'DESCR_DEPTO'
      Size = 40
    end
    object cdsFichaCadServidorID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
      Required = True
    end
    object cdsFichaCadServidorDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object cdsFichaCadServidorID_ESCOLARIDADE: TIntegerField
      FieldName = 'ID_ESCOLARIDADE'
      Required = True
    end
    object cdsFichaCadServidorDESCR_ESCOLARIDADE: TStringField
      FieldName = 'DESCR_ESCOLARIDADE'
      Size = 40
    end
    object cdsFichaCadServidorFORMACAO_CONS: TStringField
      FieldName = 'FORMACAO_CONS'
      Size = 81
    end
    object cdsFichaCadServidorOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsFichaCadServidorSEXO: TStringField
      FieldName = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsFichaCadServidorDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object cdsFichaCadServidorNATURALID: TStringField
      FieldName = 'NATURALID'
      Size = 43
    end
    object cdsFichaCadServidorDESCR_ESTADO_CIVIL: TStringField
      FieldName = 'DESCR_ESTADO_CIVIL'
      Size = 40
    end
    object cdsFichaCadServidorRG_NUM: TStringField
      FieldName = 'RG_NUM'
      Size = 11
    end
    object cdsFichaCadServidorRG_ORGAO_EMISSOR: TStringField
      FieldName = 'RG_ORGAO_EMISSOR'
      Size = 11
    end
    object cdsFichaCadServidorRG_UF: TStringField
      FieldName = 'RG_UF'
      FixedChar = True
      Size = 2
    end
    object cdsFichaCadServidorRG_DT_EMISSAO: TDateField
      FieldName = 'RG_DT_EMISSAO'
    end
    object cdsFichaCadServidorTIT_ELEITOR_NUM: TStringField
      FieldName = 'TIT_ELEITOR_NUM'
      FixedChar = True
      Size = 12
    end
    object cdsFichaCadServidorTIT_ELEITOR_ZONA: TStringField
      FieldName = 'TIT_ELEITOR_ZONA'
      FixedChar = True
      Size = 4
    end
    object cdsFichaCadServidorTIT_ELEITOR_SECAO: TStringField
      FieldName = 'TIT_ELEITOR_SECAO'
      FixedChar = True
      Size = 4
    end
    object cdsFichaCadServidorRESERVISTA: TStringField
      FieldName = 'RESERVISTA'
      Size = 40
    end
    object cdsFichaCadServidorCNH_NUM: TStringField
      FieldName = 'CNH_NUM'
      Size = 11
    end
    object cdsFichaCadServidorCNH_DT_VENCTO: TDateField
      FieldName = 'CNH_DT_VENCTO'
    end
    object cdsFichaCadServidorFILIACAO_PAI: TStringField
      FieldName = 'FILIACAO_PAI'
      Size = 40
    end
    object cdsFichaCadServidorFILIACAO_MAE: TStringField
      FieldName = 'FILIACAO_MAE'
      Size = 40
    end
    object cdsFichaCadServidorCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 40
    end
    object cdsFichaCadServidorCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 11
    end
    object cdsFichaCadServidorENDER_LOGRAD: TStringField
      FieldName = 'ENDER_LOGRAD'
      Size = 80
    end
    object cdsFichaCadServidorENDER_NUM: TStringField
      FieldName = 'ENDER_NUM'
      Size = 10
    end
    object cdsFichaCadServidorENDER_BAIRRO: TStringField
      FieldName = 'ENDER_BAIRRO'
      Size = 40
    end
    object cdsFichaCadServidorENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
    end
    object cdsFichaCadServidorENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object cdsFichaCadServidorTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 40
    end
    object cdsFichaCadServidorFOTO: TBlobField
      FieldName = 'FOTO'
      Size = 1
    end
    object cdsFichaCadServidorID_FTDO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ID_FTDO'
      Size = 9
    end
    object cdsFichaCadServidorPIS_PASEP_FTDO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'PIS_PASEP_FTDO'
      Size = 14
    end
    object cdsFichaCadServidorCPF_FTDO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CPF_FTDO'
      Size = 14
    end
    object cdsFichaCadServidorCART_IDENTIDADE: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CART_IDENTIDADE'
      Size = 40
    end
    object cdsFichaCadServidorCART_HABILITACAO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'CART_HABILITACAO'
      Size = 40
    end
    object cdsFichaCadServidorENDERECO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'ENDERECO'
      Size = 140
    end
  end
  object frxFichaCadServidor: TfrxDBDataset
    UserName = 'frxFichaCadServidor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME_SERVIDOR=NOME_SERVIDOR'
      'MATRICULA=MATRICULA'
      'PIS_PASEP_PF=PIS_PASEP_PF'
      'CPF_PF=CPF_PF'
      'DESCR_EFETIVO=DESCR_EFETIVO'
      'DT_CONCURSO=DT_CONCURSO'
      'DT_ADMISSAO=DT_ADMISSAO'
      'DT_READMISSAO=DT_READMISSAO'
      'ID_SUB_UNID_ORCAMENT=ID_SUB_UNID_ORCAMENT'
      'DESCR_SUB_UNID_ORCAMENT=DESCR_SUB_UNID_ORCAMENT'
      'ID_UNID_LOTACAO=ID_UNID_LOTACAO'
      'DESCR_UNID_LOTACAO=DESCR_UNID_LOTACAO'
      'ID_CARGO_ORIGEM=ID_CARGO_ORIGEM'
      'DESCR_CARGO_ORIGEM=DESCR_CARGO_ORIGEM'
      'ID_CARGO_ATUAL=ID_CARGO_ATUAL'
      'DESCR_CARGO_ATUAL=DESCR_CARGO_ATUAL'
      'CARGA_HOR_MENSAL=CARGA_HOR_MENSAL'
      'ID_DEPTO=ID_DEPTO'
      'DESCR_DEPTO=DESCR_DEPTO'
      'ID_EST_FUNCIONAL=ID_EST_FUNCIONAL'
      'DESCR_EST_FUNCIONAL=DESCR_EST_FUNCIONAL'
      'ID_ESCOLARIDADE=ID_ESCOLARIDADE'
      'DESCR_ESCOLARIDADE=DESCR_ESCOLARIDADE'
      'FORMACAO_CONS=FORMACAO_CONS'
      'OBSERVACAO=OBSERVACAO'
      'SEXO=SEXO'
      'DT_NASCIMENTO=DT_NASCIMENTO'
      'NATURALID=NATURALID'
      'DESCR_ESTADO_CIVIL=DESCR_ESTADO_CIVIL'
      'RG_NUM=RG_NUM'
      'RG_ORGAO_EMISSOR=RG_ORGAO_EMISSOR'
      'RG_UF=RG_UF'
      'RG_DT_EMISSAO=RG_DT_EMISSAO'
      'TIT_ELEITOR_NUM=TIT_ELEITOR_NUM'
      'TIT_ELEITOR_ZONA=TIT_ELEITOR_ZONA'
      'TIT_ELEITOR_SECAO=TIT_ELEITOR_SECAO'
      'RESERVISTA=RESERVISTA'
      'CNH_NUM=CNH_NUM'
      'CNH_DT_VENCTO=CNH_DT_VENCTO'
      'FILIACAO_PAI=FILIACAO_PAI'
      'FILIACAO_MAE=FILIACAO_MAE'
      'CONJUGE_NOME=CONJUGE_NOME'
      'CONJUGE_CPF=CONJUGE_CPF'
      'ENDERECO=ENDERECO'
      'TELEFONE=TELEFONE'
      'FOTO=FOTO'
      'CART_IDENTIDADE=CART_IDENTIDADE'
      'CART_HABILITACAO=CART_HABILITACAO'
      'ID_FTDO=ID_FTDO'
      'PIS_PASEP_FTDO=PIS_PASEP_FTDO'
      'CPF_FTDO=CPF_FTDO')
    DataSet = cdsFichaCadServidor
    BCDToCurrency = False
    Left = 138
    Top = 168
  end
  object qryItemFichaCad: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pServidor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from sp_ficha_cad_servidor(:pServidor)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 208
    Top = 80
    object qryItemFichaCadR_ITEM: TStringField
      FieldName = 'R_ITEM'
      FixedChar = True
      Size = 2
    end
    object qryItemFichaCadR_DESCR_ITEM: TStringField
      FieldName = 'R_DESCR_ITEM'
      Size = 50
    end
    object qryItemFichaCadR_TIT_COL1: TStringField
      FieldName = 'R_TIT_COL1'
      Size = 50
    end
    object qryItemFichaCadR_TIT_COL2: TStringField
      FieldName = 'R_TIT_COL2'
      Size = 50
    end
    object qryItemFichaCadR_TIT_COL3: TStringField
      FieldName = 'R_TIT_COL3'
      Size = 50
    end
    object qryItemFichaCadR_TIT_COL4: TStringField
      FieldName = 'R_TIT_COL4'
      Size = 50
    end
    object qryItemFichaCadR_TIT_COL5: TStringField
      FieldName = 'R_TIT_COL5'
      Size = 50
    end
    object qryItemFichaCadR_TIT_COL6: TStringField
      FieldName = 'R_TIT_COL6'
      Size = 50
    end
    object qryItemFichaCadR_TIT_COL7: TStringField
      FieldName = 'R_TIT_COL7'
      Size = 50
    end
    object qryItemFichaCadR_COL1: TIntegerField
      FieldName = 'R_COL1'
    end
    object qryItemFichaCadR_COL2: TStringField
      FieldName = 'R_COL2'
      Size = 50
    end
    object qryItemFichaCadR_COL3: TStringField
      FieldName = 'R_COL3'
      Size = 50
    end
    object qryItemFichaCadR_COL4: TStringField
      FieldName = 'R_COL4'
      Size = 50
    end
    object qryItemFichaCadR_COL5: TStringField
      FieldName = 'R_COL5'
      Size = 50
    end
    object qryItemFichaCadR_COL6: TStringField
      FieldName = 'R_COL6'
      Size = 50
    end
    object qryItemFichaCadR_COL7: TStringField
      FieldName = 'R_COL7'
      Size = 50
    end
  end
  object provItemFichaCad: TDataSetProvider
    DataSet = qryItemFichaCad
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 224
    Top = 104
  end
  object cdsItemFichaCad: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'R_ITEM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'R_DESCR_ITEM'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_TIT_COL1'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_TIT_COL2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_TIT_COL3'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_TIT_COL4'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_TIT_COL5'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_TIT_COL6'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_TIT_COL7'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_COL1'
        DataType = ftInteger
      end
      item
        Name = 'R_COL2'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_COL3'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_COL4'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_COL5'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_COL6'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'R_COL7'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provItemFichaCad'
    StoreDefs = True
    Left = 240
    Top = 128
    object cdsItemFichaCadR_ITEM: TStringField
      FieldName = 'R_ITEM'
      FixedChar = True
      Size = 2
    end
    object cdsItemFichaCadR_DESCR_ITEM: TStringField
      FieldName = 'R_DESCR_ITEM'
      Size = 50
    end
    object cdsItemFichaCadR_TIT_COL1: TStringField
      FieldName = 'R_TIT_COL1'
      Size = 50
    end
    object cdsItemFichaCadR_TIT_COL2: TStringField
      FieldName = 'R_TIT_COL2'
      Size = 50
    end
    object cdsItemFichaCadR_TIT_COL3: TStringField
      FieldName = 'R_TIT_COL3'
      Size = 50
    end
    object cdsItemFichaCadR_TIT_COL4: TStringField
      FieldName = 'R_TIT_COL4'
      Size = 50
    end
    object cdsItemFichaCadR_TIT_COL5: TStringField
      FieldName = 'R_TIT_COL5'
      Size = 50
    end
    object cdsItemFichaCadR_TIT_COL6: TStringField
      FieldName = 'R_TIT_COL6'
      Size = 50
    end
    object cdsItemFichaCadR_TIT_COL7: TStringField
      FieldName = 'R_TIT_COL7'
      Size = 50
    end
    object cdsItemFichaCadR_COL1: TIntegerField
      FieldName = 'R_COL1'
    end
    object cdsItemFichaCadR_COL2: TStringField
      FieldName = 'R_COL2'
      Size = 50
    end
    object cdsItemFichaCadR_COL3: TStringField
      FieldName = 'R_COL3'
      Size = 50
    end
    object cdsItemFichaCadR_COL4: TStringField
      FieldName = 'R_COL4'
      Size = 50
    end
    object cdsItemFichaCadR_COL5: TStringField
      FieldName = 'R_COL5'
      Size = 50
    end
    object cdsItemFichaCadR_COL6: TStringField
      FieldName = 'R_COL6'
      Size = 50
    end
    object cdsItemFichaCadR_COL7: TStringField
      FieldName = 'R_COL7'
      Size = 50
    end
  end
  object frxItemFichaCad: TfrxDBDataset
    UserName = 'frxItemFichaCad'
    CloseDataSource = False
    FieldAliases.Strings = (
      'R_ITEM=R_ITEM'
      'R_DESCR_ITEM=R_DESCR_ITEM'
      'R_TIT_COL1=R_TIT_COL1'
      'R_TIT_COL2=R_TIT_COL2'
      'R_TIT_COL3=R_TIT_COL3'
      'R_TIT_COL4=R_TIT_COL4'
      'R_TIT_COL5=R_TIT_COL5'
      'R_TIT_COL6=R_TIT_COL6'
      'R_TIT_COL7=R_TIT_COL7'
      'R_COL1=R_COL1'
      'R_COL2=R_COL2'
      'R_COL3=R_COL3'
      'R_COL4=R_COL4'
      'R_COL5=R_COL5'
      'R_COL6=R_COL6'
      'R_COL7=R_COL7')
    DataSet = cdsItemFichaCad
    BCDToCurrency = False
    Left = 250
    Top = 168
  end
  object frxFichaCadObs: TfrxDBDataset
    UserName = 'frxFichaCadObs'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=ITEM'
      'DESCR_ITEM=DESCR_ITEM'
      'TEXTO=TEXTO')
    DataSet = mTbFichaCadObs
    BCDToCurrency = False
    Left = 146
    Top = 256
  end
  object mTbFichaCadObs: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 224
    object mTbFichaCadObsITEM: TStringField
      FieldName = 'ITEM'
      Size = 2
    end
    object mTbFichaCadObsDESCR_ITEM: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DESCR_ITEM'
      Size = 40
    end
    object mTbFichaCadObsTEXTO: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'TEXTO'
      Size = 255
    end
    object mTbFichaCadObsLINHA: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'LINHA'
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsFichaCadServidor
    Left = 48
    Top = 224
  end
end
