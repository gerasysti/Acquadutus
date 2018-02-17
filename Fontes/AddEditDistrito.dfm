inherited frmAddEditDistrito: TfrmAddEditDistrito
  Caption = 'frmAddEditDistrito'
  ClientHeight = 196
  ClientWidth = 454
  OnCreate = FormCreate
  ExplicitWidth = 460
  ExplicitHeight = 225
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 454
    Height = 163
    ParentDoubleBuffered = False
    ExplicitWidth = 454
    ExplicitHeight = 163
    object sbCidade: TSpeedButton [0]
      Tag = 2
      Left = 96
      Top = 104
      Width = 26
      Height = 27
      Hint = 'Seleciona a Cidaede'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000CE0E0000C40E00001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777700000777770000070F000777770F00070F000777770F
        0007000000070000000700F000000F00000700F000700F00000700F000700F00
        00077000000000000077770F00070F0007777700000700000777777000777000
        77777770F07770F0777777700077700077777777777777777777}
      ParentFont = False
      OnClick = sbCidadeClick
    end
    inherited lblPadrao: TcxLabel
      Left = 4
      Top = 28
      Caption = 'Id.:'
      ExplicitLeft = 4
      ExplicitTop = 28
      ExplicitWidth = 50
      ExplicitHeight = 20
      Height = 20
      Width = 50
      AnchorX = 54
    end
    object edId: TcxDBTextEdit
      Left = 57
      Top = 26
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 0
      Width = 70
    end
    object edDescricao: TcxDBTextEdit
      Left = 57
      Top = 66
      Hint = 'Descri'#231#227'o [obrigat'#243'ria]'
      AutoSize = False
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 1
      Height = 23
      Width = 361
    end
    object cxLabel1: TcxLabel
      Left = 4
      Top = 68
      AutoSize = False
      Caption = 'Nome:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 50
      AnchorX = 54
    end
    object cxLabel2: TcxLabel
      Left = 4
      Top = 108
      AutoSize = False
      Caption = 'Cidade:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 50
      AnchorX = 54
    end
    object edNomeCidade: TcxDBTextEdit
      Left = 122
      Top = 106
      Hint = 'Descri'#231#227'o [obrigat'#243'ria]'
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'NOME_CIDADE'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 5
      Height = 23
      Width = 296
    end
    object edIdCidade: TcxDBTextEdit
      Left = 57
      Top = 106
      Hint = 'Id. da Cidade'
      AutoSize = False
      DataBinding.DataField = 'ID_CIDADE'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edIdCidadePropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 6
      OnExit = edIdCidadeExit
      OnKeyDown = edIdCidadeKeyDown
      OnKeyPress = edIdCidadeKeyPress
      Height = 23
      Width = 40
    end
  end
  inherited Panel: TPanel
    Top = 163
    Width = 454
    ExplicitTop = 163
    ExplicitWidth = 454
    inherited btnCancelar: TcxButton
      Left = 355
      Top = 2
      ExplicitLeft = 355
      ExplicitTop = 2
    end
    inherited btnGravar: TcxButton
      Left = 259
      Top = 2
      ExplicitLeft = 259
      ExplicitTop = 2
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsDistrito
    Left = 296
    Top = 8
  end
end
