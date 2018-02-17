inherited frmConfigAliquotas: TfrmConfigAliquotas
  Left = 214
  Top = 149
  Caption = 'frmConfigAliquotas'
  ClientHeight = 517
  ClientWidth = 638
  ExplicitLeft = 214
  ExplicitTop = 149
  ExplicitWidth = 654
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    Width = 638
    ExplicitWidth = 638
    inherited btnNovo: TcxButton
      Left = 207
      Top = 2
      Height = 57
      OnClick = btnNovoClick
      ExplicitLeft = 207
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnAlterar: TcxButton
      Left = 263
      Top = 2
      Height = 57
      OnClick = btnNovoClick
      ExplicitLeft = 263
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnExcluir: TcxButton
      Left = 319
      Top = 2
      Height = 57
      OnClick = btnExcluirClick
      ExplicitLeft = 319
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnFechar: TcxButton
      Left = 576
      Top = 2
      Height = 57
      ExplicitLeft = 576
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Width = 172
      ExplicitWidth = 172
    end
    inherited btnPesquisar: TcxButton
      Left = 438
      Top = 2
      Height = 57
      ExplicitLeft = 438
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnImprimir: TcxButton
      Left = 507
      Top = 2
      Height = 57
      ExplicitLeft = 507
      ExplicitTop = 2
      ExplicitHeight = 57
    end
  end
  inherited Page1: TcxPageControl
    Width = 632
    Height = 410
    ActivePage = cxTabSheet2
    OnChange = Page1Change
    ExplicitWidth = 632
    ExplicitHeight = 410
    ClientRectBottom = 410
    ClientRectRight = 632
    inherited ts1: TcxTabSheet
      Caption = '&1 - I.R.R.F.'
      ExplicitWidth = 632
      ExplicitHeight = 387
      object Bevel1: TBevel [0]
        Left = 0
        Top = 0
        Width = 632
        Height = 64
        Align = alTop
      end
      inherited GridTable1: TcxGrid
        AlignWithMargins = False
        Left = 118
        Top = 82
        Width = 395
        Height = 237
        Align = alNone
        ExplicitLeft = 118
        ExplicitTop = 82
        ExplicitWidth = 395
        ExplicitHeight = 237
        inherited GridTable1DBTableView1: TcxGridDBTableView
          DataController.DataSource = ds1
          Styles.Content = nil
          Styles.ContentEven = nil
          Styles.ContentOdd = nil
          Styles.Inactive = nil
          Styles.Selection = nil
          Styles.Footer = nil
          Styles.Group = nil
          Styles.GroupByBox = nil
          Styles.Header = nil
          Styles.Indicator = nil
          Styles.Preview = nil
          inherited GridTable1DBTableView1Column1: TcxGridDBColumn
            Caption = 'Faixa Inicial'
            DataBinding.FieldName = 'INI_FAIXA'
          end
          inherited GridTable1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Faixa Final'
            DataBinding.FieldName = 'FIM_FAIXA'
          end
          inherited GridTable1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Al'#237'quota'
            DataBinding.FieldName = 'ALIQUOTA'
          end
          object GridTable1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Val. Dedu'#231#227'o'
            DataBinding.FieldName = 'VAL_DEDUCAO'
            HeaderAlignmentHorz = taRightJustify
            Width = 100
          end
        end
      end
      object gbObservacao: TcxGroupBox
        Left = 0
        Top = 337
        Caption = ' Outras Dedu'#231#245'es:  '
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 1
        Height = 51
        Width = 632
        object cxLabel1: TcxLabel
          Left = 15
          Top = 19
          Caption = 'Valor da Dedu'#231#227'o por Dependente:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal
          Style.IsFontAssigned = True
        end
        object cxLabel2: TcxLabel
          Left = 415
          Top = 19
          Caption = 'Valor do Abono:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal
          Style.IsFontAssigned = True
        end
        object edValDeduzDepend: TcxDBCurrencyEdit
          Left = 211
          Top = 17
          DataBinding.DataField = 'VAL_DEDUCAO_DEPEND'
          DataBinding.DataSource = dsDeducaoIRRF
          ParentFont = False
          Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
          TabOrder = 2
          Width = 110
        end
        object edValAbono: TcxDBCurrencyEdit
          Left = 506
          Top = 17
          DataBinding.DataField = 'VAL_ABONO'
          DataBinding.DataSource = dsDeducaoIRRF
          ParentFont = False
          Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
          TabOrder = 3
          Width = 110
        end
      end
      object cxLabel7: TcxLabel
        Left = 12
        Top = 21
        Caption = 'In'#237'cio da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object cxLabel8: TcxLabel
        Left = 429
        Top = 21
        Caption = 'Isento at'#233' (R$):'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object cxLabel9: TcxLabel
        Left = 224
        Top = 21
        Caption = 'Fim da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object edIniVig: TcxTextEdit
        Left = 116
        Top = 18
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 5
        Width = 88
      end
      object edFimVig: TcxTextEdit
        Left = 320
        Top = 18
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 6
        Width = 88
      end
      object edValIsencaoIRRF: TcxCurrencyEdit
        Left = 517
        Top = 18
        ParentFont = False
        Properties.Alignment.Horz = taRightJustify
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 7
        Width = 99
      end
    end
    inherited ts2: TcxTabSheet
      ExplicitTop = 23
      ExplicitWidth = 632
      ExplicitHeight = 387
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 632
        Height = 51
        Align = alTop
        ExplicitLeft = 2
        ExplicitTop = -6
      end
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 277
        Align = alTop
        Caption = ' Sal'#225'rio Fam'#237'lia:  '
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 0
        Height = 109
        Width = 632
        object cxGrid4: TcxGrid
          AlignWithMargins = True
          Left = 166
          Top = 15
          Width = 299
          Height = 82
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView4: TcxGridDBTableView
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
            DataController.DataSource = dsSalFamINSS
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
            OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
            object cxGridDBColumn8: TcxGridDBColumn
              Caption = 'Faixa Inicial'
              DataBinding.FieldName = 'INI_FAIXA'
              HeaderAlignmentHorz = taRightJustify
              SortIndex = 0
              SortOrder = soAscending
              Width = 98
            end
            object cxGridDBColumn9: TcxGridDBColumn
              Caption = 'Faixa Final'
              DataBinding.FieldName = 'FIM_FAIXA'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxGridDBColumn10: TcxGridDBColumn
              Caption = 'Valor (R$)'
              DataBinding.FieldName = 'VALOR'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBTableView4
          end
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 223
        Align = alTop
        Caption = ' Patronal:  '
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 1
        Height = 54
        Width = 632
        object cxLabel3: TcxLabel
          Left = 15
          Top = 21
          Caption = 'Valor Principal (%):'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal
          Style.IsFontAssigned = True
        end
        object cxDBCurrencyEdit1: TcxDBCurrencyEdit
          Left = 124
          Top = 19
          DataBinding.DataField = 'PRINCIPAL'
          DataBinding.DataSource = dsAliqINSSPatronal
          ParentFont = False
          Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
          TabOrder = 1
          Width = 110
        end
        object cxLabel4: TcxLabel
          Left = 411
          Top = 21
          Caption = 'Valor do SAT (%):'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal
          Style.IsFontAssigned = True
        end
        object cxDBCurrencyEdit2: TcxDBCurrencyEdit
          Left = 506
          Top = 19
          DataBinding.DataField = 'SAT'
          DataBinding.DataSource = dsAliqINSSPatronal
          ParentFont = False
          Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
          TabOrder = 3
          Width = 110
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 51
        Align = alTop
        Caption = ' Empregados:  '
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 2
        Height = 172
        Width = 632
        object cxGrid2: TcxGrid
          AlignWithMargins = True
          Left = 166
          Top = 23
          Width = 299
          Height = 136
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView2: TcxGridDBTableView
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
            DataController.DataSource = dsAliqINSS
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
            OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
            object cxGridDBColumn5: TcxGridDBColumn
              Caption = 'Faixa Inicial'
              DataBinding.FieldName = 'INI_FAIXA'
              HeaderAlignmentHorz = taRightJustify
              SortIndex = 0
              SortOrder = soAscending
              Width = 98
            end
            object cxGridDBColumn6: TcxGridDBColumn
              Caption = 'Faixa Final'
              DataBinding.FieldName = 'FIM_FAIXA'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxGridDBColumn7: TcxGridDBColumn
              Caption = 'Al'#237'quota (%)'
              DataBinding.FieldName = 'VALOR'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object cxLabel10: TcxLabel
        Left = 12
        Top = 12
        Caption = 'In'#237'cio da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object edIniVigPrevid1: TcxTextEdit
        Left = 116
        Top = 10
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 88
      end
      object cxLabel11: TcxLabel
        Left = 432
        Top = 12
        Caption = 'Fim da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object edFimVigPrevid1: TcxTextEdit
        Left = 528
        Top = 9
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 6
        Width = 88
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = '&3 - Previd'#234'ncia (I.P.M.)'
      ImageIndex = 2
      object Bevel3: TBevel
        Left = 0
        Top = 0
        Width = 632
        Height = 51
        Align = alTop
        ExplicitTop = -6
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 51
        Align = alTop
        Caption = ' Empregados:  '
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 0
        Height = 172
        Width = 632
        object cxGrid1: TcxGrid
          AlignWithMargins = True
          Left = 166
          Top = 23
          Width = 299
          Height = 136
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView1: TcxGridDBTableView
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
            DataController.DataSource = dsAliqIPM
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
            OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Faixa Inicial'
              DataBinding.FieldName = 'INI_FAIXA'
              HeaderAlignmentHorz = taRightJustify
              SortIndex = 0
              SortOrder = soAscending
              Width = 98
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'Faixa Final'
              DataBinding.FieldName = 'FIM_FAIXA'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'Al'#237'quota (%)'
              DataBinding.FieldName = 'VALOR'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 0
        Top = 223
        Align = alTop
        Caption = ' Patronal:  '
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 1
        Height = 54
        Width = 632
        object cxLabel5: TcxLabel
          Left = 232
          Top = 21
          Caption = 'Valor (%):'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Calibri'
          Style.Font.Style = []
          Style.StyleController = dmPrincipal.cxLabelStyleNormal
          Style.IsFontAssigned = True
        end
        object edValPatronalPrevid2: TcxDBCurrencyEdit
          Left = 290
          Top = 19
          DataBinding.DataField = 'PRINCIPAL'
          DataBinding.DataSource = dsAliqIPMPatronal
          ParentFont = False
          Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
          TabOrder = 1
          Width = 110
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 277
        Align = alTop
        Caption = ' Sal'#225'rio Fam'#237'lia:  '
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 2
        Height = 109
        Width = 632
        object cxGrid3: TcxGrid
          AlignWithMargins = True
          Left = 166
          Top = 18
          Width = 299
          Height = 82
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView3: TcxGridDBTableView
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
            DataController.DataSource = dsSalFamIPM
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
            OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
            object cxGridDBColumn4: TcxGridDBColumn
              Caption = 'Faixa Inicial'
              DataBinding.FieldName = 'INI_FAIXA'
              HeaderAlignmentHorz = taRightJustify
              SortIndex = 0
              SortOrder = soAscending
              Width = 98
            end
            object cxGridDBColumn11: TcxGridDBColumn
              Caption = 'Fim Faixa'
              DataBinding.FieldName = 'FIM_FAIXA'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
            object cxGridDBColumn12: TcxGridDBColumn
              Caption = 'Fim Vig'#234'ncia'
              DataBinding.FieldName = 'VALOR'
              HeaderAlignmentHorz = taCenter
              Width = 91
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBTableView3
          end
        end
      end
      object cxLabel12: TcxLabel
        Left = 12
        Top = 12
        Caption = 'In'#237'cio da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object edIniVigPrevid2: TcxTextEdit
        Left = 116
        Top = 10
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 88
      end
      object cxLabel13: TcxLabel
        Left = 432
        Top = 12
        Caption = 'Fim da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object edFimVigPrevid2: TcxTextEdit
        Left = 528
        Top = 9
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 6
        Width = 88
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = '&4 - FAP'
      ImageIndex = 3
      object Bevel4: TBevel
        Left = 0
        Top = 0
        Width = 632
        Height = 51
        Align = alTop
        ExplicitTop = -6
      end
      object GridTable4: TcxGrid
        AlignWithMargins = True
        Left = 3
        Top = 54
        Width = 626
        Height = 331
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        LookAndFeel.Kind = lfFlat
        object GridDBTableView4: TcxGridDBTableView
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
          DataController.DataSource = dsAliqFAP
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
          OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
          object GridDBTableView4Column1: TcxGridDBColumn
            Caption = 'Unidade Gestora'
            DataBinding.FieldName = 'DESCR_UNID_GESTORA'
            SortIndex = 0
            SortOrder = soAscending
            Width = 467
          end
          object GridDBTableView4Column2: TcxGridDBColumn
            Caption = 'Valor (%)'
            DataBinding.FieldName = 'VALOR'
            HeaderAlignmentHorz = taRightJustify
            Width = 143
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = GridDBTableView4
        end
      end
      object cxLabel6: TcxLabel
        Left = 432
        Top = 12
        Caption = 'Fim da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object cxLabel14: TcxLabel
        Left = 12
        Top = 12
        Caption = 'In'#237'cio da Vig'#234'ncia:'
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = []
        Style.StyleController = dmPrincipal.cxLabelStyleNormal
        Style.IsFontAssigned = True
      end
      object edIniVigFAP: TcxTextEdit
        Left = 116
        Top = 10
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 88
      end
      object edFimVigFAP: TcxTextEdit
        Left = 528
        Top = 9
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 88
      end
    end
  end
  inherited Panel: TPanel
    Top = 482
    Width = 638
    Height = 35
    Align = alClient
    ExplicitTop = 482
    ExplicitWidth = 638
    ExplicitHeight = 35
    inherited edPesquisa: TcxTextEdit
      Left = 167
      Top = 3
      Properties.OnChange = edPesquisaPropertiesChange
      Visible = False
      OnKeyDown = nil
      ExplicitLeft = 167
      ExplicitTop = 3
      ExplicitWidth = 126
      Width = 126
    end
    inherited lblTitColPesquisa: TcxLabel
      Left = 4
      Top = 5
      Style.IsFontAssigned = True
      Visible = False
      ExplicitLeft = 4
      ExplicitTop = 5
      ExplicitWidth = 161
      Width = 161
      AnchorX = 165
    end
  end
  inherited sds1: TSQLDataSet
    CommandText = 
      'SELECT * FROM TAB_IRRF '#13#10'where (:sAnoMesIni >= ano_mes_ini_vig) ' +
      'and'#13#10'      (:sAnoMesFim <= ano_mes_fim_vig)'
    Params = <
      item
        DataType = ftString
        Name = 'sAnoMesIni'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'sAnoMesFim'
        ParamType = ptInput
      end>
    Left = 32
    Top = 88
    object sds1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds1ANO_MES_INI_VIG: TStringField
      FieldName = 'ANO_MES_INI_VIG'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 6
    end
    object sds1ANO_MES_FIM_VIG: TStringField
      FieldName = 'ANO_MES_FIM_VIG'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 6
    end
    object sds1INI_FAIXA: TFMTBCDField
      FieldName = 'INI_FAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sds1FIM_FAIXA: TFMTBCDField
      FieldName = 'FIM_FAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sds1ALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sds1VAL_DEDUCAO: TFMTBCDField
      FieldName = 'VAL_DEDUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 48
    Top = 112
  end
  inherited cds1: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ANO_MES_INI_VIG'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'ANO_MES_FIM_VIG'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'INI_FAIXA'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'FIM_FAIXA'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'ALIQUOTA'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'VAL_DEDUCAO'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end>
    AfterOpen = cds1AfterOpen
    AfterApplyUpdates = cds1AfterApplyUpdates
    Left = 64
    Top = 136
    object cds1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds1ANO_MES_INI_VIG: TStringField
      Alignment = taCenter
      FieldName = 'ANO_MES_INI_VIG'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '9999/99;0; '
      FixedChar = True
      Size = 6
    end
    object cds1ANO_MES_FIM_VIG: TStringField
      Alignment = taCenter
      FieldName = 'ANO_MES_FIM_VIG'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '9999/99;0; '
      FixedChar = True
      Size = 6
    end
    object cds1INI_FAIXA: TFMTBCDField
      FieldName = 'INI_FAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object cds1FIM_FAIXA: TFMTBCDField
      FieldName = 'FIM_FAIXA'
      ProviderFlags = [pfInUpdate]
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object cds1ALIQUOTA: TFMTBCDField
      FieldName = 'ALIQUOTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      DisplayFormat = ',0.00%'
      currency = True
      Precision = 15
      Size = 2
    end
    object cds1VAL_DEDUCAO: TFMTBCDField
      FieldName = 'VAL_DEDUCAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
  end
  inherited ds1: TDataSource
    Left = 80
    Top = 152
  end
  inherited PopupMenu1: TPopupMenu
    Left = 544
    Top = 168
  end
  object sdsDeducaoIRRF: TSQLDataSet
    SchemaName = 'sysdba'
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'* '#13#10'FROM '#13#10'TAB_DEDUCAO_IRRF '#13#10'WHERE'#13#10'(ANO_MES_INI_VIG =' +
      ' :pAnoMesIniVig) AND'#13#10'(ANO_MES_FIM_VIG = :pAnoMesFimVig)'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMesIniVig'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesFimVig'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 32
    Top = 176
    object sdsDeducaoIRRFID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsDeducaoIRRFANO_MES_INI_VIG: TStringField
      FieldName = 'ANO_MES_INI_VIG'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 8
    end
    object sdsDeducaoIRRFANO_MES_FIM_VIG: TStringField
      FieldName = 'ANO_MES_FIM_VIG'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 8
    end
    object sdsDeducaoIRRFVAL_ABONO: TFMTBCDField
      FieldName = 'VAL_ABONO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
    object sdsDeducaoIRRFVAL_DEDUCAO_DEPEND: TFMTBCDField
      FieldName = 'VAL_DEDUCAO_DEPEND'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 15
      Size = 2
    end
  end
  object dspDeducaoIRRF: TDataSetProvider
    DataSet = sdsDeducaoIRRF
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 192
  end
  object cdsDeducaoIRRF: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ANO_MES_INI_VIG'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ANO_MES_FIM_VIG'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'VAL_ABONO'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end
      item
        Name = 'VAL_DEDUCAO_DEPEND'
        Attributes = [faRequired]
        DataType = ftFMTBcd
        Precision = 15
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspDeducaoIRRF'
    StoreDefs = True
    AfterApplyUpdates = cdsDeducaoIRRFAfterApplyUpdates
    Left = 48
    Top = 208
    object cdsDeducaoIRRFID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsDeducaoIRRFANO_MES_INI_VIG: TStringField
      FieldName = 'ANO_MES_INI_VIG'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsDeducaoIRRFANO_MES_FIM_VIG: TStringField
      FieldName = 'ANO_MES_FIM_VIG'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsDeducaoIRRFVAL_ABONO: TFMTBCDField
      FieldName = 'VAL_ABONO'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
    object cdsDeducaoIRRFVAL_DEDUCAO_DEPEND: TFMTBCDField
      FieldName = 'VAL_DEDUCAO_DEPEND'
      Required = True
      currency = True
      Precision = 15
      Size = 2
    end
  end
  object dsDeducaoIRRF: TDataSource
    AutoEdit = False
    DataSet = cdsDeducaoIRRF
    Left = 64
    Top = 224
  end
  object dsAliqINSS: TDataSource
    AutoEdit = False
    DataSet = dmAliquotasDiversas.cdsAliqINSS
    Left = 448
    Top = 192
  end
  object dsSalFamINSS: TDataSource
    AutoEdit = False
    DataSet = dmAliquotasDiversas.cdsSalFamINSS
    Left = 72
    Top = 384
  end
  object dsAliqIPM: TDataSource
    AutoEdit = False
    DataSet = dmAliquotasDiversas.cdsAliqIPM
    Left = 472
    Top = 240
  end
  object dsSalFamIPM: TDataSource
    AutoEdit = False
    DataSet = dmAliquotasDiversas.cdsSalFamIPM
    Left = 112
    Top = 424
  end
  object dsAliqFAP: TDataSource
    AutoEdit = False
    DataSet = dmAliquotasDiversas.cdsAliqFAP
    Left = 80
    Top = 280
  end
  object dsAliqINSSPatronal: TDataSource
    AutoEdit = False
    DataSet = dmAliquotasDiversas.cdsAliqINSSPatronal
    Left = 256
    Top = 304
  end
  object dsAliqIPMPatronal: TDataSource
    AutoEdit = False
    DataSet = dmAliquotasDiversas.cdsAliqIPMPatronal
    Left = 352
    Top = 320
  end
end
