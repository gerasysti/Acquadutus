inherited frmPrintRelFinanceiros: TfrmPrintRelFinanceiros
  Left = 126
  Top = 38
  Caption = 'Cargo/Fun'#231#227'o com '
  ClientHeight = 650
  ClientWidth = 796
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitLeft = 126
  ExplicitTop = 38
  ExplicitWidth = 812
  ExplicitHeight = 688
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 75
    Top = 19
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object Page1: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 790
    Height = 603
    ActivePage = tsRelServid
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoSort]
    ParentBackground = False
    ParentFont = False
    Style = 9
    TabOrder = 0
    ClientRectBottom = 603
    ClientRectRight = 790
    ClientRectTop = 23
    object tsRelTab: TcxTabSheet
      Caption = '&1 - Tabelas'
      ImageIndex = 0
      object gbOpGrupo1: TGroupBox
        Left = 0
        Top = 0
        Width = 790
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
        object rbOpRel103: TcxRadioButton
          Tag = 103
          Left = 12
          Top = 84
          Width = 375
          Height = 17
          Caption = 'Sub-Unidades Or'#231'ament'#225'rias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel101: TcxRadioButton
          Tag = 101
          Left = 12
          Top = 24
          Width = 375
          Height = 17
          Caption = 'Unides Gestoras'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel102: TcxRadioButton
          Tag = 102
          Left = 12
          Top = 54
          Width = 375
          Height = 17
          Caption = 'Unidades Or'#231'ament'#225'rias'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel104: TcxRadioButton
          Tag = 104
          Left = 12
          Top = 114
          Width = 375
          Height = 17
          Caption = 'Estrutura Organizacional'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel105: TcxRadioButton
          Tag = 105
          Left = 12
          Top = 144
          Width = 375
          Height = 17
          Caption = 'Unidades de Lota'#231#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel106: TcxRadioButton
          Tag = 106
          Left = 12
          Top = 174
          Width = 375
          Height = 17
          Caption = 'Departamentos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel107: TcxRadioButton
          Tag = 107
          Left = 12
          Top = 204
          Width = 375
          Height = 17
          Caption = 'Cargos/Fun'#231#245'es'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel108: TcxRadioButton
          Tag = 108
          Left = 12
          Top = 234
          Width = 375
          Height = 17
          Caption = 'Cargos/Fun'#231#245'es e Sal'#225'rios'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel109: TcxRadioButton
          Tag = 109
          Left = 12
          Top = 264
          Width = 375
          Height = 17
          Caption = 'Eventos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel110: TcxRadioButton
          Tag = 110
          Left = 12
          Top = 295
          Width = 375
          Height = 17
          Caption = 'Estados Funcionais'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object gbDadosRel1: TGroupBox
        Left = 0
        Top = 336
        Width = 790
        Height = 237
        Align = alTop
        Caption = ' Dados p/ o relat'#243'rio: '
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        object nbDadosRel1: TNotebook
          Left = 2
          Top = 18
          Width = 786
          Height = 217
          Align = alClient
          Color = 14938356
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          PageIndex = 6
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg1'
            object rbGrupo1OrdNum: TcxRadioButton
              Tag = 3
              Left = 12
              Top = 20
              Width = 375
              Height = 17
              Caption = 'Ordem Num'#233'rica '
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              TabStop = True
              OnEnter = rbOpRel301Enter
              ParentBackground = False
            end
            object rbGrupo1OrdAlfa: TcxRadioButton
              Tag = 3
              Left = 12
              Top = 52
              Width = 375
              Height = 17
              Caption = 'Ordem Alfab'#233'tica'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnEnter = rbOpRel301Enter
              ParentBackground = False
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg2'
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
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg4'
            object sbTipoUL1: TSpeedButton
              Tag = 1051
              Left = 164
              Top = 32
              Width = 26
              Height = 26
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
              OnClick = sbSubUnidOrcamsClick
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
              Left = 24
              Top = 36
              Caption = 'Tipo de Unidade:'
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
              Properties.OnChange = fmeUnidGestora21edIdPropertiesChange
              ShowHint = True
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 0
              Text = '   '
              OnExit = edIdTipoUL1Exit
              OnKeyDown = edSubUnidOrcamsKeyDown
              OnKeyPress = edIdTipoUL1KeyPress
              Height = 29
              Width = 43
            end
            object edDescrTipoUL1: TcxTextEdit
              Left = 189
              Top = 32
              TabStop = False
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
              TabOrder = 1
              Text = 'Deixe em branco p/ todas ...'
              Width = 297
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg5'
            object cxGroupBox5: TcxGroupBox
              Left = 16
              Top = 24
              Caption = ' Tipo: '
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
              object rbTipoEventoT: TcxRadioButton
                Left = 16
                Top = 32
                Width = 113
                Height = 17
                Caption = 'Todos'
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
              object rbTipoEventoV: TcxRadioButton
                Left = 16
                Top = 68
                Width = 113
                Height = 17
                Caption = 'Vencimentos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object rbTipoEventoD: TcxRadioButton
                Left = 16
                Top = 104
                Width = 113
                Height = 17
                Caption = 'Descontos'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -17
                Font.Name = 'Calibri'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
              end
            end
            object cxGroupBox6: TcxGroupBox
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
              object rbEventoOrdem1: TcxRadioButton
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
              object rbEventoOrdem2: TcxRadioButton
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
            Caption = 'pg6'
            ExplicitWidth = 0
            ExplicitHeight = 0
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg7'
            inline frmeMultiCategFunc108: TfrmeMultiCategFunc
              Left = 152
              Top = 24
              Width = 600
              Height = 30
              TabOrder = 0
              ExplicitLeft = 152
              ExplicitTop = 24
              ExplicitWidth = 600
              inherited sbCategFuncional: TSpeedButton
                Left = 557
                ExplicitLeft = 557
              end
              inherited edMultiItens: TcxTextEdit
                Hint = 'Informe ou deixe em branco p/ todas ...'
                ExplicitWidth = 559
                Width = 559
              end
            end
            object cxLabel124: TcxLabel
              Left = 21
              Top = 28
              Caption = 'Categorias Funcionais:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
            object cxLabel125: TcxLabel
              Left = 21
              Top = 84
              Caption = 'Tipos de Cargos (TCM): '
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
            inline frmeMultiTipoCargoTCM108: TfrmeMultiTipoCargoTCM
              Left = 152
              Top = 80
              Width = 610
              Height = 33
              TabOrder = 3
              ExplicitLeft = 152
              ExplicitTop = 80
              inherited sbTipoCargoTCM: TSpeedButton
                Left = 557
                ExplicitLeft = 557
              end
              inherited edMultiItens: TcxTextEdit
                ExplicitWidth = 559
                Width = 559
              end
            end
            object cbSituacao108: TcxComboBox
              Left = 151
              Top = 136
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'ATIVOS '
                'EXTINTOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 4
              Text = 'TODOS'
              Width = 212
            end
            object cxLabel126: TcxLabel
              Left = 21
              Top = 140
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 128
              AnchorX = 149
            end
          end
        end
      end
    end
    object tsRelServid: TcxTabSheet
      Caption = '&2 - Servidores'
      ImageIndex = 1
      object gbOpGrupo2: TGroupBox
        Left = 0
        Top = 0
        Width = 790
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
        object rbOpRel201: TcxRadioButton
          Tag = 201
          Left = 7
          Top = 24
          Width = 375
          Height = 17
          Caption = 'Rela'#231#227'o Geral (em Ordem alfab'#233'tica) '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel202: TcxRadioButton
          Tag = 202
          Left = 7
          Top = 47
          Width = 375
          Height = 17
          Caption = 'Por Sub-Unid. Or'#231'ament'#225'ria (C. de Custos) '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel203: TcxRadioButton
          Tag = 203
          Left = 7
          Top = 71
          Width = 375
          Height = 17
          Caption = 'Por Cargo/Fun'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel204: TcxRadioButton
          Tag = 204
          Left = 7
          Top = 95
          Width = 375
          Height = 17
          Caption = 'Por Unidade de Lota'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel206: TcxRadioButton
          Tag = 206
          Left = 7
          Top = 143
          Width = 375
          Height = 17
          Caption = 'Por Estado Funcional  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel205: TcxRadioButton
          Tag = 205
          Left = 7
          Top = 119
          Width = 375
          Height = 17
          Caption = 'Por Departamento '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel207: TcxRadioButton
          Tag = 207
          Left = 391
          Top = 24
          Width = 375
          Height = 17
          Caption = 'Aniversariantes do m'#234's ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel208: TcxRadioButton
          Tag = 208
          Left = 7
          Top = 167
          Width = 375
          Height = 17
          Caption = 'Admitidos / Demitidos p/ Per'#237'odo (Geral) ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel209: TcxRadioButton
          Tag = 209
          Left = 7
          Top = 191
          Width = 375
          Height = 17
          Caption = 'Movimenta'#231#245'es p/ Per'#237'odo ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel210: TcxRadioButton
          Tag = 202
          Left = 7
          Top = 215
          Width = 375
          Height = 17
          Caption = 'Dados/Documenta'#231#227'o incompletos '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel211: TcxRadioButton
          Tag = 202
          Left = 7
          Top = 239
          Width = 375
          Height = 17
          Caption = 'Em Desvio de Fun'#231#227'o '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel289: TcxRadioButton
          Tag = 201
          Left = 391
          Top = 72
          Width = 375
          Height = 17
          Caption = 'Atestados M'#233'dicos p/ Per'#237'odo ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel299: TcxRadioButton
          Tag = 201
          Left = 391
          Top = 95
          Width = 375
          Height = 17
          Caption = 'Ficha de Cadastro Individual'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel212: TcxRadioButton
          Tag = 207
          Left = 392
          Top = 47
          Width = 375
          Height = 17
          Caption = 'Contas-Correntes p/ Dep'#243'sito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel279: TcxRadioButton
          Tag = 201
          Left = 391
          Top = 119
          Width = 375
          Height = 17
          Caption = 'Ficha de Inscri'#231#227'o no PASEP'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel281: TcxRadioButton
          Tag = 201
          Left = 391
          Top = 142
          Width = 375
          Height = 17
          Caption = 'Rela'#231#227'o p/ o T.R.E.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel282: TcxRadioButton
          Tag = 201
          Left = 391
          Top = 303
          Width = 375
          Height = 17
          Caption = 'Servidores c/ Dependentes ...'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          TabStop = True
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel213: TcxRadioButton
          Tag = 202
          Left = 7
          Top = 263
          Width = 375
          Height = 17
          Caption = 'Resumo Demonstrativo de Cargos (Vagas X Preenchidas)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object gbDadosRel2: TGroupBox
        Left = 0
        Top = 336
        Width = 790
        Height = 241
        Align = alTop
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
          Width = 786
          Height = 221
          Align = alClient
          Color = 14938356
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          PageIndex = 14
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          OnEnter = nbDadosRel2Enter
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg1'
            object cxLabel25: TcxLabel
              Left = 8
              Top = 49
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 128
              AnchorX = 136
            end
            inline fmeUnidGestora21: TfmeUnidGestora
              Left = 138
              Top = 47
              Width = 607
              Height = 27
              TabOrder = 1
              ExplicitLeft = 138
              ExplicitTop = 47
              ExplicitWidth = 607
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                Properties.OnChange = fmeUnidGestora21edIdPropertiesChange
                OnExit = fmeUnidGestora21edIdExit
              end
              inherited edDescricao: TcxTextEdit
                Text = 'Deixe em branco p/ todas ...'
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            object cxLabel120: TcxLabel
              Left = 8
              Top = 139
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 128
              AnchorX = 136
            end
            object cbVinculo201: TcxComboBox
              Left = 137
              Top = 136
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
              Width = 149
            end
            object cxLabel121: TcxLabel
              Left = 392
              Top = 139
              AutoSize = False
              Caption = 'Tipo de Relat'#243'rio:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 125
              AnchorX = 517
            end
            object cbTipoRel201: TcxComboBox
              Left = 519
              Top = 136
              ParentFont = False
              Properties.Items.Strings = (
                'ANAL'#205'TICO'
                'RESUMIDO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 6
              Text = 'ANAL'#205'TICO'
              Width = 212
            end
            inline frmeMultiSubUnidOrcam21: TfrmeMultiSubUnidOrcam
              Left = 138
              Top = 93
              Width = 602
              Height = 28
              TabOrder = 2
              ExplicitLeft = 138
              ExplicitTop = 93
            end
            object cxLabel79: TcxLabel
              Left = 8
              Top = 97
              AutoSize = False
              Caption = 'Sub. Unid. a Suprimir:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 128
              AnchorX = 136
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg2'
            inline fmeUnidGestora22: TfmeUnidGestora
              Left = 155
              Top = 8
              Width = 608
              Height = 27
              TabOrder = 5
              ExplicitLeft = 155
              ExplicitTop = 8
              ExplicitWidth = 608
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora22edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            object cxLabel26: TcxLabel
              Left = 5
              Top = 12
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            object cxLabel27: TcxLabel
              Left = 5
              Top = 41
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            object cxLabel28: TcxLabel
              Left = 5
              Top = 70
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            object cxLabel29: TcxLabel
              Left = 5
              Top = 99
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            object cxLabel30: TcxLabel
              Left = 5
              Top = 129
              AutoSize = False
              Caption = 'Estados Funcionais:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            object cbVinculo22: TcxComboBox
              Left = 154
              Top = 154
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 12
              Text = 'TODOS'
              Width = 159
            end
            object cxLabel37: TcxLabel
              Left = 5
              Top = 158
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            object cxLabel38: TcxLabel
              Left = 320
              Top = 158
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 58
              AnchorX = 378
            end
            object cbSituac22: TcxComboBox
              Left = 380
              Top = 154
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 15
              Text = 'TODAS'
              Width = 198
            end
            object cxLabel41: TcxLabel
              Left = 5
              Top = 186
              AutoSize = False
              Caption = 'Per'#237'odo de Admiss'#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            object cxLabel42: TcxLabel
              Left = 429
              Top = 188
              AutoSize = False
              Caption = 'Tipo de Informa'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 122
              AnchorX = 551
            end
            object rbRel22_1: TcxRadioButton
              Left = 555
              Top = 188
              Width = 85
              Height = 17
              Caption = 'Pessoais'
              Color = 14938356
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -17
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 17
              ParentBackground = False
            end
            object rbRel22_2: TcxRadioButton
              Left = 647
              Top = 188
              Width = 99
              Height = 17
              Caption = 'Funcionais'
              Checked = True
              Color = 14938356
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -17
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              TabOrder = 18
              TabStop = True
              ParentBackground = False
            end
            inline frmeMultiSubUnidOrcam22: TfrmeMultiSubUnidOrcam
              Left = 155
              Top = 37
              Width = 608
              Height = 28
              TabOrder = 6
              ExplicitLeft = 155
              ExplicitTop = 37
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            inline frmeMultiUnidLotacao22: TfrmeMultiUnidLotacao
              Left = 154
              Top = 66
              Width = 609
              Height = 28
              TabOrder = 7
              ExplicitLeft = 154
              ExplicitTop = 66
              ExplicitWidth = 609
              inherited sbUnidLotacs: TSpeedButton
                Left = 568
                ExplicitLeft = 568
              end
              inherited edUnidsLotacs: TcxTextEdit
                Left = 0
                ExplicitLeft = 0
                ExplicitWidth = 569
                Width = 569
              end
            end
            inline frmeMultiCargo22: TfrmeMultiCargo
              Left = 155
              Top = 96
              Width = 608
              Height = 28
              TabOrder = 8
              ExplicitLeft = 155
              ExplicitTop = 96
              ExplicitWidth = 608
            end
            inline frmeMultiEstFuncional22: TfrmeMultiEstFuncional
              Left = 155
              Top = 125
              Width = 608
              Height = 28
              TabOrder = 9
              ExplicitLeft = 155
              ExplicitTop = 125
              ExplicitWidth = 608
            end
            inline frmePerAdminDt22: TfrmePeriodoDt
              Left = 155
              Top = 184
              Width = 255
              Height = 28
              TabOrder = 16
              ExplicitLeft = 155
              ExplicitTop = 184
              ExplicitWidth = 255
              inherited cxLabel61: TcxLabel [0]
                Left = 121
                ExplicitLeft = 121
                ExplicitWidth = 16
                Width = 16
                AnchorX = 137
              end
              inherited edDtIni: TcxDateEdit [1]
              end
              inherited edDtFim: TcxDateEdit
                Left = 138
                ExplicitLeft = 138
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg3'
            object cxLabel32: TcxLabel
              Left = 8
              Top = 50
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 147
              AnchorX = 155
            end
            object cxLabel33: TcxLabel
              Left = 8
              Top = 108
              AutoSize = False
              Caption = 'Estados Funcionais:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 147
              AnchorX = 155
            end
            object cxLabel34: TcxLabel
              Left = 8
              Top = 21
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 147
              AnchorX = 155
            end
            object cxLabel31: TcxLabel
              Left = 8
              Top = 79
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 147
              AnchorX = 155
            end
            object cxLabel43: TcxLabel
              Left = 8
              Top = 139
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 147
              AnchorX = 155
            end
            object cbVinculo23: TcxComboBox
              Left = 154
              Top = 136
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 10
              Text = 'TODOS'
              Width = 149
            end
            object cxLabel44: TcxLabel
              Left = 454
              Top = 139
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 56
              AnchorX = 510
            end
            object cbSituac23: TcxComboBox
              Left = 510
              Top = 136
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 12
              Text = 'TODAS'
              Width = 212
            end
            object cxLabel45: TcxLabel
              Left = 30
              Top = 169
              AutoSize = False
              Caption = 'Per'#237'odo de Admiss'#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 125
              AnchorX = 155
            end
            inline frmeMultiCargo23: TfrmeMultiCargo
              Left = 155
              Top = 19
              Width = 621
              Height = 28
              TabOrder = 5
              ExplicitLeft = 155
              ExplicitTop = 19
            end
            inline frmeMultiSubUnidOrcam23: TfrmeMultiSubUnidOrcam
              Left = 155
              Top = 48
              Width = 602
              Height = 28
              TabOrder = 6
              ExplicitLeft = 155
              ExplicitTop = 48
              inherited sbS_U_Os: TSpeedButton
                OnClick = frmeMultiSubUnidOrcam23sbS_U_OsClick
              end
            end
            inline frmeMultiUnidLotacao23: TfrmeMultiUnidLotacao
              Left = 155
              Top = 76
              Width = 606
              Height = 28
              TabOrder = 7
              ExplicitLeft = 155
              ExplicitTop = 76
              inherited sbUnidLotacs: TSpeedButton
                Top = 1
                OnClick = frmeMultiUnidLotacao23sbUnidLotacsClick
                ExplicitTop = 1
              end
              inherited edUnidsLotacs: TcxTextEdit
                Top = 1
                ExplicitTop = 1
              end
            end
            inline frmeMultiEstFuncional23: TfrmeMultiEstFuncional
              Left = 155
              Top = 104
              Width = 613
              Height = 28
              TabOrder = 8
              ExplicitLeft = 155
              ExplicitTop = 104
              inherited sbEstFuncs: TSpeedButton
                Top = 2
                ExplicitTop = 2
              end
              inherited edEstFuncs: TcxTextEdit
                Top = 2
                ExplicitTop = 2
              end
            end
            inline frmePerAdminDt23: TfrmePeriodoDt
              Left = 155
              Top = 168
              Width = 274
              Height = 28
              TabOrder = 13
              ExplicitLeft = 155
              ExplicitTop = 168
              inherited cxLabel61: TcxLabel
                Left = 125
                Top = 3
                ExplicitLeft = 125
                ExplicitTop = 3
                AnchorX = 148
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg4'
            object cxLabel35: TcxLabel
              Left = 30
              Top = 178
              AutoSize = False
              Caption = 'Per'#237'odo de Admiss'#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 125
              AnchorX = 155
            end
            object cxLabel49: TcxLabel
              Left = 8
              Top = 147
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 155
            end
            object cxLabel50: TcxLabel
              Left = 8
              Top = 27
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 155
            end
            object cxLabel51: TcxLabel
              Left = 8
              Top = 86
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 155
            end
            object cxLabel52: TcxLabel
              Left = 8
              Top = 117
              AutoSize = False
              Caption = 'Estados Funcionais:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 155
            end
            object cxLabel53: TcxLabel
              Left = 8
              Top = 56
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 155
            end
            object cbSituac24: TcxComboBox
              Left = 532
              Top = 144
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 12
              Text = 'TODAS'
              Width = 190
            end
            object cbVinculo24: TcxComboBox
              Left = 154
              Top = 144
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 10
              Text = 'TODOS'
              Width = 156
            end
            object cxLabel36: TcxLabel
              Left = 400
              Top = 147
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 131
              AnchorX = 531
            end
            inline frmeMultiUnidLotacao24: TfrmeMultiUnidLotacao
              Left = 155
              Top = 25
              Width = 606
              Height = 28
              TabOrder = 6
              ExplicitLeft = 155
              ExplicitTop = 25
            end
            inline frmeMultiSubUnidOrcam24: TfrmeMultiSubUnidOrcam
              Left = 155
              Top = 54
              Width = 602
              Height = 27
              TabOrder = 7
              ExplicitLeft = 155
              ExplicitTop = 54
              ExplicitHeight = 27
            end
            inline frmeMultiCargo24: TfrmeMultiCargo
              Left = 155
              Top = 86
              Width = 621
              Height = 28
              TabOrder = 8
              ExplicitLeft = 155
              ExplicitTop = 86
            end
            inline frmeMultiEstFuncional24: TfrmeMultiEstFuncional
              Left = 155
              Top = 116
              Width = 613
              Height = 28
              TabOrder = 9
              ExplicitLeft = 155
              ExplicitTop = 116
              inherited sbEstFuncs: TSpeedButton
                Top = -1
                ExplicitTop = -1
              end
              inherited edEstFuncs: TcxTextEdit
                Top = -1
                ExplicitTop = -1
              end
            end
            inline frmePerAdminDt24: TfrmePeriodoDt
              Left = 155
              Top = 176
              Width = 274
              Height = 28
              TabOrder = 13
              ExplicitLeft = 155
              ExplicitTop = 176
              inherited cxLabel61: TcxLabel
                AnchorX = 140
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg5'
            inline frmeMultiDepto205: TfrmeMultiDepto
              Left = 156
              Top = 11
              Width = 622
              Height = 28
              TabOrder = 0
              ExplicitLeft = 156
              ExplicitTop = 11
              ExplicitWidth = 622
              inherited sbDepto: TSpeedButton
                Left = 588
                OnClick = frmeMultiDepto1sbDeptoClick
                ExplicitLeft = 588
              end
              inherited edMultiDepto: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            object cxLabel100: TcxLabel
              Left = 8
              Top = 15
              AutoSize = False
              Caption = 'Departamento(s):'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 18
              Width = 146
              AnchorX = 154
            end
            object cxLabel102: TcxLabel
              Left = 8
              Top = 49
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 146
              AnchorX = 154
            end
            object cxLabel103: TcxLabel
              Left = 8
              Top = 116
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 146
              AnchorX = 154
            end
            object cxLabel104: TcxLabel
              Left = 8
              Top = 82
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 146
              AnchorX = 154
            end
            object cxLabel105: TcxLabel
              Left = 8
              Top = 147
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 146
              AnchorX = 154
            end
            object cbVinculo205: TcxComboBox
              Left = 156
              Top = 145
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 11
              Text = 'TODOS'
              Width = 145
            end
            object cxLabel106: TcxLabel
              Left = 367
              Top = 147
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 60
              AnchorX = 427
            end
            object cxLabel107: TcxLabel
              Left = 8
              Top = 179
              AutoSize = False
              Caption = 'Per'#237'odo de Admiss'#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 146
              AnchorX = 154
            end
            inline frmeMultiSubUnidOrcam205: TfrmeMultiSubUnidOrcam
              Left = 156
              Top = 44
              Width = 625
              Height = 28
              TabOrder = 6
              ExplicitLeft = 156
              ExplicitTop = 44
              ExplicitWidth = 625
              inherited sbS_U_Os: TSpeedButton
                Left = 588
                ExplicitLeft = 588
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            inline frmeMultiCargo205: TfrmeMultiCargo
              Left = 157
              Top = 113
              Width = 625
              Height = 28
              TabOrder = 8
              ExplicitLeft = 157
              ExplicitTop = 113
              ExplicitWidth = 625
              inherited sbCargos: TSpeedButton
                Left = 588
                ExplicitLeft = 588
              end
              inherited edCargos: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            inline frmeMultiUnidLotacao205: TfrmeMultiUnidLotacao
              Left = 157
              Top = 78
              Width = 625
              Height = 28
              TabOrder = 7
              ExplicitLeft = 157
              ExplicitTop = 78
              ExplicitWidth = 625
              inherited sbUnidLotacs: TSpeedButton
                Left = 588
                ExplicitLeft = 588
              end
              inherited edUnidsLotacs: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            inline frmePeriodoAdm205: TfrmePeriodoDt
              Left = 158
              Top = 177
              Width = 252
              Height = 28
              TabOrder = 13
              ExplicitLeft = 158
              ExplicitTop = 177
              ExplicitWidth = 252
              inherited cxLabel61: TcxLabel
                Left = 114
                ExplicitLeft = 114
                ExplicitWidth = 17
                Width = 17
                AnchorX = 131
              end
              inherited edDtFim: TcxDateEdit
                Left = 131
                ExplicitLeft = 131
              end
            end
            object cbSituacao205: TcxComboBox
              Left = 427
              Top = 145
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 12
              Text = 'TODOS'
              Width = 206
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg6'
            object cxLabel54: TcxLabel
              Left = 6
              Top = 54
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 151
              AnchorX = 157
            end
            object cxLabel55: TcxLabel
              Left = 6
              Top = 24
              AutoSize = False
              Caption = 'Estados Funcionais:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 151
              AnchorX = 157
            end
            object cxLabel56: TcxLabel
              Left = 6
              Top = 84
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 151
              AnchorX = 157
            end
            object cxLabel57: TcxLabel
              Left = 6
              Top = 116
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 151
              AnchorX = 157
            end
            object cxLabel58: TcxLabel
              Left = 6
              Top = 147
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 151
              AnchorX = 157
            end
            object cbVinculo26: TcxComboBox
              Left = 157
              Top = 145
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 10
              Text = 'TODOS'
              Width = 145
            end
            object cxLabel59: TcxLabel
              Left = 361
              Top = 147
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 58
              AnchorX = 419
            end
            object cbSituac26: TcxComboBox
              Left = 420
              Top = 145
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 13
              Text = 'TODOS'
              Width = 206
            end
            object cxLabel60: TcxLabel
              Left = 6
              Top = 178
              AutoSize = False
              Caption = 'Per'#237'odo de Admiss'#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 19
              Width = 151
              AnchorX = 157
            end
            object cxLabel65: TcxLabel
              Left = 418
              Top = 178
              AutoSize = False
              Caption = 'Per. de Moviment.::'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 20
              Width = 116
              AnchorX = 534
            end
            inline frmeMultiEstFuncional26: TfrmeMultiEstFuncional
              Left = 157
              Top = 22
              Width = 627
              Height = 28
              TabOrder = 5
              ExplicitLeft = 157
              ExplicitTop = 22
              ExplicitWidth = 627
              inherited sbEstFuncs: TSpeedButton
                Left = 588
                ExplicitLeft = 588
              end
              inherited edEstFuncs: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            inline frmeMultiSubUnidOrcam26: TfrmeMultiSubUnidOrcam
              Left = 157
              Top = 52
              Width = 627
              Height = 28
              TabOrder = 6
              ExplicitLeft = 157
              ExplicitTop = 52
              ExplicitWidth = 627
              inherited sbS_U_Os: TSpeedButton
                Left = 588
                ExplicitLeft = 588
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            inline frmeMultiCargo26: TfrmeMultiCargo
              Left = 157
              Top = 83
              Width = 627
              Height = 28
              TabOrder = 7
              ExplicitLeft = 157
              ExplicitTop = 83
              ExplicitWidth = 627
              inherited sbCargos: TSpeedButton
                Left = 588
                ExplicitLeft = 588
              end
              inherited edCargos: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            inline frmeMultiUnidLotacao26: TfrmeMultiUnidLotacao
              Left = 157
              Top = 114
              Width = 627
              Height = 28
              TabOrder = 8
              ExplicitLeft = 157
              ExplicitTop = 114
              ExplicitWidth = 627
              inherited sbUnidLotacs: TSpeedButton
                Left = 588
                ExplicitLeft = 588
              end
              inherited edUnidsLotacs: TcxTextEdit
                ExplicitWidth = 590
                Width = 590
              end
            end
            inline frmePerAdminDt26: TfrmePeriodoDt
              Left = 157
              Top = 176
              Width = 248
              Height = 28
              TabOrder = 14
              ExplicitLeft = 157
              ExplicitTop = 176
              ExplicitWidth = 248
              inherited cxLabel61: TcxLabel
                Left = 114
                ExplicitLeft = 114
                ExplicitWidth = 17
                Width = 17
                AnchorX = 131
              end
              inherited edDtFim: TcxDateEdit
                Left = 131
                ExplicitLeft = 131
              end
            end
            inline frmePerMovimDt26: TfrmePeriodoDt
              Left = 528
              Top = 176
              Width = 242
              Height = 28
              TabOrder = 15
              ExplicitLeft = 528
              ExplicitTop = 176
              ExplicitWidth = 242
              inherited edDtIni: TcxDateEdit
                Left = 7
                ExplicitLeft = 7
              end
              inherited cxLabel61: TcxLabel
                Left = 113
                ExplicitLeft = 113
                ExplicitWidth = 19
                Width = 19
                AnchorX = 132
              end
              inherited edDtFim: TcxDateEdit
                Left = 134
                ExplicitLeft = 134
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg7'
            inline fmeUnidGestora207: TfmeUnidGestora
              Left = 153
              Top = 16
              Width = 595
              Height = 27
              TabOrder = 0
              ExplicitLeft = 153
              ExplicitTop = 16
              ExplicitWidth = 595
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora27edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            object cxLabel10: TcxLabel
              Left = 8
              Top = 18
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 145
              AnchorX = 153
            end
            object cxLabel11: TcxLabel
              Left = 8
              Top = 47
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 145
              AnchorX = 153
            end
            inline frmeMultiSubUnidOrcam207: TfrmeMultiSubUnidOrcam
              Left = 153
              Top = 45
              Width = 608
              Height = 28
              TabOrder = 3
              ExplicitLeft = 153
              ExplicitTop = 45
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            object cxLabel7: TcxLabel
              Left = 8
              Top = 78
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 145
              AnchorX = 153
            end
            object cbSituac207: TcxComboBox
              Left = 152
              Top = 76
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 5
              Text = 'TODAS'
              Width = 198
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg8'
            inline frmePeriodoDt208: TfrmePeriodoDt
              Left = 159
              Top = 16
              Width = 274
              Height = 28
              TabOrder = 0
              ExplicitLeft = 159
              ExplicitTop = 16
              inherited cxLabel61: TcxLabel
                AnchorX = 140
              end
            end
            object cxLabel112: TcxLabel
              Left = 8
              Top = 18
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 158
            end
            object rbOpAdm208: TcxRadioButton
              Tag = 202
              Left = 463
              Top = 20
              Width = 97
              Height = 17
              Caption = 'Admitidos'
              Checked = True
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              TabStop = True
              ParentBackground = False
            end
            object rbOpDem208: TcxRadioButton
              Tag = 202
              Left = 583
              Top = 20
              Width = 116
              Height = 17
              Caption = 'Demitidos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -15
              Font.Name = 'Calibri'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              ParentBackground = False
            end
            object cxLabel113: TcxLabel
              Left = 8
              Top = 128
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 150
              AnchorX = 158
            end
            object cxLabel114: TcxLabel
              Left = 8
              Top = 56
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 150
              AnchorX = 158
            end
            object cxLabel115: TcxLabel
              Left = 8
              Top = 90
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 150
              AnchorX = 158
            end
            inline frmeMultiUnidLotac208: TfrmeMultiUnidLotacao
              Left = 160
              Top = 123
              Width = 606
              Height = 28
              TabOrder = 9
              ExplicitLeft = 160
              ExplicitTop = 123
              inherited sbUnidLotacs: TSpeedButton
                Top = 1
                ExplicitTop = 1
              end
              inherited edUnidsLotacs: TcxTextEdit
                Top = 1
                ExplicitTop = 1
              end
            end
            inline frmeMultiCargo208: TfrmeMultiCargo
              Left = 160
              Top = 87
              Width = 613
              Height = 28
              TabOrder = 8
              ExplicitLeft = 160
              ExplicitTop = 87
              ExplicitWidth = 613
            end
            inline frmeMultiSubUnidOrcam208: TfrmeMultiSubUnidOrcam
              Left = 160
              Top = 52
              Width = 602
              Height = 28
              TabOrder = 7
              ExplicitLeft = 160
              ExplicitTop = 52
            end
            object cxLabel116: TcxLabel
              Left = 8
              Top = 171
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 150
              AnchorX = 158
            end
            object cbVinculo208: TcxComboBox
              Left = 159
              Top = 168
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 11
              Text = 'TODOS'
              Width = 149
            end
            object cxLabel117: TcxLabel
              Left = 458
              Top = 171
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 56
              AnchorX = 514
            end
            object cbSituac208: TcxComboBox
              Left = 515
              Top = 168
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 13
              Text = 'TODAS'
              Width = 212
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg9'
            inline frmePeriodoDt209: TfrmePeriodoDt
              Left = 159
              Top = 9
              Width = 274
              Height = 28
              TabOrder = 0
              ExplicitLeft = 159
              ExplicitTop = 9
              inherited cxLabel61: TcxLabel
                AnchorX = 140
              end
            end
            object cxLabel118: TcxLabel
              Left = 8
              Top = 13
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 158
            end
            object cxLabel119: TcxLabel
              Left = 8
              Top = 44
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 150
              AnchorX = 158
            end
            inline frmeMultiSubUnidOrcam209: TfrmeMultiSubUnidOrcam
              Left = 159
              Top = 40
              Width = 602
              Height = 28
              TabOrder = 3
              ExplicitLeft = 159
              ExplicitTop = 40
              inherited sbS_U_Os: TSpeedButton
                OnClick = frmeMultiSubUnidOrcam1sbS_U_OsClick
              end
            end
            object cxLabel122: TcxLabel
              Left = 8
              Top = 100
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 150
              AnchorX = 158
            end
            object cbVinculo209: TcxComboBox
              Left = 159
              Top = 96
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 6
              Text = 'TODOS'
              Width = 149
            end
            object cxLabel123: TcxLabel
              Left = 458
              Top = 100
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 56
              AnchorX = 514
            end
            object cbSituac209: TcxComboBox
              Left = 515
              Top = 96
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 8
              Text = 'TODAS'
              Width = 212
            end
            object chkMovim1_209: TcxCheckBox
              Left = 159
              Top = 125
              Caption = 'Movim. Estados Funcionais'
              ParentFont = False
              State = cbsChecked
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 9
              Width = 281
            end
            object chkMovim2_209: TcxCheckBox
              Left = 159
              Top = 154
              Caption = 'Trans. de Sub-Unid. Or'#231'ament'#225'rias'
              ParentFont = False
              State = cbsChecked
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 10
              Width = 281
            end
            object chkMovim3_209: TcxCheckBox
              Left = 159
              Top = 185
              Caption = 'Mudan'#231'as de Cargo/Fun'#231#227'o'
              ParentFont = False
              State = cbsChecked
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 11
              Width = 281
            end
            object chkQuebraSUO209: TcxCheckBox
              Left = 159
              Top = 67
              Caption = 'Quebra por Sub-Unid. Orcament'#225'ria ...'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 4
              Width = 281
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg10'
            inline frmeEntidFinanc2012: TfrmeEntidFinanc
              Left = 132
              Top = 40
              Width = 441
              Height = 32
              TabOrder = 0
              ExplicitLeft = 132
              ExplicitTop = 40
              inherited sbEntidFinanc: TSpeedButton
                OnClick = frmeEntidFinanc2012sbEntidFinancClick
              end
            end
            object cxLabel127: TcxLabel
              Left = 8
              Top = 44
              AutoSize = False
              Caption = 'Entida Banc'#225'ria:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 122
              AnchorX = 130
            end
            inline frmeMultiSubUnidOrcam212: TfrmeMultiSubUnidOrcam
              Left = 133
              Top = 81
              Width = 642
              Height = 28
              TabOrder = 1
              ExplicitLeft = 133
              ExplicitTop = 81
              ExplicitWidth = 642
              inherited sbS_U_Os: TSpeedButton
                Left = 606
                ExplicitLeft = 606
              end
              inherited edS_U_Os: TcxTextEdit
                Hint = 
                  'Informe a(s) Sub-Unidade(s) Or'#231'ament'#225'ria(s) (deixe em branco p/ ' +
                  'todas) ...'
                ExplicitWidth = 608
                Width = 608
              end
            end
            object cxLabel128: TcxLabel
              Left = 8
              Top = 84
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament.:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 122
              AnchorX = 130
            end
            object chkQuebraSUO212: TcxCheckBox
              Left = 132
              Top = 155
              Caption = 'Quebrar p/ Sub-Unid. Or'#231'ament'#225'ria ...'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Width = 281
            end
            object cbOpcao212: TcxComboBox
              Left = 132
              Top = 120
              ParentFont = False
              Properties.Items.Strings = (
                'C/ CONTA-CORRENTE'
                'S/ CONTA-CORRENTE')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 2
              Text = 'C/ CONTA-CORRENTE'
              Width = 229
            end
            object cxLabel129: TcxLabel
              Left = 8
              Top = 123
              AutoSize = False
              Caption = 'Op'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 122
              AnchorX = 130
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg11'
            inline frmeMultiSubUnidOrcam211: TfrmeMultiSubUnidOrcam
              Left = 154
              Top = 48
              Width = 602
              Height = 28
              TabOrder = 0
              ExplicitLeft = 154
              ExplicitTop = 48
            end
            inline frmeMultiUnidLotacao211: TfrmeMultiUnidLotacao
              Left = 154
              Top = 76
              Width = 606
              Height = 28
              TabOrder = 1
              ExplicitLeft = 154
              ExplicitTop = 76
              inherited sbUnidLotacs: TSpeedButton
                Top = 1
                ExplicitTop = 1
              end
              inherited edUnidsLotacs: TcxTextEdit
                Top = 1
                ExplicitTop = 1
              end
            end
            inline frmeMultiEstFuncional211: TfrmeMultiEstFuncional
              Left = 154
              Top = 104
              Width = 613
              Height = 28
              TabOrder = 2
              ExplicitLeft = 154
              ExplicitTop = 104
              inherited sbEstFuncs: TSpeedButton
                Top = 2
                ExplicitTop = 2
              end
              inherited edEstFuncs: TcxTextEdit
                Top = 2
                ExplicitTop = 2
              end
            end
            object cbSituac211: TcxComboBox
              Left = 518
              Top = 136
              ParentFont = False
              Properties.Items.Strings = (
                'TODAS'
                'ATIVOS (C/ PAGTO)'
                'INATIVOS (S/ PAGTO)'
                'AFAST. DEFINITIVO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Text = 'TODAS'
              Width = 212
            end
            object cxLabel82: TcxLabel
              Left = 457
              Top = 140
              AutoSize = False
              Caption = 'Situa'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 59
              AnchorX = 516
            end
            object cbVinculo211: TcxComboBox
              Left = 153
              Top = 136
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 5
              Text = 'TODOS'
              Width = 149
            end
            object cxLabel83: TcxLabel
              Left = 8
              Top = 140
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 154
            end
            object cxLabel84: TcxLabel
              Left = 8
              Top = 110
              AutoSize = False
              Caption = 'Estados Funcionais:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 154
            end
            object cxLabel85: TcxLabel
              Left = 8
              Top = 81
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 154
            end
            object cxLabel86: TcxLabel
              Left = 8
              Top = 52
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 154
            end
            object cxLabel87: TcxLabel
              Left = 8
              Top = 22
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 154
            end
            inline frmeMultiCargo211: TfrmeMultiCargo
              Left = 153
              Top = 19
              Width = 621
              Height = 28
              TabOrder = 11
              ExplicitLeft = 153
              ExplicitTop = 19
              inherited edCargos: TcxTextEdit
                Left = 0
                ExplicitLeft = 0
              end
            end
            object cxLabel88: TcxLabel
              Left = 8
              Top = 172
              AutoSize = False
              Caption = 'Per'#237'odo de Admiss'#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 154
            end
            inline frmePerAdminDt211: TfrmePeriodoDt
              Left = 153
              Top = 168
              Width = 250
              Height = 28
              TabOrder = 13
              ExplicitLeft = 153
              ExplicitTop = 168
              ExplicitWidth = 250
              inherited cxLabel61: TcxLabel
                Left = 114
                Top = 1
                ExplicitLeft = 114
                ExplicitTop = 1
                ExplicitWidth = 19
                Width = 19
                AnchorX = 133
              end
              inherited edDtFim: TcxDateEdit
                Left = 131
                ExplicitLeft = 131
              end
            end
            inline frmePerMovimDt211: TfrmePeriodoDt
              Left = 485
              Top = 169
              Width = 268
              Height = 28
              TabOrder = 14
              ExplicitLeft = 485
              ExplicitTop = 169
              ExplicitWidth = 268
              inherited edDtIni: TcxDateEdit
                Left = 24
                ExplicitLeft = 24
              end
              inherited cxLabel61: TcxLabel
                Left = 130
                Top = 1
                ExplicitLeft = 130
                ExplicitTop = 1
                AnchorX = 153
              end
            end
            object cxLabel89: TcxLabel
              Left = 400
              Top = 173
              AutoSize = False
              Caption = 'Per.  de Moviment.:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 107
              AnchorX = 507
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg12'
            object cxLabel90: TcxLabel
              Left = 21
              Top = 50
              AutoSize = False
              Caption = 'Per'#237'odo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 50
              AnchorX = 71
            end
            inline frmePeriodoDt299: TfrmePeriodoDt
              Left = 75
              Top = 48
              Width = 274
              Height = 28
              TabOrder = 1
              ExplicitLeft = 75
              ExplicitTop = 48
              inherited cxLabel61: TcxLabel
                AnchorX = 140
              end
            end
            inline fmeServidor299: TfmeServidor2_
              Left = 74
              Top = 104
              Width = 681
              Height = 32
              TabOrder = 2
              ExplicitLeft = 74
              ExplicitTop = 104
              ExplicitWidth = 681
              inherited edId: TcxMaskEdit
                Hint = 'Deixe em branco p/ todos ...'
                Properties.OnChange = fmeServidor2_1edIdPropertiesChange
              end
              inherited edNome: TcxTextEdit
                Text = 'Deixe em branco p/ todos ...'
              end
            end
            object cxLabel91: TcxLabel
              Left = 21
              Top = 106
              AutoSize = False
              Caption = 'Servidor:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 50
              AnchorX = 71
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg13'
            object cxLabel99: TcxLabel
              Left = 16
              Top = 50
              Caption = 'Servidor:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
            inline fmeServidor2_299: TfmeServidor2_
              Left = 69
              Top = 48
              Width = 682
              Height = 32
              TabOrder = 1
              ExplicitLeft = 69
              ExplicitTop = 48
              ExplicitWidth = 682
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg14'
            inline fmeUnidGestora279: TfmeUnidGestora
              Left = 105
              Top = 48
              Width = 616
              Height = 36
              TabOrder = 0
              ExplicitLeft = 105
              ExplicitTop = 48
            end
            object cxLabel133: TcxLabel
              Left = 21
              Top = 52
              Caption = 'Unid. Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg15'
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg16'
            object cxLabel137: TcxLabel
              Left = 5
              Top = 27
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            inline frmeMultiSubUnidOrcam282: TfrmeMultiSubUnidOrcam
              Left = 155
              Top = 61
              Width = 608
              Height = 28
              TabOrder = 1
              ExplicitLeft = 155
              ExplicitTop = 61
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            object cxLabel138: TcxLabel
              Left = 5
              Top = 65
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 150
              AnchorX = 155
            end
            inline fmeUnidGestora282: TfmeUnidGestora
              Left = 155
              Top = 23
              Width = 608
              Height = 27
              TabOrder = 0
              ExplicitLeft = 155
              ExplicitTop = 23
              ExplicitWidth = 608
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora282edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            object chkFiltrarDependFilho: TcxCheckBox
              Left = 154
              Top = 100
              Caption = 'Listar somentes os Dependentes que s'#227'o "Filhos" ...'
              ParentFont = False
              State = cbsChecked
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 2
              Width = 353
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
        Width = 790
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
          Caption = 'Folha de Pagto por Sub-Unid. Or'#231'ament'#225'ria (C. de Custos)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
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
          Caption = 'Lan'#231'amentos de Eventos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
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
          Caption = 'Lan'#231'amentos da Carga Hor'#225'ria dos Professores'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
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
          Caption = 'R e s u m o s  . . . '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel399: TcxRadioButton
          Tag = 99
          Left = 399
          Top = 96
          Width = 375
          Height = 17
          Caption = 'Hist'#243'rico Financeiro do Servidor ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
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
          Caption = 'Eventos (Vencimentos/Descontos) calculados'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
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
          Caption = 'Licen'#231'a Maternidade, Aux'#237'lio Benefic'#237'o etc ...'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
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
          Caption = 'Comparativo entre meses '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
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
          Caption = 'Dep'#243'sito Banc'#225'rio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel389: TcxRadioButton
          Tag = 89
          Left = 399
          Top = 72
          Width = 375
          Height = 17
          Caption = 'Ficha Financeira anual (individual)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel310: TcxRadioButton
          Tag = 9
          Left = 399
          Top = 24
          Width = 375
          Height = 17
          Caption = 'Mapa de Frequ'#234'ncia'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          TabStop = True
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
          Caption = 'Servidores S/ Dep'#243'sito em Conta-Corrente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel311: TcxRadioButton
          Tag = 99
          Left = 399
          Top = 119
          Width = 375
          Height = 17
          Caption = 'Servidores p/ Cargo/Fun'#231#227'o  com Previd'#234'ncia Patronal'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object gbDadosRel3: TGroupBox
        Left = 0
        Top = 336
        Width = 790
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
          Width = 786
          Height = 219
          Align = alTop
          PageIndex = 12
          TabOrder = 0
          ExplicitLeft = 1
          ExplicitTop = 19
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg301'
            object cxLabel1: TcxLabel
              Left = 12
              Top = 34
              AutoSize = False
              Caption = 'Evento(s):'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 158
            end
            object cxLabel2: TcxLabel
              Left = 12
              Top = 110
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 158
            end
            inline frmeMultiSubUnidOrcam301: TfrmeMultiSubUnidOrcam
              Left = 158
              Top = 106
              Width = 608
              Height = 28
              TabOrder = 2
              ExplicitLeft = 158
              ExplicitTop = 106
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            object cxLabel3: TcxLabel
              Left = 12
              Top = 147
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 158
            end
            object cbVinculo301: TcxComboBox
              Left = 157
              Top = 143
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'EFETIVOS'
                'COMISSIONADOS'
                'TEMPOR'#193'RIOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Text = 'TODOS'
              Width = 159
            end
            object rbOpRel301_1: TcxRadioButton
              Left = 157
              Top = 185
              Width = 207
              Height = 17
              Caption = 'Todos (Mensais e Fixos)'
              Checked = True
              Color = 14938356
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -17
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 6
              TabStop = True
              ParentBackground = False
            end
            object rbOpRel301_2: TcxRadioButton
              Left = 370
              Top = 185
              Width = 162
              Height = 17
              Caption = 'Somente Mensais'
              Color = 14938356
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -17
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 7
              ParentBackground = False
            end
            inline frmeMultiEventos301: TfrmeMultiEventos
              Left = 157
              Top = 30
              Width = 606
              Height = 28
              TabOrder = 0
              ExplicitLeft = 157
              ExplicitTop = 30
              inherited sbEventos: TSpeedButton
                OnClick = frmeMultiEventos31sbEventosClick
              end
            end
            object rbOpRel301_3: TcxRadioButton
              Left = 595
              Top = 185
              Width = 130
              Height = 17
              Caption = 'Somente Fixos'
              Color = 14938356
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -17
              Font.Name = 'Calibri'
              Font.Style = []
              ParentColor = False
              ParentFont = False
              TabOrder = 8
              ParentBackground = False
            end
            inline fmeUnidGestora301: TfmeUnidGestora
              Left = 158
              Top = 69
              Width = 616
              Height = 36
              TabOrder = 1
              ExplicitLeft = 158
              ExplicitTop = 69
              inherited edId: TcxMaskEdit
                OnExit = fmeUnidGestora301edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 357
                Width = 357
              end
              inherited edCNPJ: TcxTextEdit
                Left = 446
                ExplicitLeft = 446
                ExplicitWidth = 121
                Width = 121
              end
            end
            object cxLabel15: TcxLabel
              Left = 12
              Top = 73
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 158
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg302'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pcRel32: TcxPageControl
              Left = 0
              Top = 0
              Width = 786
              Height = 206
              ActivePage = tsRel321
              Align = alTop
              LookAndFeel.Kind = lfStandard
              TabOrder = 0
              ClientRectBottom = 204
              ClientRectLeft = 2
              ClientRectRight = 784
              ClientRectTop = 25
              object tsRel321: TcxTabSheet
                Caption = 'Por Sub-Unid. Or'#231'ament. (C. de Custos)'
                ImageIndex = 0
                inline fmeUnidGestora321: TfmeUnidGestora
                  Left = 155
                  Top = 33
                  Width = 622
                  Height = 27
                  TabOrder = 0
                  ExplicitLeft = 155
                  ExplicitTop = 33
                  ExplicitWidth = 622
                  ExplicitHeight = 27
                  inherited sbUnidGestora: TSpeedButton
                    ParentShowHint = False
                    ShowHint = True
                  end
                  inherited edId: TcxMaskEdit
                    Hint = 'Informe a Unidade Gestora'
                    OnExit = fmeUnidGestora321edIdExit
                  end
                  inherited edDescricao: TcxTextEdit
                    ExplicitWidth = 339
                    Width = 339
                  end
                  inherited edCNPJ: TcxTextEdit
                    Left = 433
                    ExplicitLeft = 433
                    ExplicitWidth = 160
                    Width = 160
                  end
                end
                inline frmeMultiSubUnidOrcam321: TfrmeMultiSubUnidOrcam
                  Left = 155
                  Top = 67
                  Width = 608
                  Height = 28
                  TabOrder = 1
                  ExplicitLeft = 155
                  ExplicitTop = 67
                  ExplicitWidth = 608
                  inherited sbS_U_Os: TSpeedButton
                    Left = 567
                    ExplicitLeft = 567
                  end
                  inherited edS_U_Os: TcxTextEdit
                    ExplicitWidth = 569
                    Width = 569
                  end
                end
                object cxLabel14: TcxLabel
                  Left = 8
                  Top = 138
                  AutoSize = False
                  Caption = 'V'#237'nculo:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 147
                  AnchorX = 155
                end
                object cbVinculo321: TcxComboBox
                  Left = 154
                  Top = 136
                  ParentFont = False
                  Properties.Items.Strings = (
                    'TODOS'
                    'EFETIVOS'
                    'COMISSIONADOS'
                    'TEMPOR'#193'RIOS')
                  Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
                  Properties.OnPopup = cbVinculo22PropertiesPopup
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 3
                  Text = 'TODOS'
                  Width = 159
                end
                object cxLabel16: TcxLabel
                  Left = 8
                  Top = 69
                  AutoSize = False
                  Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 147
                  AnchorX = 155
                end
                object cxLabel17: TcxLabel
                  Left = 8
                  Top = 35
                  AutoSize = False
                  Caption = 'Unidade Gestora:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 147
                  AnchorX = 155
                end
                object cxLabel18: TcxLabel
                  Left = 8
                  Top = 102
                  AutoSize = False
                  Caption = 'Cargos/Fun'#231#245'es:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 147
                  AnchorX = 155
                end
                inline frmeMultiCargo321: TfrmeMultiCargo
                  Left = 155
                  Top = 101
                  Width = 621
                  Height = 28
                  TabOrder = 2
                  ExplicitLeft = 155
                  ExplicitTop = 101
                end
              end
              object tsRel322: TcxTabSheet
                Caption = 'Por Escola'
                ImageIndex = 1
                object cxLabel19: TcxLabel
                  Left = 11
                  Top = 81
                  AutoSize = False
                  Caption = 'Cargos/Fun'#231#245'es:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 97
                  AnchorX = 108
                end
                inline frmeMultiCargo322: TfrmeMultiCargo
                  Left = 109
                  Top = 80
                  Width = 669
                  Height = 28
                  TabOrder = 1
                  ExplicitLeft = 109
                  ExplicitTop = 80
                  ExplicitWidth = 669
                  inherited sbCargos: TSpeedButton
                    Left = 630
                    ExplicitLeft = 630
                  end
                  inherited edCargos: TcxTextEdit
                    ExplicitWidth = 632
                    Width = 632
                  end
                end
                object cbVinculo322: TcxComboBox
                  Left = 108
                  Top = 120
                  ParentFont = False
                  Properties.Items.Strings = (
                    'TODOS'
                    'EFETIVOS'
                    'COMISSIONADOS'
                    'TEMPOR'#193'RIOS')
                  Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
                  Properties.OnPopup = cbVinculo22PropertiesPopup
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 2
                  Text = 'TODOS'
                  Width = 159
                end
                object cxLabel20: TcxLabel
                  Left = 11
                  Top = 122
                  AutoSize = False
                  Caption = 'V'#237'nculo:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 97
                  AnchorX = 108
                end
                object cxLabel21: TcxLabel
                  Left = 11
                  Top = 43
                  AutoSize = False
                  Caption = 'Escolas:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 97
                  AnchorX = 108
                end
                inline frmeMultiUnidLotacao322: TfrmeMultiUnidLotacao
                  Left = 108
                  Top = 41
                  Width = 669
                  Height = 28
                  TabOrder = 0
                  ExplicitLeft = 108
                  ExplicitTop = 41
                  ExplicitWidth = 669
                  inherited sbUnidLotacs: TSpeedButton
                    Left = 631
                    OnClick = frmeMultiUnidLotacao322sbUnidLotacsClick
                    ExplicitLeft = 631
                  end
                  inherited edUnidsLotacs: TcxTextEdit
                    ExplicitWidth = 633
                    Width = 633
                  end
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg303'
            object cxLabel22: TcxLabel
              Left = 16
              Top = 26
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            object cxLabel23: TcxLabel
              Left = 16
              Top = 60
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            object cxLabel24: TcxLabel
              Left = 16
              Top = 95
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            object cxLabel46: TcxLabel
              Left = 16
              Top = 128
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            inline frmeMultiCargo33: TfrmeMultiCargo
              Left = 165
              Top = 127
              Width = 608
              Height = 28
              TabOrder = 7
              ExplicitLeft = 165
              ExplicitTop = 127
              ExplicitWidth = 608
              inherited edCargos: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            inline frmeMultiUnidLotacao33: TfrmeMultiUnidLotacao
              Left = 164
              Top = 93
              Width = 609
              Height = 28
              TabOrder = 6
              ExplicitLeft = 164
              ExplicitTop = 93
              ExplicitWidth = 609
              inherited sbUnidLotacs: TSpeedButton
                Left = 568
                ExplicitLeft = 568
              end
              inherited edUnidsLotacs: TcxTextEdit
                Left = 0
                ExplicitLeft = 0
                ExplicitWidth = 569
                Width = 569
              end
            end
            inline frmeMultiSubUnidOrcam33: TfrmeMultiSubUnidOrcam
              Left = 165
              Top = 58
              Width = 608
              Height = 28
              TabOrder = 5
              ExplicitLeft = 165
              ExplicitTop = 58
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            inline fmeUnidGestora33: TfmeUnidGestora
              Left = 165
              Top = 24
              Width = 608
              Height = 27
              TabOrder = 4
              ExplicitLeft = 165
              ExplicitTop = 24
              ExplicitWidth = 608
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora33edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            object cxLabel47: TcxLabel
              Left = 16
              Top = 166
              AutoSize = False
              Caption = 'Tipo de Folha:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            object cbTipoFolha33: TcxComboBox
              Left = 164
              Top = 162
              ParentFont = False
              Properties.Items.Strings = (
                'ANALITICA'
                'SINT'#201'TICA')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 9
              Text = 'ANALITICA'
              Width = 159
            end
            object cxLabel48: TcxLabel
              Left = 338
              Top = 166
              AutoSize = False
              Caption = 'Servidores:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 75
              AnchorX = 413
            end
            object cxComboBox2: TcxComboBox
              Left = 414
              Top = 162
              ParentFont = False
              Properties.Items.Strings = (
                'TODOS'
                'SOMENTE ATIVOS'
                'SOMENTE DEMITIDOS')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 11
              Text = 'TODOS'
              Width = 198
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg304'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object pcRel33: TcxPageControl
              Left = 0
              Top = 0
              Width = 786
              Height = 206
              ActivePage = cxTabSheet7
              Align = alTop
              LookAndFeel.Kind = lfStandard
              TabOrder = 0
              ClientRectBottom = 204
              ClientRectLeft = 2
              ClientRectRight = 784
              ClientRectTop = 25
              object cxTabSheet7: TcxTabSheet
                Caption = 'Por Sub-Unid. Or'#231'ament. (C. de Custos)'
                ImageIndex = 0
                inline fmeUnidGestora341: TfmeUnidGestora
                  Left = 157
                  Top = 33
                  Width = 622
                  Height = 27
                  TabOrder = 0
                  ExplicitLeft = 157
                  ExplicitTop = 33
                  ExplicitWidth = 622
                  ExplicitHeight = 27
                  inherited sbUnidGestora: TSpeedButton
                    ParentShowHint = False
                    ShowHint = True
                  end
                  inherited edId: TcxMaskEdit
                    Hint = 'Informe a Unidade Gestora'
                    OnExit = fmeUnidGestora341edIdExit
                  end
                  inherited edDescricao: TcxTextEdit
                    ExplicitWidth = 339
                    Width = 339
                  end
                  inherited edCNPJ: TcxTextEdit
                    Left = 433
                    ExplicitLeft = 433
                    ExplicitWidth = 160
                    Width = 160
                  end
                end
                inline frmeMultiSubUnidOrcam341: TfrmeMultiSubUnidOrcam
                  Left = 157
                  Top = 67
                  Width = 608
                  Height = 28
                  TabOrder = 1
                  ExplicitLeft = 157
                  ExplicitTop = 67
                  ExplicitWidth = 608
                  inherited sbS_U_Os: TSpeedButton
                    Left = 567
                    ExplicitLeft = 567
                  end
                  inherited edS_U_Os: TcxTextEdit
                    ExplicitWidth = 569
                    Width = 569
                  end
                end
                object cxLabel68: TcxLabel
                  Left = 12
                  Top = 69
                  AutoSize = False
                  Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 145
                  AnchorX = 157
                end
                object cxLabel69: TcxLabel
                  Left = 12
                  Top = 35
                  AutoSize = False
                  Caption = 'Unidade Gestora:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 145
                  AnchorX = 157
                end
              end
              object cxTabSheet8: TcxTabSheet
                Caption = 'Geral (Por Unid. Gestora)'
                ImageIndex = 1
                object sbMultiUnidGestora342: TSpeedButton
                  Tag = 1
                  Left = 728
                  Top = 32
                  Width = 26
                  Height = 26
                  Hint = 'Seleciona a(s) Sub-Unidade(s) Or'#231'ament'#225'ria(s) (obrigat'#243'rio) ...'
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
                  OnClick = sbMultiUnidGestora342Click
                end
                object cxLabel67: TcxLabel
                  Left = 18
                  Top = 35
                  AutoSize = False
                  Caption = 'Unidades Gestoras:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 143
                  AnchorX = 161
                end
                object edMultiUnidGestora342: TcxTextEdit
                  Tag = 21
                  Left = 160
                  Top = 32
                  Hint = 'Informe a(s) Unidade(s) Gestora(s) (obrigat'#243'rio) ...'
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 1
                  OnKeyDown = edMultiUnidGestora342KeyDown
                  OnKeyPress = edMultiUnidGestora342KeyPress
                  Width = 569
                end
                object cbTipoResumo342: TcxComboBox
                  Left = 160
                  Top = 82
                  ParentFont = False
                  Properties.Items.Strings = (
                    'FOLHA DE PAGAMENTO'
                    'GUIA DE PREVID'#202'NCIA SOCIAL (GPS)')
                  Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
                  Properties.OnPopup = cbVinculo22PropertiesPopup
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 2
                  Text = 'FOLHA DE PAGAMENTO'
                  Width = 281
                end
                object cxLabel70: TcxLabel
                  Left = -11
                  Top = 84
                  AutoSize = False
                  Caption = 'Tipo de Resumo:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 172
                  AnchorX = 161
                end
                object cbOpcao342: TcxComboBox
                  Left = 160
                  Top = 124
                  ParentFont = False
                  Properties.Items.Strings = (
                    'TODOS'
                    'EFETIVOS'
                    'TEMPOR'#193'RIOS')
                  Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
                  Properties.OnPopup = cbVinculo22PropertiesPopup
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 4
                  Text = 'TODOS'
                  Width = 281
                end
                object cxLabel130: TcxLabel
                  Left = -11
                  Top = 128
                  AutoSize = False
                  Caption = 'Op'#231#227'o:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 17
                  Width = 172
                  AnchorX = 161
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg305'
            inline frmeMultiSubUnidOrcam305_1: TfrmeMultiSubUnidOrcam
              Left = 159
              Top = 95
              Width = 608
              Height = 28
              TabOrder = 2
              ExplicitLeft = 159
              ExplicitTop = 95
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            object cxLabel76: TcxLabel
              Left = 11
              Top = 99
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 158
            end
            object cxLabel80: TcxLabel
              Left = 11
              Top = 30
              AutoSize = False
              Caption = 'Evento:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 158
            end
            object chkQuebraSUO305_1: TcxCheckBox
              Left = 446
              Top = 166
              Caption = 'Quebrar p/ Sub-Unid. Or'#231'ament'#225'ria ...'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 5
              Width = 281
            end
            inline frmeMultiCargo305_1: TfrmeMultiCargo
              Left = 159
              Top = 130
              Width = 618
              Height = 28
              TabOrder = 3
              ExplicitLeft = 159
              ExplicitTop = 130
              ExplicitWidth = 618
              inherited sbCargos: TSpeedButton
                Left = 566
                ExplicitLeft = 566
              end
            end
            object cxLabel77: TcxLabel
              Left = 12
              Top = 133
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 160
            end
            object cxLabel81: TcxLabel
              Left = 10
              Top = 168
              AutoSize = False
              Caption = 'V'#237'nculo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 158
            end
            object cbVinculo305_1: TcxComboBox
              Left = 158
              Top = 166
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
              Width = 157
            end
            object cxLabel13: TcxLabel
              Left = 11
              Top = 64
              AutoSize = False
              Caption = 'Unid. Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 147
              AnchorX = 158
            end
            inline fmeUnidGestora305_1: TfmeUnidGestora
              Left = 159
              Top = 60
              Width = 616
              Height = 36
              TabOrder = 1
              ExplicitLeft = 159
              ExplicitTop = 60
              inherited edId: TcxMaskEdit
                OnExit = fmeUnidGestora305_1edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 357
                Width = 357
              end
              inherited edCNPJ: TcxTextEdit
                Left = 446
                ExplicitLeft = 446
                ExplicitWidth = 121
                Width = 121
              end
            end
            inline frmeMultiEventos305_1: TfrmeMultiEventos
              Left = 159
              Top = 26
              Width = 606
              Height = 28
              TabOrder = 0
              ExplicitLeft = 159
              ExplicitTop = 26
              inherited sbEventos: TSpeedButton
                OnClick = frmeMultiEventos305_1sbEventosClick
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg306'
            inline fmeUnidGestora306: TfmeUnidGestora
              Left = 147
              Top = 33
              Width = 622
              Height = 27
              TabOrder = 0
              ExplicitLeft = 147
              ExplicitTop = 33
              ExplicitWidth = 622
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
                OnClick = fmeUnidGestora306sbUnidGestoraClick
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            object cxLabel74: TcxLabel
              Left = 16
              Top = 35
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 129
              AnchorX = 145
            end
            object cxLabel75: TcxLabel
              Left = 16
              Top = 76
              AutoSize = False
              Caption = 'Tipo de Previd'#234'ncia:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 129
              AnchorX = 145
            end
            object cbTipoPrevid306: TcxComboBox
              Left = 146
              Top = 74
              ParentFont = False
              Properties.Items.Strings = (
                'FEDERAL (INSS)'
                'MUNICIPAL (I.P.M)')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 3
              Text = 'FEDERAL (INSS)'
              Width = 198
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg307'
            inline fmeUnidGestora307: TfmeUnidGestora
              Left = 157
              Top = 33
              Width = 622
              Height = 27
              TabOrder = 0
              ExplicitLeft = 157
              ExplicitTop = 33
              ExplicitWidth = 622
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora307edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            inline frmeMultiSubUnidOrcam307: TfrmeMultiSubUnidOrcam
              Left = 157
              Top = 67
              Width = 608
              Height = 28
              TabOrder = 1
              ExplicitLeft = 157
              ExplicitTop = 67
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            object cxLabel8: TcxLabel
              Left = 10
              Top = 69
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 156
            end
            object cxLabel9: TcxLabel
              Left = 10
              Top = 35
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 156
            end
            object cxLabel39: TcxLabel
              Left = 10
              Top = 102
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 156
            end
            inline frmeMultiCargo307: TfrmeMultiCargo
              Left = 157
              Top = 101
              Width = 621
              Height = 28
              TabOrder = 5
              ExplicitLeft = 157
              ExplicitTop = 101
            end
            object cxLabel40: TcxLabel
              Left = 10
              Top = 138
              AutoSize = False
              Caption = 'M'#234's/Ano Base:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 156
            end
            inline fmePeriodoM_307: TfmePeriodoM_
              Left = 157
              Top = 136
              Width = 340
              Height = 26
              TabOrder = 7
              ExplicitLeft = 157
              ExplicitTop = 136
              ExplicitWidth = 340
              inherited edMesAnoFim: TcxMaskEdit
                Left = 204
                ExplicitLeft = 204
              end
              inherited cxLabel1: TcxLabel
                Left = 83
                Caption = 'M'#234's/Ano a Comparar:'
                ExplicitLeft = 83
                ExplicitWidth = 121
              end
            end
            object cbTipoRel307: TcxComboBox
              Left = 156
              Top = 170
              ParentFont = False
              Properties.Items.Strings = (
                'DETALHADO'
                'RESUMIDO')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 8
              Text = 'DETALHADO'
              Width = 198
            end
            object cxLabel73: TcxLabel
              Left = 10
              Top = 172
              AutoSize = False
              Caption = 'Tipo de Relat'#243'rio:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 146
              AnchorX = 156
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg307'
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
              Width = 786
              Height = 206
              ActivePage = tsRel308_1
              Align = alTop
              LookAndFeel.Kind = lfStandard
              TabOrder = 0
              ClientRectBottom = 204
              ClientRectLeft = 2
              ClientRectRight = 784
              ClientRectTop = 25
              object tsRel308_1: TcxTabSheet
                Caption = 'Detalhado'
                ImageIndex = 0
                inline frmeMultiSubUnidOrcam308_1: TfrmeMultiSubUnidOrcam
                  Left = 167
                  Top = 113
                  Width = 604
                  Height = 28
                  TabOrder = 3
                  ExplicitLeft = 167
                  ExplicitTop = 113
                  ExplicitWidth = 604
                  inherited sbS_U_Os: TSpeedButton
                    Left = 567
                    Height = 27
                    OnClick = frmeMultiSubUnidOrcam308_1sbS_U_OsClick
                    ExplicitLeft = 567
                    ExplicitHeight = 27
                  end
                  inherited edS_U_Os: TcxTextEdit
                    Hint = 
                      'Informe a(s) Sub-Unidade(s) Or'#231'ament'#225'ria(s) (deixe em branco p/ ' +
                      'todas) ...'
                    ExplicitWidth = 569
                    Width = 569
                  end
                end
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
                  TabOrder = 6
                  Width = 281
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
                inline frmeEntidFinanc308_1: TfrmeEntidFinanc
                  Left = 167
                  Top = 46
                  Width = 441
                  Height = 32
                  TabOrder = 1
                  ExplicitLeft = 167
                  ExplicitTop = 46
                  inherited sbEntidFinanc: TSpeedButton
                    OnClick = frmeEntidFinanc308_1sbEntidFinancClick
                  end
                  inherited edId: TcxMaskEdit
                    OnExit = frmeEntidFinanc308_1edIdExit
                  end
                end
                inline fmeUnidGestora308_1: TfmeUnidGestora
                  Left = 167
                  Top = 8
                  Width = 608
                  Height = 27
                  TabOrder = 0
                  ExplicitLeft = 167
                  ExplicitTop = 8
                  ExplicitWidth = 608
                  ExplicitHeight = 27
                  inherited sbUnidGestora: TSpeedButton
                    ParentShowHint = False
                    ShowHint = True
                  end
                  inherited edId: TcxMaskEdit
                    Hint = 'Informe a Unidade Gestora'
                    OnExit = fmeUnidGestora308_1edIdExit
                  end
                  inherited edDescricao: TcxTextEdit
                    ExplicitWidth = 339
                    Width = 339
                  end
                  inherited edCNPJ: TcxTextEdit
                    Left = 433
                    ExplicitLeft = 433
                    ExplicitWidth = 160
                    Width = 160
                  end
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
                inline fmeUnidGestora308_2: TfmeUnidGestora
                  Left = 134
                  Top = 48
                  Width = 608
                  Height = 27
                  TabOrder = 1
                  ExplicitLeft = 134
                  ExplicitTop = 48
                  ExplicitWidth = 608
                  ExplicitHeight = 27
                  inherited sbUnidGestora: TSpeedButton
                    ParentShowHint = False
                    ShowHint = True
                  end
                  inherited edId: TcxMaskEdit
                    Hint = 'Informe a Unidade Gestora'
                  end
                  inherited edDescricao: TcxTextEdit
                    ExplicitWidth = 339
                    Width = 339
                  end
                  inherited edCNPJ: TcxTextEdit
                    Left = 433
                    ExplicitLeft = 433
                    ExplicitWidth = 160
                    Width = 160
                  end
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
                  TabOrder = 3
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
              Left = 16
              Top = 26
              AutoSize = False
              Caption = 'Unidade Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            object cxLabel109: TcxLabel
              Left = 16
              Top = 60
              AutoSize = False
              Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            object cxLabel110: TcxLabel
              Left = 16
              Top = 95
              AutoSize = False
              Caption = 'Unidades de Lota'#231#227'o:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
            inline frmeMultiUnidLotacao310: TfrmeMultiUnidLotacao
              Left = 164
              Top = 93
              Width = 609
              Height = 28
              TabOrder = 5
              ExplicitLeft = 164
              ExplicitTop = 93
              ExplicitWidth = 609
              inherited sbUnidLotacs: TSpeedButton
                Left = 568
                Hint = 'Seleciona a(s) Unidade(s) de Lota'#231#227'o ...'
                ExplicitLeft = 568
              end
              inherited edUnidsLotacs: TcxTextEdit
                Left = 0
                ExplicitLeft = 0
                ExplicitWidth = 569
                Width = 569
              end
            end
            inline frmeMultiSubUnidOrcam310: TfrmeMultiSubUnidOrcam
              Left = 165
              Top = 58
              Width = 608
              Height = 28
              TabOrder = 1
              ExplicitLeft = 165
              ExplicitTop = 58
              ExplicitWidth = 608
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
            inline fmeUnidGestora310: TfmeUnidGestora
              Left = 165
              Top = 24
              Width = 608
              Height = 27
              TabOrder = 0
              ExplicitLeft = 165
              ExplicitTop = 24
              ExplicitWidth = 608
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora309edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            object cbTipoMapaFreq310: TcxComboBox
              Left = 164
              Top = 140
              ParentFont = False
              Properties.Items.Strings = (
                'ADMINISTRATIVO'
                'EDUCA'#199#195'O')
              Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
              Properties.OnPopup = cbVinculo22PropertiesPopup
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 6
              Text = 'ADMINISTRATIVO'
              Width = 176
            end
            object cxLabel111: TcxLabel
              Left = 16
              Top = 144
              AutoSize = False
              Caption = 'Tipo de Mapa:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 148
              AnchorX = 164
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg389'
            object sbAnoMais: TSpeedButton
              Tag = 1
              Left = 161
              Top = 99
              Width = 40
              Height = 31
              Caption = '+'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbAnoMaisClick
            end
            object sbAnoMenos: TSpeedButton
              Tag = 2
              Left = 200
              Top = 99
              Width = 40
              Height = 31
              Caption = '-'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -20
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = sbAnoMaisClick
            end
            inline fmeServidor389: TfmeServidor2_
              Left = 74
              Top = 48
              Width = 682
              Height = 32
              TabOrder = 0
              ExplicitLeft = 74
              ExplicitTop = 48
              ExplicitWidth = 682
            end
            object cxLabel96: TcxLabel
              Left = 16
              Top = 50
              Caption = 'Servidor:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
            object edExercicio389: TcxTextEdit
              Left = 73
              Top = 99
              AutoSize = False
              ParentFont = False
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.MaxLength = 4
              Properties.UseLeftAlignmentOnEditing = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -17
              Style.Font.Name = 'Calibri'
              Style.Font.Style = [fsBold]
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              Style.IsFontAssigned = True
              TabOrder = 2
              Text = '2011'
              OnKeyPress = edExercicio389KeyPress
              Height = 31
              Width = 88
            end
            object cxLabel98: TcxLabel
              Left = 16
              Top = 105
              Caption = 'Exerc'#237'cio:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg399'
            inline fmeServidor35: TfmeServidor2_
              Left = 69
              Top = 48
              Width = 682
              Height = 32
              TabOrder = 0
              ExplicitLeft = 69
              ExplicitTop = 48
              ExplicitWidth = 682
            end
            object cxLabel5: TcxLabel
              Left = 16
              Top = 50
              Caption = 'Servidor:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
            inline fmePeriodoM_35: TfmePeriodoM_
              Left = 68
              Top = 96
              Width = 169
              Height = 26
              TabOrder = 2
              ExplicitLeft = 68
              ExplicitTop = 96
              inherited cxLabel1: TcxLabel
                Caption = ' a: '
                ExplicitWidth = 20
              end
            end
            object cxLabel6: TcxLabel
              Left = 16
              Top = 98
              Caption = 'Per'#237'odo:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg310'
            inline fmeUnidGestora309: TfmeUnidGestora
              Left = 112
              Top = 40
              Width = 616
              Height = 36
              TabOrder = 0
              ExplicitLeft = 112
              ExplicitTop = 40
            end
            object cxLabel78: TcxLabel
              Left = 11
              Top = 43
              AutoSize = False
              Caption = 'Unid. Gestora:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 17
              Width = 97
              AnchorX = 108
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg311'
            object cxLabel134: TcxLabel
              Left = 8
              Top = 21
              AutoSize = False
              Caption = 'Cargos/Fun'#231#245'es:'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxLabelStyleNormal
              Properties.Alignment.Horz = taRightJustify
              Height = 21
              Width = 147
              AnchorX = 155
            end
            inline frmeMultiCargo311: TfrmeMultiCargo
              Left = 155
              Top = 19
              Width = 621
              Height = 28
              TabOrder = 1
              ExplicitLeft = 155
              ExplicitTop = 19
              inherited edCargos: TcxTextEdit
                Left = 0
                ExplicitLeft = 0
              end
            end
          end
        end
      end
    end
    object tsRelDoctos: TcxTabSheet
      Caption = '&4 - Documentos'
      ImageIndex = 3
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gbOpGrupo4: TGroupBox
        Left = 0
        Top = 0
        Width = 790
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
          Top = 24
          Width = 375
          Height = 17
          Caption = 'Contra-Cheque ...'
          Checked = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
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
          Top = 55
          Width = 375
          Height = 17
          Caption = 'G.P.S. (Guia de Previd'#234'ncia Social)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
        object rbOpRel403: TcxRadioButton
          Tag = 2
          Left = 7
          Top = 87
          Width = 375
          Height = 17
          Caption = 'Protocolo de Entrega de Contra-Cheque'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = rbOpRel301Enter
          OnEnter = rbOpRel301Enter
          ParentBackground = False
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 336
        Width = 790
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
          Width = 786
          Height = 217
          Align = alClient
          Color = 14938356
          Font.Charset = ANSI_CHARSET
          Font.Color = clMaroon
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          PageIndex = 1
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg1'
            ExplicitWidth = 0
            ExplicitHeight = 0
            object cxPageControl4: TcxPageControl
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 780
              Height = 210
              ActivePage = cxTabSheet5
              Align = alTop
              Color = 14148328
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              LookAndFeel.Kind = lfStandard
              Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoSort]
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              Style = 9
              TabOrder = 0
              ClientRectBottom = 210
              ClientRectRight = 780
              ClientRectTop = 23
              object cxTabSheet5: TcxTabSheet
                Caption = 'Por Sub-Unid. Or'#231'ament'#225'ria'
                Color = 14148328
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -13
                Font.Name = 'Arial'
                Font.Style = [fsBold]
                ImageIndex = 0
                ParentColor = False
                ParentFont = False
                object sbMsgContraCheque411: TSpeedButton
                  Tag = 3
                  Left = 721
                  Top = 94
                  Width = 26
                  Height = 26
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
                  OnClick = sbSubUnidOrcamsClick
                end
                inline fmeUnidGestora411: TfmeUnidGestora
                  Left = 155
                  Top = 6
                  Width = 598
                  Height = 27
                  TabOrder = 0
                  ExplicitLeft = 155
                  ExplicitTop = 6
                  ExplicitWidth = 598
                  ExplicitHeight = 27
                  inherited sbUnidGestora: TSpeedButton
                    ParentShowHint = False
                    ShowHint = True
                  end
                  inherited edId: TcxMaskEdit
                    Hint = 'Informe a Unidade Gestora'
                    OnExit = fmeUnidGestora411edIdExit
                  end
                  inherited edDescricao: TcxTextEdit
                    ExplicitWidth = 339
                    Width = 339
                  end
                  inherited edCNPJ: TcxTextEdit
                    Left = 433
                    ExplicitLeft = 433
                    ExplicitWidth = 160
                    Width = 160
                  end
                end
                object cxLabel61: TcxLabel
                  Left = 8
                  Top = 8
                  AutoSize = False
                  Caption = 'Unidade Gestora:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 19
                  Width = 146
                  AnchorX = 154
                end
                inline frmeMultiSubUnidOrcam411: TfrmeMultiSubUnidOrcam
                  Left = 155
                  Top = 35
                  Width = 602
                  Height = 28
                  TabOrder = 2
                  ExplicitLeft = 155
                  ExplicitTop = 35
                end
                object cxLabel62: TcxLabel
                  Left = 8
                  Top = 37
                  AutoSize = False
                  Caption = 'Sub. Unid. Or'#231'ament'#225'rias:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 19
                  Width = 146
                  AnchorX = 154
                end
                inline frmeMultiUnidLotacao411: TfrmeMultiUnidLotacao
                  Left = 155
                  Top = 65
                  Width = 606
                  Height = 28
                  TabOrder = 4
                  ExplicitLeft = 155
                  ExplicitTop = 65
                  inherited sbUnidLotacs: TSpeedButton
                    Left = 566
                    ExplicitLeft = 566
                  end
                end
                object cxLabel63: TcxLabel
                  Left = 8
                  Top = 67
                  AutoSize = False
                  Caption = 'Unidades de Lota'#231#227'o:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 19
                  Width = 146
                  AnchorX = 154
                end
                object edMsgContraCheque411: TcxTextEdit
                  Tag = 3
                  Left = 154
                  Top = 94
                  Hint = 
                    'Digite a Mensagem p/ o Contra-Cheque ou selecione uma existente ' +
                    '...'
                  ParentFont = False
                  ParentShowHint = False
                  ShowHint = True
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 6
                  OnKeyDown = edSubUnidOrcamsKeyDown
                  Width = 568
                end
                object cxLabel64: TcxLabel
                  Left = 8
                  Top = 96
                  AutoSize = False
                  Caption = 'Mensagem:'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 19
                  Width = 146
                  AnchorX = 154
                end
                object chkOrdemUnidLotacao: TcxCheckBox
                  Left = 445
                  Top = 124
                  Caption = 'Por Ordem de Unidade de Lota'#231#227'o ...'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 9
                  Width = 277
                end
                object chkCChequeSomenteSemConta: TcxCheckBox
                  Left = 154
                  Top = 124
                  Caption = 'Somente para os S/ Contra-Corente ...'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  TabOrder = 8
                  Width = 263
                end
                object cbFormatoCCheque411: TcxComboBox
                  Left = 155
                  Top = 154
                  AutoSize = False
                  ParentFont = False
                  Properties.Items.Strings = (
                    'A - Holerite'
                    'B - Papel A4 (p'#225'gina inteira)'
                    'C - Papel A4 (meia p'#225'gina)'
                    'D - Papel A4 (Frente e verso)')
                  Properties.OnCloseUp = cbVinculo22PropertiesCloseUp
                  Properties.OnPopup = cbVinculo22PropertiesPopup
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWhite
                  Style.Font.Height = -16
                  Style.Font.Name = 'Calibri'
                  Style.Font.Style = [fsBold]
                  Style.StyleController = dmPrincipal.cxEditStyleNormal
                  Style.IsFontAssigned = True
                  TabOrder = 10
                  Text = 'A - Holerite'
                  Height = 28
                  Width = 262
                end
                object cxLabel66: TcxLabel
                  Left = 8
                  Top = 158
                  AutoSize = False
                  Caption = 'Tipo (Formato):'
                  ParentFont = False
                  Style.StyleController = dmPrincipal.cxLabelStyleNormal
                  Properties.Alignment.Horz = taRightJustify
                  Height = 19
                  Width = 146
                  AnchorX = 154
                end
              end
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg2'
            inline fmeUnidGestora42: TfmeUnidGestora
              Left = 162
              Top = 33
              Width = 621
              Height = 27
              TabOrder = 0
              ExplicitLeft = 162
              ExplicitTop = 33
              ExplicitWidth = 621
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora42edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
            inline frmeMultiSubUnidOrcam42: TfrmeMultiSubUnidOrcam
              Left = 162
              Top = 71
              Width = 607
              Height = 28
              TabOrder = 1
              ExplicitLeft = 162
              ExplicitTop = 71
              ExplicitWidth = 607
              inherited sbS_U_Os: TSpeedButton
                Left = 567
                ExplicitLeft = 567
              end
              inherited edS_U_Os: TcxTextEdit
                ExplicitWidth = 569
                Width = 569
              end
            end
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
              TabOrder = 7
              Text = 'COMPLETA'
              Width = 198
            end
          end
          object TPage
            Left = 0
            Top = 0
            Caption = 'pg3'
            inline fmeUnidGestora403: TfmeUnidGestora
              Left = 155
              Top = 54
              Width = 609
              Height = 27
              TabOrder = 0
              ExplicitLeft = 155
              ExplicitTop = 54
              ExplicitWidth = 609
              ExplicitHeight = 27
              inherited sbUnidGestora: TSpeedButton
                ParentShowHint = False
                ShowHint = True
              end
              inherited edId: TcxMaskEdit
                Hint = 'Informe a Unidade Gestora'
                OnExit = fmeUnidGestora403edIdExit
              end
              inherited edDescricao: TcxTextEdit
                ExplicitWidth = 339
                Width = 339
              end
              inherited edCNPJ: TcxTextEdit
                Left = 433
                ExplicitLeft = 433
                ExplicitWidth = 160
                Width = 160
              end
            end
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
            inline frmeMultiSubUnidOrcam403: TfrmeMultiSubUnidOrcam
              Left = 155
              Top = 91
              Width = 609
              Height = 28
              TabOrder = 2
              ExplicitLeft = 155
              ExplicitTop = 91
              ExplicitWidth = 609
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
              TabOrder = 4
              Width = 263
            end
            object chkOrdemUnidLotac403: TcxCheckBox
              Left = 445
              Top = 130
              Caption = 'Por Ordem de Unidade de Lota'#231#227'o ...'
              ParentFont = False
              Style.StyleController = dmPrincipal.cxEditStyleNormal
              TabOrder = 5
              Width = 277
            end
          end
        end
      end
    end
    object tsRelOutros: TcxTabSheet
      Caption = '&5 - Outros'
      ImageIndex = 4
    end
  end
  object Panel: TPanel
    AlignWithMargins = True
    Left = 1
    Top = 604
    Width = 794
    Height = 45
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alBottom
    BevelKind = bkFlat
    BevelOuter = bvNone
    Color = 10454867
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
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnSetupClick
    end
    object btnVisualizar: TBitBtn
      Tag = 1
      Left = 429
      Top = 2
      Width = 120
      Height = 36
      Caption = '&Visualizar'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      OnClick = btnVisualizarClick
    end
    object btnImprimir: TBitBtn
      Tag = 2
      Left = 549
      Top = 2
      Width = 120
      Height = 36
      Caption = '&Imprimir'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnClick = btnVisualizarClick
    end
    object btnSair: TBitBtn
      Tag = 2
      Left = 669
      Top = 2
      Width = 120
      Height = 36
      Caption = '&Sair'
      DoubleBuffered = True
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
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object qryRemessa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMes'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'pParcela'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pUnidGestora'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pEntidFinanc'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id_remessa'
      'from config_deposito_bancario'
      'where (ano_mes = :pAnoMes) and'
      '      (parcela = :pParcela) and'
      '      (id_unid_gestora = :pUnidGestora) and'
      '      (id_entid_financ = :pEntidFinanc)'
      'group by'
      '    id_remessa'
      'order by'
      '    id_remessa')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 389
    Top = 423
    object qryRemessaID_REMESSA: TStringField
      FieldName = 'ID_REMESSA'
      Required = True
      FixedChar = True
      Size = 9
    end
  end
end
