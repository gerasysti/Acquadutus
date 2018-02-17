inherited fConfigAtualizacaoDB: TfConfigAtualizacaoDB
  Caption = 'Contador'
  ClientHeight = 289
  ClientWidth = 523
  Position = poDesktopCenter
  ExplicitWidth = 529
  ExplicitHeight = 317
  PixelsPerInch = 96
  TextHeight = 16
  object Bevel1: TBevel [0]
    Left = 0
    Top = 43
    Width = 523
    Height = 246
    Align = alTop
    Shape = bsFrame
    ExplicitTop = 35
    ExplicitWidth = 532
  end
  object iAviso: TImage [1]
    Left = 140
    Top = 137
    Width = 24
    Height = 24
    AutoSize = True
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000018
      000000180806000000E0773DF80000000467414D410000B18F0BFC6105000000
      097048597300000AE900000AE901FD75CED30000002B74455874437265617469
      6F6E2054696D650044692031362044657A20323030332031373A30343A323620
      2B3031303060362DEE0000000774494D4507D30306110F3B11C2DD8100000455
      49444154484BC554DD4F5B7518EE3EB22B13E3851A755EE86E8C9726FE056AF4
      C22566174B9C891F09BB92881961590763A5B60D08C29051980C19665D463618
      04BA095D61C572BA7E40611D543E5ABE0A6D69475B5AFA754A1FDFDF396BBBCD
      65D348E22F79937392739EE7799FE77D7F12C9FF756EDEC43EA331FA915E1FAE
      1F1CDCE074BA0DBF5EBF9E1E1A5A4D0F0C2CF8BBBA1C5C5797BD5EA399FC7078
      58BBEF1FEBACADC5DE95151CB75A79B7D39980DFCF239904B259B17676C4DADE
      065CAE28EEDC7143A331B9B5DAB9A2F3E7EBF73E932810C0EB763BFE70B97864
      32104E0E587C2B9C4402088580CD4DC0E70374BA59B4B70F1A6EDD72BDF65492
      68146F5AAD580C8548DEC3C394F2BCF8326CF1E2B3329D50839C1729222041F0
      7A81D55550A7C0E464186AF50D97566B79E331927BF7B0DF6C86391211C1996A
      D601034FA74582570E5F83E4508B50078FF4D007C0C606B0BE0E2C2F33BB008F
      07181F8FA0AEEE37CE681C29E43236962A62B63C09CE0898157C8A7EA62C8ECA
      CD38A6B4607D2383784CB486812E2D010B0B80D329925EBD6A8142D1FA55BE0B
      83216E4A2649F623EA5907F1381585C9EC8811A0C79F469FC98FC9B91822E47F
      CE9EC545606E0E989901E6E7C5E7B3677F32E609C6C662A4B1604D0E9C72014F
      13547363191F545971A4D68E4FAB27D0CB05B145046B6B057B666781FBF7590E
      62170A853A9127E0B84896F99E2361CA19F8D69648D06FDDC417CD7FE250A915
      074BCCB83C124094A68785CBD433D5CC1ECA12365B56089F08B279029DCE1764
      AA73F39D036704512A1668FB481092631C249F8FA1F9F700C204C2BC67E13EAA
      7E6A0AA03DC2C99372679EA0BF7F45E3F3A5059F1928AB4844AC7098ACA32ED4
      239B90144D41727C0A6A5D08211A4BB7BBE07D4E3D9BAAEBD74D3875AAB2224F
      6036A7DE1B1D5DCFA428891C380366B54524A069EAE0629094BA85EA188D2345
      3EBB1F4E8EC3014C4C88846E378FD3A7156B72B9FAC5C77641A7F3CB4D260F72
      246C4B19014F5914F511B82C00899C6CFA81AA2A806FBAE3F0903D2CD8E9E9C2
      4EA8542D7C43C3858FFFB6CDA4734F5F9FABC96070677321078374E75098DF0D
      F178B52D89B77F4DE2AD8E245EA6E76FB53C96697298E72C58666F53530F64B2
      1F8B9F791F190CBEAFAF5CE182369B47B867C25409AA0C559A6C89D3D510A1E9
      59A5C99926F5CC9ABB77B342B767CED4262B2B2FBCF0DC9B756060EEA59E9EF1
      728D6674A1BB9BCBDEBEED24102F5D030F60B13C805EBF248C2503B75A77E070
      F034FF7E48A595DAE7823FF9416FEFE43B9D9D435FB6B5F55635375F6B3C77AE
      F367A954693399820281D1B82D5C198D8D97515DDD70F85F133CED07A552FDBD
      566B27E5190A3841248B282B2BE7E8DB3DBB42A050D4D730DBE6E77922891078
      65542EAF797757C02F5EFCE58054AA5A625B6C34AED142C9E20A85EA935D0167
      204A6593AAA5A51BADAD3D282E2E9D91C9EADEDF15F04B973A0EA854CDAA8A0A
      E5EC8913E55D2525A5471B1BEBF7EF0AF87F01F90B5D549CD6A8143EB5000000
      0049454E44AE426082}
  end
  object lAviso: TLabel [2]
    Left = 170
    Top = 139
    Width = 12
    Height = 16
    Caption = '...'
  end
  inherited pButtons: TPanel
    Width = 523
    Visible = False
    ExplicitWidth = 523
    inherited bClose: TcxButton
      Left = 473
      ExplicitLeft = 473
    end
  end
  object pbConfigAutoSistema: TcxProgressBar [4]
    Left = 24
    Top = 97
    ParentFont = False
    Properties.BarStyle = cxbsAnimation
    Properties.BeginColor = 54056
    Properties.PeakValue = 60.000000000000000000
    Properties.ShowText = False
    Style.StyleController = cxEditStyleCheckBox
    TabOrder = 1
    Width = 465
  end
  object cxPageControl1: TcxPageControl [5]
    Left = 24
    Top = 49
    Width = 6000
    Height = 232
    ActivePage = cxTabSheet2
    TabOrder = 2
    Visible = False
    ClientRectBottom = 232
    ClientRectRight = 6000
    ClientRectTop = 27
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object cxMemo1: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'UPDATE INSTALACAO SET'
          ' INS_VERSAO_EXECUCAO = '#39'1.0.0.27'#39';')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
      object cxMemo2: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q1 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    RECEITA VARCHAR(250),'
          '    PREVISAO_INICIAL NUMERIC(18,2),'
          '    PREVISAO_ATUALIZADA NUMERIC(18,2),'
          '    REALIZADO NUMERIC(18,2),'
          '    PERCENTUAL NUMERIC(18,2))'
          'AS'
          'BEGIN'
          
            '  RECEITA = '#39'RECEITA DE IMPOSTOS E TRANSFER'#202'NCIAS CONSTITUCIONAI' +
            'S E LEGAIS (I)'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.1.1.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.3._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.1.3.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.1.1.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.3._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.1.3.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '    )'
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39' Impostos'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39
          '    )'
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'   Imposto sobre Propriedade Predial e Territorial ' +
            'Urbana - IPTU'#39';'
          '  SELECT'
          '    SUM(COALESCE(R.REC_VALOR, 0)) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'   Imposto sobre Servi'#231'os de Qualquer Natureza - IS' +
            'S'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'   Imposto sobre Transmiss'#227'o Intervivos de Bens e D' +
            'ireitos sobre Im'#243'veis - ITBI'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'   Imposto sobre a Renda e Proventos de Qualquer Na' +
            'tureza - IRRF'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39' Multas, Juros de Mora e Outros Encargos dos Impost' +
            'os'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.1.1.__.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.9.1.1.__.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39' D'#237'vida Ativa dos Impostos'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.3._.__.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.9.3._.__.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39' Multas, Juros de Mora, Atualiza'#231#227'o Monet'#225'ria e Out' +
            'ros Encargos da D'#237'vida Ativa dos Impostos'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.9.1.3.__.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.9.1.3.__.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39' Receitas de Transfer'#234'ncias Constitucionais e Legai' +
            's'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '    )'
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39'   Da Uni'#227'o'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39
          '    )'
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'     Cota-Parte do Fundo de Participa'#231#227'o dos Munic'#237 +
            'pios - FPM'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '  C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'     Cota-Parte do Imposto sobre Propriedade Territ' +
            'orial Rural - ITR'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'     Transfer'#234'ncia Financeira aos Estados, DF e Mun' +
            'ic'#237'pios - LC 87/96'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.36.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39'   Do Estado'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '    )'
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39'     Cota-Parte do ICMS'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39'     Cota-Parte do IPI-Exporta'#231#227'o'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39'     Cota Parte do IPVA'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'TRANSFER'#202'NCIA DO SISTEMA '#218'NICA DE SA'#218'DE - SUS (II)'#39 +
            ';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39
          '    )'
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39' Da Uni'#227'o para o Munic'#237'pio'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39' Do Estado para o Munic'#237'pio'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39' Demais Munic'#237'pios para o Munic'#237'pio'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39' Outras Receitas do SUS'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          
            '  RECEITA = '#39'RECEITA DE OPERA'#199#213'ES DE CR'#201'DITO VINCULADAS A SA'#218'DE ' +
            '(III)'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.2.1.1.4.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.1.2.3.03.__.__'#39
          '    )'
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.2.1.1.4.02.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.1.2.3.03.__.__'#39
          '    )'
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39'OUTRAS RECEITAS OR'#199'AMENT'#193'RIAS'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  INNER JOIN PLANO_CONTAS PC ON'
          '      PC.CAD_ID_PLACONTA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4._._._._.__.__.__'#39
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.9.1.1.__.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.9.3._.__.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.9.1.3.__.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.1.1.4.02.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.1.2.3.03.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.9._._._.__.__.__'#39')'
          '    )'
          '    AND PC.PLA_BASE_SAUDE = '#39'S'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '  INNER JOIN PLANO_CONTAS PC ON'
          '      PC.CAD_ID_PLACONTA = C.CAD_ID'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4._._._._.__.__.__'#39
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.2.02.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.3.05.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.2.08.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.1.1.2.04.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.9.1.1.__.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.9.3._.__.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.9.1.3.__.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.02.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.01.05.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.36.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.01.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.04.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.01.02.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.1.1.4.02.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.2.1.2.3.03.__.__'#39')'
          '    AND'
          '    (NOT C.CAD_CODIGO LIKE '#39'4.9._._._.__.__.__'#39')'
          '    )'
          '    AND PC.PLA_BASE_SAUDE = '#39'S'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  RECEITA = '#39'(-) DEDU'#199#195'O PARA O FUNDEB'#39';'
          '  SELECT'
          '    COALESCE(SUM(ABS(R.REC_VALOR)), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  INNER JOIN PLANO_CONTAS PC ON'
          '      PC.CAD_ID_PLACONTA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.9._._._.__.__.__'#39
          '  INTO :PREVISAO_INICIAL;'
          '  SELECT COALESCE(SUM(ABS(DAM.DAM_VALOR)), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.9._._._.__.__.__'#39
          '  INTO :REALIZADO;'
          '  IF (PREVISAO_INICIAL >= REALIZADO) THEN'
          '    PREVISAO_ATUALIZADA = PREVISAO_INICIAL;'
          '  ELSE'
          '    PREVISAO_ATUALIZADA = REALIZADO;'
          '  IF (PREVISAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = REALIZADO/PREVISAO_ATUALIZADA*100;'
          ''
          '  PREVISAO_INICIAL = -PREVISAO_INICIAL;'
          '  PREVISAO_ATUALIZADA = -PREVISAO_ATUALIZADA;'
          '  REALIZADO = -REALIZADO;'
          ''
          '  SUSPEND;'
          'END')
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = -3
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'cxTabSheet3'
      ImageIndex = 2
      object cxMemo3: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q2_S1 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    DESPESA VARCHAR(250),'
          '    DOTACAO_INICIAL NUMERIC(18,2),'
          '    DOTACAO_ATUALIZADA NUMERIC(18,2),'
          '    LIQUIDADA NUMERIC(18,2),'
          '    PERCENTUAL NUMERIC(18,2))'
          'AS'
          'BEGIN'
          '  DESPESA = '#39'DESPESAS CORRENTES'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          '    )'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          '    )'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          '    )'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          '    )'
          '  INTO :DOTACAO_ATUALIZADA;'
          ''
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = 'cxTabSheet4'
      ImageIndex = 3
      object cxMemo4: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q2_S2 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    DESPESA VARCHAR(250),'
          '    DOTACAO_INICIAL NUMERIC(18,2),'
          '    DOTACAO_ATUALIZADA NUMERIC(18,2),'
          '    LIQUIDADA NUMERIC(18,2),'
          '    PERCENTUAL NUMERIC(18,2))'
          'AS'
          'BEGIN'
          '  DESPESA = '#39'DESPESAS DE CAPITAL'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '    )'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '    )'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '    )'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '    )'
          '  INTO :DOTACAO_ATUALIZADA;'
          ''
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'cxTabSheet5'
      ImageIndex = 4
      object cxMemo5: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q2 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    DESPESA VARCHAR(250),'
          '    DOTACAO_INICIAL NUMERIC(18,2),'
          '    DOTACAO_ATUALIZADA NUMERIC(18,2),'
          '    LIQUIDADA NUMERIC(18,2),'
          '    PERCENTUAL NUMERIC(18,2))'
          'AS'
          'BEGIN'
          '  SELECT'
          '    DESPESA'
          '    , DOTACAO_INICIAL'
          '    , DOTACAO_ATUALIZADA'
          '    , LIQUIDADA'
          '    , PERCENTUAL'
          '  FROM RREO_ANEXOXVI_Q2_S1(:EXERCICIO, :REFERENCIA)'
          '  INTO'
          '    :DESPESA'
          '    , :DOTACAO_INICIAL'
          '    , :DOTACAO_ATUALIZADA'
          '    , :LIQUIDADA'
          '    , :PERCENTUAL;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Pessoal e Encargos Sociais'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')  '
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.1._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          ''
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Juros e Encargos da D'#237'vida'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.2._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Outras Despesas Correntes'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.3.3._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  SELECT'
          '    DESPESA'
          '    , DOTACAO_INICIAL'
          '    , DOTACAO_ATUALIZADA'
          '    , LIQUIDADA'
          '    , PERCENTUAL'
          '  FROM RREO_ANEXOXVI_Q2_S2(:EXERCICIO, :REFERENCIA)'
          '  INTO'
          '    :DESPESA'
          '    , :DOTACAO_INICIAL'
          '    , :DOTACAO_ATUALIZADA'
          '    , :LIQUIDADA'
          '    , :PERCENTUAL;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Investimentos'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.4._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Invers'#245'es Financeiras'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')  '
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Amortiza'#231#227'o da D'#237'vida'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')  '
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet6: TcxTabSheet
      Caption = 'cxTabSheet6'
      ImageIndex = 5
      object cxMemo6: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q3 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    DESPESA VARCHAR(250),'
          '    DOTACAO_INICIAL NUMERIC(18,2),'
          '    DOTACAO_ATUALIZADA NUMERIC(18,2),'
          '    LIQUIDADA NUMERIC(18,2),'
          '    PERCENTUAL NUMERIC(18,2))'
          'AS'
          'BEGIN'
          '  DESPESA = '#39'DESPESAS COM SA'#218'DE (V) = (IV)'#39';'
          '  SELECT'
          '    DOTACAO_INICIAL'
          '    , DOTACAO_ATUALIZADA'
          '    , LIQUIDADA'
          '    , PERCENTUAL'
          '  FROM RREO_ANEXOXVI_Q2_S1(:EXERCICIO, :REFERENCIA)'
          '  INTO'
          '    :DOTACAO_INICIAL'
          '    , :DOTACAO_ATUALIZADA'
          '    , :LIQUIDADA'
          '    , :PERCENTUAL;'
          '  SELECT'
          '    :DOTACAO_INICIAL+DOTACAO_INICIAL'
          '    , :DOTACAO_ATUALIZADA+DOTACAO_ATUALIZADA'
          '    , :LIQUIDADA+LIQUIDADA'
          '    , :PERCENTUAL+PERCENTUAL'
          '  FROM RREO_ANEXOXVI_Q2_S2(:EXERCICIO, :REFERENCIA)'
          '  INTO'
          '    :DOTACAO_INICIAL'
          '    , :DOTACAO_ATUALIZADA'
          '    , :LIQUIDADA'
          '    , :PERCENTUAL;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39'(-) DESPESAS COM INATIVOS E PENSIONISTAS'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.03.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.07.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.11.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.15.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.18.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.13.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.23.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.24.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.36.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.37.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.12.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.03.01.__'#39
          '    )'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.03.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.07.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.11.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.15.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.18.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.13.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.23.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.24.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.36.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.37.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.12.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.03.01.__'#39
          '    )'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.03.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.07.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.11.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.15.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.18.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.13.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.23.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.24.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.36.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.37.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.12.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.03.01.__'#39
          '    )'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.03.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.07.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.11.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.15.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.08.18.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.04.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.09.05.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.13.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.23.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.24.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.36.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.37.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.02.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.06.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.12.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.03.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.13.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.01.01.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.3.3.2.0.03.01.__'#39
          '    )'
          '  INTO :DOTACAO_ATUALIZADA;'
          ''
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  DOTACAO_INICIAL = -DOTACAO_INICIAL;'
          '  DOTACAO_ATUALIZADA = -DOTACAO_ATUALIZADA;'
          '  LIQUIDADA = -LIQUIDADA;'
          ''
          '  SUSPEND;'
          ''
          
            '  DESPESA = '#39'(-) DESPESAS CUSTEADAS COM OUTROS RECURSOS DESTINAD' +
            'OS A SA'#218'DE'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.1._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '    )'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.1._._.__.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39'    '
          '    )'
          '  INTO :LIQUIDADA;'
          '  IF (DOTACAO_INICIAL >= LIQUIDADA) THEN'
          '    DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          '  ELSE'
          '    DOTACAO_ATUALIZADA = LIQUIDADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  DOTACAO_INICIAL = -DOTACAO_INICIAL;'
          '  DOTACAO_ATUALIZADA = -DOTACAO_ATUALIZADA;'
          '  LIQUIDADA = -LIQUIDADA;'
          ''
          '  SUSPEND;'
          ''
          
            '  DESPESA = '#39' Recursos de Transfer'#234'ncias do Sistema '#218'nico de Sa'#250 +
            'de - SUS'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39
          '    )'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    ('
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.1.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.2.33.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.2.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.1.7.6.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.7.3.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.1.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.2.01.__.__'#39
          '    OR'
          '    C.CAD_CODIGO LIKE '#39'4.2.4.2.3.01.__.__'#39
          '    )'
          '  INTO :LIQUIDADA;'
          '  IF (DOTACAO_INICIAL >= LIQUIDADA) THEN'
          '    DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          '  ELSE'
          '    DOTACAO_ATUALIZADA = LIQUIDADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          '    '
          '  DOTACAO_INICIAL = -DOTACAO_INICIAL;'
          '  DOTACAO_ATUALIZADA = -DOTACAO_ATUALIZADA;'
          '  LIQUIDADA = -LIQUIDADA;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Recursos de Opera'#231#245'es de Cr'#233'dito'#39';'
          '  SELECT'
          '    COALESCE(SUM(R.REC_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN RECEITA R ON'
          '    R.CAD_ID_RECEITA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'4.2.1._._.__.__.__'#39
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          
            '  CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERCIC' +
            'IO)'
          '  AND EXTRACT(MONTH FROM DAM.DAM_DATA) <= :REFERENCIA'
          '  AND'
          '  (NOT REC_ID IS NULL)'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'4.2.1._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  IF (DOTACAO_INICIAL >= LIQUIDADA) THEN'
          '    DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          '  ELSE'
          '    DOTACAO_ATUALIZADA = LIQUIDADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          '    '
          '  DOTACAO_INICIAL = -DOTACAO_INICIAL;'
          '  DOTACAO_ATUALIZADA = -DOTACAO_ATUALIZADA;'
          '  LIQUIDADA = -LIQUIDADA;    '
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Outros Recursos'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN UNIDADE_ORCAMENTARIA UO ON'
          '    UO.CAD_ID_UORC = PA.CAD_ID_UORC'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND UO.CAD_ID_UGEST = (SELECT CAD_ID_UGFMS FROM ORCAMENTO WHER' +
            'E CON_ID =  L.CON_ID)'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.5._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          '    '
          '  DOTACAO_INICIAL = -DOTACAO_INICIAL;'
          '  DOTACAO_ATUALIZADA = -DOTACAO_ATUALIZADA;'
          '  LIQUIDADA = -LIQUIDADA;    '
          ''
          '  SUSPEND;'
          ''
          
            '  DESPESA = '#39'(-) RESTOS A PAGAR INSCRITOS NO EXERC'#205'CIO SEM DISPO' +
            'NIBILIDADE FINANCEIRAS DE RECURSOS PR'#211'PRIOS VINCULADOS'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  AND'
          '    C.CAD_CODIGO LIKE '#39'3.4.6._._.__.__.__'#39
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          '    '
          '  DOTACAO_INICIAL = -DOTACAO_INICIAL;'
          '  DOTACAO_ATUALIZADA = -DOTACAO_ATUALIZADA;'
          '  LIQUIDADA = -LIQUIDADA;    '
          ''
          '  SUSPEND;'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet7: TcxTabSheet
      Caption = 'cxTabSheet7'
      ImageIndex = 6
      object cxMemo7: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'ALTER TABLE RESTO_PAGAR ADD CAD_ID_FUNCAO  DMA_ID')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet8: TcxTabSheet
      Caption = 'cxTabSheet8'
      ImageIndex = 7
      object cxMemo8: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'ALTER TABLE RESTO_PAGAR ADD CAD_ID_SUBFUNCAO  DMA_ID')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet9: TcxTabSheet
      Caption = 'cxTabSheet9'
      ImageIndex = 8
      object cxMemo9: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q4 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    DESPESA VARCHAR(250),'
          '    INSCRITO NUMERIC(18,2),'
          '    CANCELADO NUMERIC(18,2))'
          'AS'
          'BEGIN'
          
            '  DESPESA = '#39' RESTOS A PAGAR DE DESPESAS PR'#211'PRIAS COM A'#199#213'ES E SE' +
            'RVI'#199'OS P'#218'BLICOS DE SA'#218'DE (VII)'#39';'
          ''
          '  SELECT'
          '    COALESCE(SUM(RP.RPA_VALOR), 0) FROM RESTO_PAGAR RP'
          
            '  WHERE RP.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO =' +
            ' :EXERCICIO)'
          
            '  AND RP.CAD_ID_FUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE TCA_' +
            'ID = 15 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'10'#39')'
          '  INTO :INSCRITO;'
          '  '
          '  CANCELADO = 0;'
          ''
          '  SUSPEND;'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet10: TcxTabSheet
      Caption = 'cxTabSheet10'
      ImageIndex = 9
      object cxMemo10: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q5 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    DESPESA VARCHAR(250),'
          '    DOTACAO_INICIAL NUMERIC(18,2),'
          '    DOTACAO_ATUALIZADA NUMERIC(18,2),'
          '    LIQUIDADA NUMERIC(18,2),'
          '    PERCENTUAL NUMERIC(18,2))'
          'AS'
          'BEGIN'
          '  DESPESA = '#39' Aten'#231#227'o B'#225'sica'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'301'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'301'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'301'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'301'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          ''
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Assist'#234'ncia Hospitalar e Ambulatorial'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'302'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'302'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'302'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'302'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Suporte Profil'#225'tico e Terap'#234'utico'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'303'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'303'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'303'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'303'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Vigil'#226'ncia Sanit'#225'ria'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'304'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'304'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'304'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'304'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Vigil'#226'ncia Epidemiol'#243'gica'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'305'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'305'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'305'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'305'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          ''
          '  DESPESA = '#39' Alimenta'#231#227'o e Nutri'#231#227'o'#39';'
          '  SELECT'
          '    COALESCE(SUM(DE.DEL_VALOR), 0) FROM CADASTRO C'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.CAD_ID_ELEMENTO = C.CAD_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  WHERE C.CAD_ANO = :EXERCICIO'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'306'#39')'
          '  INTO :DOTACAO_INICIAL;'
          '  SELECT COALESCE(SUM(L.LIQ_VALOR), 0) FROM LIQUIDACAO L'
          '  INNER JOIN EMPENHO E ON'
          '    E.EMP_ID = L.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = E.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '    WHERE'
          
            '  L.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'306'#39')'
          '  AND EXTRACT(MONTH FROM L.LIQ_DATA) <= :REFERENCIA'
          '  INTO :LIQUIDADA;'
          '  DOTACAO_ATUALIZADA = DOTACAO_INICIAL;'
          
            '  SELECT :DOTACAO_ATUALIZADA+COALESCE(SUM(S.SUP_VALOR), 0) FROM ' +
            'SUPLEMENTACAO S'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = S.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'306'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          
            '  SELECT :DOTACAO_ATUALIZADA-COALESCE(SUM(A.ANU_VALOR), 0) FROM ' +
            'ANULACAO A'
          '  INNER JOIN SUPLEMENTACAO S ON'
          '    S.SUP_ID = A.SUP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DF ON'
          '    DF.DFO_ID = A.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DE ON'
          '    DE.DEL_ID = DF.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DE.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PA ON'
          '    PA.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN CADASTRO C ON'
          '    C.CAD_ID = DE.CAD_ID_ELEMENTO'
          '  INNER JOIN DECRETO D ON'
          '    D.CAD_ID_DECRETO = S.CAD_ID_DECRETO'
          '    WHERE'
          
            '  S.CON_ID = (SELECT CON_ID FROM CONJUNTO WHERE CON_ANO = :EXERC' +
            'ICIO)'
          
            '  AND PA.CAD_ID_SUBFUNCAO = (SELECT CAD_ID FROM CADASTRO WHERE T' +
            'CA_ID = 16 AND CAD_ANO = :EXERCICIO AND CAD_CODIGO = '#39'306'#39')'
          '  AND EXTRACT(MONTH FROM D.DEC_DATA_VIGENCIA) <= :REFERENCIA'
          '  INTO :DOTACAO_ATUALIZADA;'
          '  IF (DOTACAO_ATUALIZADA = 0) THEN'
          '    PERCENTUAL = 0;'
          '  ELSE'
          '    PERCENTUAL = LIQUIDADA/DOTACAO_ATUALIZADA*100;'
          ''
          '  SUSPEND;'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet11: TcxTabSheet
      Caption = 'cxTabSheet11'
      ImageIndex = 10
      object cxMemo11: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RREO_ANEXOXVI_Q6 ('
          '    EXERCICIO VARCHAR(4),'
          '    REFERENCIA INTEGER)'
          'RETURNS ('
          '    PERCENTUAL NUMERIC(18,2))'
          'AS'
          'begin'
          '  SELECT'
          '    COALESCE(SUM(LIQUIDADA), 0)'
          '  FROM RREO_ANEXOXVI_Q3(:EXERCICIO, :REFERENCIA)'
          '  WHERE DESPESA IN'
          '    ('#39'DESPESAS COM SA'#218'DE (V) = (IV)'#39','
          '    '#39'(-) DESPESAS COM INATIVOS E PENSIONISTAS'#39','
          
            '    '#39'(-) DESPESAS CUSTEADAS COM OUTROS RECURSOS DESTINADOS A SA'#218 +
            'DE'#39','
          
            '    '#39'(-) RESTOS A PAGAR INSCRITOS NO EXERC'#205'CIO SEM DISPONIBILIDA' +
            'DE FINANCEIRAS DE RECURSOS PR'#211'PRIOS VINCULADOS'#39')'
          '  INTO'
          '    :PERCENTUAL;'
          ''
          '  SELECT'
          '    :PERCENTUAL - COALESCE(SUM(CANCELADO), 0)'
          '  FROM RREO_ANEXOXVI_Q4(:EXERCICIO, :REFERENCIA)'
          '  INTO'
          '    :PERCENTUAL;'
          ''
          '  SELECT'
          '    CASE'
          '      WHEN COALESCE(SUM(REALIZADO), 0) = 0 THEN 0'
          '      ELSE'
          '      :PERCENTUAL/COALESCE(SUM(REALIZADO), 0)'
          '    END*100'
          '  FROM RREO_ANEXOXVI_Q1(:EXERCICIO, :REFERENCIA)'
          
            '  WHERE RECEITA = '#39'RECEITA DE IMPOSTOS E TRANSFER'#202'NCIAS CONSTITU' +
            'CIONAIS E LEGAIS (I)'#39
          '  INTO'
          '    :PERCENTUAL;'
          ''
          '  suspend;'
          'end')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet12: TcxTabSheet
      Caption = 'cxTabSheet12'
      ImageIndex = 11
      object cxMemo12: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'ALTER PROCEDURE EXTRATO_CREDOR2(EXERCICIO CHAR(4),'
          'CREDOR INTEGER,'
          'DATAINICIO DATE,'
          'DATAFIM DATE,'
          'UG INTEGER)'
          ' RETURNS(DESCRICAO_UG VARCHAR(250),'
          'DATA DATE,'
          'TIPO VARCHAR(40),'
          'NUMERO CHAR(16),'
          'FICHA INTEGER,'
          'VALOR_EMPENHADO NUMERIC(18,2),'
          'VALOR_LIQUIDADO NUMERIC(18,2),'
          'VALOR_PAGO NUMERIC(18,2),'
          'PROCESSADO NUMERIC(18,2),'
          'NAOPROCESSADO NUMERIC(18,2),'
          'NOME_CREDOR VARCHAR(250))'
          ' AS'
          'DECLARE VARIABLE UG2 INTEGER;'
          'begin'
          '  SELECT CAD_DESCRICAO FROM CADASTRO'
          '  WHERE CAD_ID = :CREDOR INTO :NOME_CREDOR;'
          ''
          '  FOR'
          '    SELECT CAD_ID, CAD_DESCRICAO FROM CADASTRO WHERE'
          '      TCA_ID = 3 AND CAD_ANO = :EXERCICIO'
          '      AND (:UG = 0  or CAD_ID = :UG)'
          '    INTO :UG2, :DESCRICAO_UG'
          '  DO'
          '  BEGIN'
          '    TIPO = '#39'SALDO ANTERIOR'#39';'
          ''
          '    SELECT COALESCE(SUM(EMP.EMP_VALOR), 0) FROM'
          '      EMPENHO EMP'
          '      INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '        DFO.DFO_ID = EMP.DFO_ID'
          '      INNER JOIN DESPESA_ELEMENTO DEL ON'
          '        DEL.DEL_ID = DFO.DEL_ID'
          '      INNER JOIN DESPESA DES ON'
          '        DES.DES_ID = DEL.DES_ID'
          '      INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '        PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '      INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '        UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '      WHERE'
          '      EMP.CAD_ID_PESSOA = :CREDOR AND UOR.CAD_ID_UGEST = :UG2'
          '      AND EMP.EMP_DATA < :DATAINICIO'
          '    INTO :NAOPROCESSADO;'
          '    '
          '    SELECT COALESCE(:NAOPROCESSADO, 0) - SUM(LIQ.LIQ_VALOR) FROM'
          '      LIQUIDACAO LIQ'
          '      INNER JOIN EMPENHO EMP ON'
          '        EMP.EMP_ID = LIQ.EMP_ID'
          '      INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '        DFO.DFO_ID = EMP.DFO_ID'
          '      INNER JOIN DESPESA_ELEMENTO DEL ON'
          '        DEL.DEL_ID = DFO.DEL_ID'
          '      INNER JOIN DESPESA DES ON'
          '        DES.DES_ID = DEL.DES_ID'
          '      INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '        PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '      INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '        UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          
            '    WHERE EMP.CAD_ID_PESSOA = :CREDOR AND UOR.CAD_ID_UGEST = :UG' +
            '2'
          '      AND LIQ.LIQ_DATA < :DATAINICIO'
          '    INTO :NAOPROCESSADO;'
          '  '
          '  '
          '    SELECT COALESCE(SUM(RPA_VALOR), 0) FROM'
          '      RESTO_PAGAR WHERE'
          '      CAD_ID_PESSOA = :CREDOR AND CAD_ID_UGEST = :UG2 AND'
          '      RPA_DATA < :DATAINICIO'
          '    INTO :PROCESSADO;'
          '    '
          '    SELECT COALESCE(:PROCESSADO, 0) + SUM(LIQ.LIQ_VALOR) FROM'
          '      LIQUIDACAO LIQ'
          '      INNER JOIN EMPENHO EMP ON'
          '        EMP.EMP_ID = LIQ.EMP_ID'
          '      INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '        DFO.DFO_ID = EMP.DFO_ID'
          '      INNER JOIN DESPESA_ELEMENTO DEL ON'
          '        DEL.DEL_ID = DFO.DEL_ID'
          '      INNER JOIN DESPESA DES ON'
          '        DES.DES_ID = DEL.DES_ID'
          '      INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '        PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '      INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '        UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          
            '    WHERE EMP.CAD_ID_PESSOA = :CREDOR AND UOR.CAD_ID_UGEST = :UG' +
            '2'
          '      AND LIQ.LIQ_DATA < :DATAINICIO'
          '    INTO :PROCESSADO;'
          '    '
          '    '
          '    NAOPROCESSADO = COALESCE(NAOPROCESSADO, 0);'
          '    PROCESSADO = COALESCE(PROCESSADO, 0);'
          '  '
          '    SUSPEND;'
          '  '
          '    FOR'
          '      SELECT '
          
            '        DATA, TIPO, FICHA, NUMERO, VALOR_EMPENHADO, VALOR_LIQUID' +
            'ADO, '
          'VALOR_PAGO, DESCRICAO_UG'
          '      FROM EXTRATO_CREDOR(:UG2, :CREDOR, :DATAINICIO, :DATAFIM)'
          '      ORDER BY DESCRICAO_UG, DATA, TIPO'
          '      INTO :DATA, :TIPO, :FICHA, :NUMERO, :VALOR_EMPENHADO, '
          ':VALOR_LIQUIDADO, :VALOR_PAGO, :DESCRICAO_UG'
          '    DO'
          '    BEGIN'
          '        NAOPROCESSADO = COALESCE(NAOPROCESSADO, 0) + COALESCE'
          '(:VALOR_EMPENHADO, 0);'
          '        NAOPROCESSADO = COALESCE(NAOPROCESSADO, 0) - COALESCE'
          '(:VALOR_LIQUIDADO, 0);'
          ''
          '        PROCESSADO = COALESCE(PROCESSADO, 0) + COALESCE'
          '(:VALOR_LIQUIDADO, 0);'
          '        PROCESSADO = COALESCE(PROCESSADO, 0) - COALESCE'
          '(:VALOR_PAGO, 0);'
          '  '
          '      SUSPEND;'
          '    END'
          '  END'
          'end')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet13: TcxTabSheet
      Caption = 'cxTabSheet13'
      ImageIndex = 12
      object cxMemo13: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE BALANCO_GERAL_R1(CONID INTEGER,'
          'MESREFERENCIA INTEGER)'
          ' RETURNS(ID_RECEITA INTEGER,'
          'CODIGO_RECEITA VARCHAR(50),'
          'DESCRICAO_RECEITA VARCHAR(500),'
          'PREVISTA NUMERIC(18,2),'
          'REALIZADA NUMERIC(18,2),'
          'PARA_MAIS NUMERIC(18,2),'
          'PARA_MENOS NUMERIC(18,2),'
          'TAG INTEGER)'
          ' AS'
          'DECLARE VARIABLE NOVOCODIGO VARCHAR(50);'
          'DECLARE VARIABLE ANO CHAR(4);'
          'DECLARE VARIABLE DATA DATE;'
          'BEGIN'
          '  SELECT CON_ANO FROM CONJUNTO WHERE CON_ID = :CONID INTO :ANO;'
          ''
          '  MESREFERENCIA = MESREFERENCIA+1;'
          '  if (MESREFERENCIA = 13) then'
          '    DATA = CAST('#39'12/31/'#39'||ANO AS DATE);'
          '  ELSE'
          
            '    DATA = CAST(CAST(MESREFERENCIA AS VARCHAR(1))||'#39'/01/'#39'||ANO A' +
            'S '
          'DATE) - 1;'
          ''
          '  FOR'
          '  SELECT C.CAD_ID, C.CAD_CODIGO, C.CAD_DESCRICAO FROM CADASTRO C'
          '    LEFT JOIN RECEITA R ON'
          '      R.CAD_ID_RECEITA = C.CAD_ID'
          '    LEFT JOIN PLANO_CONTAS PC ON'
          '      PC.CAD_ID_PLACONTA = C.CAD_ID'
          '  WHERE C.CAD_ANO = :ANO AND LEFT(C.CAD_CODIGO, 1) = '#39'4'#39' AND'
          
            '    C.CAD_CODIGO <> '#39'4.0.0.0.0.00.00.00'#39' AND PC.PLA_COMORCAMENTO' +
            ' = '
          #39'S'#39' '
          'ORDER BY C.CAD_CODIGO'
          '  INTO :ID_RECEITA, :CODIGO_RECEITA, :DESCRICAO_RECEITA'
          '  DO'
          '  BEGIN'
          '    SELECT COUNT(REC_ID) FROM RECEITA WHERE'
          '      CAD_ID_RECEITA = :ID_RECEITA INTO :TAG;'
          ''
          '    SELECT NOVOCODIGO FROM FORMATA_CODIGO(:CODIGO_RECEITA)  '
          '      INTO :NOVOCODIGO;'
          ''
          '      SELECT COALESCE(SUM(R.REC_VALOR), 0) FROM RECEITA R'
          '        INNER JOIN CADASTRO C ON'
          '          C.CAD_ID = R.CAD_ID_RECEITA'
          '      WHERE R.CON_ID = :CONID'
          '        AND C.CAD_CODIGO LIKE :NOVOCODIGO'
          '      INTO :PREVISTA;'
          ''
          '      SELECT COALESCE(SUM(D.DAM_VALOR), 0) FROM DAM D'
          '        INNER JOIN CADASTRO C ON'
          '          C.CAD_ID = D.CAD_ID_RECEITA'
          '      WHERE D.CON_ID = :CONID AND D.DAM_DATA <= :DATA'
          '        AND C.CAD_CODIGO LIKE :NOVOCODIGO'
          '      INTO :REALIZADA;'
          ''
          '    if (right(CODIGO_RECEITA, 14) = '#39'0.0.0.00.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'  '#39'||DESCRICAO_RECEITA;'
          '    else'
          '    if (right(CODIGO_RECEITA, 12) = '#39'0.0.00.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'    '#39'||DESCRICAO_RECEITA;'
          '    else'
          '    if (right(CODIGO_RECEITA, 10) = '#39'0.00.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'       '#39'||DESCRICAO_RECEITA;'
          '    else'
          '    if (right(CODIGO_RECEITA, 8) = '#39'00.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'          '#39'||DESCRICAO_RECEITA;'
          '    else'
          '    if (right(CODIGO_RECEITA, 5) = '#39'00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'            '#39'||DESCRICAO_RECEITA;'
          '    else'
          '    if (right(CODIGO_RECEITA, 2) = '#39'00'#39') then'
          '      DESCRICAO_RECEITA = '#39'              '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '      DESCRICAO_RECEITA = '#39'                '#39'||DESCRICAO_RECEITA;'
          ''
          '    PARA_MAIS = 0;'
          '    PARA_MENOS = 0;'
          ''
          '    if (REALIZADA > PREVISTA) then'
          '      PARA_MAIS = REALIZADA - PREVISTA;'
          '    ELSE'
          '    if (REALIZADA < PREVISTA) then'
          '      PARA_MENOS = -REALIZADA+PREVISTA;'
          ''
          '    SUSPEND;'
          '  END'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet14: TcxTabSheet
      Caption = 'cxTabSheet14'
      ImageIndex = 13
      object cxMemo14: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RGF_DESPESA_PESSOAL(CONID INTEGER,'
          'CADANO CHAR(4),'
          'MESINICIO INTEGER,'
          'MESFIM INTEGER)'
          ' RETURNS(DESCRICAO_DESPESA VARCHAR(250),'
          'LIQUIDADA_ATE_QUADRIMESTRE NUMERIC(18,2),'
          'RESTO_PAGAR NUMERIC(18,2),'
          'RCL NUMERIC(18,2),'
          'PERC_LIMITE_MAXIMO NUMERIC(18,2),'
          'PERC_LIMITE_PRUDENCIAL NUMERIC(18,2),'
          'VALOR_MAXIMO NUMERIC(18,2),'
          'VALOR_PRUDENCIAL NUMERIC(18,2))'
          ' AS'
          'BEGIN'
          '  SELECT'
          '  SUM(total)'
          '  FROM BO_RCL(:CADANO, :MESFIM)'
          '  INTO :RCL;'
          ''
          '  SELECT ORC_PERC_LIMITE_MAXIMO_DP FROM ORCAMENTO'
          '  WHERE CON_ID = :CONID'
          '  INTO :PERC_LIMITE_MAXIMO;'
          '  PERC_LIMITE_PRUDENCIAL = 0.95 * PERC_LIMITE_MAXIMO;'
          ''
          '  VALOR_MAXIMO = RCL * PERC_LIMITE_MAXIMO/100;'
          '  VALOR_PRUDENCIAL = RCL * PERC_LIMITE_PRUDENCIAL/100;'
          ''
          ''
          '  DESCRICAO_DESPESA = '#39'DESPESA BRUTA COM PESSOA (I)'#39';'
          '  LIQUIDADA_ATE_QUADRIMESTRE = NULL;'
          '  RESTO_PAGAR = NULL;'
          ''
          '  SUSPEND;'
          '/********************************************************'
          '********/'
          ''
          '  DESCRICAO_DESPESA = '#39'  Pessoal Ativo'#39';'
          ''
          '  SELECT'
          '   SUM(LIQ_VALOR)'
          '  FROM LIQUIDACAO LIQ'
          '  INNER JOIN EMPENHO EMP ON'
          '    EMP.EMP_ID = LIQ.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '    DFO.DFO_ID = EMP.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DEL ON'
          '    DEL.DEL_ID = DFO.DEL_ID'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '  WHERE DEL.CAD_ID_ELEMENTO IN'
          '  ('
          '    SELECT'
          '    CAD_ID'
          '    FROM'
          '    CADASTRO WHERE'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 11 FOR 2) IN ('#39'04'#39', '#39'07'#39', '#39'1' +
            '1'#39', '#39'12'#39', '
          #39'13'#39', '#39'16'#39', '#39'17'#39', '#39'67'#39', '#39'91'#39', '#39'92'#39', '#39'94'#39', '#39'95'#39', '#39'96'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.08.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'01'#39', '#39'05'#39', '#39'0' +
            '9'#39', '#39'99'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.09.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'01'#39', '#39'02'#39', '#39'9' +
            '9'#39')'
          '    )'
          '  )'
          '  AND LIQ.CON_ID = :CONID'
          '  AND EXTRACT(MONTH FROM LIQ.LIQ_DATA) < :MESFIM'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT'
          '    COALESCE(:LIQUIDADA_ATE_QUADRIMESTRE, 0) +'
          '    CASE'
          '      WHEN (12 - :MESFIM) = 8 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JUNHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_MAIO, 0))'
          '      WHEN (12 - :MESFIM) = 6 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0))'
          '      WHEN (12 - :MESFIM) = 4 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0))'
          '    END'
          '  FROM'
          '    DL_EXERCICIO_ANTERIOR DL'
          '  WHERE DL.CAD_ID_DESPESA IN'
          '  ('
          '    SELECT'
          '    CAD_ID'
          '    FROM'
          '    CADASTRO WHERE'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 11 FOR 2) IN ('#39'04'#39', '#39'07'#39', '#39'1' +
            '1'#39', '#39'12'#39', '
          #39'13'#39', '#39'16'#39', '#39'17'#39', '#39'67'#39', '#39'91'#39', '#39'92'#39', '#39'94'#39', '#39'95'#39', '#39'96'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.08.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'01'#39', '#39'05'#39', '#39'0' +
            '9'#39', '#39'99'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.09.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'01'#39', '#39'02'#39', '#39'9' +
            '9'#39')'
          '    )'
          '  )'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          ''
          '  SELECT SUM(RPA_VALOR) FROM RESTO_PAGAR RPA'
          '    WHERE CAD_ID_ELEMENTO IN'
          '  ('
          '    SELECT'
          '    CAD_ID'
          '    FROM'
          '    CADASTRO WHERE'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 11 FOR 2) IN ('#39'04'#39', '#39'07'#39', '#39'1' +
            '1'#39', '#39'12'#39', '
          #39'13'#39', '#39'16'#39', '#39'17'#39', '#39'67'#39', '#39'91'#39', '#39'92'#39', '#39'94'#39', '#39'95'#39', '#39'96'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.08.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'01'#39', '#39'05'#39', '#39'0' +
            '9'#39', '#39'99'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.09.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'01'#39', '#39'02'#39', '#39'9' +
            '9'#39')'
          '    )'
          '  )'
          '    AND RPA.RPA_PROCESSADO = '#39'N'#39
          '  INTO :RESTO_PAGAR;'
          ''
          '  SUSPEND;'
          '/********************************************************'
          '********/'
          ''
          '  DESCRICAO_DESPESA = '#39'  Pessoal Inativo e Pensionista'#39';'
          ''
          '  SELECT'
          '   SUM(LIQ_VALOR)'
          '  FROM LIQUIDACAO LIQ'
          '  INNER JOIN EMPENHO EMP ON'
          '    EMP.EMP_ID = LIQ.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '    DFO.DFO_ID = EMP.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DEL ON'
          '    DEL.DEL_ID = DFO.DEL_ID'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '  WHERE DEL.CAD_ID_ELEMENTO IN'
          '  ('
          '    SELECT'
          '    CAD_ID'
          '    FROM'
          '    CADASTRO WHERE'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39')'
          '      AND SUBSTRING(CAD_CODIGO FROM 11 FOR 2) IN ('#39'01'#39', '#39'03'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.08.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'03'#39', '#39'07'#39', '#39'1' +
            '1'#39', '#39'13'#39', '
          #39'15'#39', '#39'18'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.09.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'03'#39', '#39'04'#39', '#39'0' +
            '5'#39')'
          '    )'
          '  )'
          '  AND LIQ.CON_ID = :CONID'
          '  AND EXTRACT(MONTH FROM LIQ.LIQ_DATA) < :MESFIM'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT'
          '    COALESCE(:LIQUIDADA_ATE_QUADRIMESTRE, 0) +'
          '    CASE'
          '      WHEN (12 - :MESFIM) = 8 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JUNHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_MAIO, 0))'
          '      WHEN (12 - :MESFIM) = 6 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0))'
          '      WHEN (12 - :MESFIM) = 4 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0))'
          '    END'
          '  FROM'
          '    DL_EXERCICIO_ANTERIOR DL'
          '  WHERE DL.CAD_ID_DESPESA IN'
          '  ('
          '    SELECT'
          '    CAD_ID'
          '    FROM'
          '    CADASTRO WHERE'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39')'
          '      AND SUBSTRING(CAD_CODIGO FROM 11 FOR 2) IN ('#39'01'#39', '#39'03'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.08.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'03'#39', '#39'07'#39', '#39'1' +
            '1'#39', '#39'13'#39', '
          #39'15'#39', '#39'18'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.09.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'03'#39', '#39'04'#39', '#39'0' +
            '5'#39')'
          '    )'
          '  )'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT SUM(RPA_VALOR) FROM RESTO_PAGAR RPA'
          '    WHERE CAD_ID_ELEMENTO IN'
          '  ('
          '    SELECT'
          '    CAD_ID'
          '    FROM'
          '    CADASTRO WHERE'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39')'
          '      AND SUBSTRING(CAD_CODIGO FROM 11 FOR 2) IN ('#39'01'#39', '#39'03'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.08.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'03'#39', '#39'07'#39', '#39'1' +
            '1'#39', '#39'13'#39', '
          #39'15'#39', '#39'18'#39')'
          '    ) OR'
          '    ('
          '      (CAD_CODIGO LIKE '#39'3.3.1.9.0.09.__.__'#39')'
          
            '      AND SUBSTRING(CAD_CODIGO FROM 13 FOR 2) IN ('#39'03'#39', '#39'04'#39', '#39'0' +
            '5'#39')'
          '    )'
          '  )'
          '    AND RPA.RPA_PROCESSADO = '#39'N'#39
          '  INTO :RESTO_PAGAR;'
          ''
          '  SUSPEND;'
          '/********************************************************'
          '********/'
          ''
          
            '  DESCRICAO_DESPESA = '#39'  Outras Despesas de Pessoal decorrentes ' +
            'de '
          'Contratos de Terceiriza'#231#227'o ('#167' 1'#186' do art. 18 da LRF)'#39';'
          ''
          '  SELECT'
          '   SUM(LIQ_VALOR)'
          '  FROM LIQUIDACAO LIQ'
          '  INNER JOIN EMPENHO EMP ON'
          '    EMP.EMP_ID = LIQ.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '    DFO.DFO_ID = EMP.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DEL ON'
          '    DEL.DEL_ID = DFO.DEL_ID'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.34.__.__'#39
          '  AND LIQ.CON_ID = :CONID'
          '  AND EXTRACT(MONTH FROM LIQ.LIQ_DATA) < :MESFIM'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT'
          '    COALESCE(:LIQUIDADA_ATE_QUADRIMESTRE, 0) +'
          '    CASE'
          '      WHEN (12 - :MESFIM) = 8 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JUNHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_MAIO, 0))'
          '      WHEN (12 - :MESFIM) = 6 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0))'
          '      WHEN (12 - :MESFIM) = 4 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0))'
          '    END'
          '  FROM'
          '    DL_EXERCICIO_ANTERIOR DL'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DL.CAD_ID_DESPESA'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.34.__.__'#39
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT SUM(RPA.RPA_VALOR) FROM RESTO_PAGAR RPA'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = RPA.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.34.__.__'#39
          '    AND RPA.RPA_PROCESSADO = '#39'N'#39
          '  INTO :RESTO_PAGAR;'
          ''
          '  SUSPEND;'
          ''
          '/********************************************************'
          '********/'
          ''
          
            '  DESCRICAO_DESPESA = '#39'DESPESA N'#195'O COMPUTADAS ('#167' 1'#186' do art. 19 d' +
            'a '
          'LRF) (II)'#39';'
          '  LIQUIDADA_ATE_QUADRIMESTRE = NULL;'
          '  RESTO_PAGAR = NULL;'
          '  SUSPEND;'
          '/********************************************************'
          '********/'
          ''
          
            '  DESCRICAO_DESPESA = '#39'  Indeniza'#231#245'es por Demiss'#227'o e Incentivos ' +
            #224' '
          'Demiss'#227'o Volunt'#225'ria'#39';'
          ''
          '  SELECT'
          '   SUM(LIQ_VALOR)'
          '  FROM LIQUIDACAO LIQ'
          '  INNER JOIN EMPENHO EMP ON'
          '    EMP.EMP_ID = LIQ.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '    DFO.DFO_ID = EMP.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DEL ON'
          '    DEL.DEL_ID = DFO.DEL_ID'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.__.__'#39
          '  AND LIQ.CON_ID = :CONID'
          '  AND EXTRACT(MONTH FROM LIQ.LIQ_DATA) < :MESFIM'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT'
          '    COALESCE(:LIQUIDADA_ATE_QUADRIMESTRE, 0) +'
          '    CASE'
          '      WHEN (12 - :MESFIM) = 8 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JUNHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_MAIO, 0))'
          '      WHEN (12 - :MESFIM) = 6 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0))'
          '      WHEN (12 - :MESFIM) = 4 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0))'
          '    END'
          '  FROM'
          '    DL_EXERCICIO_ANTERIOR DL'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DL.CAD_ID_DESPESA'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.__.__'#39
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT SUM(RPA.RPA_VALOR) FROM RESTO_PAGAR RPA'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = RPA.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.94.__.__'#39
          '    AND RPA.RPA_PROCESSADO = '#39'N'#39
          '  INTO :RESTO_PAGAR;'
          ''
          '  LIQUIDADA_ATE_QUADRIMESTRE = -LIQUIDADA_ATE_QUADRIMESTRE;'
          '  RESTO_PAGAR = -RESTO_PAGAR;'
          ''
          '  SUSPEND;'
          ''
          '/********************************************************'
          '********/'
          ''
          '  DESCRICAO_DESPESA = '#39'  Decorrentes de Decis'#227'o Judicial'#39';'
          ''
          '  SELECT'
          '   SUM(LIQ_VALOR)'
          '  FROM LIQUIDACAO LIQ'
          '  INNER JOIN EMPENHO EMP ON'
          '    EMP.EMP_ID = LIQ.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '    DFO.DFO_ID = EMP.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DEL ON'
          '    DEL.DEL_ID = DFO.DEL_ID'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.__.__'#39
          '  AND LIQ.CON_ID = :CONID'
          '  AND EXTRACT(MONTH FROM LIQ.LIQ_DATA) < :MESFIM'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT'
          '    COALESCE(:LIQUIDADA_ATE_QUADRIMESTRE, 0) +'
          '    CASE'
          '      WHEN (12 - :MESFIM) = 8 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JUNHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_MAIO, 0))'
          '      WHEN (12 - :MESFIM) = 6 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0))'
          '      WHEN (12 - :MESFIM) = 4 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0))'
          '    END'
          '  FROM'
          '    DL_EXERCICIO_ANTERIOR DL'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DL.CAD_ID_DESPESA'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.__.__'#39
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT SUM(RPA.RPA_VALOR) FROM RESTO_PAGAR RPA'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = RPA.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.91.__.__'#39
          '    AND RPA.RPA_PROCESSADO = '#39'N'#39
          '  INTO :RESTO_PAGAR;'
          ''
          '  LIQUIDADA_ATE_QUADRIMESTRE = -LIQUIDADA_ATE_QUADRIMESTRE;'
          '  RESTO_PAGAR = -RESTO_PAGAR;'
          ''
          '  SUSPEND;'
          '/********************************************************'
          '********/'
          ''
          '  DESCRICAO_DESPESA = '#39'  Despesas de Exerc'#237'cios Anteriores'#39';'
          ''
          '  SELECT'
          '   SUM(LIQ_VALOR)'
          '  FROM LIQUIDACAO LIQ'
          '  INNER JOIN EMPENHO EMP ON'
          '    EMP.EMP_ID = LIQ.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '    DFO.DFO_ID = EMP.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DEL ON'
          '    DEL.DEL_ID = DFO.DEL_ID'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.__.__'#39
          '  AND LIQ.CON_ID = :CONID'
          '  AND EXTRACT(MONTH FROM LIQ.LIQ_DATA) < :MESFIM'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT'
          '    COALESCE(:LIQUIDADA_ATE_QUADRIMESTRE, 0) +'
          '    CASE'
          '      WHEN (12 - :MESFIM) = 8 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JUNHO, 0)+'
          '        COALESCE(DL.DEA_VALOR_MAIO, 0))'
          '      WHEN (12 - :MESFIM) = 6 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_AGOSTO, 0)+'
          '        COALESCE(DL.DEA_VALOR_JULHO, 0))'
          '      WHEN (12 - :MESFIM) = 4 THEN'
          '        SUM('
          '        COALESCE(DL.DEA_VALOR_DEZEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_NOVEMBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_OUTUBRO, 0)+'
          '        COALESCE(DL.DEA_VALOR_SETEMBRO, 0))'
          '    END'
          '  FROM'
          '    DL_EXERCICIO_ANTERIOR DL'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DL.CAD_ID_DESPESA'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.__.__'#39
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  SELECT SUM(RPA.RPA_VALOR) FROM RESTO_PAGAR RPA'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = RPA.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.92.__.__'#39
          '    AND RPA.RPA_PROCESSADO = '#39'N'#39
          '  INTO :RESTO_PAGAR;'
          ''
          '  LIQUIDADA_ATE_QUADRIMESTRE = -LIQUIDADA_ATE_QUADRIMESTRE;'
          '  RESTO_PAGAR = -RESTO_PAGAR;'
          ''
          '  SUSPEND;'
          ''
          '/********************************************************'
          '********/'
          ''
          
            '  DESCRICAO_DESPESA = '#39'  Inativos e Pensionistas com Recursos Vi' +
            'nculados'#39';'
          ''
          '  SELECT'
          '   SUM(LIQ_VALOR)'
          '  FROM LIQUIDACAO LIQ'
          '  INNER JOIN EMPENHO EMP ON'
          '    EMP.EMP_ID = LIQ.EMP_ID'
          '  INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '    DFO.DFO_ID = EMP.DFO_ID'
          '  INNER JOIN DESPESA_ELEMENTO DEL ON'
          '    DEL.DEL_ID = DFO.DEL_ID'
          '  INNER JOIN DESPESA DES ON'
          '    DES.DES_ID = DEL.DES_ID'
          '  INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '    PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '  INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '    UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39
          
            '    AND CAD_ID_UGEST = (SELECT CAD_ID_UGIPM FROM ORCAMENTO WHERE' +
            ' '
          'CON_ID = 2)'
          '  AND LIQ.CON_ID = :CONID'
          '  AND EXTRACT(MONTH FROM LIQ.LIQ_DATA) < :MESFIM'
          '  INTO :LIQUIDADA_ATE_QUADRIMESTRE;'
          ''
          '  /*T'#193' FALTANDO EXERCICIOS ANTERIOS PRO INSTITUTO*/'
          ''
          '  SELECT SUM(RPA.RPA_VALOR) FROM RESTO_PAGAR RPA'
          '  INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = RPA.CAD_ID_ELEMENTO'
          '  WHERE  CAD.CAD_CODIGO LIKE '#39'3.3.1.9.0.__.__.__'#39
          
            '    AND CAD_ID_UGEST = (SELECT CAD_ID_UGIPM FROM ORCAMENTO WHERE' +
            ' '
          'CON_ID = 2)'
          '    AND RPA.RPA_PROCESSADO = '#39'N'#39
          '  INTO :RESTO_PAGAR;'
          ''
          '  LIQUIDADA_ATE_QUADRIMESTRE = -LIQUIDADA_ATE_QUADRIMESTRE;'
          '  RESTO_PAGAR = -RESTO_PAGAR;'
          ''
          '  SUSPEND;'
          'END'
          '^'
          ''
          '/* Restore proc. body: RRO_R3_1 */'
          'ALTER PROCEDURE RRO_R3_1(CADANO CHAR(4),'
          'MES INTEGER)'
          ' RETURNS(ID_RECEITA INTEGER,'
          'CODIGO_RECEITA VARCHAR(50),'
          'DESCRICAO_RECEITA VARCHAR(500),'
          'REALIZADO_MES1 NUMERIC(18,2),'
          'REALIZADO_MES2 NUMERIC(18,2),'
          'REALIZADO_MES3 NUMERIC(18,2),'
          'REALIZADO_MES4 NUMERIC(18,2),'
          'REALIZADO_MES5 NUMERIC(18,2),'
          'REALIZADO_MES6 NUMERIC(18,2),'
          'REALIZADO_MES7 NUMERIC(18,2),'
          'REALIZADO_MES8 NUMERIC(18,2),'
          'REALIZADO_MES9 NUMERIC(18,2),'
          'REALIZADO_MES10 NUMERIC(18,2),'
          'REALIZADO_MES11 NUMERIC(18,2),'
          'REALIZADO_MES12 NUMERIC(18,2),'
          'TOTAL NUMERIC(18,2),'
          'PREVISAO_ATUALIZADA NUMERIC(18,2),'
          'CABECA CHAR)'
          ' AS'
          'DECLARE VARIABLE NOVOCODIGO VARCHAR(50);'
          'DECLARE VARIABLE VCADANO INTEGER;'
          'DECLARE VARIABLE VMES INTEGER;'
          'DECLARE VARIABLE VRCLEXERCICIOANTERIOR CHAR(1);'
          'BEGIN'
          '  FOR'
          '  SELECT DISTINCT C.CAD_ID, C.CAD_CODIGO, C.CAD_DESCRICAO  FROM '
          'CADASTRO C'
          '  WHERE TCA_ID = 8 AND (C.CAD_ANO = :CADANO OR C.CAD_ANO = CAST'
          
            '(CAST(:CADANO AS INTEGER) - 1 AS CHAR(4)))  AND LEFT(C.CAD_CODIG' +
            'O, '
          '1) '
          '= '#39'4'#39' AND'
          
            '    C.CAD_CODIGO <> '#39'4.0.0.0.0.00.00.00'#39' AND LEFT(C.CAD_CODIGO, ' +
            '3) <> '
          #39'4.2'#39' AND RIGHT(C.CAD_CODIGO, 12) = '#39'0.0.00.00.00'#39
          '  ORDER BY C.CAD_CODIGO'
          '  INTO :ID_RECEITA, :CODIGO_RECEITA, :DESCRICAO_RECEITA'
          '  DO'
          '  BEGIN'
          '    SELECT NOVOCODIGO FROM FORMATA_CODIGO(:CODIGO_RECEITA) INTO '
          ':NOVOCODIGO;'
          '  '
          '    IF (DESCRICAO_RECEITA = '#39'RECEITAS CORRENTES'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'RECEITAS CORRENTES (I)'#39';'
          '    ELSE'
          '    if (DESCRICAO_RECEITA = '#39'(-)DEDU'#199#213'ES DA RECEITA'#39') then'
          '      DESCRICAO_RECEITA = '#39'DEDU'#199#213'ES (II)'#39';'
          '    ELSE'
          
            '    if (DESCRICAO_RECEITA = '#39'(-)DEDU'#199#195'O DE RECEITA DO FUNDEB*'#39') ' +
            'then'
          '      DESCRICAO_RECEITA = '#39'DEDU'#199#195'O DE RECEITA PARA FORMA'#199#195'O DO '
          'FUNDEB'#39';'
          '    ELSE'
          
            '    if (DESCRICAO_RECEITA = '#39'(-)DEDU'#199#195'O DA RECEITA CORRENTE*'#39') t' +
            'hen'
          '      DESCRICAO_RECEITA = '#39'DEDU'#199#195'O DE RECEITA PARA FORMA'#199#195'O DO '
          'FUNDEB'#39';'
          ''
          '    SELECT SUM(COALESCE(R.REC_VALOR, 0)+COALESCE(R.REC_EXCESSO, '
          '0)) '
          'FROM RECEITA R'
          '    INNER JOIN CADASTRO C ON'
          '      C.CAD_ID = R.CAD_ID_RECEITA'
          '    WHERE'
          '      C.CAD_ANO = :CADANO AND C.CAD_CODIGO LIKE :NOVOCODIGO'
          '        INTO :PREVISAO_ATUALIZADA;'
          ''
          '    VCADANO = CADANO;'
          '    VMES = MES;'
          '    vrclexercicioanterior = '#39'N'#39';'
          ''
          ''
          '    /* mes 1 */'
          '    SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '    INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          '    CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '    AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '    AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '    INTO :REALIZADO_MES1;'
          ''
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    '
          '    /* mes 2 */'
          '    SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '    INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          '    CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '    AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '    AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '    INTO :REALIZADO_MES2;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          '    '
          '    /* mes 3 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes3;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES3;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 4 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes4;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES4;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 5 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes5;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes5;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES5;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 6 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes6;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes6;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES6;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          ''
          '    /* mes 7 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_AGOSTO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes7;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes7;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes7;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES7;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 8 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_JULHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes8;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes8;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes8;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES8;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 9 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_JUNHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_AGOSTO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES9;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 10 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_MAIO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_JULHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES10;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 11 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_ABRIL, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_JUNHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_AGOSTO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 10) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES11;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 12 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_MARCO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_MAIO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_JULHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 10) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES12;'
          '    '
          '    TOTAL ='
          '      REALIZADO_MES1'
          '      + REALIZADO_MES2'
          '      + REALIZADO_MES3'
          '      + REALIZADO_MES4'
          '      + REALIZADO_MES5'
          '      + REALIZADO_MES6'
          '      + REALIZADO_MES7'
          '      + REALIZADO_MES8'
          '      + REALIZADO_MES9'
          '      + REALIZADO_MES10'
          '      + REALIZADO_MES11'
          '      + REALIZADO_MES12;'
          ''
          ''
          '    CABECA = '#39'N'#39';'
          ''
          '    IF (RIGHT(CODIGO_RECEITA, 14) = '#39'0.0.0.00.00.00'#39') THEN'
          '    BEGIN'
          '      CABECA = '#39'S'#39';'
          '      DESCRICAO_RECEITA = '#39#39'||DESCRICAO_RECEITA;'
          '    END'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 12) = '#39'0.0.00.00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'  '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 10) = '#39'0.00.00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'     '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 8) = '#39'00.00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'        '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 5) = '#39'00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'          '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 2) = '#39'00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'            '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '      DESCRICAO_RECEITA = '#39'              '#39'||DESCRICAO_RECEITA;'
          ''
          '    SUSPEND;'
          '  END'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet15: TcxTabSheet
      Caption = 'cxTabSheet15'
      ImageIndex = 14
      object cxMemo15: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE RRO_R3_2(CADANO CHAR(4),'
          'MES INTEGER)'
          ' RETURNS(ID_RECEITA INTEGER,'
          'CODIGO_RECEITA VARCHAR(50),'
          'DESCRICAO_RECEITA VARCHAR(500),'
          'REALIZADO_MES1 NUMERIC(18,2),'
          'REALIZADO_MES2 NUMERIC(18,2),'
          'REALIZADO_MES3 NUMERIC(18,2),'
          'REALIZADO_MES4 NUMERIC(18,2),'
          'REALIZADO_MES5 NUMERIC(18,2),'
          'REALIZADO_MES6 NUMERIC(18,2),'
          'REALIZADO_MES7 NUMERIC(18,2),'
          'REALIZADO_MES8 NUMERIC(18,2),'
          'REALIZADO_MES9 NUMERIC(18,2),'
          'REALIZADO_MES10 NUMERIC(18,2),'
          'REALIZADO_MES11 NUMERIC(18,2),'
          'REALIZADO_MES12 NUMERIC(18,2),'
          'TOTAL NUMERIC(18,2),'
          'PREVISAO_ATUALIZADA NUMERIC(18,2),'
          'CABECA CHAR)'
          ' AS'
          'DECLARE VARIABLE NOVOCODIGO VARCHAR(50);'
          'DECLARE VARIABLE VCADANO INTEGER;'
          'DECLARE VARIABLE VMES INTEGER;'
          'DECLARE VARIABLE VRCLEXERCICIOANTERIOR CHAR(1);'
          'BEGIN'
          '  FOR'
          '  SELECT DISTINCT C.CAD_ID, C.CAD_CODIGO, C.CAD_DESCRICAO  FROM '
          'CADASTRO C'
          '  WHERE TCA_ID = 8 AND (C.CAD_ANO = :CADANO OR C.CAD_ANO = CAST'
          
            '(CAST(:CADANO AS INTEGER) - 1 AS CHAR(4)))  AND LEFT(C.CAD_CODIG' +
            'O, '
          '1) '
          '= '#39'4'#39' AND'
          
            '    C.CAD_CODIGO <> '#39'4.0.0.0.0.00.00.00'#39' AND LEFT(C.CAD_CODIGO, ' +
            '3) <> '
          #39'4.2'#39' AND RIGHT(C.CAD_CODIGO, 12) = '#39'0.0.00.00.00'#39
          
            '    or (C.CAD_CODIGO IN ('#39'4.1.1.1.2.02.00.00'#39', '#39'4.1.1.1.3.05.00.' +
            '00'#39', '
          
            #39'4.1.1.1.2.04.00.00'#39', '#39'4.1.1.1.2.08.00.00'#39', '#39'4.1.1.3.0.00.00.00'#39 +
            '))'
          '  ORDER BY C.CAD_CODIGO'
          '  INTO :ID_RECEITA, :CODIGO_RECEITA, :DESCRICAO_RECEITA'
          '  DO'
          '  BEGIN'
          '    SELECT NOVOCODIGO FROM FORMATA_CODIGO(:CODIGO_RECEITA) INTO '
          ':NOVOCODIGO;'
          '  '
          '    IF (DESCRICAO_RECEITA = '#39'RECEITAS CORRENTES'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'RECEITAS CORRENTES (I)'#39';'
          '    ELSE'
          '    if (DESCRICAO_RECEITA = '#39'(-)DEDU'#199#213'ES DA RECEITA'#39') then'
          '      DESCRICAO_RECEITA = '#39'DEDU'#199#213'ES (II)'#39';'
          '    ELSE'
          
            '    if (DESCRICAO_RECEITA = '#39'(-)DEDU'#199#195'O DE RECEITA DO FUNDEB*'#39') ' +
            'then'
          '      DESCRICAO_RECEITA = '#39'DEDU'#199#195'O DE RECEITA PARA FORMA'#199#195'O DO '
          'FUNDEB'#39';'
          '    ELSE'
          
            '    if (DESCRICAO_RECEITA = '#39'(-)DEDU'#199#195'O DA RECEITA CORRENTE*'#39') t' +
            'hen'
          '      DESCRICAO_RECEITA = '#39'DEDU'#199#195'O DE RECEITA PARA FORMA'#199#195'O DO '
          'FUNDEB'#39';'
          '    '
          '    if (CODIGO_RECEITA = '#39'4.1.1.1.2.02.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'IPTU'#39';'
          '    ELSE'
          '    if (CODIGO_RECEITA = '#39'4.1.1.1.2.04.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'IRRF'#39';'
          '    ELSE'
          '    if (CODIGO_RECEITA = '#39'4.1.1.1.2.08.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'ITBI'#39';'
          '    ELSE'
          '    if (CODIGO_RECEITA = '#39'4.1.1.1.3.05.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'ISS'#39';'
          '    ELSE'
          '    if (CODIGO_RECEITA = '#39'4.1.1.3.0.00.00.00'#39') then'
          '      DESCRICAO_RECEITA = '#39'OUTRAS RECEITAS TRIBUT'#193'RIAS'#39';'
          ''
          ''
          '    SELECT SUM(COALESCE(R.REC_VALOR, 0)+COALESCE(R.REC_EXCESSO, '
          '0)) '
          'FROM RECEITA R'
          '    INNER JOIN CADASTRO C ON'
          '      C.CAD_ID = R.CAD_ID_RECEITA'
          '    WHERE'
          '      C.CAD_ANO = :CADANO AND C.CAD_CODIGO LIKE :NOVOCODIGO'
          '        INTO :PREVISAO_ATUALIZADA;'
          ''
          '    VCADANO = CADANO;'
          '    VMES = MES;'
          '    vrclexercicioanterior = '#39'N'#39';'
          ''
          ''
          '    /* mes 1 */'
          '    SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '    INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          '    CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '    AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '    AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '    INTO :REALIZADO_MES1;'
          ''
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    '
          '    /* mes 2 */'
          '    SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '    INNER JOIN CADASTRO CAD ON'
          '    CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '    WHERE'
          '    CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '    AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '    AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '    INTO :REALIZADO_MES2;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          '    '
          '    /* mes 3 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes3;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES3;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 4 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes4;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES4;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 5 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes5;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes5;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES5;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 6 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes6;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes6;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES6;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          ''
          '    /* mes 7 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_AGOSTO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes7;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes7;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes7;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES7;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 8 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_JULHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes8;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes8;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes8;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES8;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 9 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_JUNHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_AGOSTO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes9;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES9;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 10 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_MAIO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_JULHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes10;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES10;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 11 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_ABRIL, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_JUNHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_AGOSTO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_OUTUBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '        ELSE'
          '        if (MES = 10) then'
          '            SELECT COALESCE(REA_VALOR_DEZEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes11;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES11;'
          '    '
          '    VMES = VMES - 1;'
          '    '
          '    IF (VMES = 0) THEN'
          '    BEGIN'
          '        VMES = 12;'
          '        VCADANO = VCADANO - 1;'
          '        vrclexercicioanterior = '#39'S'#39';'
          '    END'
          ''
          '    /* mes 12 */'
          '    if (vrclexercicioanterior = '#39'S'#39') then'
          '    BEGIN'
          '        if (MES = 2) then'
          '            SELECT COALESCE(REA_VALOR_MARCO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 4) then'
          '            SELECT COALESCE(REA_VALOR_MAIO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 6) then'
          '            SELECT COALESCE(REA_VALOR_JULHO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 8) then'
          '            SELECT COALESCE(REA_VALOR_SETEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '        ELSE'
          '        if (MES = 10) then'
          '            SELECT COALESCE(REA_VALOR_NOVEMBRO, 0) FROM '
          'rcl_exercicio_anterior'
          
            '                WHERE CAD_ID_RECEITA = :id_receita INTO :realiza' +
            'do_mes12;'
          '    END'
          '    ELSE'
          '        SELECT COALESCE(SUM(DAM.DAM_VALOR), 0) FROM DAM'
          '        INNER JOIN CADASTRO CAD ON'
          '        CAD.CAD_ID = DAM.CAD_ID_RECEITA'
          '        WHERE'
          '        CAD.CAD_CODIGO LIKE :NOVOCODIGO'
          '        AND EXTRACT(MONTH FROM DAM.DAM_DATA) = :VMES'
          '        AND EXTRACT(YEAR FROM DAM.DAM_DATA) = :VCADANO'
          '        INTO :REALIZADO_MES12;'
          '    '
          '    TOTAL ='
          '      REALIZADO_MES1'
          '      + REALIZADO_MES2'
          '      + REALIZADO_MES3'
          '      + REALIZADO_MES4'
          '      + REALIZADO_MES5'
          '      + REALIZADO_MES6'
          '      + REALIZADO_MES7'
          '      + REALIZADO_MES8'
          '      + REALIZADO_MES9'
          '      + REALIZADO_MES10'
          '      + REALIZADO_MES11'
          '      + REALIZADO_MES12;'
          ''
          ''
          '    CABECA = '#39'N'#39';'
          ''
          '    IF (RIGHT(CODIGO_RECEITA, 14) = '#39'0.0.0.00.00.00'#39') THEN'
          '    BEGIN'
          '      CABECA = '#39'S'#39';'
          '      DESCRICAO_RECEITA = '#39#39'||DESCRICAO_RECEITA;'
          '    END'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 12) = '#39'0.0.00.00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'  '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 10) = '#39'0.00.00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'     '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 8) = '#39'00.00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'        '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 5) = '#39'00.00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'          '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '    IF (RIGHT(CODIGO_RECEITA, 2) = '#39'00'#39') THEN'
          '      DESCRICAO_RECEITA = '#39'            '#39'||DESCRICAO_RECEITA;'
          '    ELSE'
          '      DESCRICAO_RECEITA = '#39'              '#39'||DESCRICAO_RECEITA;'
          ''
          '    if (CODIGO_RECEITA = '#39'4.1.1.3.0.00.00.00'#39') then'
          
            '      DESCRICAO_RECEITA = '#39'          OUTRAS RECEITAS TRIBUT'#193'RIAS' +
            #39';'
          ''
          '    SUSPEND;'
          '  END'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet16: TcxTabSheet
      Caption = 'cxTabSheet16'
      ImageIndex = 15
      object cxMemo16: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE SIOPS_R5(CONID INTEGER,'
          'CADIDUGEST INTEGER,'
          'CADIDUORC INTEGER,'
          'CADIDSUBFUNCAO INTEGER)'
          ' RETURNS(PROJETO VARCHAR(50),'
          'DESCRICAO_PROJETO VARCHAR(250),'
          'CONTA VARCHAR(50),'
          'DESCRICAO_CONTA VARCHAR(250),'
          'DESPESA_FIXADA NUMERIC(18,2),'
          'DOTACAO_ATUALIZADA NUMERIC(18,2),'
          'DESPESA_EMPENHADA NUMERIC(18,2),'
          'DESPESA_LIQUIDADA NUMERIC(18,2),'
          'DESPESA_PAGA NUMERIC(18,2),'
          'SALDO_PAGAR NUMERIC(18,2))'
          ' AS'
          'DECLARE VARIABLE ID_PROJETO INTEGER;'
          'begin'
          '        FOR'
          '        SELECT'
          '          CPA.CAD_ID'
          '          , CPA.CAD_CODIGO'
          '          , CPA.CAD_DESCRICAO'
          '          , CEL.CAD_CODIGO'
          '          , CEL.CAD_DESCRICAO'
          '        FROM DESPESA_ELEMENTO DEL '
          '        INNER JOIN DESPESA DES ON'
          '          DES.DES_ID = DEL.DES_ID'
          '        INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '          PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '        INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '          UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '        INNER JOIN CADASTRO CPA ON'
          '          CPA.CAD_ID = DES.CAD_ID_PROJATIV'
          '        INNER JOIN CADASTRO CEL ON'
          '          CEL.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '        WHERE'
          '          DES.CON_ID = :CONID AND'
          '          UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          '          (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUORC)'
          '          AND PAT.CAD_ID_SUBFUNCAO = :CADIDSUBFUNCAO'
          '        GROUP BY'
          '          CPA.CAD_ID'
          '          , CPA.CAD_CODIGO'
          '          , CPA.CAD_DESCRICAO'
          '          , CEL.CAD_CODIGO'
          '          , CEL.CAD_DESCRICAO'
          '        order by CPA.CAD_CODIGO, CEL.CAD_CODIGO'
          '        INTO :ID_PROJETO, :PROJETO, :DESCRICAO_PROJETO, :CONTA, '
          ':DESCRICAO_CONTA'
          '        DO'
          '        BEGIN'
          
            '              SELECT SUM(DEL.DEL_VALOR) FROM DESPESA_ELEMENTO DE' +
            'L'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '                WHERE'
          '                  DES.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :CADIDSUBFUNCAO AND'
          '                  DES.CAD_ID_PROJATIV = :ID_PROJETO AND'
          '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_FIXADA;'
          ''
          ''
          
            '              SELECT  :DESPESA_FIXADA + COALESCE(SUM(SUP.SUP_VAL' +
            'OR), 0) '
          'FROM SUPLEMENTACAO SUP'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = SUP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '                WHERE'
          '                  DES.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :CADIDSUBFUNCAO AND'
          '                  DES.CAD_ID_PROJATIV = :ID_PROJETO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DOTACAO_ATUALIZA' +
            'DA;'
          ''
          '              SELECT :DOTACAO_ATUALIZADA - COALESCE(SUM'
          '(ANU.ANU_VALOR), 0) FROM ANULACAO ANU'
          '                INNER JOIN SUPLEMENTACAO SUP ON'
          '                  SUP.SUP_ID = ANU.SUP_ID'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = SUP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '                WHERE'
          '                  SUP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :CADIDSUBFUNCAO AND'
          '                  DES.CAD_ID_PROJATIV = :ID_PROJETO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DOTACAO_ATUALIZA' +
            'DA;'
          '        '
          '              SELECT SUM(EMP.EMP_VALOR) FROM EMPENHO EMP'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = EMP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '              WHERE '
          '                EMP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :CADIDSUBFUNCAO AND'
          '                  DES.CAD_ID_PROJATIV = :ID_PROJETO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_EMPENHAD' +
            'A;'
          '              '
          '              SELECT SUM(LIQ.LIQ_VALOR) FROM LIQUIDACAO LIQ'
          '                INNER JOIN EMPENHO EMP ON'
          '                  EMP.EMP_ID = LIQ.EMP_ID'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = EMP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '              WHERE'
          '                EMP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :CADIDSUBFUNCAO AND'
          '                  DES.CAD_ID_PROJATIV = :ID_PROJETO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_LIQUIDAD' +
            'A;'
          '              '
          '              SELECT SUM(PAG.PAG_VALOR) FROM PAGAMENTO PAG'
          '                INNER JOIN EMPENHO EMP ON'
          '                  EMP.EMP_ID = PAG.EMP_ID'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = EMP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '              WHERE'
          '                EMP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :CADIDSUBFUNCAO AND'
          '                  DES.CAD_ID_PROJATIV = :ID_PROJETO AND'
          '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_PAGA;'
          '              '
          
            '              SALDO_PAGAR = COALESCE(DESPESA_LIQUIDADA, 0) - COA' +
            'LESCE'
          '(DESPESA_PAGA, 0);'
          ''
          '          if'
          '          ('
          '          (DESPESA_FIXADA IS NOT NULL)'
          '          or (DOTACAO_ATUALIZADA IS NOT NULL)'
          '          or (DESPESA_EMPENHADA IS NOT NULL)'
          '          or (DESPESA_LIQUIDADA IS NOT NULL)'
          '          or (DESPESA_PAGA IS NOT NULL)'
          '          )'
          '          then'
          '          SUSPEND;'
          '        END'
          'end')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet17: TcxTabSheet
      Caption = 'cxTabSheet17'
      ImageIndex = 16
      object cxMemo17: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE SIOPS_R6(CONID INTEGER,'
          'CADIDUGEST INTEGER,'
          'CADIDUORC INTEGER)'
          ' RETURNS(SUBFUNCAO VARCHAR(50),'
          'DESCRICAO_SUBFUNCAO VARCHAR(250),'
          'CONTA VARCHAR(50),'
          'DESCRICAO_CONTA VARCHAR(250),'
          'DESPESA_FIXADA NUMERIC(18,2),'
          'DOTACAO_ATUALIZADA NUMERIC(18,2),'
          'DESPESA_EMPENHADA NUMERIC(18,2),'
          'DESPESA_LIQUIDADA NUMERIC(18,2),'
          'DESPESA_PAGA NUMERIC(18,2),'
          'SALDO_PAGAR NUMERIC(18,2))'
          ' AS'
          'DECLARE VARIABLE ID_SUBFUNCAO INTEGER;'
          'begin'
          '        FOR'
          '        SELECT'
          '          CSF.CAD_ID'
          '          , CSF.CAD_CODIGO'
          '          , CSF.CAD_DESCRICAO'
          '          , CEL.CAD_CODIGO'
          '          , CEL.CAD_DESCRICAO'
          '        FROM DESPESA_ELEMENTO DEL '
          '        INNER JOIN DESPESA DES ON'
          '          DES.DES_ID = DEL.DES_ID'
          '        INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '          PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '        INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '          UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '        INNER JOIN CADASTRO CSF ON'
          '          CSF.CAD_ID = PAT.CAD_ID_SUBFUNCAO'
          '        INNER JOIN CADASTRO CEL ON'
          '          CEL.CAD_ID = DEL.CAD_ID_ELEMENTO'
          '        WHERE'
          '          DES.CON_ID = :CONID AND'
          '          UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          '          (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUORC)'
          '        GROUP BY'
          '          CSF.CAD_ID'
          '          , CSF.CAD_CODIGO'
          '          , CSF.CAD_DESCRICAO'
          '          , CEL.CAD_CODIGO'
          '          , CEL.CAD_DESCRICAO'
          '        order by CSF.CAD_CODIGO, CSF.CAD_CODIGO'
          '        INTO :ID_SUBFUNCAO, :SUBFUNCAO, :DESCRICAO_SUBFUNCAO, '
          ':CONTA, :DESCRICAO_CONTA'
          '        DO'
          '        BEGIN'
          
            '              SELECT SUM(DEL.DEL_VALOR) FROM DESPESA_ELEMENTO DE' +
            'L'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '                WHERE'
          '                  DES.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :ID_SUBFUNCAO AND'
          '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_FIXADA;'
          ''
          ''
          
            '              SELECT  :DESPESA_FIXADA + COALESCE(SUM(SUP.SUP_VAL' +
            'OR), 0) '
          'FROM SUPLEMENTACAO SUP'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = SUP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '                WHERE'
          '                  DES.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :ID_SUBFUNCAO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DOTACAO_ATUALIZA' +
            'DA;'
          ''
          '              SELECT :DOTACAO_ATUALIZADA - COALESCE(SUM'
          '(ANU.ANU_VALOR), 0) FROM ANULACAO ANU'
          '                INNER JOIN SUPLEMENTACAO SUP ON'
          '                  SUP.SUP_ID = ANU.SUP_ID'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = SUP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '                WHERE'
          '                  SUP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :ID_SUBFUNCAO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DOTACAO_ATUALIZA' +
            'DA;'
          '        '
          '              SELECT SUM(EMP.EMP_VALOR) FROM EMPENHO EMP'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = EMP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '              WHERE '
          '                EMP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :ID_SUBFUNCAO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_EMPENHAD' +
            'A;'
          '              '
          '              SELECT SUM(LIQ.LIQ_VALOR) FROM LIQUIDACAO LIQ'
          '                INNER JOIN EMPENHO EMP ON'
          '                  EMP.EMP_ID = LIQ.EMP_ID'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = EMP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '              WHERE'
          '                EMP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :ID_SUBFUNCAO AND'
          
            '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_LIQUIDAD' +
            'A;'
          '              '
          '              SELECT SUM(PAG.PAG_VALOR) FROM PAGAMENTO PAG'
          '                INNER JOIN EMPENHO EMP ON'
          '                  EMP.EMP_ID = PAG.EMP_ID'
          '                INNER JOIN DESPESA_ELEMENTO_FONTE DFO ON'
          '                  DFO.DFO_ID = EMP.DFO_ID'
          '                INNER JOIN DESPESA_ELEMENTO DEL ON'
          '                  DEL.DEL_ID = DFO.DEL_ID'
          '                INNER JOIN CADASTRO CEL ON CEL.CAD_ID = '
          'DEL.CAD_ID_ELEMENTO'
          '                INNER JOIN DESPESA DES ON'
          '                  DES.DES_ID = DEL.DES_ID'
          '                INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '                  PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '                INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '                  UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '              WHERE'
          '                EMP.CON_ID = :CONID AND'
          '                  UOR.CAD_ID_UGEST = :CADIDUGEST AND'
          
            '                  (:CADIDUORC = 0 or PAT.CAD_ID_UORC = :CADIDUOR' +
            'C) AND'
          '                  PAT.CAD_ID_SUBFUNCAO = :ID_SUBFUNCAO AND'
          '                  CEL.CAD_CODIGO = :CONTA INTO :DESPESA_PAGA;'
          '              '
          
            '              SALDO_PAGAR = COALESCE(DESPESA_LIQUIDADA, 0) - COA' +
            'LESCE'
          '(DESPESA_PAGA, 0);'
          ''
          '          if'
          '          ('
          '          (DESPESA_FIXADA IS NOT NULL)'
          '          or (DOTACAO_ATUALIZADA IS NOT NULL)'
          '          or (DESPESA_EMPENHADA IS NOT NULL)'
          '          or (DESPESA_LIQUIDADA IS NOT NULL)'
          '          or (DESPESA_PAGA IS NOT NULL)'
          '          )'
          '          then'
          '          SUSPEND;'
          '        END'
          'end')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet18: TcxTabSheet
      Caption = 'cxTabSheet18'
      ImageIndex = 17
      object cxMemo18: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE SP_MOVIMENTO_BANCARIO(CADIDCCORRENTE '
          'INTEGER,'
          'ANO CHAR(4),'
          'MES INTEGER,'
          'DATA_INICIO DATE)'
          ' RETURNS(CAD_ID_CCORRENTE INTEGER,'
          'CAD_CODIGO VARCHAR(50),'
          'CAD_DESCRICAO VARCHAR(250),'
          'DATA TIMESTAMP,'
          'HISTORICO VARCHAR(521),'
          'DOCUMENTO VARCHAR(20),'
          'DEBITO NUMERIC(18,2),'
          'CREDITO NUMERIC(18,2),'
          'SALDO NUMERIC(18,2),'
          'TIPO_MOVIMENTO CHAR,'
          'VALOR NUMERIC(18,2),'
          'DC CHAR,'
          'ORDEM VARCHAR(21),'
          'DOC_ID INTEGER,'
          'CONCILIADO CHAR,'
          'DESCONCILIADO DATE)'
          ' AS'
          'BEGIN'
          '  FOR'
          '    SELECT'
          '      MBA.CAD_ID_CCORRENTE,'
          '      CAD_CCO.CAD_CODIGO,'
          '      CAD_CCO.CAD_DESCRICAO,'
          '      MBA.DATA,'
          '      MBA.HISTORICO,'
          '    DOCUMENTO,'
          '      CASE'
          '        WHEN MBA.DC = '#39'D'#39' THEN'
          '          ABS(MBA.VALOR)'
          '        ELSE'
          '          NULL'
          '      END AS DEBITO,'
          '      CASE'
          '        WHEN MBA.DC = '#39'C'#39' THEN'
          '          ABS(MBA.VALOR)'
          '        ELSE'
          '          NULL'
          '      END AS CREDITO,'
          '      MBA.TIPO_MOVIMENTO,'
          '    ABS(MBA.VALOR) AS VALOR,'
          '    MBA.DC,'
          '    MBA.ORDEM,'
          '    MBA.DOC_ID,'
          '      CBA.CONCILIADO'
          '    , '
          '    CBA.DESCONCILIADO'
          '    '
          '    FROM'
          '    MOVIMENTO_BANCARIO_IMAGEM MBA'
          '    INNER JOIN CADASTRO CAD_CCO ON'
          '    CAD_CCO.CAD_ID = MBA.CAD_ID_CCORRENTE'
          '    LEFT JOIN CONCILIACAO_BANCARIA CBA ON'
          '    CBA.CAD_ID_CCORRENTE = MBA.CAD_ID_CCORRENTE AND'
          '    CBA.TIPO_MOVIMENTO = MBA.TIPO_MOVIMENTO AND'
          '    CBA.DATA = MBA.DATA AND'
          '    CBA.DOC_ID = MBA.DOC_ID'
          '    WHERE'
          '    MBA.CAD_ID_CCORRENTE = :CADIDCCORRENTE'
          '    AND'
          '    ('
          '      ('
          '      (EXTRACT(YEAR FROM MBA.DATA) = :ANO)'
          '      AND'
          '      (0 = :MES)'
          '      )'
          '      OR'
          '      ('
          '      ((EXTRACT(YEAR FROM MBA.DATA) = :ANO)'
          '      AND'
          '      (EXTRACT(MONTH FROM MBA.DATA) = :MES))'
          '      OR'
          '      ('
          '        mba.DATA < :DATA_INICIO'
          '          AND'
          
            '        (CBA.DOC_ID IS NOT NULL AND ( ( CBA.DESCONCILIADO IS NUL' +
            'L)  OR '
          '(CBA.DESCONCILIADO >= :DATA_INICIO)  ) )'
          '      )'
          '      )'
          '    )'
          '    ORDER BY MBA.ORDEM'
          '  INTO :CAD_ID_CCORRENTE, :CAD_CODIGO, :CAD_DESCRICAO, :DATA, '
          ':HISTORICO, :DOCUMENTO, :DEBITO, :CREDITO, :TIPO_MOVIMENTO, '
          ':VALOR, '
          ':DC, :ORDEM, :DOC_ID, :CONCILIADO, :DESCONCILIADO'
          '  DO'
          '  BEGIN'
          '    if (SALDO IS NULL) then'
          '    BEGIN'
          
            '      SELECT SUM(CASE WHEN DC = '#39'C'#39' THEN -ABS(VALOR) ELSE ABS(VA' +
            'LOR) '
          'END)'
          '          FROM MOVIMENTO_BANCARIO_IMAGEM'
          '          WHERE CAD_ID_CCORRENTE = :CAD_ID_CCORRENTE'
          '                   AND ORDEM<=:ORDEM INTO :SALDO;'
          '      SALDO = COALESCE(SALDO, 0);'
          '    END'
          '    ELSE'
          '    BEGIN'
          '      if (DC = '#39'C'#39') then'
          '        SALDO = SALDO - ABS(VALOR);'
          '      ELSE'
          '        SALDO = SALDO + ABS(VALOR);'
          '    END'
          ''
          '    SUSPEND;'
          '  END'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet19: TcxTabSheet
      Caption = 'cxTabSheet19'
      ImageIndex = 18
      object cxMemo19: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'CREATE PROCEDURE "ugDaDespesa"(DFOID INTEGER)'
          ' RETURNS(CADIDUGEST INTEGER)'
          ' AS'
          'begin'
          '  SELECT UOR.CAD_ID_UGEST FROM'
          '    DESPESA_ELEMENTO_FONTE DFO'
          '    INNER JOIN DESPESA_ELEMENTO DEL ON'
          '      DEL.DEL_ID = DFO.DEL_ID'
          '    INNER JOIN DESPESA DES ON'
          '      DES.DES_ID = DEL.DES_ID'
          '    INNER JOIN PROJETO_ATIVIDADE PAT ON'
          '      PAT.CAD_ID_PROJATIV = DES.CAD_ID_PROJATIV'
          '    INNER JOIN UNIDADE_ORCAMENTARIA UOR ON'
          '      UOR.CAD_ID_UORC = PAT.CAD_ID_UORC'
          '  WHERE DFO.DFO_ID = :DFOID INTO :CADIDUGEST;'
          ''
          '  suspend;'
          'end')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet20: TcxTabSheet
      Caption = 'cxTabSheet20'
      ImageIndex = 19
      object cxMemo20: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'ALTER TRIGGER RPA_AIU_INSERTING_L_C'
          'INACTIVE AFTER INSERT OR UPDATE POSITION 0'
          'AS'
          '  declare variable CADIDEVENTO INTEGER;'
          '  declare variable CADIDCONTADEVEDORA INTEGER;'
          '  declare variable CADIDCONTACREDORA INTEGER;'
          'begin'
          '  DELETE FROM LANCAMENTO_CONTABIL'
          '    WHERE RPA_ID = NEW.RPA_ID;'
          ''
          '  SELECT CAD_ID FROM CADASTRO WHERE TCA_ID = 8 AND'
          
            '    CAD_CODIGO = '#39'2.1.2.1.1.00.00.00'#39' AND CAD_ANO = (SELECT CON_' +
            'ANO '
          'FROM CONJUNTO WHERE CON_ID = NEW.CON_ID)'
          '  INTO :CADIDCONTADEVEDORA;'
          ''
          '  if (NEW.RPA_PROCESSADO = '#39'S'#39') then'
          '  BEGIN'
          '    SELECT CAD_ID FROM CADASTRO'
          '    WHERE TCA_ID = 61 AND CAD_CODIGO = '#39'5.229'#39' AND CAD_ANO = '
          '(SELECT '
          'CON_ANO FROM CONJUNTO WHERE CON_ID = NEW.CON_ID)'
          '    INTO :CADIDEVENTO;'
          ''
          '    SELECT CAD_ID FROM CADASTRO WHERE TCA_ID = 8 AND'
          
            '      CAD_CODIGO = '#39'2.1.2.1.6.01.01.00'#39' AND CAD_ANO = (SELECT CO' +
            'N_ANO '
          'FROM CONJUNTO WHERE CON_ID = NEW.CON_ID)'
          '    INTO :CADIDCONTACREDORA;'
          '  END'
          '  ELSE'
          '  BEGIN'
          '    SELECT CAD_ID FROM CADASTRO'
          '    WHERE TCA_ID = 61 AND CAD_CODIGO = '#39'5.230'#39' AND CAD_ANO = '
          '(SELECT '
          'CON_ANO FROM CONJUNTO WHERE CON_ID = NEW.CON_ID)'
          '    INTO :CADIDEVENTO;'
          ''
          '    SELECT CAD_ID FROM CADASTRO WHERE TCA_ID = 8 AND'
          
            '      CAD_CODIGO = '#39'2.1.2.1.6.01.02.00'#39' AND CAD_ANO = (SELECT CO' +
            'N_ANO '
          'FROM CONJUNTO WHERE CON_ID = NEW.CON_ID)'
          '    INTO :CADIDCONTACREDORA;'
          '  END'
          '    '
          '  INSERT INTO LANCAMENTO_CONTABIL'
          
            '  (CON_ID, CAD_ID_EVENTO, LCO_ID, LCO_DT, CAD_ID_CONTA_DEVEDORA,' +
            ' '
          'CAD_ID_CONTA_CREDORA, LCO_VALOR, RPA_ID)'
          '  VALUES'
          '  ('
          '    NEW.CON_ID'
          '    , :CADIDEVENTO'
          '    , GEN_ID(GNE_LCO_ID, 1)'
          '    , CAST(NEW.RPA_DATA AS DATE)'
          '    , :CADIDCONTADEVEDORA'
          '    , :CADIDCONTACREDORA'
          '    , NEW.RPA_VALOR'
          '    , NEW.RPA_ID'
          '  );  '
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet21: TcxTabSheet
      Caption = 'cxTabSheet21'
      ImageIndex = 20
      object cxMemo21: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'ALTER TRIGGER TCC_AIU_INSERTING_L_C'
          'INACTIVE AFTER INSERT OR UPDATE POSITION 0'
          'AS'
          '  declare variable CADIDEVENTO INTEGER;'
          '  declare variable CADIDPLACONTA INTEGER;'
          '  declare variable CADIDCONTADEVEDORA INTEGER;'
          '  declare variable CADIDCONTACREDORA INTEGER;'
          '  declare variable TCCVALOR NUMERIC(18,2);'
          'begin'
          '  if (NEW.CAD_ID_CCORRENTE_ORIG IS NULL) then'
          '  BEGIN'
          '    SELECT CCP.CAD_ID_PLACONTA FROM CONTA_CORRENTE_PLACONTA CCP'
          '    WHERE CCP.CON_ID = NEW.CON_ID AND CCP.CAD_ID_CCORRENTE = '
          'NEW.CAD_ID_CCORRENTE_DEST'
          '    INTO :CADIDPLACONTA;'
          '  '
          '    SELECT SUM(TCC_VALOR) FROM TRANSFERENCIA_CONTA_CORRENTE'
          '      WHERE'
          '      CAD_ID_CCORRENTE_ORIG IS NULL AND'
          '      CAD_ID_CCORRENTE_DEST IN'
          '        (SELECT CAD_ID_CCORRENTE FROM CONTA_CORRENTE_PLACONTA   '
          'WHERE CON_ID = NEW.CON_ID AND CAD_ID_PLACONTA = :CADIDPLACONTA)'
          '    INTO TCCVALOR;'
          ''
          '    DELETE FROM LANCAMENTO_CONTABIL'
          '      WHERE CAD_ID_PLACONTA = :CADIDPLACONTA;'
          ''
          '    SELECT CAD_ID FROM CADASTRO'
          '    WHERE TCA_ID = 61 AND CAD_CODIGO = '#39'9.001'#39' AND CAD_ANO = '
          '(SELECT '
          'CON_ANO FROM CONJUNTO WHERE CON_ID = NEW.CON_ID)'
          '    INTO :CADIDEVENTO;'
          ''
          '    CADIDCONTADEVEDORA = CADIDPLACONTA;'
          ''
          '    INSERT INTO LANCAMENTO_CONTABIL'
          
            '    (CON_ID, CAD_ID_EVENTO, LCO_ID, LCO_DT, CAD_ID_CONTA_DEVEDOR' +
            'A, '
          'CAD_ID_CONTA_CREDORA, LCO_VALOR, CAD_ID_PLACONTA)'
          '    VALUES'
          '    ('
          '      NEW.CON_ID'
          '      , :CADIDEVENTO'
          '      , GEN_ID(GNE_LCO_ID, 1)'
          '      , CAST(NEW.TCC_DATA AS DATE)'
          '      , :CADIDCONTADEVEDORA'
          '      , NULL'
          '      , :TCCVALOR'
          '      , :CADIDPLACONTA'
          '    );'
          '  END'
          '  ELSE'
          '  BEGIN'
          '    DELETE FROM LANCAMENTO_CONTABIL WHERE TCC_ID = NEW.TCC_ID;'
          ''
          '    SELECT CAD_ID FROM CADASTRO'
          '    WHERE TCA_ID = 61 AND CAD_CODIGO = '#39'5.779'#39' AND CAD_ANO = '
          '(SELECT '
          'CON_ANO FROM CONJUNTO WHERE CON_ID = NEW.CON_ID)'
          '    INTO :CADIDEVENTO;'
          ''
          '    SELECT CCP.CAD_ID_PLACONTA FROM CONTA_CORRENTE_PLACONTA CCP'
          '    WHERE CCP.CON_ID = NEW.CON_ID AND CCP.CAD_ID_CCORRENTE = '
          'NEW.CAD_ID_CCORRENTE_ORIG'
          '    INTO :CADIDCONTADEVEDORA;'
          ''
          '    SELECT CCP.CAD_ID_PLACONTA FROM CONTA_CORRENTE_PLACONTA CCP'
          '    WHERE CCP.CON_ID = NEW.CON_ID AND CCP.CAD_ID_CCORRENTE = '
          'NEW.CAD_ID_CCORRENTE_DEST'
          '    INTO :CADIDCONTACREDORA;'
          ''
          '    if (CADIDCONTADEVEDORA <> CADIDCONTACREDORA) then'
          '      INSERT INTO LANCAMENTO_CONTABIL'
          '      (CON_ID, CAD_ID_EVENTO, LCO_ID, LCO_DT, '
          'CAD_ID_CONTA_DEVEDORA, '
          'CAD_ID_CONTA_CREDORA, LCO_VALOR, TCC_ID)'
          '      VALUES'
          '      ('
          '        NEW.CON_ID'
          '        , :CADIDEVENTO'
          '        , GEN_ID(GNE_LCO_ID, 1)'
          '        , CAST(NEW.TCC_DATA AS DATE)'
          '        , :CADIDCONTADEVEDORA'
          '        , :CADIDCONTACREDORA'
          '        , NEW.TCC_VALOR'
          '        , NEW.TCC_ID'
          '      );    '
          ''
          '  END'
          'END')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
    object cxTabSheet22: TcxTabSheet
      Caption = 'cxTabSheet22'
      ImageIndex = 21
      object cxMemo22: TcxMemo
        Left = 0
        Top = 0
        Align = alClient
        Lines.Strings = (
          'UPDATE INSTALACAO SET'
          ' INS_VERSAO_EXECUCAO = '#39'1.0.0.7'#39';')
        TabOrder = 0
        Height = 205
        Width = 6000
      end
    end
  end
  inherited cxStyleRepository: TcxStyleRepository
    inherited GridTableViewStyleSheetPadrao: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  inherited cxEditStyleCheckBox: TcxEditStyleController
    Style.IsFontAssigned = True
  end
  inherited EditStyleNormal: TcxEditStyleController
    Style.IsFontAssigned = True
  end
  inherited EditStyleReadyOnly: TcxEditStyleController
    Style.IsFontAssigned = True
  end
end
