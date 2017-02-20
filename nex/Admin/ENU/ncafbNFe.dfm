inherited fbNFe: TfbNFe
  Caption = 'fbNFe'
  ClientHeight = 517
  ClientWidth = 752
  ExplicitWidth = 768
  ExplicitHeight = 555
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 752
    Height = 517
    OnResize = panPriResize
    ExplicitWidth = 752
    ExplicitHeight = 517
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 752
      Height = 3
      Visible = False
      ExplicitWidth = 752
      ExplicitHeight = 3
    end
    object Paginas: TcxPageControl
      Left = 0
      Top = 3
      Width = 752
      Height = 514
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      TabOrder = 1
      Properties.ActivePage = tsGrid
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 6
      OnResize = PaginasResize
      ClientRectBottom = 514
      ClientRectRight = 752
      ClientRectTop = 24
      object tsGrid: TcxTabSheet
        Caption = 'tsGrid'
        ImageIndex = 0
        object gridNFe: TcxGrid
          AlignWithMargins = True
          Left = 0
          Top = 49
          Width = 752
          Height = 441
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          object tvNFe: TcxGridDBTableView
            PopupMenu = pmXMLs
            Navigator.Buttons.CustomButtons = <>
            Navigator.Buttons.Insert.Visible = False
            Navigator.Buttons.Delete.Visible = False
            Navigator.Buttons.Edit.Visible = False
            Navigator.Buttons.Post.Visible = False
            Navigator.Buttons.Cancel.Visible = False
            Navigator.Buttons.SaveBookmark.Visible = False
            Navigator.Buttons.GotoBookmark.Visible = False
            Navigator.Visible = True
            DataController.DataSource = DS
            DataController.KeyFieldNames = 'Chave'
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.CellSelect = False
            OptionsSelection.HideFocusRectOnExit = False
            OptionsSelection.UnselectFocusedRecordOnExit = False
            OptionsView.GridLineColor = 16053492
            Preview.Column = tvNFexMotivo
            Preview.MaxLineCount = 0
            Preview.Visible = True
            Styles.OnGetContentStyle = tvNFeStylesGetContentStyle
            Styles.Header = FrmPri.cxsHeader
            OnCustomDrawColumnHeader = tvNFeCustomDrawColumnHeader
            object tvNFeNumSeq: TcxGridDBColumn
              Caption = 'Num.Seq'
              DataBinding.FieldName = 'NumSeq'
              Visible = False
              HeaderAlignmentHorz = taCenter
            end
            object tvNFeModelo: TcxGridDBColumn
              DataBinding.FieldName = 'Modelo'
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 55
            end
            object tvNFeStatus: TcxGridDBColumn
              DataBinding.FieldName = 'Status'
              RepositoryItem = Dados.erStatusNFE
              Width = 84
            end
            object tvNFeTran: TcxGridDBColumn
              DataBinding.FieldName = 'IDTran'
              HeaderAlignmentHorz = taCenter
              Width = 66
            end
            object tvNFeDataHora: TcxGridDBColumn
              Caption = 'Datra / Hora'
              DataBinding.FieldName = 'DataHora'
              Styles.OnGetContentStyle = tvNFeDataHoraStylesGetContentStyle
            end
            object tvNFeSerie: TcxGridDBColumn
              Caption = 'S'#233'rie'
              DataBinding.FieldName = 'Serie'
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = tvNFeDataHoraStylesGetContentStyle
            end
            object tvNFeNumero: TcxGridDBColumn
              Caption = 'N'#250'mero'
              DataBinding.FieldName = 'Numero'
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = tvNFeDataHoraStylesGetContentStyle
            end
            object tvNFeValor: TcxGridDBColumn
              DataBinding.FieldName = 'Valor'
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = tvNFeDataHoraStylesGetContentStyle
              Width = 75
            end
            object tvNFeEntrada: TcxGridDBColumn
              AlternateCaption = 'Entrada/Sa'#237'da'
              Caption = 'E/S'
              DataBinding.FieldName = 'Entrada'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Items = <
                item
                  Description = 'Saida'
                  ImageIndex = 0
                  Value = False
                end
                item
                  Description = 'Entrada'
                  Value = True
                end>
              Visible = False
              HeaderAlignmentHorz = taCenter
              Width = 55
            end
            object tvNFeTipoDoc: TcxGridDBColumn
              DataBinding.FieldName = 'TipoDoc'
              Visible = False
              VisibleForCustomization = False
            end
            object tvNFeRecibo: TcxGridDBColumn
              DataBinding.FieldName = 'Recibo'
              Width = 123
            end
            object tvNFeProtocolo: TcxGridDBColumn
              DataBinding.FieldName = 'Protocolo'
              Width = 120
            end
            object tvNFeContingencia: TcxGridDBColumn
              Caption = 'Conting'#234'ncia'
              DataBinding.FieldName = 'Contingencia'
              RepositoryItem = Dados.erSimNao
              OnCustomDrawCell = tvNFeContingenciaCustomDrawCell
              HeaderAlignmentHorz = taCenter
              Width = 85
            end
            object tvNFeStatusNF: TcxGridDBColumn
              Caption = 'Status Sefaz'
              DataBinding.FieldName = 'StatusNF'
              HeaderAlignmentHorz = taCenter
              Width = 77
            end
            object tvNFexMotivo: TcxGridDBColumn
              Caption = 'Motivo Sefaz'
              DataBinding.FieldName = 'xMotivo'
              OnGetDisplayText = tvNFexMotivoGetDisplayText
              Width = 261
            end
            object tvNFeChave: TcxGridDBColumn
              DataBinding.FieldName = 'Chave'
              Width = 285
            end
            object tvNFeAmb: TcxGridDBColumn
              Caption = 'Ambiente'
              DataBinding.FieldName = 'tpAmb'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Alignment.Horz = taLeftJustify
              Properties.ImmediateDropDownWhenActivated = True
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Produ'#231#227'o'
                  ImageIndex = 0
                  Value = 1
                end
                item
                  Description = 'Homologa'#231#227'o'
                  Value = 2
                end>
              Width = 109
            end
            object tvNFeStatusCanc: TcxGridDBColumn
              Caption = 'Cancelamento'
              DataBinding.FieldName = 'StatusCanc'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = dmImagens.im16
              Properties.Items = <
                item
                  Description = 'Em andamento '
                  ImageIndex = 97
                  Value = 1
                end
                item
                  Description = 'Em andamento '
                  ImageIndex = 97
                  Value = 2
                end
                item
                  Description = 'Cancelamento Rejeitado'
                  ImageIndex = 5
                  Value = 3
                end
                item
                  Description = 'Erro de cancelamento'
                  ImageIndex = 5
                  Value = 4
                end
                item
                  Description = 'Cancelado com Sucesso'
                  ImageIndex = 3
                  Value = 5
                end
                item
                end>
              Width = 180
            end
            object tvNFeColumn1: TcxGridDBColumn
              Caption = 'Inutiliza'#231#227'o'
              DataBinding.FieldName = 'StatusInut'
              PropertiesClassName = 'TcxImageComboBoxProperties'
              Properties.Images = dmImagens.im16
              Properties.Items = <
                item
                  Description = 'Inutilizar'
                  ImageIndex = 97
                  Value = 1
                end
                item
                  Description = 'Rejeitado'
                  ImageIndex = 5
                  Value = 2
                end
                item
                  Description = 'Erro'
                  ImageIndex = 5
                  Value = 3
                end
                item
                  Description = 'Inutilizado'
                  ImageIndex = 4
                  Value = 4
                end
                item
                end>
              Width = 125
            end
          end
          object glNFe: TcxGridLevel
            GridView = tvNFe
          end
        end
        object bdcGrid: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 752
          Height = 44
          Align = dalTop
          BarManager = BarMgr
          SunkenBorder = True
          UseOwnSunkenBorder = True
        end
      end
      object tsInativo: TcxTabSheet
        Caption = 'tsInativo'
        ImageIndex = 2
        object panInativo: TLMDSimplePanel
          AlignWithMargins = True
          Left = 0
          Top = 49
          Width = 752
          Height = 441
          Hint = ''
          Margins.Left = 0
          Margins.Top = 5
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Bevel.Mode = bmStandard
          Color = clWhite
          TabOrder = 0
          object ScrollBox2: TScrollBox
            Left = 1
            Top = 1
            Width = 750
            Height = 439
            Margins.Left = 15
            Margins.Top = 15
            Margins.Right = 15
            Margins.Bottom = 15
            Align = alClient
            BorderStyle = bsNone
            TabOrder = 0
            object LMDHTMLLabel1: TLMDHTMLLabel
              AlignWithMargins = True
              Left = 15
              Top = 191
              Width = 694
              Height = 327
              Margins.Left = 15
              Margins.Top = 0
              Margins.Right = 15
              Margins.Bottom = 15
              Align = alTop
              AutoSize = True
              Bevel.Mode = bmCustom
              Alignment = taLeftJustify
              Caption = 
                'N'#227'o. Esses s'#227'o documentos fiscais utilizados em situa'#231#245'es difere' +
                'ntes. Veja abaixo algumas das principais caracter'#237'sticas que dif' +
                'erenciam um do outro:<br><br>'#13#10'<strong>NFC-e: </strong><br>'#13#10'- E' +
                'xclusivo para venda presencial;<br>'#13#10'- Exclusivo para venda ao c' +
                'onsumidor final (comprador n'#227'o pode ser uma empresa que v'#225' reven' +
                'der o produto);<br>'#13#10'- N'#227'o precisa cadastrar o cliente. Isso '#233' o' +
                'pcional. E se o cliente desejar pode colocar apenas o CPF na not' +
                'a;<br>'#13#10'- Documento exclusivo para vendas.<br>'#13#10'- Exemplos de us' +
                'o: Caixa de supermercado, papelaria, material de constru'#231#227'o, pad' +
                'aria, loja de roupas ...<br>'#13#10'<br>'#13#10#13#10'<strong>NF-e</strong><br>'#13 +
                #10'- Comprador n'#227'o precisa estar presente na loja;<br>'#13#10'- Permite ' +
                'que o comprador seja uma empresa que vai revender o produto;<br>' +
                #13#10'- Exige o cadastro completo do cliente;<br>'#13#10'- Al'#233'm de vendas,' +
                ' pode ser usada para devolu'#231#245'es e outras situa'#231#245'es de movimenta'#231 +
                #227'o de estoque/produtos;<br>'#13#10'- Exemplos: E-commerce, distribuido' +
                'ras, televendas, etc ...<br>'#13#10'<br>'#13#10'* O NEX tem o recurso de emi' +
                'ss'#227'o de NFC-e mas ainda n'#227'o faz a emiss'#227'o de NF-e. Estamos traba' +
                'lhando nisso mas, por enquanto, n'#227'o temos uma previs'#227'o de quando' +
                ' estar'#225' pronto.'#13#10
              Layout = tlTop
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
              ExplicitWidth = 719
            end
            object cxLabel10: TcxLabel
              AlignWithMargins = True
              Left = 15
              Top = 20
              Margins.Left = 15
              Margins.Top = 20
              Margins.Right = 15
              Margins.Bottom = 0
              Align = alTop
              Caption = 'O que '#233' a NFC-e?'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold, fsUnderline]
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Width = 703
            end
            object cxLabel11: TcxLabel
              AlignWithMargins = True
              Left = 15
              Top = 41
              Margins.Left = 15
              Margins.Top = 0
              Margins.Right = 15
              Align = alTop
              Caption = 
                'A NFC-e ou Nota Fiscal ao Consumidor Eletr'#244'nica, '#233' uma substitut' +
                'a para o cupom fiscal tradicional que '#233' emitido atrav'#233's de uma i' +
                'mpressora fiscal (ECF) quando se faz uma compra no mercado, na f' +
                'arm'#225'cia, papelaria, etc. A grande diferen'#231'a para o cupom tradici' +
                'onal '#233' que a NFC-e '#233' um documento eletr'#244'nico transmitido via int' +
                'ernet para a secretaria da fazenda (SEFAZ) do seu estado e que N' +
                #195'O exige uma impressora fiscal (equipamento caro e de manuten'#231#227'o' +
                ' complexa usado na emiss'#227'o do cupom fiscal tradicional). A NFC-e' +
                ' pode ser consultada via internet pelo cliente e sua impress'#227'o '#233 +
                ' opcional podendo apenas ser enviada por e-mail ao cliente (se a' +
                'ssim ele desejar). '
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Width = 703
            end
            object cxLabel12: TcxLabel
              AlignWithMargins = True
              Left = 15
              Top = 170
              Margins.Left = 15
              Margins.Top = 20
              Margins.Right = 15
              Margins.Bottom = 0
              Align = alTop
              Caption = 'NFC-e '#233' a mesma coisa que NF-e?'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold, fsUnderline]
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Width = 703
            end
          end
        end
        object bdcInativo: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 752
          Height = 44
          Align = dalTop
          BarManager = BarMgr
          SunkenBorder = True
          UseOwnSunkenBorder = True
        end
      end
    end
  end
  inherited BarMgr: TdxBarManager
    Left = 144
    Top = 192
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      DockControl = bdcGrid
      DockedDockControl = bdcGrid
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmEnviarEmail'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmImprimirDanfe'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmDetalhesVenda'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmExportXMLS'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmSalvarDanfe'
        end
        item
          Visible = True
          ItemName = 'cmConfigurar'
        end>
      UseOwnFont = True
      UseRestSpace = True
    end
    object BarMgrBar2: TdxBar [1]
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'barInativo'
      CaptionButtons = <>
      DockControl = bdcInativo
      DockedDockControl = bdcInativo
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 998
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmAtivarNFCe3'
        end
        item
          Visible = True
          ItemName = 'cmRemoverNF'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    inherited cmNovo: TdxBarLargeButton
      ImageIndex = 0
    end
    inherited cmEditar: TdxBarLargeButton
      ImageIndex = 20
    end
    inherited cmApagar: TdxBarLargeButton
      ImageIndex = 12
    end
    inherited cmImprimir: TdxBarLargeButton
      LargeImageIndex = 7
      ShowCaption = False
    end
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    object cmSalvarDanfe: TdxBarLargeButton
      Caption = 'Salvar'
      Category = 0
      Hint = 'Salvar'
      Visible = ivAlways
      LargeImageIndex = 41
      OnClick = cmSalvarDanfeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      ShowCaption = False
    end
    object cmImprimirDanfe: TdxBarLargeButton
      Caption = 'Imprimir Danfe'
      Category = 0
      Hint = 'Imprimir Danfe'
      Visible = ivAlways
      LargeImageIndex = 7
      OnClick = cmImprimirDanfeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmEnviarEmail: TdxBarLargeButton
      Caption = 'Enviar por E-mail'
      Category = 0
      Hint = 'Enviar por E-mail'
      Visible = ivAlways
      LargeImageIndex = 153
      OnClick = cmEnviarEmailClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmConfigurar: TdxBarLargeButton
      Align = iaRight
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivAlways
      LargeImageIndex = 124
      OnClick = cmConfigurarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      ShowCaption = False
    end
    object cmDetalhesVenda: TdxBarLargeButton
      Caption = 'Ver Venda'
      Category = 0
      Hint = 'Ver Venda'
      Visible = ivAlways
      LargeImageIndex = 163
      OnClick = cmDetalhesVendaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmAtivarNFCe3: TdxBarLargeButton
      Caption = 'Ativar emiss'#227'o de NFC-e'
      Category = 0
      Hint = 'Ativar emiss'#227'o de NFC-e'
      Visible = ivAlways
      LargeImageIndex = 178
      OnClick = cmAtivarNFCe3Click
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmRemoverNF: TdxBarLargeButton
      Align = iaRight
      Caption = 'Remover a op'#231#227'o "Nota Fiscal" do programa NEX'
      Category = 0
      Hint = 'Remover a op'#231#227'o "Nota Fiscal" do programa NEX'
      Visible = ivAlways
      LargeImageIndex = 179
      OnClick = cmRemoverNFClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmXMLs: TdxBarButton
      Caption = 'Salvar XML'#39's'
      Category = 0
      Hint = 'Salvar XML'#39's'
      Style = cxStyle3
      Visible = ivAlways
      OnClick = cmXMLsClick
    end
    object cmVerXMLs: TdxBarButton
      Caption = 'Ver XML'#39's'
      Category = 0
      Hint = 'Ver XML'#39's'
      Style = cxStyle3
      Visible = ivAlways
      OnClick = cmVerXMLsClick
    end
    object cmExportXMLS: TdxBarLargeButton
      Caption = 'Exportar XML'#39's'
      Category = 0
      Hint = 'Exportar XML'#39's'
      Visible = ivAlways
      LargeImageIndex = 180
      OnClick = cmExportXMLSClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 88
    Top = 193
  end
  inherited CP: TdxComponentPrinter
    Left = 136
    Top = 154
  end
  inherited pmLay: TdxBarPopupMenu
    Top = 194
  end
  object Tab: TnxTable
    Database = Dados.db
    FlipOrder = True
    TableName = 'NFE'
    IndexName = 'INumSeq'
    Left = 264
    Top = 144
    object TabNumSeq: TUnsignedAutoIncField
      Alignment = taCenter
      FieldName = 'NumSeq'
    end
    object TabModelo: TStringField
      Alignment = taCenter
      FieldName = 'Modelo'
      Size = 5
    end
    object TabSerie: TStringField
      Alignment = taCenter
      FieldName = 'Serie'
      Size = 5
    end
    object TabNumero: TLongWordField
      Alignment = taCenter
      FieldName = 'Numero'
    end
    object TabChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object TabEntrada: TBooleanField
      Alignment = taCenter
      FieldName = 'Entrada'
    end
    object TabTipoDoc: TByteField
      FieldName = 'TipoDoc'
    end
    object TabDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object TabCFOP: TWordField
      FieldName = 'CFOP'
    end
    object TabTran: TGuidField
      FieldName = 'Tran'
      Size = 38
    end
    object TabRecibo: TStringField
      FieldName = 'Recibo'
    end
    object TabProtocolo: TStringField
      FieldName = 'Protocolo'
    end
    object TabContingencia: TBooleanField
      FieldName = 'Contingencia'
    end
    object TabStatus: TByteField
      Alignment = taLeftJustify
      FieldName = 'Status'
    end
    object TabStatusNF: TIntegerField
      Alignment = taCenter
      FieldName = 'StatusNF'
    end
    object TabXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object TabXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object TabXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object TabXMLtransCont: TnxMemoField
      FieldName = 'XMLtransCont'
      BlobType = ftMemo
    end
    object TabxMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object TabProcessar: TBooleanField
      FieldName = 'Processar'
    end
    object TabIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object TabEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object TabContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object TabProcessarEm: TDateTimeField
      FieldName = 'ProcessarEm'
    end
    object TabValor: TCurrencyField
      FieldName = 'Valor'
    end
    object TabIDTran: TLargeintField
      Alignment = taCenter
      DisplayLabel = 'N.Venda'
      FieldKind = fkLookup
      FieldName = 'IDTran'
      LookupDataSet = Dados.tbTran
      LookupKeyFields = 'UID'
      LookupResultField = 'ID'
      KeyFields = 'Tran'
      Lookup = True
    end
    object TabtpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object TabProtocoloCanc: TStringField
      FieldName = 'ProtocoloCanc'
    end
    object TabStatusCanc: TByteField
      Alignment = taLeftJustify
      FieldName = 'StatusCanc'
    end
    object TabStatusCancNF: TIntegerField
      FieldName = 'StatusCancNF'
    end
    object TabJustCanc: TnxMemoField
      FieldName = 'JustCanc'
      BlobType = ftMemo
    end
    object TabxMotivoCanc: TnxMemoField
      FieldName = 'xMotivoCanc'
      BlobType = ftMemo
    end
    object TabCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object TabCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object TabStatusInut: TByteField
      Alignment = taLeftJustify
      FieldName = 'StatusInut'
    end
    object TabCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object TabEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object TabxmlRetCanc: TnxMemoField
      FieldName = 'xmlRetCanc'
      BlobType = ftMemo
    end
    object TabStatusInutNF: TIntegerField
      FieldName = 'StatusInutNF'
    end
    object TabProtocoloInut: TStringField
      FieldName = 'ProtocoloInut'
    end
    object TabxMotivoInut: TnxMemoField
      FieldName = 'xMotivoInut'
      BlobType = ftMemo
    end
    object TabxmlRetInut: TnxMemoField
      FieldName = 'xmlRetInut'
      BlobType = ftMemo
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 272
    Top = 192
  end
  object SaveDlg: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML|*.xml'
    Left = 400
    Top = 224
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 440
    Top = 120
    PixelsPerInch = 96
    object cxsCanc: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clRed
    end
    object cxsCanc2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsStrikeOut]
      TextColor = clRed
    end
    object cxStyle1: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      TextColor = 8167493
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svFont, svTextColor]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      TextColor = 3164608
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
    end
  end
  object pmXMLs: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmXMLs'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'cmVerXMLs'
      end>
    UseOwnFont = False
    Left = 216
    Top = 299
  end
  object tExp: TnxTable
    ActiveDesigntime = True
    Database = Dados.db
    TableName = 'NFE'
    IndexName = 'ItpAmbDataHora'
    Left = 520
    Top = 219
    object tExpUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tExpNumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tExpModelo: TStringField
      FieldName = 'Modelo'
      Size = 5
    end
    object tExpSerie: TStringField
      FieldName = 'Serie'
      Size = 5
    end
    object tExpNumero: TLongWordField
      FieldName = 'Numero'
    end
    object tExpChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object tExpChaveCont: TStringField
      FieldName = 'ChaveCont'
      Size = 44
    end
    object tExpEntrada: TBooleanField
      FieldName = 'Entrada'
    end
    object tExpTipoDoc: TByteField
      FieldName = 'TipoDoc'
    end
    object tExpDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tExpCFOP: TWordField
      FieldName = 'CFOP'
    end
    object tExpTran: TGuidField
      FieldName = 'Tran'
      Size = 38
    end
    object tExpRecibo: TStringField
      FieldName = 'Recibo'
    end
    object tExpProtocolo: TStringField
      FieldName = 'Protocolo'
    end
    object tExpContingencia: TBooleanField
      FieldName = 'Contingencia'
    end
    object tExpStatus: TByteField
      FieldName = 'Status'
    end
    object tExptpAmb: TByteField
      FieldName = 'tpAmb'
    end
    object tExpStatusNF: TIntegerField
      FieldName = 'StatusNF'
    end
    object tExpXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object tExpXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object tExpXMLtrans: TnxMemoField
      FieldName = 'XMLtrans'
      BlobType = ftMemo
    end
    object tExpXMLtransCont: TnxMemoField
      FieldName = 'XMLtransCont'
      BlobType = ftMemo
    end
    object tExpxMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object tExpProtocoloCanc: TStringField
      FieldName = 'ProtocoloCanc'
    end
    object tExpStatusCanc: TByteField
      FieldName = 'StatusCanc'
    end
    object tExpStatusCancNF: TIntegerField
      FieldName = 'StatusCancNF'
    end
    object tExpJustCanc: TnxMemoField
      FieldName = 'JustCanc'
      BlobType = ftMemo
    end
    object tExpxMotivoCanc: TnxMemoField
      FieldName = 'xMotivoCanc'
      BlobType = ftMemo
    end
    object tExpxmlRetCanc: TnxMemoField
      FieldName = 'xmlRetCanc'
      BlobType = ftMemo
    end
    object tExpCanceladoPor: TStringField
      FieldName = 'CanceladoPor'
      Size = 30
    end
    object tExpCanceladoEm: TDateTimeField
      FieldName = 'CanceladoEm'
    end
    object tExpStatusInut: TByteField
      FieldName = 'StatusInut'
    end
    object tExpStatusInutNF: TIntegerField
      FieldName = 'StatusInutNF'
    end
    object tExpProtocoloInut: TStringField
      FieldName = 'ProtocoloInut'
    end
    object tExpxMotivoInut: TnxMemoField
      FieldName = 'xMotivoInut'
      BlobType = ftMemo
    end
    object tExpxmlRetInut: TnxMemoField
      FieldName = 'xmlRetInut'
      BlobType = ftMemo
    end
    object tExpCPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object tExpEmail: TStringField
      FieldName = 'Email'
      Size = 100
    end
    object tExpProcessar: TBooleanField
      FieldName = 'Processar'
    end
    object tExpIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tExpEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tExpContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object tExpProcessarEm: TDateTimeField
      FieldName = 'ProcessarEm'
    end
    object tExpValor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object SaveDlg2: TSaveDialog
    DefaultExt = 'zip'
    Filter = 'ZIP|*.zip'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 280
    Top = 256
  end
  object TimerSelZip: TTimer
    Enabled = False
    OnTimer = TimerSelZipTimer
    Left = 368
    Top = 264
  end
end
