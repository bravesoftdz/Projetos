object FrmCliente: TFrmCliente
  Left = 241
  Top = 118
  Caption = 'Dados do Cliente'
  ClientHeight = 515
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 36
    Width = 725
    Height = 479
    Align = alClient
    Bevel.BorderSides = [fsTop]
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 0
    object Paginas: TcxPageControl
      AlignWithMargins = True
      Left = 5
      Top = 5
      Width = 715
      Height = 469
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ActivePage = tsDados
      Align = alClient
      HotTrack = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'McSkin'
      Style = 3
      TabOrder = 0
      ClientRectBottom = 469
      ClientRectRight = 715
      ClientRectTop = 23
      object tsDados: TcxTabSheet
        AlignWithMargins = True
        Margins.Left = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = '&Dados Cadastrais'
        ImageIndex = 2
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object InspNome: TcxDBVerticalGrid
          Left = 0
          Top = 0
          Width = 715
          Height = 443
          BorderStyle = cxcbsNone
          Align = alClient
          LayoutStyle = lsBandsView
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'McSkin'
          OptionsView.CellTextMaxLineCount = 3
          OptionsView.ShowEditButtons = ecsbAlways
          OptionsView.AutoScaleBands = False
          OptionsView.CategoryExplorerStyle = True
          OptionsView.PaintStyle = psDelphi
          OptionsView.GridLineColor = clBtnShadow
          OptionsView.RowHeaderMinWidth = 118
          OptionsView.RowHeaderWidth = 118
          OptionsView.ValueWidth = 234
          OptionsView.ValueMinWidth = 182
          OptionsBehavior.GoToNextCellOnEnter = True
          OptionsBehavior.HeaderSizing = False
          OptionsBehavior.AllowChangeRecord = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          TabOrder = 0
          DataController.DataSource = DS
          Version = 1
          object InspCodigo: TcxDBEditorRow
            Options.TabStop = False
            Properties.Caption = '1. C'#243'digo'
            Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditProperties.ReadOnly = True
            Properties.DataBinding.FieldName = 'ID'
            ID = 0
            ParentID = -1
            Index = 0
            Version = 1
          end
          object InspNomeNome: TcxDBEditorRow
            Properties.Caption = '2. Nome'
            Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.MaxLength = 40
            Properties.EditProperties.ReadOnly = False
            Properties.DataBinding.FieldName = 'Nome'
            Styles.Content = FrmPri.cxStyle30
            ID = 1
            ParentID = -1
            Index = 1
            Version = 1
          end
          object InspNomeUsername: TcxDBEditorRow
            Properties.Caption = '3. Username'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.MaxLength = 40
            Properties.EditProperties.ReadOnly = False
            Properties.DataBinding.FieldName = 'Username'
            Styles.Content = FrmPri.cxStyle30
            ID = 2
            ParentID = -1
            Index = 2
            Version = 1
          end
          object vgSenha: TcxDBEditorRow
            Properties.Caption = '4. Senha'
            Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
            Properties.EditProperties.CaseInsensitive = False
            Properties.EditProperties.EchoMode = eemPassword
            Properties.DataBinding.FieldName = 'Senha'
            ID = 3
            ParentID = -1
            Index = 3
            Version = 1
          end
          object vgTipoConta: TcxDBEditorRow
            Properties.Caption = '5. Tipo da Conta'
            Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
            Properties.EditProperties.Columns = 2
            Properties.EditProperties.Items = <
              item
                Caption = 'Cliente Normal'
                Value = False
              end
              item
                Caption = 'Acesso Gr'#225'tis'
                Value = True
              end>
            Properties.DataBinding.FieldName = 'Isento'
            ID = 4
            ParentID = -1
            Index = 4
            Version = 1
          end
          object vgStatusConta: TcxDBEditorRow
            Properties.Caption = '6. Status da Conta'
            Properties.EditPropertiesClassName = 'TcxRadioGroupProperties'
            Properties.EditProperties.Columns = 2
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.Items = <
              item
                Caption = 'Ativo'
                Value = False
              end
              item
                Caption = 'Inativo'
                Value = True
              end>
            Properties.DataBinding.FieldName = 'Inativo'
            ID = 5
            ParentID = -1
            Index = 5
            Version = 1
          end
          object InspNomeNickName: TcxDBEditorRow
            Properties.Caption = '7. Apelido'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.MaxLength = 30
            Properties.EditProperties.ReadOnly = False
            Properties.DataBinding.FieldName = 'NickName'
            ID = 6
            ParentID = -1
            Index = 6
            Version = 1
          end
          object InspSexo: TcxDBEditorRow
            Properties.Caption = '8. Sexo'
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.Items = <
              item
                Description = 'Masculino'
                Value = 'M'
              end
              item
                Description = 'Feminino'
                Value = 'F'
              end>
            Properties.DataBinding.FieldName = 'Sexo'
            ID = 7
            ParentID = -1
            Index = 7
            Version = 1
          end
          object InspNomeTelefone: TcxDBEditorRow
            Properties.Caption = '9.Telefone'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.MaxLength = 15
            Properties.EditProperties.ReadOnly = False
            Properties.DataBinding.FieldName = 'Telefone'
            ID = 8
            ParentID = -1
            Index = 8
            Version = 1
          end
          object InspNomeCelular: TcxDBEditorRow
            Properties.Caption = '10. Celular'
            Properties.EditPropertiesClassName = 'TcxTextEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.MaxLength = 15
            Properties.EditProperties.ReadOnly = False
            Properties.DataBinding.FieldName = 'Celular'
            ID = 9
            ParentID = -1
            Index = 9
            Version = 1
          end
          object InspNomeDataNasc: TcxDBEditorRow
            Properties.Caption = '11. Data de Nasc.'
            Properties.EditPropertiesClassName = 'TcxDateEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.DateButtons = [btnClear, btnToday]
            Properties.EditProperties.DateOnError = deToday
            Properties.DataBinding.FieldName = 'DataNasc'
            ID = 10
            ParentID = -1
            Index = 10
            Version = 1
          end
          object InspNomeDBEditorRow12: TcxDBEditorRow
            Properties.Caption = '12. RG'
            Properties.DataBinding.FieldName = 'Rg'
            ID = 11
            ParentID = -1
            Index = 11
            Version = 1
          end
          object InspNomeDBEditorRow13: TcxDBEditorRow
            Properties.Caption = '13. CPF'
            Properties.DataBinding.FieldName = 'Cpf'
            ID = 12
            ParentID = -1
            Index = 12
            Version = 1
          end
          object InspNomeDBEditorRow1: TcxDBEditorRow
            Properties.Caption = '14. Nome do Pai'
            Properties.DataBinding.FieldName = 'Pai'
            ID = 13
            ParentID = -1
            Index = 13
            Version = 1
          end
          object InspNomeDBEditorRow2: TcxDBEditorRow
            Properties.Caption = '15. Nome da M'#227'e'
            Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
            Properties.DataBinding.FieldName = 'Mae'
            ID = 14
            ParentID = -1
            Index = 14
            Version = 1
          end
          object vgLimDebito: TcxDBEditorRow
            Properties.Caption = '16. Limite de D'#233'bito'
            Properties.EditPropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.EditProperties.Alignment.Horz = taLeftJustify
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.UseThousandSeparator = True
            Properties.DataBinding.FieldName = 'LimiteDebito'
            ID = 15
            ParentID = -1
            Index = 15
            Version = 1
          end
          object InspNomeTA: TcxDBEditorRow
            Properties.Caption = '17. Tipo de Acesso'
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <>
            Properties.DataBinding.FieldName = 'TipoAcessoPref'
            Properties.OnGetEditingProperties = InspNomeTAPropertiesGetEditingProperties
            ID = 16
            ParentID = -1
            Index = 16
            Version = 1
          end
          object InspNomeDBEditorRow3: TcxDBEditorRow
            Properties.Caption = '18. Endere'#231'o'
            Properties.DataBinding.FieldName = 'Endereco'
            ID = 17
            ParentID = -1
            Index = 17
            Version = 1
          end
          object InspNomeDBEditorRow5: TcxDBEditorRow
            Properties.Caption = '19. Bairro'
            Properties.DataBinding.FieldName = 'Bairro'
            ID = 18
            ParentID = -1
            Index = 18
            Version = 1
          end
          object InspNomeDBEditorRow6: TcxDBEditorRow
            Properties.Caption = '20. Cidade'
            Properties.DataBinding.FieldName = 'Cidade'
            ID = 19
            ParentID = -1
            Index = 19
            Version = 1
          end
          object InspNomeDBEditorRow7: TcxDBEditorRow
            Properties.Caption = '21. UF'
            Properties.DataBinding.FieldName = 'UF'
            ID = 20
            ParentID = -1
            Index = 20
            Version = 1
          end
          object InspNomeDBEditorRow8: TcxDBEditorRow
            Properties.Caption = '22. CEP'
            Properties.DataBinding.FieldName = 'CEP'
            ID = 21
            ParentID = -1
            Index = 21
            Version = 1
          end
          object InspEscola: TcxDBEditorRow
            Properties.Caption = '23. Nome da Escola'
            Properties.EditPropertiesClassName = 'TcxMaskEditProperties'
            Properties.DataBinding.FieldName = 'Escola'
            ID = 22
            ParentID = -1
            Index = 22
            Version = 1
          end
          object InspNomeTitEleitor: TcxDBEditorRow
            Properties.Caption = '24. T'#237'tulo Eleitor'
            Properties.DataBinding.FieldName = 'TitEleitor'
            ID = 23
            ParentID = -1
            Index = 23
            Version = 1
          end
          object VGPermiteLoginSemCred: TcxDBEditorRow
            Height = 32
            Properties.Caption = '25. Cliente pode'#13#10'logar sem cr'#233'dito ?'
            Properties.EditPropertiesClassName = 'TcxImageComboBoxProperties'
            Properties.EditProperties.Alignment.Vert = taVCenter
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.ImmediateUpdateText = True
            Properties.EditProperties.Items = <
              item
                Description = 'Seguir op'#231#227'o padr'#227'o (n'#227'o)'
                ImageIndex = 0
              end
              item
                Description = 'N'#227'o'
                Value = False
              end
              item
                Description = 'Sim'
                Value = True
              end>
            Properties.EditProperties.LargeImages = Dados.im16
            Properties.DataBinding.FieldName = 'PermiteLoginSemCred'
            ID = 24
            ParentID = -1
            Index = 24
            Version = 1
          end
          object InspNomeObs: TcxDBEditorRow
            Height = 50
            Properties.Caption = '26. Observa'#231#245'es'
            Properties.EditPropertiesClassName = 'TcxMemoProperties'
            Properties.DataBinding.FieldName = 'Obs'
            ID = 25
            ParentID = -1
            Index = 25
            Version = 1
          end
          object InspNomeEmail: TcxDBEditorRow
            Height = 50
            Properties.Caption = '27. E-mail'
            Properties.EditPropertiesClassName = 'TcxMemoProperties'
            Properties.DataBinding.FieldName = 'Email'
            ID = 26
            ParentID = -1
            Index = 26
            Version = 1
          end
          object InspNomeFoto: TcxDBEditorRow
            Height = 221
            Properties.Caption = '28. Foto'
            Properties.EditPropertiesClassName = 'TcxImageProperties'
            Properties.EditProperties.Caption = 'Clique c/ bot'#227'o direito p/ selecionar foto'
            Properties.EditProperties.GraphicClassName = 'TJPEGImage'
            Properties.EditProperties.ImmediatePost = True
            Properties.EditProperties.Stretch = True
            Properties.DataBinding.FieldName = 'Foto'
            ID = 27
            ParentID = -1
            Index = 27
            Version = 1
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = '&Hor'#225'rios Permitidos'
        ImageIndex = 1
        object panHorarios: TLMDSimplePanel
          Left = 5
          Top = 120
          Width = 620
          Height = 217
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          TabOrder = 0
          object panDiasHoras: TLMDSimplePanel
            Left = 0
            Top = 0
            Width = 620
            Height = 217
            Align = alLeft
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsSingle
            TabOrder = 0
            object LMDSimplePanel7: TLMDSimplePanel
              Tag = 7
              Left = 1
              Top = 189
              Width = 618
              Height = 27
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              Bevel.StandardStyle = lsSingle
              TabOrder = 0
              object hora723: TLMDSpeedButton
                Tag = 23
                Left = 593
                Top = 1
                Width = 24
                Height = 25
                Caption = '23'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora722: TLMDSpeedButton
                Tag = 22
                Left = 569
                Top = 1
                Width = 24
                Height = 25
                Caption = '22'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora721: TLMDSpeedButton
                Tag = 21
                Left = 545
                Top = 1
                Width = 24
                Height = 25
                Caption = '21'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora720: TLMDSpeedButton
                Tag = 20
                Left = 521
                Top = 1
                Width = 24
                Height = 25
                Caption = '20'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora719: TLMDSpeedButton
                Tag = 19
                Left = 497
                Top = 1
                Width = 24
                Height = 25
                Caption = '19'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora718: TLMDSpeedButton
                Tag = 18
                Left = 473
                Top = 1
                Width = 24
                Height = 25
                Caption = '18'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora717: TLMDSpeedButton
                Tag = 17
                Left = 449
                Top = 1
                Width = 24
                Height = 25
                Caption = '17'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora716: TLMDSpeedButton
                Tag = 16
                Left = 425
                Top = 1
                Width = 24
                Height = 25
                Caption = '16'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora715: TLMDSpeedButton
                Tag = 15
                Left = 401
                Top = 1
                Width = 24
                Height = 25
                Caption = '15'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora714: TLMDSpeedButton
                Tag = 14
                Left = 377
                Top = 1
                Width = 24
                Height = 25
                Caption = '14'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora70: TLMDSpeedButton
                Left = 41
                Top = 1
                Width = 24
                Height = 25
                Caption = '0'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora71: TLMDSpeedButton
                Tag = 1
                Left = 65
                Top = 1
                Width = 24
                Height = 25
                Caption = '1'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora72: TLMDSpeedButton
                Tag = 2
                Left = 89
                Top = 1
                Width = 24
                Height = 25
                Caption = '2'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora73: TLMDSpeedButton
                Tag = 3
                Left = 113
                Top = 1
                Width = 24
                Height = 25
                Caption = '3'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora74: TLMDSpeedButton
                Tag = 4
                Left = 137
                Top = 1
                Width = 24
                Height = 25
                Caption = '4'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora75: TLMDSpeedButton
                Tag = 5
                Left = 161
                Top = 1
                Width = 24
                Height = 25
                Caption = '5'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora76: TLMDSpeedButton
                Tag = 6
                Left = 185
                Top = 1
                Width = 24
                Height = 25
                Caption = '6'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora77: TLMDSpeedButton
                Tag = 7
                Left = 209
                Top = 1
                Width = 24
                Height = 25
                Caption = '7'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora78: TLMDSpeedButton
                Tag = 8
                Left = 233
                Top = 1
                Width = 24
                Height = 25
                Caption = '8'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora79: TLMDSpeedButton
                Tag = 9
                Left = 257
                Top = 1
                Width = 24
                Height = 25
                Caption = '9'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora710: TLMDSpeedButton
                Tag = 10
                Left = 281
                Top = 1
                Width = 24
                Height = 25
                Caption = '10'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora711: TLMDSpeedButton
                Tag = 11
                Left = 305
                Top = 1
                Width = 24
                Height = 25
                Caption = '11'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora712: TLMDSpeedButton
                Tag = 12
                Left = 329
                Top = 1
                Width = 24
                Height = 25
                Caption = '12'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora713: TLMDSpeedButton
                Tag = 13
                Left = 353
                Top = 1
                Width = 24
                Height = 25
                Caption = '13'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object LMDLabel5: TLMDLabel
                Left = 1
                Top = 1
                Width = 40
                Height = 25
                Bevel.BorderSides = [fsRight]
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Align = alLeft
                Alignment = agCenter
                AutoSize = False
                Color = 6118749
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Options = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Caption = 'Sab'
              end
            end
            object LMDSimplePanel3: TLMDSimplePanel
              Tag = 6
              Left = 1
              Top = 162
              Width = 618
              Height = 27
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              TabOrder = 1
              object hora623: TLMDSpeedButton
                Tag = 23
                Left = 593
                Top = 1
                Width = 24
                Height = 25
                Caption = '23'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora622: TLMDSpeedButton
                Tag = 22
                Left = 569
                Top = 1
                Width = 24
                Height = 25
                Caption = '22'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora621: TLMDSpeedButton
                Tag = 21
                Left = 545
                Top = 1
                Width = 24
                Height = 25
                Caption = '21'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora620: TLMDSpeedButton
                Tag = 20
                Left = 521
                Top = 1
                Width = 24
                Height = 25
                Caption = '20'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora619: TLMDSpeedButton
                Tag = 19
                Left = 497
                Top = 1
                Width = 24
                Height = 25
                Caption = '19'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora618: TLMDSpeedButton
                Tag = 18
                Left = 473
                Top = 1
                Width = 24
                Height = 25
                Caption = '18'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora617: TLMDSpeedButton
                Tag = 17
                Left = 449
                Top = 1
                Width = 24
                Height = 25
                Caption = '17'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora616: TLMDSpeedButton
                Tag = 16
                Left = 425
                Top = 1
                Width = 24
                Height = 25
                Caption = '16'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora615: TLMDSpeedButton
                Tag = 15
                Left = 401
                Top = 1
                Width = 24
                Height = 25
                Caption = '15'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora614: TLMDSpeedButton
                Tag = 14
                Left = 377
                Top = 1
                Width = 24
                Height = 25
                Caption = '14'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora60: TLMDSpeedButton
                Left = 41
                Top = 1
                Width = 24
                Height = 25
                Caption = '0'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora61: TLMDSpeedButton
                Tag = 1
                Left = 65
                Top = 1
                Width = 24
                Height = 25
                Caption = '1'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora62: TLMDSpeedButton
                Tag = 2
                Left = 89
                Top = 1
                Width = 24
                Height = 25
                Caption = '2'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora63: TLMDSpeedButton
                Tag = 3
                Left = 113
                Top = 1
                Width = 24
                Height = 25
                Caption = '3'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora64: TLMDSpeedButton
                Tag = 4
                Left = 137
                Top = 1
                Width = 24
                Height = 25
                Caption = '4'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora65: TLMDSpeedButton
                Tag = 5
                Left = 161
                Top = 1
                Width = 24
                Height = 25
                Caption = '5'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora66: TLMDSpeedButton
                Tag = 6
                Left = 185
                Top = 1
                Width = 24
                Height = 25
                Caption = '6'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora67: TLMDSpeedButton
                Tag = 7
                Left = 209
                Top = 1
                Width = 24
                Height = 25
                Caption = '7'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora68: TLMDSpeedButton
                Tag = 8
                Left = 233
                Top = 1
                Width = 24
                Height = 25
                Caption = '8'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora69: TLMDSpeedButton
                Tag = 9
                Left = 257
                Top = 1
                Width = 24
                Height = 25
                Caption = '9'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora610: TLMDSpeedButton
                Tag = 10
                Left = 281
                Top = 1
                Width = 24
                Height = 25
                Caption = '10'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora611: TLMDSpeedButton
                Tag = 11
                Left = 305
                Top = 1
                Width = 24
                Height = 25
                Caption = '11'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora612: TLMDSpeedButton
                Tag = 12
                Left = 329
                Top = 1
                Width = 24
                Height = 25
                Caption = '12'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora613: TLMDSpeedButton
                Tag = 13
                Left = 353
                Top = 1
                Width = 24
                Height = 25
                Caption = '13'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object LMDLabel1: TLMDLabel
                Left = 1
                Top = 1
                Width = 40
                Height = 25
                Bevel.BorderSides = [fsRight]
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Align = alLeft
                Alignment = agCenter
                AutoSize = False
                Color = 6118749
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Options = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Caption = 'Sex'
              end
            end
            object LMDSimplePanel4: TLMDSimplePanel
              Tag = 5
              Left = 1
              Top = 135
              Width = 618
              Height = 27
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              TabOrder = 2
              object hora523: TLMDSpeedButton
                Tag = 23
                Left = 593
                Top = 1
                Width = 24
                Height = 25
                Caption = '23'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora522: TLMDSpeedButton
                Tag = 22
                Left = 569
                Top = 1
                Width = 24
                Height = 25
                Caption = '22'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora521: TLMDSpeedButton
                Tag = 21
                Left = 545
                Top = 1
                Width = 24
                Height = 25
                Caption = '21'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora520: TLMDSpeedButton
                Tag = 20
                Left = 521
                Top = 1
                Width = 24
                Height = 25
                Caption = '20'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora519: TLMDSpeedButton
                Tag = 19
                Left = 497
                Top = 1
                Width = 24
                Height = 25
                Caption = '19'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora518: TLMDSpeedButton
                Tag = 18
                Left = 473
                Top = 1
                Width = 24
                Height = 25
                Caption = '18'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora517: TLMDSpeedButton
                Tag = 17
                Left = 449
                Top = 1
                Width = 24
                Height = 25
                Caption = '17'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora516: TLMDSpeedButton
                Tag = 16
                Left = 425
                Top = 1
                Width = 24
                Height = 25
                Caption = '16'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora515: TLMDSpeedButton
                Tag = 15
                Left = 401
                Top = 1
                Width = 24
                Height = 25
                Caption = '15'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora514: TLMDSpeedButton
                Tag = 14
                Left = 377
                Top = 1
                Width = 24
                Height = 25
                Caption = '14'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora50: TLMDSpeedButton
                Left = 41
                Top = 1
                Width = 24
                Height = 25
                Caption = '0'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora51: TLMDSpeedButton
                Tag = 1
                Left = 65
                Top = 1
                Width = 24
                Height = 25
                Caption = '1'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora52: TLMDSpeedButton
                Tag = 2
                Left = 89
                Top = 1
                Width = 24
                Height = 25
                Caption = '2'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora53: TLMDSpeedButton
                Tag = 3
                Left = 113
                Top = 1
                Width = 24
                Height = 25
                Caption = '3'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora54: TLMDSpeedButton
                Tag = 4
                Left = 137
                Top = 1
                Width = 24
                Height = 25
                Caption = '4'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora55: TLMDSpeedButton
                Tag = 5
                Left = 161
                Top = 1
                Width = 24
                Height = 25
                Caption = '5'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora56: TLMDSpeedButton
                Tag = 6
                Left = 185
                Top = 1
                Width = 24
                Height = 25
                Caption = '6'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora57: TLMDSpeedButton
                Tag = 7
                Left = 209
                Top = 1
                Width = 24
                Height = 25
                Caption = '7'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora58: TLMDSpeedButton
                Tag = 8
                Left = 233
                Top = 1
                Width = 24
                Height = 25
                Caption = '8'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora59: TLMDSpeedButton
                Tag = 9
                Left = 257
                Top = 1
                Width = 24
                Height = 25
                Caption = '9'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora510: TLMDSpeedButton
                Tag = 10
                Left = 281
                Top = 1
                Width = 24
                Height = 25
                Caption = '10'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora511: TLMDSpeedButton
                Tag = 11
                Left = 305
                Top = 1
                Width = 24
                Height = 25
                Caption = '11'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora512: TLMDSpeedButton
                Tag = 12
                Left = 329
                Top = 1
                Width = 24
                Height = 25
                Caption = '12'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora513: TLMDSpeedButton
                Tag = 13
                Left = 353
                Top = 1
                Width = 24
                Height = 25
                Caption = '13'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object LMDLabel2: TLMDLabel
                Left = 1
                Top = 1
                Width = 40
                Height = 25
                Bevel.BorderSides = [fsRight]
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Align = alLeft
                Alignment = agCenter
                AutoSize = False
                Color = 6118749
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Options = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Caption = 'Qui'
              end
            end
            object LMDSimplePanel5: TLMDSimplePanel
              Tag = 4
              Left = 1
              Top = 108
              Width = 618
              Height = 27
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              TabOrder = 3
              object hora423: TLMDSpeedButton
                Tag = 23
                Left = 593
                Top = 1
                Width = 24
                Height = 25
                Caption = '23'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora422: TLMDSpeedButton
                Tag = 22
                Left = 569
                Top = 1
                Width = 24
                Height = 25
                Caption = '22'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora421: TLMDSpeedButton
                Tag = 21
                Left = 545
                Top = 1
                Width = 24
                Height = 25
                Caption = '21'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora420: TLMDSpeedButton
                Tag = 20
                Left = 521
                Top = 1
                Width = 24
                Height = 25
                Caption = '20'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora419: TLMDSpeedButton
                Tag = 19
                Left = 497
                Top = 1
                Width = 24
                Height = 25
                Caption = '19'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora418: TLMDSpeedButton
                Tag = 18
                Left = 473
                Top = 1
                Width = 24
                Height = 25
                Caption = '18'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora417: TLMDSpeedButton
                Tag = 17
                Left = 449
                Top = 1
                Width = 24
                Height = 25
                Caption = '17'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora416: TLMDSpeedButton
                Tag = 16
                Left = 425
                Top = 1
                Width = 24
                Height = 25
                Caption = '16'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora415: TLMDSpeedButton
                Tag = 15
                Left = 401
                Top = 1
                Width = 24
                Height = 25
                Caption = '15'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
                ExplicitLeft = 400
              end
              object hora414: TLMDSpeedButton
                Tag = 14
                Left = 377
                Top = 1
                Width = 24
                Height = 25
                Caption = '14'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora40: TLMDSpeedButton
                Left = 41
                Top = 1
                Width = 24
                Height = 25
                Caption = '0'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora41: TLMDSpeedButton
                Tag = 1
                Left = 65
                Top = 1
                Width = 24
                Height = 25
                Caption = '1'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora42: TLMDSpeedButton
                Tag = 2
                Left = 89
                Top = 1
                Width = 24
                Height = 25
                Caption = '2'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora43: TLMDSpeedButton
                Tag = 3
                Left = 113
                Top = 1
                Width = 24
                Height = 25
                Caption = '3'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora44: TLMDSpeedButton
                Tag = 4
                Left = 137
                Top = 1
                Width = 24
                Height = 25
                Caption = '4'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora45: TLMDSpeedButton
                Tag = 5
                Left = 161
                Top = 1
                Width = 24
                Height = 25
                Caption = '5'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora46: TLMDSpeedButton
                Tag = 6
                Left = 185
                Top = 1
                Width = 24
                Height = 25
                Caption = '6'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora47: TLMDSpeedButton
                Tag = 7
                Left = 209
                Top = 1
                Width = 24
                Height = 25
                Caption = '7'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora48: TLMDSpeedButton
                Tag = 8
                Left = 233
                Top = 1
                Width = 24
                Height = 25
                Caption = '8'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora49: TLMDSpeedButton
                Tag = 9
                Left = 257
                Top = 1
                Width = 24
                Height = 25
                Caption = '9'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora410: TLMDSpeedButton
                Tag = 10
                Left = 281
                Top = 1
                Width = 24
                Height = 25
                Caption = '10'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora411: TLMDSpeedButton
                Tag = 11
                Left = 305
                Top = 1
                Width = 24
                Height = 25
                Caption = '11'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora412: TLMDSpeedButton
                Tag = 12
                Left = 329
                Top = 1
                Width = 24
                Height = 25
                Caption = '12'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora413: TLMDSpeedButton
                Tag = 13
                Left = 353
                Top = 1
                Width = 24
                Height = 25
                Caption = '13'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object LMDLabel3: TLMDLabel
                Left = 1
                Top = 1
                Width = 40
                Height = 25
                Bevel.BorderSides = [fsRight]
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Align = alLeft
                Alignment = agCenter
                AutoSize = False
                Color = 6118749
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Options = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Caption = 'Qua'
              end
            end
            object LMDSimplePanel6: TLMDSimplePanel
              Tag = 3
              Left = 1
              Top = 81
              Width = 618
              Height = 27
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              TabOrder = 4
              object hora323: TLMDSpeedButton
                Tag = 23
                Left = 593
                Top = 1
                Width = 24
                Height = 25
                Caption = '23'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora322: TLMDSpeedButton
                Tag = 22
                Left = 569
                Top = 1
                Width = 24
                Height = 25
                Caption = '22'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora321: TLMDSpeedButton
                Tag = 21
                Left = 545
                Top = 1
                Width = 24
                Height = 25
                Caption = '21'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora320: TLMDSpeedButton
                Tag = 20
                Left = 521
                Top = 1
                Width = 24
                Height = 25
                Caption = '20'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora319: TLMDSpeedButton
                Tag = 19
                Left = 497
                Top = 1
                Width = 24
                Height = 25
                Caption = '19'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora318: TLMDSpeedButton
                Tag = 18
                Left = 473
                Top = 1
                Width = 24
                Height = 25
                Caption = '18'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora317: TLMDSpeedButton
                Tag = 17
                Left = 449
                Top = 1
                Width = 24
                Height = 25
                Caption = '17'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora316: TLMDSpeedButton
                Tag = 16
                Left = 425
                Top = 1
                Width = 24
                Height = 25
                Caption = '16'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora315: TLMDSpeedButton
                Tag = 15
                Left = 401
                Top = 1
                Width = 24
                Height = 25
                Caption = '15'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora314: TLMDSpeedButton
                Tag = 14
                Left = 377
                Top = 1
                Width = 24
                Height = 25
                Caption = '14'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora30: TLMDSpeedButton
                Left = 41
                Top = 1
                Width = 24
                Height = 25
                Caption = '0'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora31: TLMDSpeedButton
                Tag = 1
                Left = 65
                Top = 1
                Width = 24
                Height = 25
                Caption = '1'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora32: TLMDSpeedButton
                Tag = 2
                Left = 89
                Top = 1
                Width = 24
                Height = 25
                Caption = '2'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora33: TLMDSpeedButton
                Tag = 3
                Left = 113
                Top = 1
                Width = 24
                Height = 25
                Caption = '3'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora34: TLMDSpeedButton
                Tag = 4
                Left = 137
                Top = 1
                Width = 24
                Height = 25
                Caption = '4'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora35: TLMDSpeedButton
                Tag = 5
                Left = 161
                Top = 1
                Width = 24
                Height = 25
                Caption = '5'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora36: TLMDSpeedButton
                Tag = 6
                Left = 185
                Top = 1
                Width = 24
                Height = 25
                Caption = '6'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora37: TLMDSpeedButton
                Tag = 7
                Left = 209
                Top = 1
                Width = 24
                Height = 25
                Caption = '7'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora38: TLMDSpeedButton
                Tag = 8
                Left = 233
                Top = 1
                Width = 24
                Height = 25
                Caption = '8'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora39: TLMDSpeedButton
                Tag = 9
                Left = 257
                Top = 1
                Width = 24
                Height = 25
                Caption = '9'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora310: TLMDSpeedButton
                Tag = 10
                Left = 281
                Top = 1
                Width = 24
                Height = 25
                Caption = '10'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora311: TLMDSpeedButton
                Tag = 11
                Left = 305
                Top = 1
                Width = 24
                Height = 25
                Caption = '11'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora312: TLMDSpeedButton
                Tag = 12
                Left = 329
                Top = 1
                Width = 24
                Height = 25
                Caption = '12'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora313: TLMDSpeedButton
                Tag = 13
                Left = 353
                Top = 1
                Width = 24
                Height = 25
                Caption = '13'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object LMDLabel4: TLMDLabel
                Left = 1
                Top = 1
                Width = 40
                Height = 25
                Bevel.BorderSides = [fsRight]
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Align = alLeft
                Alignment = agCenter
                AutoSize = False
                Color = 6118749
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Options = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Caption = 'Ter'
              end
            end
            object LMDSimplePanel8: TLMDSimplePanel
              Tag = 2
              Left = 1
              Top = 54
              Width = 618
              Height = 27
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              TabOrder = 5
              object hora223: TLMDSpeedButton
                Tag = 23
                Left = 593
                Top = 1
                Width = 24
                Height = 25
                Caption = '23'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora222: TLMDSpeedButton
                Tag = 22
                Left = 569
                Top = 1
                Width = 24
                Height = 25
                Caption = '22'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora221: TLMDSpeedButton
                Tag = 21
                Left = 545
                Top = 1
                Width = 24
                Height = 25
                Caption = '21'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora220: TLMDSpeedButton
                Tag = 20
                Left = 521
                Top = 1
                Width = 24
                Height = 25
                Caption = '20'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora219: TLMDSpeedButton
                Tag = 19
                Left = 497
                Top = 1
                Width = 24
                Height = 25
                Caption = '19'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora218: TLMDSpeedButton
                Tag = 18
                Left = 473
                Top = 1
                Width = 24
                Height = 25
                Caption = '18'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora217: TLMDSpeedButton
                Tag = 17
                Left = 449
                Top = 1
                Width = 24
                Height = 25
                Caption = '17'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora216: TLMDSpeedButton
                Tag = 16
                Left = 425
                Top = 1
                Width = 24
                Height = 25
                Caption = '16'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora215: TLMDSpeedButton
                Tag = 15
                Left = 401
                Top = 1
                Width = 24
                Height = 25
                Caption = '15'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora214: TLMDSpeedButton
                Tag = 14
                Left = 377
                Top = 1
                Width = 24
                Height = 25
                Caption = '14'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora20: TLMDSpeedButton
                Left = 41
                Top = 1
                Width = 24
                Height = 25
                Caption = '0'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora21: TLMDSpeedButton
                Tag = 1
                Left = 65
                Top = 1
                Width = 24
                Height = 25
                Caption = '1'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora22: TLMDSpeedButton
                Tag = 2
                Left = 89
                Top = 1
                Width = 24
                Height = 25
                Caption = '2'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora23: TLMDSpeedButton
                Tag = 3
                Left = 113
                Top = 1
                Width = 24
                Height = 25
                Caption = '3'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora24: TLMDSpeedButton
                Tag = 4
                Left = 137
                Top = 1
                Width = 24
                Height = 25
                Caption = '4'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora25: TLMDSpeedButton
                Tag = 5
                Left = 161
                Top = 1
                Width = 24
                Height = 25
                Caption = '5'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora26: TLMDSpeedButton
                Tag = 6
                Left = 185
                Top = 1
                Width = 24
                Height = 25
                Caption = '6'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora27: TLMDSpeedButton
                Tag = 7
                Left = 209
                Top = 1
                Width = 24
                Height = 25
                Caption = '7'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora28: TLMDSpeedButton
                Tag = 8
                Left = 233
                Top = 1
                Width = 24
                Height = 25
                Caption = '8'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora29: TLMDSpeedButton
                Tag = 9
                Left = 257
                Top = 1
                Width = 24
                Height = 25
                Caption = '9'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora210: TLMDSpeedButton
                Tag = 10
                Left = 281
                Top = 1
                Width = 24
                Height = 25
                Caption = '10'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora211: TLMDSpeedButton
                Tag = 11
                Left = 305
                Top = 1
                Width = 24
                Height = 25
                Caption = '11'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora212: TLMDSpeedButton
                Tag = 12
                Left = 329
                Top = 1
                Width = 24
                Height = 25
                Caption = '12'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora213: TLMDSpeedButton
                Tag = 13
                Left = 353
                Top = 1
                Width = 24
                Height = 25
                Caption = '13'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object LMDLabel6: TLMDLabel
                Left = 1
                Top = 1
                Width = 40
                Height = 25
                Bevel.BorderSides = [fsRight]
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Align = alLeft
                Alignment = agCenter
                AutoSize = False
                Color = 6118749
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Options = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Caption = 'Seg'
              end
            end
            object LMDSimplePanel9: TLMDSimplePanel
              Tag = 1
              Left = 1
              Top = 27
              Width = 618
              Height = 27
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              TabOrder = 6
              object hora123: TLMDSpeedButton
                Tag = 23
                Left = 593
                Top = 1
                Width = 24
                Height = 25
                Caption = '23'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora122: TLMDSpeedButton
                Tag = 22
                Left = 569
                Top = 1
                Width = 24
                Height = 25
                Caption = '22'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora121: TLMDSpeedButton
                Tag = 21
                Left = 545
                Top = 1
                Width = 24
                Height = 25
                Caption = '21'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora120: TLMDSpeedButton
                Tag = 20
                Left = 521
                Top = 1
                Width = 24
                Height = 25
                Caption = '20'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora119: TLMDSpeedButton
                Tag = 19
                Left = 497
                Top = 1
                Width = 24
                Height = 25
                Caption = '19'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora118: TLMDSpeedButton
                Tag = 18
                Left = 473
                Top = 1
                Width = 24
                Height = 25
                Caption = '18'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora117: TLMDSpeedButton
                Tag = 17
                Left = 449
                Top = 1
                Width = 24
                Height = 25
                Caption = '17'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora116: TLMDSpeedButton
                Tag = 16
                Left = 425
                Top = 1
                Width = 24
                Height = 25
                Caption = '16'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora115: TLMDSpeedButton
                Tag = 15
                Left = 401
                Top = 1
                Width = 24
                Height = 25
                Caption = '15'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora114: TLMDSpeedButton
                Tag = 14
                Left = 377
                Top = 1
                Width = 24
                Height = 25
                Caption = '14'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora10: TLMDSpeedButton
                Left = 41
                Top = 1
                Width = 24
                Height = 25
                Caption = '0'
                Color = clRed
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora11: TLMDSpeedButton
                Tag = 1
                Left = 65
                Top = 1
                Width = 24
                Height = 25
                Caption = '1'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora12: TLMDSpeedButton
                Tag = 2
                Left = 89
                Top = 1
                Width = 24
                Height = 25
                Caption = '2'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora13: TLMDSpeedButton
                Tag = 3
                Left = 113
                Top = 1
                Width = 24
                Height = 25
                Caption = '3'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora14: TLMDSpeedButton
                Tag = 4
                Left = 137
                Top = 1
                Width = 24
                Height = 25
                Caption = '4'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora15: TLMDSpeedButton
                Tag = 5
                Left = 161
                Top = 1
                Width = 24
                Height = 25
                Caption = '5'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora16: TLMDSpeedButton
                Tag = 6
                Left = 185
                Top = 1
                Width = 24
                Height = 25
                Caption = '6'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora17: TLMDSpeedButton
                Tag = 7
                Left = 209
                Top = 1
                Width = 24
                Height = 25
                Caption = '7'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora18: TLMDSpeedButton
                Tag = 8
                Left = 233
                Top = 1
                Width = 24
                Height = 25
                Caption = '8'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora19: TLMDSpeedButton
                Tag = 9
                Left = 257
                Top = 1
                Width = 24
                Height = 25
                Caption = '9'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora110: TLMDSpeedButton
                Tag = 10
                Left = 281
                Top = 1
                Width = 24
                Height = 25
                Caption = '10'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora111: TLMDSpeedButton
                Tag = 11
                Left = 305
                Top = 1
                Width = 24
                Height = 25
                Caption = '11'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora112: TLMDSpeedButton
                Tag = 12
                Left = 329
                Top = 1
                Width = 24
                Height = 25
                Caption = '12'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object hora113: TLMDSpeedButton
                Tag = 13
                Left = 353
                Top = 1
                Width = 24
                Height = 25
                Caption = '13'
                Color = clSilver
                ParentFont = False
                OnClick = hora10Click
                OnMouseMove = hora10MouseMove
                Font.Charset = ANSI_CHARSET
                Font.Color = clGray
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ThemeMode = ttmNone
                Align = alLeft
                ButtonStyle = ubsFlat
              end
              object LMDLabel7: TLMDLabel
                Left = 1
                Top = 1
                Width = 40
                Height = 25
                Bevel.BorderSides = [fsRight]
                Bevel.Mode = bmStandard
                Bevel.StandardStyle = lsNone
                Align = alLeft
                Alignment = agCenter
                AutoSize = False
                Color = 6118749
                Font.Charset = ANSI_CHARSET
                Font.Color = clWhite
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                Options = []
                ParentColor = False
                ParentFont = False
                Transparent = False
                Caption = 'Dom'
                ExplicitLeft = 22
                ExplicitTop = 6
              end
            end
            object LMDSimplePanel13: TLMDSimplePanel
              Tag = 1
              Left = 1
              Top = 1
              Width = 618
              Height = 26
              Align = alTop
              Bevel.StyleOuter = bvNormal
              Bevel.WidthInner = 0
              Bevel.BorderSides = [fsBottom]
              Bevel.Mode = bmCustom
              TabOrder = 7
              object btnNenhum: TLMDSpeedButton
                Left = 224
                Top = 1
                Width = 251
                Height = 24
                Caption = 'Marcar todos hor'#225'rios como N'#195'O permitidos'
                OnClick = btnNenhumClick
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFA1A1AD2427AE161CAC5A5AA9AAAAAEFF00FFFF
                  00FFFF00FFFF00FF5353A94F4FA29292ADFF00FFFF00FFFF00FFFF00FF4E4EAB
                  1844F6194DF81031D22021AA9696AFFF00FFAEAEAE4A4AAF0928D7092ED70313
                  B34D4DADFF00FFFF00FFFF00FF2022B12451F91F52FF1D4FFF1744E81017AF87
                  87AE4747AC0D2EDD1142F90D3DF50B3BF0041ABC6F6FAAFF00FFFF00FF8181AD
                  1832DB285BFF2456FF2253FF1B4BF1060EAF0F30DD164AFE1344F91041F60E3E
                  F60A3CF02C2CA2FF00FFFF00FF7777B31F37DD3A6FFF2C5EFF295AFF2657FF20
                  52FC1C4FFF194AFD1646FA1445FA0F3DF21119AF8181ACFF00FFFF00FFAEAEAE
                  6969B81A25C53D6AFB3567FF2C5DFF2859FF2253FF1D4EFF1A4DFF123DED2324
                  AB9D9DAFFF00FFFF00FFFF00FFFF00FFFF00FF9C9CB22F2FB32E4EE73668FF2E
                  5EFF2859FF2254FF163DEA2C2CA8A7A7AEFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FF7A7AB3253FDF3B6DFF3464FF2E5EFF2759FF1B46EA2121ACA9A9
                  AEFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF2B2CC04B7CFF4170FF3B
                  6BFF396CFF2D5EFF2558FF1336D74A4AB2FF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FF9191B6253BD95080FF4575FF3662FA0C13C13C6DFF2A5BFF2053FD0B1D
                  C27E7EB3FF00FFFF00FFFF00FFFF00FFFF00FF4F4FBD527CFA5081FF4B7DFF18
                  1FC58181B11B22C4386AFF2456FF1A4AF21419B1A5A5AFFF00FFFF00FFFF00FF
                  FF00FF252DD66A9CFF5788FF2B46E77070B9FF00FF8C8CB41621C73065FF1F51
                  FF1439DD4444AFFF00FFFF00FFFF00FFFF00FF4B4BC83951E25782FB2929C6FF
                  00FFFF00FFFF00FF7E7EB61628D3265AFF0F2EE32123B5FF00FFFF00FFFF00FF
                  FF00FFFF00FF8686B63E3EB98E8EB4FF00FFFF00FFFF00FFFF00FF6B6BB62E2E
                  B57D7DB0ADADADFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                Align = alLeft
                ButtonStyle = ubsFlat
                ExplicitLeft = 204
              end
              object btnTodos: TLMDSpeedButton
                Left = 1
                Top = 1
                Width = 223
                Height = 24
                Caption = 'Marcar todos hor'#225'rios como permitidos'
                OnClick = btnTodosClick
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  1800000000000003000000000000000000000000000000000000FF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA5ACA5328D32118A1371
                  A171FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFA6AEA627942713AC2715B32B07930F72A572FF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFA7AFA729992916AE2E17B23114AD2A13
                  B12907910C74A674FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA8AEA8
                  2B9E2B19B2331CB63A18B33434BC4D17B03013B02A08900D76A576FF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FF3CA5431FB73E20BA421FB84011A8240F900F62
                  C77119B23213B12B09910E79A679FF00FFFF00FFFF00FFFF00FFFF00FF33B141
                  42C8651FBB4615B32C46A846A5ADA526982661C87119B13113B22C098F0E7CA7
                  7CFF00FFFF00FFFF00FFFF00FF6EB17743C25636BC4E44AE48AEAEAEFF00FFA4
                  AEA423972363CA7217B13114B12C0A900D7DA87DFF00FFFF00FFFF00FFFF00FF
                  91B4957CB282ADAEADFF00FFFF00FFFF00FFA2ADA220972063CA7217B13114B3
                  2D0B900E80A580FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFA0AEA01D971D64CB7515B13116B330108B12FF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9FAE9F1A991C66CD
                  782ABC461E8F1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FF9CAC9C2398232297238FA78FFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
                Align = alLeft
                ButtonStyle = ubsFlat
              end
            end
          end
        end
        object cxLabel1: TcxLabel
          Left = 3
          Top = 8
          Caption = 
            'Marque de verde os hor'#225'rios permitidos e de vermelho os hor'#225'rios' +
            ' em que n'#227'o '#233' permitido que esse cliente use computadores'
        end
        object cxLabel2: TcxLabel
          Left = 3
          Top = 31
          Caption = 
            '- Clique no hor'#225'rio para trocar de verde para vermelho ou vice-v' +
            'ersa;'
        end
        object cxLabel3: TcxLabel
          Left = 3
          Top = 54
          Caption = 
            '- Mantenha a tecla CTRL pressionada e mova o mouse em cima dos h' +
            'or'#225'rios que deseja pintar de verde;'
        end
        object cxLabel4: TcxLabel
          Left = 3
          Top = 77
          Caption = 
            '- Mantenha a tecla ALT pressionada e mova o mouse em cima dos ho' +
            'r'#225'rios que deseja pintar de vermelho.'
        end
      end
      object tsPass: TcxTabSheet
        AlignWithMargins = True
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Passaportes'
        ImageIndex = 2
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tsTran: TcxTabSheet
        AlignWithMargins = True
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Transa'#231#245'es'
        ImageIndex = 3
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
      object tsExtratoFid: TcxTabSheet
        AlignWithMargins = True
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        Caption = 'Extrato Fidelidade'
        ImageIndex = 4
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
      end
    end
    object edNaoGuardarCred: TcxDBCheckBox
      Left = 391
      Top = 419
      Caption = 'N'#227'o guardar cr'#233'dito de tempo restante no final do acesso'
      DataBinding.DataField = 'NaoGuardarCredito'
      DataBinding.DataSource = DS
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.MultiLine = True
      Properties.NullStyle = nssUnchecked
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'McSkin'
      Style.StyleController = FrmPri.cxEditStyleController1
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'McSkin'
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'McSkin'
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'McSkin'
      TabOrder = 1
      Transparent = True
      Width = 306
    end
  end
  object tAux: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    Timeout = 10000
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    TableName = 'Cliente'
    IndexName = 'IRg'
    Left = 336
    Top = 184
  end
  object BarMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = FrmPri.im24
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'McSkin'
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    SunkenBorder = True
    UseSystemFont = True
    Left = 304
    Top = 184
    DockControlHeights = (
      0
      0
      36
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 671
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmGravar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarControlContainerItem1'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object cmGravar: TdxBarLargeButton
      Caption = '&Salvar'
      Category = 0
      Hint = 'Salvar'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = cmGravarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      SyncImageIndex = False
      ImageIndex = 4
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarCombo1: TdxBarCombo
      Caption = 'Tipo da Conta'
      Category = 0
      Hint = 'Tipo da Conta'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      Text = 'Cliente Normal'
      ItemIndex = -1
    end
    object dxBarCombo2: TdxBarCombo
      Caption = 'Status da Conta'
      Category = 0
      Hint = 'Status da Conta'
      Visible = ivAlways
      ShowCaption = True
      Width = 100
      ItemIndex = -1
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'N'#227'o guardar cr'#233'dito de tempo restante no final do acesso'
      Category = 0
      Hint = 'N'#227'o guardar cr'#233'dito de tempo restante no final do acesso'
      Visible = ivAlways
      ShowCaption = True
      Width = 20
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.NullStyle = nssUnchecked
    end
    object dxBarControlContainerItem1: TdxBarControlContainerItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Control = edNaoGuardarCred
    end
  end
  object DS: TDataSource
    DataSet = MT
    OnStateChange = DSStateChange
    Left = 272
    Top = 184
  end
  object FMgr: TFormManager
    BarMgr = BarMgr
    PageControl = Paginas
    OnPageControlChange = FMgrPageControlChange
    OnGetTabSheet = FMgrGetTabSheet
    Left = 208
    Top = 182
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = False
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Pai'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Mae'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'EscolaHI'
        DataType = ftDateTime
      end
      item
        Name = 'EscolaHF'
        DataType = ftDateTime
      end
      item
        Name = 'Inativo'
        DataType = ftBoolean
      end
      item
        Name = 'LimiteDebito'
        DataType = ftCurrency
      end
      item
        Name = 'CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Nasc'
        DataType = ftDateTime
      end
      item
        Name = 'Sexo'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Obs'
        DataType = ftMemo
      end
      item
        Name = 'Cpf'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Rg'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'Telefone'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Email'
        DataType = ftMemo
      end
      item
        Name = 'Isento'
        DataType = ftBoolean
      end
      item
        Name = 'Username'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Senha'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'UltVisita'
        DataType = ftDateTime
      end
      item
        Name = 'Debito'
        DataType = ftCurrency
      end
      item
        Name = 'Escola'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'NickName'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DataNasc'
        DataType = ftDateTime
      end
      item
        Name = 'Celular'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'TemDebito'
        DataType = ftBoolean
      end
      item
        Name = 'TipoAcessoPref'
        DataType = ftInteger
      end
      item
        Name = 'IncluidoEm'
        DataType = ftTimeStamp
      end
      item
        Name = 'AlteradoEm'
        DataType = ftDateTime
      end
      item
        Name = 'IncluidoPor'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'AlteradoPor'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'Foto'
        DataType = ftGraphic
      end>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '5.02b'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    AfterInsert = MTAfterInsert
    AfterEdit = MTAfterEdit
    Left = 240
    Top = 182
    object MTTitEleitor: TStringField
      FieldName = 'TitEleitor'
      Size = 13
    end
    object MTNome: TStringField
      FieldName = 'Nome'
      Size = 40
    end
    object MTEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object MTBairro: TStringField
      FieldName = 'Bairro'
    end
    object MTCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object MTUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object MTPai: TStringField
      FieldName = 'Pai'
      Size = 40
    end
    object MTHP1: TIntegerField
      FieldName = 'HP1'
    end
    object MTHP2: TIntegerField
      FieldName = 'HP2'
    end
    object MTHP3: TIntegerField
      FieldName = 'HP3'
    end
    object MTHP4: TIntegerField
      FieldName = 'HP4'
    end
    object MTHP5: TIntegerField
      FieldName = 'HP5'
    end
    object MTHP6: TIntegerField
      FieldName = 'HP6'
    end
    object MTHP7: TIntegerField
      FieldName = 'HP7'
    end
    object MTMae: TStringField
      FieldName = 'Mae'
      Size = 40
    end
    object MTEscolaHI: TDateTimeField
      FieldName = 'EscolaHI'
    end
    object MTEscolaHF: TDateTimeField
      FieldName = 'EscolaHF'
    end
    object MTInativo: TBooleanField
      FieldName = 'Inativo'
    end
    object MTLimiteDebito: TCurrencyField
      Alignment = taLeftJustify
      FieldName = 'LimiteDebito'
    end
    object MTCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object MTNasc: TDateTimeField
      FieldName = 'Nasc'
    end
    object MTSexo: TStringField
      FieldName = 'Sexo'
      Size = 1
    end
    object MTObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object MTCpf: TStringField
      FieldName = 'Cpf'
      Size = 14
    end
    object MTRg: TStringField
      FieldName = 'Rg'
      Size = 14
    end
    object MTTelefone: TStringField
      FieldName = 'Telefone'
      Size = 15
    end
    object MTEmail: TMemoField
      FieldName = 'Email'
      BlobType = ftMemo
    end
    object MTIsento: TBooleanField
      FieldName = 'Isento'
    end
    object MTUsername: TStringField
      FieldName = 'Username'
      Size = 40
    end
    object MTSenha: TStringField
      FieldName = 'Senha'
      Size = 10
    end
    object MTUltVisita: TDateTimeField
      FieldName = 'UltVisita'
    end
    object MTDebito: TCurrencyField
      FieldName = 'Debito'
    end
    object MTEscola: TStringField
      FieldName = 'Escola'
      Size = 40
    end
    object MTNickName: TStringField
      FieldName = 'NickName'
      Size = 30
    end
    object MTDataNasc: TDateTimeField
      FieldName = 'DataNasc'
    end
    object MTCelular: TStringField
      FieldName = 'Celular'
      Size = 15
    end
    object MTTemDebito: TBooleanField
      FieldName = 'TemDebito'
    end
    object MTTipoAcessoPref: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'TipoAcessoPref'
    end
    object MTIncluidoEm: TSQLTimeStampField
      FieldName = 'IncluidoEm'
    end
    object MTAlteradoEm: TDateTimeField
      FieldName = 'AlteradoEm'
    end
    object MTIncluidoPor: TStringField
      FieldName = 'IncluidoPor'
      Size = 10
    end
    object MTAlteradoPor: TStringField
      FieldName = 'AlteradoPor'
      Size = 10
    end
    object MTFoto: TGraphicField
      FieldName = 'Foto'
      BlobType = ftGraphic
    end
    object MTID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ID'
    end
    object MTNaoGuardarCredito: TBooleanField
      FieldName = 'NaoGuardarCredito'
    end
    object MTPermiteLoginSemCred: TBooleanField
      FieldName = 'PermiteLoginSemCred'
    end
  end
  object L: TcxLookAndFeelController
    SkinName = 'McSkin'
    Left = 376
    Top = 184
  end
end
