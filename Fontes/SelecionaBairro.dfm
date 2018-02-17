inherited frmSelecionaBairro: TfrmSelecionaBairro
  Caption = 'frmSelecionaBairro'
  ClientHeight = 339
  ClientWidth = 625
  ExplicitWidth = 631
  ExplicitHeight = 368
  PixelsPerInch = 96
  TextHeight = 13
  inherited Label1: TLabel
    Top = 10
    ExplicitTop = 10
  end
  object sbFiltraCidade: TSpeedButton [1]
    Left = 209
    Top = 308
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
  inherited btnOk: TBitBtn
    Left = 526
    Top = 33
    ExplicitLeft = 526
    ExplicitTop = 33
  end
  inherited btnCancelar: TBitBtn
    Left = 526
    Top = 62
    ExplicitLeft = 526
    ExplicitTop = 62
  end
  inherited btnNovo: TBitBtn
    Left = 526
    Top = 101
    OnClick = btnNovoClick
    ExplicitLeft = 526
    ExplicitTop = 101
  end
  inherited edPesquisa: TcxTextEdit
    Left = 101
    Top = 6
    ExplicitLeft = 101
    ExplicitTop = 6
    ExplicitWidth = 421
    ExplicitHeight = 23
    Width = 421
  end
  inherited GridTable: TcxGrid
    Left = 1
    Top = 33
    Width = 521
    Height = 272
    ExplicitLeft = 1
    ExplicitTop = 33
    ExplicitWidth = 521
    ExplicitHeight = 272
    inherited GridTableDBTableView1: TcxGridDBTableView
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
      OnColumnHeaderClick = nil
      inherited GridTableDBTableView1Column0: TcxGridDBColumn
        Width = 53
      end
      inherited GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'Nome'
        Width = 207
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Caption = 'Distrito'
        DataBinding.FieldName = 'DESCR_DISTRITO'
        Width = 240
      end
    end
  end
  object dbgCidade: TDBGrid [7]
    Left = 209
    Top = 185
    Width = 313
    Height = 120
    DataSource = dsCidadeFiltro
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnExit = dbgCidadeExit
    OnKeyDown = dbgCidadeKeyDown
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
  inherited qry1: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'cidade_ini'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cidade_fim'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select id, descricao, descr_distrito'
      'from bairro'
      'where '
      '(id_cidade >= :cidade_ini) and'
      '(id_cidade <= :cidade_fim)')
  end
  inherited cds1: TClientDataSet
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cds1DESCR_DISTRITO: TStringField
      FieldName = 'DESCR_DISTRITO'
      Size = 40
    end
  end
  object dsCidadeFiltro: TDataSource
    AutoEdit = False
    DataSet = dmTabelas.cdsCidadeFiltro
    OnDataChange = dsCidadeFiltroDataChange
    Left = 256
    Top = 229
  end
end
