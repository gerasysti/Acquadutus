inherited frmLanctoRequerimento: TfrmLanctoRequerimento
  Left = 214
  Top = 249
  Caption = 'frmLanctoRequerimento'
  ClientHeight = 550
  ClientWidth = 738
  ShowHint = True
  ExplicitWidth = 754
  ExplicitHeight = 589
  PixelsPerInch = 96
  TextHeight = 14
  inherited pnlButtons: TPanel
    Width = 738
    ExplicitWidth = 738
    inherited btnNovo: TcxButton
      Left = 0
      ExplicitLeft = 0
    end
    inherited btnAlterar: TcxButton
      Left = 59
      ExplicitLeft = 59
    end
    inherited btnExcluir: TcxButton
      Left = 118
      ExplicitLeft = 118
    end
    inherited btnFechar: TcxButton
      Left = 678
      ExplicitLeft = 678
    end
    inherited btnPesquisar: TcxButton
      Left = 177
      OnClick = btnPesquisarClick
      ExplicitLeft = 177
    end
    inherited btnImprimir: TcxButton
      Left = 609
      OnClick = btnImprimirClick
      ExplicitLeft = 609
    end
  end
  inherited Panel1: TPanel
    Top = 517
    Width = 738
    Height = 33
    ExplicitTop = 517
    ExplicitWidth = 738
    ExplicitHeight = 33
    inherited btnGravar: TcxButton
      Left = 546
      Top = 2
      Height = 30
      ExplicitLeft = 546
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    inherited btnCancelar: TcxButton
      Left = 641
      Top = 2
      Height = 30
      Cancel = False
      ExplicitLeft = 641
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    inherited Nav1: TcxDBNavigator
      Height = 27
      DataSource = dsUnidNav
      ExplicitHeight = 27
    end
  end
  inherited PanelClient: TPanel
    Width = 738
    Height = 457
    ExplicitWidth = 738
    ExplicitHeight = 457
    inherited lblPadrao: TcxLabel
      Left = 20
      Top = 52
      Caption = 'Label Padr'#227'o'
      ExplicitLeft = 20
      ExplicitTop = 52
      ExplicitWidth = 71
      Width = 71
      AnchorY = 61
    end
    object gbEndereco1: TcxGroupBox
      Left = 1
      Top = 1
      Align = alTop
      Caption = ' Protocolo: '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 331
      Width = 732
      object Label12: TLabel
        Left = 13
        Top = 18
        Width = 46
        Height = 14
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 376
        Top = 18
        Width = 41
        Height = 14
        Caption = 'Servi'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 13
        Top = 161
        Width = 120
        Height = 14
        Caption = 'Servidor Respons'#225'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 221
        Top = 18
        Width = 29
        Height = 14
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 607
        Top = 112
        Width = 72
        Height = 14
        Caption = 'Dt.Despacho:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 332
        Top = 112
        Width = 50
        Height = 14
        Caption = 'Situa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object btnServico: TSpeedButton
        Tag = 1
        Left = 405
        Top = 30
        Width = 26
        Height = 27
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
        OnClick = btnServicoClick
      end
      object LabelNome: TLabel
        Left = 116
        Top = 64
        Width = 115
        Height = 14
        Caption = 'Nome / Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object lblCPF_CNPJ: TLabel
        Left = 551
        Top = 64
        Width = 49
        Height = 14
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object sbUC: TSpeedButton
        Tag = 2
        Left = 91
        Top = 77
        Width = 26
        Height = 27
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
        OnClick = btnServicoClick
      end
      object Label3: TLabel
        Left = 13
        Top = 64
        Width = 78
        Height = 14
        Caption = 'Unid.Consum.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 13
        Top = 112
        Width = 70
        Height = 14
        Caption = 'Protocolo N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 175
        Top = 112
        Width = 44
        Height = 14
        Caption = 'Livro N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 13
        Top = 207
        Width = 66
        Height = 14
        Caption = 'Observa'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object edId: TcxDBTextEdit
        Tag = 1
        Left = 13
        Top = 31
        AutoSize = False
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 0
        OnExit = edIdExit
        OnKeyDown = edIdKeyDown
        OnKeyPress = edIdPessoaKeyPress
        Height = 25
        Width = 79
      end
      object edIdServico: TcxDBTextEdit
        Tag = 1
        Left = 376
        Top = 31
        AutoSize = False
        DataBinding.DataField = 'ID_SERVICO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 2
        OnExit = edIdServicoExit
        OnKeyDown = edIdServicoKeyDown
        OnKeyPress = edIdPessoaKeyPress
        Height = 25
        Width = 30
      end
      object edServidRespon: TcxDBTextEdit
        Tag = 2
        Left = 13
        Top = 173
        AutoSize = False
        DataBinding.DataField = 'SERVID_RESPONSAV'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 11
        Height = 25
        Width = 704
      end
      object edDtReq: TcxDateEdit
        Left = 221
        Top = 31
        AutoSize = False
        ParentFont = False
        Properties.InputKind = ikMask
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 1
        Height = 25
        Width = 110
      end
      object edDescrServico: TcxDBTextEdit
        Left = 430
        Top = 31
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'DESCR_SERVICO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 3
        Height = 25
        Width = 288
      end
      object edNome: TcxDBTextEdit
        Left = 116
        Top = 78
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'NOME_PESSOA'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 5
        Height = 25
        Width = 424
      end
      object edCPF_CNPJ: TcxDBTextEdit
        Left = 550
        Top = 78
        TabStop = False
        AutoSize = False
        DataBinding.DataField = 'CPF_CNPJ'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Properties.ReadOnly = True
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 6
        Height = 25
        Width = 168
      end
      object edIdUC: TcxMaskEdit
        Tag = 2
        Left = 13
        Top = 78
        AutoSize = False
        ParentFont = False
        ParentShowHint = False
        Properties.Alignment.Horz = taRightJustify
        Properties.AlwaysShowBlanksAndLiterals = True
        Properties.EditMask = '9999999-9;0; '
        Properties.MaxLength = 0
        ShowHint = True
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 4
        Text = '        '
        OnExit = edIdUCExit
        OnKeyDown = edIdUCKeyDown
        Height = 25
        Width = 79
      end
      object edDtDespacho: TcxDateEdit
        Left = 607
        Top = 126
        AutoSize = False
        ParentFont = False
        Properties.InputKind = ikMask
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 10
        Height = 25
        Width = 110
      end
      object memObservacao: TcxDBMemo
        AlignWithMargins = True
        Left = 13
        Top = 221
        Hint = 
          ' Aten'#231#227'o: Pressione [Ctrl + Enter] para ir para pr'#243'xima linha ..' +
          '.'
        DataBinding.DataField = 'OBSERVACAO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.ScrollBars = ssVertical
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWhite
        Style.Font.Height = -12
        Style.Font.Name = 'Calibri'
        Style.Font.Style = [fsBold]
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        Style.IsFontAssigned = True
        TabOrder = 12
        Height = 97
        Width = 704
      end
      object edNumProtocol: TcxDBTextEdit
        Tag = 1
        Left = 13
        Top = 126
        AutoSize = False
        DataBinding.DataField = 'NUM_PROTOCOLO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 7
        OnExit = edIdExit
        OnKeyDown = edIdKeyDown
        OnKeyPress = edIdPessoaKeyPress
        Height = 25
        Width = 92
      end
      object edNumLivro: TcxDBTextEdit
        Tag = 1
        Left = 175
        Top = 126
        AutoSize = False
        DataBinding.DataField = 'NUM_LIVRO'
        DataBinding.DataSource = ds1
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 8
        OnExit = edIdExit
        OnKeyDown = edIdKeyDown
        OnKeyPress = edIdPessoaKeyPress
        Height = 25
        Width = 92
      end
      object cbSituacao: TcxComboBox
        Left = 332
        Top = 126
        AutoSize = False
        ParentFont = False
        Properties.Items.Strings = (
          'SEM APRECIA'#199#195'O'
          'DEFERIDO'
          'INDEFERIDO')
        Style.StyleController = dmPrincipal.cxEditStyleNormal
        TabOrder = 9
        Text = 'SEM APRECIA'#199#195'O'
        Height = 25
        Width = 208
      end
    end
    object cxGroupBox1: TcxGroupBox
      Left = 1
      Top = 332
      Align = alTop
      Caption = ' Endere'#231'o da Unidade: '
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Arial'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Height = 118
      Width = 732
      object Label1: TLabel
        Left = 13
        Top = 23
        Width = 53
        Height = 14
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 13
        Top = 67
        Width = 36
        Height = 14
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 517
        Top = 67
        Width = 44
        Height = 14
        Caption = 'Distrito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
      object edEndereco: TcxTextEdit
        Left = 12
        Top = 36
        TabStop = False
        AutoSize = False
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 0
        Height = 25
        Width = 705
      end
      object edBairro: TcxTextEdit
        Left = 12
        Top = 80
        TabStop = False
        AutoSize = False
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 1
        Height = 25
        Width = 277
      end
      object edDistrito: TcxTextEdit
        Left = 517
        Top = 80
        TabStop = False
        AutoSize = False
        ParentFont = False
        Style.StyleController = dmPrincipal.cxEditStyleReadyOnly
        TabOrder = 2
        Height = 25
        Width = 200
      end
    end
  end
  inherited dsp1: TDataSetProvider
    Left = 29
    Top = 16
  end
  inherited cds1: TClientDataSet
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DATA_REQUER'
        Attributes = [faRequired]
        DataType = ftDate
      end
      item
        Name = 'ID_PESSOA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ID_SERVICO'
        DataType = ftInteger
      end
      item
        Name = 'ID_UNID_CONSUM'
        DataType = ftInteger
      end
      item
        Name = 'NUM_PROTOCOLO'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'NUM_LIVRO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DATA_PROTOCOL'
        DataType = ftDate
      end
      item
        Name = 'DATA_DESPACHO'
        DataType = ftDate
      end
      item
        Name = 'SITUACAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SERVID_RESPONSAV'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'OBSERVACAO'
        DataType = ftString
        Size = 240
      end
      item
        Name = 'DESCR_SERVICO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NOME_PESSOA'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ENDER_ID_LOGRAD'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_NUM_LETRA'
        DataType = ftString
        Size = 7
      end
      item
        Name = 'ENDER_ID_BAIRRO'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_ID_DISTRITO'
        DataType = ftInteger
      end
      item
        Name = 'ENDER_DESCR_LOGRAD'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'ENDER_DESCR_BAIRRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_DESCR_DISTRITO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'ENDER_COMPLEMENTO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CPF_CNPJ'
        DataType = ftString
        Size = 80
      end>
    AfterOpen = cds1AfterOpen
    AfterInsert = cds1AfterInsert
    BeforePost = cds1BeforePost
    AfterScroll = cds1AfterScroll
    Left = 44
    Top = 24
    object cds1ID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cds1DATA_REQUER: TDateField
      FieldName = 'DATA_REQUER'
      Required = True
    end
    object cds1ID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      Required = True
    end
    object cds1ID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
    end
    object cds1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
    end
    object cds1NUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      Size = 15
    end
    object cds1NUM_LIVRO: TStringField
      FieldName = 'NUM_LIVRO'
      Size = 10
    end
    object cds1DATA_PROTOCOL: TDateField
      FieldName = 'DATA_PROTOCOL'
    end
    object cds1DATA_DESPACHO: TDateField
      FieldName = 'DATA_DESPACHO'
    end
    object cds1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cds1SERVID_RESPONSAV: TStringField
      FieldName = 'SERVID_RESPONSAV'
      Size = 50
    end
    object cds1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Size = 240
    end
    object cds1DESCR_SERVICO: TStringField
      FieldName = 'DESCR_SERVICO'
      Size = 40
    end
    object cds1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object cds1ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object cds1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      Size = 7
    end
    object cds1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object cds1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object cds1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object cds1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object cds1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object cds1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object cds1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 80
    end
  end
  inherited ds1: TDataSource
    AutoEdit = False
    Left = 56
    Top = 40
  end
  inherited qryUsuarioPermissaoTabela: TSQLQuery
    Left = 480
    Top = 32
  end
  inherited qryPermissaoEspecial: TSQLQuery
    Left = 520
    Top = 48
  end
  inherited qry1: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pIdNav'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM REQUERIMENTO WHERE ID = :pIdNav')
    Left = 8
    Top = 8
    object qry1ID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qry1DATA_REQUER: TDateField
      FieldName = 'DATA_REQUER'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qry1ID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qry1ID_SERVICO: TIntegerField
      FieldName = 'ID_SERVICO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1ID_UNID_CONSUM: TIntegerField
      FieldName = 'ID_UNID_CONSUM'
      ProviderFlags = [pfInUpdate]
    end
    object qry1NUM_PROTOCOLO: TStringField
      FieldName = 'NUM_PROTOCOLO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object qry1NUM_LIVRO: TStringField
      FieldName = 'NUM_LIVRO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object qry1DATA_PROTOCOL: TDateField
      FieldName = 'DATA_PROTOCOL'
      ProviderFlags = [pfInUpdate]
    end
    object qry1DATA_DESPACHO: TDateField
      FieldName = 'DATA_DESPACHO'
      ProviderFlags = [pfInUpdate]
    end
    object qry1SITUACAO: TStringField
      FieldName = 'SITUACAO'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object qry1SERVID_RESPONSAV: TStringField
      FieldName = 'SERVID_RESPONSAV'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object qry1OBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      ProviderFlags = [pfInUpdate]
      Size = 240
    end
    object qry1DESCR_SERVICO: TStringField
      FieldName = 'DESCR_SERVICO'
      ProviderFlags = []
      Size = 40
    end
    object qry1NOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      ProviderFlags = []
      Size = 60
    end
    object qry1ENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
      ProviderFlags = []
    end
    object qry1ENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      ProviderFlags = []
      Size = 7
    end
    object qry1ENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
      ProviderFlags = []
    end
    object qry1ENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
      ProviderFlags = []
    end
    object qry1ENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      ProviderFlags = []
      Size = 50
    end
    object qry1ENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      ProviderFlags = []
      Size = 40
    end
    object qry1ENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      ProviderFlags = []
      Size = 30
    end
    object qry1CPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      ProviderFlags = []
      Size = 80
    end
  end
  object qryUnidNav: TSQLQuery
    MaxBlobSize = 1
    Params = <>
    SQL.Strings = (
      'SELECT ID FROM REQUERIMENTO')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 176
    Top = 8
    object qryUnidNavID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object provUnidNav: TDataSetProvider
    DataSet = qryUnidNav
    Exported = False
    Options = [poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 197
    Top = 16
  end
  object cdsUnidNav: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'provUnidNav'
    StoreDefs = True
    AfterScroll = cdsUnidNavAfterScroll
    Left = 212
    Top = 24
    object cdsUnidNavID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsUnidNav: TDataSource
    AutoEdit = False
    DataSet = cdsUnidNav
    Left = 224
    Top = 40
  end
  object qryPessoa: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT * FROM PESSOA WHERE ID = :pId')
    Left = 568
    Top = 336
    object qryPessoaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryPessoaTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryPessoaNOME_RAZAO_SOCIAL: TStringField
      FieldName = 'NOME_RAZAO_SOCIAL'
      Required = True
      Size = 60
    end
    object qryPessoaNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 60
    end
    object qryPessoaSEXO: TStringField
      FieldName = 'SEXO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryPessoaDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
    end
    object qryPessoaNATURAL_CIDADE: TStringField
      FieldName = 'NATURAL_CIDADE'
      Size = 40
    end
    object qryPessoaNATURAL_UF: TStringField
      FieldName = 'NATURAL_UF'
      FixedChar = True
      Size = 2
    end
    object qryPessoaRG_NUM: TStringField
      FieldName = 'RG_NUM'
    end
    object qryPessoaRG_ORGAO_EMISSOR: TStringField
      FieldName = 'RG_ORGAO_EMISSOR'
      Size = 11
    end
    object qryPessoaRG_UF: TStringField
      FieldName = 'RG_UF'
      FixedChar = True
      Size = 2
    end
    object qryPessoaRG_DT_EMISSAO: TDateField
      FieldName = 'RG_DT_EMISSAO'
    end
    object qryPessoaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryPessoaID_ESTADO_CIVIL: TIntegerField
      FieldName = 'ID_ESTADO_CIVIL'
    end
    object qryPessoaCONJUGE_NOME: TStringField
      FieldName = 'CONJUGE_NOME'
      Size = 40
    end
    object qryPessoaCONJUGE_CPF: TStringField
      FieldName = 'CONJUGE_CPF'
      Size = 11
    end
    object qryPessoaENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryPessoaENDER_NUM: TIntegerField
      FieldName = 'ENDER_NUM'
    end
    object qryPessoaENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      FixedChar = True
      Size = 1
    end
    object qryPessoaENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object qryPessoaENDER_CIDADE: TStringField
      FieldName = 'ENDER_CIDADE'
      Size = 40
    end
    object qryPessoaENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object qryPessoaENDER_CEP: TStringField
      FieldName = 'ENDER_CEP'
      FixedChar = True
      Size = 8
    end
    object qryPessoaENDER_UF: TStringField
      FieldName = 'ENDER_UF'
      FixedChar = True
      Size = 2
    end
    object qryPessoaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 40
    end
    object qryPessoaE_MAIL: TStringField
      FieldName = 'E_MAIL'
      Size = 60
    end
    object qryPessoaOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object qryPessoaDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object qryPessoaCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object qryPessoaENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object qryPessoaENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object qryPessoaENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
  end
  object qryUnidConsum: TSQLQuery
    MaxBlobSize = 1
    Params = <
      item
        DataType = ftInteger
        Name = 'pId'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from unid_consumidora where id = :pId')
    SQLConnection = dmPrincipal.SConPrincipal
    Left = 272
    Top = 128
    object qryUnidConsumID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qryUnidConsumID_PESSOA: TIntegerField
      FieldName = 'ID_PESSOA'
    end
    object qryUnidConsumTIPO_PESSOA: TStringField
      FieldName = 'TIPO_PESSOA'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qryUnidConsumNUM_LIGACAO: TStringField
      FieldName = 'NUM_LIGACAO'
      FixedChar = True
      Size = 10
    end
    object qryUnidConsumDT_LIGACAO: TDateField
      FieldName = 'DT_LIGACAO'
    end
    object qryUnidConsumSITUACAO: TStringField
      FieldName = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object qryUnidConsumENDER_ID_LOGRAD: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD'
    end
    object qryUnidConsumENDER_NUM: TIntegerField
      FieldName = 'ENDER_NUM'
    end
    object qryUnidConsumENDER_NUM_LETRA: TStringField
      FieldName = 'ENDER_NUM_LETRA'
      FixedChar = True
      Size = 1
    end
    object qryUnidConsumENDER_COMPLEMENTO: TStringField
      FieldName = 'ENDER_COMPLEMENTO'
      Size = 30
    end
    object qryUnidConsumENDER_ID_BAIRRO: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO'
    end
    object qryUnidConsumENDER_ID_DISTRITO: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO'
    end
    object qryUnidConsumENDER_ID_LOGRAD2: TIntegerField
      FieldName = 'ENDER_ID_LOGRAD2'
    end
    object qryUnidConsumENDER_NUM2: TIntegerField
      FieldName = 'ENDER_NUM2'
    end
    object qryUnidConsumENDER_NUM_LETRA2: TStringField
      FieldName = 'ENDER_NUM_LETRA2'
      FixedChar = True
      Size = 1
    end
    object qryUnidConsumENDER_COMPLEMENTO2: TStringField
      FieldName = 'ENDER_COMPLEMENTO2'
      Size = 30
    end
    object qryUnidConsumENDER_ID_BAIRRO2: TIntegerField
      FieldName = 'ENDER_ID_BAIRRO2'
    end
    object qryUnidConsumENDER_ID_DISTRITO2: TIntegerField
      FieldName = 'ENDER_ID_DISTRITO2'
    end
    object qryUnidConsumTIPO_UNID_CONSUM: TStringField
      FieldName = 'TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 1
    end
    object qryUnidConsumFORMA_CALCULO: TStringField
      FieldName = 'FORMA_CALCULO'
      FixedChar = True
      Size = 1
    end
    object qryUnidConsumNUM_HIDROMETRO: TStringField
      FieldName = 'NUM_HIDROMETRO'
      FixedChar = True
      Size = 12
    end
    object qryUnidConsumDT_INSTAL_HIDROM: TDateField
      FieldName = 'DT_INSTAL_HIDROM'
    end
    object qryUnidConsumQTD_TORNEIRA: TIntegerField
      FieldName = 'QTD_TORNEIRA'
      Required = True
    end
    object qryUnidConsumMULTIPLICADOR: TIntegerField
      FieldName = 'MULTIPLICADOR'
      Required = True
    end
    object qryUnidConsumOBSERV_FATURA: TStringField
      FieldName = 'OBSERV_FATURA'
      Size = 40
    end
    object qryUnidConsumOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      BlobType = ftMemo
      Size = 1
    end
    object qryUnidConsumENDER_DESCR_BAIRRO: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO'
      Size = 40
    end
    object qryUnidConsumENDER_DESCR_LOGRADOURO: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO'
      Size = 50
    end
    object qryUnidConsumENDER_DESCR_BAIRRO2: TStringField
      FieldName = 'ENDER_DESCR_BAIRRO2'
      Size = 40
    end
    object qryUnidConsumENDER_DESCR_LOGRADOURO2: TStringField
      FieldName = 'ENDER_DESCR_LOGRADOURO2'
      Size = 50
    end
    object qryUnidConsumNOME_PESSOA: TStringField
      FieldName = 'NOME_PESSOA'
      Size = 60
    end
    object qryUnidConsumCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      FixedChar = True
      Size = 14
    end
    object qryUnidConsumCPF_CNPJ_FTDO: TStringField
      FieldName = 'CPF_CNPJ_FTDO'
      Size = 80
    end
    object qryUnidConsumDESCR_TIPO_PESSOA: TStringField
      FieldName = 'DESCR_TIPO_PESSOA'
      FixedChar = True
      Size = 8
    end
    object qryUnidConsumNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Size = 60
    end
    object qryUnidConsumRG_NUM: TStringField
      FieldName = 'RG_NUM'
    end
    object qryUnidConsumRG_ORGAO_EMISSOR: TStringField
      FieldName = 'RG_ORGAO_EMISSOR'
      Size = 11
    end
    object qryUnidConsumRG_UF: TStringField
      FieldName = 'RG_UF'
      FixedChar = True
      Size = 2
    end
    object qryUnidConsumRG_DT_EMISSAO: TDateField
      FieldName = 'RG_DT_EMISSAO'
    end
    object qryUnidConsumENDER_DESCR_DISTRITO: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO'
      Size = 40
    end
    object qryUnidConsumENDER_DESCR_DISTRITO2: TStringField
      FieldName = 'ENDER_DESCR_DISTRITO2'
      Size = 40
    end
    object qryUnidConsumENDER_DESCR_LOGRAD: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD'
      Size = 50
    end
    object qryUnidConsumENDER_DESCR_LOGRAD2: TStringField
      FieldName = 'ENDER_DESCR_LOGRAD2'
      Size = 50
    end
    object qryUnidConsumDESCR_FORMA_CALCULO: TStringField
      FieldName = 'DESCR_FORMA_CALCULO'
      FixedChar = True
      Size = 10
    end
    object qryUnidConsumDESCR_TIPO_UNID_CONSUM: TStringField
      FieldName = 'DESCR_TIPO_UNID_CONSUM'
      FixedChar = True
      Size = 11
    end
    object qryUnidConsumDESCR_SITUACAO: TStringField
      FieldName = 'DESCR_SITUACAO'
      FixedChar = True
      Size = 18
    end
    object qryUnidConsumENDER_UC_NUM_LETRA: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA'
      Size = 7
    end
    object qryUnidConsumENDER_UC_NUM_LETRA2: TStringField
      FieldName = 'ENDER_UC_NUM_LETRA2'
      Size = 7
    end
    object qryUnidConsumDT_ULT_CORTE: TDateField
      FieldName = 'DT_ULT_CORTE'
    end
    object qryUnidConsumDT_ULT_RELIG: TDateField
      FieldName = 'DT_ULT_RELIG'
    end
  end
end
