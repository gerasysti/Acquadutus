inherited frmVerInconsistCalcMes: TfrmVerInconsistCalcMes
  Left = 22
  Top = 102
  Caption = 'frmVerInconsistCalcMes'
  ClientHeight = 612
  ClientWidth = 900
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitLeft = 22
  ExplicitTop = 102
  ExplicitWidth = 916
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  object gb1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextColor = clBlue
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 0
    Height = 80
    Width = 900
    object cxLabel7: TcxLabel
      Left = 16
      Top = 17
      AutoSize = False
      Caption = 'Unidade Gestora:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 147
      AnchorX = 163
    end
    object cxLabel8: TcxLabel
      Left = 16
      Top = 49
      AutoSize = False
      Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 17
      Width = 147
      AnchorX = 163
    end
    object btnAplicar: TBitBtn
      Left = 830
      Top = 43
      Width = 66
      Height = 30
      Caption = '&Ok'
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
      TabOrder = 4
      OnClick = btnAplicarClick
    end
    inline fmeUnidGestora1: TfmeUnidGestora
      Left = 165
      Top = 13
      Width = 724
      Height = 27
      TabOrder = 0
      ExplicitLeft = 165
      ExplicitTop = 13
      ExplicitWidth = 724
      ExplicitHeight = 27
      inherited edId: TcxMaskEdit
        OnExit = fmeUnidGestora1edIdExit
      end
      inherited edDescricao: TcxTextEdit
        ExplicitWidth = 425
        Width = 425
      end
      inherited edCNPJ: TcxTextEdit
        Left = 514
        ExplicitLeft = 514
        ExplicitWidth = 141
        Width = 141
      end
    end
    inline frmeMultiSubUnidOrcam1: TfrmeMultiSubUnidOrcam
      Left = 164
      Top = 45
      Width = 665
      Height = 28
      TabOrder = 1
      ExplicitLeft = 164
      ExplicitTop = 45
      ExplicitWidth = 665
      inherited sbS_U_Os: TSpeedButton
        Left = 630
        OnClick = frmeMultiSubUnidOrcam1sbS_U_OsClick
        ExplicitLeft = 630
      end
      inherited edS_U_Os: TcxTextEdit
        Left = 0
        ExplicitLeft = 0
        ExplicitWidth = 630
        Width = 630
      end
    end
  end
  object Panel: TPanel
    Left = 0
    Top = 573
    Width = 900
    Height = 39
    Align = alClient
    Alignment = taLeftJustify
    AutoSize = True
    BevelKind = bkTile
    BevelOuter = bvNone
    Color = 10454867
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object btnSair: TcxButton
      Tag = 4
      Left = 810
      Top = 3
      Width = 86
      Height = 30
      Caption = '   &Sair'
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000004020209643E3EC36F4242E03F2525810F08081D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000101
        01020000000000000000150D0D23CDA3A3FFC39696FF8F5C5CFF7F4D4DFB5A34
        34B1241616490100000200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000323232815F60
        60F95C5C5CEA4D4E4ED43F4141C7CDA7A7FFC59898FF9F6C6CFFA16E6EFF9562
        62FF845151FF673C3CDE3B2020790B0707170000000000000000000000000000
        00000000000000000000000000000000000000000000000000005A5A5AE0807F
        80FF706E6FFFAEA5ACFFB0ABB2FFD9B4B6FFC69999FFA06D6DFFA16E6EFFA26F
        6FFFA37070FF9E6B6BFF8B5757FF694141F8201D1D7800000000000000000000
        0000000000000000000000000000000000000000000000000000656565F18785
        86FF5C6E62FF2BB651FF38B55BFFCDB6ACFFC69B9AFFA47070FFA47171FFA370
        70FFA37070FFA37070FFA47171FF9D6666FF3A3A3AEA00000000000000000000
        000000000000000000000000000000000000028404E500000000666666F18C8A
        8CFF5B6C5FFF16A538FF0FA234FFC9B6A9FFC99D9DFFA57272FFA67373FFA673
        73FFA57272FFA47171FFA47171FF9E6767FF3D3D3DEB00000000000000000000
        000000000000000000000000000000000000078F0EF9028504E6B1B1B1F88E8C
        8EFF5C6B5DFF0F9227FF089023FFCBB3A9FFCB9EA0FFA97576FFA97575FFA674
        74FFA87474FFA87575FFA77474FF9E6767FF404141E800000000000000000000
        0000000000000000000000000000000000000E9219F932B557FF139615FEC5C4
        C5FF596A5BFF078116FF007F13FFCEB4AAFFCCA0A2FFAB7777FFA87575FFA171
        71FFA77474FFA87777FFA97676FFA16A6AFF444545E60000000000000000047B
        09F30D8C1AFB0C8D17FB0D8F18FC0D9017FD129A20FE4DE585FF2FB14FFF1699
        18FFA7AFA7FF006800FF006400FFCDB1A7FFCEA3A3FFAB8282FF908989FF9379
        79FFA47272FFAA7777FFAB7878FFA36C6CFF484848E600000000000000001B8E
        2BF741DA79FF41D776FF44D879FF47DB7CFF48D97AFF4EE982FF50E486FF32B2
        50FF149916FFB5EEDFFF6EDBBFFFDBBFBDFFCDA1A2FFC6BCBCFFDADFDFFFB4AD
        ADFFAC7979FFAE7A7AFFAD7A7AFFA66F6FFF4B4C4CE600000000000000001F90
        2EF948E17FFF42DC76FF45DF79FF4AE47DFF4CE780FF4FE982FF54EF88FF58E9
        8CFF37B757FF1AA01FFFDBFFFFFFE4C4C4FFD0A6A6FFC4A5A5FFD4D2D2FFB89D
        9DFFB07C7CFFAF7C7CFFAF7C7CFFA87171FF4E4F4FE400000000000000001F91
        2BFB56E588FF3EDD73FF43E178FF47E57CFF4DE980FF53EC86FF57F08BFF62FE
        9BFF3CC75AFF29A82DFFF1FFFFFFE7C3C3FFD1A9A9FFB37E7EFFB37D7DFFB37F
        7FFFB38080FFB17E7EFFB17E7EFFAA7373FF505151E300000000000000002398
        35FA8CF8B6FF7FF1A8FF85F5AFFF8AF7B2FF8DF6B3FF63F494FF62FC99FF43DD
        66FF209F23FFFFFFFFFFFFFFFFFFEAC3C4FFD3ABABFFB68383FFB78484FFB683
        83FFB58282FFB48181FFB38080FFAC7474FF555656E300000000000000000480
        09E50C9614F70B9613F70B9A15F80A9913F81EA42AFE6DFFA6FF43DE68FF229F
        24FFBEBDBCFFFFFDF5FFFFFAF2FFEAC3C3FFD5ACACFFB98686FFB98686FFB885
        85FFB78484FFB68383FFB58282FFAF7878FF575959E300000000000000000000
        00000000000000000000000000000000000016A11EFA49E572FE1E9C20FECDCE
        CEFF858380FFFFF7E7FFFFF4E3FFEDC4C3FFD6B0B0FFBD8888FFBA8686FFB782
        82FFB78383FFB68383FFB68383FFAF7878FF575858E100000000000000000000
        000000000000000000000000000000000000099910F9028003D9B8B8B8F8A7A7
        A8FF898481FFFFEFD8FFFFECD6FFEDC4C3FFD6B1B1FFD0A0A0FFFFE3E3FFF1CC
        CCFFE3B7B7FFD6A7A7FFC79494FFB07A7AFF595B5BDE00000000000000000000
        000000000000000000000000000000000000028004D6000000007A7A7AF1AAAA
        ABFF8A847FFFFFE8CCFFFFE5C9FFEEC5C3FFD8B2B2FFCC9E9EFFFFF3F3FFFFEA
        EAFFFFE4E4FFFFE1E1FFF1C3C3FFB07979FF5A5C5CDE00000000000000000000
        00000000000000000000000000000000000000000000000000007C7C7CF1ADAD
        AEFF8A847EFFFFE2BDFFFFDFBBFFEEC5C3FFDAB4B4FFC69999FFFDF2F2FFFFF3
        F3FFFFECECFFFFE6E6FFEABDBDFFB27B7BFF5D5E5EDE00000000000000000000
        00000000000000000000000000000000000000000000000000007E7E7EF1B0B1
        B2FF8F867DFFFFDFB2FFFFDDAEFFF3CCCAFFE2C0C0FFC38E8EFFBD8686FFBA84
        84FFC08E8EFFC99A9AFFC79696FFB68080FF5E5F5FDD00000000000000000000
        0000000000000000000000000000000000000000000000000000818181F1B5B6
        B6FF858483FF86817BFF87847CFFE8B8B8FFE7C1C2FFDBAEAEFFD7A9A9FFD0A2
        A2FFC79595FFBF8C8CFFBD8989FFBA8282FF5F5F5FD900000000000000000000
        0000000000000000000000000000000000000000000000000000818282F1CACA
        CAFFAEAEAEFFABABACFFA2A4A4FFA49F9FFFA59A9AFFA59696FFA49393FFA892
        92FFAD9595FFB09595FFB19393FFA28080FF616262D900000000000000000000
        00000000000000000000000000000000000000000000000000005F5F5FA18686
        86E1868686E3878787E5858585E5858585E8828383EA818282EA818282ED8081
        81EE7F8080EE7D8080F37A7C7CF06B6C6CDD3D3D3D8000000000000000000000
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
      OnClick = btnSairClick
    end
    object btnDetCalculo: TcxButton
      Tag = 4
      Left = 614
      Top = 3
      Width = 112
      Height = 30
      Hint = 'Detalha o C'#225'lculo do M'#234's ...'
      Caption = '   &Detalhar'
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
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnDetCalculoClick
    end
    object btnLimpar: TBitBtn
      Left = 725
      Top = 3
      Width = 86
      Height = 30
      Caption = '&Limpar'
      DoubleBuffered = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnLimparClick
    end
  end
  object GridTable1: TcxGrid
    Left = 0
    Top = 80
    Width = 900
    Height = 493
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
    object GridTable1DBTableView1: TcxGridDBTableView
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
      OptionsSelection.InvertSelect = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.NavigatorOffset = 20
      OptionsView.NoDataToDisplayInfoText = ' '
      OptionsView.ScrollBars = ssVertical
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao5
      OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
      object GridTable1DBTableView1Column7: TcxGridDBColumn
        Tag = 1
        Caption = 'Id.'
        DataBinding.FieldName = 'Id'
        HeaderAlignmentHorz = taRightJustify
        SortIndex = 0
        SortOrder = soAscending
        Width = 62
      end
      object GridTable1DBTableView1Column8: TcxGridDBColumn
        Tag = 1
        Caption = 'Sub-Unid. Or'#231'ament. (C. de Custos)'
        DataBinding.FieldName = 'Descricao'
        Width = 424
      end
      object GridTable1DBTableView1Column4: TcxGridDBColumn
        Tag = 1
        Caption = 'Avisos '
        DataBinding.FieldName = 'QtdAvisos'
        HeaderAlignmentHorz = taRightJustify
        Width = 124
      end
      object GridTable1DBTableView1Column1: TcxGridDBColumn
        Caption = 'Erros '
        DataBinding.FieldName = 'QtdErros'
        HeaderAlignmentHorz = taRightJustify
        Width = 109
      end
      object GridTable1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Dif. de Totais'
        DataBinding.FieldName = 'DifTotais'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Width = 89
      end
      object GridTable1DBTableView1Column2: TcxGridDBColumn
        Tag = 1
        DataBinding.FieldName = 'Detalhar'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Width = 69
      end
    end
    object GridTable1Level1: TcxGridLevel
      GridView = GridTable1DBTableView1
    end
  end
  object sdsNada: TSQLDataSet
    SchemaName = 'sysdba'
    GetMetadata = False
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    Left = 104
    Top = 224
  end
  object dspSUO: TDataSetProvider
    DataSet = qrySUO
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 233
    Top = 262
  end
  object cdsSUO: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_SUB_UNID_ORCAM'
        DataType = ftInteger
      end
      item
        Name = 'TOT_VENCTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'TOT_DESCTO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'SAL_LIQUIDO'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspSUO'
    StoreDefs = True
    Left = 256
    Top = 280
    object cdsSUOID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object cdsSUOTOT_VENCTO: TFMTBCDField
      FieldName = 'TOT_VENCTO'
      Precision = 18
      Size = 2
    end
    object cdsSUOTOT_DESCTO: TFMTBCDField
      FieldName = 'TOT_DESCTO'
      Precision = 18
      Size = 2
    end
    object cdsSUOSAL_LIQUIDO: TFMTBCDField
      FieldName = 'SAL_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object cdsSUODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = mTbDetSUO
    Left = 388
    Top = 309
  end
  object qrySUO: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pParcela'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiSUO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   d.id_sub_unid_orcam, sum(d.tot_vencto) as tot_vencto,'
      
        '   sum(d.tot_desconto) as tot_descto, sum(d.sal_liquido) as sal_' +
        'liquido,'
      '   d1.descricao'
      'from'
      '   base_calc_mes_servidor d,'
      '   sub_unid_orcament d1'
      'where (d.ano_mes = :pAnoMes) and'
      '      (d.parcela = :pParcela) and'
      
        '      (position('#39';'#39'||trim(cast(d.id_sub_unid_orcam as varchar(20' +
        '48)))||'#39';'#39
      '                    in :pMultiSUO) > 0) and'
      '      (d1.id = d.id_sub_unid_orcam)'
      'group by'
      '   d.id_sub_unid_orcam, d1.descricao'
      'order by'
      '   d.id_sub_unid_orcam')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 216
    Top = 240
    object qrySUOID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object qrySUOTOT_VENCTO: TFMTBCDField
      FieldName = 'TOT_VENCTO'
      Precision = 18
      Size = 2
    end
    object qrySUOTOT_DESCTO: TFMTBCDField
      FieldName = 'TOT_DESCTO'
      Precision = 18
      Size = 2
    end
    object qrySUOSAL_LIQUIDO: TFMTBCDField
      FieldName = 'SAL_LIQUIDO'
      Precision = 18
      Size = 2
    end
    object qrySUODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 60
    end
  end
  object qryTotEventoMes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
        Size = 7
        Value = '201105'
      end
      item
        DataType = ftString
        Name = 'pParcela'
        ParamType = ptInput
        Size = 2
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'pSUO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pTipo'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  sum(total_ativos1+total_ativos2) as total_ativos,'
      '  sum(total_demitidos1+total_demitidos2) as total_demitidos'
      'from'
      '  tot_evento_mes'
      'where'
      '  (ano_mes = :pAnoMes) and'
      '  (parcela = :pParcela) and'
      '  (id_sub_unid_orcament = :pSUO) and'
      '  (tipo_evento = :pTipo)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 352
    Top = 130
    object qryTotEventoMesTOTAL_ATIVOS: TFMTBCDField
      FieldName = 'TOTAL_ATIVOS'
      Precision = 18
      Size = 2
    end
    object qryTotEventoMesTOTAL_DEMITIDOS: TFMTBCDField
      FieldName = 'TOTAL_DEMITIDOS'
      Precision = 18
      Size = 2
    end
  end
  object mTbDetSUO: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 272
    object mTbDetSUOId: TIntegerField
      FieldName = 'Id'
    end
    object mTbDetSUODescricao: TStringField
      FieldName = 'Descricao'
      Size = 80
    end
    object mTbDetSUOQtdErros: TIntegerField
      FieldName = 'QtdErros'
    end
    object mTbDetSUOQtdAvisos: TIntegerField
      FieldName = 'QtdAvisos'
    end
    object mTbDetSUODifTotais: TStringField
      Alignment = taCenter
      FieldName = 'DifTotais'
      Size = 1
    end
    object mTbDetSUODetalhar: TStringField
      Alignment = taCenter
      FieldName = 'Detalhar'
      Size = 1
    end
  end
  object qryInconsist: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pRef'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'pMultiSUO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from inconsist_process'
      'where (referencia = :pRef) and'
      '      (tipo_process = '#39'1'#39') and'
      
        '      (position('#39';'#39'||trim(cast(id_sub_unid_orcam as varchar(2048' +
        ')))||'#39';'#39
      '              in :pMultiSUO) > 0)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 232
    Top = 408
    object qryInconsistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryInconsistTIPO_PROCESS: TStringField
      FieldName = 'TIPO_PROCESS'
      FixedChar = True
      Size = 1
    end
    object qryInconsistID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
    end
    object qryInconsistREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qryInconsistTIPO_INCONSIST: TStringField
      FieldName = 'TIPO_INCONSIST'
      FixedChar = True
      Size = 1
    end
    object qryInconsistID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object qryInconsistDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object qryInconsistDESCR_TIPO_INCONSIST: TStringField
      FieldName = 'DESCR_TIPO_INCONSIST'
      FixedChar = True
      Size = 5
    end
  end
  object provInconsist: TDataSetProvider
    DataSet = qryInconsist
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 249
    Top = 430
  end
  object cdsInconsist: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PROCESS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_SERVIDOR'
        DataType = ftInteger
      end
      item
        Name = 'REFERENCIA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'TIPO_INCONSIST'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_SUB_UNID_ORCAM'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 120
      end
      item
        Name = 'DESCR_TIPO_INCONSIST'
        Attributes = [faFixed]
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provInconsist'
    StoreDefs = True
    AfterInsert = cdsInconsistAfterInsert
    Left = 272
    Top = 448
    object cdsInconsistID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsInconsistTIPO_PROCESS: TStringField
      FieldName = 'TIPO_PROCESS'
      FixedChar = True
      Size = 1
    end
    object cdsInconsistID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
    end
    object cdsInconsistREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsInconsistTIPO_INCONSIST: TStringField
      FieldName = 'TIPO_INCONSIST'
      FixedChar = True
      Size = 1
    end
    object cdsInconsistID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
    end
    object cdsInconsistDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 120
    end
    object cdsInconsistDESCR_TIPO_INCONSIST: TStringField
      FieldName = 'DESCR_TIPO_INCONSIST'
      FixedChar = True
      Size = 5
    end
  end
  object qryDelInconsist: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pRef'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pSUO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from inconsist_process'
      'where (referencia = :pRef) and'
      '      (id_sub_unid_orcam = :pSUO) and'
      '      (id_servidor is null)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 416
    Top = 178
  end
end
