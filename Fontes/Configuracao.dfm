inherited frmConfiguracao: TfrmConfiguracao
  Left = 191
  Top = 149
  Caption = 'CONFIGURA'#199#213'ES E AJUSTES DIVERSOS ...'
  ClientHeight = 536
  ClientWidth = 768
  ExplicitWidth = 774
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 768
    Height = 498
    ExplicitWidth = 768
    ExplicitHeight = 498
    inherited lblPadrao: TcxLabel
      AnchorX = 162
    end
    object pgConfig: TcxPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 758
      Height = 488
      Align = alClient
      Color = 14938356
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Properties.ActivePage = tsOrgao
      Properties.CustomButtons.Buttons = <>
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoSort]
      Properties.Style = 9
      ClientRectBottom = 488
      ClientRectRight = 758
      ClientRectTop = 23
      object tsOrgao: TcxTabSheet
        Caption = '&1 - Empresa'
        ImageIndex = 0
        object gbOrgao: TcxGroupBox
          Left = 8
          Top = 13
          Caption = ' '#211'rg'#227'o: '
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
          Height = 192
          Width = 737
          object edNome: TcxDBTextEdit
            Left = 8
            Top = 65
            TabStop = False
            DataBinding.DataField = 'RAZAO_SOCIAL'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 60
            Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
            TabOrder = 0
            Width = 550
          end
          object edSigla: TcxDBTextEdit
            Left = 610
            Top = 65
            TabStop = False
            DataBinding.DataField = 'SIGLA'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.MaxLength = 10
            Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
            TabOrder = 3
            Width = 118
          end
          object cxLabel1: TcxLabel
            Left = 8
            Top = 48
            AutoSize = False
            Caption = 'Nome / Raz'#227'o Social:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 117
          end
          object cxLabel3: TcxLabel
            Left = 610
            Top = 48
            AutoSize = False
            Caption = 'Sigla:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 100
          end
          object cxLabel5: TcxLabel
            Left = 8
            Top = 105
            AutoSize = False
            Caption = 'CNPJ:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 117
          end
          object cxLabel6: TcxLabel
            Left = 608
            Top = 106
            AutoSize = False
            Caption = 'C'#243'digo FEBRABAN:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 106
          end
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 610
            Top = 122
            DataBinding.DataField = 'COD_FEBRABAN'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = dmPrincipal.cxEditStyleNormal
            TabOrder = 6
            OnKeyPress = edEnderCEPKeyPress
            Width = 118
          end
          object edCNPJ: TcxTextEdit
            Left = 8
            Top = 122
            TabStop = False
            ParentFont = False
            Properties.ReadOnly = True
            Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
            TabOrder = 7
            Width = 250
          end
        end
        object gbEndereco: TcxGroupBox
          Left = 8
          Top = 209
          Caption = ' Endere'#231'o: '
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clBlue
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 212
          Width = 543
          object sbLogradouro: TSpeedButton
            Tag = 1
            Left = 48
            Top = 39
            Width = 26
            Height = 26
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
          object sbBairro: TSpeedButton
            Tag = 2
            Left = 48
            Top = 97
            Width = 26
            Height = 26
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
          object edEnderIdLograd: TcxDBTextEdit
            Tag = 1
            Left = 7
            Top = 40
            DataBinding.DataField = 'ENDER_ID_LOGRAD'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = dmPrincipal.cxEditStyleNormal
            TabOrder = 0
            OnExit = edEnderIdLogradExit
            OnKeyDown = edEnderIdLogradKeyDown
            OnKeyPress = edEnderIdLogradKeyPress
            Width = 42
          end
          object edEnderNum: TcxDBTextEdit
            Left = 458
            Top = 40
            DataBinding.DataField = 'ENDER_LOGRAD_NUM'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = dmPrincipal.cxEditStyleNormal
            TabOrder = 1
            Width = 73
          end
          object edEnderCEP: TcxDBTextEdit
            Left = 8
            Top = 158
            DataBinding.DataField = 'ENDER_CEP'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = dmPrincipal.cxEditStyleNormal
            TabOrder = 4
            OnKeyPress = edEnderCEPKeyPress
            Width = 118
          end
          object edEnderIdBairro: TcxDBTextEdit
            Tag = 2
            Left = 7
            Top = 99
            DataBinding.DataField = 'ENDER_ID_BAIRRO'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = dmPrincipal.cxEditStyleNormal
            TabOrder = 2
            OnExit = edEnderIdLogradExit
            OnKeyDown = edEnderIdLogradKeyDown
            OnKeyPress = edEnderCEPKeyPress
            Width = 42
          end
          object edEnderCidade: TcxDBTextEdit
            Left = 321
            Top = 99
            TabStop = False
            DataBinding.DataField = 'ENDER_CIDADE'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
            TabOrder = 3
            Width = 210
          end
          object edTelefone: TcxDBMaskEdit
            Left = 245
            Top = 158
            DataBinding.DataField = 'TELEFONES'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.AlwaysShowBlanksAndLiterals = True
            Properties.MaxLength = 0
            Style.StyleController = dmPrincipal.cxEditStyleNormal
            TabOrder = 5
            Width = 286
          end
          object cxLabel11: TcxLabel
            Left = 6
            Top = 83
            AutoSize = False
            Caption = 'Bairro:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 117
          end
          object cxLabel12: TcxLabel
            Left = 320
            Top = 83
            AutoSize = False
            Caption = 'Cidade:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 117
          end
          object cxLabel13: TcxLabel
            Left = 457
            Top = 24
            AutoSize = False
            Caption = 'N'#250'mero:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 69
          end
          object cxLabel14: TcxLabel
            Left = 6
            Top = 24
            AutoSize = False
            Caption = 'Av./Rua/Tv. etc ...'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 117
          end
          object edEnder_UF: TcxDBTextEdit
            Left = 168
            Top = 158
            TabStop = False
            DataBinding.DataField = 'ENDER_UF'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
            TabOrder = 10
            Width = 50
          end
          object cxLabel15: TcxLabel
            Left = 7
            Top = 142
            AutoSize = False
            Caption = 'CEP:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 117
          end
          object cxLabel16: TcxLabel
            Left = 168
            Top = 142
            AutoSize = False
            Caption = 'UF:'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 26
          end
          object cxLabel17: TcxLabel
            Left = 244
            Top = 142
            AutoSize = False
            Caption = 'Telefone(s):'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Calibri'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Height = 17
            Width = 77
          end
          object edEnderDescrLograd: TcxDBTextEdit
            Left = 73
            Top = 40
            TabStop = False
            DataBinding.DataField = 'ENDER_DESCR_LOGRAD'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
            TabOrder = 14
            Width = 379
          end
          object edEnderDescrBairro: TcxDBTextEdit
            Left = 73
            Top = 99
            TabStop = False
            DataBinding.DataField = 'ENDER_DESCR_BAIRRO'
            DataBinding.DataSource = ds1
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Properties.ReadOnly = True
            Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
            TabOrder = 15
            Width = 216
          end
        end
        object gbBrasao: TcxGroupBox
          Left = 555
          Top = 209
          Caption = ' Bras'#227'o: '
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextColor = clBlue
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Height = 212
          Width = 190
          object dbImgBrasao: TcxDBImage
            Left = 17
            Top = 29
            DataBinding.DataField = 'LOGOMARCA'
            DataBinding.DataSource = ds1
            TabOrder = 0
            OnDblClick = dbImgBrasaoDblClick
            Height = 168
            Width = 164
          end
        end
        object cxLabel58: TcxLabel
          Left = 87
          Top = 432
          AutoSize = False
          Caption = 'Tipo (Formato) de Fatra:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 188
          AnchorX = 275
        end
        object cbTipoFatura: TcxComboBox
          Left = 277
          Top = 427
          AutoSize = False
          ParentFont = False
          Properties.Items.Strings = (
            'A - S/ C'#243'digo de Barras (Mod. 1)'
            'B - S/ C'#243'digo de Barras (Mod. 2)'
            'C - C/ C'#243'digo de Barras')
          Properties.OnCloseUp = cbFormatoCChequePropertiesCloseUp
          Properties.OnPopup = cbFormatoCChequePropertiesPopup
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -16
          Style.Font.Name = 'Calibri'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          Style.IsFontAssigned = True
          TabOrder = 4
          Text = 'A - S/ C'#243'digo de Barras (Mod. 1)'
          Height = 28
          Width = 262
        end
      end
      object tsSistema: TcxTabSheet
        Caption = '&2 - Sistema'
        ImageIndex = 1
        object sbIdExped: TSpeedButton
          Tag = 1
          Left = 191
          Top = 111
          Width = 26
          Height = 26
          Hint = 'Seleciona o C'#243'digo do Servi'#231'o'
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
          OnClick = sbIdExpedClick
        end
        object sbIdLig: TSpeedButton
          Tag = 2
          Left = 191
          Top = 150
          Width = 26
          Height = 26
          Hint = 'Seleciona o C'#243'digo do Servi'#231'o'
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
          OnClick = sbIdExpedClick
        end
        object sbIdRelig: TSpeedButton
          Tag = 3
          Left = 191
          Top = 190
          Width = 26
          Height = 26
          Hint = 'Seleciona o C'#243'digo do Servi'#231'o'
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
          OnClick = sbIdExpedClick
        end
        object sbIdRelig2: TSpeedButton
          Tag = 4
          Left = 191
          Top = 238
          Width = 26
          Height = 26
          Hint = 'Seleciona o C'#243'digo do Servi'#231'o'
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
          OnClick = sbIdExpedClick
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 57
          AutoSize = False
          Caption = 'Percentual da Multa (%):'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 141
          AnchorX = 149
        end
        object edPercMulta: TcxDBCurrencyEdit
          Left = 150
          Top = 54
          DataBinding.DataField = 'PERC_MULTA'
          DataBinding.DataSource = dsConfigSistema
          Properties.DisplayFormat = '  ,0.00'
          TabOrder = 1
          Width = 80
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 113
          AutoSize = False
          Caption = 'Id. Serv. Expediente:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 141
          AnchorX = 149
        end
        object cxLabel8: TcxLabel
          Left = 8
          Top = 153
          AutoSize = False
          Caption = 'Id. Serv. Liga'#231#227'o:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 141
          AnchorX = 149
        end
        object cxLabel9: TcxLabel
          Left = 8
          Top = 193
          AutoSize = False
          Caption = 'Id. Serv. Religa'#231#227'o:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 141
          AnchorX = 149
        end
        object edIdExped: TcxDBTextEdit
          Tag = 1
          Left = 150
          Top = 112
          DataBinding.DataField = 'ID_EXPEDIENTE'
          DataBinding.DataSource = dsConfigSistema
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 5
          OnKeyDown = edIdExpedKeyDown
          OnKeyPress = edEnderIdLogradKeyPress
          Width = 42
        end
        object edIdLig: TcxDBTextEdit
          Tag = 2
          Left = 150
          Top = 151
          DataBinding.DataField = 'ID_LIGACAO'
          DataBinding.DataSource = dsConfigSistema
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 6
          OnKeyDown = edIdExpedKeyDown
          OnKeyPress = edEnderIdLogradKeyPress
          Width = 42
        end
        object edIdRelig: TcxDBTextEdit
          Tag = 3
          Left = 150
          Top = 191
          DataBinding.DataField = 'ID_RELIGACAO'
          DataBinding.DataSource = dsConfigSistema
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 7
          OnKeyDown = edIdExpedKeyDown
          OnKeyPress = edEnderIdLogradKeyPress
          Width = 42
        end
        object cxLabel10: TcxLabel
          Left = 8
          Top = 241
          AutoSize = False
          Caption = 'Id. Serv. Religa'#231#227'o:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taRightJustify
          Height = 17
          Width = 141
          AnchorX = 149
        end
        object edIdRelig2: TcxDBTextEdit
          Tag = 4
          Left = 150
          Top = 239
          DataBinding.DataField = 'ID_RELIGACAO2'
          DataBinding.DataSource = dsConfigSistema
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 9
          OnKeyDown = edIdExpedKeyDown
          OnKeyPress = edEnderIdLogradKeyPress
          Width = 42
        end
      end
      object tsPastaPadrao: TcxTabSheet
        Caption = '5 - Pastas'
        ImageIndex = 4
        object cxLabel37: TcxLabel
          Left = 4
          Top = 35
          AutoSize = False
          Caption = 'Backup no Servidor Local:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Height = 19
          Width = 143
        end
        object edPastaServidLocal: TcxDBTextEdit
          Tag = 1
          Left = 4
          Top = 51
          DataBinding.DataField = 'BACKUP_LOCAL'
          DataBinding.DataSource = dsPasta
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 1
          Width = 730
        end
        object cxLabel2: TcxLabel
          Left = 4
          Top = 107
          AutoSize = False
          Caption = 'Backup no Servidor Remoto:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.Alignment.Horz = taLeftJustify
          Height = 19
          Width = 161
        end
        object edPastaServidRemoto: TcxDBTextEdit
          Tag = 1
          Left = 4
          Top = 123
          DataBinding.DataField = 'BACKUP_REMOTO'
          DataBinding.DataSource = dsPasta
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          TabOrder = 3
          Width = 730
        end
      end
    end
  end
  inherited Panel: TPanel
    Top = 498
    Width = 768
    Height = 38
    ExplicitTop = 498
    ExplicitWidth = 768
    ExplicitHeight = 38
    inherited btnCancelar: TcxButton
      Left = 568
      Top = 3
      Height = 32
      ModalResult = 0
      OnClick = btnCancelarClick
      ExplicitLeft = 568
      ExplicitTop = 3
      ExplicitHeight = 32
    end
    inherited btnGravar: TcxButton
      Left = 473
      Top = 3
      Height = 32
      ExplicitLeft = 473
      ExplicitTop = 3
      ExplicitHeight = 32
    end
    object btnFechar: TBitBtn
      Left = 677
      Top = 3
      Width = 90
      Height = 32
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
      ModalResult = 11
      ParentFont = False
      TabOrder = 3
      OnClick = btnFecharClick
    end
    object btnEdit: TBitBtn
      Tag = 2
      Left = 371
      Top = 3
      Width = 90
      Height = 32
      Caption = '&Alterar'
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
      OnClick = btnEditClick
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsConfigOrgao
    Left = 448
    Top = 144
  end
  object dsConfigSistema: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.cdsConfigSistema
    Left = 272
    Top = 104
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 566
    Top = 323
  end
  object SaveDialog1: TSaveDialog
    Left = 659
    Top = 370
  end
  object dsPasta: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.cdsPasta
    Left = 344
    Top = 296
  end
end
