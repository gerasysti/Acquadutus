inherited frmMudarPessoaUC: TfrmMudarPessoaUC
  Caption = 'MUDAR PROPRIET'#193'RIO (PESSOA) DA UNIDADE CONSUMIDORA ..'
  ClientHeight = 431
  ClientWidth = 738
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 744
  ExplicitHeight = 460
  PixelsPerInch = 96
  TextHeight = 13
  object LabelId: TLabel
    Left = 10
    Top = 50
    Width = 164
    Height = 15
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'C'#243'digo da UC:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 434
    Top = 139
    Width = 164
    Height = 15
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'N'#186' da Liga'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 139
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CPF/CNPJ da Pessoa Atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 10
    Top = 173
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Propriet'#225'rio (Pessoa) Atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 433
    Top = 50
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data da Liga'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 10
    Top = 208
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Id. da Pessoa a Transferir:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object sbFindPessoaNova: TSpeedButton
    Left = 230
    Top = 202
    Width = 26
    Height = 27
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
    OnClick = sbFindPessoaNovaClick
  end
  object Label7: TLabel
    Left = 10
    Top = 242
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'CPF/CNPJ da Pessoa a Transferir:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 433
    Top = 242
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data da Transfer'#234'ncia:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 10
    Top = 17
    Width = 164
    Height = 15
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Id. Lan'#231'amnento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 10
    Top = 83
    Width = 164
    Height = 15
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Endere'#231'o da UC:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 10
    Top = 311
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Observa'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 10
    Top = 277
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Requerimento N'#186':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 434
    Top = 277
    Width = 164
    Height = 14
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Data do Requerimento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 398
    Width = 738
    Height = 33
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 14548479
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 19
    object btnGravar: TcxButton
      Tag = 4
      Left = 529
      Top = 2
      Width = 96
      Height = 30
      Hint = ' Gravar > [Enter] Confirma ...'
      Caption = '&Gravar'
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
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
      OptionsImage.Margin = 2
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnGravarClick
    end
    object btnCancelar: TcxButton
      Tag = 5
      Left = 625
      Top = 2
      Width = 96
      Height = 30
      Hint = ' Cancelar > [Enter] Confirma ...'
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfOffice11
      OptionsImage.Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        2000000000000009000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000052200073883000D7862800DB6D3F27E68E9396F395989DF39DA1
        A6F3C5C7CAF75F69CBFD1121BEFF0915B6FF0912B2FF0911ADFF080EA8FF080B
        A1FE09089CFE09079AFE090999FE0A099BFD45439AD600000000000000000000
        00006F2E0088AF4B00FEBE691FFFC1691DFF966942FFB1B6B9FFD19555FFD6A0
        63FFF1DABEFF273AD1FF1233E3FF001DDBFF0A31E7FF0021DCFF0018D0FF0015
        C8FF0019CAFF1632D2FF0007B5FF0007A9FF09089BFE00000000000000007435
        0091BB5600FEC27024FFC57628FFC97526FF9E754BFF9DA1A5FFC56B17FFC676
        25FFEAC8A1FF2B41D9FF123AF0FF0025F3FFC4CDE7FF9AAEF1FF0019E1FF0015
        DAFFA3B9FAFFEEF6FFFF0E2DD5FF0006B1FF08079CFF0000000000000000C05B
        00F7C06D20FFC17026FFC16F24FFC47022FFA0774FFFA7ABB2FFB85A0FFFBC68
        20FFE6C3A0FF2F48DEFF1541FCFFB8C1E3FFECE9DFFFF8F4E7FF91A7F5FF88A2
        F9FFFFFFFBFFFFFFFFFFEFF8FFFF1A34D1FF08069BFF0000000000000000C761
        00F7C06B20FFBE6D22FFBF6C22FFC26D1FFFA47851FFBBC1C5FFAB4602FFB35A
        18FFE4BE9EFF3450E4FF1546FFFF92A0E4FFF1EEE2FFECECE9FFF8F6F0FFFFFE
        F7FFFFFFFEFFFFFFFFFFC0D2FFFF051ECBFF0807A0FF0000000000000000C863
        00F7BE691DFFBC6820FFBD6920FFBF691DFFA67A54FFCDD2D5FF9B2A00FFAC49
        06FFE3BB99FF3C58E6FF245BFFFF002CFFFF8EA0EAFFF2F0EAFFF1F1F1FFF9F9
        F9FFFFFFFFFFAABEFFFF0019DCFF0012C5FF080CA6FF0000000000000000C863
        00F7BC651DFFBA651EFFBB661EFFBD661BFFA57B57FFE6F0F7FFC9C1BEFFBCB5
        B4FFDCDAD8FF4260EBFF2F6CFFFF003AFFFF5E78EAFFF4F3EAFFF1F1F1FFF9F9
        F9FFFFFFFFFF86A0FDFF0014DEFF0017CBFF0810ADFF0000000000000000C863
        00F7B9621AFFB8621CFFB8631DFFBA641BFFAE6B33FFA67A55FFA97D58FFAB7F
        59FFDAC8B8FF4768EDFF2C6AFBFF6576D8FFF4F0E2FFEBEAE8FFF8F5EFFFFEFC
        F7FFFFFFFDFFFFFFFFFF92ACFFFF001AD5FF0810B0FF0000000000000000C863
        00F7B95F18FFB65F1AFFB65F1BFFB7601BFFB9621BFFBB6319FFBC6519FFBD65
        1BFFE4C0A0FF4E6EF0FF325AE0FFD1CCD2FFEAE9E1FFF7F4E6FF8A9AECFF98A9
        F3FFFFFFF9FFFFFFFEFFFEFFFFFF0F37E7FF0813B5FF0000000000000000C864
        00F7B65D18FFB45C18FFB45C18FFB55A13FFB65C13FFB75D14FFB85F15FFB961
        16FFE2BD9EFF5374F3FF4592FFFF0A3DDFFFD4D0D7FF9098DBFF0034FBFF002A
        FDFFA4B1F3FFF0F3FAFF0533F5FF0019D8FF0815BBFF0000000000000000C864
        00F7B45A15FFB25815FFB1652BFFAE8B70FFAE886BFFAF886CFFAF8A6BFFAF89
        6BFFDDCDC0FF5779F6FF7CB8FFFF3488FFFF2D56DFFF1D59F6FF2262FFFF1A53
        FFFF073CFEFF1641F7FF0731EEFF0B2BDEFF1122C4FF0000000000000000C964
        00F7B25712FFAF5311FFAF6C3CFFC8D2D8FFDEE2E4FFDDE1E3FFDEE2E5FFDFE3
        E6FFE8EBEDFF6D89F7FF597CF9FF5878F7FF5274F6FF4C6CF1FF4865EEFF415E
        EAFF3B56E9FF334DE2FF3047DAFF2D42D3FF635CB3FE0000000000000000C965
        00F7B05310FFAD500FFFAD6837FFD1D7DBFFEAEAEAFFECECECFFE3E3E3FFE0E0
        E0FFE1E1E1FFEAEAEAFFF0F0F0FFF0F0F0FFEFEFEFFFEEEEEEFFF0F0F0FFEFEF
        EFFFE3E4E7FFDFC8B0FFE8C4A0FFE6C39FFFB47053FA0000000000000000C965
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
      OptionsImage.Margin = 2
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCancelarClick
    end
  end
  object edIdUC: TcxTextEdit
    Left = 178
    Top = 46
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 1
    OnExit = edIdUCExit
    OnKeyPress = edIdUCKeyPress
    Height = 23
    Width = 121
  end
  object edNumLigacao: TcxTextEdit
    Left = 600
    Top = 135
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 4
    OnExit = edNumLigacaoExit
    OnKeyPress = edIdUCKeyPress
    Height = 23
    Width = 121
  end
  object edCPF_CNPJ_PessoaAtual: TcxMaskEdit
    Left = 178
    Top = 135
    AutoSize = False
    ParentFont = False
    Properties.AlwaysShowBlanksAndLiterals = True
    Properties.EditMask = '999.999.999-99;0; '
    Properties.MaxLength = 0
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 3
    Text = '           '
    OnExit = edCPF_CNPJ_PessoaAtualExit
    Height = 23
    Width = 180
  end
  object edDtLigacao: TcxDateEdit
    Left = 600
    Top = 46
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.InputKind = ikMask
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    Style.TextColor = clBlue
    TabOrder = 2
    Height = 23
    Width = 121
  end
  object edCPF_CNPJ_PessoaNova: TcxMaskEdit
    Left = 178
    Top = 238
    AutoSize = False
    ParentFont = False
    Properties.AlwaysShowBlanksAndLiterals = True
    Properties.EditMask = '999.999.999-99;0; '
    Properties.MaxLength = 0
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 14
    Text = '           '
    OnExit = edCPF_CNPJ_PessoaNovaExit
    Height = 23
    Width = 180
  end
  object edDtTransf: TcxDateEdit
    Left = 600
    Top = 238
    AutoSize = False
    ParentFont = False
    Properties.InputKind = ikMask
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    Style.TextColor = clBlue
    TabOrder = 15
    Height = 23
    Width = 121
  end
  object edEnderDescrLograd: TcxDBTextEdit
    Left = 178
    Top = 79
    TabStop = False
    AutoSize = False
    DataBinding.DataField = 'ENDER_DESCR_LOGRAD'
    DataBinding.DataSource = dsUC
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 5
    Height = 23
    Width = 486
  end
  object edEnderNum: TcxDBTextEdit
    Left = 664
    Top = 79
    TabStop = False
    AutoSize = False
    DataBinding.DataField = 'ENDER_UC_NUM_LETRA'
    DataBinding.DataSource = dsUC
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 6
    Height = 23
    Width = 57
  end
  object edEnderDescrBairro: TcxDBTextEdit
    Left = 178
    Top = 101
    TabStop = False
    AutoSize = False
    DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
    DataBinding.DataSource = dsUC
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 7
    Height = 23
    Width = 207
  end
  object edEnderComplemen: TcxDBTextEdit
    Left = 385
    Top = 101
    TabStop = False
    AutoSize = False
    DataBinding.DataField = 'ENDER_COMPLEMENTO'
    DataBinding.DataSource = dsUC
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 8
    Height = 23
    Width = 198
  end
  object edEnderDescrDistrito: TcxDBTextEdit
    Left = 583
    Top = 101
    TabStop = False
    AutoSize = False
    DataBinding.DataField = 'ENDER_DESCR_DISTRITO'
    DataBinding.DataSource = dsUC
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 9
    Height = 23
    Width = 138
  end
  object edIdPessoaAtual: TcxTextEdit
    Left = 178
    Top = 169
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 10
    Height = 23
    Width = 78
  end
  object edNomePessoaAtual: TcxTextEdit
    Left = 255
    Top = 169
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 11
    Height = 23
    Width = 466
  end
  object edIdPessoaNova: TcxTextEdit
    Left = 178
    Top = 204
    AutoSize = False
    ParentFont = False
    Properties.OnChange = edIdPessoaNovaPropertiesChange
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 12
    OnExit = edIdPessoaNovaExit
    OnKeyDown = edIdPessoaNovaKeyDown
    OnKeyPress = edIdUCKeyPress
    Height = 23
    Width = 53
  end
  object edObservacao: TcxMemo
    Left = 178
    Top = 308
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 18
    Height = 77
    Width = 543
  end
  object edId: TcxTextEdit
    Left = 178
    Top = 13
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 0
    Height = 23
    Width = 78
  end
  object edNomePessoaNova: TcxTextEdit
    Left = 255
    Top = 204
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 13
    Height = 23
    Width = 466
  end
  object edDtRequer: TcxDateEdit
    Left = 600
    Top = 273
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.InputKind = ikMask
    Properties.ReadOnly = True
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    Style.TextColor = clBlue
    TabOrder = 17
    Height = 23
    Width = 121
  end
  object edNumRequer: TcxTextEdit
    Left = 178
    Top = 273
    AutoSize = False
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 16
    OnExit = edNumRequerExit
    OnKeyPress = edIdUCKeyPress
    Height = 23
    Width = 121
  end
  object qryUnidComsumidora: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      
        '   id_pessoa, nome_pessoa, dt_ligacao, ender_descr_lograd, ender' +
        '_uc_num_letra,'
      '   ender_complemento, ender_id_lograd,'
      '   ender_descr_bairro, ender_descr_distrito,'
      '   num_LIGACAO, cpf_cnpj_ftdo, descr_tipo_unid_consum, '
      '   tipo_pessoa, cpf_cnpj'
      'FROM'
      '   UNID_CONSUMIDORA'
      'WHERE'
      '   ID = :pUnidConsum')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 336
    Top = 28
    object qryUnidComsumidoraNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object qryUnidComsumidoraENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object qryUnidComsumidoraENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      FixedChar = True
      Size = 1
    end
    object qryUnidComsumidoraENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object qryUnidComsumidoraENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object qryUnidComsumidoraNUM_LIGACAO: TStringField
      FieldName = 'NUM_LIGACAO'
      FixedChar = True
      Size = 10
    end
    object qryUnidComsumidoraENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object qryUnidComsumidoraENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryUnidComsumidoraCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object qryUnidComsumidoraDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object qryUnidComsumidoraID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qryUnidComsumidoraDT_LIGACAO: TDateField
      FieldName = 'DT_LIGACAO'
    end
    object qryUnidComsumidoraTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryUnidComsumidoraCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 14
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    Left = 424
    Top = 7
  end
  object dsUC: TDataSource
    AutoEdit = False
    DataSet = qryUnidComsumidora
    Left = 480
    Top = 7
  end
  object qryDeb: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pUC'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select ano_mes, val_total from calc_fatura_mensal'
      'where (id_unid_consum = :pUC) and'
      '  (Situacao = '#39'1'#39')'
      'order by'
      '   ano_mes')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 424
    Top = 44
  end
  object provDeb: TDataSetProvider
    DataSet = qryDeb
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 441
    Top = 56
  end
  object cdsDeb: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ANO_MES'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VAL_TOTAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provDeb'
    StoreDefs = True
    Left = 464
    Top = 71
    object cdsDebANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsDebVAL_TOTAL: TFMTBCDField
      FieldName = 'VAL_TOTAL'
      Precision = 18
      Size = 2
    end
  end
end
