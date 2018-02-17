object frmTeste: TfrmTeste
  Left = 75
  Top = 114
  Caption = 'frmTeste'
  ClientHeight = 557
  ClientWidth = 850
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 834
    Height = 297
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 312
    Width = 834
    Height = 229
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = dmRelFinanceiros.cdsDeducEntidPrevid
    Left = 352
    Top = 104
  end
  object DataSource2: TDataSource
    AutoEdit = False
    DataSet = dmRelFinanceiros.cdsGPS
    Left = 360
    Top = 376
  end
end
