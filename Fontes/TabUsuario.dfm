inherited frmTabUsuario: TfrmTabUsuario
  Left = 191
  Top = 76
  Caption = 'frmTabUsuario'
  ClientHeight = 597
  ClientWidth = 852
  ExplicitWidth = 868
  ExplicitHeight = 636
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel: TPanel
    Top = 561
    Width = 850
    Align = alBottom
    ExplicitTop = 543
    ExplicitWidth = 850
    inherited Label3: TLabel
      Left = 448
      Top = 9
      Caption = 'Texto a Pesquisar =>'
      ExplicitLeft = 448
      ExplicitTop = 9
    end
    inherited edPesquisa: TcxTextEdit
      Left = 562
      Top = 5
      ExplicitLeft = 562
      ExplicitTop = 5
    end
  end
  inherited pButtons: TPanel
    Width = 852
    ExplicitWidth = 852
    inherited Label1: TLabel
      Left = 304
      ExplicitLeft = 304
    end
    inherited lblColunPesq: TLabel
      Left = 432
      ExplicitLeft = 432
    end
    inherited Label4: TLabel
      Left = 347
      ExplicitLeft = 347
    end
    inherited Label5: TLabel
      Left = 338
      ExplicitLeft = 338
    end
    inherited Label2: TLabel
      Left = 338
      ExplicitLeft = 338
    end
    inherited btnNovo: TcxButton
      Left = 2
      ExplicitLeft = 2
    end
    inherited btnAlterar: TcxButton
      Left = 62
      ExplicitLeft = 62
    end
    inherited btnExcluir: TcxButton
      Left = 122
      ExplicitLeft = 122
    end
    inherited btnFechar: TcxButton
      Left = 791
      ExplicitLeft = 791
    end
    inherited btnPesquisar: TcxButton
      Left = 181
      ExplicitLeft = 181
    end
    inherited btnImprimir: TcxButton
      Left = 722
      Visible = False
      ExplicitLeft = 722
    end
  end
  inherited GridTable: TcxGrid
    Width = 852
    Height = 143
    ExplicitWidth = 852
    ExplicitHeight = 143
    inherited GridTableDBTableView1: TcxGridDBTableView
      Styles.Background = nil
      Styles.Content = nil
      Styles.ContentEven = nil
      Styles.ContentOdd = nil
      Styles.FilterBox = nil
      Styles.IncSearch = nil
      Styles.Footer = nil
      Styles.Group = nil
      Styles.GroupByBox = nil
      Styles.Header = nil
      Styles.Inactive = nil
      Styles.Indicator = nil
      Styles.Preview = nil
      Styles.Selection = nil
      inherited GridTableDBTableView1Column7: TcxGridDBColumn
        SortIndex = -1
        Styles.Header = nil
        Width = 60
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn [1]
        Tag = 1
        Caption = 'Nome Curto'
        DataBinding.FieldName = 'NOME_CURTO2'
        Width = 146
      end
      object GridTableDBTableView1Column3: TcxGridDBColumn [2]
        Caption = 'Nome Completo'
        DataBinding.FieldName = 'NOME_COMPLETO2'
        Width = 232
      end
      object GridTableDBTableView1Column4: TcxGridDBColumn [3]
        Caption = 'Funcion'#225'rio'
        DataBinding.FieldName = 'FUNCIONARIO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        Width = 69
      end
      object GridTableDBTableView1Column1: TcxGridDBColumn [4]
        Tag = 1
        Caption = 'Id.Servidor'
        DataBinding.FieldName = 'ID_FUNCIONARIO'
        Width = 70
      end
      inherited GridTableDBTableView1Column8: TcxGridDBColumn
        Caption = 'Cargo/Fun'#231#227'o'
        DataBinding.FieldName = 'CARGO_FUNCAO2'
        Width = 259
      end
    end
  end
  object cxGroupBox2: TcxGroupBox [3]
    Left = 427
    Top = 208
    Caption = ' Permiss'#245'es Especiais: '
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 3
    Height = 353
    Width = 423
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 6
      Top = 105
      Caption = 'Calcular Reajuste '
      DataBinding.DataField = 'CALC_REAJUSTE'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Top = 126
      Caption = 'Import. Pagto de Arquivo .TXT'
      DataBinding.DataField = 'IMPORT_PAGTO_TXT'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Top = 147
      Caption = 'Lan'#231'ar Pagamento(s)'
      DataBinding.DataField = 'LAN_PAGTO'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Top = 168
      Caption = 'Cancelar Calc. da Tarifa'
      DataBinding.DataField = 'CANCEL_TARIFA'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Left = 6
      Top = 190
      Caption = 'Configura '#211'rg'#227'o'
      DataBinding.DataField = 'CONFIG_ORGAO'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Left = 6
      Top = 211
      Caption = 'Configura Sistema'
      DataBinding.DataField = 'CONFIG_SISTEMA'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Left = 6
      Top = 232
      Caption = 'Configura Relat'#243'rios'
      DataBinding.DataField = 'CONFIG_RELS'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object cxDBCheckBox13: TcxDBCheckBox
      Left = 200
      Top = 42
      Caption = 'Gerador de Relat'#243'rios'
      DataBinding.DataField = 'GERADOR_RELS'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object cxDBCheckBox14: TcxDBCheckBox
      Left = 6
      Top = 254
      Caption = 'Imprimir Relat'#243'rios de Tabelas'
      DataBinding.DataField = 'REL_TABELAS'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object cxDBCheckBox15: TcxDBCheckBox
      Left = 6
      Top = 276
      Caption = 'Imprimir Relat'#243'rios de Unid. Consum.'
      DataBinding.DataField = 'REL_UNID_CONSUM'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object cxDBCheckBox16: TcxDBCheckBox
      Left = 6
      Top = 297
      Caption = 'Imprimir Relat'#243'rios Financeiros'
      DataBinding.DataField = 'REL_FINANCEIROS'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object cxDBCheckBox17: TcxDBCheckBox
      Left = 6
      Top = 318
      Caption = 'Imprimir Documentos'
      DataBinding.DataField = 'REL_DOCTOS'
      DataBinding.DataSource = ds1
      Enabled = False
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
      TabOrder = 15
    end
    object cxDBCheckBox18: TcxDBCheckBox
      Left = 200
      Top = 21
      Caption = 'Imprimir Outros Relat'#243'rios'
      DataBinding.DataField = 'REL_OUTROS'
      DataBinding.DataSource = ds1
      Enabled = False
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
      TabOrder = 16
    end
    object cxDBCheckBox21: TcxDBCheckBox
      Left = 6
      Top = 21
      Caption = 'Acessar Tab. de Tarifas'
      DataBinding.DataField = 'ACESS_TAB_TARIFA'
      DataBinding.DataSource = ds1
      Enabled = False
      ParentFont = False
      Properties.ValueChecked = 'S'
      Properties.ValueUnchecked = 'N'
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      StyleDisabled.BorderColor = 14938356
      StyleDisabled.Color = 14938356
      StyleDisabled.TextColor = clMaroon
      TabOrder = 0
    end
    object cxDBCheckBox22: TcxDBCheckBox
      Left = 6
      Top = 42
      Caption = 'Acessar Cad. de Unid. Consum.'
      DataBinding.DataField = 'ACESS_CAD_UNID_CONSUM'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object cxDBCheckBox19: TcxDBCheckBox
      Left = 200
      Top = 63
      Caption = 'Restaurar Backup'
      DataBinding.DataField = 'REST_BACKUP'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object chkCopEventoMesAnter: TcxDBCheckBox
      Left = 6
      Top = 63
      Caption = 'Calcular Tarifa Individual'
      DataBinding.DataField = 'CALC_TARIFA_INDIV'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Top = 84
      Caption = 'Calcular Tarifa p/ Bairro'
      DataBinding.DataField = 'CALC_TARIFA_BAIRRO'
      DataBinding.DataSource = ds1
      Enabled = False
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
    object cxDBCheckBox23: TcxDBCheckBox
      Left = 200
      Top = 84
      Caption = 'Acessar Editor de Comandos SQL'
      DataBinding.DataField = 'EXECUT_COMAND_SQL'
      DataBinding.DataSource = ds1
      Enabled = False
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
      Left = 200
      Top = 105
      Caption = 'Encerrar/Reabrir Movimento '
      DataBinding.DataField = 'ENCERRAR_REABRIR_MOVIM'
      DataBinding.DataSource = ds1
      Enabled = False
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
  end
  object cxGroupBox1: TcxGroupBox [4]
    Left = 0
    Top = 208
    Caption = ' Permiss'#245'es por Tabela: '
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 4
    Height = 353
    Width = 428
    object cxGrid1: TcxGrid
      Left = 2
      Top = 20
      Width = 424
      Height = 327
      Margins.Left = 1
      Margins.Top = 1
      Margins.Right = 1
      Margins.Bottom = 1
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 0
      LookAndFeel.Kind = lfFlat
      object cxGridDBTableView1: TcxGridDBTableView
        OnKeyDown = GridTableDBTableView1KeyDown
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
        object cxGridDBTableView1Column1: TcxGridDBColumn
          Caption = 'Id.'
          DataBinding.FieldName = 'ID_USUARIO_TABELA'
          SortIndex = 0
          SortOrder = soAscending
          Width = 36
        end
        object cxGridDBColumn1: TcxGridDBColumn
          Tag = 1
          Caption = 'Tabela'
          DataBinding.FieldName = 'DESCR_TABELA'
          Width = 230
        end
        object cxGridDBColumn2: TcxGridDBColumn
          Tag = 1
          Caption = 'Incluir'
          DataBinding.FieldName = 'INCLUIR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 46
        end
        object cxGridDBColumn3: TcxGridDBColumn
          Tag = 2
          Caption = 'Alterar'
          DataBinding.FieldName = 'ALTERAR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 46
        end
        object cxGridDBColumn4: TcxGridDBColumn
          Tag = 3
          Caption = 'Excluir'
          DataBinding.FieldName = 'EXCLUIR'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ValueChecked = 'S'
          Properties.ValueUnchecked = 'N'
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          HeaderGlyphAlignmentHorz = taCenter
          Width = 46
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsUsuario
    OnDataChange = ds1DataChange
    Left = 56
    Top = 160
  end
  inherited PopupMenu1: TPopupMenu
    Left = 496
    Top = 112
  end
  object dsUsuarioPermTabela: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.cdsUsuarioPermTabela
    Left = 192
    Top = 160
  end
end
