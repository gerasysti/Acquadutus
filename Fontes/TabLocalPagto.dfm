inherited frmTabLocalPagto: TfrmTabLocalPagto
  Left = 61
  Top = 117
  Caption = 'frmTabLocalPagto'
  ClientHeight = 585
  ClientWidth = 612
  ExplicitWidth = 628
  ExplicitHeight = 624
  PixelsPerInch = 96
  TextHeight = 14
  inherited Panel: TPanel
    Top = 544
    Width = 610
    Height = 40
    Align = alClient
    ExplicitTop = 544
    ExplicitWidth = 610
    ExplicitHeight = 40
    inherited Label3: TLabel
      Left = 283
      Top = 10
      ExplicitLeft = 283
      ExplicitTop = 10
    end
    inherited edPesquisa: TcxTextEdit
      Left = 396
      Top = 6
      ExplicitLeft = 396
      ExplicitTop = 6
      ExplicitWidth = 205
      ExplicitHeight = 21
      Width = 205
    end
    inherited cxDBNavigator1: TcxDBNavigator
      Height = 28
      ExplicitHeight = 28
    end
  end
  inherited pButtons: TPanel
    Width = 612
    ExplicitWidth = 612
    inherited Label1: TLabel
      Left = 239
      Top = 4
      Width = 27
      Height = 18
      Font.Height = -15
      ExplicitLeft = 239
      ExplicitTop = 4
      ExplicitWidth = 27
      ExplicitHeight = 18
    end
    inherited lblColunPesq: TLabel
      Left = 334
      Width = 134
      ExplicitLeft = 334
      ExplicitWidth = 134
    end
    inherited Label4: TLabel
      Left = 242
      ExplicitLeft = 242
    end
    inherited Label5: TLabel
      Left = 270
      Top = 20
      Width = 221
      ExplicitLeft = 270
      ExplicitTop = 20
      ExplicitWidth = 221
    end
    inherited Label2: TLabel
      Left = 270
      Top = 4
      Width = 125
      Height = 18
      Font.Height = -15
      ExplicitLeft = 270
      ExplicitTop = 4
      ExplicitWidth = 125
      ExplicitHeight = 18
    end
    inherited btnNovo: TcxButton
      Width = 56
      ExplicitWidth = 56
    end
    inherited btnAlterar: TcxButton
      Left = 56
      Width = 56
      ExplicitLeft = 56
      ExplicitWidth = 56
    end
    inherited btnExcluir: TcxButton
      Left = 111
      Width = 56
      ExplicitLeft = 111
      ExplicitWidth = 56
    end
    inherited btnFechar: TcxButton
      Left = 551
      ExplicitLeft = 551
    end
    inherited btnPesquisar: TcxButton
      Left = 166
      Width = 66
      ExplicitLeft = 166
      ExplicitWidth = 66
    end
    inherited btnImprimir: TcxButton
      Left = 492
      Width = 60
      ExplicitLeft = 492
      ExplicitWidth = 60
    end
  end
  inherited GridTable: TcxGrid
    Width = 612
    Height = 480
    ExplicitWidth = 612
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
        Width = 404
      end
      object GridTableDBTableView1Column1: TcxGridDBColumn
        Caption = 'C'#243'd. do Banco'
        DataBinding.FieldName = 'COD_BANCO'
        HeaderAlignmentHorz = taCenter
        Width = 81
      end
      object GridTableDBTableView1Column2: TcxGridDBColumn
        Caption = 'Ativo'
        DataBinding.FieldName = 'ATIVO'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = 'S'
        Properties.ValueUnchecked = 'N'
        HeaderAlignmentHorz = taCenter
        Width = 47
      end
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsLocalPagto
    Top = 304
  end
end
