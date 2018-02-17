inherited frmConfigSistema: TfrmConfigSistema
  Left = 43
  Top = 107
  AutoSize = False
  Caption = 'frmConfigSistema'
  ClientHeight = 636
  ClientWidth = 949
  ExplicitLeft = 43
  ExplicitTop = 107
  ExplicitWidth = 965
  ExplicitHeight = 674
  PixelsPerInch = 96
  TextHeight = 16
  inherited pButtons: TPanel
    Width = 949
    ExplicitWidth = 949
    inherited btnFechar: TcxButton
      Left = 886
      ExplicitLeft = 871
    end
  end
  inherited PanelBotton: TPanel
    Top = 615
    Width = 949
    ExplicitTop = 593
    ExplicitWidth = 949
    inherited btnCancelar: TcxButton
      Left = 848
      Hint = ''
      Caption = '&Sair'
      Glyph.Data = {00000000}
      OnClick = btnCancelarClick
      ExplicitLeft = 848
    end
    object btnAlterar1: TcxButton
      Tag = 4
      Left = 636
      Top = 6
      Width = 90
      Height = 27
      Caption = '&Alterar'
      Glyph.Data = {
        96010000424D9601000000000000760000002800000018000000180000000100
        0400000000002001000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333311311333338FFFFFFFFFFFFFFF1FF
        FFF33800000000000000010000F3380FFFFFFFFFFFFFF1FFF0F3380FF4444F44
        44FFF1FFF0F3380F44F44F44F44FF1FFF0F3380F44F44F44F44FF1FFF0F3380F
        F4444F44F44FF1FFF0F3380FFFF44F44F44FF1FFF0F3380FF444FF4444FFF1FF
        F0F3380FFFFFFF44FFFFF1FFF0F3380FFFFFFF44FFFFF1FFF0F3380FFFFFFFFF
        FFFFF1FFF0F33800000000000000010000F33888888888888888818888833333
        3333333333333133333333333333333333311311333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      LookAndFeel.Kind = lfOffice11
      Margin = 2
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAlterar1Click
    end
  end
  inherited PanelClient: TPanel
    Width = 949
    Height = 550
    ExplicitWidth = 949
    ExplicitHeight = 550
    object cxPageControl1: TcxPageControl
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 939
      Height = 540
      ActivePage = cxTabSheet2
      Align = alClient
      Color = 16121596
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style = 3
      TabOrder = 0
      ClientRectBottom = 540
      ClientRectRight = 939
      ClientRectTop = 26
      object cxTabSheet1: TcxTabSheet
        Caption = #211'rg'#227'o'
        Color = 16121596
        ImageIndex = 0
        ParentColor = False
        object Label1: TLabel
          Left = 858
          Top = 160
          Width = 21
          Height = 16
          Alignment = taRightJustify
          Caption = 'UF:'
        end
        object Label12: TLabel
          Left = 13
          Top = 112
          Width = 66
          Height = 14
          Caption = 'Logradouro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 608
          Top = 111
          Width = 18
          Height = 16
          Alignment = taRightJustify
          Caption = 'N'#186':'
        end
        object Label14: TLabel
          Left = 45
          Top = 158
          Width = 34
          Height = 14
          Alignment = taRightJustify
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 409
          Top = 158
          Width = 40
          Height = 14
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 683
          Top = 158
          Width = 25
          Height = 14
          Alignment = taRightJustify
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 11
          Top = 207
          Width = 68
          Height = 14
          Caption = 'Telefone(s):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 598
          Top = 14
          Width = 28
          Height = 14
          Alignment = taRightJustify
          Caption = 'Sigla:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 544
          Top = 207
          Width = 82
          Height = 14
          Alignment = taRightJustify
          Caption = 'Diretor do DRH'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 597
          Top = 72
          Width = 31
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 45
          Top = 254
          Width = 34
          Height = 14
          Alignment = taRightJustify
          Caption = 'CNAE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 537
          Top = 254
          Width = 89
          Height = 14
          Alignment = taRightJustify
          Caption = 'Natureza ju'#237'dica:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 244
          Top = 252
          Width = 38
          Height = 16
          Alignment = taRightJustify
          Caption = 'FPAS:'
        end
        object Label8: TLabel
          Left = 732
          Top = 254
          Width = 100
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'd. Mun. (RAIS):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object lblDescricao: TLabel
          Left = 12
          Top = 18
          Width = 67
          Height = 14
          Alignment = taRightJustify
          Caption = 'Raz'#227'o social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 735
          Top = 14
          Width = 98
          Height = 14
          Alignment = taRightJustify
          Caption = 'C'#243'd. Mun. (TCM):'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 298
          Width = 71
          Height = 14
          Alignment = taRightJustify
          Caption = 'Bras'#227'o/Logo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Default'
          Font.Style = []
          ParentFont = False
        end
        object cbUF: TcxDBComboBox
          Left = 881
          Top = 156
          DataBinding.DataField = 'UF'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
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
          Style.StyleController = cxEditStyleNormal
          TabOrder = 10
          Width = 51
        end
        object edBairro: TcxDBTextEdit
          Left = 81
          Top = 155
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 7
          Width = 300
        end
        object edCEP: TcxDBTextEdit
          Left = 712
          Top = 156
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 9
          Width = 97
        end
        object edCidade: TcxDBTextEdit
          Left = 451
          Top = 156
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'CIDADE'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 8
          Width = 178
        end
        object edCnpj: TcxDBTextEdit
          Left = 630
          Top = 68
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'CNPJ'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 4
          Width = 198
        end
        object edCodCnae: TcxDBTextEdit
          Left = 81
          Top = 250
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'COD_CNAE'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 13
          Width = 97
        end
        object edCodFpas: TcxDBTextEdit
          Left = 284
          Top = 250
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'COD_FPAS'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 14
          Width = 97
        end
        object edCodMunRais: TcxDBTextEdit
          Left = 835
          Top = 250
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'COD_MUNICIPIO_RAIS'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 16
          Width = 97
        end
        object edCodNaturezaJuridica: TcxDBTextEdit
          Left = 630
          Top = 250
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'COD_NATUREZA_JURIDICA'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 15
          Width = 91
        end
        object edDiretor: TcxDBTextEdit
          Left = 630
          Top = 203
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'DIRETOR'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 12
          Width = 302
        end
        object edLogradouro: TcxDBTextEdit
          Left = 81
          Top = 109
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'LOGRADOURO'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 5
          Width = 500
        end
        object edNumero: TcxDBTextEdit
          Left = 632
          Top = 108
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'NUMERO'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 6
          Width = 97
        end
        object edRazaoSocial: TcxDBTextEdit
          Left = 81
          Top = 15
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          TabStop = False
          DataBinding.DataField = 'RAZAO_SOCIAL'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.StyleController = cxEditStyleNormal
          TabOrder = 0
          Width = 500
        end
        object edSigla: TcxDBTextEdit
          Left = 630
          Top = 14
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'SIGLA'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 1
          Width = 97
        end
        object edTelefone: TcxDBTextEdit
          Left = 81
          Top = 203
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'TELEFONE'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 11
          Width = 300
        end
        object imgBrasao: TcxDBImage
          Left = 81
          Top = 298
          DataBinding.DataField = 'BRASAO'
          DataBinding.DataSource = dsConfigOrgao
          Style.StyleController = cxEditStyleNormal
          TabOrder = 17
          Height = 191
          Width = 300
        end
        object gbTipo: TcxDBRadioGroup
          Left = 81
          Top = 54
          Caption = ' Tipo: '
          DataBinding.DataField = 'TIPO'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.Columns = 3
          Properties.DefaultValue = '1'
          Properties.Items = <
            item
              Caption = 'Prefeitura'
              Value = 1
            end
            item
              Caption = 'C'#226'mara'
              Value = 2
            end
            item
              Caption = 'Autarquia'
              Value = 3
            end>
          Style.StyleController = cxEditStyleNormal
          TabOrder = 3
          Height = 41
          Width = 500
        end
        object edCodMunTCM: TcxDBTextEdit
          Left = 835
          Top = 14
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'COD_MUNICIPIO_TCM'
          DataBinding.DataSource = dsConfigOrgao
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 2
          Width = 97
        end
      end
      object cxTabSheet2: TcxTabSheet
        Caption = 'Sistema'
        ImageIndex = 1
        object gbCodEventos: TGroupBox
          Left = 0
          Top = 0
          Width = 481
          Height = 492
          Caption = ' C'#243'digos dos Eventos: '
          TabOrder = 0
          object Label11: TLabel
            Left = 5
            Top = 38
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Sal'#225'rio Fam'#237'lia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label17: TLabel
            Left = 5
            Top = 76
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Desconto de INSS e IPM:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label19: TLabel
            Left = 5
            Top = 155
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = '1/3 e Adiantamento de F'#233'rias:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label20: TLabel
            Left = 5
            Top = 194
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Abono Pecuni'#225'rio de F'#233'rias:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label21: TLabel
            Left = 5
            Top = 233
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = '1/3 e F'#233'rias Proporcionais:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label22: TLabel
            Left = 3
            Top = 311
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'A.T.S. (C'#243'digo, Tempo e Percentual):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label23: TLabel
            Left = 5
            Top = 350
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Pens'#227'o Aliment'#237'cia:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label24: TLabel
            Left = 5
            Top = 389
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Hora Aula Suplementar e Substitui'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label25: TLabel
            Left = 5
            Top = 429
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Falta (Dia e Hora/Aula):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label29: TLabel
            Left = 5
            Top = 116
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Desconto de IRRF:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label30: TLabel
            Left = 5
            Top = 272
            Width = 213
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = '13'#186' Sal. Proporcional:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object edQtdAnoATS: TcxDBTextEdit
            Left = 313
            Top = 306
            Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
            HelpType = htKeyword
            HelpKeyword = 'ID_EST_FUNC_ADIANT_FERIAS'
            DataBinding.DataField = 'QTD_ANO_ATS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.CharCase = ecUpperCase
            Style.StyleController = cxEditStyleNormal
            TabOrder = 11
            Width = 66
          end
          object edCodEventoSalFam: TbsDBButtonEdit
            Left = 222
            Top = 33
            DataBinding.DataField = 'ID_EVENTO_SAL_FAMILIA'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 0
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoATS: TbsDBButtonEdit
            Left = 222
            Top = 306
            DataBinding.DataField = 'ID_EVENTO_ATS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 10
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoPensaoAliment: TbsDBButtonEdit
            Left = 224
            Top = 346
            DataBinding.DataField = 'ID_EVENTO_PENSAO_ALIMENTICIA'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 13
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoHAulaSuplem: TbsDBButtonEdit
            Left = 224
            Top = 378
            DataBinding.DataField = 'ID_EVENTO_H_AULA_SUPLEM'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 15
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoFaltaDia: TbsDBButtonEdit
            Left = 222
            Top = 424
            DataBinding.DataField = 'ID_EVENTO_FALTA_DIA'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 16
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEvento13Ferias: TbsDBButtonEdit
            Left = 224
            Top = 150
            DataBinding.DataField = 'ID_EVENTO_TERCO_FERIAS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 4
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoAbonPecunFerias: TbsDBButtonEdit
            Left = 222
            Top = 189
            DataBinding.DataField = 'ID_EVENTO_ABONO_PECUN_FERIAS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 6
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEvento13FeraisProporc: TbsDBButtonEdit
            Left = 222
            Top = 228
            DataBinding.DataField = 'ID_EVENTO_TERCO_FERIAS_PROPORC'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 7
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoINSS: TbsDBButtonEdit
            Left = 222
            Top = 72
            DataBinding.DataField = 'ID_EVENTO_PREVID_INSS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 1
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoIPM: TbsDBButtonEdit
            Left = 312
            Top = 72
            DataBinding.DataField = 'ID_EVENTO_PREVID_IPM'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 2
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoIRRF: TbsDBButtonEdit
            Left = 222
            Top = 111
            DataBinding.DataField = 'ID_EVENTO_IRRF'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 3
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoAdiantFerias: TbsDBButtonEdit
            Left = 312
            Top = 150
            DataBinding.DataField = 'ID_EVENTO_ADIANT_FERIAS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 5
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoFeriasProporc: TbsDBButtonEdit
            Left = 312
            Top = 228
            DataBinding.DataField = 'ID_EVENTO_FERIAS_PROPORC'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 8
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEvento13SalProporc: TbsDBButtonEdit
            Left = 222
            Top = 267
            DataBinding.DataField = 'ID_EVENTO_DEC_TERCEIRO_PROPORC'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 9
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoHAulaSubstit: TbsDBButtonEdit
            Left = 312
            Top = 384
            DataBinding.DataField = 'ID_EVENTO_H_AULA_SUBSTIT'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 14
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodEventoFaltaHAula: TbsDBButtonEdit
            Left = 313
            Top = 424
            DataBinding.DataField = 'ID_EVENTO_FALTA_H_AULA'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 17
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edPercentATS: TcxDBCurrencyEdit
            Left = 402
            Top = 306
            DataBinding.DataField = 'PERCENT_ATS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Style.StyleController = cxEditStyleNormal
            TabOrder = 12
            Width = 67
          end
        end
        object gbCodSituacoes: TcxGroupBox
          Left = 496
          Top = 0
          Caption = ' C'#243'digos de Situa'#231#245'es: '
          ParentFont = False
          Style.StyleController = cxEditStyleNormal
          TabOrder = 1
          Height = 148
          Width = 443
          object Label27: TLabel
            Left = 10
            Top = 34
            Width = 134
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Licen'#231'a Maternidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label26: TLabel
            Left = 10
            Top = 72
            Width = 134
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'F'#233'rias pagas Adiantado:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label28: TLabel
            Left = 10
            Top = 106
            Width = 134
            Height = 15
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Demitido:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Calibri'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object edCodSituacLicMatern: TbsDBButtonEdit
            Left = 147
            Top = 29
            DataBinding.DataField = 'ID_EST_FUNC_LICENC_MATERN'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 0
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodSituacFeriasPagAdiant: TbsDBButtonEdit
            Left = 147
            Top = 67
            DataBinding.DataField = 'ID_EST_FUNC_ADIANT_FERIAS'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 1
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
          object edCodSituacDemitido: TbsDBButtonEdit
            Left = 147
            Top = 101
            DataBinding.DataField = 'ID_EST_FUNC_DEMITIDO'
            DataBinding.DataSource = dsConfigSistema
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Style.StyleController = cxEditStyleNormal
            TabOrder = 2
            LookupInformation.FieldList = 'Descricao'
            LookupInformation.TableName = 'Situacao'
            LookupInformation.Caption = 'Selecione uma Situa'#231#227'o ...'
            Width = 67
          end
        end
        object gbModeloCCheque: TcxDBRadioGroup
          Left = 496
          Top = 168
          Caption = ' Modelo do Contra-Cheque:  '
          DataBinding.DataField = 'MODELO_C_CHEQUE'
          DataBinding.DataSource = dsConfigSistema
          ParentFont = False
          Properties.DefaultValue = '1'
          Properties.Items = <
            item
              Caption = 'Impressora matricial'
              Value = 1
            end
            item
              Caption = 'Impressa Laser/Jato de tinta (p'#225'gina inteira)'
              Value = 2
            end
            item
              Caption = 'Impressora Laser/Jato de tinta (m'#233'ia p'#225'gina)'
              Value = 3
            end>
          Style.StyleController = cxEditStyleNormal
          TabOrder = 2
          Height = 174
          Width = 443
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = 'I .P. M. '
        ImageIndex = 2
        object Label34: TLabel
          Left = 8
          Top = 176
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 8
          Top = 221
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 8
          Top = 265
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 8
          Top = 132
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 8
          Top = 87
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sigla:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 8
          Top = 43
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nome:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 8
          Top = 310
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Presidente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 8
          Top = 354
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Implanta'#231#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 8
          Top = 399
          Width = 112
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Encerramento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clDefault
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
        end
        object edNomeIPM: TcxDBTextEdit
          Left = 121
          Top = 41
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          TabStop = False
          DataBinding.DataField = 'NOME'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.ReadOnly = True
          Style.StyleController = cxEditStyleNormal
          TabOrder = 0
          Width = 500
        end
        object edSiglaIPM: TcxDBTextEdit
          Left = 121
          Top = 85
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'SIGLA'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 1
          Width = 97
        end
        object edEnderIPM: TcxDBTextEdit
          Left = 121
          Top = 174
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'LOGRADOURO'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 3
          Width = 500
        end
        object edNumEnderIPM: TcxDBTextEdit
          Left = 120
          Top = 219
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'NUMERO'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 4
          Width = 97
        end
        object edCNPIPM: TcxDBTextEdit
          Left = 121
          Top = 130
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'CNPJ'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 2
          Width = 166
        end
        object edBairroIPM: TcxDBTextEdit
          Left = 121
          Top = 263
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 5
          Width = 300
        end
        object edPresidenteIPM: TcxDBTextEdit
          Left = 121
          Top = 308
          Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
          DataBinding.DataField = 'NOME_PRESIDENTE'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.StyleController = cxEditStyleNormal
          TabOrder = 6
          Width = 302
        end
        object edDtImplantIPM: TcxDBDateEdit
          Left = 121
          Top = 352
          DataBinding.DataField = 'DT_IMPLANTACAO'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Style.StyleController = cxEditStyleNormal
          TabOrder = 7
          Width = 122
        end
        object edDtEncerramentoIPM: TcxDBDateEdit
          Left = 121
          Top = 397
          DataBinding.DataField = 'DT_ENCERRAMENTO'
          DataBinding.DataSource = dsConfigIPM
          ParentFont = False
          Style.StyleController = cxEditStyleNormal
          TabOrder = 8
          Width = 122
        end
      end
      object cxTabSheet4: TcxTabSheet
        Caption = ' Ordenadores de Despesa'
        ImageIndex = 3
        object GridTable: TcxGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 933
          Height = 470
          Align = alTop
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object GridTableDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = dsOrdenadorDespesa
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
            Styles.StyleSheet = GridTableViewStyleSheetPadrao
            object GridTableDBTableView1ID: TcxGridDBColumn
              Caption = 'C'#243'd.'
              DataBinding.FieldName = 'ID'
              Width = 41
            end
            object GridTableDBTableView1NOME: TcxGridDBColumn
              DataBinding.FieldName = 'NOME'
              Width = 379
            end
            object GridTableDBTableView1CARGO: TcxGridDBColumn
              DataBinding.FieldName = 'CARGO'
              Width = 385
            end
            object GridTableDBTableView1SEXO: TcxGridDBColumn
              DataBinding.FieldName = 'SEXO'
              HeaderAlignmentHorz = taCenter
              Width = 53
            end
            object GridTableDBTableView1Column1: TcxGridDBColumn
              Caption = 'Ativo'
              DataBinding.FieldName = 'ATIVO'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 57
            end
          end
          object GridTableLevel1: TcxGridLevel
            GridView = GridTableDBTableView1
          end
        end
        object cxButton3: TcxButton
          Tag = 3
          Left = 832
          Top = 479
          Width = 102
          Height = 25
          Caption = 'Excluir'
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Default'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton1Click
        end
        object cxButton2: TcxButton
          Tag = 2
          Left = 683
          Top = 479
          Width = 102
          Height = 25
          Caption = 'Alterar'
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Default'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton1Click
        end
        object cxButton1: TcxButton
          Tag = 1
          Left = 528
          Top = 479
          Width = 102
          Height = 25
          Caption = 'Incluir'
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Default'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton1Click
        end
      end
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Top = 65528
    inherited GridTableViewStyleSheetPadrao: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    inherited GridTableViewStyleSheetPadrao2: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    inherited GridTableViewStyleSheetPadrao3: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    inherited GridTableViewStyleSheetPadrao4: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  inherited cxEditStyleCheckBox: TcxEditStyleController
    Style.IsFontAssigned = True
    Top = 65528
  end
  inherited cxEditStyleNormal: TcxEditStyleController
    Style.IsFontAssigned = True
    Top = 65528
  end
  inherited cxEditStyleReadyOnly: TcxEditStyleController
    Style.IsFontAssigned = True
    Top = 65528
  end
  object sdsConfigOrgao: TSQLDataSet
    Tag = 1
    GetMetadata = False
    CommandText = 'SELECT * FROM CONFIG_ORGAO  WHERE 0 = :ID'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    Left = 640
    Top = 96
    object sdsConfigOrgaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Required = True
      Size = 50
    end
    object sdsConfigOrgaoSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 10
    end
    object sdsConfigOrgaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Required = True
      Size = 14
    end
    object sdsConfigOrgaoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object sdsConfigOrgaoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sdsConfigOrgaoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object sdsConfigOrgaoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsConfigOrgaoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object sdsConfigOrgaoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsConfigOrgaoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object sdsConfigOrgaoDIRETOR: TStringField
      FieldName = 'DIRETOR'
      Required = True
      Size = 30
    end
    object sdsConfigOrgaoCOD_CNAE: TIntegerField
      FieldName = 'COD_CNAE'
      Required = True
    end
    object sdsConfigOrgaoCOD_FPAS: TIntegerField
      FieldName = 'COD_FPAS'
      Required = True
    end
    object sdsConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField
      FieldName = 'COD_NATUREZA_JURIDICA'
      Required = True
    end
    object sdsConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField
      FieldName = 'COD_MUNICIPIO_RAIS'
      Required = True
    end
    object sdsConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField
      FieldName = 'COD_MUNICIPIO_TCM'
      Required = True
    end
    object sdsConfigOrgaoTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
    end
    object sdsConfigOrgaoBRASAO: TBlobField
      FieldName = 'BRASAO'
      Size = 1
    end
  end
  object dspConfigOrgao: TDataSetProvider
    DataSet = sdsConfigOrgao
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 640
    Top = 144
  end
  object cdsConfigOrgao: TClientDataSet
    Tag = 1
    Aggregates = <>
    CommandText = 'SELECT * FROM CONFIG_ORGAO  WHERE 0 = :ID'
    Filtered = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'RAZAO_SOCIAL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SIGLA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CNPJ'
        Attributes = [faRequired]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'LOGRADOURO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CEP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DIRETOR'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'COD_CNAE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COD_FPAS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COD_NATUREZA_JURIDICA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COD_MUNICIPIO_RAIS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'COD_MUNICIPIO_TCM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BRASAO'
        DataType = ftBlob
        Size = 1
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Value = '0'
      end>
    ProviderName = 'dspConfigOrgao'
    StoreDefs = True
    AfterPost = cdsConfigOrgaoAfterPost
    Left = 640
    Top = 192
    object cdsConfigOrgaoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfigOrgaoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Required = True
      Size = 50
    end
    object cdsConfigOrgaoSIGLA: TStringField
      FieldName = 'SIGLA'
      Required = True
      Size = 10
    end
    object cdsConfigOrgaoCNPJ: TStringField
      FieldName = 'CNPJ'
      Required = True
      Size = 14
    end
    object cdsConfigOrgaoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 80
    end
    object cdsConfigOrgaoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsConfigOrgaoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 40
    end
    object cdsConfigOrgaoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsConfigOrgaoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object cdsConfigOrgaoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConfigOrgaoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 50
    end
    object cdsConfigOrgaoDIRETOR: TStringField
      FieldName = 'DIRETOR'
      Required = True
      Size = 30
    end
    object cdsConfigOrgaoCOD_CNAE: TIntegerField
      FieldName = 'COD_CNAE'
      Required = True
    end
    object cdsConfigOrgaoCOD_FPAS: TIntegerField
      FieldName = 'COD_FPAS'
      Required = True
    end
    object cdsConfigOrgaoCOD_NATUREZA_JURIDICA: TIntegerField
      FieldName = 'COD_NATUREZA_JURIDICA'
      Required = True
    end
    object cdsConfigOrgaoCOD_MUNICIPIO_RAIS: TIntegerField
      FieldName = 'COD_MUNICIPIO_RAIS'
      Required = True
    end
    object cdsConfigOrgaoCOD_MUNICIPIO_TCM: TIntegerField
      FieldName = 'COD_MUNICIPIO_TCM'
      Required = True
    end
    object cdsConfigOrgaoTIPO: TIntegerField
      FieldName = 'TIPO'
      Required = True
    end
    object cdsConfigOrgaoBRASAO: TBlobField
      FieldName = 'BRASAO'
      Size = 1
    end
  end
  object dsConfigOrgao: TDataSource
    DataSet = cdsConfigOrgao
    Left = 640
    Top = 249
  end
  object sdsOrdenadorDespesa: TSQLDataSet
    Tag = 1
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 'SELECT * FROM ORDENADOR_DESPESA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    Left = 416
    Top = 288
    object sdsOrdenadorDespesaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdenadorDespesaNOME: TStringField
      Tag = 1
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object sdsOrdenadorDespesaCARGO: TStringField
      Tag = 1
      FieldName = 'CARGO'
      Required = True
      Size = 50
    end
    object sdsOrdenadorDespesaSEXO: TStringField
      Tag = 1
      FieldName = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsOrdenadorDespesaATIVO: TStringField
      Tag = 1
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspOrdenadorDespesa: TDataSetProvider
    DataSet = sdsOrdenadorDespesa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 416
    Top = 336
  end
  object cdsOrdenadorDepesa: TClientDataSet
    Tag = 1
    Aggregates = <>
    CommandText = 'SELECT * FROM ORDENADOR_DESPESA'
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CARGO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'SEXO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ATIVO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspOrdenadorDespesa'
    StoreDefs = True
    Left = 416
    Top = 384
    object cdsOrdenadorDepesaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdenadorDepesaNOME: TStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 40
    end
    object cdsOrdenadorDepesaCARGO: TStringField
      Tag = 1
      DisplayLabel = 'Cargo'
      FieldName = 'CARGO'
      Required = True
      Size = 50
    end
    object cdsOrdenadorDepesaSEXO: TStringField
      Tag = 1
      DisplayLabel = 'Sexo'
      FieldName = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsOrdenadorDepesaATIVO: TStringField
      FieldName = 'ATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdenadorDespesa: TDataSource
    Tag = 3
    DataSet = cdsOrdenadorDepesa
    Left = 416
    Top = 432
  end
  object sdsConfigSistema: TSQLDataSet
    Tag = 1
    SchemaName = 'sysdba'
    GetMetadata = False
    CommandText = 'SELECT * FROM CONFIG_SISTEMA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    Left = 512
    Top = 96
    object sdsConfigSistemaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_PREVID_INSS: TIntegerField
      FieldName = 'ID_EVENTO_PREVID_INSS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_PREVID_IPM: TIntegerField
      FieldName = 'ID_EVENTO_PREVID_IPM'
      ProviderFlags = [pfInUpdate]
    end
    object sdsConfigSistemaID_EVENTO_SAL_FAMILIA: TIntegerField
      FieldName = 'ID_EVENTO_SAL_FAMILIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_IRRF: TIntegerField
      FieldName = 'ID_EVENTO_IRRF'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_FALTA_DIA: TIntegerField
      FieldName = 'ID_EVENTO_FALTA_DIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_FALTA_H_AULA: TIntegerField
      FieldName = 'ID_EVENTO_FALTA_H_AULA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsConfigSistemaID_EVENTO_TERCO_FERIAS: TIntegerField
      FieldName = 'ID_EVENTO_TERCO_FERIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_ABONO_PECUN_FERIAS: TIntegerField
      FieldName = 'ID_EVENTO_ABONO_PECUN_FERIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_ADIANT_FERIAS: TIntegerField
      FieldName = 'ID_EVENTO_ADIANT_FERIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_TERCO_FERIAS_PROPORC: TIntegerField
      FieldName = 'ID_EVENTO_TERCO_FERIAS_PROPORC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_FERIAS_PROPORC: TIntegerField
      FieldName = 'ID_EVENTO_FERIAS_PROPORC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_DEC_TERCEIRO_PROPORC: TIntegerField
      FieldName = 'ID_EVENTO_DEC_TERCEIRO_PROPORC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_H_AULA_SUPLEM: TIntegerField
      FieldName = 'ID_EVENTO_H_AULA_SUPLEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_H_AULA_SUBSTIT: TIntegerField
      FieldName = 'ID_EVENTO_H_AULA_SUBSTIT'
      ProviderFlags = [pfInUpdate]
    end
    object sdsConfigSistemaID_EVENTO_PENSAO_ALIMENTICIA: TIntegerField
      FieldName = 'ID_EVENTO_PENSAO_ALIMENTICIA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_ADIANT_DEC_TERCEIRO: TIntegerField
      FieldName = 'ID_EVENTO_ADIANT_DEC_TERCEIRO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_DIA_EXTRA: TIntegerField
      FieldName = 'ID_EVENTO_DIA_EXTRA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EVENTO_ATS: TIntegerField
      FieldName = 'ID_EVENTO_ATS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaQTD_ANO_ATS: TIntegerField
      FieldName = 'QTD_ANO_ATS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaPERCENT_ATS: TFMTBCDField
      FieldName = 'PERCENT_ATS'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 4
    end
    object sdsConfigSistemaID_EST_FUNC_LICENC_MATERN: TIntegerField
      FieldName = 'ID_EST_FUNC_LICENC_MATERN'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EST_FUNC_DEMITIDO: TIntegerField
      FieldName = 'ID_EST_FUNC_DEMITIDO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaID_EST_FUNC_ADIANT_FERIAS: TIntegerField
      FieldName = 'ID_EST_FUNC_ADIANT_FERIAS'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaMODELO_C_CHEQUE: TIntegerField
      FieldName = 'MODELO_C_CHEQUE'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsConfigSistemaCARGA_HOR_PADRAO: TIntegerField
      FieldName = 'CARGA_HOR_PADRAO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dspConfigSistema: TDataSetProvider
    DataSet = sdsConfigSistema
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 512
    Top = 144
  end
  object cdsConfigSistema: TClientDataSet
    Tag = 1
    Aggregates = <>
    CommandText = 'SELECT * FROM CONFIG_SISTEMA'
    Filtered = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_PREVID_INSS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_PREVID_IPM'
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_SAL_FAMILIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_IRRF'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_FALTA_DIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_FALTA_H_AULA'
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_TERCO_FERIAS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_ABONO_PECUN_FERIAS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_ADIANT_FERIAS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_TERCO_FERIAS_PROPORC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_FERIAS_PROPORC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_DEC_TERCEIRO_PROPORC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_H_AULA_SUPLEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_H_AULA_SUBSTIT'
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_PENSAO_ALIMENTICIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_ADIANT_DEC_TERCEIRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_DIA_EXTRA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EVENTO_ATS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'QTD_ANO_ATS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PERCENT_ATS'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 4
      end
      item
        Name = 'ID_EST_FUNC_LICENC_MATERN'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EST_FUNC_DEMITIDO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_EST_FUNC_ADIANT_FERIAS'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'MODELO_C_CHEQUE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CARGA_HOR_PADRAO'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspConfigSistema'
    StoreDefs = True
    Left = 512
    Top = 192
    object cdsConfigSistemaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_PREVID_INSS: TIntegerField
      FieldName = 'ID_EVENTO_PREVID_INSS'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_PREVID_IPM: TIntegerField
      FieldName = 'ID_EVENTO_PREVID_IPM'
    end
    object cdsConfigSistemaID_EVENTO_SAL_FAMILIA: TIntegerField
      FieldName = 'ID_EVENTO_SAL_FAMILIA'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_IRRF: TIntegerField
      FieldName = 'ID_EVENTO_IRRF'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_FALTA_DIA: TIntegerField
      FieldName = 'ID_EVENTO_FALTA_DIA'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_FALTA_H_AULA: TIntegerField
      FieldName = 'ID_EVENTO_FALTA_H_AULA'
    end
    object cdsConfigSistemaID_EVENTO_TERCO_FERIAS: TIntegerField
      FieldName = 'ID_EVENTO_TERCO_FERIAS'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_ABONO_PECUN_FERIAS: TIntegerField
      FieldName = 'ID_EVENTO_ABONO_PECUN_FERIAS'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_ADIANT_FERIAS: TIntegerField
      FieldName = 'ID_EVENTO_ADIANT_FERIAS'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_TERCO_FERIAS_PROPORC: TIntegerField
      FieldName = 'ID_EVENTO_TERCO_FERIAS_PROPORC'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_FERIAS_PROPORC: TIntegerField
      FieldName = 'ID_EVENTO_FERIAS_PROPORC'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_DEC_TERCEIRO_PROPORC: TIntegerField
      FieldName = 'ID_EVENTO_DEC_TERCEIRO_PROPORC'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_H_AULA_SUPLEM: TIntegerField
      FieldName = 'ID_EVENTO_H_AULA_SUPLEM'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_H_AULA_SUBSTIT: TIntegerField
      FieldName = 'ID_EVENTO_H_AULA_SUBSTIT'
    end
    object cdsConfigSistemaID_EVENTO_PENSAO_ALIMENTICIA: TIntegerField
      FieldName = 'ID_EVENTO_PENSAO_ALIMENTICIA'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_ADIANT_DEC_TERCEIRO: TIntegerField
      FieldName = 'ID_EVENTO_ADIANT_DEC_TERCEIRO'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_DIA_EXTRA: TIntegerField
      FieldName = 'ID_EVENTO_DIA_EXTRA'
      Required = True
    end
    object cdsConfigSistemaID_EVENTO_ATS: TIntegerField
      FieldName = 'ID_EVENTO_ATS'
      Required = True
    end
    object cdsConfigSistemaQTD_ANO_ATS: TIntegerField
      FieldName = 'QTD_ANO_ATS'
      Required = True
    end
    object cdsConfigSistemaPERCENT_ATS: TFMTBCDField
      FieldName = 'PERCENT_ATS'
      Required = True
      Precision = 15
      Size = 4
    end
    object cdsConfigSistemaID_EST_FUNC_LICENC_MATERN: TIntegerField
      FieldName = 'ID_EST_FUNC_LICENC_MATERN'
      Required = True
    end
    object cdsConfigSistemaID_EST_FUNC_DEMITIDO: TIntegerField
      FieldName = 'ID_EST_FUNC_DEMITIDO'
      Required = True
    end
    object cdsConfigSistemaID_EST_FUNC_ADIANT_FERIAS: TIntegerField
      FieldName = 'ID_EST_FUNC_ADIANT_FERIAS'
      Required = True
    end
    object cdsConfigSistemaMODELO_C_CHEQUE: TIntegerField
      FieldName = 'MODELO_C_CHEQUE'
      Required = True
    end
    object cdsConfigSistemaCARGA_HOR_PADRAO: TIntegerField
      FieldName = 'CARGA_HOR_PADRAO'
      Required = True
    end
  end
  object dsConfigSistema: TDataSource
    Tag = 1
    DataSet = cdsConfigSistema
    Left = 512
    Top = 249
  end
  object sdsConfigIPM: TSQLDataSet
    Tag = 1
    SchemaName = 'sysdba'
    GetMetadata = False
    CommandText = 'SELECT * FROM CONFIG_IPM'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    Left = 736
    Top = 96
    object sdsConfigIPMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsConfigIPMNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsConfigIPMENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object sdsConfigIPMNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object sdsConfigIPMBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsConfigIPMCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object sdsConfigIPMCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object sdsConfigIPMUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsConfigIPMCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 14
    end
    object sdsConfigIPMDT_IMPLANTACAO: TDateField
      FieldName = 'DT_IMPLANTACAO'
    end
    object sdsConfigIPMDT_ENCERRAMENTO: TDateField
      FieldName = 'DT_ENCERRAMENTO'
    end
    object sdsConfigIPMNOME_PRESIDENTE: TStringField
      FieldName = 'NOME_PRESIDENTE'
      Size = 50
    end
  end
  object dspConfigIPM: TDataSetProvider
    DataSet = sdsConfigIPM
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 736
    Top = 144
  end
  object cdsConfigIPM: TClientDataSet
    Tag = 1
    Aggregates = <>
    CommandText = 'SELECT * FROM CONFIG_IPM  WHERE 0 = :ID'
    Filtered = True
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'ENDERECO'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NUMERO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'BAIRRO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CIDADE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CEP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CNPJ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'DT_IMPLANTACAO'
        DataType = ftDate
      end
      item
        Name = 'DT_ENCERRAMENTO'
        DataType = ftDate
      end
      item
        Name = 'NOME_PRESIDENTE'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspConfigIPM'
    StoreDefs = True
    AfterPost = cdsConfigOrgaoAfterPost
    Left = 736
    Top = 192
    object cdsConfigIPMID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsConfigIPMNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsConfigIPMENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 100
    end
    object cdsConfigIPMNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object cdsConfigIPMBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsConfigIPMCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object cdsConfigIPMCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 8
    end
    object cdsConfigIPMUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsConfigIPMCNPJ: TStringField
      FieldName = 'CNPJ'
      EditMask = '99.999.999/9999-99;0; '
      FixedChar = True
      Size = 14
    end
    object cdsConfigIPMDT_IMPLANTACAO: TDateField
      FieldName = 'DT_IMPLANTACAO'
    end
    object cdsConfigIPMDT_ENCERRAMENTO: TDateField
      FieldName = 'DT_ENCERRAMENTO'
    end
    object cdsConfigIPMNOME_PRESIDENTE: TStringField
      FieldName = 'NOME_PRESIDENTE'
      Size = 50
    end
  end
  object dsConfigIPM: TDataSource
    Tag = 2
    DataSet = cdsConfigIPM
    Left = 736
    Top = 249
  end
end
