inherited frmSelecionaPadrao: TfrmSelecionaPadrao
  Caption = 'frmSelecionaPadrao'
  ClientHeight = 310
  ClientWidth = 463
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 469
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 7
    Top = 9
    Width = 90
    Height = 13
    Caption = 'Texto a pesquisar:'
  end
  object btnOk: TBitBtn
    Left = 367
    Top = 34
    Width = 94
    Height = 28
    Caption = '&Ok'
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
    ParentFont = False
    TabOrder = 1
    OnClick = btnOkClick
  end
  object btnCancelar: TBitBtn
    Left = 367
    Top = 64
    Width = 94
    Height = 28
    Caption = '&Cancelar'
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
      333333333333333333333333000033338833333333333333333F333333333333
      0000333911833333983333333388F333333F3333000033391118333911833333
      38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003333
      9118333911183333338F33838F338F33000033333913333391113333338FF833
      38F338F300003333333333333919333333388333338FFF830000333333333333
      3333333333333333333888330000333333333333333333333333333333333333
      0000}
    ModalResult = 2
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
  end
  object btnNovo: TBitBtn
    Left = 367
    Top = 103
    Width = 94
    Height = 28
    Caption = '&Novo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000000000000000000000000
      8000008000000080800080000000800080008080000080808000C0C0C0000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
      888888888888888888888800000000000888880FFFFFFFFF0888880FFFFFFFFF
      0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF
      0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F0
      8888880FFFFFF008888888000000008888888888888888888888}
    ParentFont = False
    TabOrder = 3
  end
  object edPesquisa: TcxTextEdit
    AlignWithMargins = True
    Left = 100
    Top = 5
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.OnChange = edPesquisaPropertiesChange
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    OnKeyDown = edPesquisaKeyDown
    Width = 260
  end
  object GridTable: TcxGrid
    Left = 5
    Top = 32
    Width = 355
    Height = 273
    Margins.Left = 1
    Margins.Top = 1
    Margins.Right = 1
    Margins.Bottom = 1
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    LookAndFeel.Kind = lfFlat
    object GridTableDBTableView1: TcxGridDBTableView
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
      OptionsView.ExpandButtonsForEmptyDetails = False
      OptionsView.GridLineColor = clBtnFace
      OptionsView.GroupByBox = False
      Styles.StyleSheet = dmPrincipal.GridTableViewStyleSheetPadrao5
      OnColumnHeaderClick = GridTable1DBTableView1ColumnHeaderClick
      object GridTableDBTableView1Column0: TcxGridDBColumn
        Caption = 'Id.'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taRightJustify
        SortIndex = 0
        SortOrder = soAscending
        Styles.Header = dmPrincipal.cxStyle20
      end
      object GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
      end
    end
    object GridTableLevel1: TcxGridLevel
      GridView = GridTableDBTableView1
    end
  end
  object prov1: TDataSetProvider
    DataSet = qry1
    Left = 104
    Top = 108
  end
  object qry1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 104
    Top = 147
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prov1'
    OnFilterRecord = cds1FilterRecord
    Left = 104
    Top = 75
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = cds1
    Left = 104
    Top = 37
  end
end
