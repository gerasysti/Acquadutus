inherited frmEncerraReabreMovim: TfrmEncerraReabreMovim
  Left = 160
  Top = 141
  Caption = 'ENCERRAR / REABRIR MOVIMENTO DO M'#202'S ...'
  ClientHeight = 559
  ClientWidth = 667
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitLeft = 160
  ExplicitTop = 141
  ExplicitWidth = 683
  ExplicitHeight = 597
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 667
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 105
      Height = 13
      Caption = 'Referente ao Ano de:'
    end
    object Label2: TLabel
      Left = 224
      Top = 10
      Width = 39
      Height = 13
      Caption = 'Parcela:'
    end
    object spEdAno: TcxSpinEdit
      Left = 123
      Top = 5
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.DisplayFormat = ',0'
      Properties.EditFormat = ',0'
      Properties.LargeIncrement = 4.000000000000000000
      Properties.MaxValue = 2099.000000000000000000
      Properties.MinValue = 1994.000000000000000000
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -20
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Value = 1994
      Height = 31
      Width = 92
    end
    object btnOk: TcxButton
      Tag = 16
      Left = 488
      Top = 4
      Width = 72
      Height = 31
      Caption = 'Ok'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF99D2992E952E208C
        2061AE61EFF8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6BC76B058F0811A92412AD
        2607930F329732ECF7ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6AC86A05910715B02C13AD2811AB
        2614B027089411319831EDF8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE6ACC6A05950917B23015AE2C13AC2812AB
        2712AB2513AF26089511329932ECF7ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFE6ACD6A05980919B43517B03015AE2C14AD2B14AD
        2913AC2712AB2513AF28089511329732ECF7ECFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFE6BCF6B049B091CB53819B23417B03016AF2F15AE2D15AE
        2B14AD2913AC2812AB2613AF28089511329932EDF8EDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFE6BD26B079F0B1EB73D1BB43819B23418B13217B03117B02F14AF
        2B12AE2A14AD2A13AC2812AB2613AF29089512329932EDF8EDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFEFE6BD56B05A00A1FB9421DB63C1BB4381AB33619B23418B13316B1313DBE
        5134BA490EAC2612AD2813AC2914AD2715B029089512339933EDF8EDFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
        6ED87108A51121BA451FB83F1DB63C1CB53A1BB4381AB3381BB5371FB53A20AD
        3275D28575CF8313AE2A11AD2914AD2913AC2714B02B089512339933EDF8EDFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85D98B
        12AB202ABE4F20BA421FB8401EB73E1DB63C1CB53C1CB53C1CB5380396043DAF
        3D01940164CD7878D28710AE2913AE2914AD2A13AC2814B02A089612339933ED
        F8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF18A926
        5FD07C1FBC4421BA4420B9421FB8401EB73E1EB7401EB73E049A059BDF9BFFFF
        FF72CF7201940166CD7976D08510AE2912AE2A14AD2A13AC2814B02C08961233
        9933EDF8EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1DAC2B
        6CD5873DC45D1DBA4221BA4420B94220B9441FB840039D059BE19BFFFFFFFFFF
        FFFFFFFF6ECE6E00940066CD7A76D28512AE2B12AE2A14AD2B15AE2916B12C09
        9612339933EEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7CD086
        20B53892E0A730C25319B83E1FBA4520B94205A00A96E196FFFFFFFFFFFFFFFF
        FFFFFFFFFEFEFE6CCE6C00960066CD7975D18511AE2912AE2C15AE2B14AD2915
        B12D099613349B34EEF9EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FCF5
        40BC4F25B73F8ADDA283DC9B4CCA6B08A61297E499FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFEFEFE6BCE6B01950166CE7A75D08511AE2B14AF2C15AE2C14
        AD2A15B12D099613349B34EEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F3FDF46ED77C0EAE2010AE270EA91C9CE5A0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFEFE68C66800930166CE7A73D08511AE2A14AF2D15
        AE2C14AD2A15B12E099613349B34EEF7EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE8FBEAC3EFC7E4F9E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFD66BF6600930167CE7B73D08511AF2A14
        AF2D15AE2D14AD2B17B32E099713349B34EEF7EEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFD65BE6501930167CF7B73CF850F
        AF2A14AF2E16AF2D15AE2B17B22E099713359D35EEF7EEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFD62C06200960269CF7D72
        CF8311AF2C16B02E16AF2D15AE2D17B22F0996125EAF5EFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFC60BF6000940266
        CF7B72CF8311AF2B16B02F16AF2E15AF2D17B12E1A8C1AFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFD5FBC5F01
        950366CF7D71CF810EAF2A12AF2C16B02F14AB28339B33FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFD5D
        BB5D00960368CF7D7CD58D48C25E1DB73A058E0A9FCC9FFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB
        FDFB5AB85A00970644C35E34BB4C0395085BAF5BFEFFFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCFEFC78C3781B981B2A9F2A91CE91FDFEFDFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Layout = blGlyphRight
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      PopupAlignment = paCenter
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
    end
    object cbParcela: TcxComboBox
      Left = 264
      Top = 6
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.Items.Strings = (
        'NORMAL'
        'AUX'#205'LIO ALIMENTA'#199#195'O')
      Properties.ReadOnly = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Calibri'
      Style.Font.Style = [fsBold]
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'NORMAL'
      Width = 213
    end
    object btnLimpar: TBitBtn
      Left = 591
      Top = 4
      Width = 73
      Height = 31
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
      TabOrder = 3
      OnClick = btnLimparClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 667
    Height = 484
    Align = alTop
    TabOrder = 1
    object edMes1: TcxTextEdit
      Tag = 1
      Left = 8
      Top = 30
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 16
      Text = 'JANEIRO'
      Height = 25
      Width = 200
    end
    object edMes2: TcxTextEdit
      Tag = 2
      Left = 8
      Top = 57
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 17
      Text = 'FEVEREIRO'
      Height = 25
      Width = 200
    end
    object edMes3: TcxTextEdit
      Tag = 3
      Left = 8
      Top = 85
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 18
      Text = 'MAR'#199'O'
      Height = 25
      Width = 200
    end
    object edMes4: TcxTextEdit
      Tag = 4
      Left = 8
      Top = 113
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 19
      Text = 'ABRIL'
      Height = 25
      Width = 200
    end
    object edMes5: TcxTextEdit
      Tag = 5
      Left = 8
      Top = 140
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 20
      Text = 'MAIO'
      Height = 25
      Width = 200
    end
    object edMes6: TcxTextEdit
      Tag = 6
      Left = 8
      Top = 168
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 21
      Text = 'JUNHO'
      Height = 25
      Width = 200
    end
    object cxTextEdit17: TcxTextEdit
      Left = 8
      Top = 4
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 22
      Text = 'M E S E S'
      Height = 24
      Width = 200
    end
    object cxTextEdit18: TcxTextEdit
      Left = 255
      Top = 4
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 23
      Text = 'INICIALIZADO'
      Height = 24
      Width = 97
    end
    object cxTextEdit19: TcxTextEdit
      Left = 359
      Top = 4
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 24
      Text = 'CALCULADO'
      Height = 24
      Width = 97
    end
    object cxTextEdit20: TcxTextEdit
      Left = 464
      Top = 4
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 25
      Text = 'SITUA'#199#195'O'
      Height = 24
      Width = 97
    end
    object edIniMes1: TcxTextEdit
      Tag = 1
      Left = 255
      Top = 30
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 26
      Text = 'JANEIRO'
      Height = 25
      Width = 97
    end
    object edIniMes2: TcxTextEdit
      Tag = 2
      Left = 255
      Top = 57
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 27
      Text = 'FEVEREIRO'
      Height = 25
      Width = 97
    end
    object edIniMes3: TcxTextEdit
      Tag = 3
      Left = 255
      Top = 85
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 28
      Text = 'MAR'#199'O'
      Height = 25
      Width = 97
    end
    object edIniMes4: TcxTextEdit
      Tag = 4
      Left = 255
      Top = 113
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 29
      Text = 'ABRIL'
      Height = 25
      Width = 97
    end
    object edIniMes5: TcxTextEdit
      Tag = 5
      Left = 255
      Top = 140
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 30
      Text = 'MAIO'
      Height = 25
      Width = 97
    end
    object edIniMes6: TcxTextEdit
      Tag = 6
      Left = 255
      Top = 168
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 31
      Text = 'JUNHO'
      Height = 25
      Width = 97
    end
    object edCalcMes1: TcxTextEdit
      Tag = 1
      Left = 359
      Top = 30
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 32
      Text = 'JANEIRO'
      Height = 25
      Width = 97
    end
    object edCalcMes2: TcxTextEdit
      Tag = 2
      Left = 359
      Top = 57
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 33
      Text = 'FEVEREIRO'
      Height = 25
      Width = 97
    end
    object edCalcMes3: TcxTextEdit
      Tag = 3
      Left = 359
      Top = 85
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 34
      Text = 'MAR'#199'O'
      Height = 25
      Width = 97
    end
    object edCalcMes4: TcxTextEdit
      Tag = 4
      Left = 359
      Top = 113
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 35
      Text = 'ABRIL'
      Height = 25
      Width = 97
    end
    object edCalcMes5: TcxTextEdit
      Tag = 5
      Left = 359
      Top = 140
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 36
      Text = 'MAIO'
      Height = 25
      Width = 97
    end
    object edCalcMes6: TcxTextEdit
      Tag = 6
      Left = 359
      Top = 168
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 37
      Text = 'JUNHO'
      Height = 25
      Width = 97
    end
    object chbAbrirFechar1: TcxCheckBox
      Tag = 1
      Left = 568
      Top = 30
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 38
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object edSituac1: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 30
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 39
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac4: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 113
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 40
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac5: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 140
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 41
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac6: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 168
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 42
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac2: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 57
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 43
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac3: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 85
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 44
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object chbAbrirFechar2: TcxCheckBox
      Tag = 2
      Left = 568
      Top = 57
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 45
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar3: TcxCheckBox
      Tag = 3
      Left = 568
      Top = 85
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 46
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar4: TcxCheckBox
      Tag = 4
      Left = 568
      Top = 113
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 47
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar5: TcxCheckBox
      Tag = 5
      Left = 568
      Top = 140
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 48
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar6: TcxCheckBox
      Tag = 6
      Left = 567
      Top = 168
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 49
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object edMes7: TcxTextEdit
      Tag = 7
      Left = 8
      Top = 196
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 50
      Text = 'JULHO'
      Height = 25
      Width = 200
    end
    object edMes8: TcxTextEdit
      Tag = 8
      Left = 8
      Top = 224
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 51
      Text = 'AGOSTO'
      Height = 25
      Width = 200
    end
    object edMes9: TcxTextEdit
      Tag = 9
      Left = 8
      Top = 251
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 52
      Text = 'SETEMBRO'
      Height = 25
      Width = 200
    end
    object edMes10: TcxTextEdit
      Tag = 10
      Left = 8
      Top = 279
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 53
      Text = 'OUTUBRO'
      Height = 25
      Width = 200
    end
    object edIniMes7: TcxTextEdit
      Tag = 7
      Left = 255
      Top = 196
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 54
      Text = 'JULHO'
      Height = 25
      Width = 97
    end
    object edIniMes8: TcxTextEdit
      Tag = 8
      Left = 255
      Top = 224
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 55
      Text = 'AGOSTO'
      Height = 25
      Width = 97
    end
    object edIniMes9: TcxTextEdit
      Tag = 9
      Left = 255
      Top = 251
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 56
      Text = 'SETEMBRO'
      Height = 25
      Width = 97
    end
    object edIniMes10: TcxTextEdit
      Tag = 10
      Left = 255
      Top = 279
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 57
      Text = 'OUTUBRO'
      Height = 25
      Width = 97
    end
    object edCalcMes7: TcxTextEdit
      Tag = 7
      Left = 359
      Top = 196
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 58
      Text = 'JULHO'
      Height = 25
      Width = 97
    end
    object edCalcMes8: TcxTextEdit
      Tag = 8
      Left = 359
      Top = 224
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 59
      Text = 'AGOSTO'
      Height = 25
      Width = 97
    end
    object edCalcMes9: TcxTextEdit
      Tag = 9
      Left = 359
      Top = 251
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 60
      Text = 'SETEMBRO'
      Height = 25
      Width = 97
    end
    object edCalcMes10: TcxTextEdit
      Tag = 10
      Left = 359
      Top = 279
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 61
      Text = 'OUTUBRO'
      Height = 25
      Width = 97
    end
    object edSituac7: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 196
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 62
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac8: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 224
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 63
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac9: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 251
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 64
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac10: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 279
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 65
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object chbAbrirFechar7: TcxCheckBox
      Tag = 7
      Left = 568
      Top = 196
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 66
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar8: TcxCheckBox
      Tag = 8
      Left = 568
      Top = 224
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 67
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar9: TcxCheckBox
      Tag = 9
      Left = 568
      Top = 251
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 68
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar10: TcxCheckBox
      Tag = 10
      Left = 568
      Top = 279
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 69
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object edMes11: TcxTextEdit
      Tag = 11
      Left = 8
      Top = 307
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 70
      Text = 'NOVEMBRO'
      Height = 25
      Width = 200
    end
    object edMes12: TcxTextEdit
      Tag = 12
      Left = 8
      Top = 335
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 71
      Text = 'DEZEMBRO'
      Height = 25
      Width = 200
    end
    object edMes13: TcxTextEdit
      Tag = 13
      Left = 8
      Top = 362
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 72
      Text = 'DEC. TERC. - 1'#170' PARC.'
      Height = 25
      Width = 200
    end
    object edMes14: TcxTextEdit
      Tag = 14
      Left = 8
      Top = 390
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 73
      Text = 'DEC. TERC. - 2'#170' PARC. / FINAL'
      Height = 25
      Width = 200
    end
    object edMes15: TcxTextEdit
      Tag = 15
      Left = 8
      Top = 418
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 74
      Text = 'ABONO FUNDEB'
      Height = 25
      Width = 200
    end
    object edMes16: TcxTextEdit
      Tag = 16
      Left = 8
      Top = 446
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 75
      Text = 'ABONO PASEP'
      Height = 25
      Width = 200
    end
    object edIniMes11: TcxTextEdit
      Tag = 11
      Left = 255
      Top = 307
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 76
      Text = 'NOVEMBRO'
      Height = 25
      Width = 97
    end
    object edIniMes12: TcxTextEdit
      Tag = 12
      Left = 255
      Top = 335
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 77
      Text = 'DEZEMBRO'
      Height = 25
      Width = 97
    end
    object edIniMes13: TcxTextEdit
      Tag = 13
      Left = 255
      Top = 362
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 78
      Text = 'DEC. TERC. - 1'#170' PARC.'
      Height = 25
      Width = 97
    end
    object edIniMes14: TcxTextEdit
      Tag = 14
      Left = 255
      Top = 390
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 79
      Text = 'DEC. TERC. - 2'#170' PARC. / FINAL'
      Height = 25
      Width = 97
    end
    object edIniMes15: TcxTextEdit
      Tag = 15
      Left = 255
      Top = 418
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 80
      Text = 'ABONO FUNDEB'
      Height = 25
      Width = 97
    end
    object edIniMes16: TcxTextEdit
      Tag = 16
      Left = 255
      Top = 446
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 81
      Text = 'ABONO PASEP'
      Height = 25
      Width = 97
    end
    object edCalcMes11: TcxTextEdit
      Tag = 11
      Left = 359
      Top = 307
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 82
      Text = 'NOVEMBRO'
      Height = 25
      Width = 97
    end
    object edCalcMes12: TcxTextEdit
      Tag = 12
      Left = 359
      Top = 335
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 83
      Text = 'DEZEMBRO'
      Height = 25
      Width = 97
    end
    object edCalcMes13: TcxTextEdit
      Tag = 13
      Left = 359
      Top = 362
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 84
      Text = 'DEC. TERC. - 1'#170' PARC.'
      Height = 25
      Width = 97
    end
    object edCalcMes14: TcxTextEdit
      Tag = 14
      Left = 359
      Top = 390
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 85
      Text = 'DEC. TERC. - 2'#170' PARC. / FINAL'
      Height = 25
      Width = 97
    end
    object edCalcMes15: TcxTextEdit
      Tag = 15
      Left = 359
      Top = 418
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 86
      Text = 'ABONO FUNDEB'
      Height = 25
      Width = 97
    end
    object edCalcMes16: TcxTextEdit
      Tag = 16
      Left = 359
      Top = 446
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 87
      Text = 'ABONO PASEP'
      Height = 25
      Width = 97
    end
    object edSituac11: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 307
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 88
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac12: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 335
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 89
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac13: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 362
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 90
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac14: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 390
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 91
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac15: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 418
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 92
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object edSituac16: TcxTextEdit
      Tag = 1
      Left = 464
      Top = 446
      TabStop = False
      AutoSize = False
      ParentFont = False
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.ReadOnly = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = 16384
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 93
      Text = 'ENCERRADO'
      Height = 25
      Width = 97
    end
    object chbAbrirFechar11: TcxCheckBox
      Tag = 11
      Left = 568
      Top = 307
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 94
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar12: TcxCheckBox
      Tag = 12
      Left = 568
      Top = 335
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 95
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar13: TcxCheckBox
      Tag = 13
      Left = 568
      Top = 362
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 96
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar14: TcxCheckBox
      Tag = 14
      Left = 568
      Top = 390
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 97
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar15: TcxCheckBox
      Tag = 15
      Left = 568
      Top = 418
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 98
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object chbAbrirFechar16: TcxCheckBox
      Tag = 16
      Left = 568
      Top = 446
      Caption = 'Abrir ...'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = [fsBold, fsItalic]
      Style.IsFontAssigned = True
      TabOrder = 99
      OnClick = chbAbrirFechar1Click
      Width = 97
    end
    object btnMes16: TcxButton
      Tag = 16
      Left = 210
      Top = 446
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 15
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes15: TcxButton
      Tag = 15
      Left = 210
      Top = 418
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes1: TcxButton
      Tag = 1
      Left = 210
      Top = 30
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes2: TcxButton
      Tag = 2
      Left = 210
      Top = 57
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes5: TcxButton
      Tag = 5
      Left = 210
      Top = 140
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes6: TcxButton
      Tag = 6
      Left = 210
      Top = 168
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes7: TcxButton
      Tag = 7
      Left = 210
      Top = 196
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes8: TcxButton
      Tag = 8
      Left = 210
      Top = 224
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes10: TcxButton
      Tag = 10
      Left = 210
      Top = 279
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes11: TcxButton
      Tag = 11
      Left = 210
      Top = 307
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes12: TcxButton
      Tag = 12
      Left = 210
      Top = 335
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes3: TcxButton
      Tag = 3
      Left = 210
      Top = 85
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes4: TcxButton
      Tag = 4
      Left = 210
      Top = 113
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes9: TcxButton
      Tag = 9
      Left = 210
      Top = 251
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes13: TcxButton
      Tag = 13
      Left = 210
      Top = 362
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 12
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
    object btnMes14: TcxButton
      Tag = 14
      Left = 210
      Top = 390
      Width = 28
      Height = 25
      Caption = '...'
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnMes16Click
    end
  end
  object pnMsg: TPanel
    Left = 0
    Top = 526
    Width = 667
    Height = 33
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 10454867
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 10739371
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object btnSair: TcxButton
      Tag = 5
      Left = 568
      Top = 2
      Width = 96
      Height = 30
      Caption = '   &S a i r'
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
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      ModalResult = 11
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnGravar: TcxButton
      Tag = 4
      Left = 472
      Top = 2
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
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnGravarClick
    end
  end
  object qryCtrlProcess: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMesIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesFim'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pParcela'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from ctrl_process_geral'
      'where (ano_mes >= :pAnoMesIni) and'
      '      (ano_mes <= :pAnoMesFim) and'
      '     (parcela = :pParcela)'
      'order by'
      'ano_mes')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 312
    Top = 141
    object qryCtrlProcessANO_MES: TStringField
      FieldName = 'ANO_MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object qryCtrlProcessPARCELA: TStringField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlProcessINICIALIZADO: TStringField
      FieldName = 'INICIALIZADO'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlProcessCALCULADO: TStringField
      FieldName = 'CALCULADO'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlProcessENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object cdsCtrlProcess: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCtrlProcess'
    Left = 328
    Top = 197
    object cdsCtrlProcessANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsCtrlProcessPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlProcessINICIALIZADO: TStringField
      FieldName = 'INICIALIZADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlProcessCALCULADO: TStringField
      FieldName = 'CALCULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlProcessENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object provCtrlProcess: TDataSetProvider
    DataSet = qryCtrlProcess
    Left = 328
    Top = 168
  end
  object qryCtrlSubUnidOrcam: TSQLQuery
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
      end>
    SQL.Strings = (
      'SELECT * FROM ctrl_proces_sub_und_orcam'
      'where (ano_mes = :pAnoMes) and'
      '          (parcela = :pParcela)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 384
    Top = 253
    object qryCtrlSubUnidOrcamANO_MES: TStringField
      FieldName = 'ANO_MES'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 6
    end
    object qryCtrlSubUnidOrcamPARCELA: TStringField
      FieldName = 'PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlSubUnidOrcamID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCtrlSubUnidOrcamINICIALIZADO: TStringField
      FieldName = 'INICIALIZADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlSubUnidOrcamDATA_INICIALIZ: TDateField
      FieldName = 'DATA_INICIALIZ'
      ProviderFlags = [pfInUpdate]
    end
    object qryCtrlSubUnidOrcamHORA_INICIALIZ: TTimeField
      FieldName = 'HORA_INICIALIZ'
      ProviderFlags = [pfInUpdate]
    end
    object qryCtrlSubUnidOrcamCALCULADO: TStringField
      FieldName = 'CALCULADO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlSubUnidOrcamDATA_CALC: TDateField
      FieldName = 'DATA_CALC'
      ProviderFlags = [pfInUpdate]
    end
    object qryCtrlSubUnidOrcamHORA_CALC: TTimeField
      FieldName = 'HORA_CALC'
      ProviderFlags = [pfInUpdate]
    end
    object qryCtrlSubUnidOrcamPROCESS_CONCLUIDO: TStringField
      FieldName = 'PROCESS_CONCLUIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlSubUnidOrcamENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      ProviderFlags = []
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryCtrlSubUnidOrcamDATA_ENCERRA: TDateField
      FieldName = 'DATA_ENCERRA'
      ProviderFlags = []
    end
    object qryCtrlSubUnidOrcamHORA_ENCERRA: TTimeField
      FieldName = 'HORA_ENCERRA'
      ProviderFlags = []
    end
  end
  object provCtrlSubUnidOrcam: TDataSetProvider
    DataSet = qryCtrlSubUnidOrcam
    Left = 400
    Top = 280
  end
  object cdsCtrlSubUnidOrcam: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provCtrlSubUnidOrcam'
    Left = 400
    Top = 309
    object cdsCtrlSubUnidOrcamANO_MES: TStringField
      FieldName = 'ANO_MES'
      Required = True
      FixedChar = True
      Size = 6
    end
    object cdsCtrlSubUnidOrcamPARCELA: TStringField
      FieldName = 'PARCELA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlSubUnidOrcamID_SUB_UNID_ORCAM: TIntegerField
      FieldName = 'ID_SUB_UNID_ORCAM'
      Required = True
    end
    object cdsCtrlSubUnidOrcamINICIALIZADO: TStringField
      FieldName = 'INICIALIZADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlSubUnidOrcamDATA_INICIALIZ: TDateField
      FieldName = 'DATA_INICIALIZ'
    end
    object cdsCtrlSubUnidOrcamHORA_INICIALIZ: TTimeField
      FieldName = 'HORA_INICIALIZ'
    end
    object cdsCtrlSubUnidOrcamCALCULADO: TStringField
      FieldName = 'CALCULADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlSubUnidOrcamDATA_CALC: TDateField
      FieldName = 'DATA_CALC'
    end
    object cdsCtrlSubUnidOrcamHORA_CALC: TTimeField
      FieldName = 'HORA_CALC'
    end
    object cdsCtrlSubUnidOrcamPROCESS_CONCLUIDO: TStringField
      FieldName = 'PROCESS_CONCLUIDO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlSubUnidOrcamENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsCtrlSubUnidOrcamDATA_ENCERRA: TDateField
      FieldName = 'DATA_ENCERRA'
    end
    object cdsCtrlSubUnidOrcamHORA_ENCERRA: TTimeField
      FieldName = 'HORA_ENCERRA'
    end
  end
  object qryDesativaServidor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pServidor'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'update servidor set status = '#39'3'#39
      'where'
      '(id = :pServidor) and'
      '(movim_definitiva = '#39'S'#39') and'
      '(status <> '#39'3'#39')')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 496
    Top = 213
  end
  object SQLStoredProc1: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
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
        Name = 'PE_ID_SUB_UNID_ORCAM'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    StoredProcName = 'SP_INI_MOVIM_ANO_MES'
    Left = 520
    Top = 24
  end
  object spEncerraReabreMovSUO: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
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
        DataType = ftFixedChar
        Precision = 1
        Name = 'PE_ENCERRAR'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    StoredProcName = 'SP_ENCERRA_REABRE_MOVIM_SUO'
    Left = 536
    Top = 72
  end
  object mTbMes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 385
    object mTbMesid_mes: TStringField
      FieldName = 'id_mes'
      Size = 2
    end
    object mTbMesid_parcela: TStringField
      FieldName = 'id_parcela'
      Size = 1
    end
    object mTbMesDescr_mes: TStringField
      FieldName = 'Descr_mes'
      Size = 15
    end
    object mTbMesDescr_parcela: TStringField
      FieldName = 'Descr_parcela'
    end
    object mTbMesInicializado: TStringField
      FieldName = 'Inicializado'
      Size = 1
    end
    object mTbMesCalculado: TStringField
      FieldName = 'Calculado'
      Size = 1
    end
    object mTbMesSituacao: TStringField
      FieldName = 'Situacao'
      Size = 1
    end
    object mTbMesDecrSituacao: TStringField
      FieldName = 'DecrSituacao'
      Size = 15
    end
  end
  object dsMes: TDataSource
    AutoEdit = False
    DataSet = mTbMes
    Left = 296
    Top = 408
  end
  object qryServidMovimMes: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'pDtMovimIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'pDtMovimFim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      '  id_servidor'
      'from'
      '  hist_movim_est_func'
      'where'
      '  (dt_movim >= :pDtMovimIni) and'
      '  (dt_movim <= :pDtMovimFim) and'
      '  (movim_definitiva = '#39'S'#39')')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 144
    Top = 253
    object qryServidMovimMesID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
  end
  object provServidMovimMes: TDataSetProvider
    DataSet = qryServidMovimMes
    Left = 152
    Top = 280
  end
  object cdsServidMovimMes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provServidMovimMes'
    Left = 160
    Top = 309
    object cdsServidMovimMesID_SERVIDOR: TIntegerField
      FieldName = 'ID_SERVIDOR'
      Required = True
    end
  end
  object qryServidMovimDefinit: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select'
      '  id'
      'from'
      '  servidor'
      'where'
      '  (movim_definitiva = '#39'S'#39') and'
      '  (status <> '#39'3'#39')')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 80
    Top = 309
    object qryServidMovimDefinitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object cdsServidMovimDefinit: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provServidMovimDefinit'
    Left = 96
    Top = 365
    object cdsServidMovimDefinitID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object provServidMovimDefinit: TDataSetProvider
    DataSet = qryServidMovimDefinit
    Left = 96
    Top = 336
  end
end
