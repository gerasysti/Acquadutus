�
 TFRMPRINCIPAL 0+  TPF0TfrmPrincipalfrmPrincipalLeft� Top� Caption   Configurar Dados do Órgão ...ClientHeight$ClientWidth�Color	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderOnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TcxDBTextEditedNomeRazaoSocLeft� Top AutoSizeDataBinding.DataFieldRAZAO_SOCIALDataBinding.DataSourceDataSource1
ParentFontStyle.Font.CharsetDEFAULT_CHARSETStyle.Font.ColorclWindowTextStyle.Font.Height�Style.Font.NameTahomaStyle.Font.StylefsBold Style.IsFontAssigned	TabOrder HeightWidth�  TcxDBTextEditedSiglaLeft� Top@AutoSizeDataBinding.DataFieldSIGLADataBinding.DataSourceDataSource1
ParentFontStyle.Font.CharsetDEFAULT_CHARSETStyle.Font.ColorclWindowTextStyle.Font.Height�Style.Font.NameTahomaStyle.Font.StylefsBold Style.IsFontAssigned	TabOrderHeightWidthq  TcxDBTextEditedCNPJLeft� Top`AutoSizeDataBinding.DataFieldCNPJDataBinding.DataSourceDataSource1
ParentFontStyle.Font.CharsetDEFAULT_CHARSETStyle.Font.ColorclWindowTextStyle.Font.Height�Style.Font.NameTahomaStyle.Font.StylefsBold Style.IsFontAssigned	TabOrderHeightWidth�   TcxLabelcxLabel1LeftTop AutoSizeCaption   Nome / Razação Social:Properties.Alignment.HorztaRightJustifyHeightWidth� AnchorX�   TcxLabelcxLabel2LeftTop@AutoSizeCaptionSigla:Properties.Alignment.HorztaRightJustifyHeightWidth� AnchorX�   TcxLabelcxLabel3LeftTop`AutoSizeCaption	C.N.P.J.:Properties.Alignment.HorztaRightJustifyHeightWidth� AnchorX�   TBitBtn	btnSalvarLeft�Top� WidthpHeight Caption&SalvarDoubleBuffered	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
Glyph.Data
�  �  BM�      v   (   $            h                       �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ��� 333333333333333333  333333333333�33333  334C33333338�33333  33B$3333333�8�3333  34""C33333833�3333  3B""$33333�338�333  4"*""C3338�8�3�333  2"��"C3338�3�333  :*3:"$3338�38�8�33  3�33�"C333�33�3�33  3333:"$3333338�8�3  33333�"C333333�3�3  33333:"$3333338�8�  333333�"C333333�3�  333333:"C3333338�  3333333�#3333333��  3333333:3333333383  333333333333333333  	NumGlyphsParentDoubleBuffered
ParentFontTabOrderOnClickbtnSalvarClick  TBitBtnbtnCancelarLeft�Top� WidthpHeight CaptionCancelarDoubleBuffered	Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold KindbkCancel	NumGlyphsParentDoubleBuffered
ParentFontTabOrderOnClickbtnCancelarClick  TClientDataSet	cdsConfig
Aggregates Params ProviderNameprov1LefthTopp TIntegerFieldcdsConfigID	FieldNameIDRequired	  TStringFieldcdsConfigRAZAO_SOCIAL	FieldNameRAZAO_SOCIALSize<  TStringFieldcdsConfigSIGLA	FieldNameSIGLASize
  TStringFieldcdsConfigCNPJ	FieldNameCNPJ	FixedChar	Size  TIntegerFieldcdsConfigENDER_ID_LOGRAD	FieldNameENDER_ID_LOGRAD  TStringFieldcdsConfigENDER_LOGRAD_NUM	FieldNameENDER_LOGRAD_NUMSize  TIntegerFieldcdsConfigENDER_ID_BAIRRO	FieldNameENDER_ID_BAIRRO  TStringFieldcdsConfigENDER_CIDADE	FieldNameENDER_CIDADESize  TStringFieldcdsConfigENDER_CEP	FieldName	ENDER_CEP	FixedChar	Size  TStringFieldcdsConfigENDER_UF	FieldNameENDER_UF	FixedChar	Size  
TBlobFieldcdsConfigLOGOMARCA	FieldName	LOGOMARCASize  TStringFieldcdsConfigTELEFONES	FieldName	TELEFONESSize(  TStringFieldcdsConfigE_MAIL	FieldNameE_MAILSize<   TDataSetProviderprov1DataSet	qryConfigLeft`TopX  	TSQLQuery	qryConfigMaxBlobSizeParams SQL.Strings'SELECT * FROM CONFIG_ORGAO WHERE ID = 1 SQLConnectiondmPrincipal.SConPrincipalLeftPTop0 TIntegerFieldqryConfigID	FieldNameIDProviderFlags
pfInUpdate	pfInWherepfInKey Required	  TStringFieldqryConfigRAZAO_SOCIAL	FieldNameRAZAO_SOCIALProviderFlags
pfInUpdate Size<  TStringFieldqryConfigSIGLA	FieldNameSIGLAProviderFlags
pfInUpdate Size
  TStringFieldqryConfigCNPJ	FieldNameCNPJProviderFlags
pfInUpdate 	FixedChar	Size  TIntegerFieldqryConfigENDER_ID_LOGRAD	FieldNameENDER_ID_LOGRADProviderFlags
pfInUpdate   TStringFieldqryConfigENDER_LOGRAD_NUM	FieldNameENDER_LOGRAD_NUMProviderFlags
pfInUpdate Size  TIntegerFieldqryConfigENDER_ID_BAIRRO	FieldNameENDER_ID_BAIRROProviderFlags
pfInUpdate   TStringFieldqryConfigENDER_CIDADE	FieldNameENDER_CIDADEProviderFlags
pfInUpdate Size  TStringFieldqryConfigENDER_CEP	FieldName	ENDER_CEPProviderFlags
pfInUpdate 	FixedChar	Size  TStringFieldqryConfigENDER_UF	FieldNameENDER_UFProviderFlags
pfInUpdate 	FixedChar	Size  
TBlobFieldqryConfigLOGOMARCA	FieldName	LOGOMARCAProviderFlags
pfInUpdate Size  TStringFieldqryConfigTELEFONES	FieldName	TELEFONESProviderFlags
pfInUpdate Size(  TStringFieldqryConfigE_MAIL	FieldNameE_MAILProviderFlags
pfInUpdate Size<   TDataSourceDataSource1AutoEditDataSet	cdsConfigLeftpTop�    