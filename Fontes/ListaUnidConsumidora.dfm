inherited frmListagemUnidConsumidora: TfrmListagemUnidConsumidora
  Left = 29
  Top = 84
  Caption = 'CONSULTAS DIVERSAS DE UNIDADES CONSUMIDORAS ...'
  ClientHeight = 651
  ClientWidth = 1130
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 1136
  ExplicitHeight = 680
  PixelsPerInch = 96
  TextHeight = 13
  object Notebook1: TNotebook
    Left = 0
    Top = 0
    Width = 1130
    Height = 651
    Align = alClient
    Color = clWhite
    PageIndex = 2
    ParentColor = False
    TabOrder = 0
    ExplicitWidth = 314
    ExplicitHeight = 211
    object TPage
      Left = 0
      Top = 0
      Caption = 'pgPrincipal'
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupBox1: TGroupBox
        Left = 22
        Top = 50
        Width = 851
        Height = 524
        Caption = ' Op'#231#245'es de Consultas por:  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -35
        Font.Name = 'Impact'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object rbOpcao1: TRadioButton
          Tag = 1
          Left = 21
          Top = 59
          Width = 765
          Height = 34
          Caption = 'Logradouro da Unidade Consumidora '
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 0
          TabStop = True
        end
        object rbOpcao2: TRadioButton
          Tag = 2
          Left = 21
          Top = 188
          Width = 765
          Height = 34
          Caption = 'Logradouro de Entrega da Fatura'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 1
        end
        object rbOpcao3: TRadioButton
          Tag = 5
          Left = 21
          Top = 317
          Width = 765
          Height = 34
          Caption = 'Fragmento do &Nome  ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 2
        end
        object rbOpcao4: TRadioButton
          Tag = 6
          Left = 21
          Top = 446
          Width = 765
          Height = 34
          Caption = 'CPF ou CNPJ ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -29
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentFont = False
          TabOrder = 3
        end
      end
      object btnListar: TBitBtn
        Left = 882
        Top = 504
        Width = 120
        Height = 34
        Caption = '&Avan'#231'ar  >>>'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4194368
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        NumGlyphs = 2
        ParentFont = False
        TabOrder = 1
        OnClick = btnListarClick
      end
      object btnSair0: TBitBtn
        Tag = 1
        Left = 882
        Top = 540
        Width = 120
        Height = 34
        Caption = '&Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
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
        ParentFont = False
        TabOrder = 2
        OnClick = btnSair0Click
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'pg1'
      ExplicitWidth = 314
      ExplicitHeight = 211
      object Label2: TLabel
        Left = 6
        Top = 594
        Width = 175
        Height = 14
        Caption = 'Complemento / Bairro / Distrito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Logradouro da Unidade Consumidora: '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitWidth = 314
        Height = 53
        Width = 1130
        object btnOk1: TBitBtn
          Tag = 1
          Left = 530
          Top = 16
          Width = 56
          Height = 30
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
          TabOrder = 1
          OnClick = btnOk1Click
        end
        object btnLimpar1: TButton
          Tag = 1
          Left = 1041
          Top = 16
          Width = 80
          Height = 30
          Caption = 'Li&mpar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnLimpar1Click
        end
        object cxLabel5: TcxLabel
          Left = 734
          Top = 22
          AutoSize = False
          Caption = 'Unidades:'
          FocusControl = edPesquisa1
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 794
        end
        object lblQtdUnids1: TcxLabel
          Left = 796
          Top = 21
          AutoSize = False
          Caption = '0'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Height = 18
          Width = 60
        end
        inline frmeLogradouro1: TfrmeLogradouro
          Left = 12
          Top = 19
          Width = 489
          Height = 29
          TabOrder = 0
          ExplicitLeft = 12
          ExplicitTop = 19
          ExplicitWidth = 489
          ExplicitHeight = 29
        end
      end
      object GridTable1: TcxGrid
        Left = 0
        Top = 53
        Width = 1130
        Height = 536
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
          Tag = 1
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
          DataController.DataSource = dsListaUnidConsum1
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
          Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao
          object GridTable1DBTableView1Column7: TcxGridDBColumn
            Tag = 1
            Caption = 'Id.'
            DataBinding.FieldName = 'ID'
            HeaderAlignmentHorz = taRightJustify
            SortIndex = 0
            SortOrder = soAscending
            Width = 54
          end
          object GridTable1DBTableView1Column8: TcxGridDBColumn
            Tag = 1
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME_PESSOA'
            Width = 230
          end
          object GridTable1DBTableView1Column12: TcxGridDBColumn
            Tag = 1
            Caption = 'N'#186' Im'#243'vel'
            DataBinding.FieldName = 'ENDER_UC_NUM_LETRA'
            HeaderAlignmentHorz = taRightJustify
            Width = 64
          end
          object GridTable1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Pessoa'
            DataBinding.FieldName = 'DESCR_TIPO_PESSOA'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object GridTable1DBTableView1Column3: TcxGridDBColumn
            Tag = 1
            Caption = 'CPF/CNPJ'
            DataBinding.FieldName = 'CPF_CNPJ_FTDO'
            Width = 118
          end
          object GridTable1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Dt.Liga'#231#227'o'
            DataBinding.FieldName = 'DT_LIGACAO'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object GridTable1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Forma C'#225'lculo'
            DataBinding.FieldName = 'DESCR_FORMA_CALCULO'
            Width = 84
          end
          object GridTable1DBTableView1Column6: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'DESCR_TIPO_UNID_CONSUM'
            Width = 100
          end
          object GridTable1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Torneiras'
            DataBinding.FieldName = 'QTD_TORNEIRA'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object GridTable1DBTableView1Column10: TcxGridDBColumn
            Caption = 'Multiplic.'
            DataBinding.FieldName = 'MULTIPLICADOR'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object GridTable1DBTableView1Column9: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERV_TARIFA'
            Width = 110
          end
          object GridTable1DBTableView1Column11: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'DESCR_SITUACAO'
            Width = 104
          end
        end
        object GridTable1Level1: TcxGridLevel
          GridView = GridTable1DBTableView1
        end
      end
      object Panel: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 610
        Width = 1128
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelKind = bkSoft
        BevelOuter = bvSpace
        Color = 14548479
        ParentBackground = False
        TabOrder = 2
        VerticalAlignment = taAlignTop
        ExplicitTop = 170
        ExplicitWidth = 312
        object sbPosServid1: TSpeedButton
          Tag = 1
          Left = 303
          Top = 4
          Width = 40
          Height = 28
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
          OnClick = sbPosServid1Click
        end
        object edPesquisa1: TcxTextEdit
          Left = 64
          Top = 6
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesquisa1PropertiesChange
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 0
          OnKeyDown = edPesquisa1KeyDown
          Width = 240
        end
        object lblTitColPesquisa: TcxLabel
          Left = 3
          Top = 8
          AutoSize = False
          Caption = '&Pesquisar:'
          FocusControl = edPesquisa1
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 63
        end
        object btnSair1: TBitBtn
          Tag = 1
          Left = 1039
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
          ParentFont = False
          TabOrder = 5
          OnClick = btnSair3Click
        end
        inline frmeFiltraCategSituac1: TfrmeFiltraCategSituac
          Left = 416
          Top = 4
          Width = 593
          Height = 31
          TabOrder = 4
          ExplicitLeft = 416
          ExplicitTop = 4
          ExplicitHeight = 31
          inherited cxLabel3: TcxLabel
            Top = 4
            FocusControl = cbCategoria1
            ExplicitTop = 4
            AnchorX = 70
          end
          inherited btnFiltrar: TButton
            Top = -1
            OnClick = frmeFiltraCategSituac1btnFiltrarClick
            ExplicitTop = -1
          end
          inherited cxLabel1: TcxLabel
            Top = 4
            FocusControl = cbSituacao1
            ExplicitTop = 4
            ExplicitHeight = 18
            Height = 18
            AnchorX = 300
          end
        end
        object cbCategoria1: TcxComboBox
          Tag = 11
          Left = 486
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODAS'
            'RESIDENCIAL'
            'COMERCIAL'
            'INDUSTRIAL'
            'OUTRA')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 2
          Text = 'TODAS'
          Width = 159
        end
        object cbSituacao1: TcxComboBox
          Tag = 12
          Left = 714
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODAS'
            'AGUARDANDO LIGA'#199#195'O'
            'ATIVAS '
            'INATIVAS '
            'DESATIVADAS'
            'ISENTAS'
            'OUTRAS')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 3
          Text = 'TODAS'
          Width = 198
        end
      end
      object edEnderComplemento: TcxDBTextEdit
        Tag = 2
        Left = 183
        Top = 590
        TabStop = False
        DataBinding.DataField = 'ENDER_COMPLEMENTO'
        DataBinding.DataSource = dsListaUnidConsum1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 200
      end
      object edEnderDescrBairro: TcxDBTextEdit
        Left = 383
        Top = 590
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
        DataBinding.DataSource = dsListaUnidConsum1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 200
      end
      object edEnderDescrDisitro: TcxDBTextEdit
        Left = 583
        Top = 590
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_DISTRITO'
        DataBinding.DataSource = dsListaUnidConsum1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 5
        Width = 200
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'pg2'
      ExplicitWidth = 314
      ExplicitHeight = 211
      object Label1: TLabel
        Left = 336
        Top = 384
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Label4: TLabel
        Left = 6
        Top = 593
        Width = 175
        Height = 14
        Caption = 'Complemento / Bairro / Distrito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Logradouro de Entrega da Fatura: '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        ExplicitWidth = 314
        Height = 53
        Width = 1130
        object btnOk2: TBitBtn
          Tag = 2
          Left = 714
          Top = 16
          Width = 56
          Height = 30
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
          TabOrder = 1
          OnClick = btnOk1Click
        end
        object btnLimpar2: TButton
          Tag = 2
          Left = 1041
          Top = 16
          Width = 80
          Height = 30
          Caption = 'Li&mpar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = btnLimpar1Click
        end
        object cxLabel2: TcxLabel
          Left = 830
          Top = 22
          AutoSize = False
          Caption = 'Unidades:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 890
        end
        object lblQtdUnids2: TcxLabel
          Left = 892
          Top = 21
          AutoSize = False
          Caption = '0'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 952
        end
        inline frmeLogradouro2: TfrmeLogradouro
          Left = 9
          Top = 17
          Width = 489
          Height = 29
          TabOrder = 0
          ExplicitLeft = 9
          ExplicitTop = 17
          ExplicitWidth = 489
          ExplicitHeight = 29
        end
      end
      object Panel2: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 610
        Width = 1128
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelKind = bkSoft
        BevelOuter = bvSpace
        Color = 14548479
        ParentBackground = False
        TabOrder = 1
        VerticalAlignment = taAlignTop
        object sbPosServid2: TSpeedButton
          Tag = 2
          Left = 303
          Top = 4
          Width = 40
          Height = 28
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
          OnClick = sbPosServid1Click
        end
        object edPesquisa2: TcxTextEdit
          Tag = 2
          Left = 64
          Top = 6
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesquisa1PropertiesChange
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 0
          OnKeyDown = edPesquisa1KeyDown
          Width = 240
        end
        object cxLabel7: TcxLabel
          Left = 3
          Top = 8
          AutoSize = False
          Caption = '&Pesquisar:'
          FocusControl = edPesquisa2
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 63
        end
        object BitBtn2: TBitBtn
          Tag = 1
          Left = 1039
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
          ParentFont = False
          TabOrder = 7
          OnClick = btnSair3Click
        end
        object cxLabel8: TcxLabel
          Left = 454
          Top = 8
          AutoSize = False
          Caption = '&Categoria:'
          FocusControl = cbCategoria2
          ParentFont = False
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 62
          AnchorX = 516
        end
        object cbCategoria2: TcxComboBox
          Tag = 11
          Left = 515
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODOS'
            'EFETIVOS'
            'COMISSIONADOS'
            'TEMPOR'#193'RIOS')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 2
          Text = 'TODOS'
          Width = 159
        end
        object cxLabel9: TcxLabel
          Left = 672
          Top = 8
          AutoSize = False
          Caption = 'Sit&ua'#231#227'o:'
          FocusControl = cbSituacao2
          ParentFont = False
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 732
        end
        object cbSituacao2: TcxComboBox
          Tag = 2
          Left = 733
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODAS'
            'ATIVOS (C/ PAGTO)'
            'INATIVOS (S/ PAGTO)'
            'DEMITIDOS/DESLIGADOS')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 3
          Text = 'TODAS'
          Width = 198
        end
        object btnFiltrar2: TButton
          Tag = 2
          Left = 945
          Top = 3
          Width = 80
          Height = 30
          Caption = '&Filtrar ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnFiltrar1Click
        end
      end
      object GridTable2: TcxGrid
        Left = 0
        Top = 53
        Width = 1130
        Height = 536
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
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        object GridDBTableView2: TcxGridDBTableView
          Tag = 2
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
          DataController.DataSource = dsListaUnidConsum2
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
          Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao
          object cxGridDBColumn31: TcxGridDBColumn
            Tag = 1
            Caption = 'Id.'
            DataBinding.FieldName = 'ID'
            HeaderAlignmentHorz = taRightJustify
            SortIndex = 0
            SortOrder = soAscending
            Width = 54
          end
          object cxGridDBColumn32: TcxGridDBColumn
            Tag = 1
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME_PESSOA'
            Width = 230
          end
          object cxGridDBColumn33: TcxGridDBColumn
            Tag = 1
            Caption = 'N'#186' Im'#243'vel'
            DataBinding.FieldName = 'ENDER_UC_NUM_LETRA2'
            HeaderAlignmentHorz = taRightJustify
            Width = 64
          end
          object cxGridDBColumn34: TcxGridDBColumn
            Caption = 'Pessoa'
            DataBinding.FieldName = 'DESCR_TIPO_PESSOA'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGridDBColumn35: TcxGridDBColumn
            Tag = 1
            Caption = 'CPF/CNPJ'
            DataBinding.FieldName = 'CPF_CNPJ_FTDO'
            Width = 118
          end
          object cxGridDBColumn36: TcxGridDBColumn
            Caption = 'Dt.Liga'#231#227'o'
            DataBinding.FieldName = 'DT_LIGACAO'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object cxGridDBColumn37: TcxGridDBColumn
            Caption = 'Forma C'#225'lculo'
            DataBinding.FieldName = 'DESCR_FORMA_CALCULO'
            Width = 84
          end
          object cxGridDBColumn38: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'DESCR_TIPO_UNID_CONSUM'
            Width = 100
          end
          object cxGridDBColumn39: TcxGridDBColumn
            Caption = 'Torneiras'
            DataBinding.FieldName = 'QTD_TORNEIRA'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object cxGridDBColumn40: TcxGridDBColumn
            Caption = 'Multiplic.'
            DataBinding.FieldName = 'MULTIPLICADOR'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object cxGridDBColumn41: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERV_TARIFA'
            Width = 110
          end
          object cxGridDBColumn42: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'DESCR_SITUACAO'
            Width = 104
          end
        end
        object GridLevel2: TcxGridLevel
          GridView = GridDBTableView2
        end
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 584
        Top = 589
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_DISTRITO2'
        DataBinding.DataSource = dsListaUnidConsum2
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 200
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 384
        Top = 589
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_BAIRRO2'
        DataBinding.DataSource = dsListaUnidConsum2
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 200
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Tag = 2
        Left = 184
        Top = 589
        TabStop = False
        DataBinding.DataField = 'ENDER_COMPLEMENTO'
        DataBinding.DataSource = dsListaUnidConsum2
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 5
        Width = 200
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'pg3'
      object Label5: TLabel
        Left = 6
        Top = 588
        Width = 53
        Height = 14
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Caption = ' Fragmento do Nome/Raz'#227'o Social ou Nome Fantasia:  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 47
        Width = 1130
        object btnOk3: TBitBtn
          Tag = 3
          Left = 610
          Top = 12
          Width = 56
          Height = 30
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
        object btnLimpar3: TButton
          Tag = 3
          Left = 1041
          Top = 12
          Width = 80
          Height = 30
          Caption = 'Li&mpar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnLimpar1Click
        end
        object cxLabel1: TcxLabel
          Left = 774
          Top = 18
          AutoSize = False
          Caption = 'Unidades:'
          FocusControl = edPesquisa3
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 834
        end
        object lblQtdUnids3: TcxLabel
          Left = 836
          Top = 17
          AutoSize = False
          Caption = '0'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Height = 18
          Width = 60
        end
        object rbOpPesquisa31: TRadioButton
          Left = 8
          Top = 19
          Width = 129
          Height = 17
          Caption = 'Come'#231'ando com ...'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object rbOpPesquisa32: TRadioButton
          Left = 156
          Top = 19
          Width = 168
          Height = 17
          Caption = 'Em qualquer parte com ...'
          TabOrder = 1
        end
        object edTextoPesquisa3: TcxMaskEdit
          Left = 335
          Top = 16
          ParentFont = False
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.MaxLength = 0
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 2
          Text = '           '
          Width = 250
        end
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 610
        Width = 1128
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelKind = bkSoft
        BevelOuter = bvSpace
        Color = 14548479
        ParentBackground = False
        TabOrder = 1
        VerticalAlignment = taAlignTop
        object sbPosServid3: TSpeedButton
          Tag = 3
          Left = 303
          Top = 3
          Width = 40
          Height = 28
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
          OnClick = sbPosServid1Click
        end
        object edPesquisa3: TcxTextEdit
          Tag = 3
          Left = 64
          Top = 6
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesquisa1PropertiesChange
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 0
          OnKeyDown = edPesquisa1KeyDown
          Width = 240
        end
        object cxLabel10: TcxLabel
          Left = 3
          Top = 8
          AutoSize = False
          Caption = '&Pesquisar:'
          FocusControl = edPesquisa3
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 63
        end
        object BitBtn3: TBitBtn
          Tag = 1
          Left = 1039
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
          ParentFont = False
          TabOrder = 7
          OnClick = btnSair3Click
        end
        object cxLabel11: TcxLabel
          Left = 445
          Top = 8
          AutoSize = False
          Caption = '&Categoria:'
          FocusControl = cbCategoria3
          ParentFont = False
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 68
          AnchorX = 513
        end
        object cbCategoria3: TcxComboBox
          Tag = 11
          Left = 515
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODOS'
            'EFETIVOS'
            'COMISSIONADOS'
            'TEMPOR'#193'RIOS')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 2
          Text = 'TODOS'
          Width = 159
        end
        object cxLabel12: TcxLabel
          Left = 672
          Top = 8
          AutoSize = False
          Caption = 'Sit&ua'#231#227'o:'
          FocusControl = cbSituacao3
          ParentFont = False
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 732
        end
        object cbSituacao3: TcxComboBox
          Tag = 2
          Left = 733
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODAS'
            'ATIVOS (C/ PAGTO)'
            'INATIVOS (S/ PAGTO)'
            'DEMITIDOS/DESLIGADOS')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 3
          Text = 'ATIVOS (C/ PAGTO)'
          Width = 198
        end
        object btnFiltrar3: TButton
          Tag = 3
          Left = 946
          Top = 3
          Width = 80
          Height = 30
          Caption = '&Filtrar ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnFiltrar1Click
        end
      end
      object Grid3: TcxGrid
        Left = 0
        Top = 47
        Width = 1130
        Height = 536
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
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        object GridDBTableView3: TcxGridDBTableView
          Tag = 3
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
          DataController.DataSource = dsListaUnidConsum3
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
          Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao
          object cxGridDBColumn10: TcxGridDBColumn
            Tag = 1
            Caption = 'Id.'
            DataBinding.FieldName = 'ID'
            HeaderAlignmentHorz = taRightJustify
            SortIndex = 0
            SortOrder = soAscending
            Width = 54
          end
          object cxGridDBColumn11: TcxGridDBColumn
            Tag = 1
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME_PESSOA'
            Width = 230
          end
          object cxGridDBColumn13: TcxGridDBColumn
            Caption = 'Pessoa'
            DataBinding.FieldName = 'DESCR_TIPO_PESSOA'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGridDBColumn14: TcxGridDBColumn
            Tag = 1
            Caption = 'CPF/CNPJ'
            DataBinding.FieldName = 'CPF_CNPJ_FTDO'
            Width = 118
          end
          object cxGridDBColumn16: TcxGridDBColumn
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'NOME_FANTASIA'
            Width = 145
          end
          object cxGridDBColumn15: TcxGridDBColumn
            Caption = 'Dt.Liga'#231#227'o'
            DataBinding.FieldName = 'DT_LIGACAO'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object cxGridDBColumn17: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'DESCR_TIPO_UNID_CONSUM'
            Width = 100
          end
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Torneiras'
            DataBinding.FieldName = 'QTD_TORNEIRA'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'Multiplic.'
            DataBinding.FieldName = 'MULTIPLICADOR'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object cxGridDBColumn51: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERV_TARIFA'
            Width = 124
          end
          object cxGridDBColumn52: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'DESCR_SITUACAO'
            Width = 90
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = GridDBTableView3
        end
      end
      object edDescrLograd: TcxDBTextEdit
        Left = 62
        Top = 584
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_LOGRAD'
        DataBinding.DataSource = dsListaUnidConsum3
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 288
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 842
        Top = 584
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_DISTRITO'
        DataBinding.DataSource = dsListaUnidConsum3
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 200
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 634
        Top = 584
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
        DataBinding.DataSource = dsListaUnidConsum3
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 5
        Width = 200
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Tag = 2
        Left = 425
        Top = 584
        TabStop = False
        DataBinding.DataField = 'ENDER_COMPLEMENTO'
        DataBinding.DataSource = dsListaUnidConsum3
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 6
        Width = 200
      end
      object edEnderNum: TcxDBTextEdit
        Left = 351
        Top = 584
        TabStop = False
        DataBinding.DataField = 'ENDER_NUM_LETRA2'
        DataBinding.DataSource = dsListaUnidConsum3
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 7
        Width = 68
      end
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'pg4'
      object Label6: TLabel
        Left = 6
        Top = 581
        Width = 53
        Height = 14
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clBlue
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 44
        Width = 1130
        object btnOk4: TBitBtn
          Tag = 4
          Left = 402
          Top = 11
          Width = 56
          Height = 30
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
        object btnLimpar4: TButton
          Tag = 4
          Left = 1041
          Top = 11
          Width = 80
          Height = 30
          Caption = 'Li&mpar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btnLimpar1Click
        end
        object cxLabel6: TcxLabel
          Left = 696
          Top = 17
          AutoSize = False
          Caption = 'Unid. Consumidoras:'
          FocusControl = edPesquisa4
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 138
          AnchorX = 834
        end
        object lblQtdUnids4: TcxLabel
          Left = 836
          Top = 16
          AutoSize = False
          Caption = '0'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Arial'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Height = 18
          Width = 60
        end
        object rbCPF: TRadioButton
          Tag = 1
          Left = 12
          Top = 18
          Width = 72
          Height = 17
          Caption = 'C.P.F.:'
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = rbCPFClick
        end
        object rbCNPJ: TRadioButton
          Tag = 2
          Left = 100
          Top = 18
          Width = 72
          Height = 17
          Caption = 'C.N.P.J.:'
          TabOrder = 1
        end
        object edCPF_CNPJ: TcxMaskEdit
          Left = 184
          Top = 15
          ParentFont = False
          Properties.AlwaysShowBlanksAndLiterals = True
          Properties.EditMask = '999.999.999-99;0; '
          Properties.MaxLength = 0
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 2
          Text = '           '
          Width = 146
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 1
        Top = 610
        Width = 1128
        Height = 40
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alBottom
        BevelKind = bkSoft
        BevelOuter = bvSpace
        Color = 14548479
        ParentBackground = False
        TabOrder = 1
        VerticalAlignment = taAlignTop
        object sbPosServid4: TSpeedButton
          Tag = 4
          Left = 303
          Top = 2
          Width = 40
          Height = 28
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
          OnClick = sbPosServid1Click
        end
        object edPesquisa4: TcxTextEdit
          Tag = 4
          Left = 64
          Top = 4
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.OnChange = edPesquisa1PropertiesChange
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 0
          OnKeyDown = edPesquisa1KeyDown
          Width = 240
        end
        object cxLabel14: TcxLabel
          Left = 3
          Top = 6
          AutoSize = False
          Caption = '&Pesquisar:'
          FocusControl = edPesquisa4
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Arial'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 63
        end
        object BitBtn4: TBitBtn
          Tag = 1
          Left = 1039
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
          ParentFont = False
          TabOrder = 7
          OnClick = btnSair3Click
        end
        object cxLabel15: TcxLabel
          Left = 451
          Top = 8
          AutoSize = False
          Caption = '&Categoria:'
          FocusControl = cbCategoria4
          ParentFont = False
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 63
          AnchorX = 514
        end
        object cbCategoria4: TcxComboBox
          Tag = 11
          Left = 515
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODOS'
            'EFETIVOS'
            'COMISSIONADOS'
            'TEMPOR'#193'RIOS')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 2
          Text = 'TODOS'
          Width = 159
        end
        object cxLabel16: TcxLabel
          Left = 672
          Top = 7
          AutoSize = False
          Caption = 'Sit&ua'#231#227'o:'
          FocusControl = cbSituacao4
          ParentFont = False
          Style.StyleController = dmPrincipal.cxLabelStyleNormal3
          Properties.Alignment.Horz = taRightJustify
          Height = 18
          Width = 60
          AnchorX = 732
        end
        object cbSituacao4: TcxComboBox
          Tag = 2
          Left = 733
          Top = 6
          ParentFont = False
          Properties.Items.Strings = (
            'TODAS'
            'ATIVOS (C/ PAGTO)'
            'INATIVOS (S/ PAGTO)'
            'DEMITIDOS/DESLIGADOS')
          Properties.OnCloseUp = cbVinculo1PropertiesCloseUp
          Properties.OnPopup = cbVinculo1PropertiesPopup
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 3
          Text = 'ATIVOS (C/ PAGTO)'
          Width = 198
        end
        object btnFiltrar4: TButton
          Tag = 4
          Left = 946
          Top = 3
          Width = 80
          Height = 30
          Caption = '&Filtrar ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btnFiltrar1Click
        end
      end
      object Grid4: TcxGrid
        Left = 0
        Top = 44
        Width = 1130
        Height = 529
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
        TabOrder = 2
        LookAndFeel.Kind = lfFlat
        object GridDBTableView4: TcxGridDBTableView
          Tag = 4
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
          DataController.DataSource = dsListaUnidConsum4
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
          Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao
          object cxGridDBColumn53: TcxGridDBColumn
            Tag = 1
            Caption = 'Id.'
            DataBinding.FieldName = 'ID'
            HeaderAlignmentHorz = taRightJustify
            SortIndex = 0
            SortOrder = soAscending
            Width = 54
          end
          object cxGridDBColumn54: TcxGridDBColumn
            Tag = 1
            Caption = 'Nome / Raz'#227'o Social'
            DataBinding.FieldName = 'NOME_PESSOA'
            Width = 280
          end
          object cxGridDBColumn55: TcxGridDBColumn
            Tag = 1
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'NOME_FANTASIA'
            Width = 273
          end
          object cxGridDBColumn58: TcxGridDBColumn
            Caption = 'Dt.Liga'#231#227'o'
            DataBinding.FieldName = 'DT_LIGACAO'
            HeaderAlignmentHorz = taCenter
            Width = 74
          end
          object cxGridDBColumn60: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'DESCR_TIPO_UNID_CONSUM'
            Width = 100
          end
          object cxGridDBColumn61: TcxGridDBColumn
            Caption = 'Torneiras'
            DataBinding.FieldName = 'QTD_TORNEIRA'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object cxGridDBColumn62: TcxGridDBColumn
            Caption = 'Multiplic.'
            DataBinding.FieldName = 'MULTIPLICADOR'
            HeaderAlignmentHorz = taRightJustify
            Width = 58
          end
          object cxGridDBColumn63: TcxGridDBColumn
            Caption = 'Observa'#231#227'o'
            DataBinding.FieldName = 'OBSERV_TARIFA'
            Width = 110
          end
          object cxGridDBColumn64: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'DESCR_SITUACAO'
            Width = 104
          end
        end
        object cxGridLevel6: TcxGridLevel
          GridView = GridDBTableView4
        end
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 62
        Top = 577
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_LOGRAD'
        DataBinding.DataSource = dsListaUnidConsum4
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 288
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 842
        Top = 577
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_DISTRITO'
        DataBinding.DataSource = dsListaUnidConsum4
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 200
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 634
        Top = 577
        TabStop = False
        DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
        DataBinding.DataSource = dsListaUnidConsum4
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 5
        Width = 200
      end
      object cxDBTextEdit10: TcxDBTextEdit
        Tag = 2
        Left = 426
        Top = 577
        TabStop = False
        DataBinding.DataField = 'ENDER_COMPLEMENTO'
        DataBinding.DataSource = dsListaUnidConsum4
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 6
        Width = 200
      end
      object cxDBTextEdit11: TcxDBTextEdit
        Left = 349
        Top = 577
        TabStop = False
        DataBinding.DataField = 'ENDER_UC_NUM_LETRA'
        DataBinding.DataSource = dsListaUnidConsum4
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 7
        Width = 68
      end
    end
  end
  object provListaUnidConsum1: TDataSetProvider
    DataSet = qryListaUnidConsum1
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 48
    Top = 112
  end
  object cdsListaUnidConsum1: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PESSOA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_CNPJ_FTDO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DT_LIGACAO'
        DataType = ftDate
      end
      item
        Name = 'FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
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
        Size = 18
      end
      item
        Name = 'ENDER_COMPLEMENTO'
        DataType = ftString
        Size = 30
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
      end
      item
        Name = 'QTD_TORNEIRA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MULTIPLICADOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'OBSERV_FATURA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_UC_NUM_LETRA'
        DataType = ftString
        Size = 7
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provListaUnidConsum1'
    StoreDefs = True
    Left = 64
    Top = 128
    object cdsListaUnidConsum1ID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '0-0;0; '
    end
    object cdsListaUnidConsum1TIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cdsListaUnidConsum1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsListaUnidConsum1CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsListaUnidConsum1DT_LIGACAO: TDateField
      Alignment = taCenter
      FieldName = 'DT_LIGACAO'
    end
    object cdsListaUnidConsum1FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum1DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 10
    end
    object cdsListaUnidConsum1TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum1DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsListaUnidConsum1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum1DESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 18
    end
    object cdsListaUnidConsum1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cdsListaUnidConsum1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsListaUnidConsum1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsListaUnidConsum1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cdsListaUnidConsum1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsListaUnidConsum1QTD_TORNEIRA: TIntegerField
      FieldName = 'QTD_TORNEIRA'
      Required = True
    end
    object cdsListaUnidConsum1MULTIPLICADOR: TIntegerField
      FieldName = 'MULTIPLICADOR'
      Required = True
    end
    object cdsListaUnidConsum1OBSERV_FATURA: TStringField
      FieldName = 'OBSERV_FATURA'
      Size = 40
    end
    object cdsListaUnidConsum1ENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
  end
  object dsListaUnidConsum1: TDataSource
    AutoEdit = False
    DataSet = cdsListaUnidConsum1
    Left = 80
    Top = 144
  end
  object qryListaUnidConsum1: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pIdLograd'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pTipoUnidIni'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pTipoUnidFim'
        ParamType = ptInput
        Size = 2
        Value = '9'
      end
      item
        DataType = ftString
        Name = 'pSituacIni'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'pSituacFim'
        ParamType = ptInput
        Size = 2
        Value = '9'
      end>
    SQL.Strings = (
      'SELECT'
      
        '  ID, TIPO_PESSOA, DESCR_TIPO_PESSOA, NOME_PESSOA, CPF_CNPJ_FTDO' +
        ', DT_LIGACAO,'
      
        '  forma_calculo, DESCR_FORMA_CALCULO, tipo_unid_consum, descr_ti' +
        'po_unid_consum,'
      '  situacao, descr_situacao, ender_uc_num_letra,'
      '  ender_complemento, ender_id_bairro, ender_descr_bairro,'
      '  ender_id_distrito, ender_descr_distrito,'
      '  qtd_torneira, multiplicador, observ_fatura'
      'FROM'
      '  unid_consumidora'
      'where'
      '  (ender_id_lograd = :pIdLograd) and'
      '  (tipo_unid_consum >= :pTipoUnidIni) and'
      '  (tipo_unid_consum <= :pTipoUnidFim) and'
      '  (situacao >= :pSituacIni) and'
      '  (situacao <= :pSituacFim)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 32
    Top = 88
  end
  object qryListaUnidConsum3: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
        Size = 8
        Value = '%SILVA%'
      end
      item
        DataType = ftString
        Name = 'pNome2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pTipoUnidIni'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pTipoUnidFim'
        ParamType = ptInput
        Size = 2
        Value = '9'
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
        Value = '9'
      end>
    SQL.Strings = (
      'SELECT'
      
        '  ID, TIPO_PESSOA, DESCR_TIPO_PESSOA, NOME_PESSOA, nome_fantasia' +
        ','
      '  CPF_CNPJ_FTDO, DT_LIGACAO,'
      
        '  forma_calculo, DESCR_FORMA_CALCULO, tipo_unid_consum, descr_ti' +
        'po_unid_consum,'
      '  situacao, descr_situacao, ender_descr_lograd,'
      '  ender_num||ender_num_letra as ender_num_letra2,'
      '  ender_complemento, ender_descr_bairro, ender_descr_distrito,'
      '  ender_id_bairro2, ender_descr_bairro2,'
      '  ender_id_distrito2, ender_descr_distrito2,'
      '  qtd_torneira, multiplicador, observ_fatura'
      'FROM'
      '  unid_consumidora'
      'where'
      '  ((nome_pessoa like :pNome) or'
      '   (nome_fantasia like :pNome2)) and'
      '  (tipo_unid_consum >= :pTipoUnidIni) and'
      '  (tipo_unid_consum <= :pTipoUnidFim) and'
      '  (situacao >= :pSituacIni) and'
      '  (situacao <= :pSituacFim)'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 304
    Top = 96
  end
  object provListaUnidConsum3: TDataSetProvider
    DataSet = qryListaUnidConsum3
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 320
    Top = 120
  end
  object cdsListaUnidConsum3: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PESSOA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOME_FANTASIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_CNPJ_FTDO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DT_LIGACAO'
        DataType = ftDate
      end
      item
        Name = 'FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
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
        Size = 18
      end
      item
        Name = 'ENDER_DESCR_LOGRAD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDER_NUM_LETRA2'
        DataType = ftString
        Size = 12
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
        Name = 'ENDER_ID_BAIRRO2'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_BAIRRO2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_ID_DISTRITO2'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_DISTRITO2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QTD_TORNEIRA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MULTIPLICADOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'OBSERV_FATURA'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provListaUnidConsum3'
    StoreDefs = True
    Left = 336
    Top = 136
    object cdsListaUnidConsum3ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsListaUnidConsum3TIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum3DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cdsListaUnidConsum3NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsListaUnidConsum3NOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 60
    end
    object cdsListaUnidConsum3CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsListaUnidConsum3DT_LIGACAO: TDateField
      FieldName = 'DT_LIGACAO'
    end
    object cdsListaUnidConsum3FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum3DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 10
    end
    object cdsListaUnidConsum3TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum3DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsListaUnidConsum3SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum3DESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 18
    end
    object cdsListaUnidConsum3ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cdsListaUnidConsum3ENDER_NUM_LETRA2: TStringField
      FieldName = 'ENDER_NUM_LETRA2'
      Size = 12
    end
    object cdsListaUnidConsum3ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cdsListaUnidConsum3ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsListaUnidConsum3ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsListaUnidConsum3ENDER_ID_BAIRRO2: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO2'
    end
    object cdsListaUnidConsum3ENDER_DESCR_BAIRRO2: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO2'
      Size = 40
    end
    object cdsListaUnidConsum3ENDER_ID_DISTRITO2: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO2'
    end
    object cdsListaUnidConsum3ENDER_DESCR_DISTRITO2: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO2'
      Size = 40
    end
    object cdsListaUnidConsum3QTD_TORNEIRA: TIntegerField
      FieldName = 'QTD_TORNEIRA'
      Required = True
    end
    object cdsListaUnidConsum3MULTIPLICADOR: TIntegerField
      FieldName = 'MULTIPLICADOR'
      Required = True
    end
    object cdsListaUnidConsum3OBSERV_FATURA: TStringField
      FieldName = 'OBSERV_FATURA'
      Size = 40
    end
  end
  object dsListaUnidConsum3: TDataSource
    AutoEdit = False
    DataSet = cdsListaUnidConsum3
    Left = 352
    Top = 152
  end
  object qryListaUnidConsum2: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pIdLograd'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pTipoUnidIni'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pTipoUnidFim'
        ParamType = ptInput
        Size = 2
        Value = '9'
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
        Value = '9'
      end>
    SQL.Strings = (
      'SELECT'
      
        '  ID, TIPO_PESSOA, DESCR_TIPO_PESSOA, NOME_PESSOA, CPF_CNPJ_FTDO' +
        ', DT_LIGACAO,'
      
        '  forma_calculo, DESCR_FORMA_CALCULO, tipo_unid_consum, descr_ti' +
        'po_unid_consum,'
      '  situacao, descr_situacao, ender_uc_num_letra2,'
      '  ender_complemento2, ender_id_bairro2, ender_descr_bairro2,'
      '  ender_id_distrito2, ender_descr_distrito2,'
      '  qtd_torneira, multiplicador, observ_fatura'
      'FROM'
      '  unid_consumidora'
      'where'
      '  (ender_id_lograd2 = :pIdLograd) and'
      '  (tipo_unid_consum >= :pTipoUnidIni) and'
      '  (tipo_unid_consum <= :pTipoUnidFim) and'
      '  (situacao >= :pSituacIni) and'
      '  (situacao <= :pSituacFim)'
      ''
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 168
    Top = 88
  end
  object provListaUnidConsum2: TDataSetProvider
    DataSet = qryListaUnidConsum2
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 184
    Top = 112
  end
  object cdsListaUnidConsum2: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PESSOA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_CNPJ_FTDO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DT_LIGACAO'
        DataType = ftDate
      end
      item
        Name = 'FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
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
        Size = 18
      end
      item
        Name = 'ENDER_COMPLEMENTO2'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ENDER_ID_BAIRRO2'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_BAIRRO2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_ID_DISTRITO2'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_DISTRITO2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QTD_TORNEIRA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MULTIPLICADOR'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'OBSERV_FATURA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_UC_NUM_LETRA2'
        DataType = ftString
        Size = 7
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provListaUnidConsum2'
    StoreDefs = True
    Left = 200
    Top = 128
    object cdsListaUnidConsum2ID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '0-0;0; '
    end
    object cdsListaUnidConsum2TIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum2DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cdsListaUnidConsum2NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsListaUnidConsum2CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsListaUnidConsum2DT_LIGACAO: TDateField
      FieldName = 'DT_LIGACAO'
    end
    object cdsListaUnidConsum2FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum2DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 10
    end
    object cdsListaUnidConsum2TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum2DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsListaUnidConsum2SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum2DESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 18
    end
    object cdsListaUnidConsum2ENDER_COMPLEMENTO2: TStringField
      FieldName = 'ENDER_COMPLEMENTO2'
      Size = 30
    end
    object cdsListaUnidConsum2ENDER_ID_BAIRRO2: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO2'
    end
    object cdsListaUnidConsum2ENDER_DESCR_BAIRRO2: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO2'
      Size = 40
    end
    object cdsListaUnidConsum2ENDER_ID_DISTRITO2: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO2'
    end
    object cdsListaUnidConsum2ENDER_DESCR_DISTRITO2: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO2'
      Size = 40
    end
    object cdsListaUnidConsum2QTD_TORNEIRA: TIntegerField
      FieldName = 'QTD_TORNEIRA'
      Required = True
    end
    object cdsListaUnidConsum2MULTIPLICADOR: TIntegerField
      FieldName = 'MULTIPLICADOR'
      Required = True
    end
    object cdsListaUnidConsum2OBSERV_FATURA: TStringField
      FieldName = 'OBSERV_FATURA'
      Size = 40
    end
    object cdsListaUnidConsum2ENDER_UC_NUM_LETRA2: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA2'
      Size = 7
    end
  end
  object dsListaUnidConsum2: TDataSource
    AutoEdit = False
    DataSet = cdsListaUnidConsum2
    Left = 216
    Top = 144
  end
  object qryListaUnidConsum4: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'pCPF_CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pTipoUnidIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pTipoUnidFim'
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
      end>
    SQL.Strings = (
      'SELECT'
      
        '  ID, TIPO_PESSOA, DESCR_TIPO_PESSOA, NOME_PESSOA, nome_fantasia' +
        ','
      '  CPF_CNPJ_FTDO, DT_LIGACAO,'
      
        '  forma_calculo, DESCR_FORMA_CALCULO, tipo_unid_consum, descr_ti' +
        'po_unid_consum,'
      '  situacao, descr_situacao, ender_descr_lograd,'
      '  ender_UC_num_letra,'
      '  ender_complemento, ender_descr_bairro, ender_descr_distrito,'
      '  ender_id_bairro2, ender_descr_bairro2,'
      '  ender_id_distrito2, ender_descr_distrito2,'
      '  qtd_torneira, multiplicador, observ_fatura'
      'FROM'
      '  unid_consumidora'
      'where'
      '  (cpf_cnpj = :pCPF_CNPJ) and'
      '  (tipo_unid_consum >= :pTipoUnidIni) and'
      '  (tipo_unid_consum <= :pTipoUnidFim) and'
      '  (situacao >= :pSituacIni) and'
      '  (situacao <= :pSituacFim)'
      ''
      ''
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 448
    Top = 96
  end
  object provListaUnidConsum4: TDataSetProvider
    DataSet = qryListaUnidConsum4
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 464
    Top = 120
  end
  object cdsListaUnidConsum4: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PESSOA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOME_FANTASIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_CNPJ_FTDO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DT_LIGACAO'
        DataType = ftDate
      end
      item
        Name = 'FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
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
        Size = 18
      end
      item
        Name = 'ENDER_DESCR_LOGRAD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDER_COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ENDER_ID_BAIRRO2'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_BAIRRO2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_ID_DISTRITO2'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_DISTRITO2'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QTD_TORNEIRA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MULTIPLICADOR'
        Attributes = [faRequired]
        DataType = ftInteger
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
        Name = 'OBSERV_FATURA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_UC_NUM_LETRA'
        DataType = ftString
        Size = 7
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provListaUnidConsum4'
    StoreDefs = True
    Left = 480
    Top = 136
    object cdsListaUnidConsum4ID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '0-0;0; '
    end
    object cdsListaUnidConsum4TIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum4DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cdsListaUnidConsum4NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsListaUnidConsum4NOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 60
    end
    object cdsListaUnidConsum4CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsListaUnidConsum4DT_LIGACAO: TDateField
      FieldName = 'DT_LIGACAO'
    end
    object cdsListaUnidConsum4FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum4DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 10
    end
    object cdsListaUnidConsum4TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum4DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsListaUnidConsum4SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum4DESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 18
    end
    object cdsListaUnidConsum4ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cdsListaUnidConsum4ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cdsListaUnidConsum4ENDER_ID_BAIRRO2: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO2'
    end
    object cdsListaUnidConsum4ENDER_DESCR_BAIRRO2: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO2'
      Size = 40
    end
    object cdsListaUnidConsum4ENDER_ID_DISTRITO2: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO2'
    end
    object cdsListaUnidConsum4ENDER_DESCR_DISTRITO2: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO2'
      Size = 40
    end
    object cdsListaUnidConsum4QTD_TORNEIRA: TIntegerField
      FieldName = 'QTD_TORNEIRA'
      Required = True
    end
    object cdsListaUnidConsum4MULTIPLICADOR: TIntegerField
      FieldName = 'MULTIPLICADOR'
      Required = True
    end
    object cdsListaUnidConsum4ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsListaUnidConsum4ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsListaUnidConsum4OBSERV_FATURA: TStringField
      FieldName = 'OBSERV_FATURA'
      Size = 40
    end
    object cdsListaUnidConsum4ENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
  end
  object dsListaUnidConsum4: TDataSource
    AutoEdit = False
    DataSet = cdsListaUnidConsum4
    Left = 496
    Top = 152
  end
  object qryListaUnidConsum5: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftString
        Name = 'pEfet1'
        ParamType = ptInput
        Size = 2
        Value = 'A'
      end
      item
        DataType = ftString
        Name = 'pEfet2'
        ParamType = ptInput
        Size = 2
        Value = 'Z'
      end
      item
        DataType = ftInteger
        Name = 'pSituacTCM1'
        ParamType = ptInput
        Value = '1'
      end
      item
        DataType = ftInteger
        Name = 'pSituacTCM2'
        ParamType = ptInput
        Value = '99'
      end
      item
        DataType = ftString
        Name = 'pStatus1'
        ParamType = ptInput
        Size = 2
        Value = '1'
      end
      item
        DataType = ftString
        Name = 'pStatus2'
        ParamType = ptInput
        Size = 2
        Value = '3'
      end
      item
        DataType = ftString
        Name = 'pNome'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select id, nome_servidor, dt_admissao, dt_readmissao, id_situaca' +
        'o_tcm,'
      
        '   descr_situac_tcm, id_sub_unid_orcament, descr_sub_unid_orcame' +
        'nt,'
      
        '   id_sub_unid_orcament||'#39' '#39'||descr_sub_unid_orcam2 as sub_unid_' +
        'orcament,'
      '   id_cargo_atual, descr_cargo_atual, efetivo, CARGA_HOR_MENSAL,'
      '   descr_unid_lotacao, id_est_funcional, descr_est_funcional'
      'FROM'
      'SERVIDOR'
      'WHERE'
      '   (efetivo >= :pEfet1) and'
      '   (efetivo <= :pEfet2) and'
      '   (id_situacao_tcm >= :pSituacTCM1) and'
      '   (id_situacao_tcm <= :pSituacTCM2) and'
      '   (status >= :pStatus1) and'
      '   (status <= :pStatus2) and'
      '   (nome_servidor like :pNome)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 584
    Top = 96
    object qryListaUnidConsum5ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryListaUnidConsum5NOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
  end
  object provListaUnidConsum5: TDataSetProvider
    DataSet = qryListaUnidConsum5
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 600
    Top = 120
  end
  object cdsListaUnidConsum5: TClientDataSet
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
        Name = 'ID_SITUACAO_TCM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCR_SITUAC_TCM'
        DataType = ftString
        Size = 40
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
        Name = 'SUB_UNID_ORCAMENT'
        DataType = ftString
        Size = 32
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
        Name = 'EFETIVO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CARGA_HOR_MENSAL'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_UNID_LOTACAO'
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
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provListaUnidConsum5'
    StoreDefs = True
    Left = 616
    Top = 136
    object cdsListaUnidConsum5ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsListaUnidConsum5NOME_SERVIDOR: TStringField
      FieldName = 'NOME_SERVIDOR'
      Size = 60
    end
    object cdsListaUnidConsum5DT_ADMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DT_ADMISSAO'
      Required = True
    end
    object cdsListaUnidConsum5DT_READMISSAO: TDateField
      Alignment = taCenter
      FieldName = 'DT_READMISSAO'
    end
    object cdsListaUnidConsum5ID_SITUACAO_TCM: TIntegerField
      FieldName = 'ID_SITUACAO_TCM'
      Required = True
    end
    object cdsListaUnidConsum5DESCR_SITUAC_TCM: TStringField
      FieldName = 'DESCR_SITUAC_TCM'
      Size = 40
    end
    object cdsListaUnidConsum5ID_SUB_UNID_ORCAMENT: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAMENT'
      Required = True
    end
    object cdsListaUnidConsum5DESCR_SUB_UNID_ORCAMENT: TStringField
      FieldName = 'DESCR_SUB_UNID_ORCAMENT'
      Size = 60
    end
    object cdsListaUnidConsum5SUB_UNID_ORCAMENT: TStringField
      FieldName = 'SUB_UNID_ORCAMENT'
      Size = 32
    end
    object cdsListaUnidConsum5ID_CARGO_ATUAL: TIntegerField
      FieldName = 'ID_CARGO_ATUAL'
      Required = True
    end
    object cdsListaUnidConsum5DESCR_CARGO_ATUAL: TStringField
      FieldName = 'DESCR_CARGO_ATUAL'
      Size = 60
    end
    object cdsListaUnidConsum5EFETIVO: TStringField
      FieldName = 'EFETIVO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsListaUnidConsum5CARGA_HOR_MENSAL: TIntegerField
      FieldName = 'CARGA_HOR_MENSAL'
    end
    object cdsListaUnidConsum5DESCR_UNID_LOTACAO: TStringField
      FieldName = 'DESCR_UNID_LOTACAO'
      Size = 40
    end
    object cdsListaUnidConsum5ID_EST_FUNCIONAL: TIntegerField
      FieldName = 'ID_EST_FUNCIONAL'
      Required = True
    end
    object cdsListaUnidConsum5DESCR_EST_FUNCIONAL: TStringField
      FieldName = 'DESCR_EST_FUNCIONAL'
      Size = 40
    end
  end
  object dsListaUnidConsum5: TDataSource
    AutoEdit = False
    DataSet = cdsListaUnidConsum5
    Left = 632
    Top = 152
  end
end
