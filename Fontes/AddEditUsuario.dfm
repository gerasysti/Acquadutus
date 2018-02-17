inherited frmAddEditUsuario: TfrmAddEditUsuario
  Left = 228
  Top = 210
  Caption = 'frmAddEditUsuario'
  ClientHeight = 600
  ClientWidth = 667
  Font.Height = -12
  Font.Name = 'Calibri'
  OnCreate = FormCreate
  ExplicitWidth = 673
  ExplicitHeight = 629
  PixelsPerInch = 96
  TextHeight = 14
  inherited PanelClient: TPanel
    Width = 667
    Height = 567
    ParentDoubleBuffered = False
    ExplicitWidth = 667
    ExplicitHeight = 567
    inherited lblPadrao: TcxLabel
      Left = 3
      Top = 15
      Caption = 'Id.:'
      ExplicitLeft = 3
      ExplicitTop = 15
      ExplicitHeight = 21
      Height = 21
      AnchorX = 84
    end
    object edId: TcxDBTextEdit
      Left = 84
      Top = 13
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 1
      Width = 60
    end
    object edNomeCurto: TcxDBTextEdit
      Left = 84
      Top = 47
      DataBinding.DataField = 'NOME_CURTO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 7
      Width = 131
    end
    object edIdServidor: TcxDBTextEdit
      Tag = 1
      Left = 541
      Top = 13
      Hint = 'Servidor [Ctrl+Enter ou F3 > Pesquisa]'
      AutoSize = False
      DataBinding.DataField = 'ID_FUNCIONARIO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 7
      Style.BorderStyle = ebsSingle
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 3
      OnExit = edIdServidorExit
      OnKeyDown = edIdServidorKeyDown
      OnKeyPress = edIdServidorKeyPress
      Height = 23
      Width = 93
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 49
      AutoSize = False
      Caption = 'Nome Curto:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 21
      Width = 81
      AnchorX = 84
    end
    object cxLabel2: TcxLabel
      Left = 3
      Top = 82
      AutoSize = False
      Caption = 'Cargo/Fun'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 21
      Width = 81
      AnchorX = 84
    end
    object cxLabel7: TcxLabel
      Left = 275
      Top = 49
      AutoSize = False
      Caption = 'Nome Completo:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 100
      AnchorX = 375
    end
    object edNomeCompleto: TcxDBTextEdit
      Left = 375
      Top = 47
      AutoSize = False
      DataBinding.DataField = 'NOME_COMPLETO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 8
      Height = 23
      Width = 259
    end
    object chkServidor: TcxDBCheckBox
      Left = 220
      Top = 13
      Caption = 'Este Usu'#225'rio '#233' um Funcion'#225'rio ...'
      DataBinding.DataField = 'FUNCIONARIO'
      DataBinding.DataSource = ds1
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.NullStyle = nssUnchecked
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = [fsBold, fsItalic]
      Style.Shadow = True
      Style.StyleController = dmPrincipal.cxEditStyleCheckBox
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
    end
    object cxLabel18: TcxLabel
      Left = 445
      Top = 15
      AutoSize = False
      Caption = 'Id. Funion'#225'rio:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 95
      AnchorX = 540
    end
    object edCargoFuncao: TcxDBTextEdit
      Left = 84
      Top = 80
      DataBinding.DataField = 'CARGO_FUNCAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 9
      Width = 234
    end
    object gbPermisEspeciais: TcxGroupBox
      Left = 3
      Top = 372
      Caption = ' Permiss'#245'es Especiais: '
      ParentFont = False
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 14
      Height = 188
      Width = 657
      object cxDBCheckBox21: TcxDBCheckBox
        Left = 6
        Top = 16
        Caption = 'Acessar Tab. de Tarifas'
        DataBinding.DataField = 'ACESS_TAB_TARIFA'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = 14938356
        StyleDisabled.Color = 14938356
        StyleDisabled.TextColor = 16384
        TabOrder = 0
      end
      object cxDBCheckBox22: TcxDBCheckBox
        Left = 6
        Top = 37
        Caption = 'Acessar Cad. de Unid. Consum.'
        DataBinding.DataField = 'ACESS_CAD_UNID_CONSUM'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = 14938356
        StyleDisabled.Color = 14938356
        StyleDisabled.TextColor = 16384
        TabOrder = 1
      end
      object chkCopEventoMesAnter: TcxDBCheckBox
        Left = 6
        Top = 58
        Caption = 'Calcular Tarifa Individual'
        DataBinding.DataField = 'CALC_TARIFA_INDIV'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = 14938356
        StyleDisabled.Color = 14938356
        StyleDisabled.TextColor = 16384
        TabOrder = 2
      end
      object chkImportEvArqTXT: TcxDBCheckBox
        Left = 6
        Top = 79
        Caption = 'Calcular Tarifa p/ Bairro'
        DataBinding.DataField = 'CALC_TARIFA_BAIRRO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = 14938356
        StyleDisabled.Color = 14938356
        StyleDisabled.TextColor = 16384
        TabOrder = 3
      end
      object cxDBCheckBox1: TcxDBCheckBox
        Left = 6
        Top = 100
        Caption = 'Calcular Reajuste '
        DataBinding.DataField = 'CALC_REAJUSTE'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = 14938356
        StyleDisabled.Color = 14938356
        StyleDisabled.TextColor = 16384
        TabOrder = 4
      end
      object cxDBCheckBox2: TcxDBCheckBox
        Left = 6
        Top = 121
        Caption = 'Import. Pagto de Arquivo .TXT'
        DataBinding.DataField = 'IMPORT_PAGTO_TXT'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = 14938356
        StyleDisabled.Color = 14938356
        StyleDisabled.TextColor = 16384
        TabOrder = 5
      end
      object cxDBCheckBox3: TcxDBCheckBox
        Left = 6
        Top = 142
        Caption = 'Lan'#231'ar Pagamento(s)'
        DataBinding.DataField = 'LAN_PAGTO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 6
      end
      object cxDBCheckBox4: TcxDBCheckBox
        Left = 6
        Top = 163
        Caption = 'Cancelar Calc. da Tarifa'
        DataBinding.DataField = 'CANCEL_TARIFA'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 7
      end
      object cxDBCheckBox5: TcxDBCheckBox
        Left = 215
        Top = 16
        Caption = 'Configura '#211'rg'#227'o'
        DataBinding.DataField = 'CONFIG_ORGAO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 8
      end
      object cxDBCheckBox6: TcxDBCheckBox
        Left = 215
        Top = 37
        Caption = 'Configura Sistema'
        DataBinding.DataField = 'CONFIG_SISTEMA'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 9
      end
      object cxDBCheckBox7: TcxDBCheckBox
        Left = 215
        Top = 58
        Caption = 'Configura Relat'#243'rios'
        DataBinding.DataField = 'CONFIG_RELS'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 10
      end
      object cxDBCheckBox14: TcxDBCheckBox
        Left = 215
        Top = 142
        Caption = 'Imprimir Relat'#243'rios de Tabelas'
        DataBinding.DataField = 'REL_TABELAS'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 14
      end
      object cxDBCheckBox15: TcxDBCheckBox
        Left = 215
        Top = 79
        Caption = 'Imprimir Relat'#243'rios de Unid. Consum.'
        DataBinding.DataField = 'REL_UNID_CONSUM'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 11
      end
      object cxDBCheckBox16: TcxDBCheckBox
        Left = 215
        Top = 100
        Caption = 'Imprimir Relat'#243'rios Financeiros'
        DataBinding.DataField = 'REL_FINANCEIROS'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 12
      end
      object cxDBCheckBox17: TcxDBCheckBox
        Left = 215
        Top = 121
        Caption = 'Imprimir Documentos'
        DataBinding.DataField = 'REL_DOCTOS'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 13
      end
      object cxDBCheckBox18: TcxDBCheckBox
        Left = 215
        Top = 163
        Caption = 'Imprimir Outros Relat'#243'rios'
        DataBinding.DataField = 'REL_OUTROS'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.DisplayUnchecked = 'false'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 15
      end
      object cxDBCheckBox13: TcxDBCheckBox
        Left = 448
        Top = 16
        Caption = 'Gerador de Relat'#243'rios'
        DataBinding.DataField = 'GERADOR_RELS'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 16
      end
      object cxDBCheckBox19: TcxDBCheckBox
        Left = 448
        Top = 163
        Caption = 'Restaurar Backup'
        DataBinding.DataField = 'REST_BACKUP'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 19
      end
      object cxDBCheckBox23: TcxDBCheckBox
        Left = 448
        Top = 142
        Caption = 'Acessar Editor de Comandos SQL'
        DataBinding.DataField = 'EXECUT_COMAND_SQL'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 18
      end
      object cxDBCheckBox24: TcxDBCheckBox
        Left = 448
        Top = 121
        Caption = 'Encerrar/Reabrir Movimento '
        DataBinding.DataField = 'ENCERRAR_REABRIR_MOVIM'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        StyleDisabled.TextColor = 16384
        TabOrder = 17
      end
    end
    object cxLabel3: TcxLabel
      Left = 322
      Top = 82
      AutoSize = False
      Caption = 'Senha:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 21
      Width = 46
      AnchorX = 368
    end
    object cxLabel4: TcxLabel
      Left = 451
      Top = 82
      AutoSize = False
      Caption = 'Confirme a Senha:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 21
      Width = 107
      AnchorX = 558
    end
    object edSenha: TcxDBTextEdit
      Left = 368
      Top = 80
      Hint = 'M'#237'nimo de 4 e m'#225'ximo de 8 characteres ...'
      DataBinding.DataField = 'SENHA'
      DataBinding.DataSource = ds1
      ParentFont = False
      ParentShowHint = False
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 8
      ShowHint = True
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -13
      Style.Font.Name = 'Calibri'
      Style.Font.Style = [fsBold]
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 75
    end
    object edConfirmSenha: TcxTextEdit
      Left = 559
      Top = 80
      Hint = 'M'#237'nimo de 4 e m'#225'ximo de 8 characteres ...'
      ParentFont = False
      Properties.EchoMode = eemPassword
      Properties.MaxLength = 8
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 11
      OnExit = edConfirmSenhaExit
      Width = 75
    end
    object pcPermissoes: TcxPageControl
      AlignWithMargins = True
      Left = 4
      Top = 116
      Width = 630
      Height = 257
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 12
      Properties.ActivePage = tsDadosPessoais
      Properties.CustomButtons.Buttons = <>
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoSort]
      Properties.Style = 9
      ClientRectBottom = 257
      ClientRectRight = 630
      ClientRectTop = 23
      object tsDadosPessoais: TcxTabSheet
        Caption = '&1 - Permiss'#245's por Tabela'
        ImageIndex = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 0
          Width = 499
          Height = 230
          Margins.Left = 1
          Margins.Top = 1
          Margins.Right = 1
          Margins.Bottom = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.PriorPage.Visible = True
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.Refresh.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Buttons.Filter.Visible = False
            FilterBox.CustomizeDialog = False
            FilterBox.Visible = fvNever
            DataController.DataSource = dsUsuarioPermTabela
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
            Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao
            OnColumnHeaderClick = cxGridDBTableView1ColumnHeaderClick
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Id.'
              DataBinding.FieldName = 'ID_USUARIO_TABELA'
              SortIndex = 0
              SortOrder = soAscending
              Width = 37
            end
            object cxGridDBColumn1: TcxGridDBColumn
              Tag = 1
              Caption = 'Tabela'
              DataBinding.FieldName = 'DESCR_TABELA'
              Width = 300
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Tag = 1
              Caption = 'Incluir'
              DataBinding.FieldName = 'INCLUIR'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 48
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Tag = 1
              Caption = 'Alterar'
              DataBinding.FieldName = 'ALTERAR'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 48
            end
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Excluir'
              DataBinding.FieldName = 'EXCLUIR'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 48
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object chkIncluir: TcxCheckBox
          Tag = 1
          Left = 508
          Top = 13
          AutoSize = False
          Caption = '&Incluir'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = 11907221
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -15
          Style.Font.Name = 'Calibri'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          Style.IsFontAssigned = True
          TabOrder = 1
          OnClick = chkIncluirClick
          Height = 26
          Width = 74
        end
        object chkAlterar: TcxCheckBox
          Tag = 2
          Left = 508
          Top = 45
          AutoSize = False
          Caption = '&Alterar'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = 11907221
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -15
          Style.Font.Name = 'Calibri'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          Style.IsFontAssigned = True
          TabOrder = 2
          OnClick = chkIncluirClick
          Height = 26
          Width = 74
        end
        object chkExcluir: TcxCheckBox
          Tag = 3
          Left = 508
          Top = 77
          AutoSize = False
          Caption = 'E&xcluir'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = 11907221
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -15
          Style.Font.Name = 'Calibri'
          Style.Font.Style = [fsBold]
          Style.StyleController = dmPrincipal.cxEditStyleNormal
          Style.IsFontAssigned = True
          TabOrder = 3
          OnClick = chkIncluirClick
          Height = 26
          Width = 74
        end
      end
    end
  end
  inherited Panel: TPanel
    Top = 567
    Width = 667
    Font.Height = -12
    Font.Name = 'Calibri'
    ExplicitTop = 567
    ExplicitWidth = 667
    inherited btnCancelar: TcxButton
      Left = 566
      Top = 2
      ExplicitLeft = 566
      ExplicitTop = 2
    end
    inherited btnGravar: TcxButton
      Left = 471
      Top = 2
      ExplicitLeft = 471
      ExplicitTop = 2
    end
    object btnZerarPermissoes: TButton
      Tag = 1
      Left = 5
      Top = 1
      Width = 243
      Height = 30
      Caption = 'Tirar todas as Permiss'#245'es ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsUsuario
    Left = 272
    Top = 8
  end
  object dsUsuarioPermTabela: TDataSource
    DataSet = dmTabelas.cdsUsuarioPermTabela
    OnDataChange = dsUsuarioPermTabelaDataChange
    Left = 120
    Top = 184
  end
end
