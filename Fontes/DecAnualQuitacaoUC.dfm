inherited frmDecAnualQuitaUC: TfrmDecAnualQuitaUC
  Caption = 'DECLARA'#199#195'O ANUAL DE QUITA'#199#195'O DE D'#201'BITO ...'
  ClientHeight = 360
  ClientWidth = 476
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 482
  ExplicitHeight = 389
  PixelsPerInch = 96
  TextHeight = 13
  object GridTable: TcxGrid
    Left = 0
    Top = 39
    Width = 476
    Height = 281
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
    object GridTableDBTableView1: TcxGridDBTableView
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
      DataController.DataSource = dsHistFatura
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
      object GridTableDBTableView1Column7: TcxGridDBColumn
        Caption = 'M'#234's'
        DataBinding.FieldName = 'Nome_Mes'
        HeaderAlignmentHorz = taCenter
        Width = 98
      end
      object GridTableDBTableView1Column8: TcxGridDBColumn
        Caption = 'Dt.Vencimento'
        DataBinding.FieldName = 'Dt_Vencto'
        HeaderAlignmentHorz = taCenter
        Width = 131
      end
      object GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'Valor R$'
        DataBinding.FieldName = 'Valor'
        HeaderAlignmentHorz = taRightJustify
        Width = 104
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Caption = 'Dt. Pagamento'
        DataBinding.FieldName = 'Dt_Pagto'
        HeaderAlignmentHorz = taCenter
        Width = 120
      end
    end
    object GridTableLevel1: TcxGridLevel
      GridView = GridTableDBTableView1
    end
  end
  object pnRodape: TPanel
    Left = 0
    Top = 323
    Width = 476
    Height = 37
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object chkVisualiza: TcxCheckBox
      Left = 119
      Top = 5
      Caption = '&Visualizar primeiro ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      Style.IsFontAssigned = True
      TabOrder = 0
    end
    object btnImprime: TBitBtn
      Left = 291
      Top = 2
      Width = 90
      Height = 30
      Caption = '&Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      ParentFont = False
      TabOrder = 1
      OnClick = btnImprimeClick
    end
    object btnSair: TBitBtn
      Tag = 2
      Left = 381
      Top = 2
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
      ParentFont = False
      TabOrder = 2
      OnClick = btnSairClick
    end
  end
  object pnAno: TPanel
    Left = 0
    Top = 0
    Width = 476
    Height = 39
    Align = alTop
    BorderStyle = bsSingle
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 10
      Width = 77
      Height = 13
      Caption = 'Ref. ao Ano de:'
    end
    object edAno: TcxSpinEdit
      Left = 88
      Top = 4
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.MinValue = 2012.000000000000000000
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold]
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      Style.IsFontAssigned = True
      TabOrder = 0
      Value = 2012
      Height = 27
      Width = 68
    end
    object btnOk: TBitBtn
      Left = 289
      Top = 4
      Width = 90
      Height = 27
      Caption = '&Aplicar '
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
      OnClick = btnOkClick
    end
    object btnLimpar: TBitBtn
      Left = 379
      Top = 4
      Width = 90
      Height = 27
      Caption = '&Limpar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnLimparClick
    end
  end
  object dsHistFatura: TDataSource
    AutoEdit = False
    DataSet = mTbHistFatura
    Left = 184
    Top = 192
  end
  object qryHistFatura: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAno'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pUC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pUC2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from sp_dec_anual_quitacao(:pAno,'#39'0'#39','#39'0'#39',:pUC)'
      'where r_id_unid_consum = :pUC2'
      '')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 72
    Top = 104
    object qryHistFaturaR_VIA_EMITIDA: TStringField
      FieldName = 'R_VIA_EMITIDA'
      FixedChar = True
      Size = 1
    end
    object qryHistFaturaR_DT_VENCTO_01: TDateField
      FieldName = 'R_DT_VENCTO_01'
    end
    object qryHistFaturaR_VALOR_01: TFMTBCDField
      FieldName = 'R_VALOR_01'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_01: TDateField
      FieldName = 'R_DT_PAGTO_01'
    end
    object qryHistFaturaR_DT_VENCTO_02: TDateField
      FieldName = 'R_DT_VENCTO_02'
    end
    object qryHistFaturaR_VALOR_02: TFMTBCDField
      FieldName = 'R_VALOR_02'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_02: TDateField
      FieldName = 'R_DT_PAGTO_02'
    end
    object qryHistFaturaR_DT_VENCTO_03: TDateField
      FieldName = 'R_DT_VENCTO_03'
    end
    object qryHistFaturaR_VALOR_03: TFMTBCDField
      FieldName = 'R_VALOR_03'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_03: TDateField
      FieldName = 'R_DT_PAGTO_03'
    end
    object qryHistFaturaR_DT_VENCTO_04: TDateField
      FieldName = 'R_DT_VENCTO_04'
    end
    object qryHistFaturaR_VALOR_04: TFMTBCDField
      FieldName = 'R_VALOR_04'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_04: TDateField
      FieldName = 'R_DT_PAGTO_04'
    end
    object qryHistFaturaR_DT_VENCTO_05: TDateField
      FieldName = 'R_DT_VENCTO_05'
    end
    object qryHistFaturaR_VALOR_05: TFMTBCDField
      FieldName = 'R_VALOR_05'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_05: TDateField
      FieldName = 'R_DT_PAGTO_05'
    end
    object qryHistFaturaR_DT_VENCTO_06: TDateField
      FieldName = 'R_DT_VENCTO_06'
    end
    object qryHistFaturaR_VALOR_06: TFMTBCDField
      FieldName = 'R_VALOR_06'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_06: TDateField
      FieldName = 'R_DT_PAGTO_06'
    end
    object qryHistFaturaR_DT_VENCTO_07: TDateField
      FieldName = 'R_DT_VENCTO_07'
    end
    object qryHistFaturaR_VALOR_07: TFMTBCDField
      FieldName = 'R_VALOR_07'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_07: TDateField
      FieldName = 'R_DT_PAGTO_07'
    end
    object qryHistFaturaR_DT_VENCTO_08: TDateField
      FieldName = 'R_DT_VENCTO_08'
    end
    object qryHistFaturaR_VALOR_08: TFMTBCDField
      FieldName = 'R_VALOR_08'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_08: TDateField
      FieldName = 'R_DT_PAGTO_08'
    end
    object qryHistFaturaR_DT_VENCTO_09: TDateField
      FieldName = 'R_DT_VENCTO_09'
    end
    object qryHistFaturaR_VALOR_09: TFMTBCDField
      FieldName = 'R_VALOR_09'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_09: TDateField
      FieldName = 'R_DT_PAGTO_09'
    end
    object qryHistFaturaR_DT_VENCTO_10: TDateField
      FieldName = 'R_DT_VENCTO_10'
    end
    object qryHistFaturaR_VALOR_10: TFMTBCDField
      FieldName = 'R_VALOR_10'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_10: TDateField
      FieldName = 'R_DT_PAGTO_10'
    end
    object qryHistFaturaR_DT_VENCTO_11: TDateField
      FieldName = 'R_DT_VENCTO_11'
    end
    object qryHistFaturaR_VALOR_11: TFMTBCDField
      FieldName = 'R_VALOR_11'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_11: TDateField
      FieldName = 'R_DT_PAGTO_11'
    end
    object qryHistFaturaR_DT_VENCTO_12: TDateField
      FieldName = 'R_DT_VENCTO_12'
    end
    object qryHistFaturaR_VALOR_12: TFMTBCDField
      FieldName = 'R_VALOR_12'
      Precision = 18
      Size = 2
    end
    object qryHistFaturaR_DT_PAGTO_12: TDateField
      FieldName = 'R_DT_PAGTO_12'
    end
  end
  object mTbHistFatura: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 152
    object mTbHistFaturaMes: TStringField
      FieldName = 'Mes'
      Size = 2
    end
    object mTbHistFaturaNome_Mes: TStringField
      FieldName = 'Nome_Mes'
    end
    object mTbHistFaturaDt_Vencto: TDateField
      Alignment = taCenter
      FieldName = 'Dt_Vencto'
    end
    object mTbHistFaturaValor: TCurrencyField
      FieldName = 'Valor'
    end
    object mTbHistFaturaDt_Pagto: TStringField
      Alignment = taCenter
      FieldName = 'Dt_Pagto'
    end
  end
  object spAtualizaVia: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Precision = 4
        Name = 'PE_ANO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_BAIRRO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 2048
        Name = 'PE_MULTI_LOGRAD'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_UC'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    StoredProcName = 'SP_ATUALIZA_VIA_DEC_QUITACAO'
    Left = 72
    Top = 240
  end
end
