inherited frmTabDistrito: TfrmTabDistrito
  Left = 61
  Top = 117
  Caption = 'frmTabDistrito'
  ClientHeight = 585
  ClientWidth = 702
  ExplicitWidth = 718
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel: TPanel
    Top = 544
    Width = 700
    Height = 40
    Align = alClient
    ExplicitTop = 544
    ExplicitWidth = 700
    ExplicitHeight = 40
    object sbFiltraCidade: TSpeedButton [0]
      Left = 381
      Top = 4
      Width = 314
      Height = 27
      Caption = 'Filtrar Cidade ...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = sbFiltraCidadeClick
    end
    inherited Label3: TLabel
      Left = 139
      Top = 10
      ExplicitLeft = 139
      ExplicitTop = 10
    end
    inherited edPesquisa: TcxTextEdit
      Left = 252
      Top = 6
      ExplicitLeft = 252
      ExplicitTop = 6
      ExplicitWidth = 124
      Width = 124
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Width = 120
      Height = 28
      ExplicitWidth = 120
      ExplicitHeight = 28
    end
  end
  inherited pButtons: TPanel
    Width = 702
    ExplicitWidth = 702
    inherited Label1: TLabel
      Left = 256
      Top = 4
      Font.Height = -15
      ExplicitLeft = 256
      ExplicitTop = 4
    end
    inherited lblColunPesq: TLabel
      Left = 335
      Top = 42
      Width = 181
      Font.Height = -13
      ExplicitLeft = 335
      ExplicitTop = 42
      ExplicitWidth = 181
    end
    inherited Label4: TLabel
      Left = 256
      Top = 42
      Width = 75
      Font.Height = -13
      ExplicitLeft = 256
      ExplicitTop = 42
      ExplicitWidth = 75
    end
    inherited Label5: TLabel
      Left = 290
      Top = 23
      Width = 238
      Caption = '- Clicando no T'#237'tulo da Coluna ...'
      ExplicitLeft = 290
      ExplicitTop = 23
      ExplicitWidth = 238
    end
    inherited Label2: TLabel
      Left = 290
      Top = 4
      ExplicitLeft = 290
      ExplicitTop = 4
    end
    inherited btnFechar: TcxButton
      Left = 641
      ExplicitLeft = 641
    end
    inherited btnImprimir: TcxButton
      Left = 572
      ExplicitLeft = 572
    end
  end
  inherited GridTable: TcxGrid
    Width = 702
    Height = 480
    ExplicitWidth = 702
    ExplicitHeight = 480
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
        Tag = 1
        Width = 57
      end
      inherited GridTableDBTableView1Column8: TcxGridDBColumn
        Tag = 1
        Width = 287
      end
      object GridTableDBTableView1Column4: TcxGridDBColumn
        Tag = 1
        Caption = 'Cidade'
        DataBinding.FieldName = 'NOME_CIDADE'
        Width = 340
      end
    end
  end
  object dbgCidade: TDBGrid [3]
    Left = 385
    Top = 420
    Width = 313
    Height = 120
    DataSource = dsCidadeFiltro
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    Visible = False
    OnExit = dbgCidadeExit
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taRightJustify
        Title.Caption = 'Id.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 36
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Calibri'
        Title.Font.Style = [fsBold]
        Width = 254
        Visible = True
      end>
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsDistrito
    Top = 304
  end
  object dsCidadeFiltro: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.cdsCidadeFiltro
    OnDataChange = dsCidadeFiltroDataChange
    Left = 144
    Top = 312
  end
end
