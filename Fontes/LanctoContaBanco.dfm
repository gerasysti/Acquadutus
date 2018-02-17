inherited fLanctoContaBanco: TfLanctoContaBanco
  Left = 11
  Top = 147
  Caption = 'LAN'#199'AMENTO DE CONTAS BANC'#193'RIAS'
  ClientWidth = 994
  Position = poDefault
  ExplicitLeft = 11
  ExplicitTop = 147
  ExplicitWidth = 1010
  PixelsPerInch = 96
  TextHeight = 16
  inherited GridTable: TcxGrid
    Width = 988
    ExplicitLeft = 8
    ExplicitTop = 66
    ExplicitWidth = 1071
    ExplicitHeight = 367
    inherited GridTableDBTableView1: TcxGridDBTableView
      DataController.DataSource = dsContaBanco
      Styles.Content = nil
      Styles.ContentEven = nil
      Styles.ContentOdd = nil
      Styles.Inactive = nil
      Styles.Selection = nil
      Styles.Footer = nil
      Styles.Group = nil
      Styles.GroupByBox = nil
      Styles.Header = nil
      Styles.Indicator = nil
      Styles.Preview = nil
      object GridTableDBTableView1ID_PESSOA: TcxGridDBColumn
        Caption = 'C'#243'd.'
        DataBinding.FieldName = 'ID_PESSOA'
        Width = 100
      end
      object GridTableDBTableView1DESCRICAO_PESSOA: TcxGridDBColumn
        Caption = 'Servidor'
        DataBinding.FieldName = 'DESCRICAO_PESSOA'
        Width = 250
      end
      object GridTableDBTableView1CPF_PESSOA_FISICA: TcxGridDBColumn
        Caption = 'CPF'
        DataBinding.FieldName = 'CPF_PESSOA_FISICA'
        Width = 100
      end
      object GridTableDBTableView1DESCRICAO_SUBU_ORCAMENT: TcxGridDBColumn
        Caption = 'Sub-unidade Or'#231'ament'#225'ria'
        DataBinding.FieldName = 'DESCRICAO_SUBU_ORCAMENT'
        Width = 250
      end
      object GridTableDBTableView1DESCRICAO_TIPO_CONTA_BANCO: TcxGridDBColumn
        Caption = 'Tipo'
        DataBinding.FieldName = 'DESCRICAO_TIPO_CONTA_BANCO'
        Width = 150
      end
      object GridTableDBTableView1AGENCIA: TcxGridDBColumn
        Caption = 'Ag'#234'ncia'
        DataBinding.FieldName = 'AGENCIA'
        Width = 100
      end
      object GridTableDBTableView1NUM_CONTA: TcxGridDBColumn
        Caption = 'Conta'
        DataBinding.FieldName = 'NUM_CONTA'
        Width = 100
      end
    end
  end
  inherited PanelSearching: TPanel
    Width = 994
    ExplicitWidth = 1077
    inherited btnCancelar: TcxButton
      Left = 872
      ExplicitLeft = 872
    end
    inherited btnOk: TcxButton
      Left = 783
      ExplicitLeft = 783
    end
  end
  inherited pButtons: TPanel
    Width = 994
    ExplicitWidth = 1077
    inherited btnNovo: TcxButton
      Left = 668
      ExplicitLeft = 668
      ExplicitHeight = 57
    end
    inherited btnAlterar: TcxButton
      Left = 734
      ExplicitLeft = 715
      ExplicitHeight = 57
    end
    inherited btnExcluir: TcxButton
      Left = 800
      ExplicitLeft = 762
      ExplicitHeight = 57
    end
    inherited btnFechar: TcxButton
      Left = 931
      TabOrder = 4
      ExplicitLeft = 1027
      ExplicitHeight = 57
    end
    object pFiltro: TPanel
      Left = 0
      Top = 0
      Width = 665
      Height = 63
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 13
        Width = 112
        Height = 14
        Alignment = taRightJustify
        Caption = 'Entidade Financeira:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object TextDescricaoBancoConv: TcxTextEdit
        Left = 190
        Top = 9
        TabStop = False
        ParentFont = False
        Properties.ReadOnly = True
        Style.StyleController = cxEditStyleReadyOnly
        TabOrder = 0
        Width = 289
      end
      object btnOkFiltro: TcxButton
        Tag = 4
        Left = 490
        Top = 8
        Width = 71
        Height = 26
        Caption = '&Ok'
        Enabled = False
        LookAndFeel.Kind = lfOffice11
        TabOrder = 1
        TabStop = False
        OnClick = btnOkFiltroClick
      end
      object btnLimpar: TcxButton
        Tag = 4
        Left = 569
        Top = 8
        Width = 90
        Height = 26
        Caption = '&Limpar'
        LookAndFeel.Kind = lfOffice11
        TabOrder = 2
        TabStop = False
        OnClick = btnLimparClick
      end
      object sbeIdEntidFinanc: TbsSelectButtonEdit
        Left = 123
        Top = 9
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnEditValueChanged = sbeIdEntidFinancPropertiesEditValueChanged
        Style.StyleController = cxEditStyleNormal
        TabOrder = 3
        LookupInformation.FieldList = 'DESCRICAO'
        LookupInformation.TableName = 'ENTID_FINANC'
        LookupInformation.Caption = 'SELECIONE UMA ENTIDADE FINANCEIRA'
        LookupInformation.TextEdit = TextDescricaoBancoConv
        MultiSelect = False
        Width = 69
      end
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 640
    Top = 152
    inherited GridTableViewStyleSheetPadrao: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    inherited GridTableViewStyleSheetPadrao2: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    inherited GridTableViewStyleSheetPadrao3: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
    inherited GridTableViewStyleSheetPadrao4: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  inherited cxEditStyleCheckBox: TcxEditStyleController
    Left = 536
    Top = 152
  end
  inherited cxEditStyleNormal: TcxEditStyleController
    Style.IsFontAssigned = True
    Left = 440
    Top = 152
  end
  inherited cxEditStyleReadyOnly: TcxEditStyleController
    Style.IsFontAssigned = True
    Left = 336
    Top = 152
  end
  object sdsContaBanco: TSQLDataSet
    SchemaName = 'SYSDBA'
    GetMetadata = False
    CommandText = 
      'SELECT * FROM CONTA_BANCO WHERE ID_ENTID_FINANC = :ID_ENTID_FINA' +
      'NC'
    DbxCommandType = 'Dbx.SQL'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID_ENTID_FINANC'
        ParamType = ptInput
      end>
    Left = 104
    Top = 104
    object sdsContaBancoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsContaBancoDESCRICAO_PESSOA: TStringField
      FieldName = 'DESCRICAO_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object sdsContaBancoCPF_PESSOA_FISICA: TStringField
      FieldName = 'CPF_PESSOA_FISICA'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object sdsContaBancoDESCRICAO_SUBU_ORCAMENT: TStringField
      FieldName = 'DESCRICAO_SUBU_ORCAMENT'
      ProviderFlags = []
      Size = 60
    end
    object sdsContaBancoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sdsContaBancoID_TIPO_CONTA_BANCO: TIntegerField
      Tag = 1
      FieldName = 'ID_TIPO_CONTA_BANCO'
      Required = True
    end
    object sdsContaBancoDESCRICAO_TIPO_CONTA_BANCO: TStringField
      FieldName = 'DESCRICAO_TIPO_CONTA_BANCO'
      ProviderFlags = []
      Size = 40
    end
    object sdsContaBancoID_ENTID_FINANC: TIntegerField
      Tag = 1
      FieldName = 'ID_ENTID_FINANC'
      Required = True
    end
    object sdsContaBancoDESCRICAO_ENTID_FINANC: TStringField
      FieldName = 'DESCRICAO_ENTID_FINANC'
      ProviderFlags = []
      Size = 60
    end
    object sdsContaBancoAGENCIA: TStringField
      Tag = 1
      FieldName = 'AGENCIA'
      Required = True
      Size = 11
    end
    object sdsContaBancoNUM_CONTA: TStringField
      Tag = 1
      FieldName = 'NUM_CONTA'
      Required = True
      Size = 11
    end
    object sdsContaBancoPRINCIPAL: TStringField
      Tag = 1
      FieldName = 'PRINCIPAL'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspContaBanco: TDataSetProvider
    DataSet = sdsContaBanco
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 104
    Top = 152
  end
  object cdsContaBanco: TClientDataSet
    Tag = 1
    Aggregates = <>
    CommandText = 
      'SELECT * FROM CONTA_BANCO WHERE ID_ENTID_FINANC = :ID_ENTID_FINA' +
      'NC'
    FieldDefs = <
      item
        Name = 'ID_PESSOA'
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CPF_PESSOA_FISICA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'DESCRICAO_SUBU_ORCAMENT'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_TIPO_CONTA_BANCO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_TIPO_CONTA_BANCO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ID_ENTID_FINANC'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO_ENTID_FINANC'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'AGENCIA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'NUM_CONTA'
        Attributes = [faRequired]
        DataType = ftString
        Size = 11
      end
      item
        Name = 'PRINCIPAL'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'ID_PESSOA'
    MasterFields = 'ID_PESSOA'
    Params = <
      item
        DataType = ftWideString
        Name = 'ID_ENTID_FINANC'
        ParamType = ptUnknown
        Value = '0'
      end>
    ProviderName = 'dspContaBanco'
    StoreDefs = True
    Left = 104
    Top = 199
    object cdsContaBancoID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsContaBancoDESCRICAO_PESSOA: TStringField
      FieldName = 'DESCRICAO_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object cdsContaBancoCPF_PESSOA_FISICA: TStringField
      FieldName = 'CPF_PESSOA_FISICA'
      ProviderFlags = []
      FixedChar = True
      Size = 11
    end
    object cdsContaBancoDESCRICAO_SUBU_ORCAMENT: TStringField
      FieldName = 'DESCRICAO_SUBU_ORCAMENT'
      ProviderFlags = []
      Size = 60
    end
    object cdsContaBancoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsContaBancoID_TIPO_CONTA_BANCO: TIntegerField
      Tag = 1
      FieldName = 'ID_TIPO_CONTA_BANCO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsContaBancoDESCRICAO_TIPO_CONTA_BANCO: TStringField
      FieldName = 'DESCRICAO_TIPO_CONTA_BANCO'
      ProviderFlags = []
      Size = 40
    end
    object cdsContaBancoID_ENTID_FINANC: TIntegerField
      Tag = 1
      FieldName = 'ID_ENTID_FINANC'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsContaBancoDESCRICAO_ENTID_FINANC: TStringField
      FieldName = 'DESCRICAO_ENTID_FINANC'
      ProviderFlags = []
      Size = 60
    end
    object cdsContaBancoAGENCIA: TStringField
      Tag = 1
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
    object cdsContaBancoNUM_CONTA: TStringField
      Tag = 1
      FieldName = 'NUM_CONTA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 11
    end
    object cdsContaBancoPRINCIPAL: TStringField
      Tag = 1
      FieldName = 'PRINCIPAL'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsContaBanco: TDataSource
    DataSet = cdsContaBanco
    Left = 104
    Top = 246
  end
end
