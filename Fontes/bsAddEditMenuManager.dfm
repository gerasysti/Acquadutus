inherited fbsAddEditMenuManager: TfbsAddEditMenuManager
  Caption = 'CONTROLE DE MENU [ ITENS ]'
  ClientHeight = 204
  Position = poOwnerFormCenter
  ExplicitHeight = 232
  PixelsPerInch = 96
  TextHeight = 16
  inherited pButtons: TPanel
    ExplicitLeft = 8
    ExplicitTop = -16
  end
  inherited PanelBotton: TPanel
    Top = 169
    ExplicitTop = 175
  end
  inherited PanelClient: TPanel
    Height = 126
    ExplicitHeight = 126
    object lblDescricao: TLabel
      Left = 100
      Top = 10
      Width = 60
      Height = 16
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o:'
    end
    object Label1: TLabel
      Left = 127
      Top = 40
      Width = 33
      Height = 16
      Alignment = taRightJustify
      Caption = 'A'#231#227'o:'
    end
    object Label10: TLabel
      Left = 114
      Top = 101
      Width = 46
      Height = 16
      Alignment = taRightJustify
      Caption = 'M'#243'dulo:'
    end
    object Label2: TLabel
      Left = 133
      Top = 70
      Width = 27
      Height = 16
      Alignment = taRightJustify
      Caption = 'Tag:'
    end
    object TextNome: TcxDBTextEdit
      Left = 162
      Top = 7
      Hint = 'Informe uma descri'#231#227'o [coluna obrigat'#243'ria]'
      DataBinding.DataField = 'DESCRICAO'
      DataBinding.DataSource = dsMenu
      Style.StyleController = EditStyleNormal
      TabOrder = 0
      Width = 320
    end
    object cbNomeAcao: TcxDBComboBox
      Left = 162
      Top = 37
      DataBinding.DataField = 'NOME_ACAO'
      DataBinding.DataSource = dsMenu
      Properties.DropDownListStyle = lsFixedList
      Style.StyleController = EditStyleNormal
      TabOrder = 1
      Width = 320
    end
    object beIdModulo: TbsDBButtonEdit
      Left = 162
      Top = 97
      DataBinding.DataField = 'ID_MODULO'
      DataBinding.DataSource = dsMenu
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
      Properties.ClickKey = 114
      Style.StyleController = EditStyleNormal
      TabOrder = 3
      LookupInformation.FieldList = 'DESCRICAO'
      LookupInformation.TableName = 'MODULO'
      LookupInformation.Caption = 'SELECIONE UM M'#211'DULO'
      LookupInformation.TextEdit = teDescricaoModulo
      Width = 71
    end
    object teDescricaoModulo: TcxTextEdit
      Left = 230
      Top = 97
      TabStop = False
      Style.StyleController = EditStyleReadyOnly
      TabOrder = 4
      Width = 299
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 162
      Top = 67
      DataBinding.DataField = 'TAG'
      DataBinding.DataSource = dsMenu
      Properties.MaxValue = 99.000000000000000000
      Style.StyleController = EditStyleNormal
      TabOrder = 2
      Width = 39
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    inherited GridTableViewStyleSheetPadrao: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object dsMenu: TDataSource
    DataSet = cdsMenu
    Left = 480
    Top = 200
  end
  object cdsMenu: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from MENU where ID = :ID'
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_MENU'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 80
      end
      item
        Name = 'ORDEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'INDICE_IMAGEM'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME_ACAO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'TAG'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_MODULO'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptUnknown
      end>
    ProviderName = 'sdpMenu'
    StoreDefs = True
    Left = 480
    Top = 152
    object cdsMenuID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsMenuID_MENU: TIntegerField
      Tag = 1
      FieldName = 'ID_MENU'
      ProviderFlags = [pfInUpdate]
    end
    object cdsMenuDESCRICAO: TStringField
      Tag = 1
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object cdsMenuORDEM: TIntegerField
      Tag = 1
      DefaultExpression = '0'
      FieldName = 'ORDEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsMenuINDICE_IMAGEM: TIntegerField
      Tag = 1
      DefaultExpression = '-1'
      FieldName = 'INDICE_IMAGEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsMenuNOME_ACAO: TStringField
      Tag = 1
      FieldName = 'NOME_ACAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object cdsMenuTAG: TIntegerField
      Tag = 1
      DefaultExpression = '0'
      FieldName = 'TAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsMenuID_MODULO: TIntegerField
      Tag = 1
      FieldName = 'ID_MODULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object sdpMenu: TDataSetProvider
    DataSet = sdsMenu
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 480
    Top = 104
  end
  object sdsMenu: TSQLDataSet
    SchemaName = 'CONTADOR'
    GetMetadata = False
    CommandText = 'select * from MENU'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <>
    Left = 480
    Top = 56
    object sdsMenuID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsMenuID_MENU: TIntegerField
      Tag = 1
      FieldName = 'ID_MENU'
      ProviderFlags = [pfInUpdate]
    end
    object sdsMenuDESCRICAO: TStringField
      Tag = 1
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object sdsMenuORDEM: TIntegerField
      Tag = 1
      FieldName = 'ORDEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsMenuINDICE_IMAGEM: TIntegerField
      Tag = 1
      FieldName = 'INDICE_IMAGEM'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsMenuNOME_ACAO: TStringField
      Tag = 1
      FieldName = 'NOME_ACAO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object sdsMenuTAG: TIntegerField
      Tag = 1
      FieldName = 'TAG'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object sdsMenuID_MODULO: TIntegerField
      Tag = 1
      FieldName = 'ID_MODULO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
end
