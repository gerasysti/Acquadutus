inherited frmAddEditLocalPagto: TfrmAddEditLocalPagto
  Caption = 'frmAddEditLocalPagto'
  ClientHeight = 243
  ClientWidth = 528
  OnCreate = FormCreate
  ExplicitWidth = 534
  ExplicitHeight = 272
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 528
    Height = 210
    ParentDoubleBuffered = False
    ExplicitWidth = 528
    ExplicitHeight = 210
    inherited lblPadrao: TcxLabel
      Left = 4
      Top = 28
      Caption = 'Id.:'
      ExplicitLeft = 4
      ExplicitTop = 28
      ExplicitWidth = 106
      ExplicitHeight = 20
      Height = 20
      Width = 106
      AnchorX = 110
    end
    object edId: TcxDBTextEdit
      Left = 113
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
      Left = 113
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
      Caption = 'Descri'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 106
      AnchorX = 110
    end
    object cxLabel2: TcxLabel
      Left = 4
      Top = 108
      AutoSize = False
      Caption = 'C'#243'd. do Banco:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 106
      AnchorX = 110
    end
    object edCodBanco: TcxMaskEdit
      Left = 113
      Top = 106
      AutoSize = False
      ParentFont = False
      Properties.EditMask = '999;0; '
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 5
      Text = '   '
      Height = 21
      Width = 121
    end
    object chkLocalAtivo: TcxCheckBox
      Left = 113
      Top = 152
      Caption = 'Este Local de Pagto est'#225' Ativo ...'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxEditStyleCheckBox
      Style.TextColor = clNavy
      TabOrder = 6
    end
  end
  inherited Panel: TPanel
    Top = 210
    Width = 528
    ExplicitTop = 210
    ExplicitWidth = 528
    inherited btnCancelar: TcxButton
      Left = 430
      Top = 2
      ExplicitLeft = 430
      ExplicitTop = 2
    end
    inherited btnGravar: TcxButton
      Left = 334
      Top = 2
      ExplicitLeft = 334
      ExplicitTop = 2
    end
  end
  inherited ds1: TDataSource
    DataSet = dmTabelas.cdsLocalPagto
    Left = 296
    Top = 8
  end
end
