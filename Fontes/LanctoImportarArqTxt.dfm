inherited frmLanctoImportar: TfrmLanctoImportar
  Left = 43
  Top = 78
  Caption = 'frmLanctoImportar'
  ClientHeight = 637
  ClientWidth = 1050
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitLeft = 43
  ExplicitTop = 78
  ExplicitWidth = 1066
  ExplicitHeight = 675
  PixelsPerInch = 96
  TextHeight = 13
  object gbEvento: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    ParentFont = False
    Style.TextColor = clBlue
    Style.TextStyle = [fsBold]
    TabOrder = 0
    Height = 85
    Width = 1050
    object Label3: TLabel
      Left = 11
      Top = 16
      Width = 95
      Height = 15
      Caption = 'Entid. Financeira:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 58
      Top = 51
      Width = 46
      Height = 15
      Alignment = taRightJustify
      Caption = 'Arquivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object sbFindArqTxt: TSpeedButton
      Tag = 1
      Left = 717
      Top = 48
      Width = 26
      Height = 26
      Hint = 'Localiza o Arquivo a ser importado ...'
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
      OnClick = sbFindArqTxtClick
    end
    object sbEventos: TSpeedButton
      Tag = 1
      Left = 1017
      Top = 13
      Width = 26
      Height = 26
      Hint = 'Configura o(s) Evento(s) da Entidade Financeira'
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
    end
    object btnOk: TBitBtn
      Left = 990
      Top = 47
      Width = 53
      Height = 30
      Caption = 'Ok'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = btnOkClick
    end
    object edNomeArquivo: TcxTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 48
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edPesquisaPropertiesChange
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = [fsBold]
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyDown = edNomeArquivoKeyDown
      Width = 611
    end
    inline frmeEntidFinanc1: TfrmeEntidFinanc
      Left = 107
      Top = 13
      Width = 441
      Height = 30
      TabOrder = 0
      ExplicitLeft = 107
      ExplicitTop = 13
      ExplicitHeight = 30
      inherited sbEntidFinanc: TSpeedButton
        OnClick = frmeEntidFinanc1sbEventoClick
      end
      inherited edId: TcxMaskEdit
        Properties.OnChange = frmeEntidFinanc1edIdPropertiesChange
        OnExit = frmeEntidFinanc1edIdExit
      end
    end
    object lblPadrao: TcxLabel
      Left = 603
      Top = 16
      AutoSize = False
      Caption = 'Evento 1:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 54
      AnchorX = 657
    end
    object edEvento1: TcxTextEdit
      Left = 659
      Top = 13
      TabStop = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 4
      Width = 74
    end
    object cxLabel1: TcxLabel
      Left = 740
      Top = 16
      AutoSize = False
      Caption = 'Evento 2:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 55
      AnchorX = 795
    end
    object edEvento2: TcxTextEdit
      Left = 796
      Top = 13
      TabStop = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 6
      Width = 74
    end
    object cxLabel2: TcxLabel
      Left = 875
      Top = 16
      AutoSize = False
      Caption = 'Evento 3:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 55
      AnchorX = 930
    end
    object edEvento3: TcxTextEdit
      Left = 936
      Top = 12
      TabStop = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 8
      Width = 74
    end
    object chkSomenteParaAtivos: TcxCheckBox
      Left = 772
      Top = 50
      AutoSize = False
      Caption = 'Somente p/ os Ativos na Folha ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 26
      Width = 209
    end
  end
  object pcImport: TcxPageControl
    Left = 0
    Top = 85
    Width = 1050
    Height = 506
    ActivePage = tsImport
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    Style = 9
    TabOrder = 1
    ExplicitTop = 74
    ExplicitWidth = 990
    ClientRectBottom = 506
    ClientRectRight = 1050
    ClientRectTop = 23
    object tsImport: TcxTabSheet
      Caption = '&1 - Importa'#231#227'o'
      ImageIndex = 0
      object Label2: TLabel
        Left = 3
        Top = 459
        Width = 164
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total de Registros do Arquivo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 259
        Top = 459
        Width = 67
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Importados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 601
        Top = 459
        Width = 176
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Total Importado (R$):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object dbgServidores: TcxGrid
        Tag = 2
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1044
        Height = 440
        Align = alTop
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object GridDBTableView1: TcxGridDBTableView
          OnDblClick = GridDBTableView1DblClick
          OnKeyDown = GridDBTableView1KeyDown
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Insert.Visible = False
          NavigatorButtons.Delete.Visible = False
          NavigatorButtons.Edit.Visible = False
          NavigatorButtons.Post.Visible = False
          NavigatorButtons.Cancel.Visible = False
          NavigatorButtons.Refresh.Visible = False
          NavigatorButtons.SaveBookmark.Visible = False
          NavigatorButtons.GotoBookmark.Visible = False
          NavigatorButtons.Filter.Visible = False
          FilterBox.CustomizeDialog = False
          FilterBox.Visible = fvNever
          DataController.DataSource = dsServidor
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
          OptionsSelection.HideSelection = True
          OptionsSelection.InvertSelect = False
          OptionsView.NavigatorOffset = 20
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.ScrollBars = ssVertical
          OptionsView.GroupByBox = False
          Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao5
          OnColumnHeaderClick = GridDBTableView1ColumnHeaderClick
          object cxGridDBColumn1: TcxGridDBColumn
            Tag = 1
            Caption = 'Id.'
            DataBinding.FieldName = 'ID'
            HeaderAlignmentHorz = taRightJustify
            Width = 53
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Tag = 1
            Caption = 'Nome do Servidor'
            DataBinding.FieldName = 'NOME'
            SortIndex = 0
            SortOrder = soAscending
            Width = 261
          end
          object GridDBTableView1Column2: TcxGridDBColumn
            Tag = 1
            Caption = 'CPF / PIS/PASEP'
            DataBinding.FieldName = 'CPF_PIS_PASEP'
            Width = 94
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'Admiss'#227'o'
            DataBinding.FieldName = 'DT_ADMISSAO'
            PropertiesClassName = 'TcxDateEditProperties'
            HeaderAlignmentHorz = taCenter
            Width = 75
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Cargo/Fun'#231#227'o'
            DataBinding.FieldName = 'DESCR_CARGO'
            FooterAlignmentHorz = taCenter
            Width = 191
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Rubrica'
            DataBinding.FieldName = 'RUBRICA'
            Width = 100
          end
          object cxGridDBColumn6: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'VALOR'
            HeaderAlignmentHorz = taRightJustify
            Width = 81
          end
          object GridDBTableView1Column1: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERVACAO'
            Width = 131
          end
          object GridDBTableView1Column3: TcxGridDBColumn
            DataBinding.FieldName = 'Salvar'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 40
          end
        end
        object GridLevel1: TcxGridLevel
          GridView = GridDBTableView1
        end
      end
      object edTotRegArquivo: TcxCurrencyEdit
        Left = 172
        Top = 453
        ParentFont = False
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '  ,0'
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 1
        Width = 73
      end
      object edTotRegImport: TcxCurrencyEdit
        Left = 328
        Top = 453
        ParentFont = False
        Properties.DecimalPlaces = 0
        Properties.DisplayFormat = '  ,0'
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 2
        Width = 73
      end
      object edTotalImport: TcxCurrencyEdit
        Left = 780
        Top = 453
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '  ,0.00'
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 105
      end
    end
    object tsMsg: TcxTabSheet
      Caption = '&2 - Mensagens'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object memLog: TMemo
        Left = 0
        Top = 0
        Width = 1050
        Height = 464
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          'memLog')
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 595
    Width = 1048
    Height = 41
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    Alignment = taLeftJustify
    BevelKind = bkSoft
    BevelOuter = bvSpace
    Color = 10454867
    ParentBackground = False
    TabOrder = 2
    object lblTitColPesquisa: TLabel
      Left = 285
      Top = 9
      Width = 66
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '&Pesquisar:'
      FocusControl = edPesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
    end
    object edPesquisa: TcxTextEdit
      AlignWithMargins = True
      Left = 353
      Top = 5
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edPesquisaPropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 0
      Width = 220
    end
    object btnLimpar: TButton
      Left = 851
      Top = 4
      Width = 90
      Height = 30
      Caption = 'Li&mpar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnLimparClick
    end
    object btnFechar: TBitBtn
      Left = 952
      Top = 4
      Width = 90
      Height = 30
      Caption = '&Sair'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 4
    end
    object btnGravar: TcxButton
      Tag = 4
      Left = 739
      Top = 4
      Width = 96
      Height = 30
      Caption = '&Gravar'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000052200073883000D7862800DB6D3F27E68E9396F395989DF39DA1
        A6F3A6AAAEF3ADB0B0F3ACACACF4CACCCAF97FAB7FFC378533FE19750FFF1A70
        0BFE367925FC7A8E5BF7BF9684ED6B2D10AA0C04001400000000000000000000
        00006F2E0088AF4B00FEBE691FFFC1691DFF966942FFB1B6B9FFD19555FFD6A0
        63FFDDA765FFF3E5D5FFEBF5EBFF399839FF048F01FF049300FF078E00FF1586
        00FF2C7500FF286D00FF348027FFC7AC8AFF753011B800000000000000007435
        0091BB5600FEC27024FFC57628FFC97526FF9E754BFF9DA1A5FFC56B17FFC676
        25FFCD7C22FFEAE2D6FF3B9D3BFF069F0DFF009F06FF35BE4EFF18B231FF0097
        00FF009700FF178300FF366C00FF347D24FFC69A83FA0000000000000000C05B
        00F7C06D20FFC17026FFC16F24FFC47022FFA0774FFFA7ABB2FFB85A0FFFBC68
        20FFD19150FF93BC89FF18A423FF02A512FF57C46BFFFFFAFFFFF8FDFFFF21B8
        3FFF009900FF009900FF1A8100FF286D00FF7D8E5BFD0000000000000000C761
        00F7C06B20FFBE6D22FFBF6C22FFC26D1FFFA47851FFBBC1C5FFAB4602FFB35A
        18FFDBA97DFF43A03FFF27B83CFF47B752FFFDEEFCFFFFF5FDFFFFFDFFFFFAFF
        FFFF22B940FF009900FF009A00FF337400FF357A24FE0000000000000000C863
        00F7BE691DFFBC6820FFBD6920FFBF691DFFA67A54FFCDD2D5FF9B2A00FFAC49
        06FFE1B590FF2DA132FF25AE33FFFCE6F9FFFAEDF9FF58C267FFA2DBAAFFFFFF
        FFFFFAFFFFFF21B83EFF009900FF1C8400FF1A740AFF0000000000000000C863
        00F7BC651DFFBA651EFFBB661EFFBD661BFFA57B57FFE6F0F7FFC9C1BEFFBCB5
        B4FFD9D6D4FF30A436FF46C866FF45AD4DFF42B34AFF15B93BFF09B029FFA4DC
        ABFFFFFFFFFFF8FFFEFF1EB83CFF0B8B00FF19760AFF0000000000000000C863
        00F7B9621AFFB8621CFFB8631DFFBA641BFFAE6B33FFA67A55FFA97D58FFAB7F
        59FFCDB59FFF43A23DFF73DD94FF24C556FF2AC759FF28C253FF23BC48FF08AF
        29FFA1D9A9FFFFFCFFFFF8FAFEFF1EA423FF357F25FE0000000000000000C863
        00F7B95F18FFB65F1AFFB65F1BFFB7601BFFB9621BFFBB6319FFBC6519FFBD65
        1BFFCD894DFF93AD69FF5AC974FF59D784FF2FCB63FF2EC85FFF29C252FF21BA
        43FF06AC22FF9CD5A3FFC9E9D2FF0E9712FF80945DFD0000000000000000C864
        00F7B65D18FFB45C18FFB45C18FFB55A13FFB65C13FFB75D14FFB85F15FFB961
        16FFBA6318FFDCB28CFF40A332FF79DE9CFF56D683FF2ECA60FF28C356FF22BB
        46FF1AB437FF09AB20FF00A311FF359027FFC89882FB0000000000000000C864
        00F7B45A15FFB25815FFB1652BFFAE8B70FFAE886BFFAF886CFFAF8A6BFFAF89
        6BFFAE896BFFB19071FFCCC9B1FF3FA73BFF5BCB76FF73DF9AFF4BD073FF35C3
        59FF2CBD48FF16A726FF379829FFD6C197FF96360EF70000000000000000C964
        00F7B25712FFAF5311FFAF6C3CFFC8D2D8FFDEE2E4FFDDE1E3FFDEE2E5FFDFE3
        E6FFDDE1E4FFDDE0E3FFDCDFE2FFEAECEDFF99CB9AFF49AE4DFF34AA3CFF2FA6
        37FF42A447FF8DB173FFE3BE95FFCA8136FF902B00F70000000000000000C965
        00F7B05310FFAD500FFFAD6837FFD1D7DBFFEAEAEAFFECECECFFE3E3E3FFE0E0
        E0FFE1E1E1FFE0E0E0FFDDDDDDFFDDDDDDFFE2E2E2FFEAEAEAFFF0F0F0FFEEEE
        EEFFDBDDE0FFC79E75FFCA7B2AFFC67929FF902B00F70000000000000000C965
        00F7AD5010FFAB4C0EFFAD6737FFD3D9DEFFEDEDEDFFEFEFEFFFD2D2D2FFC8C8
        C8FFC9C9C9FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFC9C9C9FFDFDFDFFFDBDB
        DBFFC1C4CAFFB6824CFFC97927FFC57628FF902C00F70000000000000000C966
        00F7AD4F0DFFA9490CFFAD6638FFD8DFE2FFF2F2F2FFF2F2F2FFEDEDEDFFECEC
        ECFFEBEBEBFFEAEAEAFFE7E7E7FFE5E5E5FFE2E2E2FFDFDFDFFFE0E0E0FFDDDD
        DDFFC3C7CCFFB6804DFFCA7826FFC67528FF902C00F70000000000000000C966
        00F7AA4B0AFFA7460AFFAB6436FFDBE1E5FFF6F6F6FFF7F7F7FFE1E1E1FFDADA
        DAFFD9D9D9FFD9D9D9FFD8D8D8FFD7D7D7FFD5D5D5FFD5D5D5FFE3E3E3FFE0E0
        E0FFC4C8CDFFB6804DFFC87725FFC47627FF902C00F70000000000000000C966
        00F7A8470AFFA54307FFAC6236FFDEE5E8FFF9F9F9FFFCFCFCFFD5D5D5FFC6C6
        C6FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFC9C9C9FFE6E6E6FFE0E0
        E0FFC5C9CEFFB6804DFFC77625FFC47427FF902C00F70000000000000000C966
        00F7A64407FFA34005FFAA6135FFE2E8ECFFFCFCFCFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFBFBFBFFF6F6F6FFF2F2F2FFEBEBEBFFE5E5E5FFE1E1
        E1FFC6CACFFFB7814DFFC97624FFC57526FF912D00F70000000000000000C967
        00F7A34205FFA03D03FFA96035FFE3E9EDFFFDFDFDFFFFFFFFFFDEDEDEFFD3D3
        D3FFD4D4D4FFD2D2D2FFD2D2D2FFD1D1D1FFD0D0D0FFCFCFCFFFE6E6E6FFE3E3
        E3FFC7CCD0FFB47E4CFFA7611EFFC17126FF973200F70000000000000000C964
        00F6A13F05FF9D3903FFA95F34FFE4EBEFFFFDFDFDFFFFFFFFFFDEDEDEFFD2D2
        D2FFD3D3D3FFD2D2D2FFD3D3D3FFD2D2D2FFD1D1D1FFD1D1D1FFE7E7E7FFE3E3
        E3FFC7CCD0FFAE7C4CFF6F4113FFB66B24FF9E3900F60000000000000000964B
        00BBBD5801FFA53E01FFAD6233FFE4ECF0FFFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFEFEFFF7F8F8FFF3F4F4FFEEEFEFFFE8E9E9FFE5E6
        E6FFC9CFD4FFB77E49FFC9711EFFBA5A0DFF7D3200BA0000000000000000150A
        001A8F4800B3BF5F00EBBE752AEEBDBEC0EEBFBCB8EEC1BDB9EEC1BCB7EEBEB9
        B5EEBCB8B3EEB9B5AEEEB5AFACEEB1AEA9EEAFA9A5EEABA7A1EEA8A29EEEA3A0
        9CEE9F9F9EEEAB692EEEAD4C00EB7E3700B31207001A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSalvaLanctoClick
    end
    object btnImprimir: TBitBtn
      Tag = 2
      Left = 595
      Top = 4
      Width = 120
      Height = 30
      Caption = '&Imprimir'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFD8D0CBCAC0B9CDC5BFCEC6C1D0C8C2D0C8C2D0C8
        C2D0C8C2CFC7C2CEC6C0CEC6BFCDC4BDFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAAEA1DFD7CAE8E2DAEEEAE5
        F4F1EEF6F4F1F6F5F2F6F4F1F2EFEBECE7E1EDE7DFB0A294FAF9F9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B6ACE7
        E0D5EFEAE3F6F3EFFAF9F7FDFCFBFEFEFDFCFBFAF9F8F5F3F0EBF4F0E8B8ACA0
        FBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC0B5ABE5DFD4EBE8E1F3F1EEF7F7F6FAFAFAFCFCFCFAF9F9F7F6F4F1
        EFEAF2EEE7B7AA9EFBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F4F3A99486
        94776495796695796592766383634D8767518767528668538667538567538365
        518164507F624E7D5F4B7B5D49735641856B59856B5A846A58826755937C6EEE
        EBE8A28978916446966A4D946A4C94694B92674A9166498D62468A6043875D41
        855A3E82583C7E553A7B5237774F34744C3170492F6E472D6C472D6C452B6B44
        2A694329653E247F63508A664E9E7254996E51986E51976C50956B4F936A4D91
        684B8F65498C6347896044865D42835A407F583D7C543B785238754E35714B32
        6D482F6D482E6C472E6B462C6A452C6F4D37916E559D72549C72549C72549B70
        53996F52976C50946A4E92694C93694D93684C91664A8E64488B6145875D4281
        593E7D553A785036724B326E49306D472E6B462D6B452C72513B926E56684832
        91684CA276589E73559C71549F7456A27658A47759A376579F72549B6F51966B
        4D9267498D6246885E42845A3E7F563A7A5137754D33714B316E482F6B462D72
        513B957058976D519E7356A17557A47759AD8060B28363AF8161AB7C5DA6795A
        A275569E7153996D4F94694B9064478A6044855B4081573C7B5338764E33744C
        32734B31714A3075533D937057694932926A4EAD8060B68666B68665B38464B2
        8363AE7F60AA7C5CA57859A074559C6F51976B4D9266498C6246885D4283593D
        7D5439785035744C32734B31734A3077553D9673599F7455AB7F5EBB8B69B989
        67B68766B58665B38464B18262AC7E5FA87A5BA376579E7153996D4F94684B8F
        6347895F43845A3F7E553A7A5136754D33734B31734B3177553D967359B38564
        BD8D6BBC8D6ABD8D6ABA8A69B98866B58462B38261AF7F5EAA7A59A475559F70
        519A6B4C9366488F6244875B3E84593D82583D7C5338764D33734C32734B3177
        553E99745CC0906CC1906DB68866926A4E946B4E8D6C53957962937762927662
        9377649378659075628E73608D735F876D598E735F7E604A6A452E69462E724C
        32744C32734B3178553EA07B5FC69671C2926EB184629E7355B3815FA58E7AD4
        CEC3D6D1C8D1CDC7D9D6D0DFDCD6D7D4CFDBD7D2DCD8D2D8D4CCEAE5DBAE9C8B
        673F256B452B714B31754C32734B3178553E9F785BCA9974C4946FB28563A378
        59B78562AB9481DFDBD2DCD7CFE1DCD6DAD7D1DEDBD5DDDAD5E4E0DBDDD8D2D7
        D2CCE7E3DBB3A2936840256C462D714B31754D32734B31744F37C4B3A5BE8B65
        CA9772B48562A57959BA8864B09987D9D6D0CCC8C3D7D4D0D8D6D2DCDAD7D8D6
        D3D7D4D2D2D0CCDAD7D2EDEAE4B5A5976840256C452D70492E754C316C42279B
        8575FCFCFBD5CCC5C4B5AABEAFA5AD8365C28E67B29C8AD5D3CFC5C2BFD4D2CF
        D4D2D1D5D4D2D3D2D1D3D2D1D6D5D3DCDAD6FAF7F2B6A699683E226F482FAD9C
        91B8AAA1CBC1BAF9F8F7FFFFFFFFFFFFFFFFFFFEFEFEAF9989A2856FB09D8FDD
        DBD8D4D2CFE4E2E0DCDBD9E2E1DFDBDADADDDDDBE2E2E0EEEBE9F6F4F0B9ACA0
        836A58917A6AF9F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFCAC1BAE9E6E1E5E3E0ECEBE9EDECEAECECEBEBEBEAE5E5E4EBEBE8E5
        E4E1F2F1EEBFB4ABFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFCAC1B9E7E5E0E1DFDCE4E3E1EAEAE8E6E6E6E5E5
        E5E4E4E4EAE9E8E2E0DEFAF9F6C0B5ACFBFAFAFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCC2BADCDAD6D3D2D0DBDBDB
        DEDEDED7D8D8DDDDDED6D7D7E2E2E1FCFBF8FFFFFEC1B7ADFAF9F9FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCAFA6CF
        C7BFCFC8C2D1CBC6CFC9C5CFCAC6D1CCC8D4CECACEC9C4DAD3CEDFD9D2AD9F93
        FAF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFE5E0DDD7D1CCDAD3CFDAD4CFDAD4D0DAD4D0DAD4D0DAD4D0DAD4D0D9
        D2CED9D2CEDCD7D3FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnImprimirClick
    end
  end
  object dsServidor: TDataSource
    AutoEdit = False
    DataSet = mTbServidor
    Left = 352
    Top = 176
  end
  object cdsConfigOrgao: TClientDataSet
    Tag = 1
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'RAZAO_SOCIAL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'BRASAO'
        DataType = ftBlob
        Size = 1
      end
      item
        Name = 'LOGO_ADMIN'
        DataType = ftBlob
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provConfigOrgao'
    StoreDefs = True
    Left = 76
    Top = 232
    object cdsConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Required = True
      Size = 60
    end
    object cdsConfigOrgaoBRASAO: TBlobField
      FieldName = 'BRASAO'
      Size = 1
    end
    object cdsConfigOrgaoLOGO_ADMIN: TBlobField
      FieldName = 'LOGO_ADMIN'
      Size = 1
    end
    object cdsConfigOrgaonome_sys: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'nome_sys'
      Size = 120
    end
    object cdsConfigOrgaotit_rel1: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'tit_rel1'
      Size = 160
    end
    object cdsConfigOrgaotit_rel2: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'tit_rel2'
      Size = 160
    end
  end
  object provConfigOrgao: TDataSetProvider
    DataSet = sdsConfigOrgao
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 61
    Top = 208
  end
  object sdsConfigOrgao: TSQLDataSet
    SchemaName = 'sysdba'
    GetMetadata = False
    CommandText = 
      'select '#13#10'razao_social, brasao, logo_admin '#13#10'from config_orgao'#13#10'w' +
      'here '#13#10'id = 1'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 56
    Top = 184
  end
  object dspServidor: TDataSetProvider
    DataSet = qryServidor
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 85
    Top = 320
  end
  object cdsServidor: TClientDataSet
    Tag = 1
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_SERVIDOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_SERVIDOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DT_ADMISSAO'
        DataType = ftDate
      end
      item
        Name = 'DESCR_CARGO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_PF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'ID_SUB_UNID_ORCAMENT'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_SUB_UNID_ORCAM2'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspServidor'
    StoreDefs = True
    Left = 100
    Top = 344
    object cdsServidorID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object cdsServidorNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object cdsServidorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object cdsServidorDESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object cdsServidorCPF_PF: TStringField
      FieldName = 'CPF_PF'
      FixedChar = True
      Size = 11
    end
    object cdsServidorID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object cdsServidorDESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
  end
  object mTbServidor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 336
    Top = 144
    object mTbServidorID: TIntegerField
      FieldName = 'ID'
      DisplayFormat = '0-0;0; '
    end
    object mTbServidorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object mTbServidorCPF_PIS_PASEP: TStringField
      Alignment = taCenter
      FieldName = 'CPF_PIS_PASEP'
      Size = 11
    end
    object mTbServidorDT_ADMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DT_ADMISSAO'
    end
    object mTbServidorDESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 40
    end
    object mTbServidorRUBRICA: TStringField
      FieldName = 'RUBRICA'
      Size = 25
    end
    object mTbServidorVALOR: TCurrencyField
      FieldName = 'VALOR'
    end
    object mTbServidorOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 40
    end
    object mTbServidorID_EVENTO: TIntegerField
      FieldName = 'ID_EVENTO'
    end
    object mTbServidorID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object mTbServidorDESCR_SUB_UNID_ORCAM: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM'
    end
    object mTbServidorid_servid_ftdo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'id_servid_ftdo'
      Size = 9
    end
    object mTbServidorcpf_ftdo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'cpf_ftdo'
      Size = 14
    end
    object mTbServidorSalvar: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Salvar'
      Size = 1
    end
  end
  object qryEntidFinancEvento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      'ID_EVENTO1, ID_EVENTO2, ID_EVENTO3, '
      'COD_EVENTO1, COD_EVENTO2, COD_EVENTO3, TIPO_LAY_OUT'
      'FROM'
      'ENTID_FINANC '
      'WHERE'
      'ID = :pId')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 360
    Top = 25
    object qryEntidFinancEventoID_EVENTO1: TIntegerField
      FieldName = 'ID_EVENTO1'
    end
    object qryEntidFinancEventoID_EVENTO2: TIntegerField
      FieldName = 'ID_EVENTO2'
    end
    object qryEntidFinancEventoID_EVENTO3: TIntegerField
      FieldName = 'ID_EVENTO3'
    end
    object qryEntidFinancEventoCOD_EVENTO1: TStringField
      FieldName = 'COD_EVENTO1'
      FixedChar = True
      Size = 3
    end
    object qryEntidFinancEventoCOD_EVENTO2: TStringField
      FieldName = 'COD_EVENTO2'
      FixedChar = True
      Size = 3
    end
    object qryEntidFinancEventoCOD_EVENTO3: TStringField
      FieldName = 'COD_EVENTO3'
      FixedChar = True
      Size = 3
    end
    object qryEntidFinancEventoTIPO_LAY_OUT: TIntegerField
      FieldName = 'TIPO_LAY_OUT'
    end
  end
  object dsEntidFinancEvento: TDataSource
    AutoEdit = False
    DataSet = qryEntidFinancEvento
    Left = 392
    Top = 64
  end
  object OpenDialog1: TOpenDialog
    Left = 664
    Top = 56
  end
  object qryServidor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   d.id_servidor, d.nome_servidor, d.dt_admissao, d.descr_cargo,'
      '   d.id_sub_unid_orcament, d.descr_sub_unid_orcam2,'
      '   d1.cpf_pf'
      'from'
      '   inicializa_mes_servidor d'
      '   inner join servidor d1 on d1.id = d.id_servidor'
      'where'
      '   (d.ano_mes =  :pAnoMes) and'
      '   (d.bloq_lancto_evento_auto <> '#39'S'#39') and'
      '   (d.qtd_dias_trab > 0)'
      'order by'
      '   d1.cpf_pf')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 72
    Top = 305
    object qryServidorID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object qryServidorNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object qryServidorDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
    end
    object qryServidorDESCR_CARGO: TStringField
      FieldName = 'DESCR_CARGO'
      Size = 60
    end
    object qryServidorCPF_PF: TStringField
      FieldName = 'CPF_PF'
      FixedChar = True
      Size = 11
    end
    object qryServidorID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object qryServidorDESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
  end
  object spSalvaEvento: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_SERVIDOR'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 6
        Name = 'PE_ANO_MES'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'PE_PARCELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_EVENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_QTD'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 20
        Name = 'PE_OBSERV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_SERVID_AUTORIZ'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    StoredProcName = 'SP_ADD_LANCTO_EVENTO_MENSAL'
    Left = 272
    Top = 305
  end
  object frxReport1: TfrxReport
    Version = '4.11.15'
    DotMatrixReport = False
    EngineOptions.MaxMemSize = 10000000
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40613.901288356500000000
    ReportOptions.LastChange = 41115.658452557880000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 492
    Top = 212
    Datasets = <
      item
        DataSet = frxConfigOrgao
        DataSetName = 'frxConfigOrgao'
      end
      item
        DataSet = frxServidor
        DataSetName = 'frxServidor'
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
        Height = 26.456710000000000000
        Top = 192.756030000000000000
        Width = 755.906000000000000000
        DataSet = frxServidor
        DataSetName = 'frxServidor'
        RowCount = 0
        object frxSubUnidOrcamID: TfrxMemoView
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_servid_ftdo'
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxServidor."id_servid_ftdo"]')
          ParentFont = False
        end
        object frxSubUnidOrcamDESCRICAO: TfrxMemoView
          Left = 45.354323390000000000
          Width = 181.417440000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'NOME'
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxServidor."NOME"]')
          ParentFont = False
        end
        object frxSubUnidOrcamDESCR_SETOR: TfrxMemoView
          Left = 227.149598980000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cpf_ftdo'
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxServidor."cpf_ftdo"]')
          ParentFont = False
        end
        object frxSubUnidOrcamDESCR_UNID_ORCAMENT: TfrxMemoView
          Left = 301.362194959999900000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'DT_ADMISSAO'
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxServidor."DT_ADMISSAO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 358.055108349999900000
          Width = 105.826840000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'DESCR_CARGO'
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxServidor."DESCR_CARGO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 465.661407559999900000
          Width = 79.370130000000010000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            
              '[frxServidor."ID_SUB_UNID_ORCAM"]-[frxServidor."DESCR_SUB_UNID_O' +
              'RCAM"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 546.807859369999900000
          Width = 71.811070000000000000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'RUBRICA'
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxServidor."RUBRICA"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 620.866127089999900000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxServidor."VALOR"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 680.582662519999900000
          Width = 75.590599999999970000
          Height = 26.456710000000000000
          ShowHint = False
          DataField = 'OBSERVACAO'
          DataSet = frxServidor
          DataSetName = 'frxServidor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          Memo.UTF8W = (
            '[frxServidor."OBSERVACAO"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object Date: TfrxMemoView
          Top = 1.889763780000010000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[Date] - [Time]')
          ParentFont = False
        end
        object TotalPages: TfrxMemoView
          Left = 292.913575000000000000
          Top = 1.889763780000010000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#225'gina [Page#] / [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Align = baClient
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo7: TfrxMemoView
          Left = 660.638220000000000000
          Top = 1.889763779527584000
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
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Shape3: TfrxShapeView
          Top = 87.283550000000000000
          Width = 755.906000000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = 15197402
          Frame.Color = clWhite
        end
        object frxConfigOrgaoRAZAO_SOCIAL: TfrxMemoView
          Left = 108.661417320000000000
          Top = 3.779530000000001000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
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
        object Memo2: TfrxMemoView
          Left = 108.661417320000000000
          Top = 48.259895000000000000
          Width = 536.692854799999900000
          Height = 30.236240000000000000
          ShowHint = False
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."tit_rel1"]'
            '[frxConfigOrgao."tit_rel2"]')
          ParentFont = False
        end
        object frxConfigOrgaoNOME_SYS: TfrxMemoView
          Left = 108.661417320000000000
          Top = 22.677180000000000000
          Width = 536.693260000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'NOME_SYS'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxConfigOrgao."NOME_SYS"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 90.708720000000000000
          Width = 18.897650000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 45.354323390000000000
          Top = 90.708720000000000000
          Width = 181.417440000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome do Servidor')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 227.149598980000000000
          Top = 90.708720000000000000
          Width = 75.590600000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Align = baClient
          Width = 755.906000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
        end
        object Memo4: TfrxMemoView
          Left = 304.362194959999900000
          Top = 90.708720000000000000
          Width = 52.913420000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            'Admiss'#227'o')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 358.055108349999900000
          Top = 90.708720000000000000
          Width = 105.826840000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cargo/Fun'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 465.661407559999900000
          Top = 90.708720000000000000
          Width = 79.370130000000010000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'C. de Custos')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 546.807859369999900000
          Top = 90.708720000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Rubrica')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 620.866127089999900000
          Top = 90.708720000000000000
          Width = 56.692950000000010000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor (R$)')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 680.582662519999900000
          Top = 90.708720000000000000
          Width = 75.590599999999970000
          Height = 15.118120000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Observ.')
          ParentFont = False
        end
        object Picture2: TfrxPictureView
          Top = 3.779530000000001000
          Width = 98.267780000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'BRASAO'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Picture3: TfrxPictureView
          Left = 655.858690000000000000
          Top = 3.779530000000001000
          Width = 98.267780000000000000
          Height = 75.590600000000000000
          ShowHint = False
          DataField = 'LOGO_ADMIN'
          DataSet = frxConfigOrgao
          DataSetName = 'frxConfigOrgao'
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 755.906000000000000000
        object Memo17: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Qtd. de Lanctos:')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 106.047310000000000000
          Top = 3.779529999999994000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 545.031850000000000000
          Top = 3.779529999999994000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total >>>')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 645.543307090000000000
          Top = 3.779529999999994000
          Width = 56.692950000000000000
          Height = 11.338590000000000000
          ShowHint = False
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
            '[SUM(<frxServidor."VALOR">,MasterData1)]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Align = baWidth
          Top = 0.755905511811022300
          Width = 755.906000000000000000
          ShowHint = False
          Diagonal = True
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 440
    Top = 337
  end
  object mTbLog: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 504
    Top = 240
    object mTbLogid: TIntegerField
      FieldName = 'id'
    end
    object mTbLoglinha: TWideStringField
      FieldName = 'linha'
      Size = 240
    end
  end
  object frxLog: TfrxDBDataset
    UserName = 'frxLog'
    CloseDataSource = False
    FieldAliases.Strings = (
      'linha=linha')
    DataSet = mTbLog
    BCDToCurrency = False
    Left = 528
    Top = 265
  end
  object frxServidor: TfrxDBDataset
    UserName = 'frxServidor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NOME=NOME'
      'CPF_PIS_PASEP=CPF_PIS_PASEP'
      'DT_ADMISSAO=DT_ADMISSAO'
      'DESCR_CARGO=DESCR_CARGO'
      'RUBRICA=RUBRICA'
      'VALOR=VALOR'
      'OBSERVACAO=OBSERVACAO'
      'ID_EVENTO=ID_EVENTO'
      'ID_SUB_UNID_ORCAM=ID_SUB_UNID_ORCAM'
      'DESCR_SUB_UNID_ORCAM=DESCR_SUB_UNID_ORCAM'
      'id_servid_ftdo=id_servid_ftdo'
      'cpf_ftdo=cpf_ftdo')
    DataSet = mTbServidor
    BCDToCurrency = False
    Left = 328
    Top = 209
  end
  object frxConfigOrgao: TfrxDBDataset
    UserName = 'frxConfigOrgao'
    CloseDataSource = False
    FieldAliases.Strings = (
      'RAZAO_SOCIAL=RAZAO_SOCIAL'
      'BRASAO=BRASAO'
      'LOGO_ADMIN=LOGO_ADMIN'
      'nome_sys=nome_sys'
      'tit_rel1=tit_rel1'
      'tit_rel2=tit_rel2')
    DataSet = cdsConfigOrgao
    BCDToCurrency = False
    Left = 104
    Top = 265
  end
  object qryAbonoPASEP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pPisPASEP'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '   id, nome_servidor, dt_admissao, dt_readmissao, descr_cargo_at' +
        'ual,'
      '   id_sub_unid_orcament, descr_sub_unid_orcam2, '
      '   descr_est_funcional, status'
      'from'
      '   servidor'
      'where'
      '   pis_pasep_pf = :pPisPASEP'
      'order by'
      '   status, id')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 72
    Top = 417
    object qryAbonoPASEPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryAbonoPASEPNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object qryAbonoPASEPDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Required = True
    end
    object qryAbonoPASEPDT_READMISSAO: TDateField
      FieldName = 'DT_READMISSAO'
    end
    object qryAbonoPASEPDESCR_CARGO_ATUAL: TStringField
      FieldName = 'DESCR_CARGO_ATUAL'
      Size = 60
    end
    object qryAbonoPASEPID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object qryAbonoPASEPDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object qryAbonoPASEPSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qryAbonoPASEPDESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
  end
  object provAbonoPASEP: TDataSetProvider
    DataSet = qryAbonoPASEP
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 85
    Top = 440
  end
  object cdsAbonoPASEP: TClientDataSet
    Tag = 1
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
        Name = 'DT_ADMISSAO'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'DT_READMISSAO'
        DataType = ftDate
      end
      item
        Name = 'DESCR_CARGO_ATUAL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_SUB_UNID_ORCAMENT'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_EST_FUNCIONAL'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'STATUS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_SUB_UNID_ORCAM2'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provAbonoPASEP'
    StoreDefs = True
    Left = 100
    Top = 464
    object cdsAbonoPASEPID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAbonoPASEPNOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object cdsAbonoPASEPDT_ADMISSAO: TDateField
      FieldName = 'DT_ADMISSAO'
      Required = True
    end
    object cdsAbonoPASEPDT_READMISSAO: TDateField
      FieldName = 'DT_READMISSAO'
    end
    object cdsAbonoPASEPDESCR_CARGO_ATUAL: TStringField
      FieldName = 'DESCR_CARGO_ATUAL'
      Size = 60
    end
    object cdsAbonoPASEPDESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
    object cdsAbonoPASEPSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsAbonoPASEPID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object cdsAbonoPASEPDESCR_SUB_UNID_ORCAM2: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAM2'
    end
  end
  object qrySalvaAbonoPASEP: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pServidor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT'
      '   ANO_MES, PARCELA, ID_SERVIDOR, TOT_VENCTO, SAL_LIQUIDO'
      'FROM'
      '   base_calc_mes_servidor'
      'WHERE'
      '   (ID_SERVIDOR = :pServidor) and'
      '   (ano_mes = :pAnoMes) and'
      '   (parcela = '#39'0'#39')')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 272
    Top = 393
    object qrySalvaAbonoPASEPANO_MES: TStringField
      FieldName = 'ANO_MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object qrySalvaAbonoPASEPPARCELA: TStringField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qrySalvaAbonoPASEPID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrySalvaAbonoPASEPTOT_VENCTO: TFMTBCDField
      FieldName = 'TOT_VENCTO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qrySalvaAbonoPASEPSAL_LIQUIDO: TFMTBCDField
      FieldName = 'SAL_LIQUIDO'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
  end
  object provSalvaAbonoPASEP: TDataSetProvider
    DataSet = qrySalvaAbonoPASEP
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 277
    Top = 416
  end
  object cdsSalvaAbonoPASEP: TClientDataSet
    Tag = 1
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ANO_MES'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'PARCELA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_SERVIDOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TOT_VENCTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'SAL_LIQUIDO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provSalvaAbonoPASEP'
    StoreDefs = True
    Left = 292
    Top = 440
    object cdsSalvaAbonoPASEPANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsSalvaAbonoPASEPPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsSalvaAbonoPASEPID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
    object cdsSalvaAbonoPASEPTOT_VENCTO: TFMTBCDField
      FieldName = 'TOT_VENCTO'
      Precision = 18
      Size = 2
    end
    object cdsSalvaAbonoPASEPSAL_LIQUIDO: TFMTBCDField
      FieldName = 'SAL_LIQUIDO'
      Precision = 18
      Size = 2
    end
  end
end
