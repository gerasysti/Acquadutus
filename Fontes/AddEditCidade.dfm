inherited frmAddEditCidade: TfrmAddEditCidade
  Caption = 'frmAddEditCidade'
  ClientHeight = 243
  ClientWidth = 454
  OnCreate = FormCreate
  ExplicitWidth = 460
  ExplicitHeight = 272
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 454
    Height = 210
    ParentDoubleBuffered = False
    ExplicitWidth = 454
    ExplicitHeight = 210
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
      DataBinding.DataField = 'NOME'
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
      Caption = 'CEP:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 50
      AnchorX = 54
    end
    object cxLabel3: TcxLabel
      Left = 4
      Top = 149
      AutoSize = False
      Caption = 'UF:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 50
      AnchorX = 54
    end
    object edUF: TcxComboBox
      Left = 57
      Top = 147
      AutoSize = False
      ParentFont = False
      Properties.OnCloseUp = edUFPropertiesCloseUp
      Properties.OnPopup = edUFPropertiesPopup
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 7
      Text = 'edUF'
      Height = 23
      Width = 63
    end
    object edCEP: TcxMaskEdit
      Left = 57
      Top = 106
      AutoSize = False
      ParentFont = False
      Properties.EditMask = '99.999-999;0; '
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 6
      Text = '        '
      Height = 21
      Width = 121
    end
  end
  inherited Panel: TPanel
    Top = 210
    Width = 454
    ExplicitTop = 210
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
    DataSet = dmTabelas.cdsCidade
    Left = 296
    Top = 8
  end
end
