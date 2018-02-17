inherited fBancoConveniado: TfBancoConveniado
  Caption = 'CADASTRO DE BANCOS CONVENIADOS'
  ClientWidth = 738
  ExplicitWidth = 744
  PixelsPerInch = 96
  TextHeight = 15
  inherited pnlAcao: TPanel
    Width = 738
    ExplicitWidth = 738
    inherited btnFechar: TcxButton
      Left = 673
      ExplicitLeft = 673
    end
  end
  inherited grdTabela: TcxGrid
    Width = 732
    ExplicitLeft = -2
    ExplicitTop = 38
    ExplicitWidth = 732
    inherited grdTabelaDBTableView1: TcxGridDBTableView
      object grdTabelaDBTableView1ID: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'ID'
      end
      object grdTabelaDBTableView1DESCRICAO: TcxGridDBColumn
        Tag = 1
        Caption = 'Descri'#231#227'o'
        DataBinding.FieldName = 'DESCRICAO'
        Width = 265
      end
      object grdTabelaDBTableView1AGENCIA: TcxGridDBColumn
        Caption = 'Ag'#234'ncia'
        DataBinding.FieldName = 'AGENCIA'
        Width = 94
      end
      object grdTabelaDBTableView1CONTA_EMPRESA: TcxGridDBColumn
        Caption = 'Conta Empresa'
        DataBinding.FieldName = 'CONTA_EMPRESA'
        Width = 94
      end
      object grdTabelaDBTableView1CONVENIO: TcxGridDBColumn
        Caption = 'Convenio'
        DataBinding.FieldName = 'CONVENIO'
        Width = 94
      end
      object grdTabelaDBTableView1COD_EMPRESA: TcxGridDBColumn
        Caption = 'C'#243'digo Empresa'
        DataBinding.FieldName = 'COD_EMPRESA'
        Width = 94
      end
    end
  end
  inherited pnlLocalizar: TPanel
    Width = 738
    ExplicitWidth = 738
    inherited lblLocalizar: TLabel
      Left = 21
      ExplicitLeft = 21
    end
    inherited edtLocalizar: TcxTextEdit
      Left = 80
      ExplicitLeft = 80
    end
    inherited btnOk: TcxButton
      Left = 373
      ExplicitLeft = 373
    end
    inherited btnCancelar: TcxButton
      Left = 465
      ExplicitLeft = 465
    end
  end
  inherited ClientTabela: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'AGENCIA'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CONTA_EMPRESA'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'CONVENIO'
        DataType = ftString
        Size = 11
      end
      item
        Name = 'COD_EMPRESA'
        DataType = ftString
        Size = 11
      end>
    object ClientTabelaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ClientTabelaDESCRICAO: TStringField
      Tag = 1
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object ClientTabelaAGENCIA: TStringField
      Tag = 1
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object ClientTabelaCONTA_EMPRESA: TStringField
      Tag = 1
      FieldName = 'CONTA_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object ClientTabelaCONVENIO: TStringField
      Tag = 1
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object ClientTabelaCOD_EMPRESA: TStringField
      Tag = 1
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
  end
  inherited DataSetTabela: TSQLDataSet
    CommandText = 'select * from BANCO_CONVENIADO'
    object DataSetTabelaID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object DataSetTabelaDESCRICAO: TStringField
      Tag = 1
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object DataSetTabelaAGENCIA: TStringField
      Tag = 1
      FieldName = 'AGENCIA'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object DataSetTabelaCONTA_EMPRESA: TStringField
      Tag = 1
      FieldName = 'CONTA_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object DataSetTabelaCONVENIO: TStringField
      Tag = 1
      FieldName = 'CONVENIO'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
    object DataSetTabelaCOD_EMPRESA: TStringField
      Tag = 1
      FieldName = 'COD_EMPRESA'
      ProviderFlags = [pfInUpdate]
      Size = 11
    end
  end
  inherited ClientLogTabela: TClientDataSet
    CommandText = 'select * from BANCO_CONVENIADO'
    object ClientLogTabelaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object ClientLogTabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object ClientLogTabelaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 11
    end
    object ClientLogTabelaCONTA_EMPRESA: TStringField
      FieldName = 'CONTA_EMPRESA'
      Size = 11
    end
    object ClientLogTabelaCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 11
    end
    object ClientLogTabelaCOD_EMPRESA: TStringField
      FieldName = 'COD_EMPRESA'
      Size = 11
    end
    object ClientLogTabelaID_SESSAO: TIntegerField
      FieldName = 'ID_SESSAO'
      Required = True
    end
    object ClientLogTabelaOPERACAO: TIntegerField
      FieldName = 'OPERACAO'
      Required = True
    end
    object ClientLogTabelaDATA_HORA_OPERACAO: TSQLTimeStampField
      FieldName = 'DATA_HORA_OPERACAO'
      Required = True
    end
  end
  inherited DataSetLogTabela: TSQLDataSet
    CommandText = 'select * from BANCO_CONVENIADO'
    object DataSetLogTabelaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object DataSetLogTabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 40
    end
    object DataSetLogTabelaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 11
    end
    object DataSetLogTabelaCONTA_EMPRESA: TStringField
      FieldName = 'CONTA_EMPRESA'
      Size = 11
    end
    object DataSetLogTabelaCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 11
    end
    object DataSetLogTabelaCOD_EMPRESA: TStringField
      FieldName = 'COD_EMPRESA'
      Size = 11
    end
    object DataSetLogTabelaID_SESSAO: TIntegerField
      FieldName = 'ID_SESSAO'
      Required = True
    end
    object DataSetLogTabelaOPERACAO: TIntegerField
      FieldName = 'OPERACAO'
      Required = True
    end
    object DataSetLogTabelaDATA_HORA_OPERACAO: TSQLTimeStampField
      FieldName = 'DATA_HORA_OPERACAO'
      Required = True
    end
  end
end
