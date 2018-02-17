inherited frmMsgDialog: TfrmMsgDialog
  Left = 221
  Top = 243
  Caption = 'CONFIRMAR ...'
  ClientHeight = 286
  OnShow = FormShow
  ExplicitLeft = 221
  ExplicitTop = 243
  ExplicitWidth = 696
  ExplicitHeight = 324
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 680
    Height = 209
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'Memo1')
    ParentColor = True
    ParentFont = False
    TabOrder = 0
  end
  object btnOp1: TButton
    Tag = 1
    Left = 200
    Top = 224
    Width = 153
    Height = 49
    Caption = 'btnOp1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnOp1Click
  end
  object btnOp2: TButton
    Tag = 2
    Left = 360
    Top = 224
    Width = 153
    Height = 49
    Caption = 'Button1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnOp1Click
  end
  object btnOp3: TButton
    Tag = 3
    Left = 520
    Top = 224
    Width = 153
    Height = 49
    Caption = 'Button1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btnOp1Click
  end
end
