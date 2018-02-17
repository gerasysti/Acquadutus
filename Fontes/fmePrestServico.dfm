object frmePrestServico: TfrmePrestServico
  Left = 0
  Top = 0
  Width = 601
  Height = 34
  TabOrder = 0
  object sbPrestServico: TSpeedButton
    Tag = 1
    Left = 73
    Top = 0
    Width = 26
    Height = 26
    Hint = 'Seleciona o Prestador de Servi'#231'o'
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
    OnClick = sbPrestServicoClick
  end
  object edId: TcxMaskEdit
    Left = -1
    Top = 0
    AutoSize = False
    ParentFont = False
    ParentShowHint = False
    Properties.Alignment.Horz = taRightJustify
    Properties.AlwaysShowBlanksAndLiterals = True
    Properties.EditMask = '999;0; '
    Properties.MaxLength = 0
    Properties.OnChange = edIdPropertiesChange
    ShowHint = True
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    Text = '   '
    OnExit = edIdExit
    OnKeyDown = edIdKeyDown
    Height = 26
    Width = 75
  end
  object edNome: TcxTextEdit
    Left = 98
    Top = 0
    TabStop = False
    ParentFont = False
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 1
    Width = 338
  end
  object edCPF_CNPJ: TcxTextEdit
    Left = 438
    Top = 0
    TabStop = False
    ParentFont = False
    Properties.Alignment.Horz = taCenter
    Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
    TabOrder = 2
    Width = 156
  end
  object qryPrestServico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      'TIPO_PESSOA, NOME, CPF_CNPJ'
      'FROM'
      'PRESTADOR_SERVICO'
      'WHERE'
      'ID = :pId')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 296
    object qryPrestServicoTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryPrestServicoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qryPrestServicoCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 14
    end
  end
end
