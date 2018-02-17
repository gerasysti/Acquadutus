inherited frmFindFaturaAvulsa: TfrmFindFaturaAvulsa
  Left = 107
  Top = 46
  Caption = 'LISTAGEM DE FATURAS AVULSAS P/ PER'#205'ODO ...'
  ClientHeight = 611
  ClientWidth = 1004
  Color = clWhite
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1010
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 0
    ExplicitWidth = 314
    Height = 48
    Width = 1004
    object btnOk1: TBitBtn
      Tag = 1
      Left = 343
      Top = 11
      Width = 69
      Height = 28
      Caption = '&OK'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 3
      OnClick = btnOk1Click
    end
    object cxLabel61: TcxLabel
      Left = 9
      Top = 15
      AutoSize = False
      Caption = 'Per'#237'odo:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 42
      AnchorX = 51
    end
    inline frmePeriodoDt1: TfrmePeriodoDt
      Left = 52
      Top = 13
      Width = 274
      Height = 28
      TabOrder = 0
      ExplicitLeft = 52
      ExplicitTop = 13
      inherited cxLabel61: TcxLabel
        AnchorX = 140
      end
    end
    object cxLabel1: TcxLabel
      Left = 597
      Top = 15
      AutoSize = False
      Caption = 'Situa'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 50
      AnchorX = 647
    end
    object cbSituacao: TcxComboBox
      Left = 650
      Top = 13
      AutoSize = False
      ParentFont = False
      Properties.Items.Strings = (
        'TODAS'
        'EM ABERTO'
        'QUITADAS')
      Properties.OnChange = cbSituacaoPropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 4
      Text = 'TODAS'
      Height = 25
      Width = 116
    end
    object lblQtd: TcxLabel
      Left = 834
      Top = 15
      AutoSize = False
      Caption = 'Situa'#231#227'o:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Style.TextColor = clBlue
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Height = 18
      Width = 161
      AnchorX = 995
    end
  end
  object GridTable1: TcxGrid
    Tag = 1
    Left = 0
    Top = 48
    Width = 1004
    Height = 528
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    object GridTable1DBTableView1: TcxGridDBTableView
      OnDblClick = GridTable1DBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.PriorPage.Visible = True
      Navigator.Buttons.Insert.Visible = False
      Navigator.Buttons.Delete.Visible = False
      Navigator.Buttons.Edit.Visible = False
      Navigator.Buttons.Post.Visible = False
      Navigator.Buttons.Cancel.Visible = False
      Navigator.Buttons.Refresh.Visible = False
      Navigator.Buttons.SaveBookmark.Visible = False
      Navigator.Buttons.GotoBookmark.Visible = False
      Navigator.Buttons.Filter.Visible = False
      FilterBox.CustomizeDialog = False
      FilterBox.Visible = fvNever
      DataController.DataSource = dsFatAvulsa
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      Filtering.MRUItemsList = False
      Filtering.ColumnPopup.MaxDropDownItemCount = 50
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnGrouping = False
      OptionsCustomize.ColumnHidingOnGrouping = False
      OptionsCustomize.ColumnMoving = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.ScrollBars = ssVertical
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao6
      OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
      object GridTable1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Id.'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taCenter
        SortIndex = 0
        SortOrder = soAscending
        Width = 54
      end
      object GridTable1DBTableView1Column7: TcxGridDBColumn
        Caption = 'Emiss'#227'o'
        DataBinding.FieldName = 'DT_EMISSAO'
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
      object GridTable1DBTableView1Column9: TcxGridDBColumn
        Caption = 'N'#186' Conta'
        DataBinding.FieldName = 'ID_UNID_CONSUM'
      end
      object GridTable1DBTableView1Column8: TcxGridDBColumn
        Tag = 1
        Caption = 'Nome da Pessoa'
        DataBinding.FieldName = 'NOME_PESSOA'
        Width = 315
      end
      object GridTable1DBTableView1Column2: TcxGridDBColumn
        Caption = 'CPF/CNPJ'
        DataBinding.FieldName = 'CPF_CNPJ_FTDO'
        Width = 112
      end
      object GridTable1DBTableView1Column3: TcxGridDBColumn
        Tag = 1
        Caption = 'Vencimento'
        DataBinding.FieldName = 'DT_VENCIMENTO'
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
      object GridTable1DBTableView1Column4: TcxGridDBColumn
        Tag = 1
        Caption = 'Valor (R$)'
        DataBinding.FieldName = 'VALOR_TOTAL'
        HeaderAlignmentHorz = taRightJustify
        Width = 77
      end
      object GridTable1DBTableView1Column6: TcxGridDBColumn
        Caption = 'Situa'#231#227'o'
        DataBinding.FieldName = 'DESCR_SITUACAO'
        Width = 111
      end
      object GridTable1DBTableView1Column5: TcxGridDBColumn
        Caption = 'Data Pagto'
        DataBinding.FieldName = 'DT_PAGAMENTO'
        HeaderAlignmentHorz = taCenter
        Width = 83
      end
    end
    object GridTable1Level1: TcxGridLevel
      GridView = GridTable1DBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 576
    Width = 1004
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object sbPos1: TSpeedButton
      Tag = 1
      Left = 794
      Top = 4
      Width = 40
      Height = 29
      Hint = 'Posiciona o Servidor na Janela de Cadastro ...'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbPos1Click
    end
    object lblTitColPesquisa: TLabel
      Left = 4
      Top = 10
      Width = 61
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '&Pesquisar:'
      FocusControl = edPesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 316
      Top = 10
      Width = 113
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '[F4] - Muda Ordem ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object btnFechar: TBitBtn
      Left = 924
      Top = 3
      Width = 80
      Height = 30
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAF8F8A07A7A8E6161BDA3A3F1EAEAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFEFEFFFFFFFFFFFFF1E9E9CDA3A3C396968F5C5C835151A88282
        DACCCCFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFB0B0B0656666717171787979777979CDA7A7C598989F
        6C6CA16E6E956262845151885D5DC1A6A6F3EFEFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF797979807F80706E6FAEA5ACB0AB
        B2D9B4B6C69999A06D6DA16E6EA26F6FA370709E6B6B8B5757704848A7A4A4FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF737373878586
        5C6E622BB65138B55BCDB6ACC69B9AA47070A47171A37070A37070A37070A471
        719D66664F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C9E1EFF
        FFFF7474748C8A8C5B6C5F16A5380FA234C9B6A9C99D9DA57272A67373A67373
        A57272A47171A471719E6767515151FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0D95141B9E1DB8B8B88E8C8E5C6B5D0F9227089023CBB3A9CB9EA0A9
        7576A97575A67474A87474A87575A774749E6767575858FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF14981F32B557149716C5C4C5596A5B078116007F
        13CEB4AACCA0A2AB7777A87575A17171A77474A87777A97676A16A6A5D5E5EFF
        FFFFFFFFFF10871511901E10911B10921B0F9219139B214DE5852FB14F169918
        A7AFA7006800006400CDB1A7CEA3A3AB8282908989937979A47272AA7777AB78
        78A36C6C616161FFFFFFFFFFFF23963341DA7941D77644D87947DB7C48D97A4E
        E98250E48632B250149916B5EEDF6EDBBFDBBFBDCDA1A2C6BCBCDADFDFB4ADAD
        AC7979AE7A7AAD7A7AA66F6F646565FFFFFFFFFFFF25963448E17F42DC7645DF
        794AE47D4CE7804FE98254EF8858E98C37B7571AA01FDBFFFFE4C4C4D0A6A6C4
        A5A5D4D2D2B89D9DB07C7CAF7C7CAF7C7CA87171696A6AFFFFFFFFFFFF23952F
        56E5883EDD7343E17847E57C4DE98053EC8657F08B62FE9B3CC75A29A82DF1FF
        FFE7C3C3D1A9A9B37E7EB37D7DB37F7FB38080B17E7EB17E7EAA73736C6D6DFF
        FFFFFFFFFF289D3A8CF8B67FF1A885F5AF8AF7B28DF6B363F49462FC9943DD66
        209F23FFFFFFFFFFFFEAC3C4D3ABABB68383B78484B68383B58282B48181B380
        80AC7474717272FFFFFFFFFFFF1E9A23149E1C139E1B12A11C11A01A1FA52B6D
        FFA643DE68229F24BEBDBCFFFDF5FFFAF2EAC3C3D5ACACB98686B98686B88585
        B78484B68383B58282AF7878737575FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF1BA6234AE6731F9D21CDCECE858380FFF7E7FFF4E3EDC4C3D6B0B0BD
        8888BA8686B78282B78383B68383B68383AF7878757676FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0F9F1628A629BFBFBFA7A7A8898481FFEFD8FFEC
        D6EDC4C3D6B1B1D0A0A0FFE3E3F1CCCCE3B7B7D6A7A7C79494B07A7A7A7C7CFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2BA92DFFFFFF888888AAAAAB
        8A847FFFE8CCFFE5C9EEC5C3D8B2B2CC9E9EFFF3F3FFEAEAFFE4E4FFE1E1F1C3
        C3B079797B7D7DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF8A8A8AADADAE8A847EFFE2BDFFDFBBEEC5C3DAB4B4C69999FDF2F2FFF3F3
        FFECECFFE6E6EABDBDB27B7B7E7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF8C8C8CB0B1B28F867DFFDFB2FFDDAEF3CCCAE2C0C0C3
        8E8EBD8686BA8484C08E8EC99A9AC79696B68080808181FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FB5B6B685848386817B8784
        7CE8B8B8E7C1C2DBAEAED7A9A9D0A2A2C79595BF8C8CBD8989BA8282858585FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9090CACACA
        AEAEAEABABACA2A4A4A49F9FA59A9AA59696A49393A89292AD9595B09595B193
        93A28080878888FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBDBDBDA4A4A4A2A2A2A1A1A19F9F9F9C9C9C979898969797939494919292
        909191898C8C898B8B8D8E8EBCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ModalResult = 2
      ParentFont = False
      TabOrder = 0
    end
    object btnLimpar: TButton
      Left = 845
      Top = 3
      Width = 80
      Height = 30
      Caption = 'Li&mpar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnLimparClick
    end
    object edPesquisa: TcxTextEdit
      AlignWithMargins = True
      Left = 67
      Top = 6
      AutoSize = False
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edPesquisaPropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      OnKeyDown = edPesquisaKeyDown
      Height = 24
      Width = 237
    end
  end
  object provFatAvulsa: TDataSetProvider
    DataSet = qryFatAvulsa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 112
  end
  object cdsFatAvulsa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_UNID_CONSUM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DT_EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'DT_VENCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'SITUACAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_SITUACAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 9
      end
      item
        Name = 'DT_PAGAMENTO'
        DataType = ftDate
      end
      item
        Name = 'VALOR_TOTAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOME_PESSOA_1'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'CPF_CNPJ_FTDO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DESCR_SITUAC_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 18
      end
      item
        Name = 'ENDER_ID_LOGRAD'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_LOGRADOURO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDER_NUM_LETRA'
        DataType = ftString
        Size = 12
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provFatAvulsa'
    StoreDefs = True
    Left = 64
    Top = 128
    object cdsFatAvulsaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFatAvulsaID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      Required = True
      DisplayFormat = '0-0;0 '
    end
    object cdsFatAvulsaDT_EMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DT_EMISSAO'
    end
    object cdsFatAvulsaDT_VENCIMENTO: TDateField
      Alignment = taCenter
      FieldName = 'DT_VENCIMENTO'
    end
    object cdsFatAvulsaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFatAvulsaDESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 9
    end
    object cdsFatAvulsaDT_PAGAMENTO: TDateField
      Alignment = taRightJustify
      FieldName = 'DT_PAGAMENTO'
    end
    object cdsFatAvulsaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsFatAvulsaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsFatAvulsaDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cdsFatAvulsaCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsFatAvulsaDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsFatAvulsaDESCR_SITUAC_UNID_CONSUM: TStringField
      FieldName = 'DESCR_SITUAC_UNID_CONSUM'
      FixedChar = True
      Size = 18
    end
    object cdsFatAvulsaENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cdsFatAvulsaENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      Size = 50
    end
    object cdsFatAvulsaENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 12
    end
    object cdsFatAvulsaENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsFatAvulsaENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsFatAvulsaENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cdsFatAvulsaENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
  end
  object dsFatAvulsa: TDataSource
    AutoEdit = False
    DataSet = cdsFatAvulsa
    Left = 80
    Top = 144
  end
  object qryFatAvulsa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftDate
        Name = 'pDtIni'
        ParamType = ptInput
        Value = '01/01/2011'
      end
      item
        DataType = ftDate
        Name = 'pDtFim'
        ParamType = ptInput
        Value = '31/12/2011'
      end
      item
        DataType = ftString
        Name = 'pSituacIni'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pSituacFim'
        ParamType = ptInput
        Size = 2
        Value = '2'
      end>
    SQL.Strings = (
      'select'
      '   d.*,'
      '   d1.nome_pessoa, d1.descr_tipo_pessoa, d1.cpf_cnpj_ftdo,'
      
        '   d1.descr_tipo_unid_consum, d1.descr_situacao as descr_situac_' +
        'unid_consum,'
      '   d1.ender_id_lograd, d1.ender_descr_logradouro, '
      '   d1.ender_num||d1.ender_num_letra as ender_num_letra,'
      '   d1.ender_id_bairro, d1.ender_descr_bairro,'
      '   d1.ender_id_distrito, d1.ender_descr_distrito'
      'from'
      '   fatura_avulsa d,'
      '   unid_consumidora d1'
      'where'
      '   ((d.dt_emissao>= :pDtIni) and'
      '    (d.dt_emissao<= :pDtFim)) and'
      '   ((d.situacao >= :pSituacIni) and '
      '    (d.situacao <= :pSituacFim)) and'
      '   (d1.id = d.id_unid_consum)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 32
    Top = 88
  end
end
