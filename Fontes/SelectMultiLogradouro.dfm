inherited frmSelectMultiLograd: TfrmSelectMultiLograd
  Left = 355
  Top = 274
  Caption = 'LOGRADOUROS - SELECIONAR ...'
  ClientWidth = 655
  ExplicitLeft = 355
  ExplicitTop = 274
  ExplicitWidth = 671
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 4
    Top = 6
    AutoSize = False
    Caption = 'Pesquisar:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taLeftJustify
    Height = 19
    Width = 60
  end
  object edPesquisa: TcxTextEdit
    AlignWithMargins = True
    Left = 63
    Top = 5
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 1
    Width = 202
  end
  object cxLabel2: TcxLabel
    Left = 272
    Top = 6
    AutoSize = False
    Caption = '[F4] - Marca/Desmarca ...'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.HotTrack = True
    Style.TextColor = clRed
    Style.IsFontAssigned = True
    Height = 22
    Width = 147
  end
  object chkMarcaDesmarcaTodos: TcxCheckBox
    Left = 445
    Top = 5
    AutoSize = False
    Caption = 'Marcar &Todos ...'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -15
    Style.Font.Name = 'Arial'
    Style.Font.Style = [fsBold]
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    Style.IsFontAssigned = True
    TabOrder = 3
    OnClick = chkMarcaDesmarcaTodosClick
    Height = 29
    Width = 205
  end
  object btnOk: TBitBtn
    Left = 557
    Top = 34
    Width = 94
    Height = 28
    Caption = '&Ok'
    Default = True
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    ModalResult = 1
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 4
    OnClick = btnOkClick
  end
  object btnCancelar: TBitBtn
    Left = 557
    Top = 64
    Width = 94
    Height = 28
    Caption = '&Cancelar'
    DoubleBuffered = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 5
  end
  object GridTable1: TcxGrid
    AlignWithMargins = True
    Left = 0
    Top = 34
    Width = 548
    Height = 403
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object GridTable1DBTableView1: TcxGridDBTableView
      OnDblClick = GridTable1DBTableView1DblClick
      OnKeyDown = GridTable1DBTableView1KeyDown
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
      DataController.DataSource = DataSource1
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
      OptionsView.ColumnAutoWidth = True
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao6
      OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
      object GridTable1DBTableView1Column1: TcxGridDBColumn
        Tag = 1
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'ENDER_DESCR_LOGRAD'
        SortIndex = 0
        SortOrder = soAscending
        Width = 500
      end
      object GridTable1DBTableView1Column2: TcxGridDBColumn
        Tag = 1
        Caption = 'Id.'
        DataBinding.FieldName = 'ENDER_ID_LOGRAD'
        Width = 80
      end
      object GridTable1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'MARCADO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderGlyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F9F14AA64A1A931CA5
          D6A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFF2FAF23AA83A13AC2715B32B0A9612A6D9A6FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FBF33DAE3D16AE2E17B23114AD2A13
          B1290A940FA9DBA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5FCF5
          3FB33F19B2331CB63A18B33434BC4D17B03013B02A0B9310ADDDADFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF55BF5C1FB73E20BA421FB84011A82417981762
          C77119B23213B12B0C9411B1DFB1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3BBA49
          42C8651FBB4615B32C66C866F0F9F038AB3861C87119B13113B22C0D9312B5E0
          B5FFFFFFFFFFFFFFFFFFFFFFFFA0E3A845C55836BC4E63CE68FEFEFEFFFFFFEF
          FAEF33A83363CA7217B13114B12C0E9411B7E3B7FFFFFFFFFFFFFFFFFFFFFFFF
          D4F7D7B5EBBBFDFEFDFFFFFFFFFFFFFFFFFFEDF9ED2FA73063CA7217B13114B3
          2D0F9412BBE1BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEAF8EA2BA62B64CB7515B13116B33019941BFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F7E828A72A66CD
          782ABC462C9E2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFE4F4E434AA3531A633D0E8D0FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        HeaderGlyphAlignmentHorz = taCenter
        Width = 50
        IsCaptionAssigned = True
      end
    end
    object GridTable1Level1: TcxGridLevel
      GridView = GridTable1DBTableView1
    end
  end
  object lblTitSelect: TcxLabel
    Left = 574
    Top = 375
    AutoSize = False
    Caption = 'Logradouros'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Height = 19
    Width = 76
    AnchorX = 612
  end
  object cxLabel4: TcxLabel
    Left = 574
    Top = 390
    AutoSize = False
    Caption = 'Selecionados:'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taRightJustify
    Height = 18
    Width = 79
    AnchorX = 653
  end
  object edQtdRegSelect: TcxTextEdit
    Left = 582
    Top = 409
    TabStop = False
    AutoSize = False
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Properties.ReadOnly = True
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clBlue
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 9
    Text = '0'
    Height = 28
    Width = 68
  end
  object qry1: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pBairroIni'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'pBairroFim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select'
      
        '  count(id) as id, ender_id_lograd, ender_descr_lograd, '#39'N'#39' AS M' +
        'ARCADO'
      'from'
      '  unid_consumidora'
      'where'
      '  (ender_id_bairro >= :pBairroIni) and'
      '  (ender_id_bairro <= :pBairroFim)'
      'group by'
      '  ender_id_lograd, ender_descr_lograd'
      'order by'
      '  ender_descr_lograd')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 184
    Top = 51
  end
  object prov1: TDataSetProvider
    DataSet = qry1
    Left = 195
    Top = 76
  end
  object tb1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prov1'
    Left = 208
    Top = 99
    object tb1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object tb1ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object tb1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object tb1MARCADO: TStringField
      FieldName = 'MARCADO'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = tb1
    Left = 264
    Top = 109
  end
end
