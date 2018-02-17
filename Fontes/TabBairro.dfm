inherited frmTabBairro: TfrmTabBairro
  Left = 61
  Top = 117
  Caption = 'frmTabBairro'
  ClientHeight = 585
  ClientWidth = 791
  ExplicitWidth = 807
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel: TPanel
    Top = 544
    Width = 789
    Height = 40
    Align = alClient
    ExplicitTop = 544
    ExplicitWidth = 789
    ExplicitHeight = 40
    object sbFiltraCidade: TSpeedButton [0]
      Left = 470
      Top = 4
      Width = 313
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
      Top = 10
      ExplicitTop = 10
    end
    inherited edPesquisa: TcxTextEdit
      Top = 6
      ExplicitTop = 6
      ExplicitWidth = 163
      Width = 163
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Height = 28
      ExplicitHeight = 28
    end
  end
  inherited pButtons: TPanel
    Width = 791
    ExplicitWidth = 791
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
      Top = 22
      Width = 262
      Caption = '- Clicando no T'#237'tulo da Coluna ...'
      ExplicitLeft = 290
      ExplicitTop = 22
      ExplicitWidth = 262
    end
    inherited Label2: TLabel
      Left = 290
      Top = 4
      ExplicitLeft = 290
      ExplicitTop = 4
    end
    inherited btnFechar: TcxButton
      Left = 730
      ExplicitLeft = 730
    end
    inherited btnImprimir: TcxButton
      Left = 661
      ExplicitLeft = 661
    end
  end
  inherited GridTable: TcxGrid
    Width = 791
    Height = 480
    ExplicitWidth = 791
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
      object GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'Distrito'
        DataBinding.FieldName = 'DESCR_DISTRITO'
        Width = 198
      end
      object GridTableDBTableView1Column4: TcxGridDBColumn
        Tag = 1
        Caption = 'Cidade'
        DataBinding.FieldName = 'NOME_CIDADE'
        Width = 230
      end
    end
  end
  object dbgCidade: TDBGrid [3]
    Left = 473
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
    DataSet = dmTabelas.cdsBairro
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
