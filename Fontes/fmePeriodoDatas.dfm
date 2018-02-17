object frmePeriodoDt: TfrmePeriodoDt
  Left = 0
  Top = 0
  Width = 274
  Height = 28
  TabOrder = 0
  object edDtIni: TcxDateEdit
    Tag = 1
    Left = 0
    Top = 0
    AutoSize = False
    ParentFont = False
    Properties.InputKind = ikMask
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    OnExit = edDtIniExit
    Height = 25
    Width = 110
  end
  object cxLabel61: TcxLabel
    Left = 117
    Top = 2
    AutoSize = False
    Caption = 'a:'
    ParentFont = False
    Style.StyleController = dmPrincipal.cxLabelStyleNormal
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 23
    AnchorX = 140
  end
  object edDtFim: TcxDateEdit
    Tag = 2
    Left = 154
    Top = 0
    AutoSize = False
    ParentFont = False
    Properties.InputKind = ikMask
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 2
    Height = 25
    Width = 110
  end
end
