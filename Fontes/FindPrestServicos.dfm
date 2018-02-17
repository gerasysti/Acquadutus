inherited frmFindPrestServico: TfrmFindPrestServico
  Left = 13
  Top = 118
  Caption = 'LOCALIZAR PRESTADOR DE SERVI'#199'OS ...'
  ClientHeight = 555
  ClientWidth = 991
  OnClose = FormClose
  OnShow = FormShow
  ExplicitLeft = 13
  ExplicitTop = 118
  ExplicitWidth = 1007
  ExplicitHeight = 593
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitColPesquisa: TLabel
    Left = 3
    Top = 529
    Width = 128
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '&Pesquisar:'
    FocusControl = edPesquisa
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edPesquisa: TcxTextEdit
    AlignWithMargins = True
    Left = 134
    Top = 524
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.OnChange = cxTextEdit1PropertiesChange
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    OnKeyDown = edPesquisaKeyDown
    Width = 244
  end
  object GridTable: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 985
    Height = 514
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    ExplicitWidth = 968
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
      DataController.DataSource = dsPrestServico
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
        Caption = 'Id.'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taRightJustify
        Width = 68
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Tag = 1
        Caption = 'Nome / Raz'#227'o Social'
        DataBinding.FieldName = 'NOME'
        SortIndex = 0
        SortOrder = soAscending
        Width = 255
      end
      object GridTableDBTableView1Column6: TcxGridDBColumn
        Caption = 'Pessoa'
        DataBinding.FieldName = 'TIPO_PESSOA'
        HeaderAlignmentHorz = taCenter
        Width = 47
      end
      object GridTableDBTableView1Column5: TcxGridDBColumn
        Tag = 1
        Caption = 'CPF/CNPJ'
        DataBinding.FieldName = 'CPF_CNPJ'
        Width = 119
      end
      object GridTableDBTableView1Column3: TcxGridDBColumn
        Caption = 'Fun'#231#227'o'
        DataBinding.FieldName = 'FUNCAO'
        Width = 182
      end
      object GridTableDBTableView1Column8: TcxGridDBColumn
        Caption = 'Tipo de Servi'#231'o'
        DataBinding.FieldName = 'DESCR_TIPO_SERVICO'
        Width = 111
      end
      object GridTableDBTableView1Column4: TcxGridDBColumn
        Caption = 'Cidade'
        DataBinding.FieldName = 'ENDER_CIDADE'
        Width = 160
      end
      object GridTableDBTableView1Column7: TcxGridDBColumn
        Caption = 'UF'
        DataBinding.FieldName = 'ENDER_UF'
        HeaderAlignmentHorz = taCenter
        MinWidth = 1
        Width = 26
      end
    end
    object GridTableLevel1: TcxGridLevel
      GridView = GridTableDBTableView1
    end
  end
  object btnOk: TBitBtn
    Left = 800
    Top = 522
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
    TabOrder = 2
    OnClick = btnOkClick
  end
  object btnCancelar: TBitBtn
    Left = 894
    Top = 523
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
    TabOrder = 3
  end
  object sdsPrestServico: TSQLDataSet
    SchemaName = 'sysdba'
    GetMetadata = False
    CommandText = 'SELECT '#13#10'*'#13#10'FROM  '#13#10'PRESTADOR_SERVICO'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 152
    object sdsPrestServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPrestServicoTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsPrestServicoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object sdsPrestServicoTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsPrestServicoID_CBO: TIntegerField
      FieldName = 'ID_CBO'
    end
    object sdsPrestServicoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 40
    end
    object sdsPrestServicoQTD_DEPEND_IRRF: TIntegerField
      FieldName = 'QTD_DEPEND_IRRF'
    end
    object sdsPrestServicoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPrestServicoDESCR_TIPO_SERVICO: TStringField
      FieldName = 'DESCR_TIPO_SERVICO'
      FixedChar = True
      Size = 15
    end
    object sdsPrestServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPrestServicoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 14
    end
    object sdsPrestServicoENDER_LOGRAD: TStringField
      FieldName = 'ENDER_LOGRAD'
      Size = 80
    end
    object sdsPrestServicoENDER_NUM: TStringField
      FieldName = 'ENDER_NUM'
      Size = 10
    end
    object sdsPrestServicoENDER_BAIRRO: TStringField
      FieldName = 'ENDER_BAIRRO'
      Size = 40
    end
    object sdsPrestServicoENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
    end
    object sdsPrestServicoENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      FixedChar = True
      Size = 8
    end
    object sdsPrestServicoENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object sdsPrestServicoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 56
    end
    object sdsPrestServicoDESCR_CBO: TStringField
      FieldName = 'DESCR_CBO'
      Size = 40
    end
  end
  object dspPrestServico: TDataSetProvider
    DataSet = sdsPrestServico
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 165
    Top = 16
  end
  object cdsPrestServico: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_PESSOA'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_PESSOA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TIPO_SERVICO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ID_CBO'
        DataType = ftInteger
      end
      item
        Name = 'FUNCAO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'QTD_DEPEND_IRRF'
        DataType = ftInteger
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftMemo
        Size = 1
      end
      item
        Name = 'DESCR_TIPO_SERVICO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_CNPJ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 14
      end
      item
        Name = 'ENDER_LOGRAD'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ENDER_NUM'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'ENDER_BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_CIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_CEP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 8
      end
      item
        Name = 'ENDER_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'TELEFONE'
        DataType = ftString
        Size = 56
      end
      item
        Name = 'DESCR_CBO'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPrestServico'
    StoreDefs = True
    Left = 180
    Top = 32
    object cdsPrestServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
      DisplayFormat = '000000-0;0; '
    end
    object cdsPrestServicoTIPO_PESSOA: TStringField
      Alignment = taCenter
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPrestServicoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object cdsPrestServicoTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsPrestServicoID_CBO: TIntegerField
      FieldName = 'ID_CBO'
    end
    object cdsPrestServicoFUNCAO: TStringField
      FieldName = 'FUNCAO'
      Size = 40
    end
    object cdsPrestServicoQTD_DEPEND_IRRF: TIntegerField
      FieldName = 'QTD_DEPEND_IRRF'
    end
    object cdsPrestServicoOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPrestServicoDESCR_TIPO_SERVICO: TStringField
      FieldName = 'DESCR_TIPO_SERVICO'
      FixedChar = True
      Size = 15
    end
    object cdsPrestServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPrestServicoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 14
    end
    object cdsPrestServicoENDER_LOGRAD: TStringField
      FieldName = 'ENDER_LOGRAD'
      Size = 80
    end
    object cdsPrestServicoENDER_NUM: TStringField
      FieldName = 'ENDER_NUM'
      Size = 10
    end
    object cdsPrestServicoENDER_BAIRRO: TStringField
      FieldName = 'ENDER_BAIRRO'
      Size = 40
    end
    object cdsPrestServicoENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
    end
    object cdsPrestServicoENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      FixedChar = True
      Size = 8
    end
    object cdsPrestServicoENDER_UF: TStringField
      Alignment = taCenter
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object cdsPrestServicoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 56
    end
    object cdsPrestServicoDESCR_CBO: TStringField
      FieldName = 'DESCR_CBO'
      Size = 40
    end
  end
  object dsPrestServico: TDataSource
    AutoEdit = False
    DataSet = cdsPrestServico
    Left = 192
    Top = 48
  end
end
