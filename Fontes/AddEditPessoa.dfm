inherited frmAddEditPessoa: TfrmAddEditPessoa
  Top = 104
  Caption = 'frmAddEditPessoa'
  ClientHeight = 554
  ClientWidth = 677
  Font.Height = -12
  Font.Name = 'Calibri'
  OnCreate = FormCreate
  ExplicitWidth = 683
  ExplicitHeight = 583
  PixelsPerInch = 96
  TextHeight = 14
  inherited PanelClient: TPanel
    Width = 677
    Height = 521
    ParentDoubleBuffered = False
    ExplicitWidth = 677
    ExplicitHeight = 521
    object sbLogradouro: TSpeedButton [0]
      Tag = 1
      Left = 213
      Top = 160
      Width = 26
      Height = 27
      Hint = 'Seleciona o Logradouro'
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
      OnClick = sbLogradouroClick
    end
    object sbBairro: TSpeedButton [1]
      Tag = 2
      Left = 213
      Top = 229
      Width = 26
      Height = 27
      Hint = 'Seleciona o Bairro'
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
      OnClick = sbLogradouroClick
    end
    object sbDistrito: TSpeedButton [2]
      Tag = 3
      Left = 213
      Top = 266
      Width = 26
      Height = 27
      Hint = 'Seleciona o Distrito '
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
      OnClick = sbLogradouroClick
    end
    inherited lblPadrao: TcxLabel
      Left = 8
      Top = 18
      Caption = 'Id.:'
      ExplicitLeft = 8
      ExplicitTop = 18
      ExplicitWidth = 155
      ExplicitHeight = 20
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object edId: TcxDBTextEdit
      Left = 165
      Top = 16
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 0
      Width = 72
    end
    object edNomeRazaoSocial: TcxDBTextEdit
      Left = 165
      Top = 52
      DataBinding.DataField = 'NOME_RAZAO_SOCIAL'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 3
      Width = 501
    end
    object edEnderIdLograd: TcxDBTextEdit
      Tag = 1
      Left = 165
      Top = 162
      Hint = 'Logradouro [Ctrl+Enter ou F3 > Pesquisa]'
      DataBinding.DataField = 'ENDER_ID_LOGRAD'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 2
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 10
      OnExit = edEnderIdLogradExit
      OnKeyDown = edEnderIdLogradKeyDown
      OnKeyPress = edEnderIdLogradKeyPress
      Width = 49
    end
    object edEnderDescrLograd: TcxDBTextEdit
      Left = 238
      Top = 162
      TabStop = False
      DataBinding.DataField = 'ENDER_DESCR_LOGRAD'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 11
      Width = 296
    end
    object edEnderDescrBairro: TcxDBTextEdit
      Left = 238
      Top = 231
      TabStop = False
      DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 16
      Width = 297
    end
    object edEnderDescrDistrito: TcxDBTextEdit
      Left = 238
      Top = 268
      TabStop = False
      DataBinding.DataField = 'ENDER_DESCR_DISTRITO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 19
      Width = 296
    end
    object edEnderIdDistrito: TcxDBTextEdit
      Tag = 3
      Left = 165
      Top = 268
      Hint = 'Distrito (Quando diferente de 1) (Ctrl+Enter / F3 > Pesquisa)'
      DataBinding.DataField = 'ENDER_ID_DISTRITO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 3
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 18
      OnExit = edEnderIdLogradExit
      OnKeyDown = edEnderIdLogradKeyDown
      OnKeyPress = edEnderIdLogradKeyPress
      Width = 49
    end
    object edEnderIdBairro: TcxDBTextEdit
      Tag = 2
      Left = 165
      Top = 231
      Hint = 'Bairro [Ctrl+Enter ou F3 > Pesquisa]'
      DataBinding.DataField = 'ENDER_ID_BAIRRO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 2
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 15
      OnExit = edEnderIdLogradExit
      OnKeyDown = edEnderIdLogradKeyDown
      OnKeyPress = edEnderIdLogradKeyPress
      Width = 49
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 54
      AutoSize = False
      Caption = 'Nome/Raz'#227'o Social:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 164
      AutoSize = False
      Caption = 'Endere'#231'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object cxLabel3: TcxLabel
      Left = 8
      Top = 233
      AutoSize = False
      Caption = 'Bairro:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object cxLabel4: TcxLabel
      Left = 8
      Top = 270
      AutoSize = False
      Caption = 'Distrito:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object cxLabel5: TcxLabel
      Left = 8
      Top = 306
      AutoSize = False
      Caption = 'Cidade:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object cxLabel6: TcxLabel
      Left = 533
      Top = 164
      AutoSize = False
      Caption = 'N'#186':'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 32
      AnchorX = 565
    end
    object cxLabel10: TcxLabel
      Left = 8
      Top = 343
      AutoSize = False
      Caption = 'Telefone(s):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object cxLabel11: TcxLabel
      Left = 8
      Top = 380
      AutoSize = False
      Caption = 'eMail:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object gbObservacao: TcxGroupBox
      Left = 8
      Top = 408
      Caption = ' Observa'#231#227'o: '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = 16512
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 24
      Height = 104
      Width = 658
      object memObservacao: TcxDBMemo
        AlignWithMargins = True
        Left = 5
        Top = 22
        Hint = 
          ' Aten'#231#227'o: Pressione [Ctrl + Enter] para ir para pr'#243'xima linha ..' +
          '.'
        Align = alClient
        DataBinding.DataField = 'OBSERVACAO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ScrollBars = ssVertical
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 0
        Height = 77
        Width = 648
      end
    end
    object cxLabel16: TcxLabel
      Left = 537
      Top = 233
      AutoSize = False
      Caption = 'CEP:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 27
      AnchorX = 564
    end
    object edTelefone: TcxDBTextEdit
      Left = 165
      Top = 341
      DataBinding.DataField = 'TELEFONE'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 22
      Width = 501
    end
    object cxLabel19: TcxLabel
      Left = 275
      Top = 18
      AutoSize = False
      Caption = 'Tipo:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 32
      AnchorX = 307
    end
    object cxLabel20: TcxLabel
      Left = 463
      Top = 18
      AutoSize = False
      Caption = 'CPF/CNPJ:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 55
      AnchorX = 518
    end
    object edCPF_CNPJ: TcxMaskEdit
      Left = 520
      Top = 16
      ParentFont = False
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.EditMask = '999.999.999-99;0; '
      Properties.MaxLength = 0
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      Text = '           '
      OnExit = edCPF_CNPJExit
      Width = 146
    end
    object cxLabel9: TcxLabel
      Left = 8
      Top = 91
      AutoSize = False
      Caption = 'Nome Fantasia:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object edNomeFantasia: TcxDBTextEdit
      Left = 165
      Top = 89
      DataBinding.DataField = 'NOME_FANTASIA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 4
      Width = 501
    end
    object cxLabel21: TcxLabel
      Left = 8
      Top = 128
      AutoSize = False
      Caption = 'RG (N'#186'/'#211'rg'#227'o/UF/Emiss'#227'o):'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object edRgNumero: TcxDBTextEdit
      Left = 164
      Top = 126
      DataBinding.DataField = 'RG_NUM'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 5
      Width = 144
    end
    object edRG_OrgaoEmissor: TcxDBTextEdit
      Left = 309
      Top = 126
      DataBinding.DataField = 'RG_ORGAO_EMISSOR'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 6
      Width = 102
    end
    object cbRgUf: TcxDBComboBox
      Left = 412
      Top = 126
      DataBinding.DataField = 'RG_UF'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        ''
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'OB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RS'
        'RN'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
      Properties.OnCloseUp = cbRgUfPropertiesCloseUp
      Properties.OnPopup = cbRgUfPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 7
      Width = 50
    end
    object edRgDtEmissao: TcxDBDateEdit
      Left = 463
      Top = 126
      DataBinding.DataField = 'RG_DT_EMISSAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.InputKind = ikMask
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnCloseUp = cbRgUfPropertiesCloseUp
      Properties.OnPopup = cbRgUfPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 8
      Width = 122
    end
    object cxLabel22: TcxLabel
      Left = 591
      Top = 128
      AutoSize = False
      Caption = 'Sexo:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 35
      AnchorX = 626
    end
    object cbSexo: TcxDBComboBox
      Left = 627
      Top = 126
      DataBinding.DataField = 'SEXO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        ''
        'M'
        'F')
      Properties.OnCloseUp = cbRgUfPropertiesCloseUp
      Properties.OnPopup = cbRgUfPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 9
      Width = 39
    end
    object edEnderNum: TcxDBTextEdit
      Left = 565
      Top = 162
      DataBinding.DataField = 'ENDER_NUM'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 12
      Width = 74
    end
    object edEnderCEP: TcxMaskEdit
      Left = 565
      Top = 231
      ParentFont = False
      Properties.AlwaysShowBlanksAndLiterals = True
      Properties.EditMask = '99.999-999;0; '
      Properties.MaxLength = 0
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 17
      Text = '        '
      Width = 101
    end
    object edEnderCidade: TcxDBTextEdit
      Left = 165
      Top = 304
      DataBinding.DataField = 'ENDER_CIDADE'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 20
      Width = 369
    end
    object cxLabel8: TcxLabel
      Left = 582
      Top = 306
      AutoSize = False
      Caption = 'UF:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 49
      AnchorX = 631
    end
    object edEMail: TcxDBTextEdit
      Left = 165
      Top = 378
      DataBinding.DataField = 'E_MAIL'
      DataBinding.DataSource = ds1
      ParentFont = False
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 23
      Width = 501
    end
    object edEnderNumLetra: TcxDBTextEdit
      Left = 639
      Top = 162
      DataBinding.DataField = 'ENDER_NUM_LETRA'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 13
      Width = 27
    end
    object cxLabel7: TcxLabel
      Left = 8
      Top = 199
      AutoSize = False
      Caption = 'Complemento:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 155
      AnchorX = 163
    end
    object edEnderComplemento: TcxDBTextEdit
      Left = 165
      Top = 197
      DataBinding.DataField = 'ENDER_COMPLEMENTO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 14
      Width = 369
    end
    object edEnderUF: TcxDBTextEdit
      Left = 632
      Top = 304
      DataBinding.DataField = 'ENDER_UF'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 21
      Width = 34
    end
    object cbTipoPessoa: TcxComboBox
      Left = 309
      Top = 16
      ParentFont = False
      Properties.Items.Strings = (
        'F'#205'SICA'
        'JUR'#205'DICA')
      Properties.OnChange = cbTipoPessoaPropertiesChange
      Properties.OnCloseUp = cbTipoPessoaPropertiesCloseUp
      Properties.OnPopup = cbTipoPessoaPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 1
      Text = 'F'#205'SICA'
      Width = 102
    end
  end
  inherited Panel: TPanel
    Top = 521
    Width = 677
    Font.Height = -12
    Font.Name = 'Calibri'
    ExplicitTop = 521
    ExplicitWidth = 677
    inherited btnCancelar: TcxButton
      Left = 572
      Top = 2
      Height = 30
      ExplicitLeft = 572
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    inherited btnGravar: TcxButton
      Left = 477
      Top = 2
      Height = 30
      ExplicitLeft = 477
      ExplicitTop = 2
      ExplicitHeight = 30
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 56
    Top = 16
  end
  inherited cds1: TClientDataSet
    CommandText = ''
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOME_RAZAO_SOCIAL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'NOME_FANTASIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'SEXO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DT_NASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'NATURAL_CIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NATURAL_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RG_NUM'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RG_ORGAO_EMISSOR'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'RG_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RG_DT_EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'CPF_CNPJ'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ID_ESTADO_CIVIL'
        DataType = ftInteger
      end
      item
        Name = 'CONJUGE_NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONJUGE_CPF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'ENDER_ID_LOGRAD'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_NUM'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_NUM_LETRA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
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
        Name = 'ENDER_CIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_ID_DISTRITO'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_CEP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
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
        Name = 'OBSERVACAO'
        DataType = ftMemo
        Size = 1
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
        Name = 'ENDER_DESCR_LOGRAD'
        DataType = ftString
        Size = 50
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
      end>
    Params = <>
    Left = 80
    Top = 24
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1TIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cds1NOME_RAZAO_SOCIAL: TStringField
      FieldName = 'NOME_RAZAO_SOCIAL'
      Required = True
      Size = 60
    end
    object cds1NOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 60
    end
    object cds1SEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
      Size = 1
    end
    object cds1DT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object cds1NATURAL_CIDADE: TStringField
      FieldName = 'NATURAL_CIDADE'
      Size = 40
    end
    object cds1NATURAL_UF: TStringField
      FieldName = 'NATURAL_UF'
      FixedChar = True
      Size = 2
    end
    object cds1RG_NUM: TStringField
      FieldName = 'RG_NUM'
    end
    object cds1RG_ORGAO_EMISSOR: TStringField
      FieldName = 'RG_ORGAO_EMISSOR'
      Size = 11
    end
    object cds1RG_UF: TStringField
      FieldName = 'RG_UF'
      FixedChar = True
      Size = 2
    end
    object cds1RG_DT_EMISSAO: TDateField
      FieldName = 'RG_DT_EMISSAO'
    end
    object cds1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cds1ID_ESTADO_CIVIL: TIntegerField
      FieldName = 'ID_ESTADO_CIVIL'
    end
    object cds1CONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 40
    end
    object cds1CONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 11
    end
    object cds1ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cds1ENDER_NUM: TIntegerField
      FieldName = 'ENDER_NUM'
    end
    object cds1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      FixedChar = True
      Size = 1
    end
    object cds1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cds1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cds1ENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
    end
    object cds1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cds1ENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      FixedChar = True
      Size = 8
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
    object cds1OBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cds1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cds1CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cds1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cds1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cds1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
  end
  inherited ds1: TDataSource
    Left = 16
    Top = 8
  end
  inherited qry1: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM '
      'PESSOA'
      'WHERE'
      '(ID = :pId)')
    Top = 8
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1TIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object qry1NOME_RAZAO_SOCIAL: TStringField
      FieldName = 'NOME_RAZAO_SOCIAL'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object qry1NOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1SEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1DT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1NATURAL_CIDADE: TStringField
      FieldName = 'NATURAL_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qry1NATURAL_UF: TStringField
      FieldName = 'NATURAL_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qry1RG_NUM: TStringField
      FieldName = 'RG_NUM'
      ProviderFlags = [pfInUpdate]
    end
    object qry1RG_ORGAO_EMISSOR: TStringField
      FieldName = 'RG_ORGAO_EMISSOR'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qry1RG_UF: TStringField
      FieldName = 'RG_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qry1RG_DT_EMISSAO: TDateField
      FieldName = 'RG_DT_EMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qry1ID_ESTADO_CIVIL: TIntegerField
      FieldName = 'ID_ESTADO_CIVIL'
      ProviderFlags = [pfInUpdate]
    end
    object qry1CONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qry1CONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object qry1ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
      ProviderFlags = [pfInUpdate]
    end
    object qry1ENDER_NUM: TIntegerField
      FieldName = 'ENDER_NUM'
      ProviderFlags = [pfInUpdate]
    end
    object qry1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object qry1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1ENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qry1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1ENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 8
    end
    object qry1ENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 2
    end
    object qry1TELEFONE: TStringField
      FieldName = 'TELEFONE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object qry1E_MAIL: TStringField
      FieldName = 'E_MAIL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1OBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 1
    end
    object qry1DESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      ProviderFlags = []
      FixedChar = True
      Size = 8
    end
    object qry1CPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      ProviderFlags = []
      Size = 80
    end
    object qry1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      ProviderFlags = []
      Size = 50
    end
    object qry1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
  end
end
