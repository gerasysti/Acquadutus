inherited frmAlteraSenha: TfrmAlteraSenha
  Left = 264
  Top = 231
  Caption = 'ALTERAR SENHA DO USU'#193'RIO ...'
  ClientHeight = 237
  ClientWidth = 286
  OnShow = FormShow
  ExplicitLeft = 264
  ExplicitTop = 231
  ExplicitWidth = 302
  ExplicitHeight = 275
  PixelsPerInch = 96
  TextHeight = 13
  object edConfirmSenha: TcxTextEdit
    Left = 103
    Top = 122
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 8
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    Style.TextColor = clMaroon
    TabOrder = 2
    OnExit = edConfirmSenhaExit
    Width = 154
  end
  object cxLabel1: TcxLabel
    Left = 15
    Top = 76
    AutoSize = False
    Caption = 'Nova Senha:'
    Style.TextColor = clMaroon
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 87
    AnchorX = 102
  end
  object cxLabel2: TcxLabel
    Left = 15
    Top = 124
    AutoSize = False
    Caption = 'Confirma Senha:'
    Style.TextColor = clMaroon
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 87
    AnchorX = 102
  end
  object btnOk: TBitBtn
    Left = 78
    Top = 180
    Width = 88
    Height = 30
    Caption = 'OK'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333330000333333333333333333333333F33333333333
      00003333344333333333333333388F3333333333000033334224333333333333
      338338F3333333330000333422224333333333333833338F3333333300003342
      222224333333333383333338F3333333000034222A22224333333338F338F333
      8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
      33333338F83338F338F33333000033A33333A222433333338333338F338F3333
      0000333333333A222433333333333338F338F33300003333333333A222433333
      333333338F338F33000033333333333A222433333333333338F338F300003333
      33333333A222433333333333338F338F00003333333333333A22433333333333
      3338F38F000033333333333333A223333333333333338F830000333333333333
      333A333333333333333338330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 5
    OnClick = btnOkClick
  end
  object btnCancelar: TBitBtn
    Left = 167
    Top = 180
    Width = 88
    Height = 30
    Caption = 'Cancelar'
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Kind = bkCancel
    NumGlyphs = 2
    ParentDoubleBuffered = False
    ParentFont = False
    TabOrder = 6
  end
  object edNovaSenha: TcxTextEdit
    Left = 103
    Top = 74
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 8
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    Style.TextColor = clMaroon
    TabOrder = 1
    OnExit = edConfirmSenhaExit
    Width = 154
  end
  object cxLabel3: TcxLabel
    Left = 15
    Top = 28
    AutoSize = False
    Caption = 'Senha Atual:'
    Style.TextColor = clBlue
    Properties.Alignment.Horz = taRightJustify
    Height = 17
    Width = 87
    AnchorX = 102
  end
  object edSenhaAtual: TcxTextEdit
    Left = 103
    Top = 26
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 8
    Style.StyleController = dmPrincipal.cxEditStyleNormal
    TabOrder = 0
    OnExit = edSenhaAtualExit
    Width = 154
  end
  object qryUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pUsuario'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, SENHA FROM USUARIO WHERE ID = :pUsuario')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 144
    Top = 64
    object qryUsuarioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 8
    end
  end
  object provUsuario: TDataSetProvider
    DataSet = qryUsuario
    Left = 160
    Top = 88
  end
  object cdsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provUsuario'
    Left = 184
    Top = 112
    object cdsUsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
      Required = True
      Size = 8
    end
  end
end
