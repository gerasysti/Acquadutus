inherited frmAddEditBairro: TfrmAddEditBairro
  Caption = 'frmAddEditBairro'
  ClientHeight = 250
  ClientWidth = 454
  OnCreate = FormCreate
  ExplicitWidth = 460
  ExplicitHeight = 279
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 454
    Height = 217
    ParentDoubleBuffered = False
    ExplicitWidth = 454
    ExplicitHeight = 217
    object sbDistrito: TSpeedButton [0]
      Tag = 2
      Left = 111
      Top = 152
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
      OnClick = sbDistritoClick
    end
    inherited lblPadrao: TcxLabel
      Left = 4
      Top = 26
      Caption = 'Id.:'
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 66
      ExplicitHeight = 20
      Height = 20
      Width = 66
      AnchorX = 70
    end
    object edId: TcxDBTextEdit
      Left = 72
      Top = 24
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 0
      Width = 70
    end
    object edDescricao: TcxDBTextEdit
      Left = 72
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
      Width = 66
      AnchorX = 70
    end
    object cxLabel2: TcxLabel
      Left = 4
      Top = 156
      AutoSize = False
      Caption = 'Distrito:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 66
      AnchorX = 70
    end
    object edNomeDistrito: TcxDBTextEdit
      Left = 137
      Top = 154
      Hint = 'Descri'#231#227'o [obrigat'#243'ria]'
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'DESCR_DISTRITO_CIDADE'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.ReadOnly = True
      Style.Color = clMoneyGreen
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      Style.TextColor = clMaroon
      TabOrder = 6
      Height = 23
      Width = 296
    end
    object edIdDistrito: TcxDBTextEdit
      Left = 72
      Top = 154
      Hint = 'Id. do Distrito'
      AutoSize = False
      DataBinding.DataField = 'ID_DISTRITO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edIdCidadePropertiesChange
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 7
      OnExit = edIdDistritoExit
      OnKeyDown = edIdDistritoKeyDown
      OnKeyPress = edIdDistritoKeyPress
      Height = 23
      Width = 39
    end
    object cxLabel3: TcxLabel
      Left = 4
      Top = 112
      AutoSize = False
      Caption = 'Nome Curto:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 66
      AnchorX = 70
    end
    object edNomeCurto: TcxDBTextEdit
      Left = 72
      Top = 110
      Hint = 'Descri'#231#227'o [obrigat'#243'ria]'
      AutoSize = False
      DataBinding.DataField = 'NOME_CURTO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      Height = 23
      Width = 361
    end
  end
  inherited Panel: TPanel
    Top = 217
    Width = 454
    ExplicitTop = 217
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
    DataSet = dmTabelas.cdsBairro
    Left = 296
    Top = 8
  end
end
