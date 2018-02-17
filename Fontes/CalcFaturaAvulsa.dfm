inherited frmCalcFaturaAvulsa: TfrmCalcFaturaAvulsa
  Left = 169
  Top = 134
  Caption = 'frmCalcFaturaAvulsa'
  ClientHeight = 585
  ClientWidth = 862
  FormStyle = fsNormal
  ShowHint = True
  Visible = False
  OnDestroy = FormDestroy
  ExplicitWidth = 868
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlButtons: TPanel
    Width = 862
    ExplicitWidth = 862
    inherited btnNovo: TcxButton
      Left = 0
      ExplicitLeft = 0
    end
    inherited btnAlterar: TcxButton
      Left = 59
      ExplicitLeft = 59
    end
    inherited btnExcluir: TcxButton
      Left = 119
      ExplicitLeft = 119
    end
    inherited btnFechar: TcxButton
      Left = 802
      ExplicitLeft = 802
    end
    inherited btnPesquisar: TcxButton
      Left = 178
      OnClick = btnPesquisarClick
      ExplicitLeft = 178
    end
    inherited btnImprimir: TcxButton
      Left = 733
      ExplicitLeft = 733
    end
  end
  inherited Panel1: TPanel
    Top = 552
    Width = 862
    Height = 33
    Caption = ' Modo Consulta ...'
    ExplicitTop = 552
    ExplicitWidth = 862
    ExplicitHeight = 33
    inherited btnGravar: TcxButton
      Left = 660
      Top = 2
      Height = 30
      ExplicitLeft = 660
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    inherited btnCancelar: TcxButton
      Left = 755
      Top = 2
      Height = 30
      Cancel = False
      ExplicitLeft = 755
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    inherited Nav1: TcxDBNavigator
      Height = 27
      ExplicitHeight = 27
    end
  end
  inherited PanelClient: TPanel
    Width = 862
    Height = 492
    ExplicitWidth = 862
    ExplicitHeight = 492
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
    object gb1: TcxGroupBox
      Left = 3
      Top = -2
      ParentFont = False
      Style.TextColor = clBlue
      Style.TextStyle = [fsBold]
      TabOrder = 0
      Height = 174
      Width = 841
      object LabelId: TLabel
        Left = 13
        Top = 13
        Width = 17
        Height = 14
        Caption = 'Id.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object LabelNome: TLabel
        Left = 204
        Top = 13
        Width = 115
        Height = 14
        Caption = 'Nome / Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object sbFindUnidConsum: TSpeedButton
        Left = 177
        Top = 25
        Width = 26
        Height = 26
        Hint = 'Seleciona a Unid. Consumidora ...'
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
        OnClick = sbFindUnidConsumClick
      end
      object lblCPF_CNPJ: TLabel
        Left = 689
        Top = 12
        Width = 49
        Height = 14
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 106
        Top = 13
        Width = 78
        Height = 14
        Caption = 'Unid. Consum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 13
        Top = 125
        Width = 67
        Height = 14
        Caption = 'Dt. Emiss'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 281
        Top = 125
        Width = 85
        Height = 14
        Caption = 'Dt. Vencimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 602
        Top = 12
        Width = 42
        Height = 14
        Caption = 'Pessoa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 14
        Top = 55
        Width = 55
        Height = 14
        Caption = 'Categoria:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 221
        Top = 55
        Width = 170
        Height = 14
        Caption = 'Situa'#231#227'o da Unid. Consumdora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 420
        Top = 55
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
      object Label9: TLabel
        Left = 421
        Top = 125
        Width = 105
        Height = 14
        Caption = 'Situa'#231#227'o da Fatura:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 702
        Top = 125
        Width = 51
        Height = 14
        Caption = 'Dt. Pagto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 147
        Top = 125
        Width = 105
        Height = 14
        Caption = 'Dt. BC. Juros/Multa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object edID: TcxDBTextEdit
        Left = 13
        Top = 25
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.MaxLength = 7
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 0
        Height = 25
        Width = 84
      end
      object edNome: TcxDBTextEdit
        Left = 202
        Top = 25
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'NOME_PESSOA'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 2
        Height = 25
        Width = 394
      end
      object edIdUnidConsum: TcxDBTextEdit
        Left = 106
        Top = 25
        AutoSize = False
        DataBinding.DataField = 'ID_UNID_CONSUM'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.OnChange = edIdUnidConsumPropertiesChange
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 1
        OnExit = edIdUnidConsumExit
        OnKeyDown = edEnderIdLogradKeyDown
        OnKeyPress = edIdUnidConsumKeyPress
        Height = 25
        Width = 72
      end
      object edCPF_CNPJ: TcxDBTextEdit
        Left = 689
        Top = 25
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'CPF_CNPJ_FTDO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Height = 25
        Width = 142
      end
      object edDtEmissao: TcxDBDateEdit
        Left = 13
        Top = 138
        AutoSize = False
        DataBinding.DataField = 'DT_EMISSAO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.InputKind = ikMask
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 4
        OnExit = edDtEmissaoExit
        Height = 25
        Width = 120
      end
      object edDtVencto: TcxDBDateEdit
        Left = 281
        Top = 138
        AutoSize = False
        DataBinding.DataField = 'DT_VENCIMENTO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.InputKind = ikMask
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 6
        OnExit = edDtVenctoExit
        Height = 25
        Width = 120
      end
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 420
        Top = 68
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ENDER_DESCR_LOGRADOURO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 7
        Height = 25
        Width = 357
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 420
        Top = 93
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 8
        Height = 25
        Width = 213
      end
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 602
        Top = 25
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'DESCR_TIPO_PESSOA'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 9
        Height = 25
        Width = 81
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 13
        Top = 68
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'DESCR_TIPO_UNID_CONSUM'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 10
        Height = 25
        Width = 193
      end
      object cxDBTextEdit5: TcxDBTextEdit
        Left = 221
        Top = 68
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'DESCR_SITUAC_UNID_CONSUM'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 11
        Height = 25
        Width = 180
      end
      object cxDBTextEdit6: TcxDBTextEdit
        Left = 420
        Top = 138
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'DESCR_SITUACAO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 12
        Height = 25
        Width = 193
      end
      object cxDBTextEdit7: TcxDBTextEdit
        Left = 777
        Top = 68
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ENDER_NUM_LETRA'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 13
        Height = 25
        Width = 54
      end
      object cxDBTextEdit8: TcxDBTextEdit
        Left = 633
        Top = 93
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'ENDER_DESCR_DISTRITO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 14
        Height = 25
        Width = 198
      end
      object cxDBTextEdit9: TcxDBTextEdit
        Left = 702
        Top = 138
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'DT_PAGAMENTO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 15
        Height = 25
        Width = 129
      end
      object edDtBC_Juros: TcxDBDateEdit
        Left = 147
        Top = 138
        AutoSize = False
        DataBinding.DataField = 'DT_VENCIMENTO'
        DataBinding.DataSource = dsFaturaAvulsa
        ParentFont = False
        Properties.InputKind = ikMask
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 5
        OnExit = edDtVenctoExit
        Height = 25
        Width = 120
      end
    end
    object gbItens: TcxGroupBox
      Left = 3
      Top = 173
      Caption = ' '#205'tens da Fatura: '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextColor = clBlue
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Height = 301
      Width = 841
      object Label2: TLabel
        Left = 401
        Top = 277
        Width = 58
        Height = 15
        Caption = 'TOTAIS >>>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 490
        Top = 257
        Width = 65
        Height = 15
        Caption = 'Val.Principal'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 577
        Top = 257
        Width = 71
        Height = 15
        Caption = 'Juros/Multas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 680
        Top = 257
        Width = 56
        Height = 15
        Caption = 'Descontos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 751
        Top = 257
        Width = 80
        Height = 15
        Caption = 'Total da Fatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnAddItem: TBitBtn
        Tag = 1
        Left = 5
        Top = 263
        Width = 78
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
        OnClick = btnAddItemClick
      end
      object btnEditItem: TBitBtn
        Tag = 2
        Left = 82
        Top = 263
        Width = 78
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
        OnClick = btnAddItemClick
      end
      object btnDelItem: TBitBtn
        Left = 159
        Top = 263
        Width = 78
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
        OnClick = btnAddItemClick
      end
      object edTotPrincipal: TcxCurrencyEdit
        Left = 462
        Top = 274
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '  ,0.00;'
        Properties.ReadOnly = True
        Properties.OnChange = edTotPrincipalPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 5
        Height = 22
        Width = 93
      end
      object edTotDesconto: TcxCurrencyEdit
        Left = 648
        Top = 274
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '  ,0.00;'
        Properties.ReadOnly = True
        Properties.OnChange = edTotPrincipalPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 6
        Height = 22
        Width = 88
      end
      object edTotGeral: TcxCurrencyEdit
        Left = 736
        Top = 274
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '  ,0.00;'
        Properties.ReadOnly = True
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 7
        Height = 22
        Width = 95
      end
      object btnAddFatEmAberto: TBitBtn
        Left = 239
        Top = 263
        Width = 142
        Height = 30
        Caption = '&Faturas em aberto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          F6060000424DF606000000000000360000002800000018000000180000000100
          180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF6F6F6E3E3E3E4E4E4F3F3F3FD
          FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF6F6F6EAEAEAE3E3E3E2E2E2
          E5E5E5EAEAEAF0F0F0F6F6F6FCFCFCFEFEFEFEFEFEFEFEFEF4F4F4C8C8C88E8E
          8E919191C5C5C5F3F3F3FFFFFFFFFFFFFFFFFFFEFEFEF6F6F6E3E3E3C4C4C4A1
          A1A18C8C8C8A8A8A939393A0A0A0B1B1B1C3C3C3D4D4D4E0E0E0E5E5E5E2E2E2
          BCBDC28682777777776C6C6C8E8E8EE3E3E3FFFFFFFFFFFFFBFBFBE9E9E9C7C7
          C7A1948CA47453AF6634AA6535A06743956D52876F5F796E676A696872727284
          84849595958D8E930645FF4E85E6E5DACF767675888888E1E1E1FFFFFFF8F8F8
          DCDCDCAFA49DAC7047BD5703CC6600D16B00D06A00CD6700C86200BF5900B650
          00B14E06A75B2C996E54A89B990C4AFF469CFF64D7FF659DE988847FAFAFAFEF
          EFEFFBFBFBDEDDDDAF8C6EBB5C0ED37108D77103D46D00D46E00D36D00D06A00
          CF6900CE6903CC6703C66000C66711C9906D0B49FF49A2FF6FD9FF57B7FF0F5A
          FF72747BB7B7B7F2F2F2F1F0EFB87D4DCC7013E18821DD8119DB7D0FD97505D7
          7100D67000DB8323E29E55DEA161DB9E60DD9A57D19964827D803B8CE16EDDFF
          56B4FF195BFFB18480857B75A9A9A9EDEDEDD8B399D47C25E69736E3912EE38C
          25E3871DDF8110DC7600E6A04FBD9568847E787D7B777F7C78847C7891765BAD
          AAA4C0C7C2419AE91456FFB78575AB4E17896958A0A0A0EBEBEBD09F7AE49840
          EBA042E99B3BEA9734E99329E68A19EAA34F9D8B75B4A68FF5D094FBD293FBD3
          9AFCD79DC1B19B808389C4C0BB807C88C08B73B35514A53F008D68549B9B9BE8
          E8E8CC946CEBA653EFAB51EEA74AEFA140EE9D35EEA242D1A978ADA28CFCD79A
          F1D19BEFD099EECD91F0CF97FAD79FBFB0998B725BCA9668BE631BAF4900A842
          0090664E959595E6E6E6CB8C5FF3B767F3B561F2B055F2AB4BF1A844F4BB6F91
          867AF4D8A2F5DDAAF1DBAAF1DBA9F0D4A2EFD097F0CE9AFEDAA3897F76D59054
          B95300B24C00AA4400936348909090E4E4E4C98452F9C57DF5BC6DF5B862F5B1
          54F6B150F8C683817E78FFE8B5F6E5BEF7E7C0F5E2B8F3DDB1F1D6A5F0D095FD
          DAA485817DD9995FBB5500B34D00AD4700965F408A8A8AE3E3E3C77F44FDD190
          F9C378F8BC69F9B75BFBBA59FCC97F837F7AFFF3C8FCF5DCFAF3D6F7ECC8F6E7
          BDF3DCADF0D39EFED9A183807CDA995EBD5700B54F00AD4700995C38858585E0
          E0E0CA7D37FFD89AFAC77DFCC571FEBE5DEB9733E0A166A99A8DEFE6C5FFFFF0
          FEFEFCFCF6DBF7ECC7F6E1B3F3D7A4F4D8A48B7E74D8904DBE5800B75100AF49
          009B582F808080DFDFDFCB7A2FFFD694FCC679E68E2BB65E0BA8896EA0A4AAD1
          D4D7A3A29BFFFFECFFFFF7FDF9E5F9EECCF7E3B6FFE1A6A29A8DB8937BB85C19
          B04100B04400B047009E5326878787E1E1E1CE7A2AEEAA57C96A10987C63A5AE
          B7ADAFB3BABABAD3D3D3E3E3E4A4A39DE6E1C5FFFCD3FFF2C2E9D5ABA09C93BA
          BDC1DFE4E8D2DBE2CCC8C5C4A897874414A44D1CAEAEAEEEEEEEC4620DAF6928
          C1CAD3979A9DC2C2C2D3D3D3DFDFDFB8B8B8E6E6E6E6E6E6A2A3A58080837F81
          8197989BDBDBDCEDEDEDE6E6E6E6E6E6E4E5E6EBEFF2746E68997967D2D2D2FB
          FBFBEDBF9BA79885D8DADEB8B8B8D8D8D8ADADADC9C9C9B9B9B9BABABAC0C0C0
          CDCDCDCFCFCFD0D0D0D1D1D1D6D6D6ECECECE9E9E9EAEAEAEBEBEBF6F7F79C9E
          9F8C8C8CE1E1E1FEFEFEFFFFFFB9BABCF9F9FAA9A9A9AAAAAAAFAFAFB1B1B1C2
          C2C2C8C8C8BDBDBDA4A4A4E9E9E9F4F4F4DEDEDEA0A0A0EFEFEFE9E9E9E9E9E9
          EAEAEAAAAAAAABABABC8C8C8F6F6F6FFFFFFFFFFFFD9D9D9A9A9A9D7D7D7FFFF
          FFEDEDEDCDCDCDBDBDBDFAFAFAF4F4F4C1C1C1E8E8E8FFFFFFFFFFFFACACACF0
          F0F0ECECECECECECF0F0F0949494989898E3E3E3FEFEFEFFFFFFFFFFFFFFFFFF
          D6D6D6DBDBDBFFFFFFFFFFFFDDDDDDD2D2D2FFFFFFFFFFFFC1C1C1F1F1F1FFFF
          FFFFFFFFB8B8B8C5C5C5CDCDCDD5D5D5E2E2E2ACACACC2C2C2F0F0F0FFFFFFFF
          FFFFFFFFFFFFFFFFD4D4D4DEDEDEFFFFFFFFFFFFD9D9D9C2C2C2E3E3E3EEEEEE
          D3D3D39A9A9AA4A4A4B9B9B9B8B8B8A7A7A7C7C7C7D0D0D0C9C9C9D6D6D6F1F1
          F1FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEC7C7C7BABABAB7B7B7B6B6B6A2
          A2A2CACACACACACAC5C5C5C3C3C3ECECECF9F9F9FEFEFEFDFDFDFEFEFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFEFEFEFEFEFEFDFDFDFEFEFEFEFEFEFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        TabOrder = 4
        OnClick = btnAddFatEmAbertoClick
      end
      object DBGrid1: TDBGrid
        Left = 13
        Top = 20
        Width = 818
        Height = 237
        Color = 14548479
        DataSource = dsItemFatura
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Arial'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taRightJustify
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 28
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_ITEM'
            Title.Alignment = taRightJustify
            Title.Caption = #205'tem'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REF_FTDO'
            Title.Caption = 'Refer'#234'ncia'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_PRINCIPAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Val.Principal'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_MULTA'
            Title.Alignment = taRightJustify
            Title.Caption = 'Multa/Juros'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_DESCONTO'
            Title.Alignment = taRightJustify
            Title.Caption = 'Descontos'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VAL_TOTAL'
            Title.Alignment = taRightJustify
            Title.Caption = 'Val.Total'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qtd_dias_atraso'
            Title.Alignment = taRightJustify
            Title.Caption = 'Dias Atraso'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'INCIDIR_MULTA'
            Title.Alignment = taCenter
            Title.Caption = 'Incide Multa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Arial'
            Title.Font.Style = [fsBold]
            Visible = True
          end>
      end
      object edTotJuros: TcxCurrencyEdit
        Left = 555
        Top = 274
        TabStop = False
        AutoSize = False
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Properties.DisplayFormat = '  ,0.00;'
        Properties.ReadOnly = True
        Properties.OnChange = edTotPrincipalPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Arial'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 8
        Height = 22
        Width = 93
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
      end>
    BeforeCancel = nil
    BeforeDelete = nil
    AfterScroll = cds1AfterScroll
    AfterApplyUpdates = nil
    Left = 44
    Top = 24
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
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
      'select'
      '   id'
      'from'
      '   fatura_avulsa'
      'order by id')
    Left = 8
    Top = 8
    object qry1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object qryItemFatura: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pFatura'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select '
      '* '
      'from'
      'fatura_avulsa_item'
      'where '
      'id_fatura = :pFatura')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 232
    Top = 320
    object qryItemFaturaID_FATURA: TIntegerField
      FieldName = 'ID_FATURA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemFaturaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryItemFaturaID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryItemFaturaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 6
    end
    object qryItemFaturaVAL_PRINCIPAL: TFMTBCDField
      FieldName = 'VAL_PRINCIPAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object qryItemFaturaVAL_MULTA: TFMTBCDField
      FieldName = 'VAL_MULTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object qryItemFaturaVAL_DESCONTO: TFMTBCDField
      FieldName = 'VAL_DESCONTO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 2
    end
    object qryItemFaturaINCIDIR_MULTA: TStringField
      FieldName = 'INCIDIR_MULTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryItemFaturaVAL_TOTAL: TFMTBCDField
      FieldName = 'VAL_TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qryItemFaturaDESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      ProviderFlags = []
      Size = 40
    end
    object qryItemFaturaREF_FTDO: TStringField
      FieldName = 'REF_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object qryItemFaturaID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
    end
    object qryItemFaturaQTD_DIAS_ATRASO: TIntegerField
      FieldName = 'QTD_DIAS_ATRASO'
      ProviderFlags = [pfInUpdate]
    end
  end
  object cdsItemFatura: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_FATURA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_ITEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'REFERENCIA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'VAL_PRINCIPAL'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VAL_MULTA'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'VAL_DESCONTO'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'INCIDIR_MULTA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VAL_TOTAL'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'DESCR_ITEM'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'REF_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'ID_UNID_CONSUM'
        DataType = ftInteger
      end
      item
        Name = 'QTD_DIAS_ATRASO'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provItemFatura'
    StoreDefs = True
    Left = 244
    Top = 416
    object cdsItemFaturaID_FATURA: TIntegerField
      FieldName = 'ID_FATURA'
      Required = True
    end
    object cdsItemFaturaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsItemFaturaID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
      Required = True
    end
    object cdsItemFaturaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Required = True
      Size = 6
    end
    object cdsItemFaturaVAL_PRINCIPAL: TFMTBCDField
      FieldName = 'VAL_PRINCIPAL'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsItemFaturaVAL_MULTA: TFMTBCDField
      FieldName = 'VAL_MULTA'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsItemFaturaVAL_DESCONTO: TFMTBCDField
      FieldName = 'VAL_DESCONTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object cdsItemFaturaINCIDIR_MULTA: TStringField
      FieldName = 'INCIDIR_MULTA'
      FixedChar = True
      Size = 1
    end
    object cdsItemFaturaVAL_TOTAL: TFMTBCDField
      FieldName = 'VAL_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsItemFaturaDESCR_ITEM: TStringField
      FieldName = 'DESCR_ITEM'
      Size = 40
    end
    object cdsItemFaturaREF_FTDO: TStringField
      FieldName = 'REF_FTDO'
      Size = 13
    end
    object cdsItemFaturaID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
    end
    object cdsItemFaturaQTD_DIAS_ATRASO: TIntegerField
      FieldName = 'QTD_DIAS_ATRASO'
    end
  end
  object dsItemFatura: TDataSource
    AutoEdit = False
    DataSet = mTbItemFatura
    Left = 376
    Top = 288
  end
  object provItemFatura: TDataSetProvider
    DataSet = qryItemFatura
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 237
    Top = 368
  end
  object qryUnidConsum: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '   nome_pessoa, descr_tipo_pessoa, cpf_cnpj_ftdo,'
      
        '   descr_tipo_unid_consum, descr_situacao as descr_situac_unid_c' +
        'onsum,'
      '   ender_id_lograd, ender_descr_logradouro,'
      '   ender_num||ender_num_letra as ender_num_letra,'
      '   ender_id_bairro, ender_descr_bairro,'
      '   ender_id_distrito, ender_descr_distrito'
      'from'
      '   unid_consumidora'
      'where'
      '   id = :pId')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 368
    Top = 64
    object qryUnidConsumNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object qryUnidConsumDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object qryUnidConsumCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object qryUnidConsumDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object qryUnidConsumDESCR_SITUAC_UNID_CONSUM: TStringField
      FieldName = 'DESCR_SITUAC_UNID_CONSUM'
      FixedChar = True
      Size = 18
    end
    object qryUnidConsumENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryUnidConsumENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      Size = 50
    end
    object qryUnidConsumENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 12
    end
    object qryUnidConsumENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object qryUnidConsumENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object qryUnidConsumENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object qryUnidConsumENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
  end
  object mTbItemFatura: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 305
    Top = 288
    object mTbItemFaturaID: TIntegerField
      FieldName = 'ID'
    end
    object mTbItemFaturaID_ITEM: TIntegerField
      FieldName = 'ID_ITEM'
    end
    object mTbItemFaturaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object mTbItemFaturaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 6
    end
    object mTbItemFaturaVAL_PRINCIPAL: TCurrencyField
      FieldName = 'VAL_PRINCIPAL'
    end
    object mTbItemFaturaVAL_MULTA: TCurrencyField
      FieldName = 'VAL_MULTA'
    end
    object mTbItemFaturaVAL_DESCONTO: TCurrencyField
      FieldName = 'VAL_DESCONTO'
    end
    object mTbItemFaturaVAL_TOTAL: TCurrencyField
      FieldName = 'VAL_TOTAL'
    end
    object mTbItemFaturaINCIDIR_MULTA: TStringField
      FieldName = 'INCIDIR_MULTA'
      Size = 1
    end
    object mTbItemFaturaREF_FTDO: TStringField
      FieldName = 'REF_FTDO'
      Size = 7
    end
    object mTbItemFaturaqtd_dias_atraso: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'qtd_dias_atraso'
    end
  end
  object qryDelItensTarifa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pFatura'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'delete from fatura_avulsa_item where id_fatura = :pFatura')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 440
    Top = 320
  end
  object spAddItem: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_FATURA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 6
        Name = 'PE_REFERENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_VAL_PRINCIPAL'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_VAL_MULTA'
        ParamType = ptInput
      end
      item
        DataType = ftFMTBcd
        Precision = 15
        NumericScale = 2
        Name = 'PE_VAL_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Precision = 1
        Name = 'PE_INCIDIR_MULTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Precision = 4
        Name = 'PE_ID_UNID_CONSUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pe_qtd_dias_atraso'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    StoredProcName = 'SP_ADD_ITEM_FAT_AVULSA'
    Left = 449
    Top = 376
  end
  object dsFaturaAvulsa: TDataSource
    AutoEdit = False
    DataSet = cdsFaturaAvulsa
    Left = 304
    Top = 136
  end
  object qryFaturaAvulsa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
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
      '   (d.id = :pId) and'
      '   (d1.id = d.id_unid_consum)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 104
    Top = 136
    object qryFaturaAvulsaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFaturaAvulsaID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qryFaturaAvulsaDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaAvulsaDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qryFaturaAvulsaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qryFaturaAvulsaDESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      ProviderFlags = []
      FixedChar = True
      Size = 9
    end
    object qryFaturaAvulsaDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
      ProviderFlags = []
    end
    object qryFaturaAvulsaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      ProviderFlags = []
      Precision = 18
      Size = 2
    end
    object qryFaturaAvulsaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object qryFaturaAvulsaDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object qryFaturaAvulsaCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      ProviderFlags = []
      Size = 80
    end
    object qryFaturaAvulsaDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object qryFaturaAvulsaDESCR_SITUAC_UNID_CONSUM: TStringField
      FieldName = 'DESCR_SITUAC_UNID_CONSUM'
      ProviderFlags = []
      FixedChar = True
      Size = 18
    end
    object qryFaturaAvulsaENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
      ProviderFlags = []
    end
    object qryFaturaAvulsaENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      ProviderFlags = []
      Size = 50
    end
    object qryFaturaAvulsaENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      ProviderFlags = []
      Size = 12
    end
    object qryFaturaAvulsaENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
      ProviderFlags = []
    end
    object qryFaturaAvulsaENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qryFaturaAvulsaENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
      ProviderFlags = []
    end
    object qryFaturaAvulsaENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
    object qryFaturaAvulsaDT_BC_JUROS: TDateField
      FieldName = 'DT_BC_JUROS'
      ProviderFlags = [pfInUpdate]
    end
  end
  object provFaturaAvulsa: TDataSetProvider
    DataSet = qryFaturaAvulsa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 133
    Top = 120
  end
  object cdsFaturaAvulsa: TClientDataSet
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
      end
      item
        Name = 'DT_BC_JUROS'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provFaturaAvulsa'
    StoreDefs = True
    AfterOpen = cds1AfterOpen
    AfterInsert = cds1AfterInsert
    BeforeCancel = cds1BeforeCancel
    BeforeDelete = cds1BeforeDelete
    AfterApplyUpdates = cds1AfterApplyUpdates
    Left = 164
    Top = 136
    object cdsFaturaAvulsaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFaturaAvulsaID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      Required = True
      DisplayFormat = '0-0;0; '
    end
    object cdsFaturaAvulsaDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object cdsFaturaAvulsaDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
    object cdsFaturaAvulsaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsFaturaAvulsaDESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 9
    end
    object cdsFaturaAvulsaDT_PAGAMENTO: TDateField
      FieldName = 'DT_PAGAMENTO'
    end
    object cdsFaturaAvulsaVALOR_TOTAL: TFMTBCDField
      FieldName = 'VALOR_TOTAL'
      Precision = 18
      Size = 2
    end
    object cdsFaturaAvulsaNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cdsFaturaAvulsaDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cdsFaturaAvulsaCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsFaturaAvulsaDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cdsFaturaAvulsaDESCR_SITUAC_UNID_CONSUM: TStringField
      FieldName = 'DESCR_SITUAC_UNID_CONSUM'
      FixedChar = True
      Size = 18
    end
    object cdsFaturaAvulsaENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cdsFaturaAvulsaENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      Size = 50
    end
    object cdsFaturaAvulsaENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 12
    end
    object cdsFaturaAvulsaENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cdsFaturaAvulsaENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cdsFaturaAvulsaENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cdsFaturaAvulsaENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cdsFaturaAvulsaDT_BC_JUROS: TDateField
      FieldName = 'DT_BC_JUROS'
    end
  end
  object qryFatAvulsaAnter: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pUnidConsum'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select id, situacao, dt_emissao, dt_vencimento from fatura_avuls' +
        'a'
      'where (id_unid_consum = :pUnidConsum) and (situacao='#39'1'#39')')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 520
    Top = 320
    object qryFatAvulsaAnterID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryFatAvulsaAnterSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qryFatAvulsaAnterDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
    end
    object qryFatAvulsaAnterDT_VENCIMENTO: TDateField
      FieldName = 'DT_VENCIMENTO'
    end
  end
end
