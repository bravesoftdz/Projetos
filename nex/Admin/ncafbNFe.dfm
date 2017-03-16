inherited fbNFe: TfbNFe
  Caption = 'fbNFe'
  ClientHeight = 651
  ClientWidth = 913
  ExplicitWidth = 929
  ExplicitHeight = 690
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TLMDSimplePanel
    Width = 913
    Height = 651
    OnResize = panPriResize
    ExplicitWidth = 913
    ExplicitHeight = 651
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 913
      Height = 3
      Visible = False
      ExplicitWidth = 913
      ExplicitHeight = 3
    end
    object Paginas: TcxPageControl
      Left = 0
      Top = 3
      Width = 913
      Height = 648
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
      ClientRectBottom = 648
      ClientRectRight = 913
      ClientRectTop = 24
      object tsGrid: TcxTabSheet
        Caption = 'tsGrid'
        ImageIndex = 0
        object gridNFe: TcxGrid
          AlignWithMargins = True
          Left = 0
          Top = 49
          Width = 913
          Height = 575
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
          OnResize = gridNFeResize
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
            DataController.DataModeController.GridMode = True
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
              Width = 87
            end
            object tvNFeTran: TcxGridDBColumn
              Caption = 'Transa'#231#227'o'
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
              Caption = 'R$ Produtos'
              DataBinding.FieldName = 'Valor'
              HeaderAlignmentHorz = taCenter
              Styles.OnGetContentStyle = tvNFeDataHoraStylesGetContentStyle
              Width = 82
            end
            object tvNFeTotalNF: TcxGridDBColumn
              Caption = 'Total NF'
              DataBinding.FieldName = 'TotalNF'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              HeaderAlignmentHorz = taCenter
              Width = 78
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
            object tvNFeRecibo: TcxGridDBColumn
              DataBinding.FieldName = 'Recibo'
              Width = 123
            end
            object tvNFeProtocolo: TcxGridDBColumn
              DataBinding.FieldName = 'Protocolo'
              Width = 120
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
              OnGetDisplayText = tvNFeChaveGetDisplayText
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
            object tvNFeInut: TcxGridDBColumn
              Caption = 'Inutiliza'#231#227'o'
              DataBinding.FieldName = 'StatusInut'
              PropertiesClassName = 'TcxImageComboBoxProperties'
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
          Width = 913
          Height = 44
          Align = dalTop
          BarManager = BarMgr
          SunkenBorder = True
          UseOwnSunkenBorder = True
        end
        object btnTools: TcxButton
          Left = 798
          Top = 57
          Width = 106
          Height = 25
          Caption = 'Ferramentas'
          DropDownMenu = pmTools
          Kind = cxbkDropDown
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.ImageIndex = 96
          OptionsImage.Layout = blGlyphRight
          PopupMenu = FrmPri.pmRegistro
          TabOrder = 2
        end
        object LMDPanel1: TLMDSimplePanel
          Left = 128
          Top = 136
          Width = 465
          Height = 49
          Hint = ''
          Bevel.Mode = bmCustom
          TabOrder = 3
          Visible = False
          object btnCCe: TcxButton
            Left = 7
            Top = 8
            Width = 111
            Height = 38
            Caption = 'Criar Carta de Corre'#231#227'o'
            LookAndFeel.Kind = lfFlat
            OptionsImage.ImageIndex = 202
            OptionsImage.Images = dmImagens.im32
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.AllowAllUp = True
            SpeedButtonOptions.Flat = True
            SpeedButtonOptions.Transparent = True
            TabOrder = 0
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = btnCCeClick
          end
          object btnImprimirDanfe: TcxButton
            Left = 124
            Top = 3
            Width = 103
            Height = 38
            Caption = 'Imprimir Danfe'
            LookAndFeel.Kind = lfFlat
            OptionsImage.ImageIndex = 7
            OptionsImage.Images = dmImagens.im32
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.AllowAllUp = True
            SpeedButtonOptions.Flat = True
            SpeedButtonOptions.Transparent = True
            TabOrder = 1
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = cmImprimirDanfeClick
          end
          object btnEmail: TcxButton
            Left = 233
            Top = 8
            Width = 103
            Height = 38
            Caption = 'Enviar NF'#13#10'por E-mail'
            LookAndFeel.Kind = lfFlat
            OptionsImage.ImageIndex = 153
            OptionsImage.Images = dmImagens.im32
            SpeedButtonOptions.CanBeFocused = False
            SpeedButtonOptions.AllowAllUp = True
            SpeedButtonOptions.Flat = True
            SpeedButtonOptions.Transparent = True
            TabOrder = 2
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            WordWrap = True
            OnClick = cmEnviarEmailClick
          end
        end
      end
      object tsInativo: TcxTabSheet
        Caption = 'tsInativo'
        ImageIndex = 2
        object panInativo: TLMDSimplePanel
          AlignWithMargins = True
          Left = 0
          Top = 49
          Width = 913
          Height = 575
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
            Width = 911
            Height = 573
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
              Top = 140
              Width = 852
              Height = 293
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
                'erenciam um do outro:<br><br>'#13#10'<strong>NF-e</strong><br>'#13#10'- Comp' +
                'rador n'#227'o precisa estar presente na loja;<br>'#13#10'- Permite que o c' +
                'omprador seja uma empresa que vai revender o produto;<br>'#13#10'- Exi' +
                'ge o cadastro completo do cliente;<br>'#13#10'- Al'#233'm de vendas, pode s' +
                'er usada para devolu'#231#245'es e outras situa'#231#245'es de movimenta'#231#227'o de e' +
                'stoque/produtos;<br>'#13#10'- Exemplos: E-commerce, distribuidoras, te' +
                'levendas, etc ...<br>'#13#10'<br>'#13#10'<strong>NFC-e: </strong><br>'#13#10'- Exc' +
                'lusivo para venda presencial;<br>'#13#10'- Exclusivo para venda ao con' +
                'sumidor final (comprador n'#227'o pode ser uma empresa que v'#225' revende' +
                'r o produto);<br>'#13#10'- N'#227'o precisa cadastrar o cliente. Isso '#233' opc' +
                'ional. E se o cliente desejar pode colocar apenas o CPF na nota;' +
                '<br>'#13#10'- Documento exclusivo para vendas.<br>'#13#10'- Exemplos de uso:' +
                ' Caixa de supermercado, papelaria, material de constru'#231#227'o, padar' +
                'ia, loja de roupas ...<br>'#13#10'<br>'#13#10
              Layout = tlTop
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentFont = False
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
              Caption = 'O que '#233' a NF-e?'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.TextStyle = [fsBold, fsUnderline]
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Width = 881
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
                'A Nota Fiscal Eletr'#244'nica, ou NF-e, '#233' um documento emitido e arma' +
                'zenado eletronicamente, de exist'#234'ncia apenas digital, com o intu' +
                'ito de documentar opera'#231#245'es comerciais. Sua validade jur'#237'dica '#233' ' +
                'garantida pela assinatura digital do emitente e autoriza'#231#227'o de u' +
                'so concedida pela administra'#231#227'o tribut'#225'ria do estado do contribu' +
                'inte (SEFAZ).'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.WordWrap = True
              Width = 881
            end
            object cxLabel12: TcxLabel
              AlignWithMargins = True
              Left = 15
              Top = 119
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
              Width = 881
            end
          end
        end
        object bdcInativo: TdxBarDockControl
          Left = 0
          Top = 0
          Width = 913
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
    Left = 352
    Top = 376
    inherited BarMgrBar1: TdxBar
      DockControl = bdcGrid
      DockedDockControl = bdcGrid
      Font.Charset = ANSI_CHARSET
      Font.Height = -13
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmImprimirDanfe'
        end
        item
          Visible = True
          ItemName = 'cmEmail'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmCCe'
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
          ItemName = 'cmRelVendas'
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
          ItemName = 'cmAtivarNFe'
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
      OnClick = cmSalvarDanfeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 41
      ShowCaption = False
    end
    object cmEnviarEmail: TdxBarLargeButton
      Caption = 'E-mail NF'
      Category = 0
      Hint = 'E-mail NF'
      Visible = ivAlways
      OnClick = cmEnviarEmailClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 153
      SyncImageIndex = False
      ImageIndex = -1
    end
    object cmConfigurar: TdxBarLargeButton
      Align = iaRight
      Caption = 'Configurar'
      Category = 0
      Hint = 'Configurar'
      Visible = ivAlways
      OnClick = cmConfigurarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 124
      ShowCaption = False
    end
    object cmDetalhesVenda: TdxBarLargeButton
      Caption = 'Ver Transa'#231#227'o'
      Category = 0
      Hint = 'Ver Transa'#231#227'o'
      Visible = ivAlways
      OnClick = cmDetalhesVendaClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 163
    end
    object cmAtivarNFe: TdxBarLargeButton
      Caption = 'Ativar emiss'#227'o de NF-e'
      Category = 0
      Hint = 'Ativar emiss'#227'o de NF-e'
      Visible = ivAlways
      OnClick = cmAtivarNFeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 198
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
      OnClick = cmExportXMLSClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 180
    end
    object cmProtEnvio: TdxBarButton
      Caption = 'Obter protocolo e XML de envio'
      Category = 0
      Hint = 'Obter protocolo e XML de envio'
      Style = cxStyle3
      Visible = ivNever
      OnClick = cmProtEnvioClick
    end
    object cmRelVendas: TdxBarLargeButton
      Caption = 'Relat'#243'rio de Vendas'
      Category = 0
      Hint = 
        'Use essa op'#231#227'o para enviar um relat'#243'rio de vendas para seu conta' +
        'dor.'
      Visible = ivAlways
      OnClick = cmRelVendasClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 187
    end
    object cmInutilizarNFCE: TdxBarButton
      Caption = 'Inutilizar NF-e'
      Category = 0
      Hint = 'Inutilizar NF-e'
      Style = FrmPri.cxStyle57
      Visible = ivAlways
      OnClick = cmInutilizarNFCEClick
    end
    object cmCCe: TdxBarControlContainerItem
      Caption = 'Criar Carta de Corre'#231#227'o'
      Category = 0
      Hint = 'Criar Carta de Corre'#231#227'o'
      Visible = ivAlways
      Control = btnCCe
    end
    object cmImprimirDanfe: TdxBarControlContainerItem
      Caption = 'Imprimir Danfe'
      Category = 0
      Hint = 'Imprimir Danfe'
      Visible = ivAlways
      Control = btnImprimirDanfe
    end
    object cmEmail: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = btnEmail
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 320
    Top = 369
  end
  inherited CP: TdxComponentPrinter
    Left = 120
    Top = 426
  end
  inherited dlgExp: TSaveDialog
    Left = 312
    Top = 329
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 416
    Top = 370
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 496
    Top = 396
  end
  object Tab: TnxTable
    Database = Dados.db
    FlipOrder = True
    TableName = 'NFE'
    IndexName = 'ITipoDocNumSeq'
    Left = 600
    Top = 392
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
    object TabIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object TabEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object TabContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
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
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabChaveCont: TStringField
      FieldName = 'ChaveCont'
      Size = 44
    end
    object TabLogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object TabLogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object TabConsultouChave: TBooleanField
      FieldName = 'ConsultouChave'
    end
    object TabTotalNF: TCurrencyField
      FieldName = 'TotalNF'
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 568
    Top = 392
  end
  object SaveDlg: TSaveDialog
    DefaultExt = 'xml'
    Filter = 'XML|*.xml'
    Left = 408
    Top = 320
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 224
    Top = 408
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
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'cmProtEnvio'
      end>
    UseOwnFont = False
    OnPopup = pmXMLsPopup
    Left = 280
    Top = 259
  end
  object tExp: TnxTable
    Database = Dados.db
    Filtered = True
    OnCalcFields = tExpCalcFields
    OnFilterRecord = tExpFilterRecord
    TableName = 'NFE'
    IndexName = 'ITipoDoctpAmbDataHora'
    Left = 536
    Top = 291
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
      DisplayFormat = 'dd/mm/yyyy hh:mm'
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
    object tExpIncluidoEm: TDateTimeField
      FieldName = 'IncluidoEm'
    end
    object tExpEmitidoEm: TDateTimeField
      FieldName = 'EmitidoEm'
    end
    object tExpContingenciaEM: TDateTimeField
      FieldName = 'ContingenciaEM'
    end
    object tExpValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tExpConsultouChave: TBooleanField
      FieldName = 'ConsultouChave'
    end
    object tExpLogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object tExpLogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object tExpNumTran: TIntegerField
      FieldKind = fkLookup
      FieldName = 'NumTran'
      LookupDataSet = Dados.tbTran
      LookupKeyFields = 'UID'
      LookupResultField = 'ID'
      KeyFields = 'Tran'
      Lookup = True
    end
    object tExpTotalNF: TCurrencyField
      FieldName = 'TotalNF'
    end
    object tExpCancelou: TBooleanField
      FieldKind = fkCalculated
      FieldName = 'Cancelou'
      Calculated = True
    end
  end
  object SaveDlg2: TSaveDialog
    DefaultExt = 'zip'
    Filter = 'ZIP|*.zip'
    Options = [ofHideReadOnly, ofPathMustExist, ofEnableSizing]
    Left = 248
    Top = 320
  end
  object TimerSelZip: TTimer
    Enabled = False
    OnTimer = TimerSelZipTimer
    Left = 376
    Top = 344
  end
  object OpenDlg: TOpenDialog
    Filter = 'Arquivos XML|*.XML'
    Title = 'Log de envio de lote "env-sinc-lot"'
    Left = 120
    Top = 304
  end
  object repVen: TfrxReport
    Version = '5.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42356.578277106500000000
    ReportOptions.LastChange = 42356.633051643490000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 600
    Top = 299
    Datasets = <
      item
        DataSet = Dados.dbConfig
        DataSetName = 'dbConfig'
      end
      item
        DataSet = dbRel
        DataSetName = 'dbRel'
      end
      item
        DataSet = dbVen
        DataSetName = 'dbVen'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        Height = 100.708720000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Page: TfrxMemoView
          Left = 472.441250000000000000
          Top = 41.559060000000000000
          Width = 264.567100000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'P'#225'gina [Page#] de [TotalPages#]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          Top = 41.779530000000000000
          Width = 442.205010000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Vendas realizadas entre [dbRel."Periodo"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 145.322928500000000000
          Top = 1.338590000000000000
          Width = 449.764070000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbRel."NomeLoja"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Align = baWidth
          Top = 72.708720000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          Align = baWidth
          Top = 100.708720000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo6: TfrxMemoView
          Left = 1.118120000000000000
          Top = 72.472480000000000000
          Width = 158.740260000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Data e Hora')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 163.519790000000000000
          Top = 73.252010000000000000
          Width = 136.063080000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Num.Transa'#231#227'o')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 303.362400000000000000
          Top = 73.252010000000000000
          Width = 102.047310000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'N'#250'm. NF')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 410.189240000000000000
          Top = 73.252010000000000000
          Width = 170.078850000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Produtos')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 584.606680000000000000
          Top = 73.252010000000000000
          Width = 151.181200000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total NF')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        Height = 30.236240000000000000
        ParentFont = False
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        DataSet = dbVen
        DataSetName = 'dbVen'
        RowCount = 0
        object dbVenDataHora: TfrxMemoView
          Width = 158.740260000000000000
          Height = 26.456710000000000000
          DataField = 'DataHora'
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVen."DataHora"]')
          ParentFont = False
        end
        object dbVenNumTran: TfrxMemoView
          Left = 162.385900000000000000
          Width = 136.063080000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbVen."NumTran"]')
          ParentFont = False
        end
        object dbVenNumero: TfrxMemoView
          Left = 302.944960000000000000
          Width = 102.047310000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dbVen."Numero"]')
          ParentFont = False
        end
        object dbVenValor: TfrxMemoView
          Left = 410.078740160000000000
          Width = 170.078850000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVen."Valor"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 584.692913390000000000
          Width = 151.181200000000000000
          Height = 26.456692910000000000
          DataField = 'TotalNF'
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[dbVen."TotalNF"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        PrintOnLastPage = False
        object Line2: TfrxLineView
          Align = baWidth
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 272.126160000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 0.559059999999988100
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Left = 410.078740160000000000
          Top = 4.559059999999988000
          Width = 170.078740160000000000
          Height = 26.456692910000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVen."Valor">,MasterData1)]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '%2.2m'
              Kind = fkNumeric
            end
            item
            end>
        end
        object Line4: TfrxLineView
          Align = baWidth
          Top = 35.795300000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Top = 4.535433070000010000
          Width = 264.567100000000000000
          Height = 26.456692910000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)] vendas realizadas')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 584.692913390000000000
          Top = 4.779530000000022000
          Width = 151.181102360000000000
          Height = 26.456692910000000000
          AutoWidth = True
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<dbVen."TotalNF">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object dbVen: TfrxDBDataset
    UserName = 'dbVen'
    CloseDataSource = False
    FieldAliases.Strings = (
      'UID=UID'
      'NumSeq=NumSeq'
      'Modelo=Modelo'
      'Serie=Serie'
      'Numero=Numero'
      'Chave=Chave'
      'ChaveCont=ChaveCont'
      'Entrada=Entrada'
      'TipoDoc=TipoDoc'
      'DataHora=DataHora'
      'CFOP=CFOP'
      'Tran=Tran'
      'Recibo=Recibo'
      'Protocolo=Protocolo'
      'Contingencia=Contingencia'
      'Status=Status'
      'tpAmb=tpAmb'
      'StatusNF=StatusNF'
      'XMLdest=XMLdest'
      'XMLret=XMLret'
      'XMLtrans=XMLtrans'
      'XMLtransCont=XMLtransCont'
      'xMotivo=xMotivo'
      'ProtocoloCanc=ProtocoloCanc'
      'StatusCanc=StatusCanc'
      'StatusCancNF=StatusCancNF'
      'JustCanc=JustCanc'
      'xMotivoCanc=xMotivoCanc'
      'xmlRetCanc=xmlRetCanc'
      'CanceladoPor=CanceladoPor'
      'CanceladoEm=CanceladoEm'
      'StatusInut=StatusInut'
      'StatusInutNF=StatusInutNF'
      'ProtocoloInut=ProtocoloInut'
      'xMotivoInut=xMotivoInut'
      'xmlRetInut=xmlRetInut'
      'CPF=CPF'
      'Email=Email'
      'IncluidoEm=IncluidoEm'
      'EmitidoEm=EmitidoEm'
      'ContingenciaEM=ContingenciaEM'
      'Valor=Valor'
      'ConsultouChave=ConsultouChave'
      'LogEnvio=LogEnvio'
      'LogRec=LogRec'
      'NumTran=NumTran'
      'TotalNF=TotalNF')
    DataSet = tExp
    BCDToCurrency = False
    Left = 688
    Top = 360
  end
  object mtRel: TkbmMemTable
    Active = True
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Periodo'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'NomeLoja'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.72.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 656
    Top = 232
    object mtRelPeriodo: TStringField
      FieldName = 'Periodo'
      Size = 100
    end
    object mtRelNomeLoja: TStringField
      FieldName = 'NomeLoja'
      Size = 100
    end
  end
  object dbRel: TfrxDBDataset
    UserName = 'dbRel'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Periodo=Periodo'
      'NomeLoja=NomeLoja')
    DataSet = mtRel
    BCDToCurrency = False
    Left = 784
    Top = 384
  end
  object TimerSel: TTimer
    Enabled = False
    Interval = 100
    Left = 369
    Top = 302
  end
  object pmTools: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmInutilizarNFCE'
      end>
    UseOwnFont = False
    Left = 496
    Top = 243
  end
  object tCCE: TnxTable
    Database = Dados.db
    TableName = 'CCe'
    IndexName = 'IChaveNumSeq'
    MasterFields = 'Chave'
    MasterSource = DS
    Left = 64
    Top = 243
    object tCCEUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object tCCENumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object tCCEChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object tCCEDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object tCCEtran_uid: TGuidField
      FieldName = 'tran_uid'
      Size = 38
    end
    object tCCEtran_id: TLongWordField
      FieldName = 'tran_id'
    end
    object tCCEnfe_serie: TStringField
      FieldName = 'nfe_serie'
      Size = 5
    end
    object tCCEnfe_numero: TLongWordField
      FieldName = 'nfe_numero'
    end
    object tCCEtpAmbNFE: TByteField
      FieldName = 'tpAmbNFE'
    end
    object tCCETexto: TnxMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object tCCEStatus: TByteField
      FieldName = 'Status'
    end
    object tCCEStatusCCE: TIntegerField
      FieldName = 'StatusCCE'
    end
    object tCCEXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object tCCEXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object tCCExMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object tCCELogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object tCCELogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object tCCEUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
    end
  end
end
