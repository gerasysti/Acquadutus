inherited fAddEditContaCorr: TfAddEditContaCorr
  ClientHeight = 169
  Position = poOwnerFormCenter
  OnShow = FormShow
  ExplicitHeight = 201
  PixelsPerInch = 96
  TextHeight = 15
  inherited PanelBotton: TPanel
    Top = 129
    ExplicitTop = 129
  end
  inherited PanelClient: TPanel
    Height = 86
    ExplicitHeight = 86
    object Label33: TLabel
      Left = 104
      Top = 37
      Width = 46
      Height = 15
      Alignment = taRightJustify
      Caption = 'Ag'#234'ncia:'
    end
    object Label34: TLabel
      Left = 114
      Top = 64
      Width = 35
      Height = 15
      Alignment = taRightJustify
      Caption = 'Conta:'
    end
    object Label1: TLabel
      Left = 113
      Top = 9
      Width = 37
      Height = 15
      Alignment = taRightJustify
      Caption = 'Banco:'
    end
    object TextDescricaoBancoConv: TcxTextEdit
      Left = 216
      Top = 6
      Enabled = False
      TabOrder = 1
      Width = 271
    end
    object TextAgencia: TcxDBTextEdit
      Left = 152
      Top = 34
      Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
      DataBinding.DataField = 'AGENCIA'
      Properties.CharCase = ecUpperCase
      TabOrder = 2
      Width = 65
    end
    object TextNumConta: TcxDBTextEdit
      Left = 151
      Top = 61
      Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
      DataBinding.DataField = 'NUM_CONTA'
      Properties.CharCase = ecUpperCase
      TabOrder = 3
      Width = 66
    end
    object ButtonEditIdBancoConv: TbsDBButtonEdit
      Left = 152
      Top = 6
      DataBinding.DataField = 'ID_BANCO_CONV'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 114
      TabOrder = 0
      LookupInformation.FieldList = 'DESCRICAO'
      LookupInformation.TableName = 'BANCO_CONV'
      LookupInformation.Caption = 'SELECIONE UM BANCO CONVENIADO'
      LookupInformation.TextEdit = TextDescricaoBancoConv
      Width = 66
    end
  end
end
