inherited frmCadFavorecido: TfrmCadFavorecido
  Left = 253
  Top = 194
  Caption = 'frmCadFavorecido'
  ClientHeight = 451
  ClientWidth = 820
  ShowHint = True
  ExplicitWidth = 836
  ExplicitHeight = 490
  PixelsPerInch = 96
  TextHeight = 14
  inherited pButtons: TPanel
    Width = 820
    ExplicitWidth = 961
    inherited btnNovo: TcxButton
      Left = 256
      ExplicitLeft = 256
    end
    inherited btnAlterar: TcxButton
      Left = 315
      ExplicitLeft = 315
    end
    inherited btnExcluir: TcxButton
      Left = 374
      ExplicitLeft = 374
    end
    inherited btnFechar: TcxButton
      Left = 760
      ExplicitLeft = 901
    end
    inherited Nav1: TcxDBNavigator
      Width = 224
      ExplicitWidth = 224
    end
    inherited btnPesquisar: TcxButton
      Left = 676
      OnClick = btnPesquisarClick
      ExplicitLeft = 676
    end
    inherited btnImprimir: TcxButton
      Left = 606
      Visible = False
      ExplicitLeft = 606
    end
    object sbConsultas: TcxButton
      AlignWithMargins = True
      Left = 434
      Top = 0
      Width = 70
      Height = 60
      Hint = 'Consulta Servidores de diferentes formas ...'
      Caption = 'Consul&tas'
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFECEBE892908ABBBABAC5C5C5FEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F0EAD8A784BB672DB15616B358
        1BBB6830C47C4DCF9771DEB69BECD6C8FCF7F4FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFDFDFF5F86FF8A93A4CDC7C2888887BFBFBFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDF5F0DBA278B4520CBC5600CA6400CE6800CD67
        00C96300C25C00BC5600B65000B04A00AD4706C3652CD28C61E2B89EF7E6DDFF
        FFFFFCFCFF5F88FF2A76FF4BADFFE0E6E4CFCBC7B7B7B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEECC0A0B85C18BF5901D16B00D46E00D26C00D06A00CF69
        00CF6900CE6800CE6800CC6600C96300C76100BD5700B54F00AE4800A94706D7
        A3885373E62E79FF56B4FF68D5FF5BBDFFAEAEAEA09E99FFFFFFFFFFFFFFFFFF
        FFFFFFFCF3ECD1834CBA5503D4730DD9770AD67104D46E00D46E00D36D00D36D
        00D26C00D06A00CF6900CD6700CB6500C86200C66000C25C00C36514D7A27A4C
        64D72F7BFF59B7FF6CD6FF5FC0FF3B8FFF4171FDD5D3CFFFFFFFFFFFFFFFFFFF
        F9E8DBBD6322C7670EDF871FDD811ADB7D14DA7A0ED97607D77200D67000D670
        00D56F00D36D00D26C00D06A00CE6800CC6600C96300CA6D16D4A8814656CA30
        7AFC5AB9FF6CD6FF5EBFFF3E8EFF345DE8D1B2ADFCFAF8FFFFFFFFFFFFFDFAF8
        BF6727D3771CE39130E28C29E28923E0861EDF8417DE7E11DB7603DA7400D973
        00D97608E0933EE5A763E7AF73E5AD71E0A160D88B3EE1B1829691875B72974A
        ABF46DD9FF5DBEFF3D8DFF385DE6C49788A74913DFBEACFFFFFFFFFFFFEDD3C0
        C46714E99D3FE69536E59432E5932DE48E27E48B20E28719DF7B05DD7700E28C
        29E5B47CAB9275857B72817E7F807D7C7B7166A1866BD3A87D8A847DE2D9D279
        A4B54DB1F83A8BFF3B60E4C89C87AD4D10A13B00DAB29CFFFFFFFFFFFFE7C6AE
        CA701DEBA248E99F41E99C3EE99937E89630E89228E69022E27F07E7993CD1AC
        82797979B4A58CE8C58FF3C784F3C685F3CC97BFB09B4D5258909092EEEDECEA
        E1D84B70AA3656D4CD9E85B2510EAA4400A23C00D5A88FFFFFFFFFFFFFE5BEA0
        CF7925EFAA53ECA54DEDA346ECA140EC9D39EB9930EA952BE9952CD5B0858181
        82E4C088F6C880EFC584EDC386EEC88FF1D19CF2C482F0CB9464676C9A9B9C94
        918F9F998BCFA588BA5B13AF4900AA4400A43E00D09E82FFFFFFFFFFFFE1B693
        D4812FF2B360F0AE56F0AC50F0A74AEFA442EF9F38EFA036EEBD7F868481E5C2
        8CF3CA88EDC788EDC788ECC687EBC47FEBBE7BEFCC97F2CF94F0CA964D5159C6
        9E79D0A883C56D23B65000B14B00AC4600A53F00CC9575FFFFFFFFFFFFDEAC85
        D98B3AF5B96CF2B460F3B159F2AE52F2AB49F2A53EF4B763C3A882B0A189F8D1
        90F0CD92EFCF93EECD93EECC90EDC98CECC687EBC07CEFCD9BF3C985B2A998B0
        9071D1843DBE5800B85200B34D00AF4900A74100C88C69FFFFFFFFFFFFDAA277
        E09547F8C175F5BB6BF5B861F5B359F5B04EF6AB43F9C884A19587DDC391F3D4
        99F1D49DF1D49DF1D49DF1D29AEFD197EDCB8FECC688EBC37FF4D4A6EECB9986
        7769D89455BF5900BA5400B44E00AF4900A84200C3825CFFFFFFFFFFFFD79A69
        E4A053FAC680F7C073F7BB68F7B75FF7B453F7AF4AFBCE8F8F8B87F6D79AF6DE
        AAF4DDABF5E0B3F4DEAEF4DAA5F1D59DEFD197EDCB8FECC584EFCE9BF4CC8E86
        807BDDA168C05A00BB5500B54F00B04A00A94300BF784FFFFFFFFFFFFFD4905B
        EAAC63FACB87F8C479F8BE6DF8BA63FAB757FCB54FFDCC86938F8CFBDCA2F8E6
        BBFAE9C4FAE7BEF7E4B8F5DFB0F4D9A7F1D59DEFD096EDC98BEFCE97F3CA8F88
        827CDEA269C15B00BC5600B65000B14B00AA4400B96E42FFFFFFFFFFFFD0884D
        EEB56FFBCE8DF9C57CFAC170FCC067FFC05EED9E37E5A360A99C93DBC59AFBEC
        CDF9ECCFF8F2E0F9EBD1F6E3BBF3DFB4F1D5A3EFD099ECCA8EF2CF96E5C79590
        8072DD9956C35D00BC5600B75100B14B00AC4600B56535FFFFFFFFFFFFCE7D40
        F0B971FBCB89FBC77EFEC775E99A3BD06400BD691CBFA68FA9AAACAFA897FCF9
        DDFCFBEFFCFBF9FCFBF0F8EECFF3E7C6F0DBAEEED3A0ECCB94F6CF91A99D8DB0
        8E78C66E2FBA5100BC5400B95300B24C00AC4600B15B28FFFFFFFFFFFFCC7432
        F4BC71FECE87EEA751CF6500CC7D3170635799A1A9C1C4C7AEAEAFA4A3A6E5DE
        C0FDFDE8FDFDF4FAF9E9F8F3DAF5EBC9F2E2B9EFDAADF3DAA2E3CC9C7C8086DB
        CEC7BB8C6CB16B3CA94708A63700AA3F00A94200AC511BFFFFFFFFFFFFC76C24
        F5B96CD57616C8680F6F5945DCE4ED808284B8B8B8D6D6D68F8F8FEBEBEB9D9D
        9CE8E1C7FDFDE7FDFBE7F9F3D9F8ECC7F7E4B7FBE1ACE3CBA0818386D2D3D4D9
        DCDED4D9DCD2D9DDD3DBE1D2D0CF876D5CA14908A7470FFFFFFFFFFFFFC66716
        C96100A27043D4DDE465686BECECEC959595CFCFCFEDEDED979797E4E4E4EEEE
        EEA2A2A6B2AD9DE1D7B7FDEEC2FCE9BBE1CFA9AFA79683878AD7D7D8EBEBEBE4
        E4E4E1E1E1E1E1E1DEDFDFE4E6E6929A9E93582ED28A5FFFFFFFFFFFFFC86F21
        C96200919CA8E0E1E27D7D7DF5F5F5AAAAAAE5E5E5FFFFFFC9C9C9969696ABAB
        ABD1D1D1C1C1C3A1A2A68A8B8F86888E999CA0BBBCBDF0F0F0EFEFEFEAEAEAEA
        EAEAEAEAEAE9E9E9E9E9E9EEEEEEB2B3B3BABDBFFFFFFFFFFFFFFFFFFFFBF3EC
        E1C9B2A5A9AEE7E7E7999999FFFFFFC2C2C29494949B9B9BADADADBFBFBFC1C1
        C1C1C1C1CBCBCBD3D3D3D5D5D5CACACABDBDBDB5B5B5B0B0B0E0E0E0EAEAEAE9
        E9E9E9E9E9E9E9E9EAEAEAF2F2F2C9C9C9BDBDBDFFFFFFFFFFFFFFFFFFFFFFFF
        E4E5E7B6B7B8F7F7F7919191969696AAAAAABBBBBBC1C1C1C2C2C2CCCCCCC0C0
        C0B3B3B3A7A7A7959595D6D6D6FCFCFCEFEFEFDFDFDFA6A6A6CCCCCCECECECE9
        E9E9E9E9E9E9E9E9E9E9E9ADADADACACACC0C0C0FFFFFFFFFFFFFFFFFFFFFFFF
        E0E0E09E9E9EB6B6B6D6D6D6F2F2F2D9D9D9C8C8C8B8B8B8999999D1D1D1F4F4
        F4F0F0F0F0F0F0B6B6B6D6D6D6FFFFFFFFFFFFFFFFFFC1C1C1C4C4C4ECECECE9
        E9E9E9E9E9E9E9E9EAEAEA9A9A9ADEDEDEEEEEEEFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFEEFEFEFCCCCCCB0B0B0FFFFFFFCFCFCF7F7F7F7F7F7ACACACE2E2E2F9F9
        F9F3F3F3F5F5F5B3B3B3DBDBDBFFFFFFFFFFFFFFFFFFCECECEBEBEBEF1F1F1EC
        ECECECECECECECECF0F0F0A2A2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDEDEDEBFBFBFFFFFFFFEFEFEFEFEFEFFFFFF9E9E9EF5F5F5FFFF
        FFFDFDFDFFFFFFB1B1B1E5E5E5FFFFFFFFFFFFFFFFFFDBDBDBA3A3A3C4C4C4CA
        CACAD2D2D2D9D9D9E8E8E89E9E9EFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD5D5D5CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF929292FFFFFFFFFF
        FFFFFFFFFFFFFFBCBCBC979797A6A6A6B1B1B1BDBDBDC2C2C29E9E9EA0A0A0BB
        BBBBC0C0C0B9B9B9B0B0B0B0B0B0FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCFCFCFA9A9A9C1C1C1CDCDCDDCDCDCF0F0F09797979393939999
        99A2A2A2ADADADBBBBBBACACACC3C3C3E6E6E6DFDFDFD6D6D6CFCFCFEDEDEDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F9F9E2E2E2D4D4D4C8C8C8BBBBBBADADADA5A5A5BABABAF8F8
        F8EFEFEFE8E8E8DEDEDED7D7D7F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OptionsImage.Layout = blGlyphTop
      OptionsImage.Spacing = 1
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = sbConsultasClick
    end
  end
  inherited Panel1: TPanel
    Top = 418
    Width = 820
    Height = 33
    ExplicitTop = 416
    ExplicitWidth = 820
    ExplicitHeight = 33
    inherited btnGravar: TcxButton
      Left = 627
      Height = 30
      TabOrder = 1
      ExplicitLeft = 627
      ExplicitHeight = 30
    end
    inherited btnCancelar: TcxButton
      Left = 722
      Height = 30
      Cancel = False
      TabOrder = 2
      ExplicitLeft = 722
      ExplicitHeight = 30
    end
    object btnEditPessoa: TBitBtn
      Tag = 2
      Left = 299
      Top = 1
      Width = 169
      Height = 30
      Caption = '&Altera Dados da Pessoa'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
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
      TabOrder = 0
      OnClick = btnEditPessoaClick
    end
    object btnHistFaturas: TBitBtn
      Tag = 2
      Left = 468
      Top = 1
      Width = 146
      Height = 30
      Caption = '&Hist'#243'rico de Pagtos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFF3EDEEEEF4ECFED4B0DC8F3FE0964CE19D56E4A160E4A669E7AC73
        EAB37FEAB987ECBF91EFC59BF1CBA5F2D0AEF4D6B8F6DBC1F7E1CBF8E5D3FAEA
        DBFBF0E4FDF7F0FFFFFFFFFFFF908D7B50E27CFFC896D67A1DD87D23D87E24D8
        7E24D97F26D98027DA8129DA832BDB842FDC8630DD8833DE8A36DF8C39E08E3C
        E1903FE29242E39446E5964AEDB47BFFFFFFFFFFFF8C9A8054E881FFD0A5D375
        16D67B1FD67B20D77C21D77D22D87E24D97F26D98128DA822BDE842DDA852FDC
        8732DE8A36DF8C3AE08E3DE29140E39344E49547ECB378FFFFFFFFFFFF8D9C83
        55EB83FFD0A5D2700ED6781AD57617D37818D6781BD77C21D87D23D87F26E180
        28C68A2ED98128DC8932DE8934DF8B38E08D3BE18F3EE29242E39445EAAE74FF
        FFFFFFFFFF8F9F885EF18AFFB682ED974BD18B33F49E59FFC38FE59B50D5791B
        D7791DE47A22B08D2C0FBD4189A646F39F58DD8C39DE8A36DF8C39E08E3DE291
        40E39344E9AE72FFFFFFFFFFFF94A48C4DF0820AA72003B02A03B12A1DB33495
        BD66FFC18BFFB57BF390458694290CBA3B1AB73D16BA40F4B678F2B274DB842E
        DF8B38E08D3BE1903FE29243EBAB6FFFFFFFFFFFFF97A68E51F2850CA71E12AB
        2610AB2512AE2B08AD250CAE2A6FB04A2EB2390DB5341AB3371CB53A16B73B6C
        C05FFFD3A8E8A055DE8833E08D3AE18F3EE29242E9AB6CFFFFFFFFFFFF98A992
        53F58807A31705A51836C75C34CF6410A92112AC280EAD2A13AF2E17B03119B2
        341BB4371CB53B0CB739E0CA8EFFCC9BDD8832DF8C39E08E3DE29141E9A96AFF
        FFFFFFFFFF99AD9651F986009F0BC8DABFD2E7D336DC6F28C14A0FA82213AC27
        14AD2A16AF2E18B13119B2341BB43818B63B41BC4EFFD1A8F4AF6EE08A36E08E
        3BE29140E7A766FFFFFFFFFFFF9DB09A7AF7A1D9DDCEFEEBF1FFE9F183E4A148
        E77E14AD2811AA2313AC2715AE2B16AF2F18B1301AB3351CB53A15B73B58BA53
        D7BA77FFB37AEB9B50E28F3DE7A665FFFFFFFFFFFFB49EA1FFF4FAFBEDF0F7ED
        EDFAEDEFE6D8DA55EC8846E2740AA3180FAA240AAC2011B22B29C45424BC461B
        B4361DB63C19B83F10BB4255BD55D1B36BFBA361EAA968FFFFFFFFFFFFAC9F9F
        D8D0D0D3CCCCD5CCCCD6CECEC6B8BCB6D7BC51FB8D25C8470CA81D75B579E3D0
        D648D5773BD76F1EB73B1CB53B1FB83F21BA431EBD4715C04B75CA77FFF5EDFF
        FFFFFFFFFFB2A5A5FFF9F9F9F0F0F9F0F0FBF2F2E2D9D9FDE9F0B8F3C7C3F0CD
        FDEBF0E1D0D6FDEAEEE4E4DC3CDF7346DF771AB4371EB73E20B94222BB4725BF
        4B5DDE81FFFFFFFFFFFFFFFFFFB1A4A4FFF8F8F7EFEFF7EFEFF8F0F0E0D8D8F3
        E9E9FBECF0FBEAEDF8ECEDD9CECEF6E8E9FBE5EBC1E4C645EE804AE5791AB338
        20B94122BB4624BD4A5FDC81FFFFFFFFFFFFFFFFFFB2A7A7FFFAFAF8F1F1F8F1
        F1F9F3F3E2DBDBF4EAEAF7EEEEF5EDEDF8EDEDDAD0D0F6EAEAF3E7E7FEE4EBA3
        ECB645E67D28CC5B21C34C1FBD4520BC475BDC7CFFFFFFFFFFFFFFFFFFB2A8A8
        FFFFFFFCF6F6FBF5F5FDF6F6E4DEDEF4EDEDF8F0F0F6EDEDF5EDEDD9CFCFF2E7
        E7EFE3E3EFE0E1F5E0E5D9C3C9CCDAC998D6A769D98D4ED3778EE6A6FFFFFFFF
        FFFFFFFFFFB0A8A8DCD9D9D8D2D2D7D4D4DBD6D6C7C2C2D7D2D2DBD5D5DCD5D5
        DFD8D8C6BEBEE1D7D7E0D5D5E0D6D6E3D6D6CBBEBFE7D6D8EAD4D7F1D7DDD2AD
        B4E6D5D7FFFFFFFFFFFFFFFFFFB3ACACFFFFFFFDF9F9FDF9F9FEFAFAE6E1E1F8
        F0F0FAF3F3FAF2F2FAF1F1DED5D5F8EEEEF7EAEAF5E9E9F5E8E8D9CCCCF3E4E4
        F0E2E2F4E4E4CEB6B6E4D6D6FFFFFFFFFFFFFFFFFFB2ACACFFFFFFFBF8F8FBF7
        F7FCF8F8E6E1E1F5EFEFF9F1F1F7F0F0F8F0F0DCD4D4F8EEEEF4E9E9F3E7E7F4
        E7E7D8CCCCF2E5E5F0E0E0F2E2E2CDB5B5E4D8D8FFFFFFFFFFFFFFFFFFB3ADAD
        FFFFFFFCFBFBFBF8F8FEF9F9E8E2E2F5F0F0F9F3F3F7F0F0FAF2F2DDD6D6F8EE
        EEF6EBEBF5EBEBF6EBEBDBCECEF6E7E7F3E3E3F5E7E7CFB7B7E4D8D8FFFFFFFF
        FFFFFFFFFFB3B0B0FFFFFFFFFFFFFFFFFFFFFFFFEEEBEBFDF9F9FFFBFBFDF6F6
        FBF3F3DDD4D4F2E7E7ECE0E0E8DADAE4D6D6CCBCBCDCCBCBD7C4C4D6C1C1BC9F
        9FE4D9D9FFFFFFFFFFFFFFFFFFBAB8B8B4B1B1B1ACACB0ABABB1ABABB1A9A9B1
        A8A8B4A9A9B5AAAAB7ACACBDB2B2C1B5B5C5B6B6C8BABACBBEBECFC3C3D2C5C5
        D6C9C9D9CECEDFD2D2F7F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 3
      Visible = False
      OnClick = btnHistFaturasClick
    end
  end
  inherited PanelClient: TPanel
    Width = 820
    Height = 358
    ExplicitTop = 63
    ExplicitWidth = 820
    ExplicitHeight = 440
    inherited lblPadrao: TcxLabel
      Left = 20
      Top = 52
      Caption = 'Label Padr'#227'o'
      ExplicitLeft = 20
      ExplicitTop = 52
      ExplicitWidth = 71
      Width = 71
      AnchorY = 61
    end
    object gbUnidConsum: TcxGroupBox
      Left = 3
      Top = 171
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16512
      Style.Font.Height = -11
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      Style.TextColor = clMaroon
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 177
      Width = 809
      object Label48: TLabel
        Left = 209
        Top = 14
        Width = 183
        Height = 14
        Caption = 'Servi'#231'o Prestado / Produto Fornecido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 10
        Top = 14
        Width = 95
        Height = 14
        Caption = 'Tipo de Favorecido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 9
        Top = 56
        Width = 63
        Height = 14
        Caption = 'Observa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 711
        Top = 14
        Width = 89
        Height = 14
        Caption = 'Valor Mensal (R$):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edServicoPrestado: TcxDBTextEdit
        Tag = 1
        Left = 209
        Top = 28
        AutoSize = False
        DataBinding.DataField = 'SERVICO_PRESTADO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 1
        Height = 22
        Width = 480
      end
      object cbTipoFavorecido: TcxComboBox
        Left = 10
        Top = 28
        AutoSize = False
        ParentFont = False
        Properties.Items.Strings = (
          'PRESTADOR DE SERVI'#199'OS'
          'FORNECEDOR'
          'OUTROS')
        Properties.ReadOnly = False
        Properties.OnCloseUp = cbTipoConsumoPropertiesCloseUp
        Properties.OnPopup = cbTipoConsumoPropertiesPopup
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 0
        Text = 'PRESTADOR DE SERVI'#199'OS'
        Height = 22
        Width = 172
      end
      object edValMensal: TcxDBCurrencyEdit
        Left = 699
        Top = 28
        AutoSize = False
        DataBinding.DataField = 'VALOR_MENSAL'
        DataBinding.DataSource = ds1
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 2
        Height = 22
        Width = 101
      end
      object memObservacao: TcxDBMemo
        AlignWithMargins = True
        Left = 9
        Top = 70
        Hint = 
          ' Aten'#231#227'o: Pressione [Ctrl + Enter] para ir para pr'#243'xima linha ..' +
          '.'
        DataBinding.DataField = 'OBSERVACAO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ScrollBars = ssVertical
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = [fsBold]
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 96
        Width = 791
      end
    end
    object gb1: TcxGroupBox
      Left = 3
      Top = 1
      ParentFont = False
      Style.TextColor = clBlue
      Style.TextStyle = [fsBold]
      TabOrder = 0
      Height = 168
      Width = 809
      object LabelId: TLabel
        Left = 10
        Top = 15
        Width = 36
        Height = 14
        Caption = 'C'#243'digo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object LabelNome: TLabel
        Left = 319
        Top = 15
        Width = 102
        Height = 14
        Caption = 'Nome / Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object sbFindPessoa: TSpeedButton
        Left = 142
        Top = 28
        Width = 26
        Height = 24
        Hint = 'Seleciona a Pessoa F'#237'sica/Jur'#237'dica'
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
        OnClick = sbFindPessoaClick
      end
      object lblCPF_CNPJ: TLabel
        Left = 9
        Top = 61
        Width = 50
        Height = 14
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 91
        Top = 15
        Width = 68
        Height = 14
        Caption = 'Id. da Pessoa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 319
        Top = 61
        Width = 59
        Height = 14
        Caption = 'Cidade - UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 116
        Width = 58
        Height = 14
        Caption = 'Telefone(s):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label52: TLabel
        Left = 319
        Top = 116
        Width = 27
        Height = 14
        Caption = 'eMail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 767
        Top = 61
        Width = 16
        Height = 14
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object edID: TcxDBTextEdit
        Left = 9
        Top = 29
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 7
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 0
        Height = 22
        Width = 67
      end
      object edNome: TcxDBTextEdit
        Left = 319
        Top = 29
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'NOME_PESSOA'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 2
        Height = 22
        Width = 481
      end
      object edIdPessoa: TcxDBTextEdit
        Left = 90
        Top = 29
        AutoSize = False
        DataBinding.DataField = 'ID_PESSOA'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 1
        OnExit = edIdPessoaExit
        OnKeyDown = edIdPessoaKeyDown
        OnKeyPress = edIdPessoaKeyPress
        Height = 22
        Width = 53
      end
      object edDescrTipoPessoa: TcxDBTextEdit
        Left = 167
        Top = 29
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'DESCR_TIPO_PESSOA'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Height = 22
        Width = 135
      end
      object edCPF_CNPJ: TcxDBTextEdit
        Left = 9
        Top = 75
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'CPF_CNPJ_FTDO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Height = 22
        Width = 213
      end
      object edCidade: TcxDBTextEdit
        Left = 319
        Top = 75
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ENDER_CIDADE'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 5
        Height = 22
        Width = 350
      end
      object edUF: TcxDBTextEdit
        Left = 767
        Top = 75
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ENDER_UF'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 6
        Height = 22
        Width = 33
      end
      object edTelefone: TcxDBTextEdit
        Left = 9
        Top = 131
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'TELEFONE'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 7
        Height = 22
        Width = 293
      end
      object edE_Mail: TcxDBTextEdit
        Left = 319
        Top = 131
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'E_MAIL'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 8
        Height = 22
        Width = 481
      end
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 29
    Top = 16
  end
  inherited cds1: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
      end
      item
        Name = 'TIPO_FAVOREC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SERVICO_PRESTADO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'VALOR_MENSAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'CPF_CNPJ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
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
        Name = 'E_MAIL'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'DESCR_TIPO_FAVOREC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 21
      end
      item
        Name = 'CPF_CNPJ_FTDO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'DESCR_TIPO_PESSOA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end>
    AfterOpen = cds1AfterOpen
    AfterInsert = cds1AfterInsert
    BeforePost = cds1BeforePost
    AfterScroll = cds1AfterScroll
    Left = 44
    Top = 24
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1ID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object cds1TIPO_FAVOREC: TStringField
      FieldName = 'TIPO_FAVOREC'
      FixedChar = True
      Size = 1
    end
    object cds1SERVICO_PRESTADO: TStringField
      FieldName = 'SERVICO_PRESTADO'
      Size = 60
    end
    object cds1VALOR_MENSAL: TFMTBCDField
      FieldName = 'VALOR_MENSAL'
      Precision = 18
      Size = 2
    end
    object cds1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cds1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 14
    end
    object cds1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cds1ENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
    end
    object cds1ENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object cds1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 40
    end
    object cds1E_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 60
    end
    object cds1DESCR_TIPO_FAVOREC: TStringField
      FieldName = 'DESCR_TIPO_FAVOREC'
      FixedChar = True
      Size = 21
    end
    object cds1CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cds1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
  end
  inherited ds1: TDataSource
    AutoEdit = False
    Left = 56
    Top = 40
  end
  inherited qryUsuarioPermissaoTabela: TSQLQuery
    Left = 480
    Top = 32
  end
  inherited qryPermissaoEspecial: TSQLQuery
    Left = 488
    Top = 56
  end
  inherited qry1: TSQLQuery
    MaxBlobSize = 1
    SQL.Strings = (
      'SELECT * FROM FAVORECIDO ORDER BY ID')
    Left = 8
    Top = 8
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1ID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate]
    end
    object qry1TIPO_FAVOREC: TStringField
      FieldName = 'TIPO_FAVOREC'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1SERVICO_PRESTADO: TStringField
      FieldName = 'SERVICO_PRESTADO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1VALOR_MENSAL: TFMTBCDField
      FieldName = 'VALOR_MENSAL'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object qry1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 240
    end
    object qry1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
    object qry1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object qry1ENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      ProviderFlags = []
      FixedChar = True
      Size = 2
    end
    object qry1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = []
      Size = 40
    end
    object qry1E_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = []
      Size = 60
    end
    object qry1DESCR_TIPO_FAVOREC: TStringField
      FieldName = 'DESCR_TIPO_FAVOREC'
      ProviderFlags = []
      FixedChar = True
      Size = 21
    end
    object qry1CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      ProviderFlags = []
      Size = 80
    end
    object qry1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
  end
end
