inherited frmFindPessoa: TfrmFindPessoa
  Left = 107
  Top = 33
  Caption = 'SELECIONA PESSOA F'#205'SICA/JUR'#205'DICA ...'
  ClientHeight = 622
  ClientWidth = 1032
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 1038
  ExplicitHeight = 651
  PixelsPerInch = 96
  TextHeight = 13
  object GridTable: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1026
    Height = 575
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
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
      DataController.DataSource = ds1
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
      OnColumnHeaderClick = GridTableDBTableView1ColumnHeaderClick
      object GridTableDBTableView1Column1: TcxGridDBColumn
        Tag = 1
        Caption = '#Id.'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taRightJustify
        Width = 65
      end
      object GridTableDBTableView1Column7: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'DESCR_TIPO_PESSOA'
        Width = 71
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Tag = 1
        Caption = '#Nome / Raz'#227'o Social'
        DataBinding.FieldName = 'NOME_RAZAO_SOCIAL'
        SortIndex = 0
        SortOrder = soAscending
        Width = 348
      end
      object GridTableDBTableView1Column6: TcxGridDBColumn
        Tag = 1
        Caption = '#Nome Fantasia'
        DataBinding.FieldName = 'NOME_FANTASIA'
        Width = 262
      end
      object GridTableDBTableView1Column5: TcxGridDBColumn
        Tag = 1
        Caption = '#CPF / CNPJ'
        DataBinding.FieldName = 'CPF_CNPJ_FTDO'
        Width = 137
      end
      object GridTableDBTableView1Column3: TcxGridDBColumn
        Caption = 'Identidade'
        DataBinding.FieldName = 'RG'
        Width = 126
      end
    end
    object GridTableLevel1: TcxGridLevel
      GridView = GridTableDBTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 581
    Width = 1032
    Height = 41
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object lblTitColPesquisa: TLabel
      Left = 2
      Top = 12
      Width = 55
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '&Pesquisar:'
      FocusControl = edPesquisa
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 338
      Top = 12
      Width = 81
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '[F4] - Ordem ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edPesquisa: TcxTextEdit
      AlignWithMargins = True
      Left = 61
      Top = 8
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = cxTextEdit1PropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 0
      OnKeyDown = edPesquisaKeyDown
      Width = 275
    end
    object btnOk: TBitBtn
      Left = 841
      Top = 4
      Width = 94
      Height = 30
      Caption = '&Ok'
      Default = True
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
      Left = 936
      Top = 4
      Width = 94
      Height = 30
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Kind = bkCancel
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 2
    end
    object btnNovo: TBitBtn
      Left = 694
      Top = 4
      Width = 94
      Height = 30
      Caption = '&Nova'
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
      OnClick = btnNovoClick
    end
  end
  object provPessoa: TDataSetProvider
    DataSet = qryPessoa
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 165
    Top = 168
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_RAZAO_SOCIAL'
        Attributes = [faRequired]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOME_FANTASIA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_CNPJ'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 14
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
        Name = 'RG'
        DataType = ftString
        Size = 35
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provPessoa'
    StoreDefs = True
    OnFilterRecord = cdsPessoaFilterRecord
    Left = 180
    Top = 184
    object cdsPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPessoaNOME_RAZAO_SOCIAL: TStringField
      FieldName = 'NOME_RAZAO_SOCIAL'
      Required = True
      Size = 60
    end
    object cdsPessoaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPessoaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 60
    end
    object cdsPessoaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 14
    end
    object cdsPessoaDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object cdsPessoaCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 35
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = cdsPessoa
    Left = 192
    Top = 200
  end
  object qryPessoa: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT'
      
        '  ID, NOME_RAZAO_SOCIAL, TIPO, NOME_FANTASIA, CPF_CNPJ, DESCR_TI' +
        'PO_PESSOA,'
      '  CPF_CNPJ_FTDO, RG_NUM||'#39' '#39'||RG_ORGAO_EMISSOR||'#39'-'#39'||RG_UF AS RG'
      'FROM'
      '  PESSOA'
      'ORDER BY'
      'ID')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 155
    Top = 151
    object qryPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryPessoaNOME_RAZAO_SOCIAL: TStringField
      FieldName = 'NOME_RAZAO_SOCIAL'
      Required = True
      Size = 60
    end
    object qryPessoaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryPessoaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 60
    end
    object qryPessoaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryPessoaDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object qryPessoaCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object qryPessoaRG: TStringField
      FieldName = 'RG'
      Size = 35
    end
  end
end
