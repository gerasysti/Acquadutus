object fmePeriodoM_: TfmePeriodoM_
  Left = 0
  Top = 0
  Width = 169
  Height = 26
  TabOrder = 0
  object edMesAnoIni: TcxMaskEdit
    Tag = 1
    Left = 0
    Top = 0
    ParentFont = False
    Properties.EditMask = '99/9999'
    Properties.MaxLength = 0
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    Text = '  /    '
    OnExit = edMesAnoIniExit
    Width = 71
  end
  object edMesAnoFim: TcxMaskEdit
    Tag = 2
    Left = 97
    Top = 0
    ParentFont = False
    Properties.EditMask = '99/9999'
    Properties.MaxLength = 0
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 1
    Text = '  /    '
    OnExit = edMesAnoFimExit
    Width = 71
  end
  object cxLabel1: TcxLabel
    Left = 75
    Top = 2
    Caption = ' a '
    ParentFont = False
    Style.StyleController = dmPrincipal.cxLabelStyleNormal
  end
end
