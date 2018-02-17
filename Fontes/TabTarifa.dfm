inherited frmTabTarifa: TfrmTabTarifa
  Left = 335
  Top = 201
  BorderIcons = []
  Caption = '[ TABELA DE VALORES DE TARIFAS ]'
  ClientHeight = 536
  ClientWidth = 742
  ExplicitWidth = 748
  ExplicitHeight = 565
  PixelsPerInch = 96
  TextHeight = 13
  inherited pButtons: TPanel
    Width = 742
    ExplicitWidth = 638
    inherited btnNovo: TcxButton
      Left = 1
      Top = 2
      Height = 57
      OnClick = btnNovoClick
      ExplicitLeft = 1
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnAlterar: TcxButton
      Left = 57
      Top = 2
      Height = 57
      OnClick = btnNovoClick
      ExplicitLeft = 57
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnExcluir: TcxButton
      Left = 113
      Top = 2
      Height = 57
      OnClick = btnExcluirClick
      ExplicitLeft = 113
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnFechar: TcxButton
      Left = 680
      Top = 2
      Height = 57
      ExplicitLeft = 680
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnPesquisar: TcxButton
      Left = 542
      Top = 2
      Height = 57
      ExplicitLeft = 542
      ExplicitTop = 2
      ExplicitHeight = 57
    end
    inherited btnImprimir: TcxButton
      Left = 611
      Top = 2
      Height = 57
      ExplicitLeft = 611
      ExplicitTop = 2
      ExplicitHeight = 57
    end
  end
  inherited Page1: TcxPageControl
    Width = 736
    Height = 424
    Properties.ActivePage = cxTabSheet1
    OnChange = Page1Change
    ExplicitWidth = 736
    ExplicitHeight = 424
    ClientRectBottom = 424
    ClientRectRight = 736
    inherited ts1: TcxTabSheet
      Caption = '&1 - Consumo'
      ExplicitWidth = 632
      ExplicitHeight = 387
      object Bevel1: TBevel [0]
        Left = 0
        Top = 0
        Width = 736
        Height = 52
        Align = alTop
        ExplicitWidth = 632
      end
      inherited GridTable1: TcxGrid
        AlignWithMargins = False
        Left = 0
        Top = 52
        Width = 736
        Height = 347
        ExplicitLeft = 0
        ExplicitTop = 52
        ExplicitWidth = 736
        ExplicitHeight = 347
        inherited GridTable1DBTableView1: TcxGridDBTableView
          DataController.DataSource = ds1
          Styles.Content = nil
          Styles.ContentEven = nil
          Styles.ContentOdd = nil
          Styles.Footer = nil
          Styles.Group = nil
          Styles.GroupByBox = nil
          Styles.Header = nil
          Styles.Inactive = nil
          Styles.Indicator = nil
          Styles.Preview = nil
          Styles.Selection = nil
          Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao2
          inherited GridTable1DBTableView1Column1: TcxGridDBColumn
            Width = 48
          end
          inherited GridTable1DBTableView1Column2: TcxGridDBColumn
            Caption = 'Forma C'#225'lculo'
            DataBinding.FieldName = 'DESCR_FORMA_CALCULO'
            Width = 219
          end
          inherited GridTable1DBTableView1Column3: TcxGridDBColumn
            Caption = 'Categoria'
            DataBinding.FieldName = 'DESCR_TIPO_UNID_CONSUM'
            Width = 131
          end
          object GridTable1DBTableView1Column4: TcxGridDBColumn
            Caption = 'Inicial'
            DataBinding.FieldName = 'QTD_INI'
            HeaderAlignmentHorz = taRightJustify
            Width = 48
          end
          object GridTable1DBTableView1Column5: TcxGridDBColumn
            Caption = 'Final'
            DataBinding.FieldName = 'QTD_FIM'
            HeaderAlignmentHorz = taRightJustify
            Width = 47
          end
          object GridTable1DBTableView1Column6: TcxGridDBColumn
            Caption = 'Valor (R$)'
            DataBinding.FieldName = 'VALOR'
            HeaderAlignmentHorz = taRightJustify
            Width = 79
          end
          object GridTable1DBTableView1Column8: TcxGridDBColumn
            Caption = 'Qtd.Base'
            DataBinding.FieldName = 'QTD_BASE'
            Width = 54
          end
          object GridTable1DBTableView1Column7: TcxGridDBColumn
            Caption = 'Excedente (R$)'
            DataBinding.FieldName = 'VAL_EXCED'
            Width = 90
          end
        end
      end
      object cxLabel1: TcxLabel
        Left = 12
        Top = 16
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
      object cxLabel2: TcxLabel
        Left = 498
        Top = 16
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
      object cxDBTextEdit3: TcxDBTextEdit
        Left = 598
        Top = 13
        TabStop = False
        DataBinding.DataField = 'FIM_VIG_FTDO'
        DataBinding.DataSource = dsVigenciaTarifa
        ParentFont = False
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit4: TcxDBTextEdit
        Left = 117
        Top = 13
        TabStop = False
        DataBinding.DataField = 'INI_VIG_FTDO'
        DataBinding.DataSource = dsVigenciaTarifa
        ParentFont = False
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 121
      end
    end
    inherited ts2: TcxTabSheet
      Caption = '&2 - Outras Tarifas'
      ExplicitWidth = 632
      ExplicitHeight = 387
      object Bevel2: TBevel
        Left = 0
        Top = 0
        Width = 736
        Height = 51
        Align = alTop
        ExplicitLeft = 2
        ExplicitTop = -6
        ExplicitWidth = 632
      end
      object cxGroupBox4: TcxGroupBox
        Left = 0
        Top = 51
        Align = alTop
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 0
        Height = 347
        Width = 736
        object cxGrid2: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 726
          Height = 324
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          object cxGridDBTableView2: TcxGridDBTableView
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
            DataController.DataSource = dsOutraTarifa
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
            Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao2
            OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
            object cxGridDBTableView2Column1: TcxGridDBColumn
              Caption = 'Id.'
              DataBinding.FieldName = 'ID'
              SortIndex = 0
              SortOrder = soAscending
            end
            object cxGridDBTableView2Column3: TcxGridDBColumn
              Caption = 'Descri'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              Width = 507
            end
            object cxGridDBTableView2Column2: TcxGridDBColumn
              Caption = 'Valor (R$)'
              DataBinding.FieldName = 'VALOR'
              HeaderAlignmentHorz = taRightJustify
              Width = 130
            end
          end
          object cxGridLevel6: TcxGridLevel
            GridView = cxGridDBTableView2
          end
        end
      end
      object cxLabel10: TcxLabel
        Left = 12
        Top = 16
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
      object cxLabel11: TcxLabel
        Left = 408
        Top = 16
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
      object cxDBTextEdit1: TcxDBTextEdit
        Left = 117
        Top = 13
        TabStop = False
        DataBinding.DataField = 'INI_VIG_FTDO'
        DataBinding.DataSource = dsVigenciaTarifa
        ParentFont = False
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Width = 121
      end
      object cxDBTextEdit2: TcxDBTextEdit
        Left = 503
        Top = 13
        TabStop = False
        DataBinding.DataField = 'FIM_VIG_FTDO'
        DataBinding.DataSource = dsVigenciaTarifa
        ParentFont = False
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 4
        Width = 121
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = '3 - Vig'#234'ncias'
      ImageIndex = 2
      ExplicitWidth = 632
      ExplicitHeight = 387
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        ParentFont = False
        Style.TextColor = clBlue
        Style.TextStyle = [fsBold]
        TabOrder = 0
        Height = 398
        Width = 736
        object cxGrid1: TcxGrid
          AlignWithMargins = True
          Left = 5
          Top = 21
          Width = 726
          Height = 375
          Align = alTop
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
            DataController.DataSource = dsVigencia
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
            Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao2
            OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
            object cxGridDBColumn1: TcxGridDBColumn
              Caption = 'Id.'
              DataBinding.FieldName = 'ID'
              SortIndex = 0
              SortOrder = soAscending
              Width = 40
            end
            object cxGridDBColumn2: TcxGridDBColumn
              Caption = 'M'#234's/Ano Inicial'
              DataBinding.FieldName = 'INI_VIG_FTDO'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBColumn3: TcxGridDBColumn
              Caption = 'M'#234's/Ano Final'
              DataBinding.FieldName = 'FIM_VIG_FTDO'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              Width = 90
            end
            object cxGridDBTableView1Column1: TcxGridDBColumn
              Caption = 'Observa'#231#227'o'
              DataBinding.FieldName = 'OBSERVACAO'
              Width = 385
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  inherited Panel: TPanel
    Top = 496
    Width = 742
    Height = 40
    Align = alClient
    ExplicitTop = 482
    ExplicitWidth = 742
    ExplicitHeight = 63
    inherited cxDBNavigator1: TcxDBNavigator
      Height = 28
    end
  end
  inherited sds1: TSQLDataSet
    CommandText = 
      'SELECT * FROM TAB_TARIFA'#13#10'where (:sAnoMesIni >= ini_vigencia) an' +
      'd'#13#10'      (:sAnoMesFim <= fim_vigencia)'
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
    Top = 32
    object sds1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds1FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds1TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object sds1QTD_INI: TIntegerField
      FieldName = 'QTD_INI'
      ProviderFlags = [pfInUpdate]
    end
    object sds1QTD_FIM: TIntegerField
      FieldName = 'QTD_FIM'
      ProviderFlags = [pfInUpdate]
    end
    object sds1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sds1ID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sds1DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      ProviderFlags = []
      FixedChar = True
      Size = 10
    end
    object sds1DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object sds1INI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object sds1FIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object sds1INI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object sds1FIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = []
      Size = 13
    end
    object sds1VAL_EXCED: TFMTBCDField
      FieldName = 'VAL_EXCED'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sds1QTD_BASE: TIntegerField
      FieldName = 'QTD_BASE'
      ProviderFlags = [pfInUpdate]
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 48
    Top = 56
  end
  inherited cds1: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'QTD_INI'
        DataType = ftInteger
      end
      item
        Name = 'QTD_FIM'
        DataType = ftInteger
      end
      item
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ID_VIGENCIA'
        DataType = ftInteger
      end
      item
        Name = 'DESCR_FORMA_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCR_TIPO_UNID_CONSUM'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'INI_VIGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FIM_VIGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'INI_VIG_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FIM_VIG_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'VALOR_EXCED'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'QTD_BASE'
        DataType = ftInteger
      end>
    Left = 64
    Top = 80
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1FORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object cds1TIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object cds1QTD_INI: TIntegerField
      FieldName = 'QTD_INI'
    end
    object cds1QTD_FIM: TIntegerField
      FieldName = 'QTD_FIM'
    end
    object cds1VALOR: TFMTBCDField
      FieldName = 'VALOR'
      currency = True
      Precision = 18
      Size = 2
    end
    object cds1ID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
    end
    object cds1DESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 10
    end
    object cds1DESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object cds1INI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      Size = 6
    end
    object cds1FIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      Size = 6
    end
    object cds1INI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object cds1FIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
    object cds1VAL_EXCED: TFMTBCDField
      FieldName = 'VAL_EXCED'
      currency = True
      Precision = 18
      Size = 2
    end
    object cds1QTD_BASE: TIntegerField
      FieldName = 'QTD_BASE'
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsTabTarifa
    Left = 80
    Top = 96
  end
  inherited PopupMenu1: TPopupMenu
    Left = 344
    Top = 104
  end
  object sdsOutraTarifa: TSQLDataSet
    SchemaName = 'sysdba'
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'* '#13#10'FROM '#13#10'TAB_OUTRA_TARIFA'#13#10'WHERE'#13#10'(:pAnoMesAtual1 >= ' +
      'ini_vigencia) AND'#13#10'(:pAnoMesAtual2 <= fim_vigencia)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pAnoMesAtual1'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pAnoMesAtual2'
        ParamType = ptInput
      end>
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 32
    Top = 176
    object sdsOutraTarifaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOutraTarifaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object sdsOutraTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      Precision = 18
      Size = 2
    end
    object sdsOutraTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object sdsOutraTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object sdsOutraTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object sdsOutraTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object sdsOutraTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
  end
  object provOutraTarifa: TDataSetProvider
    DataSet = sdsOutraTarifa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 40
    Top = 208
  end
  object cdsOutraTarifa: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALOR'
        DataType = ftFMTBcd
        Precision = 18
        Size = 2
      end
      item
        Name = 'ID_VIGENCIA'
        DataType = ftInteger
      end
      item
        Name = 'INI_VIGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FIM_VIGENCIA'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'INI_VIG_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FIM_VIG_FTDO'
        DataType = ftString
        Size = 13
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provOutraTarifa'
    StoreDefs = True
    Left = 48
    Top = 232
    object cdsOutraTarifaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOutraTarifaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object cdsOutraTarifaVALOR: TFMTBCDField
      FieldName = 'VALOR'
      ProviderFlags = [pfInUpdate]
      currency = True
      Precision = 18
      Size = 2
    end
    object cdsOutraTarifaID_VIGENCIA: TIntegerField
      FieldName = 'ID_VIGENCIA'
      ProviderFlags = [pfInUpdate]
    end
    object cdsOutraTarifaINI_VIGENCIA: TStringField
      FieldName = 'INI_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object cdsOutraTarifaFIM_VIGENCIA: TStringField
      FieldName = 'FIM_VIGENCIA'
      ProviderFlags = []
      Size = 6
    end
    object cdsOutraTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object cdsOutraTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
  end
  object dsOutraTarifa: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.cdsTabOutraTarifa
    Left = 64
    Top = 264
  end
  object qryVigenciaTarifa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'pe_ano_mes'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'pe_ano_mes2'
        ParamType = ptInput
      end>
    SQL.Strings = (
      '  select'
      '    id, ini_vig_ftdo, fim_vig_ftdo'
      '  from'
      '    vigencia_tarifa'
      '  where'
      '    (:pe_ano_mes >= inicio) and'
      '    (:pe_ano_mes2 <= fim)')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 283
    Top = 228
    object qryVigenciaTarifaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryVigenciaTarifaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object qryVigenciaTarifaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
  end
  object dsVigenciaTarifa: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.qryVigenciaTarifa
    Left = 304
    Top = 248
  end
  object qryVigencia: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM vigencia_tarifa'
      'ORDER BY INICIO, FIM')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 171
    Top = 180
    object qryVigenciaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryVigenciaINICIO: TStringField
      FieldName = 'INICIO'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object qryVigenciaFIM: TStringField
      FieldName = 'FIM'
      ProviderFlags = [pfInUpdate]
      Size = 6
    end
    object qryVigenciaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object qryVigenciaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
    object qryVigenciaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
  end
  object provVigencia: TDataSetProvider
    DataSet = qryVigencia
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 160
    Top = 208
  end
  object cdsVigencia: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'INICIO'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'FIM'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'INI_VIG_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'FIM_VIG_FTDO'
        DataType = ftString
        Size = 13
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provVigencia'
    StoreDefs = True
    Left = 168
    Top = 232
    object cdsVigenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsVigenciaINICIO: TStringField
      FieldName = 'INICIO'
      Size = 6
    end
    object cdsVigenciaFIM: TStringField
      FieldName = 'FIM'
      Size = 6
    end
    object cdsVigenciaINI_VIG_FTDO: TStringField
      FieldName = 'INI_VIG_FTDO'
      Size = 13
    end
    object cdsVigenciaFIM_VIG_FTDO: TStringField
      FieldName = 'FIM_VIG_FTDO'
      Size = 13
    end
    object cdsVigenciaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 50
    end
  end
  object dsVigencia: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.cdsVigencia
    Left = 184
    Top = 264
  end
end
