inherited frmFindPessoaFisica: TfrmFindPessoaFisica
  Left = 134
  Top = 118
  Caption = 'SELECIONA PESSOA F'#205'SICA ...'
  ClientHeight = 553
  ClientWidth = 794
  OnClose = FormClose
  OnShow = FormShow
  ExplicitLeft = 134
  ExplicitTop = 118
  ExplicitWidth = 810
  ExplicitHeight = 591
  PixelsPerInch = 96
  TextHeight = 13
  object lblTitColPesquisa: TLabel
    Left = 3
    Top = 526
    Width = 223
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'lblTitColPesquisa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edPesquisa: TcxTextEdit
    AlignWithMargins = True
    Left = 229
    Top = 522
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Properties.OnChange = cxTextEdit1PropertiesChange
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 1
    OnKeyDown = edPesquisaKeyDown
    Width = 244
  end
  object GridTable: TcxGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 788
    Height = 514
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
        Caption = 'Id.'
        DataBinding.FieldName = 'ID'
        HeaderAlignmentHorz = taRightJustify
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Caption = 'Nome da Pessoa F'#237'sica'
        DataBinding.FieldName = 'NOME'
        SortIndex = 0
        SortOrder = soAscending
        Width = 375
      end
      object GridTableDBTableView1Column6: TcxGridDBColumn
        Caption = 'Sexo'
        DataBinding.FieldName = 'SEXO'
        HeaderAlignmentHorz = taCenter
        Width = 37
      end
      object GridTableDBTableView1Column5: TcxGridDBColumn
        Caption = 'Nascimento'
        DataBinding.FieldName = 'DT_NASCIMENTO'
        HeaderAlignmentHorz = taCenter
      end
      object GridTableDBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'CPF'
        HeaderAlignmentHorz = taCenter
        Width = 103
      end
      object GridTableDBTableView1Column4: TcxGridDBColumn
        Caption = 'PIS/PASEP'
        DataBinding.FieldName = 'PIS_PASEP'
        HeaderAlignmentHorz = taCenter
        Width = 106
      end
    end
    object GridTableLevel1: TcxGridLevel
      GridView = GridTableDBTableView1
    end
  end
  object btnOk: TBitBtn
    Left = 602
    Top = 520
    Width = 94
    Height = 30
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
    Left = 697
    Top = 520
    Width = 94
    Height = 30
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
  object sdsPessoaFisica: TSQLDataSet
    SchemaName = 'sysdba'
    GetMetadata = False
    CommandText = 
      'SELECT '#13#10'ID, NOME, SEXO, DT_NASCIMENTO, CPF, PIS_PASEP'#13#10'FROM  '#13#10 +
      'PESSOA_FISICA'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = 1
    Params = <>
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 152
    object sdsPessoaFisicaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsPessoaFisicaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object sdsPessoaFisicaSEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsPessoaFisicaDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsPessoaFisicaCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 11
    end
    object sdsPessoaFisicaPIS_PASEP: TStringField
      FieldName = 'PIS_PASEP'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
  end
  object sdpPessoaFisica: TDataSetProvider
    DataSet = sdsPessoaFisica
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 165
    Top = 16
  end
  object cdsPessoaFisica: TClientDataSet
    Aggregates = <>
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
        Size = 60
      end
      item
        Name = 'APELIDO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SEXO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DT_NASCIMENTO'
        DataType = ftDate
      end
      item
        Name = 'NATURAL_CIDADE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NATURAL_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RG_NUM'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'RG_ORGAO_EMISSOR'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'RG_UF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'RG_DT_EMISSAO'
        DataType = ftDate
      end
      item
        Name = 'CPF'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'PIS_PASEP'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CNH_NUM'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CNH_DT_VENCTO'
        DataType = ftDate
      end
      item
        Name = 'TIT_ELEITOR_NUM'
        DataType = ftInteger
      end
      item
        Name = 'TIT_ELEITOR_ZONA'
        DataType = ftInteger
      end
      item
        Name = 'TIT_ELEITOR_SECAO'
        DataType = ftInteger
      end
      item
        Name = 'RESERVISTA'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_ESTADO_CIVIL'
        DataType = ftInteger
      end
      item
        Name = 'CONJUGE_NOME'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CONJUGE_CPF'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'FILIACAO_PAI'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'FILIACAO_MAE'
        DataType = ftString
        Size = 40
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
        Size = 40
      end
      item
        Name = 'DESCR_ESTADO_CIVIL'
        DataType = ftString
        Size = 40
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'sdpPessoaFisica'
    StoreDefs = True
    Left = 180
    Top = 32
    object cdsPessoaFisicaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPessoaFisicaNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object cdsPessoaFisicaSEXO: TStringField
      Alignment = taCenter
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsPessoaFisicaDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object cdsPessoaFisicaCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '999.999.999-99;0; '
      FixedChar = True
      Size = 11
    end
    object cdsPessoaFisicaPIS_PASEP: TStringField
      FieldName = 'PIS_PASEP'
      ProviderFlags = [pfInUpdate]
      EditMask = '999.99999.99-9;0; '
      Size = 11
    end
  end
  object ds1: TDataSource
    AutoEdit = False
    DataSet = cdsPessoaFisica
    Left = 192
    Top = 48
  end
end
