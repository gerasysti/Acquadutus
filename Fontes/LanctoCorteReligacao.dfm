inherited frmLanctoCorteReligacao: TfrmLanctoCorteReligacao
  Left = 88
  Top = 39
  Caption = 'frmLanctoCorteReligacao'
  ClientHeight = 650
  ClientWidth = 1121
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 1127
  ExplicitHeight = 679
  PixelsPerInch = 96
  TextHeight = 13
  object gbServidores: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = ' Unidades Consumidoras: '
    ParentFont = False
    Style.TextColor = clBlue
    Style.TextStyle = [fsBold]
    TabOrder = 0
    Height = 610
    Width = 1121
    object Label2: TLabel
      Left = 6
      Top = 583
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
    object dbg1: TcxGrid
      Tag = 2
      AlignWithMargins = True
      Left = 5
      Top = 21
      Width = 1111
      Height = 551
      Align = alTop
      PopupMenu = PopupMenu1
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object GridDBTableView1: TcxGridDBTableView
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
        DataController.DataSource = ds1
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
          Width = 60
        end
        object GridDBTableView1Column5: TcxGridDBColumn
          Caption = 'Id. Unid. Consum.'
          DataBinding.FieldName = 'ID_UNID_CONSUM'
          Width = 94
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Tag = 1
          Caption = 'Nome / Raz'#227'o Social'
          DataBinding.FieldName = 'NOME_PESSOA'
          SortIndex = 0
          SortOrder = soAscending
          Width = 294
        end
        object GridDBTableView1Column4: TcxGridDBColumn
          Caption = 'Categoria'
          DataBinding.FieldName = 'DESCR_CATEGORIA'
          Width = 74
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Caption = 'CPF/CNPJ'
          DataBinding.FieldName = 'CPF_CNPJ'
          FooterAlignmentHorz = taCenter
          Width = 116
        end
        object cxGridDBColumn8: TcxGridDBColumn
          Caption = 'Dt. Movimento'
          DataBinding.FieldName = 'DT_MOVIM'
          HeaderAlignmentHorz = taCenter
          Width = 86
        end
        object GridDBTableView1Column2: TcxGridDBColumn
          Caption = 'Tipo Movim.'
          DataBinding.FieldName = 'DESCR_TIPO_MOVIM'
          Width = 70
        end
        object cxGridDBColumn5: TcxGridDBColumn
          Caption = 'Observa'#231#227'o'
          DataBinding.FieldName = 'OBSERVACAO'
          Width = 300
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = GridDBTableView1
      end
    end
    object edEnderDescrDisitro: TcxDBTextEdit
      Left = 817
      Top = 577
      TabStop = False
      DataBinding.DataField = 'ENDER_DESCR_DISTRITO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 1
      Width = 200
    end
    object edEnderDescrBairro: TcxDBTextEdit
      Left = 617
      Top = 577
      TabStop = False
      DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 2
      Width = 200
    end
    object edEnderComplemento: TcxDBTextEdit
      Tag = 2
      Left = 417
      Top = 577
      TabStop = False
      DataBinding.DataField = 'ENDER_COMPLEMENTO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 3
      Width = 200
    end
    object edEnderNum: TcxDBTextEdit
      Left = 349
      Top = 577
      TabStop = False
      DataBinding.DataField = 'ENDER_UC_NUM_LETRA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 4
      Width = 68
    end
    object edDescrLograd: TcxDBTextEdit
      Left = 62
      Top = 577
      TabStop = False
      DataBinding.DataField = 'ENDER_DESCR_LOGRADOURO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 5
      Width = 288
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 616
    Width = 1121
    Height = 34
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 11783049
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsItalic]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object lblTitColPesquisa: TLabel
      Left = 224
      Top = 10
      Width = 168
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
      Left = 398
      Top = 4
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edPesquisaPropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 0
      Width = 234
    end
    object btnAdd: TBitBtn
      Tag = 1
      Left = 649
      Top = 3
      Width = 90
      Height = 30
      Caption = '&Novo'
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
        FFFFFFFFFFFFFFFFFFFFFF886554997766967463967463967463967463977464
        95746295756296736394746193726094715F92725E91705F926F5E93725F7F5F
        4EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A7A69FEF2E4F9EBDDF9EBDDF9
        EBDDF9EBDDF9EBDEF9EBDCF9ECDDF9EADBF9EADCF9EBDBF8EAD8F8E7D5F7E6D2
        F7E6CFFBE7CE906F5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9B7B6BFFFD
        F3FCF6EBFCF6EBFBF6EBFCF6EBFCF5EBFCF5ECFCF5EAFCF5EBFCF4E9FCF4E8FA
        F3E8FBF3E6F9F1E2FAEFE0FBEDD98E6D5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9B7C6BFFFDF4FBF6ECFCF6EDFCF6EDFCF6ECFBF5ECFBF5ECFBF5EBFBF5
        EAFBF4EAFBF4E9FBF3E8FBF3E8FAF2E6FBF2E3FCEEDC8F6E5CFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF9C7D6CFFFEF6FCF7EEFCF7EFFCF7EFFCF7EFFCF6EE
        FCF6EEFCF6EDFBF6ECFBF5ECFBF5EAFBF4E9FBF4E8FBF3E7FAF3E6FBF1E1906F
        5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7E6DFFFFF8FCF8F1FCF8F1FC
        F8F1FCF8F1FCF7F0FCF7F0FCF7EFFCF6EEFCF6EDFBF6ECFBF5EBFBF4EAFBF4E8
        FCF4E8FDF1E491705FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F70FFFF
        FAFCF9F3FDF9F3FDF9F3FDF9F3FCF8F2FCF8F2FCF8F1FCF7F0FCF7EFFCF6EEFC
        F6EDFBF5EBFBF4EAFBF5E9FCF3E4927160FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFA38070FFFFFCFDFAF5FDFAF5FDFAF5FDFAF5FDF9F4FDF9F4FDF9F3FCF8
        F2FCF8F1FCF7F0FCF6EEFCF6EDFBF5EBFBF5EBFCF2E593715FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFA38171FFFFFEFDFBF7FDFBF7FDFBF7FDFBF7FDFAF6
        FDFAF6FDFAF5FDF9F4FCF9F3FCF8F1FCF7F0FCF6EEFBF6EDFBF6ECFCF4E69572
        61FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA48372FFFFFFFDFBF9FEFCF9FE
        FCF9FEFCF9FDFBF8FDFBF8FDFAF7FDFAF5FDF9F4FCF9F3FCF8F1FCF7EFFCF6EE
        FBF6EDFCF3E7947360FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA58473F8F9
        FFE9ECFBE2E6FBE2E9FBEEF3FBFCFAFAFEFCF9FDFBF8FDFBF7FDFAF6FDF9F4FC
        F8F2FCF8F1FCF7EFFDF7EEFEF5E8967362FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFF987D82C6D1FFB0BFFEA3B2FEACD8FEB6C4FED0D9FDF2F3FBFEFCFAFDFB
        F8FDFBF7FDFAF5FDF9F3FCF8F2FCF7F0FCF7EFFDF4E9957361FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFE2E8FF8B9EB18191FF4E74FF3F5EFF7ECCFF5E76FF98ACFE
        C6D1FDF3F4FBFEFCFAFDFBF8FDFAF6FDF9F4FCF8F2FCF8F1FCF8F0FDF6EB9774
        63FFFFFFFFFFFFFFFFFFFFFFFFF4F6FFC0CBFF586DC67DD4FF3C86FF54A9FF64
        DAFF3072FF466CFF9AADFED2D9FEFDFBFBFDFCF9FDFBF7FDFAF5FDF9F3FCF8F1
        FDF8F0FDF6EB967463FFFFFFFFFFFFFFFFFFFFFFFFE0E6FFA2B4FF2C46DC439C
        FF60EAFF54ECFF48DEFF63C4FF2E67FF709CFFBBD4FEF3F4FBFEFCF9FDFBF7FE
        FBF6FEFAF6FDFAF3FDFAF2FDF5EC987563FFFFFFFFFFFFFFFFFFFFFFFFD2DBFF
        879EFF2555E56BCEFF2CDBFF00CAFF04D0FF57E8FF73DFFF5D95FFABB8FFE9EC
        FCFFFDFBFAF8F5F6F2EDF3ECE7ECE4DFE1D6D0C9B5A9957363FFFFFFFFFFFFFF
        FFFFFFFFFFD0D8FF8496FF4180EB54D6FF28DDFF00CAFF02CFFF6EECFF3D8FFF
        4468FFA9BAFFE8ECFCFFFFFECAB5AA9C7A69AA8B78A8846AA27A5C8C6757E3D8
        D4FFFFFFFFFFFFFFFFFFFFFFFFD9E3FFA9D7FF518CE94496FF74F5FF2DDFFF3E
        E3FF50C6FF2D6CFF5778FFB6C4FEF0F1FBFFFFFDD5C7BECCB5A3FCE9C5F0CC92
        A07B64E7DDDAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF2FFB9C5FF4751C84482
        FF4CA1FF51CAFF63C2FF68C9FF5894FF8B9FFECBD5FDFCFAFAFFFEFDD9CAC3C4
        A384ECC88E9C7661E5DBD7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF
        DAE2FF756CA56981FF6CB3FF407AFF3B71FF4864FF98C9FEBBCDFDEDEEFBFEFC
        F9FFFFFCDACCC4BB9369A17B63E9DFDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFCFCFF96808DBAC5FFAADAFF8C9EFF90A5FFA9BAFFC5CEFF
        E8EFFFFFFFFFFFFFFFFFFFFFD1BEB4916C5BE8DED9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D7662A78987998C95917C9192
        7D919B8288A7877FAB8979A98878A88777A98A78A18071EAE0DCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      OnClick = btnAddClick
    end
    object btnEdit: TBitBtn
      Tag = 2
      Left = 742
      Top = 3
      Width = 90
      Height = 30
      Caption = '&Altera'
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
        FFFFFFFFFFFFFFFFB88D8DA87979B48B8BCAADACDFCDCCF5EDEDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDA67272EAC7C7FFF6F6ECD3CF9686B5AE
        8893B58584C39A9AD6BBBBE9DADAFAF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F8A37071E9C7C4FFF9
        FAFFFDF77089FFF6EFFAFFFAFAF6E3E4DFC1C1C7A2A2B38484B48686C7A3A3DB
        C4C4FDFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F0F0
        A87475ECCABFFFE9CBFFEBC36378E8FFE8CEFFEBDFFFF2F0FFF2F4FFF5F8FFF6
        F8FFF1F3EFD7D8B08383F0E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF0E8E8AE7979F1D6D8FFFAFEFFFFFA5E7DFFFFF7E8FFEAD8F3D6B9
        EBCDADFEDCBAFFDEC2FFE3D4FFF3EDB68B8AF7F3F3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFEBE1E1B37E7FF4D3C1FFE9CAFFECC56079EDFF
        F4DCFFEFE9CEC4C5F1E6EAFFF4FAFFEFEEFFE5D9FFE5CBB0807DFEFDFDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D9D9B88384F5E3E6FFFB
        FEFFFFF86282FAFFF8DFC8B9AB5D564BBBA68EFFDCBCFFE5C9FFE5D2FFF1E4B7
        8687FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0D0D0
        BE8989F9E0D1FFF1E1FFF9E76784FAFFFFFADBDBE16178895F6B7C305648538A
        56ABC094FFEFE3BB8D8DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFDCCACAC58F90FAEAE6FFF4E7FFF6DB6982EEFFEDC5FBE1C576A0C2
        44A36C1399291D9D3200740686AD7DCF9DA2FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFD8C2C2CA9494FCF6F8FFFDFFFFFFFE6C8CFFFF
        FFFEFFFFFF64AFA21FAF3F5DF28B4CD6702EAD4600760A8CA47CFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4BBBBCF9A9BFEE8CFFFEA
        CCFFEEC86F87EAFFEAC3FFE5C86BC27E41DB6F67FF9A59EC8647D06A2AA64009
        7C14B4D9B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0B3B3
        D6A0A0FFFFFFFFFFFFFFFFFF7A99FFFFFFFFFFFDFFBFE8CC20BF505DF88D64FD
        9658EA8444CC6627A13B127C19C5E1C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCBADADDBA7A8FFEFD2FFECCAF0DECD8C9BE5FFEAC5FFE6C8FFE6D0
        84CA7D2CC75A61FB9064FB9456E78141C862239C36188020D5E9D6FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC8A6A6E1AFB0FFFFFFFFFFFFE2EAFF9EB5FFFF
        FFFFFFFBFEFFFAFCFFFBFF5BCD8039D46862FD9262F99354E47E3EC25C209832
        208628E1F0E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5A1A1EAB8B6FFF9E8FFF5
        E4D4D4E8AFB9EBFFF3DDFFEFDCFFEDDAFFECDAFFEAD93DBE5B46DF7462FC9461
        F89152E27B39C357278A355A825BF2F1F2FFFFFFFFFFFFFFFFFFFFFFFFC09999
        F2C3C1FFFCF0FFFAEBC9CFF2C0CAF3FFFBECFFF5EAFFF6EBFFF3E8FFF0E7F0EE
        E230C76051EA7D62FE945EFB8F6AA47A7C7279737070898781F9F9F8FFFFFFFF
        FFFFFFFFFFBD9292FAD0D0F8FCFDF9F9F7B1BDE3C8D3F2C9C9C9E9E9EAA4A4A5
        E3E1E2706F70ECE3E74C6C572BCA5D55F4838BAA97B2ABAFD6D3CB7C82A72733
        AA656ACDFFFFFFFFFFFFFFFFFFBD8F8FFFDFDF6265659797976463618E8D8C6B
        6C6C7F80807F80807879798B8C8C7B797998898F34734770BC88C9C1C5FFFFFF
        7D92E8213FD82136CA0B12A98989D4FFFFFFFFFFFFBE8E8EFFDADAE1DEDE3738
        37C1BCDE393B39E2C3C33B3D3DC6A3A3424141A88282524F4FB08B8C646062D2
        DCD5D0CCC58399ED2F55E74672F92A45D30E17AC1C1CA2FFFFFFFFFFFFC6A5A5
        A78282C39F9F3F4141B5A09F484B4AAEA4A4595B5BA7A4A46769699092927071
        718385859F9F9FFEFEFEB4B9D02647DE4E7FFF4168F0253FCD0910A64C4CB7FF
        FFFFFFFFFFDDDDDD727575A6A8A8595959898A8A6363636E6E6E676767636363
        828282818181A3A3A3A1A1A1F7F7F7FFFFFFEAEEFD3B4BCC3353DF2F4CDA111D
        B11717A1DFDFF3FFFFFFFFFFFFFFFFFFB6B6B67B7B7BB6B6B6A5A5A5D5D5D5CD
        CDCDF5F5F5F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDDF6
        3C42B91313A45353B9DDDDF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 2
      OnClick = btnAddClick
    end
    object btnDel: TBitBtn
      Left = 835
      Top = 3
      Width = 90
      Height = 30
      Caption = 'E&xclui'
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
        FFFFFFFFFFFFFFFFC6C6EE2626B51515AF5959C4D0D0F1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3FA6464C3A7A7DCFCFCFEFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FA191AB91542F01545E80E2CC8070BAB74
        74D4F8F8FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1FB3B3BB50520C60312AC
        2929AB5D5DC5E4E4F6FFFFFFFFFFFFFFFFFFFFFFFF9494DC0E27D81B4FFF194A
        FB1948F51643E3091CB73434BAE1E1F8FFFFFFFFFFFFFFFFFFEEEEFA3636B30A
        29D60D3EF40B39E6072ED4041CB92525AAE6E6F7FFFFFFFFFFFFFFFFFF3939BF
        2554FC2356FF1D4FFF1C4DFE1A4BFB1947F0102DC61818B1CACAF1FFFFFFEEEE
        FA3232B30C2DDA1142F80E3FF40D3CF20B39EE0A37E8041FBB3939B3FBFBFDFF
        FFFFFFFFFF9898E30F10BB2957F92456FF2051FF1F51FF1D4EFD1B4BF41338CE
        0E0EADAAAAE53333B60F31DE1446FC1243F81040F50E3EF40D3DF40B3AEF0A36
        E50212ACA1A1DBFFFFFFFFFFFFFFFFFF3636C62D5DFE2859FF2657FF2455FF23
        55FF2051FF1D4CF7153DD60202A71131DE184CFE1547F91444F81243F71040F5
        0E3EF40C3DF30C3CF2072CD55757BEFFFFFFFFFFFFFFFFFF1214C73C71FF2F61
        FF2B5BFF295AFF2859FF2758FF2455FF1D4EF81B4BF31C4EFD1B4AFD1848FB15
        46F91444F81243F71040F50F41F80B34E70D10AFA4A4E1FFFFFFFFFFFFFDFDFE
        3333C92239DA4275FF3769FF2F60FF2C5DFF2A5AFF285AFF2657FF2152FE1E4F
        FF1C4DFF1A4BFD1849FB1546F91544F91347FB0B29D92A2AB0D5D5F3FFFFFFFF
        FFFFFFFFFFFFFFFFF9F9FE8080DF0F14C13B63F44273FF3565FF2F60FF2B5CFF
        295AFF2859FF2354FF1F50FE1C4EFE1A4BFE1949FC164AFF0920CC4949BEF1F1
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3F63535C12338D748
        7AFF3A6BFF3162FF2D5EFF2A5AFF2758FF2354FF1F50FE1D4EFE1C4FFF0A1CC8
        6464CFFBFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFBFBFE8080D90F14C0406CFB3768FF3262FF2E5FFF2A5BFF2758FF2455FE1D
        4FFB091AC66B6BD1FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFEFFB1011BB4273FF3A6AFF3565FF3262FF2E5F
        FF2A5AFF2657FE1E4EF8102DCA3E3EC0FBFBFDFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8787E12740DF4576FF3D6DFF
        3969FF3565FF3262FF2D5EFF295BFF2555FE1C4CEF0A1AB87B7BDAFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFF1A1AC04D
        7DFF4675FF406FFF3D6EFF396AFF3A6BFF3565FF2C5CFF295AFF2252FD1947E3
        060BB1C0C0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFA8A8EC2337D85183FF4877FF4372FF406EFF3D6FFF243FE04375FF3364FF2A
        5BFF2657FF1D4FF9143AD11F1FB8F0F0FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF4545D54D76F85280FF4B79FF4877FF4374FF2342E52929
        BC1420C84274FF3062FF2859FF2353FE1B4BF30C23BF6060D3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2FA121ACD6091FF5280FF4D7BFF497AFF
        3C69FA2020C2F1F1FC8989E11522CD4071FF2D5DFF2455FE1F4FFC1847E7050D
        B4B2B2EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8D8DEA3750E45E8EFF54
        82FF507EFF4B7EFF0F1BCCB9B9F2FFFFFFFFFFFF7C7CE4182AD23B6DFF2859FF
        2051FF1B4AF8133AD31A1AB8EEEEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F
        DC6893FC6491FF5885FF5281FF3252ED5858DAFFFFFFFFFFFFFFFFFFFFFFFF66
        66D91D35DA3367FF2454FF1C4EFD1948F20B24C36060CEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF9B9BF21E28D3719EFF6A9AFF5485FF0F11C9E4E4FBFFFFFFFFFF
        FFFFFFFFFFFFFFFBFBFE4A4ACA2341E52C60FF2053FF1C52FF1032E11010B8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABABF52828D7212ED62637DA8686E8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FC3131C42246EB102ADC0F11
        C06868D8DBDBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5
        C5F56969DCF8F8FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6F9
        3737C69292E0F2F2FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 3
      OnClick = btnDelClick
    end
    object btnFechar: TBitBtn
      Left = 1029
      Top = 3
      Width = 90
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
      TabOrder = 4
    end
  end
  object cds1: TClientDataSet
    Tag = 1
    Aggregates = <>
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
        Name = 'ID_SERVID_EXECUT'
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
        Name = 'ENDER_ID_LOGRAD'
        DataType = ftInteger
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
        Name = 'ENDER_NUM_LETRA'
        DataType = ftString
        Size = 7
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
        Name = 'ENDER_DESCR_LOGRADOURO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDER_UC_NUM_LETRA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ENDER_COMPLEMENTO_1'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ENDER_DESCR_BAIRRO_1'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_DESCR_DISTRITO_1'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'prov1'
    StoreDefs = True
    AfterApplyUpdates = cdsEventoFixoAfterApplyUpdates
    Left = 76
    Top = 232
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1TIPO_MOVIM: TStringField
      FieldName = 'TIPO_MOVIM'
      FixedChar = True
      Size = 1
    end
    object cds1DT_MOVIM: TDateField
      FieldName = 'DT_MOVIM'
    end
    object cds1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      DisplayFormat = '0-0;0; '
    end
    object cds1MOTIVO: TIntegerField
      FieldName = 'MOTIVO'
    end
    object cds1ID_SERVID_EXECUT: TIntegerField
      FieldName = 'ID_SERVID_EXECUT'
    end
    object cds1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cds1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cds1DESCR_CATEGORIA: TStringField
      FieldName = 'DESCR_CATEGORIA'
      FixedChar = True
      Size = 11
    end
    object cds1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 80
    end
    object cds1DESCR_TIPO_MOVIM: TStringField
      FieldName = 'DESCR_TIPO_MOVIM'
      FixedChar = True
      Size = 9
    end
    object cds1ANO_MES: TStringField
      FieldName = 'ANO_MES'
      FixedChar = True
      Size = 6
    end
    object cds1ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cds1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cds1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cds1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 7
    end
    object cds1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cds1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cds1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cds1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cds1ENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      Size = 50
    end
    object cds1ENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
    object cds1ENDER_COMPLEMENTO_1: TStringField
      FieldName = 'ENDER_COMPLEMENTO_1'
      Size = 30
    end
    object cds1ENDER_DESCR_BAIRRO_1: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO_1'
      Size = 40
    end
    object cds1ENDER_DESCR_DISTRITO_1: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO_1'
      Size = 40
    end
  end
  object prov1: TDataSetProvider
    DataSet = qry1
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 61
    Top = 208
  end
  object PopupMenu1: TPopupMenu
    Left = 216
    Top = 184
    object Novo1: TMenuItem
      Tag = 1
      Caption = '&Novo'
      OnClick = Novo1Click
    end
    object Alterar1: TMenuItem
      Tag = 2
      Caption = '&Alterar'
    end
    object Exluir1: TMenuItem
      Tag = 3
      Caption = '&Excluir'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Sair1: TMenuItem
      Tag = 4
      Caption = '&Sair'
    end
  end
  object qry1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
        Size = 7
        Value = '201207'
      end>
    SQL.Strings = (
      'select '
      'd.*,'
      'd1.ender_descr_logradouro, '
      'd1.ender_uc_num_letra, '
      'd1.ender_complemento,'
      'd1.ender_descr_bairro, d1.ender_descr_distrito'
      'from'
      'LANCTO_CORTE_RELIGACAO d,'
      'unid_consumidora d1'
      'where'
      '(d.ano_mes = :pAnoMes) and'
      '(d1.id = d.id_unid_consum)'
      'order by'
      'd.id')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 40
    Top = 184
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
    object qry1ID_SERVID_EXECUT: TIntegerField
      FieldName = 'ID_SERVID_EXECUT'
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
    object qry1ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
      ProviderFlags = []
    end
    object qry1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      ProviderFlags = []
      Size = 50
    end
    object qry1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object qry1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      ProviderFlags = []
      Size = 7
    end
    object qry1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
      ProviderFlags = []
    end
    object qry1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
      ProviderFlags = []
    end
    object qry1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object qry1ENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      ProviderFlags = []
      Size = 7
    end
    object qry1ENDER_COMPLEMENTO_1: TStringField
      FieldName = 'ENDER_COMPLEMENTO_1'
      ProviderFlags = []
      Size = 30
    end
    object qry1ENDER_DESCR_BAIRRO_1: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO_1'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_DESCR_DISTRITO_1: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO_1'
      ProviderFlags = []
      Size = 40
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = cds1
    Left = 96
    Top = 280
  end
  object qryTotLograd: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
        Size = 7
        Value = '201207'
      end
      item
        DataType = ftInteger
        Name = 'pLograd'
        ParamType = ptInput
        Value = '1'
      end>
    SQL.Strings = (
      'select'
      '  ender_id_lograd, sum(consumo_m3) as consumo_m3'
      'from'
      '  leitura_hidrometro'
      'where'
      '  (ano_mes = :pAnoMes) and'
      '  (ender_id_lograd = :pLograd)'
      'group by'
      '  ender_id_lograd'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 152
    Top = 360
    object qryTotLogradENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryTotLogradCONSUMO_M3: TLargeintField
      FieldName = 'CONSUMO_M3'
    end
  end
end
