inherited frmPrintRelDiversos: TfrmPrintRelDiversos
  Left = 259
  Top = 26
  Caption = 'OP'#199#213'ES DE RELAT'#211'RIOS DIVERSOS ...'
  ClientHeight = 656
  ClientWidth = 801
  Color = clWindow
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 807
  ExplicitHeight = 685
  PixelsPerInch = 96
  TextHeight = 13
  object Page1: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 795
    Height = 603
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsRelTab
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoSort]
    Properties.Style = 6
    ClientRectBottom = 603
    ClientRectRight = 795
    ClientRectTop = 27
    object tsRelTab: TcxTabSheet
      Caption = '&1 - Tabelas'
      ImageIndex = 0
      object gbOpGrupo1: TGroupBox
        Left = 0
        Top = 0
        Width = 795
        Height = 336
        Align = alTop
        Caption = ' Op'#231#245'es: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object rbOpRel104: TcxRadioButton
          Tag = 3
          Left = 7
          Top = 95
          Width = 451
          Height = 17
          Caption = '04 - Logradouros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Visible = False
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel103: TcxRadioButton
          Tag = 2
          Left = 7
          Top = 71
          Width = 451
          Height = 17
          Caption = '03 - Logradouros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel102: TcxRadioButton
          Tag = 1
          Left = 7
          Top = 47
          Width = 451
          Height = 17
          Caption = '02 - Bairros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel101: TcxRadioButton
          Left = 7
          Top = 24
          Width = 451
          Height = 17
          Caption = '01 - Tarifas'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          TabStop = True
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object gbDadosRel1: TGroupBox
        Left = 0
        Top = 336
        Width = 795
        Height = 237
        ParentCustomHint = False
        Align = alTop
        BiDiMode = bdLeftToRight
        Caption = ' Dados p/ o relat'#243'rio: '
        Color = clWhite
        Ctl3D = True
        DoubleBuffered = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentDoubleBuffered = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 1
        object nbDadosRel1: TNotebook
          Left = 2
          Top = 18
          Width = 786
          Height = 217
          Color = 14938356
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          PageIndex = 3
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg1'
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg2'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxGroupBox7: TcxGroupBox
              Left = 16
              Top = 24
              Caption = ' Situa'#231#227'o: '
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 0
              Height = 153
              Width = 185
              object rbSUO_SituacT: TcxRadioButton
                Left = 16
                Top = 32
                Width = 113
                Height = 17
                Caption = 'Todas'
                Checked = True
                Color = 14938356
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                TabStop = True
                ParentBackground = False
              end
              object rbSUO_Situac1: TcxRadioButton
                Left = 16
                Top = 68
                Width = 113
                Height = 17
                Caption = 'Em Uso '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object rbSUO_Situac2: TcxRadioButton
                Left = 16
                Top = 104
                Width = 113
                Height = 17
                Caption = 'Sem Uso'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
            end
            object cxGroupBox4: TcxGroupBox
              Left = 208
              Top = 24
              Caption = ' Ordem: '
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 153
              Width = 185
              object rbSUO_Ordem1: TcxRadioButton
                Left = 16
                Top = 32
                Width = 113
                Height = 17
                Caption = 'Numerica'
                Checked = True
                Color = 14938356
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                TabStop = True
                ParentBackground = False
              end
              object rbSUO_Ordem2: TcxRadioButton
                Left = 16
                Top = 68
                Width = 113
                Height = 17
                Caption = 'Alfab'#233'tica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg3'
            object cxLabel67: TcxLabel
              Left = 7
              Top = 21
              AutoSize = False
              Caption = 'Ordem:'
              ParentColor = False
              ParentFont = False
              Style.Color = clWhite
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 97
              AnchorX = 104
            end
            object cbOrdem103: TcxComboBox
              Left = 106
              Top = 19
              ParentFont = False
              Properties.Items.Strings = (
                'NUM'#201'RICA'
                'ALFAB'#201'TICA'
                'MAPA')
              Properties.OnChange = cbOrdem103PropertiesChange
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 1
              Text = 'NUM'#201'RICA'
              Width = 208
            end
            object chkQuebraPorBairro03: TCheckBox
              Left = 106
              Top = 64
              Width = 215
              Height = 17
              Caption = 'Quebrar p'#225'gina por Bairro ...'
              TabOrder = 2
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg4'
            object sbTipoUL1: TSpeedButton
              Tag = 1051
              Left = 164
              Top = 30
              Width = 26
              Height = 28
              Hint = 'Seleciona o Tipo de Unid. de Lota'#231#227'o'
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
            end
            object cxGroupBox3: TcxGroupBox
              Left = 122
              Top = 72
              Caption = ' Ordem: '
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 3
              Height = 118
              Width = 185
              object rbUL_Ordem1: TcxRadioButton
                Left = 16
                Top = 32
                Width = 113
                Height = 17
                Caption = 'Numerica'
                Checked = True
                Color = 14938356
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                TabOrder = 0
                TabStop = True
                ParentBackground = False
              end
              object rbUL_Ordem2: TcxRadioButton
                Left = 16
                Top = 68
                Width = 113
                Height = 17
                Caption = 'Alfab'#233'tica'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
            end
            object cxLabel12: TcxLabel
              Left = 35
              Top = 36
              Caption = 'Tipo de Unidade:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
            object edIdTipoUL1: TcxMaskEdit
              Tag = 1051
              Left = 122
              Top = 32
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.Alignment.Horz = taRightJustify
              Properties.AlwaysShowBlanksAndLiterals = True
              Properties.MaxLength = 2
              ShowHint = True
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 0
              Text = '   '
              OnExit = edIdTipoUL1Exit
              OnKeyPress = edIdTipoUL1KeyPress
              Height = 24
              Width = 42
            end
            object edDescrTipoUL1: TcxTextEdit
              Left = 189
              Top = 32
              TabStop = False
              AutoSize = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
              TabOrder = 1
              Text = 'Deixe em branco p/ todas ...'
              Height = 24
              Width = 297
            end
          end
        end
      end
    end
    object tsRelServid: TcxTabSheet
      Caption = '&2 - Unid. Consumidoras'
      ImageIndex = 1
      object gbOpGrupo2: TGroupBox
        Left = 0
        Top = 0
        Width = 795
        Height = 325
        Align = alTop
        Caption = ' Op'#231#245'es: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object rbOpRel201: TcxRadioButton
          Left = 7
          Top = 24
          Width = 451
          Height = 17
          Caption = '01 - Rela'#231#227'o Geral (em Ordem alfab'#233'tica) '
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel202: TcxRadioButton
          Tag = 1
          Left = 7
          Top = 47
          Width = 451
          Height = 17
          Caption = '02 - Por Bairro/Logradouro da Unid. Consumidora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel203: TcxRadioButton
          Tag = 2
          Left = 7
          Top = 71
          Width = 451
          Height = 17
          Caption = '03 - Unidades com Endere'#231'o de Combran'#231'a Diferente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel204: TcxRadioButton
          Tag = 3
          Left = 7
          Top = 95
          Width = 451
          Height = 17
          Caption = '04 - Cortados ou Religadas no Per'#237'odo '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel205: TcxRadioButton
          Tag = 4
          Left = 7
          Top = 119
          Width = 451
          Height = 17
          Caption = '05 - Estat'#237'sticas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel206: TcxRadioButton
          Tag = 5
          Left = 7
          Top = 143
          Width = 451
          Height = 17
          Caption = '06 - Resumo por Pontos de Consumo (Torneiras)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object gbDadosRel2: TGroupBox
        Left = 0
        Top = 335
        Width = 795
        Height = 241
        Align = alBottom
        Caption = ' Dados p/ o relat'#243'rio: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object nbDadosRel2: TNotebook
          Left = 2
          Top = 18
          Width = 791
          Height = 221
          Align = alClient
          Color = 14938356
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          PageIndex = 5
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg1'
            object cxLabel25: TcxLabel
              Left = 8
              Top = 49
              AutoSize = False
              Caption = 'Distrito(s):'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 73
              AnchorX = 81
            end
            object cxLabel120: TcxLabel
              Left = 8
              Top = 139
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 73
              AnchorX = 81
            end
            object cbSituacao201: TcxComboBox
              Left = 83
              Top = 136
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'AGUARDANDO LIGA'#199#195'O'
                'ATIVAS'
                'CORTADAS'
                'DESATIVADAS'
                'OUTRA')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 2
              Text = 'TODAS'
              Width = 222
            end
            object cxLabel79: TcxLabel
              Left = 8
              Top = 96
              AutoSize = False
              Caption = 'Bairro(s):'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 73
              AnchorX = 81
            end
            inline frmeMultiBairro201: TfrmeMultiBairro
              Left = 83
              Top = 92
              Width = 602
              Height = 31
              TabOrder = 1
              ExplicitLeft = 83
              ExplicitTop = 92
              inherited sbMultiBairro: TSpeedButton
                OnClick = frmeMultiBairro201sbMultiBairroClick
              end
            end
            inline frmeDistrito201: TfrmeDistrito
              Left = 83
              Top = 45
              Width = 638
              Height = 33
              TabOrder = 0
              ExplicitLeft = 83
              ExplicitTop = 45
              ExplicitWidth = 638
              ExplicitHeight = 33
              inherited sb1: TSpeedButton
                Top = -4
                Height = 31
                OnClick = frmeDistrito1sb1Click
                ExplicitTop = -4
                ExplicitHeight = 31
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 488
                Width = 488
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg2'
            object cxLabel26: TcxLabel
              Left = 7
              Top = 52
              AutoSize = False
              Caption = 'Bairro:'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            object cxLabel27: TcxLabel
              Left = 7
              Top = 90
              AutoSize = False
              Caption = 'Logradouros:'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            object cbCategoria202: TcxComboBox
              Left = 117
              Top = 125
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'RESIDENCIAL'
                'COMERCIAL'
                'INDUSTRIAL'
                'OUTRA')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 6
              Text = 'TODAS'
              Width = 159
            end
            object cxLabel37: TcxLabel
              Left = 7
              Top = 129
              AutoSize = False
              Caption = 'Categoria:'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            object cxLabel38: TcxLabel
              Left = 339
              Top = 129
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 58
              AnchorX = 397
            end
            object cbSituac202: TcxComboBox
              Left = 399
              Top = 125
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'AGUARDANDO LIGA'#199#195'O'
                'ATIVAS'
                'CORTADAS'
                'DESATIVADAS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 8
              Text = 'TODAS'
              Width = 198
            end
            object cxLabel42: TcxLabel
              Left = 7
              Top = 166
              AutoSize = False
              Caption = 'Per'#237'odo de Liga'#231#227'o:'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 108
              AnchorX = 115
            end
            inline frmeBairro202: TfrmeBairro
              Left = 118
              Top = 48
              Width = 486
              Height = 29
              TabOrder = 0
              ExplicitLeft = 118
              ExplicitTop = 48
              ExplicitWidth = 486
              ExplicitHeight = 29
              inherited edId: TcxMaskEdit
                OnExit = frmeBairro202edIdExit
              end
            end
            inline frmeMultiLogradouro202: TfrmeMultiLogradouro
              Left = 118
              Top = 86
              Width = 602
              Height = 28
              TabOrder = 1
              ExplicitLeft = 118
              ExplicitTop = 86
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro202sbMultiLogradClick
              end
            end
            inline frmePeriodoDt202: TfrmePeriodoDt
              Left = 118
              Top = 162
              Width = 248
              Height = 28
              TabOrder = 9
              ExplicitLeft = 118
              ExplicitTop = 162
              ExplicitWidth = 248
              inherited cxLabel61: TcxLabel
                Left = 115
                ExplicitLeft = 115
                ExplicitWidth = 16
                Width = 16
                AnchorX = 131
              end
              inherited edDtFim: TcxDateEdit
                Left = 133
                ExplicitLeft = 133
              end
            end
            object cxLabel121: TcxLabel
              Left = 380
              Top = 166
              AutoSize = False
              Caption = 'Tipo de Relat'#243'rio:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Visible = False
              Height = 17
              Width = 116
              AnchorX = 496
            end
            object cbTipoRel202: TcxComboBox
              Left = 498
              Top = 162
              ParentFont = False
              Properties.Items.Strings = (
                'ANAL'#205'TICO'
                'RESUMIDO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 11
              Text = 'ANAL'#205'TICO'
              Visible = False
              Width = 212
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg3'
            inline frmeMultiLogradouro203: TfrmeMultiLogradouro
              Left = 118
              Top = 102
              Width = 602
              Height = 28
              TabOrder = 1
              ExplicitLeft = 118
              ExplicitTop = 102
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro203sbMultiLogradClick
              end
            end
            inline frmeBairro203: TfrmeBairro
              Left = 118
              Top = 64
              Width = 486
              Height = 29
              TabOrder = 0
              ExplicitLeft = 118
              ExplicitTop = 64
              ExplicitWidth = 486
              ExplicitHeight = 29
              inherited edId: TcxMaskEdit
                OnExit = frmeBairro203edIdExit
              end
            end
            object cxLabel10: TcxLabel
              Left = 7
              Top = 106
              AutoSize = False
              Caption = 'Logradouros:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            object cxLabel11: TcxLabel
              Left = 7
              Top = 68
              AutoSize = False
              Caption = 'Bairro:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg4'
            object cxLabel32: TcxLabel
              Left = 7
              Top = 111
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 108
              AnchorX = 115
            end
            inline frmePeriodoDt204: TfrmePeriodoDt
              Left = 118
              Top = 107
              Width = 248
              Height = 28
              TabOrder = 3
              ExplicitLeft = 118
              ExplicitTop = 107
              ExplicitWidth = 248
              inherited cxLabel61: TcxLabel
                Left = 115
                ParentColor = False
                ExplicitLeft = 115
                ExplicitWidth = 16
                Width = 16
                AnchorX = 131
              end
              inherited edDtFim: TcxDateEdit
                Left = 133
                ExplicitLeft = 133
              end
            end
            object cxLabel33: TcxLabel
              Left = 7
              Top = 37
              AutoSize = False
              Caption = 'Bairro:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            object cxLabel34: TcxLabel
              Left = 7
              Top = 75
              AutoSize = False
              Caption = 'Logradouros:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            inline frmeBairro204: TfrmeBairro
              Left = 118
              Top = 33
              Width = 486
              Height = 29
              TabOrder = 0
              ExplicitLeft = 118
              ExplicitTop = 33
              ExplicitWidth = 486
              ExplicitHeight = 29
              inherited edId: TcxMaskEdit
                OnExit = frmeBairro204edIdExit
              end
            end
            inline frmeMultiLogradouro204: TfrmeMultiLogradouro
              Left = 118
              Top = 71
              Width = 602
              Height = 28
              TabOrder = 1
              ExplicitLeft = 118
              ExplicitTop = 71
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro204sbMultiLogradClick
              end
            end
            object cxLabel31: TcxLabel
              Left = 380
              Top = 113
              AutoSize = False
              Caption = 'Tipo de Movimento:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 116
              AnchorX = 496
            end
            object cbTipoMovm204: TcxComboBox
              Left = 498
              Top = 109
              ParentFont = False
              Properties.Items.Strings = (
                'LIGA'#199#213'ES'
                'CORTES'
                'RELIGA'#199#213'ES')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 7
              Text = 'LIGA'#199#213'ES'
              Width = 212
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg5'
            object cxLabel105: TcxLabel
              Left = 390
              Top = 134
              AutoSize = False
              Caption = 'Tipo de Estat'#237'stica:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 106
              AnchorX = 496
            end
            object cbTipoEstatistica205: TcxComboBox
              Left = 498
              Top = 131
              AutoSize = False
              ParentFont = False
              Properties.Items.Strings = (
                'GERAL'
                'MOVIMENTO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 5
              Text = 'GERAL'
              Height = 25
              Width = 109
            end
            inline frmeMultiBairro205: TfrmeMultiBairro
              Left = 115
              Top = 60
              Width = 602
              Height = 31
              TabOrder = 2
              ExplicitLeft = 115
              ExplicitTop = 60
              inherited sbMultiBairro: TSpeedButton
                Left = 466
                ExplicitLeft = 466
              end
              inherited edMultiBairro: TcxTextEdit
                ExplicitWidth = 466
                Width = 466
              end
            end
            object cxLabel35: TcxLabel
              Left = 8
              Top = 63
              AutoSize = False
              Caption = 'Bairro(s):'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 106
              AnchorX = 114
            end
            object cxLabel43: TcxLabel
              Left = 8
              Top = 26
              AutoSize = False
              Caption = 'Distrito(s):'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 106
              AnchorX = 114
            end
            inline frmeMultiDistrito205: TfrmeMultiDistrito
              Left = 115
              Top = 24
              Width = 499
              Height = 26
              TabOrder = 0
              ExplicitLeft = 115
              ExplicitTop = 24
              ExplicitWidth = 499
              inherited edMultiDistrito: TcxTextEdit
                ExplicitHeight = 23
              end
            end
            object cxLabel49: TcxLabel
              Left = 5
              Top = 101
              AutoSize = False
              Caption = 'Logradouros:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 109
              AnchorX = 114
            end
            inline frmeMultiLogradouro205: TfrmeMultiLogradouro
              Left = 116
              Top = 97
              Width = 602
              Height = 28
              TabOrder = 3
              ExplicitLeft = 116
              ExplicitTop = 97
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro205sbMultiLogradClick
              end
            end
            object cxLabel44: TcxLabel
              Left = 7
              Top = 134
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 108
              AnchorX = 115
            end
            inline frmePeriodoDt205: TfrmePeriodoDt
              Left = 116
              Top = 131
              Width = 248
              Height = 28
              TabOrder = 4
              ExplicitLeft = 116
              ExplicitTop = 131
              ExplicitWidth = 248
              inherited cxLabel61: TcxLabel
                Left = 115
                ExplicitLeft = 115
                ExplicitWidth = 16
                Width = 16
                AnchorX = 131
              end
              inherited edDtFim: TcxDateEdit
                Left = 133
                ExplicitLeft = 133
              end
            end
            object chbSuprimeLograd205: TcxCheckBox
              Left = 115
              Top = 176
              Caption = 'Suprimir Logradouros ...'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold, fsItalic]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 10
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg6'
            inline frmeBairro205: TfrmeBairro
              Left = 126
              Top = 96
              Width = 486
              Height = 29
              TabOrder = 0
              ExplicitLeft = 126
              ExplicitTop = 96
              ExplicitWidth = 486
              ExplicitHeight = 29
              inherited sb1: TSpeedButton
                Height = 28
                OnClick = frmeBairro1sb1Click
                ExplicitHeight = 28
              end
            end
            object cxLabel7: TcxLabel
              Left = 15
              Top = 100
              AutoSize = False
              Caption = 'Bairro:'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clBtnFace
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 123
            end
            object cxLabel22: TcxLabel
              Left = 50
              Top = 146
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 73
              AnchorX = 123
            end
            object cbSituacao206: TcxComboBox
              Left = 126
              Top = 144
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'AGUARDANDO LIGA'#199#195'O'
                'ATIVAS'
                'CORTADAS'
                'DESATIVADAS'
                'OUTRA')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Text = 'TODAS'
              Width = 149
            end
          end
        end
      end
    end
    object tsRelFinanc: TcxTabSheet
      Caption = '&3 - Financeiros'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbOpGrupo3: TGroupBox
        Left = 0
        Top = 0
        Width = 795
        Height = 336
        Align = alTop
        Caption = ' Op'#231#245'es: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object rbOpRel303: TcxRadioButton
          Tag = 2
          Left = 7
          Top = 71
          Width = 375
          Height = 17
          Caption = '03 - Detalhamento do C'#225'lculo do M'#234's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel301: TcxRadioButton
          Left = 7
          Top = 24
          Width = 375
          Height = 17
          Caption = '01 - Consumo do M'#234's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel302: TcxRadioButton
          Tag = 1
          Left = 7
          Top = 47
          Width = 375
          Height = 17
          Caption = '02 - Resumo do C'#225'lculo do M'#234's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel304: TcxRadioButton
          Tag = 3
          Left = 7
          Top = 95
          Width = 375
          Height = 17
          Caption = '04 - Inadimplentes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel305: TcxRadioButton
          Tag = 4
          Left = 7
          Top = 119
          Width = 375
          Height = 17
          Caption = '05 - Arrecada'#231#227'o Gerencial '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel306: TcxRadioButton
          Tag = 5
          Left = 7
          Top = 143
          Width = 375
          Height = 17
          Caption = '06 - Emitido X Arrecadado'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel307: TcxRadioButton
          Tag = 6
          Left = 7
          Top = 167
          Width = 375
          Height = 17
          Caption = '07 - Inconsist'#234'ncia da Arrecada'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel308: TcxRadioButton
          Tag = 7
          Left = 7
          Top = 191
          Width = 375
          Height = 17
          Caption = '08 - Notifica'#231#227'o de D'#233'bito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel309: TcxRadioButton
          Tag = 8
          Left = 7
          Top = 215
          Width = 375
          Height = 17
          Caption = '09 - Lista de Faturas Avulsas'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel310: TcxRadioButton
          Tag = 9
          Left = 7
          Top = 238
          Width = 375
          Height = 17
          Caption = '10 - Lista de Requerimentos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel311: TcxRadioButton
          Tag = 10
          Left = 7
          Top = 263
          Width = 375
          Height = 17
          Caption = '11 - Lan'#231'amentos de Outros D'#233'bitos/Cr'#233'ditos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel312: TcxRadioButton
          Tag = 6
          Left = 7
          Top = 287
          Width = 375
          Height = 17
          Caption = '12 - Declara'#231#227'o Anual de Quita'#231#227'o'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          TabStop = True
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object gbDadosRel3: TGroupBox
        Left = 0
        Top = 336
        Width = 795
        Height = 242
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object nbDadosRel3: TNotebook
          Left = 2
          Top = 18
          Width = 791
          Height = 219
          Align = alTop
          PageIndex = 7
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = 20
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg301'
            object cxLabel1: TcxLabel
              Left = 7
              Top = 68
              AutoSize = False
              Caption = 'Bairro:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            object cxLabel2: TcxLabel
              Left = 7
              Top = 106
              AutoSize = False
              Caption = 'Logradouros:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            inline frmeMultiLogradouro301: TfrmeMultiLogradouro
              Left = 118
              Top = 102
              Width = 602
              Height = 28
              TabOrder = 3
              ExplicitLeft = 118
              ExplicitTop = 102
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro301sbMultiLogradClick
              end
            end
            inline frmeBairro301: TfrmeBairro
              Left = 118
              Top = 64
              Width = 486
              Height = 29
              TabOrder = 0
              ExplicitLeft = 118
              ExplicitTop = 64
              ExplicitWidth = 486
              ExplicitHeight = 29
              inherited edId: TcxMaskEdit
                OnExit = frmeBairro301edIdExit
              end
            end
            object chkSomentePlanLancto301: TcxCheckBox
              Left = 115
              Top = 144
              Caption = 'Somente a Planilha p/ Lan'#231'amento ...'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold, fsItalic]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 4
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg302'
            object chkSumprimeLograd302: TcxCheckBox
              Left = 115
              Top = 144
              Caption = 'Suprimir Logradouros ...'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold, fsItalic]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 3
            end
            object cxLabel5: TcxLabel
              Left = 7
              Top = 67
              AutoSize = False
              Caption = 'Bairro(s):'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            object cxLabel6: TcxLabel
              Left = 7
              Top = 106
              AutoSize = False
              Caption = 'Logradouro(s):'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            inline frmeMultiLogradouro302: TfrmeMultiLogradouro
              Left = 118
              Top = 102
              Width = 602
              Height = 28
              TabOrder = 1
              ExplicitLeft = 118
              ExplicitTop = 102
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro302sbMultiLogradClick
              end
            end
            object cxLabel14: TcxLabel
              Left = 7
              Top = 28
              AutoSize = False
              Caption = 'Distrito(s):'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 108
              AnchorX = 115
            end
            inline frmeMultiBairro302: TfrmeMultiBairro
              Left = 117
              Top = 63
              Width = 602
              Height = 31
              TabOrder = 2
              ExplicitLeft = 117
              ExplicitTop = 63
              inherited sbMultiBairro: TSpeedButton
                Left = 466
                ExplicitLeft = 466
              end
              inherited edMultiBairro: TcxTextEdit
                ExplicitWidth = 467
                Width = 467
              end
            end
            inline frmeMultiDistrito302: TfrmeMultiDistrito
              Left = 117
              Top = 24
              Width = 499
              Height = 26
              TabOrder = 0
              ExplicitLeft = 117
              ExplicitTop = 24
              ExplicitWidth = 499
              inherited edMultiDistrito: TcxTextEdit
                ExplicitHeight = 23
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg303'
            object cxLabel23: TcxLabel
              Left = 5
              Top = 58
              AutoSize = False
              Caption = 'Bairro:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 94
              AnchorX = 99
            end
            object cxLabel24: TcxLabel
              Left = 5
              Top = 106
              AutoSize = False
              Caption = 'Logradouros:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 94
              AnchorX = 99
            end
            object cbCategoria303: TcxComboBox
              Left = 100
              Top = 147
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 4
              Text = 'TODOS'
              Width = 159
            end
            object cxLabel29: TcxLabel
              Left = 7
              Top = 149
              AutoSize = False
              Caption = 'Categoria:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 94
              AnchorX = 101
            end
            object cxLabel30: TcxLabel
              Left = 266
              Top = 149
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 58
              AnchorX = 324
            end
            object cbSituacao303: TcxComboBox
              Left = 326
              Top = 147
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 7
              Text = 'TODAS'
              Width = 198
            end
            inline frmeBairro303: TfrmeBairro
              Left = 101
              Top = 54
              Width = 486
              Height = 29
              TabOrder = 0
              ExplicitLeft = 101
              ExplicitTop = 54
              ExplicitWidth = 486
              ExplicitHeight = 29
              inherited edId: TcxMaskEdit
                OnExit = frmeBairro303edIdExit
              end
            end
            inline frmeMultiLogradouro303: TfrmeMultiLogradouro
              Left = 101
              Top = 102
              Width = 602
              Height = 28
              TabOrder = 1
              ExplicitLeft = 101
              ExplicitTop = 102
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro303sbMultiLogradClick
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg304'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pcRel304: TcxPageControl
              Left = 0
              Top = 0
              Width = 791
              Height = 206
              Align = alTop
              TabOrder = 0
              Properties.ActivePage = cxTabSheet8
              Properties.CustomButtons.Buttons = <>
              LookAndFeel.Kind = lfStandard
              ClientRectBottom = 202
              ClientRectLeft = 4
              ClientRectRight = 787
              ClientRectTop = 27
              object cxTabSheet7: TcxTabSheet
                Caption = 'Lista de Corte'
                ImageIndex = 0
                object cxLabel41: TcxLabel
                  Left = 5
                  Top = 37
                  AutoSize = False
                  Caption = 'Bairro:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Style.TextColor = clRed
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 106
                  AnchorX = 111
                end
                object cxLabel47: TcxLabel
                  Left = 5
                  Top = 75
                  AutoSize = False
                  Caption = 'Logradouros:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Style.TextColor = clRed
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 106
                  AnchorX = 111
                end
                inline frmeBairro304_1: TfrmeBairro
                  Left = 113
                  Top = 33
                  Width = 486
                  Height = 29
                  TabOrder = 2
                  ExplicitLeft = 113
                  ExplicitTop = 33
                  ExplicitWidth = 486
                  ExplicitHeight = 29
                end
                inline frmeMultiLogradouro304_1: TfrmeMultiLogradouro
                  Left = 113
                  Top = 71
                  Width = 602
                  Height = 28
                  TabOrder = 3
                  ExplicitLeft = 113
                  ExplicitTop = 71
                  inherited sbMultiLograd: TSpeedButton
                    OnClick = frmeMultiLogradouro304_1sbMultiLogradClick
                  end
                end
                object cxLabel15: TcxLabel
                  Left = 5
                  Top = 115
                  AutoSize = False
                  Caption = 'Qtd. Min de Meses:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 18
                  Width = 106
                  AnchorX = 111
                end
                object edQtdMin304_1: TcxSpinEdit
                  Left = 113
                  Top = 112
                  AutoSize = False
                  ParentFont = False
                  Properties.MaxValue = 9.000000000000000000
                  Properties.MinValue = 1.000000000000000000
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 5
                  Value = 1
                  Height = 25
                  Width = 44
                end
                object cxLabel16: TcxLabel
                  Left = 197
                  Top = 115
                  AutoSize = False
                  Caption = 'A partir do M'#234's/Ano:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 18
                  Width = 106
                  AnchorX = 303
                end
                object edMesAnoIni304_1: TcxMaskEdit
                  Left = 304
                  Top = 112
                  AutoSize = False
                  ParentFont = False
                  Properties.AlwaysShowBlanksAndLiterals = True
                  Properties.EditMask = '99/9999;0; '
                  Properties.MaxLength = 0
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 7
                  Text = '      '
                  Height = 25
                  Width = 68
                end
                object cxLabel19: TcxLabel
                  Left = 416
                  Top = 115
                  AutoSize = False
                  Caption = 'A partir do M'#234's/Ano:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 18
                  Width = 106
                  AnchorX = 522
                end
                object edMesAnoFim304_1: TcxMaskEdit
                  Left = 524
                  Top = 112
                  AutoSize = False
                  ParentFont = False
                  Properties.AlwaysShowBlanksAndLiterals = True
                  Properties.EditMask = '99/9999;0; '
                  Properties.MaxLength = 0
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 9
                  Text = '      '
                  Height = 25
                  Width = 68
                end
              end
              object cxTabSheet8: TcxTabSheet
                Caption = 'Geral (Por Distrito)'
                ImageIndex = 1
                object cxLabel63: TcxLabel
                  Left = 13
                  Top = 28
                  AutoSize = False
                  Caption = 'Distrito(s):'
                  ParentColor = False
                  ParentFont = False
                  Style.Color = clWhite
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 106
                  AnchorX = 119
                end
                inline frmeMultiDistrito304_2: TfrmeMultiDistrito
                  Left = 120
                  Top = 25
                  Width = 544
                  Height = 26
                  TabOrder = 1
                  ExplicitLeft = 120
                  ExplicitTop = 25
                  ExplicitWidth = 544
                  inherited sbMultiDistrito: TSpeedButton
                    Left = 456
                    ExplicitLeft = 456
                  end
                  inherited edMultiDistrito: TcxTextEdit
                    ExplicitWidth = 456
                    ExplicitHeight = 23
                    Width = 456
                  end
                end
                object cxLabel17: TcxLabel
                  Left = 13
                  Top = 98
                  AutoSize = False
                  Caption = 'A partir do M'#234's/Ano:'
                  ParentColor = False
                  ParentFont = False
                  Style.Color = clWhite
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 18
                  Width = 106
                  AnchorX = 119
                end
                object edMesAnoIni304_2: TcxMaskEdit
                  Left = 125
                  Top = 95
                  AutoSize = False
                  ParentFont = False
                  Properties.AlwaysShowBlanksAndLiterals = True
                  Properties.EditMask = '99/9999;0; '
                  Properties.MaxLength = 0
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 3
                  Text = '      '
                  Height = 27
                  Width = 68
                end
                object cxLabel18: TcxLabel
                  Left = 205
                  Top = 98
                  AutoSize = False
                  Caption = 'At'#233' o M'#234's/Ano:'
                  ParentColor = False
                  ParentFont = False
                  Style.Color = clWhite
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 18
                  Width = 106
                  AnchorX = 311
                end
                object edMesAnoFim304_2: TcxMaskEdit
                  Left = 312
                  Top = 95
                  AutoSize = False
                  ParentFont = False
                  Properties.AlwaysShowBlanksAndLiterals = True
                  Properties.EditMask = '99/9999;0; '
                  Properties.MaxLength = 0
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 5
                  Text = '      '
                  Height = 27
                  Width = 68
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg305'
            object cxLabel80: TcxLabel
              Left = 11
              Top = 29
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 158
            end
            object cxLabel13: TcxLabel
              Left = 11
              Top = 66
              AutoSize = False
              Caption = 'Local de Pagamentos:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 158
            end
            inline frmePeriodoDt305: TfrmePeriodoDt
              Left = 161
              Top = 25
              Width = 274
              Height = 28
              TabOrder = 2
              ExplicitLeft = 161
              ExplicitTop = 25
              inherited cxLabel61: TcxLabel
                AnchorX = 140
              end
            end
            inline frmeMultiLocalPagto305: TfrmeMultiLocalPagto
              Left = 160
              Top = 62
              Width = 602
              Height = 31
              TabOrder = 3
              ExplicitLeft = 160
              ExplicitTop = 62
            end
            object chkSomenteResumo305: TcxCheckBox
              Left = 161
              Top = 144
              Caption = 'Somente o Resumo ...'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold, fsItalic]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 4
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg306'
            object cxLabel74: TcxLabel
              Left = 8
              Top = 148
              AutoSize = False
              Caption = 'M'#234's/Ano Inicial:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 129
              AnchorX = 137
            end
            object cxLabel75: TcxLabel
              Left = 419
              Top = 148
              AutoSize = False
              Caption = 'M'#234's/Ano Final:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 129
              AnchorX = 548
            end
            object edMesAnoIni306: TcxMaskEdit
              Left = 138
              Top = 145
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.AlwaysShowBlanksAndLiterals = True
              Properties.EditMask = '99/9999;0; '
              Properties.MaxLength = 0
              ShowHint = True
              Style.Color = clWhite
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Text = '      '
              Height = 25
              Width = 69
            end
            object edMesAnoFim306: TcxMaskEdit
              Left = 549
              Top = 145
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              Properties.Alignment.Horz = taLeftJustify
              Properties.AlwaysShowBlanksAndLiterals = True
              Properties.EditMask = '99/9999;0; '
              Properties.MaxLength = 0
              ShowHint = True
              Style.Color = clWhite
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 4
              Text = '      '
              Height = 25
              Width = 69
            end
            inline frmeMultiBairro306: TfrmeMultiBairro
              Left = 138
              Top = 98
              Width = 602
              Height = 31
              TabOrder = 0
              ExplicitLeft = 138
              ExplicitTop = 98
              inherited sbMultiBairro: TSpeedButton
                Left = 454
                ExplicitLeft = 454
              end
              inherited edMultiBairro: TcxTextEdit
                ExplicitWidth = 455
                Width = 455
              end
            end
            object cxLabel52: TcxLabel
              Left = 8
              Top = 100
              AutoSize = False
              Caption = 'Bairro(s):'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 129
              AnchorX = 137
            end
            object cxLabel53: TcxLabel
              Left = 8
              Top = 55
              AutoSize = False
              Caption = 'Distrito:'
              ParentColor = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 129
              AnchorX = 137
            end
            inline frmeDistrito306: TfrmeDistrito
              Left = 139
              Top = 51
              Width = 494
              Height = 33
              TabOrder = 7
              ExplicitLeft = 139
              ExplicitTop = 51
              ExplicitHeight = 33
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg307'
            object cxLabel8: TcxLabel
              Left = 10
              Top = 104
              AutoSize = False
              Caption = 'Logradouros:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 83
              AnchorX = 93
            end
            object cxLabel9: TcxLabel
              Left = 10
              Top = 58
              AutoSize = False
              Caption = 'Bairro:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 83
              AnchorX = 93
            end
            object cxLabel39: TcxLabel
              Left = 10
              Top = 150
              AutoSize = False
              Caption = 'Ref. ao Ano de:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 83
              AnchorX = 93
            end
            object chkImpSomenteNaoEmitidas312: TcxCheckBox
              Left = 337
              Top = 146
              AutoSize = False
              Caption = 'Somente p/ as Unidades que ainda n'#227'o foram emitidas ....'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 6
              Height = 27
              Width = 348
            end
            object edAno312: TcxSpinEdit
              Left = 95
              Top = 146
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
              TabOrder = 5
              Value = 2012
              Height = 27
              Width = 68
            end
            inline frmeMultiLogradouro312: TfrmeMultiLogradouro
              Left = 95
              Top = 102
              Width = 666
              Height = 28
              TabOrder = 1
              ExplicitLeft = 95
              ExplicitTop = 102
              ExplicitWidth = 666
              inherited sbMultiLograd: TSpeedButton
                Left = 638
                OnClick = frmeMultiLogradouro312sbMultiLogradClick
                ExplicitLeft = 638
              end
              inherited edMultiLograd: TcxTextEdit
                ExplicitWidth = 640
                Width = 640
              end
            end
            inline frmeBairro312: TfrmeBairro
              Left = 95
              Top = 54
              Width = 486
              Height = 29
              TabOrder = 0
              ExplicitLeft = 95
              ExplicitTop = 54
              ExplicitWidth = 486
              ExplicitHeight = 29
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg308'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Label1: TLabel
              Left = 672
              Top = 56
              Width = 41
              Height = 16
              Caption = 'Label1'
            end
            object pcRel308: TcxPageControl
              Left = 0
              Top = 0
              Width = 791
              Height = 206
              Align = alTop
              TabOrder = 0
              Properties.ActivePage = tsRel308_1
              Properties.CustomButtons.Buttons = <>
              LookAndFeel.Kind = lfStandard
              ClientRectBottom = 202
              ClientRectLeft = 4
              ClientRectRight = 787
              ClientRectTop = 27
              object tsRel308_1: TcxTabSheet
                Caption = 'Detalhado'
                ImageIndex = 0
                object cxLabel92: TcxLabel
                  Left = 18
                  Top = 117
                  AutoSize = False
                  Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 147
                  AnchorX = 165
                end
                object cxLabel93: TcxLabel
                  Left = 34
                  Top = 82
                  AutoSize = False
                  Caption = 'Remessa:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 131
                  AnchorX = 165
                end
                object chkQuebraRelSUO308_1: TcxCheckBox
                  Left = 166
                  Top = 147
                  Caption = 'Quebrar p/ Sub-Unid. Or'#231'ament'#225'ria ...'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 3
                end
                object cxLabel94: TcxLabel
                  Left = 3
                  Top = 48
                  AutoSize = False
                  Caption = 'Entid. Financeira (Banco):'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 162
                  AnchorX = 165
                end
                object cxLabel95: TcxLabel
                  Left = 17
                  Top = 11
                  AutoSize = False
                  Caption = 'Unidade Gestora:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 148
                  AnchorX = 165
                end
                object cbRemessa308_1: TcxComboBox
                  Left = 166
                  Top = 78
                  ParentFont = False
                  Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
                  Properties.OnPopup = cbVinculo22PropertiesPopup
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 2
                  Width = 150
                end
              end
              object tsRel308_2: TcxTabSheet
                Caption = 'Resumido'
                ImageIndex = 1
                object cxLabel97: TcxLabel
                  Left = 32
                  Top = 52
                  AutoSize = False
                  Caption = 'Unidade Gestora:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 101
                  AnchorX = 133
                end
                object rbOpRelMod308_2_1: TcxRadioButton
                  Tag = 7
                  Left = 32
                  Top = 106
                  Width = 90
                  Height = 17
                  Caption = 'Modelo 1'
                  Checked = True
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 16512
                  Font.Height = -15
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                  TabStop = True
                  OnClick = rbOpRel301Enter
                  OnEnter = rbOpRel301Enter
                  ParentBackground = False
                end
                object rbOpRelMod308_2_2: TcxRadioButton
                  Tag = 7
                  Left = 136
                  Top = 106
                  Width = 88
                  Height = 17
                  Caption = 'Modelo 2'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = 16512
                  Font.Height = -15
                  Font.Name = 'Calibri'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                  OnClick = rbOpRel301Enter
                  OnEnter = rbOpRel301Enter
                  ParentBackground = False
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg309'
            object cxLabel108: TcxLabel
              Left = 8
              Top = 26
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 86
              AnchorX = 94
            end
            object cxLabel109: TcxLabel
              Left = 8
              Top = 60
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 86
              AnchorX = 94
            end
            object cbOpcao309: TcxComboBox
              Left = 96
              Top = 60
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'EM ABERTO'
                'QUITADAS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Text = 'TODAS'
              Width = 176
            end
            inline frmePeriodoDt309: TfrmePeriodoDt
              Left = 92
              Top = 26
              Width = 248
              Height = 28
              TabOrder = 0
              ExplicitLeft = 92
              ExplicitTop = 26
              ExplicitWidth = 248
              inherited edDtIni: TcxDateEdit
                Left = 3
                ExplicitLeft = 3
              end
              inherited cxLabel61: TcxLabel
                Left = 115
                ExplicitLeft = 115
                ExplicitWidth = 16
                Width = 16
                AnchorX = 131
              end
              inherited edDtFim: TcxDateEdit
                Left = 133
                ExplicitLeft = 133
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg310'
            object cxLabel96: TcxLabel
              Left = 0
              Top = 42
              AutoSize = False
              Caption = 'Distrito:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 75
              AnchorX = 75
            end
            inline frmeMultiBairro310: TfrmeMultiBairro
              Left = 76
              Top = 82
              Width = 602
              Height = 31
              TabOrder = 2
              ExplicitLeft = 76
              ExplicitTop = 82
            end
            object cxLabel45: TcxLabel
              Left = 0
              Top = 84
              AutoSize = False
              Caption = 'Bairro(s):'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 75
              AnchorX = 75
            end
            inline frmeDistrito310: TfrmeDistrito
              Left = 77
              Top = 40
              Width = 494
              Height = 33
              TabOrder = 0
              ExplicitLeft = 77
              ExplicitTop = 40
              ExplicitHeight = 33
            end
            object cbSituacao310: TcxComboBox
              Left = 76
              Top = 121
              AutoSize = False
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'SEM APRECIA'#199#195'O'
                'DEFERIDO'
                'INDEFERIDO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 4
              Text = 'TODAS'
              Height = 25
              Width = 208
            end
            object cxLabel50: TcxLabel
              Left = 0
              Top = 123
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 75
              AnchorX = 75
            end
            inline frmePeriodoDt310: TfrmePeriodoDt
              Left = 77
              Top = 161
              Width = 274
              Height = 28
              TabOrder = 6
              ExplicitLeft = 77
              ExplicitTop = 161
              inherited cxLabel61: TcxLabel
                AnchorX = 140
              end
            end
            object cxLabel51: TcxLabel
              Left = 0
              Top = 164
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 75
              AnchorX = 75
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg311'
            object cxLabel20: TcxLabel
              Left = 8
              Top = 20
              AutoSize = False
              Caption = 'Distrito:'
              ParentColor = False
              ParentFont = False
              Style.Color = 15987944
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 120
              AnchorX = 128
            end
            inline frmeDistrito311: TfrmeDistrito
              Left = 129
              Top = 16
              Width = 494
              Height = 33
              TabOrder = 1
              ExplicitLeft = 129
              ExplicitTop = 16
              ExplicitHeight = 33
            end
            object cxLabel21: TcxLabel
              Left = 8
              Top = 60
              AutoSize = False
              Caption = 'Bairro(s):'
              ParentColor = False
              ParentFont = False
              Style.Color = 15987944
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 120
              AnchorX = 128
            end
            inline frmeMultiBairro311: TfrmeMultiBairro
              Left = 128
              Top = 58
              Width = 602
              Height = 31
              TabOrder = 3
              ExplicitLeft = 128
              ExplicitTop = 58
            end
            object edMesAno311: TcxMaskEdit
              Left = 128
              Top = 106
              AutoSize = False
              ParentFont = False
              Properties.AlwaysShowBlanksAndLiterals = True
              Properties.EditMask = '99/9999;0; '
              Properties.MaxLength = 0
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 4
              Text = '      '
              OnExit = edMesAno311Exit
              Height = 25
              Width = 85
            end
            object cxLabel3: TcxLabel
              Left = 8
              Top = 108
              AutoSize = False
              Caption = 'Referente ao M'#234's/Ano:'
              ParentColor = False
              ParentFont = False
              Style.Color = 15987944
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clBlack
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 120
              AnchorX = 128
            end
          end
        end
      end
    end
    object tsRelDoctos: TcxTabSheet
      Caption = '&4 - Documentos'
      ImageIndex = 3
      object gbOpGrupo4: TGroupBox
        Left = 0
        Top = 0
        Width = 795
        Height = 336
        Align = alTop
        Caption = ' Op'#231#245'es: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 0
        object rbOpRel401: TcxRadioButton
          Left = 7
          Top = 30
          Width = 375
          Height = 17
          Caption = '01 - Fatura Mensal ...'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel402: TcxRadioButton
          Tag = 1
          Left = 7
          Top = 61
          Width = 375
          Height = 17
          Caption = '02 - Fatura Avulsa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Visible = False
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel403: TcxRadioButton
          Tag = 2
          Left = 7
          Top = 93
          Width = 375
          Height = 17
          Caption = '03 - Declara'#231#227'o de Quita'#231#227'o Anual de D'#233'bito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 336
        Width = 795
        Height = 237
        Align = alTop
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object nbDadosRel4: TNotebook
          Left = 2
          Top = 18
          Width = 791
          Height = 217
          Align = alClient
          Color = 14938356
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg1'
            object sbMsgContraCheque411: TSpeedButton
              Tag = 3
              Left = 684
              Top = 132
              Width = 26
              Height = 28
              Hint = 'Seleciona a Mensagem p/ o Contra-Cheque'
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
              ParentShowHint = False
              ShowHint = True
            end
            object cxLabel61: TcxLabel
              Left = 8
              Top = 60
              AutoSize = False
              Caption = 'Bairro:'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 109
              AnchorX = 117
            end
            object cxLabel62: TcxLabel
              Left = 8
              Top = 99
              AutoSize = False
              Caption = 'Logradouro:'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.TextColor = clRed
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 109
              AnchorX = 117
            end
            object edMsgFatura411: TcxTextEdit
              Tag = 3
              Left = 118
              Top = 134
              Hint = 
                'Digite a Mensagem p/ o Contra-Cheque ou selecione uma existente ' +
                '...'
              AutoSize = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 4
              Height = 25
              Width = 566
            end
            object cxLabel64: TcxLabel
              Left = 8
              Top = 138
              AutoSize = False
              Caption = 'Mensagem:'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = 15987944
              Style.Font.Height = -11
              Style.Font.Name = 'Arial'
              Style.Font.Style = []
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 109
              AnchorX = 117
            end
            object cbTipoFatura401: TcxComboBox
              Left = 118
              Top = 170
              AutoSize = False
              ParentFont = False
              Properties.Items.Strings = (
                'A - S/ C'#243'digo de Barras (Mod. 1)'
                'B - S/ C'#243'digo de Barras (Mod. 2)'
                'C - C/ C'#243'digo de Barras')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWhite
              Style.Font.Height = -16
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 6
              Text = 'A - S/ C'#243'digo de Barras (Mod. 1)'
              Height = 28
              Width = 262
            end
            object cxLabel66: TcxLabel
              Left = 8
              Top = 174
              AutoSize = False
              Caption = 'Tipo de Fatura:'
              ParentColor = False
              ParentFont = False
              Style.Color = clWindow
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 109
              AnchorX = 117
            end
            inline frmeBairro401: TfrmeBairro
              Left = 118
              Top = 56
              Width = 490
              Height = 29
              TabOrder = 0
              ExplicitLeft = 118
              ExplicitTop = 56
              ExplicitWidth = 490
              ExplicitHeight = 29
              inherited sb1: TSpeedButton
                Left = 53
                Top = -1
                OnClick = frmeBairro401sb1Click
                ExplicitLeft = 53
                ExplicitTop = -1
              end
              inherited edId: TcxMaskEdit
                Top = 0
                OnExit = frmeBairro1edIdExit
                ExplicitTop = 0
                ExplicitWidth = 53
                Width = 53
              end
              inherited edDescricao: TcxTextEdit
                Top = 0
                ExplicitTop = 0
              end
            end
            inline frmeMultiLogradouro401: TfrmeMultiLogradouro
              Left = 118
              Top = 95
              Width = 602
              Height = 28
              TabOrder = 3
              ExplicitLeft = 118
              ExplicitTop = 95
              inherited sbMultiLograd: TSpeedButton
                OnClick = frmeMultiLogradouro401sbMultiLogradClick
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg2'
            object cxLabel71: TcxLabel
              Left = 11
              Top = 35
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 161
            end
            object cxLabel72: TcxLabel
              Left = 11
              Top = 75
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 161
            end
            object cxLabel4: TcxLabel
              Left = 11
              Top = 112
              AutoSize = False
              Caption = 'Tipo de Previd'#234'ncia:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 161
            end
            object cbTipoPrevid42: TcxComboBox
              Left = 161
              Top = 108
              ParentFont = False
              Properties.Items.Strings = (
                'FEDERAL (INSS)'
                'ESTADUAL (IGEPREV)'
                'MUNICIPAL (I.P.M)')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 5
              Text = 'FEDERAL (INSS)'
              Width = 198
            end
            object cxLabel101: TcxLabel
              Left = 11
              Top = 152
              AutoSize = False
              Caption = 'Op'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 161
            end
            object cbOpcoesGPS42: TcxComboBox
              Left = 161
              Top = 148
              ParentFont = False
              Properties.Items.Strings = (
                'COMPLETA'
                'SOMENTE EMPREGADOS'
                'SOMENTE PATRONAL')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Text = 'COMPLETA'
              Width = 198
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg3'
            object cxLabel131: TcxLabel
              Left = 8
              Top = 56
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 146
              AnchorX = 154
            end
            object cxLabel132: TcxLabel
              Left = 8
              Top = 93
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 146
              AnchorX = 154
            end
            object chkSomenteSemCC403: TcxCheckBox
              Left = 154
              Top = 130
              Caption = 'Somente para os S/ Contra-Corente ...'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 2
            end
            object chkOrdemUnidLotac403: TcxCheckBox
              Left = 445
              Top = 130
              Caption = 'Por Ordem de Unidade de Lota'#231#227'o ...'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
            end
          end
        end
      end
    end
    object tsRelOutros: TcxTabSheet
      Caption = '&5 - Outros'
      ImageIndex = 4
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object Panel: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 610
    Width = 799
    Height = 45
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 11783049
    ParentBackground = False
    TabOrder = 1
    VerticalAlignment = taAlignTop
    object btnSetup: TBitBtn
      Tag = 2
      Left = 2
      Top = 2
      Width = 120
      Height = 36
      Caption = '&Configurar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F0000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F0000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000007F
        7F7F0000000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00000000000000000000007F7F7F000000000000FFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000
        00000000000000007F7F7FBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000
        00000000007F7F7FBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        00007F7F7FBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBFFFFFFFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFFBFBFBFFFFFFFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000000000000000000000007F
        7F7FBFBFBF0000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000007F7F7FBF
        BFBF0000007F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFFFFFFFFFFFFFBFBFBFFFFFFFBFBF
        BFBFBFBFFFFFFFBFBFBFBFBFBF0000000000000000000000007F7F7FBFBFBF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000000000000000000000007F7F7FBFBFBF0000007F
        7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000000000000000007F7F7F000000000000FFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFFFFFFF
        FFFFFFFFFFFFFF0000000000000000007F7F7F000000000000FFFFFFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF000000007F7F00007F00007F000000000000BFBFBFBFBFBFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000007F7F00007F00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFBFBFBFFFFFFF0000
        00007F7F00007F00007FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        7F7F7F7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000007F
        7F00007F00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F
        7F7F7F000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000007F7F0000
        7F00007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F
        7F7F7F7F7F7F7F7F7F000000FF0000FF0000000000000000007F7F00007F0000
        7FFF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F
        7F7F7F7F7F7F000000000000000000000000007F7F007F7F00007F00007FFF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        BFBFBF0000007F7F7F7F7F7F000000007F7F007F7F00007F00007FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBF7F7F7F7F7F7F7F7F7F00000000007F00007FFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F000000000000BFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFBFBFBFBFBFBF7F7F7F7F7F7F0000000000000000000000000000
        007F7F7FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFF7F00007F0000FFFFFFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7FFFFFFF7F00007F00007F00007F00007F00007F00007F00007F0000FFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFF7F00007F00007F0000FFFFFFBFBFBFBFBFBF7F7F7F7F7F7FBFBFBFFFFF
        FF7F00007F00007F00007F00007F00007F00007F00007F00007F0000FFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFF7F00007F00007F00007F00007F0000FFFFFFBFBFBFFFFFFF7F00007F00
        007F00007F00007F00007F00007F00007F00007F00007F00007F0000FFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFF7F00007F00007F00007F00007F00007F00007F00007F00007F00007F00
        007F00007F00007F00007F00007F00007F00007F00007F00007F0000FFFFFF00
        00007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnSetupClick
    end
    object btnVisualizar: TBitBtn
      Tag = 1
      Left = 434
      Top = 2
      Width = 120
      Height = 36
      Caption = '&Visualizar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFACCCC
        CC959595929292C4C4C4F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFECEBE892908ABBBABAC5C5C5FEFEFEFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDB7B7B7838383A4A4
        A4E4E4E4A3A3A37B7B7B7A7A7AA2A2A2D0D0D0F9F9F9FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFDFDFF5F86FF8A93A4CDC7C2888887BFBFBFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCD7D7D7A1A1A18B8B8BC0C0C0F8F8F8FFFF
        FFFFFFFFA9A9A98484848484847E7E7E7979797C7C7CABABABDDDDDDFDFDFDFF
        FFFFFCFCFF5F88FF2A76FF4BADFFE0E6E4CFCBC7B7B7B7FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1F1F1C1C1C18A8A8AA4A4A4DCDCDCFFFFFFFFFFFFFFFFFFFCFC
        FCFEFEFEABABAB8989898383838383838686868484847E7E7E777777848484D1
        D1D45682FB2E79FF56B4FF68D5FF5BBDFFAEAEAEA09E99FFFFFFFFFFFFFEFEFE
        DDDDDDADADAD8F8F8FBFBFBFF5F5F5FFFFFFFFFFFFFEFEFEFBFBFBF9F9F9F7F7
        F7F7F7F7AEAEAE8E8E8E7E7E7E6E6E6E7474747D7D7D868686909090B4B6B941
        69E82F7BFF59B7FF6CD6FF5FC0FF3B8FFF4171FDD5D3CFFFFFFFFFFFFFA1A1A1
        A5A5A5DADADAFFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF9F9F9F7F7F7F5F5F5F4F4
        F4F7F7F7AEAEAE9494948B8B8B747474666666666666767676ADACAB3B5ADB30
        7AFC5AB9FF6CD6FF5EBFFF3E8EFF3264F4D2D6E6F9F9F9FFFFFFFFFFFF939393
        FFFFFFFFFFFFFFFFFFFEFEFEFBFBFBF9F9F9F7F7F7F7F7F7F5F5F5EDEDEDCBCB
        CBA6A6A69C9C9CA5A5A5B4B4B4BEBEBEB9B9B99E9E9EB0B0B09591885B72974A
        ABF46DD9FF5DBEFF3D8DFF3362F2ACAFBD7D7D7D797979FFFFFFFFFFFF949494
        FCFCFCFEFEFEFBFBFBFAFAFAF8F8F8F8F8F8F2F2F2D7D7D7B7B7B7A1A1A1C5C5
        C5E3E3E3A0A1A37B7D827A7E86777C826C6F7388898AB5B5B5878786E2D9D279
        A4B54DB1F83A8BFF3261EDA8ABB78C8C8C898989737373FFFFFFFFFFFF959595
        F9F9F9FAFAFAF9F9F9F7F7F7E3E3E3C6C6C6ADADADBDBDBDD6D6D6EEEEEED3D3
        D4797F85B2A793E5C796F0C98BF0C88CEFCD9DBBB09F4C5259909092EEEDECEA
        E1D84B70AA2D59E2A2A4AF6161617A7A7A8D8D8D727272FFFFFFFFFFFF989898
        F6F6F6ECECECD4D4D4BBBBBBC2C2C2D6D6D6EAEAEAEBEBEBEBEBEBD5D5D68183
        87E4C593F4CC8CECC88EEAC68FEBCB97EED3A3EFC68AEECD9964676D9A9B9C92
        91909E998BAEB0B89797979393938D8D8D929292737373FFFFFFFFFFFF999999
        C8C8C8C8C8C8D8D8D8EAEAEAEDEDEDE9E9E9E6E6E6E5E5E5EAEAEA86898EE4C7
        98F2D196EBCC96EBCC95EACA93E9C88BE8C286EDCF9FF0D19BEECC9B4D5159B4
        B4B4B9B9B88F8F8F6A6A6A6A6A6A7C7C7C8D8D8D757575FFFFFFFFFFFF9C9C9C
        E4E4E4EFEFEFEBEBEBE8E8E8E6E6E6E4E4E4E4E4E4E6E6E6BEBFC0B0A48FF7D6
        9FEFD4A1EFD7A3EED4A3EDD29FECCF9AEBCC94E9C589EED0A3F1CC8DB1AA9BA2
        A3A4B6B6B6A1A1A1A1A1A19494948080806B6B6B757575FFFFFFFFFFFF9D9D9D
        E6E6E6E8E8E8E6E6E6E5E5E5E4E4E4E0E0E0DEDEDEE7E7E79DA0A4DCC79CF2DA
        A9F2DCAEF1DCAFF2DCAEF1DBABF0D9A8EDD29FECCD97EAC98CF3D8AEEDCEA083
        8589CDCBCDAEAAADACA7ABA7A4A7A1A0A1A1A1A1777777FFFFFFFFFFFF9D9D9D
        E1E1E1E6E6E6E3E3E3E1E1E1DEDEDEDBDBDBD9D9D9E7E7E78D9095F5DDA9F6E5
        BCF4E4BDF5E7C4F4E6BFF5E3B7F1DDAFF0DAA8EED39FEDCD94F0D4A7F4D19887
        8B90C9CAC95BBC6E4CC25F72BF7BB9B7B8A9A9A9767676FFFFFFFFFFFF9E9E9E
        E0E0E0E2E2E2DEDEDEDBDBDBD9D9D9D6D6D6D4D4D4E7E7E792959BFAE2B3F8ED
        CBFAEFD4FAEFCFF7ECCAF5E8C2F4E2B9F2DDAFF0D9A7EED19BF1D5A4F4D09A8B
        8F94C3C6C442D46534D65219C02F85C28AB3B1B38A8A8AFFFFFFFFFFFFA7A7A7
        CCCCCCE0E0E0DBDBDBD6D6D6D3D3D3D9D9D9DDDDDDD4D4D4A3A5A8D9CAA4FBF2
        D8F9F3DBFAF8EAFBF4DFFAEFCDF6EBC6F4E1B6F1DAABEED39FF3D6A5E6CC9F95
        969AF3F2F3ACABAC84AF8C90BD96DBDADA8B8A8BCACACAFFFFFFFFFFFFE8E8E8
        A2A2A2A1A1A1B4B4B4D3D3D3F8F8F8FFFFFF7878787E7F7EA9AAABABA393F6F3
        D7F9F8ECFBFAF8FBFBF0F7EFD1F5ECCCF4E2B8F2DCAEF0D5A3FADAA0AAA192C1
        C2C3F1F1F1F0EFEFF5F2F4EEECEE969596A9A9A9FEFEFEFFFFFFFFFFFFFFFFFF
        FDFDFDE6E6E6CCCCCCAFAFAF969696A5A5A56A6C6DFFE1C3EADDD0A19FA2E0D8
        BAF5F5E0F8F8EFF4F3E3F2ECD4F0E6C4EFDEB5EDD7AAF2D8A0E4CB9C7E8288F4
        F4F4F4F4F4F4F4F4C3C3C3818181BABABAFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDEDEDE7C7A79FFE8CDFFE7CEF5EBDF9D9C
        9BEAE1C5FDFBE3FAF6E1F3EDD1EDE1BCEDD9ACF2D8A3DEC69B808285D9DADAE6
        E6E6B7B7B7838383A5A5A5EAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D79C948EFFE9D1FFE4CBFFE9D5F3E8
        DEA3A2A4B2AC9BE3D6B4FFEDBEFDE8B7E1CDA5AEA4937E8184B9B9BAA0A0A094
        9494BFBFBFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B4B4C2B6ACFFECD7FFE7D1FFE6CFFFE9
        D5FAECDFD3CBC5A6A4A58B8C8F87888C9B999ABFB7AFD4CAC0DCDCDDF3F3F3FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFEFEFE8F8F8FF2E3D5FFEDDDFFEAD8FFE9D5FFE8
        D2FFE7D2FFEBD9FFEEDFFFEFE0FFEEDEFFECD9FFE9D0B7ABA1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFE0E0E0989593FFF7E9FFEFE1FFEEDEFFECDCFFEB
        D9FFEAD6FFE8D3FFE7D1FFE6CEFFE4CBFFE3CAFFE8CBB2AFADFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFA6A6A7D7D1CBFFF6ECFFF2E7FFF1E5FFF0E2FFEE
        DFFFEDDCFFEBDAFFEAD7FFE9D4FFE7D2FFE8D0E1CCB8D1D1D2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFE3E3E3979897FFFDF8FFF7F0FFF6EEFFF4EBFFF3E8FFF2
        E6FFF0E3FFEFE0FFEDDDFFECDBFFECD8FFEFDAAFA8A1FCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFBFB9A9A9AE6E5E4FFFFFDFFFAF7FFF9F4FFF8F1FFF6EFFFF5
        ECFFF3E9FFF2E7FFF1E4FFEFE1FFF0E0EBDBCCC2C2C1FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEBABABAC0C0C0FFFFFFFFFFFFFFFFFEFFFCFCFFFBF8FFFAF5FFF8
        F2FFF7F0FFF5EDFFF4EAFFF4E9FFF8EBABA7A3FCFCFCFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFD7D7D7A5A5A5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFB
        FAFFFAF6FFF9F3FFF7F2FFFDF4BCB7B0E5E5E5FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF9F9F9E4E4E4D3D3D3C6C6C6C7C7C7C7C7C7C5C5C5D3D3D3E7E7E7FDFC
        FCFFFFFFFFFFFFFFFFFFC8C5C2D1D1D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBECECECD6D6D6C1C1
        C1B6B6B6B6B6B6B1B1B1CECECEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      TabOrder = 1
      OnClick = btnVisualizarClick
    end
    object btnImprimir: TBitBtn
      Tag = 2
      Left = 554
      Top = 2
      Width = 120
      Height = 36
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
      TabOrder = 2
      OnClick = btnVisualizarClick
    end
    object btnSair: TBitBtn
      Tag = 2
      Left = 674
      Top = 2
      Width = 120
      Height = 36
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
      TabOrder = 3
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
    Left = 48
    Top = 512
  end
end
