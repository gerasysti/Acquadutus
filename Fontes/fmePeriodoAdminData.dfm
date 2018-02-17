object frmePerAdminDt: TfrmePerAdminDt
  Left = 0
  Top = 0
  Width = 274
  Height = 28
  TabOrder = 0
  object edDtAdminIni: TcxDateEdit
    Tag = 1
    Left = -1
    Top = 0
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    OnExit = edDtAdminIniExit
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
  object edDtAdminFim: TcxDateEdit
    Tag = 2
    Left = 154
    Top = 0
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 2
    Width = 110
  end
end
