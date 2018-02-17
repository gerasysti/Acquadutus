object frmeMultiLocalPagto: TfrmeMultiLocalPagto
  Left = 0
  Top = 0
  Width = 602
  Height = 31
  TabOrder = 0
  object sbMultiLocalPagto: TSpeedButton
    Tag = 1
    Left = 567
    Top = -1
    Width = 26
    Height = 27
    Hint = 'Seleciona o(s) Local(ais) de Pagamento(s) ...'
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
    ParentShowHint = False
    ShowHint = True
    OnClick = sbMultiLocalPagtoClick
  end
  object edMultiLocalPagto: TcxTextEdit
    Tag = 21
    Left = 0
    Top = 0
    Hint = 'Informe o(s) Local(ais) de Pagamento(s) ...'
    AutoSize = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    OnKeyDown = edMultiLocalPagtoKeyDown
    Height = 25
    Width = 567
  end
end
