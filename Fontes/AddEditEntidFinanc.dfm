inherited frmAddEditEntidFinanc: TfrmAddEditEntidFinanc
  Left = 237
  Top = 130
  Caption = 'frmAddEditEntidFinanc'
  ClientHeight = 178
  ClientWidth = 540
  OnCreate = FormCreate
  ExplicitLeft = 237
  ExplicitTop = 130
  ExplicitWidth = 556
  ExplicitHeight = 216
  PixelsPerInch = 96
  TextHeight = 13
  inherited PanelClient: TPanel
    Width = 540
    Height = 145
    ParentDoubleBuffered = False
    ExplicitTop = -3
    ExplicitWidth = 601
    ExplicitHeight = 304
    inherited lblPadrao: TcxLabel
      Left = 10
      Top = 20
      Caption = 'Id.:'
      ExplicitLeft = 10
      ExplicitTop = 20
      ExplicitHeight = 20
      Height = 20
      AnchorX = 91
    end
    object edId: TcxDBTextEdit
      Left = 91
      Top = 18
      DataBinding.DataField = 'ID'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
      TabOrder = 1
      Width = 70
    end
    object edDescricao: TcxDBTextEdit
      Left = 91
      Top = 54
      Hint = 'Descri'#231#227'o da Entidade'
      DataBinding.DataField = 'NOME'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 2
      Width = 433
    end
    object edCodBanco: TcxDBTextEdit
      Left = 91
      Top = 91
      Hint = 'C'#243'digo do Banco (quanto for uma entid. financeira)'
      DataBinding.DataField = 'COD_BANCO'
      DataBinding.DataSource = ds1
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Properties.MaxLength = 3
      Style.StyleController = dmPrincipal.cxEditStyleNormal
      TabOrder = 3
      Width = 70
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 58
      AutoSize = False
      Caption = 'Descri'#231#227'o:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 81
      AnchorX = 91
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 94
      AutoSize = False
      Caption = 'C'#243'd. do Banco:'
      ParentFont = False
      Style.StyleController = dmPrincipal.cxLabelStyleNormal
      Properties.Alignment.Horz = taRightJustify
      Height = 20
      Width = 81
      AnchorX = 91
    end
  end
  inherited Panel: TPanel
    Top = 145
    Width = 540
    ExplicitTop = 211
    ExplicitWidth = 492
    inherited btnCancelar: TcxButton
      Left = 430
      Top = 3
      ExplicitLeft = 430
      ExplicitTop = 3
    end
    inherited btnGravar: TcxButton
      Left = 334
      Top = 3
      ExplicitLeft = 334
      ExplicitTop = 3
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 48
    Top = 88
  end
  inherited cds1: TClientDataSet
    CommandText = ''
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NOME'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'COD_BANCO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 3
      end>
    Params = <>
    AfterEdit = cds1AfterEdit
    Left = 61
    Top = 112
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1NOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cds1COD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      FixedChar = True
      Size = 3
    end
  end
  inherited ds1: TDataSource
    Left = 80
    Top = 128
  end
  inherited qry1: TSQLQuery
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT '
      '*'
      'FROM '
      'ENTID_FINANC'
      'WHERE'
      '(ID = :pId)')
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1NOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object qry1COD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 3
    end
  end
end
