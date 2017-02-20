inherited fbCupom: TfbCupom
  Caption = 'fbCupom'
  ClientHeight = 651
  ClientWidth = 913
  ExplicitWidth = 921
  ExplicitHeight = 682
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
      Properties.ActivePage = tsInativo
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
            object tvNFeInut: TcxGridDBColumn
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
          OptionsImage.Images = dmImagens.im16
          OptionsImage.Layout = blGlyphRight
          PopupMenu = FrmPri.pmRegistro
          TabOrder = 2
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
          object panEstado: TLMDSimplePanel
            Left = 1
            Top = 1
            Width = 911
            Height = 33
            Hint = ''
            NoHandleUpdate = True
            Align = alTop
            Bevel.BorderSides = []
            Bevel.Mode = bmEdge
            Color = clWhite
            TabOrder = 0
            object lbEstado: TcxLabel
              Left = 72
              Top = 0
              Margins.Left = 15
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'S'#227'o Paulo'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = [fsBold]
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              AnchorY = 17
            end
            object lbPromptEstado: TcxLabel
              AlignWithMargins = True
              Left = 15
              Top = 0
              Margins.Left = 15
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Estado: '
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -16
              Style.Font.Name = 'Segoe UI'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              AnchorY = 17
            end
            object lbNaoEsta: TcxLabel
              AlignWithMargins = True
              Left = 167
              Top = 0
              Cursor = crHandPoint
              Margins.Left = 15
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = 'Alterar estado'
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Segoe UI Semibold'
              Style.Font.Style = [fsBold]
              Style.TextColor = clHotLight
              Style.TextStyle = [fsUnderline]
              Style.IsFontAssigned = True
              Properties.Alignment.Vert = taVCenter
              OnClick = lbNaoEstaClick
              AnchorY = 17
            end
          end
          object pagTipo: TcxPageControl
            Left = 1
            Top = 34
            Width = 911
            Height = 540
            Align = alClient
            TabOrder = 1
            Properties.ActivePage = tsSemEstado
            Properties.CustomButtons.Buttons = <>
            ClientRectBottom = 540
            ClientRectRight = 911
            ClientRectTop = 24
            object tsNFCe: TcxTabSheet
              Caption = 'tsNFCe'
              ImageIndex = 0
              object ScrollBox2: TScrollBox
                Left = 0
                Top = 0
                Width = 911
                Height = 516
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
                  Top = 174
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
                    'ras, televendas, etc ...<br>'#13#10'<br>'#13#10
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
                  Width = 881
                end
                object cxLabel12: TcxLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 153
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
            object tsSAT: TcxTabSheet
              Caption = 'tsSAT'
              ImageIndex = 1
              object ScrollBox1: TScrollBox
                Left = 0
                Top = 0
                Width = 911
                Height = 516
                Margins.Left = 15
                Margins.Top = 15
                Margins.Right = 15
                Margins.Bottom = 15
                Align = alClient
                BorderStyle = bsNone
                TabOrder = 0
                object LMDHTMLLabel2: TLMDHTMLLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 191
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
                    'erenciam um do outro:<br><br>'#13#10'<strong>CF-e SAT: </strong><br>'#13#10 +
                    '- Exclusivo para venda presencial;<br>'#13#10'- Exclusivo para venda a' +
                    'o consumidor final (comprador n'#227'o pode ser uma empresa que v'#225' re' +
                    'vender o produto);<br>'#13#10'- N'#227'o precisa cadastrar o cliente. Isso ' +
                    #233' opcional. E se o cliente desejar pode colocar apenas o CPF na ' +
                    'nota;<br>'#13#10'- Documento exclusivo para vendas.<br>'#13#10'- Exemplos de' +
                    ' uso: Caixa de supermercado, papelaria, material de constru'#231#227'o, ' +
                    'padaria, loja de roupas ...<br>'#13#10'<br>'#13#10#13#10'<strong>NF-e</strong><b' +
                    'r>'#13#10'- Comprador n'#227'o precisa estar presente na loja;<br>'#13#10'- Permi' +
                    'te que o comprador seja uma empresa que vai revender o produto;<' +
                    'br>'#13#10'- Exige o cadastro completo do cliente;<br>'#13#10'- Al'#233'm de vend' +
                    'as, pode ser usada para devolu'#231#245'es e outras situa'#231#245'es de movimen' +
                    'ta'#231#227'o de estoque/produtos;<br>'#13#10'- Exemplos: E-commerce, distribu' +
                    'idoras, televendas, etc ...<br>'#13#10'<br>'#13#10
                  Layout = tlTop
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Segoe UI'
                  Font.Style = []
                  ParentFont = False
                end
                object cxLabel1: TcxLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 20
                  Margins.Left = 15
                  Margins.Top = 20
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'O que '#233' o CF-e SAT?'
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
                object cxLabel2: TcxLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 41
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 15
                  Align = alTop
                  Caption = 
                    'O CF-e SAT, ou Cupom Fiscal Eletr'#244'nico do Sistema Autenticador e' +
                    ' Transmissor, '#233' um substituto para o cupom fiscal tradicional qu' +
                    'e '#233' emitido atrav'#233's de uma impressora fiscal (ECF) quando se faz' +
                    ' uma compra no mercado, na farm'#225'cia, papelaria, etc. A grande di' +
                    'feren'#231'a para o cupom tradicional '#233' que o SAT '#233' um documento elet' +
                    'r'#244'nico transmitido via internet para a secretaria da fazenda (SE' +
                    'FAZ) do seu estado e que N'#195'O exige uma impressora fiscal (equipa' +
                    'mento caro e de manuten'#231#227'o complexa usado na emiss'#227'o do cupom fi' +
                    'scal tradicional), mas exige a compra do equipamento SAT. Al'#233'm d' +
                    'e ser mais barato, o equipamento SAT tem ainda um custo total be' +
                    'm menor pois cada loja precisa de apenas um SAT enquanto com as ' +
                    'antigas impressoras de cupom fiscal era necess'#225'rio uma por caixa' +
                    '. O CF-e SAT pode ser consultado via internet pelo cliente no si' +
                    'te da SEFAZ-SP.'
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
                object cxLabel3: TcxLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 170
                  Margins.Left = 15
                  Margins.Top = 20
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'CF-e SAT '#233' a mesma coisa que NF-e?'
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
            object tsNenhum: TcxTabSheet
              Caption = 'tsNenhum'
              ImageIndex = 2
              object ScrollBox3: TScrollBox
                Left = 0
                Top = 0
                Width = 911
                Height = 516
                Margins.Left = 15
                Margins.Top = 15
                Margins.Right = 15
                Margins.Bottom = 15
                Align = alClient
                BorderStyle = bsNone
                TabOrder = 0
                object cxLabel6: TcxLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 50
                  Margins.Left = 15
                  Margins.Top = 5
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 
                    'Seu estado n'#227'o disponibiliza a op'#231#227'o de emiss'#227'o de Cupom Fiscal ' +
                    'Eletr'#244'nico.'
                  ParentColor = False
                  ParentFont = False
                  Style.Color = clWhite
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -16
                  Style.Font.Name = 'Segoe UI Semibold'
                  Style.Font.Style = [fsBold]
                  Style.TextColor = clRed
                  Style.TextStyle = [fsBold]
                  Style.IsFontAssigned = True
                  Properties.WordWrap = True
                  Width = 881
                end
                object cxLabel7: TcxLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 75
                  Margins.Left = 15
                  Margins.Top = 0
                  Margins.Right = 15
                  Align = alTop
                  Caption = 
                    'Infelizmente os estados de Santa Catarina e Esp'#237'rito Santo ainda' +
                    ' n'#227'o aderirem '#224' emiss'#227'o do cupom fiscal eletr'#244'nico (Ex: NFC-e ou' +
                    ' SAT) conforme j'#225' fizeram os outros estados brasileiros. Nesses ' +
                    'estados a '#250'nica op'#231#227'o '#233' emitir o cupom fiscal tradicional. O NEX' +
                    ' n'#227'o faz a emiss'#227'o de cupom fiscal tradicional (N'#195'O eletr'#244'nico) ' +
                    'e, por enquanto, n'#227'o h'#225' planejamento de adicionar essa fun'#231#227'o ao' +
                    ' programa. '
                  ParentFont = False
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -16
                  Style.Font.Name = 'Segoe UI'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  Properties.WordWrap = True
                  Width = 881
                end
                object cxLabel8: TcxLabel
                  AlignWithMargins = True
                  Left = 15
                  Top = 20
                  Margins.Left = 15
                  Margins.Top = 20
                  Margins.Right = 15
                  Margins.Bottom = 0
                  Align = alTop
                  Caption = 'Cupom Fiscal Eletr'#244'nico'
                  ParentColor = False
                  ParentFont = False
                  Style.Color = clWhite
                  Style.Font.Charset = ANSI_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -16
                  Style.Font.Name = 'Segoe UI Semibold'
                  Style.Font.Style = [fsBold]
                  Style.TextColor = clBlack
                  Style.TextStyle = [fsBold, fsUnderline]
                  Style.IsFontAssigned = True
                  Properties.WordWrap = True
                  Width = 881
                end
              end
            end
            object tsSemEstado: TcxTabSheet
              BorderWidth = 15
              Caption = 'Estado'
              ImageIndex = 3
              object cxLabel4: TcxLabel
                AlignWithMargins = True
                Left = 0
                Top = 5
                Margins.Left = 0
                Margins.Top = 5
                Margins.Right = 0
                Margins.Bottom = 7
                Align = alTop
                Caption = 'Selecione o seu Estado'
                ParentFont = False
                Style.Font.Charset = ANSI_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -16
                Style.Font.Name = 'Segoe UI Semibold'
                Style.Font.Style = [fsBold]
                Style.TextStyle = [fsBold, fsUnderline]
                Style.IsFontAssigned = True
                Properties.Alignment.Horz = taLeftJustify
                Properties.Alignment.Vert = taVCenter
                AnchorY = 18
              end
              object cxLabel5: TcxLabel
                Left = 0
                Top = 37
                Align = alTop
                Caption = 
                  'O NEX faz a emiss'#227'o dos documentos fiscais NFC-e, CF-e SAT e NF-' +
                  'e. '#201' necess'#225'rio selecionar seu estado para que seja exibido a op' +
                  #231#227'o correta para sua empresa.'
                ParentFont = False
                Properties.WordWrap = True
                Width = 881
              end
              object LMDSimplePanel1: TLMDSimplePanel
                Left = 0
                Top = 75
                Width = 881
                Height = 411
                Hint = ''
                Align = alClient
                Bevel.Mode = bmCustom
                ParentColor = True
                TabOrder = 2
                object LMDSimplePanel2: TLMDSimplePanel
                  Left = 0
                  Top = 0
                  Width = 320
                  Height = 411
                  Hint = ''
                  Align = alLeft
                  Bevel.Mode = bmCustom
                  ParentColor = True
                  TabOrder = 0
                  object edEstado: TcxImageComboBox
                    AlignWithMargins = True
                    Left = 0
                    Top = 15
                    Margins.Left = 0
                    Margins.Top = 15
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alTop
                    ParentFont = False
                    Properties.ImmediateDropDownWhenActivated = True
                    Properties.ImmediatePost = True
                    Properties.ImmediateUpdateText = True
                    Properties.Items = <
                      item
                        Description = 'Acre'
                        ImageIndex = 0
                        Value = 'AC'
                      end
                      item
                        Description = 'Alagoas'
                        Value = 'AL'
                      end
                      item
                        Description = 'Amap'#225
                        Value = 'AP'
                      end
                      item
                        Description = 'Amazonas'
                        Value = 'AM'
                      end
                      item
                        Description = 'Bahia'
                        Value = 'BA'
                      end
                      item
                        Description = 'Cear'#225
                        Value = 'CE'
                      end
                      item
                        Description = 'Distrito Federal'
                        Value = 'DF'
                      end
                      item
                        Description = 'Esp'#237'rito Santo'
                        Value = 'ES'
                      end
                      item
                        Description = 'Goi'#225's'
                        Value = 'GO'
                      end
                      item
                        Description = 'Maranh'#227'o'
                        Value = 'MA'
                      end
                      item
                        Description = 'Mato Grosso'
                        Value = 'MT'
                      end
                      item
                        Description = 'Mato Grosso do Sul'
                        Value = 'MS'
                      end
                      item
                        Description = 'Minas Gerais'
                        Value = 'MG'
                      end
                      item
                        Description = 'Par'#225
                        Value = 'PA'
                      end
                      item
                        Description = 'Para'#237'ba'
                        Value = 'PB'
                      end
                      item
                        Description = 'Paran'#225
                        Value = 'PR'
                      end
                      item
                        Description = 'Pernambuco'
                        Value = 'PE'
                      end
                      item
                        Description = 'Piau'#237
                        Value = 'PI'
                      end
                      item
                        Description = 'Rio de Janeiro'
                        Value = 'RJ'
                      end
                      item
                        Description = 'Rio Grande do Norte'
                        Value = 'RN'
                      end
                      item
                        Description = 'Rio Grande do Sul'
                        Value = 'RS'
                      end
                      item
                        Description = 'Rond'#244'nia'
                        Value = 'RO'
                      end
                      item
                        Description = 'Roraima'
                        Value = 'RR'
                      end
                      item
                        Description = 'Santa Catarina'
                        Value = 'SC'
                      end
                      item
                        Description = 'S'#227'o Paulo'
                        Value = 'SP'
                      end
                      item
                        Description = 'Sergipe'
                        Value = 'SE'
                      end
                      item
                        Description = 'Tocantins'
                        Value = 'TO'
                      end>
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -16
                    Style.Font.Name = 'Segoe UI'
                    Style.Font.Style = [fsBold]
                    Style.HotTrack = False
                    Style.StyleController = FrmPri.escFlat
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    Width = 320
                  end
                  object LMDSimplePanel4: TLMDSimplePanel
                    AlignWithMargins = True
                    Left = 0
                    Top = 59
                    Width = 320
                    Height = 30
                    Hint = ''
                    Margins.Left = 0
                    Margins.Top = 15
                    Margins.Right = 0
                    Margins.Bottom = 0
                    Align = alTop
                    Bevel.Mode = bmCustom
                    ParentColor = True
                    TabOrder = 1
                    object cxButton1: TcxButton
                      Left = 0
                      Top = 0
                      Width = 81
                      Height = 30
                      Cursor = crHandPoint
                      Align = alLeft
                      Caption = 'Ok'
                      Default = True
                      LookAndFeel.Kind = lfFlat
                      LookAndFeel.NativeStyle = False
                      ModalResult = 1
                      TabOrder = 0
                      Font.Charset = ANSI_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -13
                      Font.Name = 'Segoe UI'
                      Font.Style = []
                      ParentFont = False
                      OnClick = cxButton1Click
                    end
                  end
                end
              end
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
          ItemName = 'cmAtivarNFCe'
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
    object cmAtivarNFCe: TdxBarLargeButton
      Caption = 'Ativar emiss'#227'o de cupom fiscal eletr'#244'nico'
      Category = 0
      Enabled = False
      Hint = 'Ativar emiss'#227'o de cupom fiscal eletr'#244'nico'
      Visible = ivAlways
      LargeImageIndex = 178
      OnClick = cmAtivarNFCeClick
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
      LargeImageIndex = 187
      OnClick = cmRelVendasClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmConsultarSAT: TdxBarButton
      Caption = 'Teste de comunica'#231#227'o com equipamento SAT'
      Category = 0
      Hint = 'Teste de comunica'#231#227'o com equipamento SAT'
      Style = FrmPri.cxStyle57
      Visible = ivAlways
      OnClick = cmConsultarSATClick
    end
    object cmInutilizarNFCE: TdxBarButton
      Caption = 'Inutilizar NFC-e'
      Category = 0
      Hint = 'Inutilizar NFC-e'
      Style = FrmPri.cxStyle57
      Visible = ivAlways
      OnClick = cmInutilizarNFCEClick
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
    Left = 472
    Top = 440
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
    Left = 272
    Top = 283
  end
  object tExp: TnxTable
    Database = Dados.db
    Filtered = True
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
        Height = 62.708720000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Page: TfrxMemoView
          Left = 472.441250000000000000
          Top = 31.559060000000000000
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
          Top = 31.779530000000000000
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
          Top = 62.708720000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
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
        Top = 143.622140000000000000
        Width = 740.409927000000000000
        DataSet = dbVen
        DataSetName = 'dbVen'
        RowCount = 0
        object dbVenDataHora: TfrxMemoView
          Width = 200.315090000000000000
          Height = 26.456710000000000000
          DataField = 'DataHora'
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            '[dbVen."DataHora"]')
          ParentFont = False
        end
        object dbVenNumTran: TfrxMemoView
          Left = 211.519790000000000000
          Width = 211.653680000000000000
          Height = 26.456692910000000000
          DataSet = dbVen
          DataSetName = 'dbVen'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Num.Transa'#231#227'o: [dbVen."NumTran"]')
          ParentFont = False
        end
        object dbVenNumero: TfrxMemoView
          Left = 450.346630000000000000
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
            'N'#250'm. NF: [dbVen."Numero"]')
          ParentFont = False
        end
        object dbVenValor: TfrxMemoView
          Left = 592.984540000000000000
          Width = 143.622140000000000000
          Height = 26.456692910000000000
          DataField = 'Valor'
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
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 3.779530000000000000
        Top = 298.582870000000000000
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
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        object Line3: TfrxLineView
          Align = baWidth
          Top = 0.559060000000000000
          Width = 740.409927000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo3: TfrxMemoView
          Align = baRight
          Left = 392.693167000000000000
          Top = 4.559060000000000000
          Width = 347.716760000000000000
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
          Top = 4.535433070000000000
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
          Align = baRight
          Left = 298.204917000000000000
          Top = 4.535433070000000000
          Width = 94.488250000000000000
          Height = 26.456692910000000000
          AutoWidth = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI'
          Font.Style = []
          Memo.UTF8W = (
            'Valor Total:  ')
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
      'NumTran=NumTran')
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
    Left = 600
    Top = 288
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
    OnTimer = TimerSelTimer
    Left = 369
    Top = 302
  end
  object pmTools: TdxBarPopupMenu
    BarManager = BarMgr
    ItemLinks = <
      item
        Visible = True
        ItemName = 'cmConsultarSAT'
      end
      item
        Visible = True
        ItemName = 'cmInutilizarNFCE'
      end>
    UseOwnFont = False
    Left = 720
    Top = 291
  end
end
