inherited fbOpcoes: TfbOpcoes
  Left = 91
  Top = 160
  Caption = 'Op'#231#245'es'
  ClientHeight = 734
  ClientWidth = 1020
  OldCreateOrder = True
  ShowHint = True
  OnDestroy = FrmBasePaiDestroy
  ExplicitWidth = 1036
  ExplicitHeight = 770
  PixelsPerInch = 96
  TextHeight = 13
  inherited panPri: TPanel
    Width = 1020
    Height = 734
    ExplicitWidth = 1020
    ExplicitHeight = 734
    inherited dxBarDockControl1: TdxBarDockControl
      Width = 1020
      Height = 36
      ExplicitWidth = 1020
      ExplicitHeight = 36
    end
    object Paginas: TcxPageControl
      Left = 203
      Top = 336
      Width = 817
      Height = 398
      ActivePage = cxTabSheet4
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = True
      ParentFont = False
      Style = 9
      TabHeight = 24
      TabOrder = 0
      TabSlants.Positions = []
      OnChange = PaginasChange
      ExplicitTop = 36
      ExplicitHeight = 698
      ClientRectBottom = 398
      ClientRectRight = 817
      ClientRectTop = 25
      object cxTabSheet4: TcxTabSheet
        Caption = '&C. Restri'#231#245'es do Windows'
        ImageIndex = 7
        ExplicitHeight = 673
        object clbDrives: TcxCheckListBox
          Left = 13
          Top = 317
          Width = 321
          Height = 115
          Columns = 4
          Items = <
            item
              Text = 'A'
            end
            item
              Text = 'B'
            end
            item
              Text = 'C'
            end
            item
              Text = 'D'
            end
            item
              Text = 'E'
            end
            item
              Text = 'F'
            end
            item
              Text = 'G'
            end
            item
              Text = 'H'
            end
            item
              Text = 'I'
            end
            item
              Text = 'J'
            end
            item
              Text = 'K'
            end
            item
              Text = 'L'
            end
            item
              Text = 'M'
            end
            item
              Text = 'N'
            end
            item
              Text = 'O'
            end
            item
              Text = 'P'
            end
            item
              Text = 'Q'
            end
            item
              Text = 'R'
            end
            item
              Text = 'S'
            end
            item
              Text = 'T'
            end
            item
              Text = 'U'
            end
            item
              Text = 'V'
            end
            item
              Text = 'W'
            end
            item
              Text = 'X'
            end
            item
              Text = 'Y'
            end
            item
              Text = 'Z'
            end>
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 16
          OnClickCheck = clbDrivesClickCheck
        end
        object edBloqPainelCtrl: TcxDBCheckBox
          Left = 9
          Top = 65
          Caption = '&3. Bloquear acesso ao PAINEL DE CONTROLE'
          DataBinding.DataField = 'BloqPainelCtrl'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 361
        end
        object edBloqMenuIniciar: TcxDBCheckBox
          Left = 9
          Top = 13
          Caption = '&1. Bloquear acesso ao MENU INICIAR'
          DataBinding.DataField = 'BloqMenuIniciar'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 0
          Width = 214
        end
        object edBloqCtrlAltDel: TcxDBCheckBox
          Left = 9
          Top = 91
          Caption = '&4. Bloquear acesso ao CTRL-ALT-DEL'
          DataBinding.DataField = 'BloqCtrlAltDel'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 4
          Width = 361
        end
        object edBloqExecutar: TcxDBCheckBox
          Left = 9
          Top = 117
          Caption = '&5. Bloquear acesso ao comando EXECUTAR'
          DataBinding.DataField = 'BloqExecutar'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 361
        end
        object edBloqMeusLocaisRede: TcxDBCheckBox
          Left = 9
          Top = 143
          Caption = '&6. Bloquear acesso ao MEUS LOCAIS DE REDE'
          DataBinding.DataField = 'BloqMeusLocaisRede'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 6
          Width = 361
        end
        object edBloqDownloads: TcxDBCheckBox
          Left = 9
          Top = 169
          Caption = '&7. Bloquear DOWNLOADS (Somente Internet Explorer)'
          DataBinding.DataField = 'BloqDownload'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 371
        end
        object cxLabel4: TcxLabel
          Left = 13
          Top = 298
          Caption = '&12. Bloquear acessos aos drives: '
        end
        object cxLabel5: TcxLabel
          Left = 182
          Top = 298
          Cursor = crHandPoint
          AutoSize = False
          Caption = '&Todos'
          Style.HotTrack = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextStyle = [fsBold]
          OnClick = cxLabel5Click
          Height = 17
          Width = 41
        end
        object cxLabel6: TcxLabel
          Left = 225
          Top = 298
          Cursor = crHandPoint
          AutoSize = False
          Caption = '&Nenhum'
          Style.HotTrack = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextStyle = [fsBold]
          OnClick = cxLabel6Click
          Height = 17
          Width = 61
        end
        object cxDBCheckBox1: TcxDBCheckBox
          Left = 13
          Top = 445
          Caption = '&8. Esconder rel'#243'gio do Windows e '#237'cones que ficam ao seu lado'
          DataBinding.DataField = 'BloqTray'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 9
          Visible = False
          Width = 371
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 9
          Top = 219
          Caption = '&9. Bloquear bot'#227'o direito do mouse'
          DataBinding.DataField = 'BloqBotaoDir'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 10
          Width = 371
        end
        object cxDBCheckBox7: TcxDBCheckBox
          Left = 9
          Top = 245
          Caption = '&10. Remover '#237'cone "Meu Computador" da '#225'rea de trabalho'
          DataBinding.DataField = 'BloqMeuComputador'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Width = 371
        end
        object cxDBCheckBox19: TcxDBCheckBox
          Left = 9
          Top = 272
          Caption = '&11. Remover '#237'cone "Lixeira" da '#225'rea de trabalho'
          DataBinding.DataField = 'BloqLixeira'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 12
          Width = 371
        end
        object cbFiltrarMenuIniciar: TcxDBCheckBox
          Left = 217
          Top = 12
          Caption = 'Filtrar itens do menu iniciar'
          DataBinding.DataField = 'FiltrarMenuIniciar'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 163
        end
        object cbFiltrarDesktop: TcxDBCheckBox
          Left = 9
          Top = 39
          Caption = '&2. Filtrar itens da '#193'REA DE TRABALHO'
          DataBinding.DataField = 'FiltrarDesktop'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 2
          Width = 232
        end
        object cbBloqDownloadExe: TcxDBCheckBox
          Left = 9
          Top = 194
          Caption = 
            '&8. Bloquear DOWNLOADS de Programas (Internet Explorer e Firefox' +
            ')'
          DataBinding.DataField = 'BloqDownloadExe'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 371
        end
      end
      object tsRec: TcxTabSheet
        BorderWidth = 5
        Caption = '&D. Recibos'
        ImageIndex = 3
        ExplicitHeight = 673
        object lbRecImprimir: TcxLabel
          Left = 16
          Top = 8
          Caption = '1. Imprimir Recibos ? '
        end
        object edRecImprimir: TcxDBImageComboBox
          Left = 131
          Top = 6
          DataBinding.DataField = 'RecImprimir'
          DataBinding.DataSource = DS
          Properties.Alignment.Vert = taVCenter
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'N'#227'o'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Sim: '#192's Vezes'
              Value = 1
            end
            item
              Description = 'Sim: Sempre'
              Value = 2
            end>
          Properties.OnChange = edRecImprimirPropertiesChange
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 1
          Width = 166
        end
        object lbRecMatricial: TcxLabel
          Left = 16
          Top = 31
          Caption = '2. Tipo de Impressora'
        end
        object edRecMatricial: TcxDBImageComboBox
          Left = 131
          Top = 30
          DataBinding.DataField = 'RecMatricial'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'Jato de Tinta/Laser'
              ImageIndex = 0
              Value = False
            end
            item
              Description = 'Matricial'
              Value = True
            end>
          Properties.OnChange = edRecMatricialPropertiesChange
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 3
          Width = 166
        end
        object lbRecPorta: TcxLabel
          Left = 32
          Top = 55
          Caption = '2.1 Porta de conex'#227'o da impressora'
        end
        object edRecPorta: TcxDBComboBox
          Left = 214
          Top = 54
          DataBinding.DataField = 'RecPorta'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items.Strings = (
            'LPT1'
            'LPT2'
            'COM1'
            'COM2'
            'COM3'
            'COM4')
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 5
          Width = 83
        end
        object lbRecLargura: TcxLabel
          Left = 32
          Top = 78
          Caption = '2.2 Largura do recibo em caracteres'
        end
        object edRecLargura: TcxDBSpinEdit
          Left = 214
          Top = 78
          DataBinding.DataField = 'RecLargura'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 7
          Width = 83
        end
        object edRecSalto: TcxDBSpinEdit
          Left = 214
          Top = 102
          DataBinding.DataField = 'RecSalto'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 8
          Width = 83
        end
        object lbRecSalto: TcxLabel
          Left = 32
          Top = 102
          Caption = '2.3 Linhas a saltar no fim do recibo'
        end
        object lbRecNomeLoja: TcxLabel
          Left = 16
          Top = 129
          Caption = '3. Nome da Loja'
        end
        object edRecNomeLoja: TcxDBTextEdit
          Left = 131
          Top = 127
          DataBinding.DataField = 'RecNomeLoja'
          DataBinding.DataSource = DS
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 11
          Width = 166
        end
        object lbRecRodape: TcxLabel
          Left = 16
          Top = 152
          Caption = '4. Texto a ser impresso no rodap'#233' dos recibos'
        end
        object edRecRodape: TcxDBMemo
          Left = 30
          Top = 171
          DataBinding.DataField = 'RecRodape'
          DataBinding.DataSource = DS
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = True
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = True
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = True
          TabOrder = 13
          Height = 89
          Width = 268
        end
      end
      object cxTabSheet3: TcxTabSheet
        Caption = '&E.Tarifa'#231#227'o'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 6
        ParentColor = False
        ParentFont = False
        ExplicitHeight = 673
        object LMDScrollBox1: TLMDScrollBox
          Left = 0
          Top = 0
          Width = 817
          Height = 373
          Align = alClient
          TabOrder = 0
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          ExplicitHeight = 673
          object edLoginSemCred: TcxDBCheckBox
            Left = 17
            Top = 22
            Caption = '&1. Clientes podem se logar mesmo sem ter cr'#233'dito (em p'#243's pago)'
            DataBinding.DataField = 'PermiteLoginSemCred'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 341
          end
          object edAlteraLoginSemCred: TcxDBCheckBox
            Left = 352
            Top = 18
            Caption = '1.1 Essa op'#231#227'o pode ser alterada'#13#10'no cadastro de cada cliente'
            DataBinding.DataField = 'AlteraLoginSemCred'
            DataBinding.DataSource = DS
            ParentFont = False
            Properties.ImmediatePost = True
            Properties.MultiLine = True
            Properties.NullStyle = nssUnchecked
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -9
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Width = 164
          end
          object edCronoDec: TcxDBCheckBox
            Left = 17
            Top = 49
            Caption = '&2. Cron'#244'metro decrescente para sess'#245'es com pagamento antecipado'
            DataBinding.DataField = 'MostraPrePagoDec'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            Width = 361
          end
          object edEscodeTipoAcesso: TcxDBCheckBox
            Left = 17
            Top = 77
            Caption = 
              '&3. N'#227'o permitir que o cliente selecione o tipo de acesso na m'#225'q' +
              'uina cliente'
            DataBinding.DataField = 'EscondeTipoAcesso'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            Width = 384
          end
          object cxLabel3: TcxLabel
            Left = 21
            Top = 105
            Caption = '&4. Tempo M'#225'ximo de Toler'#226'ncia em acessos p'#243's-pagos'
          end
          object edTolerancia: TcxDBTimeEdit
            Left = 289
            Top = 103
            DataBinding.DataField = 'Tolerancia'
            DataBinding.DataSource = DS
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            Width = 83
          end
          object edFimPrePago: TcxDBImageComboBox
            Left = 290
            Top = 130
            DataBinding.DataField = 'EncerramentoPrePago'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = '1-Pausar Acesso'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = '2-Encerrar Acesso'
                Value = 1
              end>
            Properties.OnChange = edFimPrePagoPropertiesChange
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 6
            Width = 113
          end
          object edTempoEPrePago: TcxDBSpinEdit
            Left = 290
            Top = 156
            DataBinding.DataField = 'TempoEPrePago'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 7
            Width = 113
          end
          object edEncerramentoCartao: TcxDBImageComboBox
            Left = 290
            Top = 184
            DataBinding.DataField = 'EncerramentoCartao'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = '1-Pausar Acesso'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = '2-Encerrar Acesso'
                Value = 1
              end>
            Properties.OnChange = edEncerramentoCartaoPropertiesChange
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 8
            Width = 113
          end
          object edTempoECartao: TcxDBSpinEdit
            Left = 290
            Top = 210
            DataBinding.DataField = 'TempoECartao'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 9
            Width = 113
          end
          object lbTempoECartao: TcxLabel
            Left = 131
            Top = 211
            Caption = '6.1 Tempo para Encerrar (seg)'
          end
          object cxLabel36: TcxLabel
            Left = 21
            Top = 185
            Caption = '6. O que fazer ao acabar cr'#233'dito de cart'#227'o de tempo'
          end
          object lbTempoEPrePago: TcxLabel
            Left = 135
            Top = 157
            Caption = '5.1 Tempo para Encerrar (seg)'
          end
          object cxLabel7: TcxLabel
            Left = 21
            Top = 131
            Caption = '5. O que fazer ao encerrar tempo de acesso pr'#233'-pago'
          end
          object cxDBCheckBox3: TcxDBCheckBox
            Left = 19
            Top = 237
            Caption = '&7. For'#231'ar cumprimento dos hor'#225'rios permitidos a cada cliente'
            DataBinding.DataField = 'BloquearUsoEmHorarioNP'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 14
            Width = 384
          end
          object cxDBCheckBox5: TcxDBCheckBox
            Left = 19
            Top = 259
            Caption = 
              '8. Utilizar tarifa'#231#227'o totalizada ao adicionar mais de um cr'#233'dito' +
              ' tempo em mesmo acesso'
            DataBinding.DataField = 'ContinuarCredTempo'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 15
            Width = 460
          end
          object cxDBCheckBox6: TcxDBCheckBox
            Left = 19
            Top = 280
            Caption = 
              '9. N'#227'o guardar cr'#233'dito de tempo restante na conta do cliente ao ' +
              'final do acesso'
            DataBinding.DataField = 'NaoGuardarCreditoCli'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 16
            Width = 460
          end
          object cxGroupBox1: TcxGroupBox
            Left = 23
            Top = 307
            Caption = ' 10. Tela de Adicionar Tempo '
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 17
            Height = 135
            Width = 500
            object edTempoB1: TcxDBSpinEdit
              Left = 24
              Top = 44
              DataBinding.DataField = 'TempoB1'
              DataBinding.DataSource = DS
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 0
              Width = 61
            end
            object cxLabel19: TcxLabel
              Left = 11
              Top = 45
              Caption = '1:'
            end
            object cxLabel20: TcxLabel
              Left = 91
              Top = 45
              Caption = '2:'
            end
            object edTempoB2: TcxDBSpinEdit
              Left = 104
              Top = 44
              DataBinding.DataField = 'TempoB2'
              DataBinding.DataSource = DS
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 3
              Width = 61
            end
            object edTempoB3: TcxDBSpinEdit
              Left = 184
              Top = 44
              DataBinding.DataField = 'TempoB3'
              DataBinding.DataSource = DS
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 4
              Width = 61
            end
            object cxLabel22: TcxLabel
              Left = 250
              Top = 45
              Caption = '4:'
            end
            object edTempoB4: TcxDBSpinEdit
              Left = 263
              Top = 45
              DataBinding.DataField = 'TempoB4'
              DataBinding.DataSource = DS
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 6
              Width = 61
            end
            object edTempoB5: TcxDBSpinEdit
              Left = 343
              Top = 45
              DataBinding.DataField = 'TempoB5'
              DataBinding.DataSource = DS
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 7
              Width = 61
            end
            object cxLabel23: TcxLabel
              Left = 330
              Top = 46
              Caption = '5:'
            end
            object cxLabel24: TcxLabel
              Left = 410
              Top = 46
              Caption = '6:'
            end
            object edTempoB6: TcxDBSpinEdit
              Left = 423
              Top = 45
              DataBinding.DataField = 'TempoB6'
              DataBinding.DataSource = DS
              Properties.Alignment.Horz = taCenter
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.UseLeftAlignmentOnEditing = False
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 10
              Width = 61
            end
            object cxLabel21: TcxLabel
              Left = 171
              Top = 45
              Caption = '3:'
            end
            object cxLabel18: TcxLabel
              Left = 11
              Top = 22
              Caption = '10.1 - Tempo (em minutos) dos atalhos de tempo'
              Style.TextStyle = []
            end
            object cxLabel25: TcxLabel
              Left = 11
              Top = 78
              Caption = '10.2 - Tipo de Tempo padr'#227'o'
              Style.TextStyle = []
            end
            object edCredPadrao: TcxDBLookupComboBox
              Left = 13
              Top = 95
              DataBinding.DataField = 'NomeTipoCred'
              DataBinding.DataSource = DS
              Properties.ListColumns = <>
              Properties.ListOptions.CaseInsensitive = True
              Properties.ListOptions.ColumnSorting = False
              Properties.ListOptions.ShowHeader = False
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 14
              Width = 145
            end
          end
          object edCreditoComoValor: TcxDBCheckBox
            Left = 19
            Top = 448
            Caption = '11. Guardar cr'#233'dito de tempo como VALOR'
            DataBinding.DataField = 'CreditoComoValor'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 18
            Width = 230
          end
          object cxDBCheckBox15: TcxDBCheckBox
            Left = 19
            Top = 469
            Caption = 
              '12. Alertar cliente sobre cr'#233'ditos com restri'#231#245'es de uso na sess' +
              #227'o atual'
            DataBinding.DataField = 'AvisoCreditos'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 19
            Width = 374
          end
          object edModoCredGuard: TcxDBImageComboBox
            Left = 25
            Top = 513
            DataBinding.DataField = 'ModoCredGuard'
            DataBinding.DataSource = DS
            Properties.Items = <
              item
                Description = 'Mostrar apenas o tempo v'#225'lido para a sess'#227'o atual'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 
                  'Mostrar o tempo total no cron'#244'metro incluindo cr'#233'ditos inv'#225'lidos' +
                  ' para a sess'#227'o'
                Value = 1
              end>
            Style.BorderStyle = ebsFlat
            TabOrder = 20
            Width = 446
          end
          object cxLabel37: TcxLabel
            Left = 22
            Top = 496
            Caption = 
              '13. Como exibir os cr'#233'ditos dispon'#237'veis no cron'#244'metro da m'#225'quina' +
              ' cliente'
          end
          object cxLabel38: TcxLabel
            Left = 22
            Top = 538
            Caption = 
              '14. Mensagem de fim de cr'#233'dito a ser exibida quando o cliente ai' +
              'nda possui outros cr'#233'ditos inv'#225'lidos para a sess'#227'o atual:'
          end
          object edMsgFimCred: TcxDBTextEdit
            Left = 25
            Top = 556
            DataBinding.DataField = 'MsgFimCred'
            DataBinding.DataSource = DS
            Style.BorderStyle = ebsFlat
            TabOrder = 23
            Width = 624
          end
          object LMDSimplePanel1: TLMDSimplePanel
            Left = 25
            Top = 652
            Width = 100
            Height = 60
            Bevel.Mode = bmCustom
            TabOrder = 24
          end
          object cxDBSpinEdit1: TcxDBSpinEdit
            Left = 376
            Top = 583
            DataBinding.DataField = 'MaxTempoSessao'
            DataBinding.DataSource = DS
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.UseLeftAlignmentOnEditing = False
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 25
            Width = 71
          end
          object cxLabel52: TcxLabel
            Left = 21
            Top = 584
            Caption = 
              '15. Limite m'#225'ximo de tempo das sess'#245'es. Deixe 0 para n'#227'o haver l' +
              'imite.'
          end
          object cxLabel53: TcxLabel
            Left = 451
            Top = 584
            Caption = 'minutos.'
          end
          object cxDBCheckBox16: TcxDBCheckBox
            Left = 19
            Top = 623
            Caption = '13. Permitir que o cliente veja detalhes dos seus cr'#233'ditos'
            DataBinding.DataField = 'ClientePodeVerCred'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 28
            Visible = False
            Width = 407
          end
        end
      end
      object cxTabSheet1: TcxTabSheet
        Caption = '&F. Avisos de Fim de Tempo'
        ImageIndex = 5
        ExplicitHeight = 673
        object PagAviso: TcxPageControl
          Left = 0
          Top = 0
          Width = 817
          Height = 373
          Align = alClient
          HideTabs = True
          TabOrder = 0
          ExplicitHeight = 673
          ClientRectBottom = 373
          ClientRectRight = 817
          ClientRectTop = 0
        end
      end
      object tsCores: TcxTabSheet
        Caption = '&G. Cores'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        ExplicitHeight = 673
        object LMDScrollBox5: TLMDScrollBox
          Left = 0
          Top = 0
          Width = 817
          Height = 373
          Align = alClient
          TabOrder = 0
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          ExplicitHeight = 673
          object vgCor: TcxDBVerticalGrid
            AlignWithMargins = True
            Left = 5
            Top = 5
            Width = 281
            Height = 422
            Margins.Left = 5
            Margins.Top = 5
            Margins.Right = 5
            Margins.Bottom = 5
            Align = alLeft
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
            OptionsView.PaintStyle = psDelphi
            OptionsView.RowHeaderWidth = 101
            TabOrder = 0
            OnEditValueChanged = vgCorEditValueChanged
            DataController.DataSource = DS
            ExplicitHeight = 665
            Version = 1
            object vgCorCMaqLivre: TcxCategoryRow
              Properties.Caption = '1. M'#225'quina Livre'
              ID = 0
              ParentID = -1
              Index = 0
              Version = 1
            end
            object vgCorMaqLivre: TcxDBEditorRow
              Height = 17
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorLivre'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 1
              ParentID = 0
              Index = 0
              Version = 1
            end
            object vgCorFMaqLivre: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFLivre'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 2
              ParentID = 0
              Index = 1
              Version = 1
            end
            object vgCorCUsoPre: TcxCategoryRow
              Properties.Caption = '2. M'#225'quina em Uso Pr'#233'-Pago'
              ID = 3
              ParentID = -1
              Index = 1
              Version = 1
            end
            object vgCorMaqUsoPre: TcxDBEditorRow
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorUsoPrePago'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 4
              ParentID = 3
              Index = 0
              Version = 1
            end
            object vgCorFUsoPre: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFUsoPrePago'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 5
              ParentID = 3
              Index = 1
              Version = 1
            end
            object vgCorCUsoPos: TcxCategoryRow
              Properties.Caption = '3. M'#225'quina em Uso P'#243's-Pago'
              ID = 6
              ParentID = -1
              Index = 2
              Version = 1
            end
            object vgCorUsoPos: TcxDBEditorRow
              Height = 17
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorUsoPosPago'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 7
              ParentID = 6
              Index = 0
              Version = 1
            end
            object vgCorFUsoPos: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFUsoPosPago'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 8
              ParentID = 6
              Index = 1
              Version = 1
            end
            object vgCorCUsoManut: TcxCategoryRow
              Properties.Caption = '4. M'#225'quina em Uso por Funcion'#225'rio'
              ID = 9
              ParentID = -1
              Index = 3
              Version = 1
            end
            object vgCorManut: TcxDBEditorRow
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorManutencao'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 10
              ParentID = 9
              Index = 0
              Version = 1
            end
            object vgCorFManut: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFManutencao'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 11
              ParentID = 9
              Index = 1
              Version = 1
            end
            object vgCorCPausada: TcxCategoryRow
              Properties.Caption = '5. M'#225'quina Pausada '
              ID = 12
              ParentID = -1
              Index = 4
              Version = 1
            end
            object vgCorPausa: TcxDBEditorRow
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorPausado'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 13
              ParentID = 12
              Index = 0
              Version = 1
            end
            object vgCorFPausa: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFPausado'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 14
              ParentID = 12
              Index = 1
              Version = 1
            end
            object vgCorCategoryRow4: TcxCategoryRow
              Properties.Caption = '6. '#193'rea de Trabalho das M'#225'quinas Clientes'
              ID = 15
              ParentID = -1
              Index = 5
              Version = 1
            end
            object vgCorDesktop: TcxDBEditorRow
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorDesktop'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 16
              ParentID = 15
              Index = 0
              Version = 1
            end
            object vgCorFDesktop: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFDesktop'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 17
              ParentID = 15
              Index = 1
              Version = 1
            end
            object vgCorCategoryRow1: TcxCategoryRow
              Properties.Caption = '7. M'#225'quina em Manuten'#231#227'o / Fora do Ar'
              ID = 18
              ParentID = -1
              Index = 6
              Version = 1
            end
            object vgCorMaqManut: TcxDBEditorRow
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorMaqManut'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 19
              ParentID = 18
              Index = 0
              Version = 1
            end
            object vgCorFMaqManut: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.BeepOnError = True
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFMaqManut'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 20
              ParentID = 18
              Index = 1
              Version = 1
            end
            object vgCorCategoryRow2: TcxCategoryRow
              Properties.Caption = '8. M'#225'quina em Uso por Tempo Previsto'
              ID = 21
              ParentID = -1
              Index = 7
              Version = 1
            end
            object vgCorPrevisao: TcxDBEditorRow
              Properties.Caption = 'Fundo'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.ColorDialogType = cxcdtCustom
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorPrevisao'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 22
              ParentID = 21
              Index = 0
              Version = 1
            end
            object vgCorFPrevisao: TcxDBEditorRow
              Properties.Caption = 'Fonte'
              Properties.EditPropertiesClassName = 'TcxColorComboBoxProperties'
              Properties.EditProperties.AllowSelectColor = True
              Properties.EditProperties.ColorDialogType = cxcdtCustom
              Properties.EditProperties.CustomColors = <>
              Properties.EditProperties.ImmediatePost = True
              Properties.EditProperties.ImmediateUpdateText = True
              Properties.EditProperties.ShowDescriptions = False
              Properties.DataBinding.FieldName = 'CorFPrevisao'
              Properties.Options.ShowEditButtons = eisbAlways
              ID = 23
              ParentID = 21
              Index = 1
              Version = 1
            end
          end
          object lbPrevisao: TcxLabel
            Left = 287
            Top = 407
            AutoSize = False
            Caption = 'Tempo Previsto'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 363
            AnchorY = 420
          end
          object lbMaqManut: TcxLabel
            Left = 287
            Top = 353
            AutoSize = False
            Caption = 'Em Manuten'#231#227'o  / Fora do ar'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 363
            AnchorY = 366
          end
          object lbDesktop: TcxLabel
            Left = 288
            Top = 302
            AutoSize = False
            Caption = #193'rea de Trabalho'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 364
            AnchorY = 315
          end
          object lbPausa: TcxLabel
            Left = 288
            Top = 248
            AutoSize = False
            Caption = 'M'#225'quina Pausada'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 364
            AnchorY = 261
          end
          object lbManut: TcxLabel
            Left = 288
            Top = 195
            AutoSize = False
            Caption = 'Funcion'#225'rio Usando'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 364
            AnchorY = 208
          end
          object lbPosPago: TcxLabel
            Left = 288
            Top = 141
            AutoSize = False
            Caption = 'M'#225'quina em Uso P'#243's-Pago'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 364
            AnchorY = 154
          end
          object lbPrePago: TcxLabel
            Left = 288
            Top = 87
            AutoSize = False
            Caption = 'M'#225'quina em Uso Pr'#233'-Pago'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 364
            AnchorY = 100
          end
          object cxLabel2: TcxLabel
            Left = 288
            Top = 9
            Caption = 'Exemplos:'
            Style.TextStyle = [fsBold]
          end
          object lbLivre: TcxLabel
            Left = 288
            Top = 34
            AutoSize = False
            Caption = 'M'#225'quina Livre'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWhite
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.NativeStyle = False
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            Properties.Alignment.Horz = taCenter
            Properties.Alignment.Vert = taVCenter
            Height = 25
            Width = 152
            AnchorX = 364
            AnchorY = 47
          end
        end
      end
      object tsCaixa: TcxTabSheet
        Caption = '&H. Caixa'
        ImageIndex = 8
        ExplicitHeight = 673
        object LMDScrollBox4: TLMDScrollBox
          Left = 0
          Top = 0
          Width = 817
          Height = 373
          Align = alClient
          TabOrder = 0
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          ExplicitHeight = 673
          object edManterSaldoCaixa: TcxDBCheckBox
            Left = 15
            Top = 16
            Caption = '&1. Manter Saldo de Caixa'
            DataBinding.DataField = 'ManterSaldoCaixa'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 177
          end
          object cxLabel15: TcxLabel
            Left = 19
            Top = 41
            Caption = '2. Como deve ser exibida a tela de pagamento de acesso'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
          end
          object edModoPagtoAcesso: TcxDBImageComboBox
            Left = 20
            Top = 58
            DataBinding.DataField = 'ModoPagtoAcesso'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = '1-Automaticamente ap'#243's finaliza'#231#227'o'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = '2-Atrav'#233's de duplo clique na m'#225'quina'
                Value = 1
              end
              item
                Description = '3-Somente atrav'#233's da tela de Caixa'
                Value = 2
              end>
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            Width = 335
          end
          object edRelCaixaAuto: TcxDBCheckBox
            Left = 17
            Top = 85
            Caption = '&3. Ao fechar caixa, gerar relat'#243'rio automaticamente'
            DataBinding.DataField = 'RelCaixaAuto'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            Width = 281
          end
          object edAutoObsAoCancelar: TcxDBCheckBox
            Left = 17
            Top = 107
            Caption = 
              '&4. Ao cancelar transa'#231#227'o do caixar mostrar tela de observa'#231#245'es ' +
              'automaticamente'
            DataBinding.DataField = 'AutoObsAoCancelar'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            Width = 440
          end
          object gbOpcaoPagto: TcxGroupBox
            Left = 14
            Top = 134
            Caption = ' 5. Op'#231#227'o padr'#227'o de pagamento '
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            Height = 168
            Width = 341
            object cxLabel26: TcxLabel
              Left = 12
              Top = 36
              Caption = 'Acesso'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
            end
            object cxLabel27: TcxLabel
              Left = 12
              Top = 83
              Caption = 'Venda Avulsa'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
            end
            object cxLabel28: TcxLabel
              Left = 12
              Top = 106
              Caption = 'Adicionar Tempo'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
            end
            object cxLabel29: TcxLabel
              Left = 12
              Top = 129
              Caption = 'Impress'#227'o'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
            end
            object cbPgAcesso: TcxDBImageComboBox
              Left = 99
              Top = 35
              DataBinding.DataField = 'PgAcesso'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Sim'
                  ImageIndex = 0
                  Value = True
                end
                item
                  Description = 'N'#227'o'
                  Value = False
                end>
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 4
              Width = 94
            end
            object cxLabel30: TcxLabel
              Left = 99
              Top = 18
              Caption = 'Pagamento Total ?'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
            end
            object cbPgVendaAvulsa: TcxDBImageComboBox
              Left = 99
              Top = 82
              DataBinding.DataField = 'PgVendaAvulsa'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Sim'
                  ImageIndex = 0
                  Value = True
                end
                item
                  Description = 'N'#227'o'
                  Value = False
                end>
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 6
              Width = 94
            end
            object cbPgTempo: TcxDBImageComboBox
              Left = 99
              Top = 105
              DataBinding.DataField = 'PgTempo'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Sim'
                  ImageIndex = 0
                  Value = True
                end
                item
                  Description = 'N'#227'o'
                  Value = False
                end>
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 7
              Width = 94
            end
            object cbPgImpressao: TcxDBImageComboBox
              Left = 99
              Top = 128
              DataBinding.DataField = 'PgImp'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Sim'
                  ImageIndex = 0
                  Value = True
                end
                item
                  Description = 'N'#227'o'
                  Value = False
                end>
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 8
              Width = 94
            end
            object cxLabel32: TcxLabel
              Left = 12
              Top = 59
              Caption = 'Venda c/ Acesso'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
            end
            object cbPgVendas: TcxDBImageComboBox
              Left = 99
              Top = 58
              DataBinding.DataField = 'PgVendas'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.ImmediateUpdateText = True
              Properties.Items = <
                item
                  Description = 'Sim'
                  ImageIndex = 0
                  Value = True
                end
                item
                  Description = 'N'#227'o'
                  Value = False
                end>
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 5
              Width = 94
            end
          end
          object gbCaixaEmail: TcxGroupBox
            Left = 15
            Top = 312
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 7
            Height = 131
            Width = 341
            object lbEmailDestino: TcxLabel
              Left = 12
              Top = 25
              Caption = 'Enviar para'
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.NativeStyle = True
            end
            object edEmailDestino: TcxDBMemo
              Left = 77
              Top = 25
              DataBinding.DataField = 'EmailDestino'
              DataBinding.DataSource = DS
              Style.LookAndFeel.Kind = lfFlat
              Style.LookAndFeel.NativeStyle = True
              StyleDisabled.LookAndFeel.Kind = lfFlat
              StyleDisabled.LookAndFeel.NativeStyle = True
              StyleFocused.LookAndFeel.Kind = lfFlat
              StyleFocused.LookAndFeel.NativeStyle = True
              StyleHot.LookAndFeel.Kind = lfFlat
              StyleHot.LookAndFeel.NativeStyle = True
              TabOrder = 1
              Height = 89
              Width = 248
            end
          end
          object edEmailEnviarCaixa: TcxDBCheckBox
            Left = 20
            Top = 308
            Caption = '&6. Enviar Caixa por E-mail '
            DataBinding.DataField = 'EmailEnviarCaixa'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Properties.OnChange = edEmailEnviarCaixaPropertiesChange
            Properties.OnEditValueChanged = edEmailEnviarCaixaPropertiesChange
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 6
            Width = 149
          end
        end
      end
      object tsFidelidade: TcxTabSheet
        Caption = 'I. Fidelidade'
        ImageIndex = 9
        ExplicitHeight = 673
        object panSemFidelidade: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 817
          Height = 40
          Align = alTop
          Bevel.Mode = bmCustom
          TabOrder = 0
          object lbSemFidelidade: TcxLabel
            Left = 0
            Top = 0
            Align = alClient
            Caption = 
              '      Esse recurso est'#225' desativado na sua loja. Para ativar '#233' ne' +
              'cess'#225'rio comprar uma atualiza'#231#227'o do NexCaf'#233'.'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clWhite
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Width = 817
            AnchorY = 20
          end
        end
        object panDadosFid: TLMDSimplePanel
          Left = 0
          Top = 40
          Width = 817
          Height = 333
          Align = alClient
          Bevel.Mode = bmCustom
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitHeight = 633
          object LMDScrollBox3: TLMDScrollBox
            Left = 0
            Top = 0
            Width = 817
            Height = 333
            VertScrollBar.Position = 58
            Align = alClient
            TabOrder = 0
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            ExplicitHeight = 633
            object cbFidAtivo: TcxDBCheckBox
              Left = 16
              Top = -42
              Caption = '&1. Ativar programa de pontos / fideliza'#231'ao de clientes'
              DataBinding.DataField = 'FidAtivo'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.BorderStyle = ebsFlat
              TabOrder = 0
              OnClick = cbFidAtivoClick
              Width = 313
            end
            object cbComputador: TcxGroupBox
              Left = 21
              Top = -15
              Caption = ' &2. Uso do computador '
              Style.BorderStyle = ebsFlat
              TabOrder = 1
              Height = 89
              Width = 273
              object cxLabel39: TcxLabel
                Left = 12
                Top = 24
                Caption = 'Acumular'
              end
              object edFidSessaoPontos: TcxDBSpinEdit
                Left = 66
                Top = 23
                DataBinding.DataField = 'FidSessaoPontos'
                DataBinding.DataSource = DS
                Properties.ImmediatePost = True
                Properties.Increment = 10.000000000000000000
                Properties.LargeIncrement = 100.000000000000000000
                Style.BorderStyle = ebsFlat
                TabOrder = 1
                Width = 99
              end
              object cxLabel40: TcxLabel
                Left = 171
                Top = 25
                Caption = 'pontos'
              end
              object cxLabel41: TcxLabel
                Left = 13
                Top = 50
                Caption = 'A cada'
              end
              object edFidSessaoValor: TcxDBCurrencyEdit
                Left = 66
                Top = 49
                DataBinding.DataField = 'FidSessaoValor'
                DataBinding.DataSource = DS
                Style.BorderStyle = ebsFlat
                TabOrder = 4
                Width = 99
              end
              object cxLabel42: TcxLabel
                Left = 171
                Top = 51
                Caption = 'gastos (e pagos)'
              end
            end
            object cbProdutos: TcxGroupBox
              Left = 21
              Top = 80
              Caption = ' &3. Compra de produtos'
              Style.BorderStyle = ebsFlat
              TabOrder = 2
              Height = 89
              Width = 273
              object cxLabel43: TcxLabel
                Left = 12
                Top = 24
                Caption = 'Acumular'
              end
              object edFidVendaPontos: TcxDBSpinEdit
                Left = 66
                Top = 23
                DataBinding.DataField = 'FidVendaPontos'
                DataBinding.DataSource = DS
                Properties.ImmediatePost = True
                Properties.Increment = 10.000000000000000000
                Properties.LargeIncrement = 100.000000000000000000
                Style.BorderStyle = ebsFlat
                TabOrder = 1
                Width = 99
              end
              object cxLabel44: TcxLabel
                Left = 171
                Top = 25
                Caption = 'pontos'
              end
              object cxLabel45: TcxLabel
                Left = 13
                Top = 50
                Caption = 'A cada'
              end
              object edFidVendaValor: TcxDBCurrencyEdit
                Left = 66
                Top = 49
                DataBinding.DataField = 'FidVendaValor'
                DataBinding.DataSource = DS
                Style.BorderStyle = ebsFlat
                TabOrder = 4
                Width = 99
              end
              object cxLabel46: TcxLabel
                Left = 171
                Top = 51
                Caption = 'gastos (e pagos)'
              end
            end
            object cbImpressoes: TcxGroupBox
              Left = 21
              Top = 171
              Caption = '&4. Impress'#245'es'
              Style.BorderStyle = ebsFlat
              TabOrder = 3
              Height = 89
              Width = 273
              object cxLabel47: TcxLabel
                Left = 12
                Top = 24
                Caption = 'Acumular'
              end
              object edFidImpPontos: TcxDBSpinEdit
                Left = 66
                Top = 23
                DataBinding.DataField = 'FidImpPontos'
                DataBinding.DataSource = DS
                Properties.ImmediatePost = True
                Properties.Increment = 10.000000000000000000
                Properties.LargeIncrement = 100.000000000000000000
                Style.BorderStyle = ebsFlat
                TabOrder = 1
                Width = 99
              end
              object cxLabel48: TcxLabel
                Left = 171
                Top = 25
                Caption = 'pontos'
              end
              object cxLabel49: TcxLabel
                Left = 13
                Top = 50
                Caption = 'A cada'
              end
              object edFidImpValor: TcxDBCurrencyEdit
                Left = 66
                Top = 49
                DataBinding.DataField = 'FidImpValor'
                DataBinding.DataSource = DS
                Style.BorderStyle = ebsFlat
                TabOrder = 4
                Width = 99
              end
              object cxLabel50: TcxLabel
                Left = 171
                Top = 51
                Caption = 'gastos (e pagos)'
              end
            end
            object cbFidParcial: TcxDBCheckBox
              Left = 16
              Top = 273
              Caption = 
                '&5. Pontua'#231#227'o proporcional quando valor for menor do que o indic' +
                'ado acima'
              DataBinding.DataField = 'FidParcial'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.BorderStyle = ebsFlat
              TabOrder = 4
              Width = 393
            end
            object edFidAutoPremiar: TcxDBCheckBox
              Left = 17
              Top = 297
              Caption = '&6. Premiar clientes automaticamente'
              DataBinding.DataField = 'FidAutoPremiar'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.BorderStyle = ebsFlat
              TabOrder = 5
              OnClick = cbFidAtivoClick
              Width = 212
            end
            object lbFidPremio: TcxLabel
              Left = 34
              Top = 323
              Caption = '6.1 Pr'#234'mio (Cr'#233'dito Promocional) '
            end
            object edFidPremio: TcxDBLookupComboBox
              Left = 199
              Top = 322
              DataBinding.DataField = 'NomePremioPass'
              DataBinding.DataSource = DS
              Properties.Alignment.Horz = taLeftJustify
              Properties.Alignment.Vert = taVCenter
              Properties.ImmediatePost = True
              Properties.ListColumns = <>
              Properties.OnInitPopup = edFidPremioPropertiesInitPopup
              Style.BorderStyle = ebsFlat
              TabOrder = 7
              Width = 170
            end
            object edFidMostrarSaldoAdmin: TcxDBCheckBox
              Left = 13
              Top = 500
              Caption = 
                '&7. Mostrar saldo de pontos do cliente na lista de m'#225'quinas do N' +
                'exAdmin'
              DataBinding.DataField = 'FidMostrarSaldoAdmin'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.BorderStyle = ebsFlat
              TabOrder = 9
              OnClick = cbFidAtivoClick
              Width = 400
            end
            object edFidMostrarSaldoGuard: TcxDBCheckBox
              Left = 13
              Top = 522
              Caption = 
                '&8. Mostrar saldo de pontos do cliente na m'#225'quina cliente (NexGu' +
                'ard)'
              DataBinding.DataField = 'FidMostrarSaldoGuard'
              DataBinding.DataSource = DS
              Properties.ImmediatePost = True
              Properties.NullStyle = nssUnchecked
              Style.BorderStyle = ebsFlat
              TabOrder = 10
              OnClick = cbFidAtivoClick
              Width = 376
            end
            object LMDSimplePanel2: TLMDSimplePanel
              Left = 17
              Top = 588
              Width = 100
              Height = 47
              Bevel.Mode = bmCustom
              TabOrder = 11
            end
            object gbFidMsg: TcxGroupBox
              Left = 34
              Top = 349
              Caption = '&6.2 Mensagem de premia'#231#227'o'
              Style.BorderStyle = ebs3D
              TabOrder = 8
              Height = 143
              Width = 451
              object edFidMsg: TcxDBCheckBox
                Left = 8
                Top = 20
                Caption = 'Mostrar mensagem de premia'#231#227'o na m'#225'quina cliente'
                DataBinding.DataField = 'FidMsg'
                DataBinding.DataSource = DS
                Properties.ImmediatePost = True
                Properties.NullStyle = nssUnchecked
                Style.BorderStyle = ebsFlat
                TabOrder = 0
                OnClick = cbFidAtivoClick
                Width = 281
              end
              object lbFidMsgTitulo: TcxLabel
                Left = 16
                Top = 48
                Caption = 'Titulo da Mensagem'
              end
              object lbFidMsgTexto: TcxLabel
                Left = 16
                Top = 71
                Caption = 'Texto da Mesangem'
              end
              object edFidMsgTitulo: TcxDBTextEdit
                Left = 120
                Top = 48
                DataBinding.DataField = 'FidMsgTitulo'
                DataBinding.DataSource = DS
                Style.BorderStyle = ebsFlat
                TabOrder = 3
                Width = 324
              end
              object edFidMsgTexto: TcxDBMemo
                Left = 120
                Top = 74
                DataBinding.DataField = 'FidMsgTexto'
                DataBinding.DataSource = DS
                Style.BorderStyle = ebsFlat
                TabOrder = 4
                Height = 61
                Width = 324
              end
            end
          end
        end
      end
      object tsYahoo: TcxTabSheet
        Caption = 'J. Kit Yahoo Lan'
        ImageIndex = 10
        ExplicitHeight = 673
        object cxDBCheckBox20: TcxDBCheckBox
          AlignWithMargins = True
          Left = 16
          Top = 118
          Margins.Left = 16
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = 
            '&3. Ao iniciar acesso do cliente abrir automaticamente p'#225'gina de' +
            ' internet definida pelo sistema de publicidade'
          DataBinding.DataField = 'PubHomePage'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.BorderStyle = ebsFlat
          TabOrder = 0
          OnClick = cbFidAtivoClick
          ExplicitTop = 76
          Width = 801
        end
        object cxDBCheckBox21: TcxDBCheckBox
          AlignWithMargins = True
          Left = 16
          Top = 87
          Margins.Left = 16
          Margins.Top = 10
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = '&2. Mostrar barra de ferramentas'
          DataBinding.DataField = 'PubToolbar'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.BorderStyle = ebsFlat
          TabOrder = 1
          OnClick = cbFidAtivoClick
          ExplicitTop = 66
          Width = 801
        end
        object cxDBCheckBox22: TcxDBCheckBox
          AlignWithMargins = True
          Left = 16
          Top = 56
          Margins.Left = 16
          Margins.Top = 16
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alTop
          Caption = '&1. Mostrar banner com publicidade nas m'#225'quinas clientes'
          DataBinding.DataField = 'PubAd'
          DataBinding.DataSource = DS
          Properties.ImmediatePost = True
          Properties.NullStyle = nssUnchecked
          Style.BorderStyle = ebsFlat
          TabOrder = 2
          OnClick = cbFidAtivoClick
          Width = 801
        end
        object LMDSimplePanel5: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 817
          Height = 40
          Align = alTop
          Bevel.Mode = bmCustom
          TabOrder = 3
          object cxLabel51: TcxLabel
            Left = 0
            Top = 0
            Align = alClient
            Caption = 
              '      A desativa'#231#227'o da publicidade s'#243' tem efeito para assinantes' +
              ' do NexCaf'#233' Premium'
            ParentColor = False
            ParentFont = False
            Style.Color = clBackground
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.TextColor = clWhite
            Style.IsFontAssigned = True
            Properties.Alignment.Horz = taLeftJustify
            Properties.Alignment.Vert = taVCenter
            Properties.WordWrap = True
            Width = 817
            AnchorY = 20
          end
        end
      end
      object cxTabSheet5: TcxTabSheet
        Caption = 'L. Impress'#245'es'
        ImageIndex = 11
        ExplicitHeight = 673
        object cxGroupBox2: TcxGroupBox
          AlignWithMargins = True
          Left = 20
          Top = 20
          Margins.Left = 20
          Margins.Top = 20
          Margins.Right = 20
          Margins.Bottom = 20
          Align = alTop
          Caption = ' Registro das impress'#245'es '
          ParentFont = False
          Style.BorderStyle = ebs3D
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 135
          Width = 777
          object edDetectarImp: TcxCheckBox
            AlignWithMargins = True
            Left = 17
            Top = 23
            Margins.Left = 15
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = '1. Detectar impress'#245'es realizadas pelos clientes'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnClick = edDetectarImpClick
            Width = 758
          end
          object edRegValorImp: TcxCheckBox
            AlignWithMargins = True
            Left = 17
            Top = 49
            Margins.Left = 15
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = 
              '2. Registrar automaticamente os valores das impress'#245'es detectada' +
              's'
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnClick = edRegValorImpClick
            Width = 758
          end
          object edNaoCobrarImpFunc: TcxDBCheckBox
            AlignWithMargins = True
            Left = 17
            Top = 75
            Margins.Left = 15
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = '3. N'#227'o cobrar impress'#245'es de funcion'#225'rios'
            DataBinding.DataField = 'NaoCobrarImpFunc'
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
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            Width = 758
          end
          object cxDBCheckBox14: TcxDBCheckBox
            AlignWithMargins = True
            Left = 17
            Top = 101
            Margins.Left = 15
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alTop
            Caption = '4. Detectar impress'#245'es realizadas no servidor'
            DataBinding.DataField = 'DetectarImpServ'
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
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            Width = 758
          end
        end
        object cxGroupBox3: TcxGroupBox
          AlignWithMargins = True
          Left = 20
          Top = 175
          Margins.Left = 20
          Margins.Top = 0
          Margins.Right = 20
          Margins.Bottom = 20
          Align = alTop
          Caption = ' Pausa Autom'#225'tica de Impress'#245'es '
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 290
          Width = 777
          object edPMPausaAutomatica: TcxDBCheckBox
            AlignWithMargins = True
            Left = 17
            Top = 46
            Margins.Left = 15
            Margins.Top = 5
            Margins.Right = 15
            Margins.Bottom = 0
            Align = alTop
            Caption = '5. Pausar automaticamente e aguardar confirma'#231#227'o da impress'#227'o'
            DataBinding.DataField = 'PMPausaAutomatica'
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
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            OnClick = edPMPausaAutomaticaClick
            Width = 743
          end
          object edPMConfirmaImpCli: TcxDBCheckBox
            AlignWithMargins = True
            Left = 17
            Top = 72
            Margins.Left = 15
            Margins.Top = 5
            Margins.Right = 15
            Margins.Bottom = 0
            Align = alTop
            Caption = '6. Perguntar ao cliente se confirma impress'#227'o'
            DataBinding.DataField = 'PMConfirmaImpCliente'
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
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            OnClick = edPMConfirmaImpCliClick
            Width = 743
          end
          object edPMMostrarPaginasCli: TcxDBCheckBox
            AlignWithMargins = True
            Left = 32
            Top = 98
            Margins.Left = 30
            Margins.Top = 5
            Margins.Right = 15
            Margins.Bottom = 0
            Align = alTop
            Caption = '6.1   Mostrar quantidade de p'#225'ginas na pergunta'
            DataBinding.DataField = 'PMMostrarPaginasCli'
            DataBinding.DataSource = DS
            Enabled = False
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
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            Width = 728
          end
          object edPMMostrarValorCli: TcxDBCheckBox
            AlignWithMargins = True
            Left = 32
            Top = 124
            Margins.Left = 30
            Margins.Top = 5
            Margins.Right = 15
            Margins.Bottom = 0
            Align = alTop
            Caption = '6.2   Mostrar valor da impress'#227'o na pergunta'
            DataBinding.DataField = 'PMMostrarValorCli'
            DataBinding.DataSource = DS
            Enabled = False
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
            Style.LookAndFeel.NativeStyle = True
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            OnClick = edPMMostrarValorCliClick
            Width = 728
          end
          object LMDSimplePanel4: TLMDSimplePanel
            Left = 2
            Top = 176
            Width = 773
            Height = 112
            Align = alClient
            Bevel.Mode = bmCustom
            TabOrder = 4
            object lbPMObs: TcxLabel
              AlignWithMargins = True
              Left = 48
              Top = 0
              Margins.Left = 48
              Margins.Top = 0
              Align = alTop
              Caption = '6.3   Observa'#231#227'o a ser mostrada no rodap'#233' da pergunta'
              Enabled = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object edPMObs: TcxDBMemo
              AlignWithMargins = True
              Left = 76
              Top = 20
              Margins.Left = 76
              Margins.Top = 0
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alLeft
              DataBinding.DataField = 'PMObsValorCli'
              DataBinding.DataSource = DS
              Enabled = False
              ParentFont = False
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Height = 82
              Width = 445
            end
          end
          object LMDSimplePanel3: TLMDSimplePanel
            Left = 2
            Top = 145
            Width = 773
            Height = 31
            Align = alTop
            Bevel.Mode = bmCustom
            TabOrder = 5
            object lbPMCalcValorCli: TcxLabel
              AlignWithMargins = True
              Left = 72
              Top = 5
              Margins.Left = 72
              Margins.Top = 5
              Align = alLeft
              Caption = '6.2.1   Valor da impress'#227'o a ser mostrado na pergunta'
              Enabled = False
              ParentFont = False
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
            end
            object edPMCalcValorCli: TcxDBImageComboBox
              Left = 345
              Top = 5
              DataBinding.DataField = 'PMCalcValorCli'
              DataBinding.DataSource = DS
              Enabled = False
              ParentFont = False
              Properties.Items = <
                item
                  Description = 'Valor m'#237'nimo e valor m'#225'ximo'
                  ImageIndex = 0
                  Value = 0
                end
                item
                  Description = 'Valor m'#237'nimo'
                  Value = 1
                end
                item
                  Description = 'Valor m'#225'ximo'
                  Value = 2
                end>
              Style.BorderStyle = ebsFlat
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 1
              Width = 180
            end
          end
          object cxLabel54: TcxLabel
            AlignWithMargins = True
            Left = 17
            Top = 21
            Margins.Left = 15
            Align = alTop
            Caption = 
              'Aten'#231#227'o: Esse recurso s'#243' funciona corretamente com impressoras c' +
              'onectadas no mesmo computador onde est'#225' instalado o NexServ.'
            Style.TextColor = clRed
            Style.TextStyle = []
            Properties.WordWrap = True
            Width = 755
          end
        end
      end
      object tsPatro: TcxTabSheet
        Caption = 'M. Patrocinadores Acesso Gr'#225'tis'
        ImageIndex = 8
        ExplicitHeight = 673
        object pagPatro: TcxPageControl
          Left = 0
          Top = 0
          Width = 817
          Height = 373
          Align = alClient
          HideTabs = True
          TabOrder = 0
          ExplicitHeight = 673
          ClientRectBottom = 373
          ClientRectRight = 817
          ClientRectTop = 0
        end
      end
    end
    object tvOpcoes: TcxTreeView
      Left = 0
      Top = 336
      Width = 203
      Height = 398
      Align = alLeft
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = True
      Style.Shadow = False
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = True
      TabOrder = 1
      AutoExpand = True
      HideSelection = False
      HotTrack = True
      Items.NodeData = {
        010C000000290000000000000000000000FFFFFFFFFFFFFFFF00000000000000
        000841002E00200047006500720061006C003D0000000000000000000000FFFF
        FFFFFFFFFFFF00000000000000001242002E0020004D00E1007100750069006E
        006100200043006C00690065006E0074006500490000000000000000000000FF
        FFFFFFFFFFFFFF00000000000000001843002E00200052006500730074007200
        6900E700F50065007300200064006F002000570069006E0064006F0077007300
        2D0000000000000000000000FFFFFFFFFFFFFFFF00000000000000000A44002E
        002000520065006300690062006F007300310000000000000000000000FFFFFF
        FFFFFFFFFF00000000000000000C45002E002000540061007200690066006100
        E700E3006F00530000000000000000000000FFFFFFFFFFFFFFFF000000000000
        00001D46002E00200041007600690073006F00730020006400650020005400E9
        0072006D0069006E006F002000640065002000540065006D0070006F00290000
        000000000000000000FFFFFFFFFFFFFFFF00000000000000000847002E002000
        43006F00720065007300290000000000000000000000FFFFFFFFFFFFFFFF0000
        0000000000000848002E002000430061006900780061005D0000000000000000
        000000FFFFFFFFFFFFFFFF00000000000000002249002E002000460069006400
        65006C006900640061006400650020002F002000700072006F00670072006100
        6D006100200064006500200070006F006E0074006F0073003500000000000000
        00000000FFFFFFFFFFFFFFFF00000000000000000E4A002E0020005000750062
        006C006900630069006400610064006500330000000000000000000000FFFFFF
        FFFFFFFFFF00000000000000000D4C002E00200049006D007000720065007300
        7300F500650073005D0000000000000000000000FFFFFFFFFFFFFFFF00000000
        00000000224D002E00200050006100740072006F00630069006E00610064006F
        007200650073002000640065002000410063006500730073006F002000470072
        00E100740069007300}
      RowSelect = True
      OnChange = tvOpcoesChange
      ExplicitTop = 36
      ExplicitHeight = 698
    end
    object nbOpcoes: TdxNavBar
      Left = 0
      Top = 36
      Width = 1020
      Height = 300
      Align = alTop
      ActiveGroupIndex = 0
      TabOrder = 3
      View = 18
      ViewStyle.ColorSchemeName = 'Black'
      ExplicitLeft = 128
      ExplicitTop = 48
      ExplicitWidth = 150
      object nbOpcoesGroup1: TdxNavBarGroup
        Caption = 'A - Geral'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.AllowControlResizing = True
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
      end
      object nbgMaqCli: TdxNavBarGroup
        Caption = 'B. M'#225'quinas Clientes'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        OptionsGroupControl.AllowControlResizing = True
        OptionsGroupControl.ShowControl = True
        OptionsGroupControl.UseControl = True
        Links = <>
      end
      object nbOpcoesGroup3: TdxNavBarGroup
        Caption = 'nbOpcoesGroup3'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup4: TdxNavBarGroup
        Caption = 'nbOpcoesGroup4'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup5: TdxNavBarGroup
        Caption = 'nbOpcoesGroup5'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup6: TdxNavBarGroup
        Caption = 'nbOpcoesGroup6'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup7: TdxNavBarGroup
        Caption = 'nbOpcoesGroup7'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup8: TdxNavBarGroup
        Caption = 'nbOpcoesGroup8'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup9: TdxNavBarGroup
        Caption = 'nbOpcoesGroup9'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup10: TdxNavBarGroup
        Caption = 'nbOpcoesGroup10'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup11: TdxNavBarGroup
        Caption = 'nbOpcoesGroup11'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesGroup12: TdxNavBarGroup
        Caption = 'nbOpcoesGroup12'
        SelectedLinkIndex = -1
        TopVisibleLinkIndex = 0
        Links = <>
      end
      object nbOpcoesItem1: TdxNavBarItem
        Caption = 'Geral'
      end
      object nbgGeralControl: TdxNavBarGroupControl
        Left = 0
        Top = -423
        Width = 1003
        Height = 550
        Caption = 'nbgGeralControl'
        TabOrder = 3
        GroupIndex = 0
        OriginalHeight = 550
        object LMDScrollBox2: TLMDScrollBox
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 990
          Height = 510
          Margins.Left = 10
          Margins.Top = 10
          Margins.Bottom = 30
          Align = alClient
          TabOrder = 0
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          ExplicitLeft = 6
          ExplicitWidth = 997
          ExplicitHeight = 246
          object edCliCadPadrao: TcxDBImageComboBox
            Left = 254
            Top = 7
            DataBinding.DataField = 'CliCadPadrao'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'Cliente Avulso'
                ImageIndex = 0
                Value = False
              end
              item
                Description = 'Cliente Cadastrado'
                Value = True
              end>
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 0
            Width = 141
          end
          object cxLabel16: TcxLabel
            Left = 11
            Top = 8
            Caption = '1. Tipo de cliente padr'#227'o ao iniciar novo acesso'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object LabelLocalizarPor: TcxLabel
            Left = 11
            Top = 38
            Caption = '2. Campo padr'#227'o para localiza'#231#227'o de clientes'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edCampoLocalizaCli: TcxDBImageComboBox
            Left = 254
            Top = 36
            DataBinding.DataField = 'CampoLocalizaCli'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = '1-Nome'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = '2-Username'
                Value = 1
              end
              item
                Description = '3-C'#243'digo'
                Value = 2
              end>
            Style.BorderStyle = ebsFlat
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.BorderStyle = ebsFlat
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            Width = 141
          end
          object cxLabel17: TcxLabel
            Left = 11
            Top = 67
            Caption = '3. Valor padr'#227'o para limite de d'#233'bito dos clientes'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edLimiteDeb: TcxDBCurrencyEdit
            Left = 254
            Top = 65
            DataBinding.DataField = 'LimitePadraoDebito'
            DataBinding.DataSource = DS
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            Width = 141
          end
          object cxDBCheckBox8: TcxDBCheckBox
            Left = 397
            Top = 59
            Caption = '3.1 Bloquear login se ultrapassar limite'
            DataBinding.DataField = 'BloquearLoginAlemMaxDeb'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.MultiLine = True
            Properties.NullStyle = nssUnchecked
            Style.BorderStyle = ebsFlat
            TabOrder = 6
            Width = 121
          end
          object edPermitirCaptura: TcxDBCheckBox
            Left = 6
            Top = 94
            Caption = 
              '4. Permitir Captura de Tela  das m'#225'quinas clientes atrav'#233's do Ne' +
              'xAdmin'
            DataBinding.DataField = 'PermiteCapturaTela'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 7
            Width = 377
          end
          object edNaoMostrarDeb: TcxDBCheckBox
            Left = 6
            Top = 115
            Caption = '5. N'#227'o mostrar mensagem de d'#233'bito de cliente'
            DataBinding.DataField = 'NaoMostrarMsgDebito'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 8
            Width = 297
          end
          object edMonitorarSite: TcxDBCheckBox
            Left = 6
            Top = 136
            Caption = '6. Monitorar o programa/site que o cliente est'#225' acessando'
            DataBinding.DataField = 'MostraProgAtual'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 9
            Width = 297
          end
          object edMostrarObs: TcxDBCheckBox
            Left = 6
            Top = 158
            Caption = 
              '7. Mostrar Observa'#231#245'es dos Acessos na tela de m'#225'quinas do NexAdm' +
              'in'
            DataBinding.DataField = 'MostraObs'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 10
            Width = 403
          end
          object edExigirRG: TcxDBCheckBox
            Left = 6
            Top = 179
            Caption = '8. Exigir RG para Login de clientes cadastrados'
            DataBinding.DataField = 'ExigirRG'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 11
            Width = 329
          end
          object edAlteraSenhaCli: TcxDBCheckBox
            Left = 6
            Top = 200
            Caption = 
              '9. Permitir altera'#231#227'o da senha do cliente diretamente na tela de' +
              ' cadastro'
            DataBinding.DataField = 'AlterarSenhaCli'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 12
            Width = 393
          end
          object edMostrarSenhaCli: TcxDBCheckBox
            Left = 6
            Top = 222
            Caption = 
              '10. Permitir visualiza'#231#227'o da senha do cliente na tela de cadastr' +
              'o e lista'
            DataBinding.DataField = 'VerSenhaCli'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 13
            Width = 385
          end
          object cxDBCheckBox4: TcxDBCheckBox
            Left = 6
            Top = 243
            Caption = 
              '11. Quando incluir novo cliente salvar o c'#243'digo do cliente no us' +
              'ername'
            DataBinding.DataField = 'SalvarCodUsername'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 14
            Width = 403
          end
          object cbMostraNomeMaq: TcxDBCheckBox
            Left = 6
            Top = 264
            Caption = 
              '12. Mostrar nome alternativo da m'#225'quina na tela de m'#225'quinas do N' +
              'exAdmin'
            DataBinding.DataField = 'MostraNomeMaq'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 15
            Width = 403
          end
          object edSincHora: TcxDBCheckBox
            Left = 6
            Top = 285
            Caption = 
              '13. Sincronizar automaticamente a data e hora das m'#225'quinas clien' +
              'tes com o servidor'
            DataBinding.DataField = 'SincronizarHorarios'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 16
            Width = 451
          end
          object cxDBCheckBox9: TcxDBCheckBox
            Left = 6
            Top = 305
            Caption = '14. N'#227'o obrigar cria'#231#227'o de senha de acesso para os clientes'
            DataBinding.DataField = 'NaoObrigarSenhaCliente'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 17
            Width = 451
          end
          object edNaoVenderAlemEstoque: TcxDBCheckBox
            Left = 6
            Top = 326
            Caption = 
              '15. N'#227'o permitir venda de produtos que n'#227'o tenham saldo suficien' +
              'te em estoque'
            DataBinding.DataField = 'NaoVenderAlemEstoque'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 18
            Width = 451
          end
          object cxDBCheckBox13: TcxDBCheckBox
            Left = 6
            Top = 345
            Caption = 
              '16. Permitir a ordena'#231#227'o dos dados de caixa por qualquer coluna ' +
              'ao clicar no cabe'#231'alho.'#13#10'      (N'#227'o '#233' recomend'#225'vel para computad' +
              'ores com pouca mem'#243'ria RAM)'
            DataBinding.DataField = 'AutoSortGridCaixa'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.MultiLine = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 19
            Width = 491
          end
          object edAvisoFimTempoS: TcxDBSpinEdit
            Left = 414
            Top = 380
            DataBinding.DataField = 'AvisoFimTempoAdminS'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.Increment = 5.000000000000000000
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 20
            Width = 67
          end
          object cxLabel31: TcxLabel
            Left = 31
            Top = 397
            Caption = '(para configurar avisos para o cliente use a op'#231#227'o F.)'
            Transparent = True
          end
          object cxLabel35: TcxLabel
            Left = 11
            Top = 381
            Caption = 
              '17. Tempo (em segundos) para repetir aviso sonoro de fim de temp' +
              'o no NexAdmin'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxDBCheckBox17: TcxDBCheckBox
            Left = 6
            Top = 420
            Caption = '18. Tocar aviso sonoro ao receber mensagem de CHAT no NexAdmin'
            DataBinding.DataField = 'ChatAlertaSonoro'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 23
            Width = 451
          end
          object cxDBCheckBox18: TcxDBCheckBox
            Left = 6
            Top = 443
            Caption = 
              '19. Mostrar notifica'#231#227'o ao receber mensagem de CHAT (semelhante ' +
              'ao MSN Messenger)'
            DataBinding.DataField = 'ChatMostraNotificacao'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 24
            Width = 451
          end
          object edBiometria: TcxDBCheckBox
            Left = 6
            Top = 468
            Caption = '20. Usar leitor biom'#233'trico para identificar clientes'
            DataBinding.DataField = 'Biometria'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 25
            Width = 267
          end
        end
      end
      object nbgMaqCliControl: TdxNavBarGroupControl
        Left = 0
        Top = 149
        Width = 1003
        Height = 550
        TabOrder = 5
        GroupIndex = 1
        OriginalHeight = 550
        object LMDScrollBox6: TLMDScrollBox
          AlignWithMargins = True
          Left = 10
          Top = 10
          Width = 990
          Height = 510
          Margins.Left = 10
          Margins.Top = 10
          Margins.Bottom = 30
          Align = alClient
          TabOrder = 0
          Bevel.Mode = bmStandard
          Bevel.StandardStyle = lsNone
          object btnFundoLogin: TcxButton
            Left = 9
            Top = 265
            Width = 404
            Height = 22
            Caption = 
              '10. Clique aqui para selecionar uma imagem de fundo para tela de' +
              ' LOGIN              '
            TabOrder = 0
            OnClick = btnFundoLoginClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
          end
          object edAutoLigarMaqCli: TcxDBCheckBox
            Left = 8
            Top = 461
            Caption = 
              '19. Ligar m'#225'quina cliente automaticamente ao iniciar acesso ('#201' n' +
              'ecess'#225'rio que a m'#225'quina possua recurso de Wake On Lan)'
            DataBinding.DataField = 'AutoLigarMaqCli'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 1
            Width = 625
          end
          object edSemLogin: TcxDBCheckBox
            Left = 8
            Top = 441
            Caption = '18. N'#227'o permitir login na m'#225'quina cliente'
            DataBinding.DataField = 'SemLogin'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 2
            Width = 229
          end
          object edCliCadNaoEncerra: TcxDBCheckBox
            Left = 8
            Top = 421
            Caption = 
              '17. Bloquear o encerramento de acesso de cliente cadastrado dire' +
              'tamente na m'#225'quina cliente'
            DataBinding.DataField = 'CliCadNaoEncerra'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 3
            Width = 489
          end
          object cxDBCheckBox12: TcxDBCheckBox
            Left = 8
            Top = 402
            Caption = 
              '16. Bloquear o encerramento de acesso de cliente avulso diretame' +
              'nte na m'#225'quina cliente'
            DataBinding.DataField = 'CliAvulsoNaoEncerra'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 4
            Width = 497
          end
          object cxDBCheckBox11: TcxDBCheckBox
            Left = 8
            Top = 382
            Caption = '15. Mostrar valor de d'#233'bitos na m'#225'quina cliente'
            DataBinding.DataField = 'MostrarDebitoNoGuard'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 5
            Width = 315
          end
          object cxDBCheckBox10: TcxDBCheckBox
            Left = 8
            Top = 362
            Caption = 
              '14. N'#227'o permitir que o cliente altere a senha diretamente nas m'#225 +
              'quinas clientes'
            DataBinding.DataField = 'ClienteNaoAlteraSenha'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 6
            Width = 419
          end
          object edChat: TcxDBImageComboBox
            Left = 190
            Top = 340
            DataBinding.DataField = 'OpcaoChat'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'Deixar janela de chat vis'#237'vel por padr'#227'o'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Deixar janela de chat escondida por padr'#227'o'
                Value = 1
              end
              item
                Description = 'Desativar recurso de chat'
                Value = 2
              end>
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 7
            Width = 267
          end
          object lbChat: TcxLabel
            Left = 8
            Top = 340
            Caption = '13. Chat entre atendente e clientes'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object cxLabel34: TcxLabel
            Left = 400
            Top = 318
            Caption = ' minutos. Deixe ZERO para desativar esse recurso'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edMinutosDesligarMaq: TcxDBSpinEdit
            Left = 333
            Top = 316
            DataBinding.DataField = 'MinutosDesligaMaq'
            DataBinding.DataSource = DS
            Properties.AssignedValues.MinValue = True
            Properties.ImmediatePost = True
            Properties.MaxValue = 255.000000000000000000
            Properties.ValueType = vtInt
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 10
            Width = 64
          end
          object cxLabel33: TcxLabel
            Left = 8
            Top = 317
            Caption = '12. Desligar automaticamente m'#225'quinas que n'#227'o forem usadas por '
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object btnFundoDesktop: TcxButton
            Left = 9
            Top = 291
            Width = 404
            Height = 22
            Caption = 
              '11. Clique aqui para selecionar uma imagem de fundo para a '#193'REA ' +
              'DE TRABALHO'
            TabOrder = 12
            OnClick = btnFundoDesktopClick
            LookAndFeel.Kind = lfFlat
            LookAndFeel.NativeStyle = True
          end
          object edEsconderSenha: TcxDBCheckBox
            Left = 7
            Top = 241
            Caption = 
              '9. N'#227'o mostrar SENHA na tela de login de clientes ('#250'til para loc' +
              'ais que tem apenas acesso por cart'#227'o de tempo)'
            DataBinding.DataField = 'MostrarApenasPIN'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 13
            Transparent = True
            Width = 582
          end
          object edFecharProg: TcxDBCheckBox
            Left = 7
            Top = 218
            Caption = '8. Fechar programas ao finalizar acesso'
            DataBinding.DataField = 'FecharProgramas'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 14
            Transparent = True
            Width = 230
          end
          object edEsconderCrono: TcxDBCheckBox
            Left = 7
            Top = 195
            Caption = '7. N'#227'o mostrar cron'#244'metro para os clientes'
            DataBinding.DataField = 'EsconderCronometro'
            DataBinding.DataSource = DS
            Properties.NullStyle = nssUnchecked
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 15
            Transparent = True
            Width = 262
          end
          object edNomeUsuario: TcxDBTextEdit
            Left = 333
            Top = 169
            DataBinding.DataField = 'TextoPIN'
            DataBinding.DataSource = DS
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 16
            Width = 186
          end
          object cxLabel13: TcxLabel
            Left = 10
            Top = 170
            Caption = '6. Texto para o campo NOME DE USU'#193'RIO na tela de login'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edAutoExec: TcxDBTextEdit
            Left = 333
            Top = 140
            DataBinding.DataField = 'AutoExecutar'
            DataBinding.DataSource = DS
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 18
            Width = 186
          end
          object cxLabel12: TcxLabel
            Left = 10
            Top = 141
            Caption = '5. Programa a ser executado automaticamente no inicio do acesso'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edPaginaInicial: TcxDBTextEdit
            Left = 261
            Top = 111
            DataBinding.DataField = 'PaginaInicial'
            DataBinding.DataSource = DS
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 20
            Width = 186
          end
          object cxLabel11: TcxLabel
            Left = 10
            Top = 112
            Caption = '4. Paginial Inicial de Internet nas m'#225'quinas clientes'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edTempoEscondeLogin: TcxDBSpinEdit
            Left = 261
            Top = 83
            DataBinding.DataField = 'TempoSumirLogin'
            DataBinding.DataSource = DS
            Properties.ImmediatePost = True
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 22
            Width = 98
          end
          object cxLabel10: TcxLabel
            Left = 10
            Top = 84
            Caption = '3. Tempo (segundos) para esconder a tela de login'
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edAposFinalizar: TcxDBImageComboBox
            Left = 261
            Top = 54
            DataBinding.DataField = 'AposEncerrar'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'Mostrar Tela de Login'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Reiniciar a M'#225'quina'
                Value = 1
              end
              item
                Description = 'Efetuar Logoff no Windows'
                Value = 2
              end>
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 24
            Width = 187
          end
          object cxLabel9: TcxLabel
            Left = 10
            Top = 56
            Caption = '2. O que fazer ap'#243's finalizar acesso '
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
          end
          object edAlinhaBarra: TcxDBImageComboBox
            Left = 269
            Top = 504
            DataBinding.DataField = 'AlinhaBarraGuard'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 'Topo'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = 'Rodap'#233
                Value = 1
              end
              item
                Description = 'Esquerda'
                Value = 2
              end
              item
                Description = 'Direita'
                Value = 3
              end>
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 26
            Visible = False
            Width = 97
          end
          object cxLabel8: TcxLabel
            Left = 18
            Top = 506
            Caption = '2. Alinhamento da barra de cron'#244'metro '
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.NativeStyle = True
            Transparent = True
            Visible = False
          end
          object edNoNet: TcxDBImageComboBox
            Left = 10
            Top = 25
            DataBinding.DataField = 'NoNet'
            DataBinding.DataSource = DS
            Properties.Alignment.Vert = taVCenter
            Properties.ImmediatePost = True
            Properties.ImmediateUpdateText = True
            Properties.Items = <
              item
                Description = 
                  '1-Permitir que somente acessos PR'#201'-PAGOS continuem normalmente a' +
                  't'#233' que os cr'#233'ditos do cliente terminem.'
                ImageIndex = 0
                Value = 0
              end
              item
                Description = '2-Permitir que todos acessos continuem normalmente.'
                Value = 1
              end
              item
                Description = 
                  '3-Bloquear todos acessos em andamento at'#233' que a conex'#227'o seja re-' +
                  'estabelecida'
                Value = 2
              end
              item
                Description = '4-Fechar o CM-Guard e liberar acesso total em todas m'#225'quinas'
                Value = 3
              end>
            Style.LookAndFeel.Kind = lfFlat
            Style.LookAndFeel.NativeStyle = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleDisabled.LookAndFeel.NativeStyle = True
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.NativeStyle = True
            StyleHot.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.NativeStyle = True
            TabOrder = 28
            Width = 585
          end
          object cxLabel1: TcxLabel
            Left = 10
            Top = 8
            Caption = 
              '1. Como proceder na falta de conex'#227'o entre as m'#225'quinas clientes ' +
              'e o servidor ?'
            Transparent = True
          end
          object cxLabel14: TcxLabel
            Left = 361
            Top = 85
            Caption = 'M'#237'nimo de 10s (menos que isso n'#227'o esconde)'
            Transparent = True
          end
        end
      end
    end
  end
  inherited BarMgr: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = FrmPri.im24
    ImageOptions.MakeDisabledImagesFaded = True
    Left = 448
    Top = 480
    DockControlHeights = (
      0
      0
      0
      0)
    inherited BarMgrBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmSalvar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmCancelar'
        end>
      OldName = 'BarraTabSheet1'
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
    inherited cmLayout: TdxBarLargeButton
      ImageIndex = -1
    end
    inherited cmPeriodo: TdxBarLargeButton
      ImageIndex = -1
    end
    object cmSalvar: TdxBarLargeButton
      Caption = '&Salvar e Aplicar'
      Category = 0
      Enabled = False
      Hint = 'Salvar e Aplicar'
      Visible = ivAlways
      LargeImageIndex = 5
      UnclickAfterDoing = False
      OnClick = cmSalvarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object cmCancelar: TdxBarLargeButton
      Caption = '&Cancelar'
      Category = 0
      Enabled = False
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = cmCancelarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  inherited MenuGrid: TcxGridPopupMenu
    Left = 112
    Top = 416
  end
  inherited CP: TdxComponentPrinter
    Left = 352
    Top = 488
  end
  inherited dlgExp: TSaveDialog
    Left = 592
    Top = 433
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 384
    Top = 482
  end
  inherited pmPeriodo: TdxBarPopupMenu
    Left = 288
    Top = 484
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 832
    Top = 456
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
    end
    object cxStyle2: TcxStyle
      AssignedValues = [svColor]
      Color = 7383924
    end
    object cxStyle3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 5475927
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxStyle4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 15463404
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clGreen
    end
    object cxStyle5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 7383924
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle6: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 9617558
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle7: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = 10733990
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      TextColor = clWhite
    end
    object cxVerticalGridStyleSheetUserFormat2: TcxVerticalGridStyleSheet
      Caption = 'UserFormat2'
      Styles.Background = cxStyle2
      Styles.Content = cxStyle4
      Styles.Inactive = cxStyle6
      Styles.Selection = cxStyle7
      Styles.Category = cxStyle3
      Styles.Header = cxStyle5
      BuiltIn = True
    end
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = False
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'FidMostrarSaldoGuard'
        DataType = ftBoolean
      end
      item
        Name = 'FidMostrarSaldoAdmin'
        DataType = ftBoolean
      end
      item
        Name = 'CliCadNaoEncerra'
        DataType = ftBoolean
      end
      item
        Name = 'ImpedirPosPago'
        DataType = ftBoolean
      end
      item
        Name = 'AutoLigarMaqCli'
        DataType = ftBoolean
      end
      item
        Name = 'AutoObsAoCancelar'
        DataType = ftBoolean
      end
      item
        Name = 'FidAutoPremiar'
        DataType = ftBoolean
      end
      item
        Name = 'FidTipoPremioAuto'
        DataType = ftWord
      end
      item
        Name = 'FidPremioAuto'
        DataType = ftInteger
      end
      item
        Name = 'FidAtivo'
        DataType = ftBoolean
      end
      item
        Name = 'FidSessaoValor'
        DataType = ftCurrency
      end
      item
        Name = 'FidSessaoPontos'
        DataType = ftInteger
      end
      item
        Name = 'FidVendaValor'
        DataType = ftCurrency
      end
      item
        Name = 'FidVendaPontos'
        DataType = ftInteger
      end
      item
        Name = 'FidImpValor'
        DataType = ftCurrency
      end
      item
        Name = 'FidImpPontos'
        DataType = ftInteger
      end
      item
        Name = 'FidParcial'
        DataType = ftBoolean
      end
      item
        Name = 'AvisoCreditos'
        DataType = ftBoolean
      end
      item
        Name = 'ClientePodeVerCred'
        DataType = ftBoolean
      end
      item
        Name = 'DetectarImpServ'
        DataType = ftBoolean
      end
      item
        Name = 'AvisoFimTempoAdminS'
        DataType = ftWord
      end
      item
        Name = 'CliAvulsoNaoEncerra'
        DataType = ftBoolean
      end
      item
        Name = 'AutoSortGridCaixa'
        DataType = ftBoolean
      end
      item
        Name = 'CorPrevisao'
        DataType = ftInteger
      end
      item
        Name = 'CorFPrevisao'
        DataType = ftInteger
      end
      item
        Name = 'RelCaixaAuto'
        DataType = ftBoolean
      end
      item
        Name = 'EncerramentoCartao'
        DataType = ftWord
      end
      item
        Name = 'ChatAlertaSonoro'
        DataType = ftBoolean
      end
      item
        Name = 'ChatMostraNotificacao'
        DataType = ftBoolean
      end
      item
        Name = 'TempoEPrePago'
        DataType = ftWord
      end
      item
        Name = 'TempoECartao'
        DataType = ftWord
      end
      item
        Name = 'CorMaqManut'
        DataType = ftInteger
      end
      item
        Name = 'CorFMaqManut'
        DataType = ftInteger
      end
      item
        Name = 'SincronizarHorarios'
        DataType = ftBoolean
      end
      item
        Name = 'SalvarCodUsername'
        DataType = ftBoolean
      end
      item
        Name = 'OpcaoChat'
        DataType = ftWord
      end
      item
        Name = 'MinutosDesligaMaq'
        DataType = ftWord
      end
      item
        Name = 'BloquearUsoEmHorarioNP'
        DataType = ftBoolean
      end
      item
        Name = 'BloqTray'
        DataType = ftBoolean
      end
      item
        Name = 'TempoB1'
        DataType = ftWord
      end
      item
        Name = 'TempoB2'
        DataType = ftWord
      end
      item
        Name = 'TempoB3'
        DataType = ftWord
      end
      item
        Name = 'TempoB4'
        DataType = ftWord
      end
      item
        Name = 'TempoB5'
        DataType = ftWord
      end
      item
        Name = 'TempoB6'
        DataType = ftWord
      end
      item
        Name = 'NumSeq'
        DataType = ftAutoInc
      end
      item
        Name = 'FecharProgramas'
        DataType = ftBoolean
      end
      item
        Name = 'AutoExecutar'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'LimiteTempoPadrao'
        DataType = ftDateTime
      end
      item
        Name = 'PacoteTempoReal'
        DataType = ftBoolean
      end
      item
        Name = 'PermiteLoginSemCred'
        DataType = ftBoolean
      end
      item
        Name = 'EncerramentoPrePago'
        DataType = ftWord
      end
      item
        Name = 'PermiteCapturaTela'
        DataType = ftBoolean
      end
      item
        Name = 'VariosTiposAcesso'
        DataType = ftBoolean
      end
      item
        Name = 'ModoPagtoAcesso'
        DataType = ftWord
      end
      item
        Name = 'MostraPrePagoDec'
        DataType = ftBoolean
      end
      item
        Name = 'TempoMaxAlerta'
        DataType = ftDateTime
      end
      item
        Name = 'Abre1'
        DataType = ftDateTime
      end
      item
        Name = 'Abre2'
        DataType = ftDateTime
      end
      item
        Name = 'Abre3'
        DataType = ftDateTime
      end
      item
        Name = 'Abre4'
        DataType = ftDateTime
      end
      item
        Name = 'Abre5'
        DataType = ftDateTime
      end
      item
        Name = 'Abre6'
        DataType = ftDateTime
      end
      item
        Name = 'Abre7'
        DataType = ftDateTime
      end
      item
        Name = 'Fecha1'
        DataType = ftDateTime
      end
      item
        Name = 'Fecha2'
        DataType = ftDateTime
      end
      item
        Name = 'Fecha3'
        DataType = ftDateTime
      end
      item
        Name = 'Fecha4'
        DataType = ftDateTime
      end
      item
        Name = 'Fecha5'
        DataType = ftDateTime
      end
      item
        Name = 'Fecha6'
        DataType = ftDateTime
      end
      item
        Name = 'Fecha7'
        DataType = ftDateTime
      end
      item
        Name = 'CorLivre'
        DataType = ftInteger
      end
      item
        Name = 'CorFLivre'
        DataType = ftInteger
      end
      item
        Name = 'CorUsoPrePago'
        DataType = ftInteger
      end
      item
        Name = 'CorFUsoPrePago'
        DataType = ftInteger
      end
      item
        Name = 'CorUsoPosPago'
        DataType = ftInteger
      end
      item
        Name = 'CorFUsoPosPago'
        DataType = ftInteger
      end
      item
        Name = 'CorAguardaPagto'
        DataType = ftInteger
      end
      item
        Name = 'CorFAguardaPagto'
        DataType = ftInteger
      end
      item
        Name = 'CorManutencao'
        DataType = ftInteger
      end
      item
        Name = 'CorFManutencao'
        DataType = ftInteger
      end
      item
        Name = 'CorPausado'
        DataType = ftInteger
      end
      item
        Name = 'CorFPausado'
        DataType = ftInteger
      end
      item
        Name = 'CorDesktop'
        DataType = ftInteger
      end
      item
        Name = 'CorFDesktop'
        DataType = ftInteger
      end
      item
        Name = 'CampoLocalizaCli'
        DataType = ftWord
      end
      item
        Name = 'ManterSaldoCaixa'
        DataType = ftBoolean
      end
      item
        Name = 'NaoMostrarMsgDebito'
        DataType = ftBoolean
      end
      item
        Name = 'Tolerancia'
        DataType = ftDateTime
      end
      item
        Name = 'RegImp98'
        DataType = ftBoolean
      end
      item
        Name = 'LimitePadraoDebito'
        DataType = ftCurrency
      end
      item
        Name = 'RecPorta'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'RecSalto'
        DataType = ftWord
      end
      item
        Name = 'RecLargura'
        DataType = ftWord
      end
      item
        Name = 'RecRodape'
        DataType = ftMemo
      end
      item
        Name = 'RecImprimir'
        DataType = ftWord
      end
      item
        Name = 'RecMatricial'
        DataType = ftBoolean
      end
      item
        Name = 'RecNomeLoja'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MostraProgAtual'
        DataType = ftBoolean
      end
      item
        Name = 'MostraObs'
        DataType = ftBoolean
      end
      item
        Name = 'EscondeTextoBotoes'
        DataType = ftBoolean
      end
      item
        Name = 'EscondeTipoAcesso'
        DataType = ftBoolean
      end
      item
        Name = 'ExigirRG'
        DataType = ftBoolean
      end
      item
        Name = 'TipoFDesktop'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'TipoFLogin'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'NumFDesktop'
        DataType = ftInteger
      end
      item
        Name = 'NumFLogin'
        DataType = ftInteger
      end
      item
        Name = 'MostrarApenasPIN'
        DataType = ftBoolean
      end
      item
        Name = 'TextoPIN'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'AlterarSenhaCli'
        DataType = ftBoolean
      end
      item
        Name = 'VerSenhaCli'
        DataType = ftBoolean
      end
      item
        Name = 'CliCadPadrao'
        DataType = ftBoolean
      end
      item
        Name = 'ControlaImp'
        DataType = ftWord
      end
      item
        Name = 'FiltrarWEB'
        DataType = ftBoolean
      end
      item
        Name = 'SiteRedirFiltro'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'BloqDownload'
        DataType = ftBoolean
      end
      item
        Name = 'BloqMenuIniciar'
        DataType = ftBoolean
      end
      item
        Name = 'BloqPainelCtrl'
        DataType = ftBoolean
      end
      item
        Name = 'BloqCtrlAltDel'
        DataType = ftBoolean
      end
      item
        Name = 'BloqExecutar'
        DataType = ftBoolean
      end
      item
        Name = 'BloqMeusLocaisRede'
        DataType = ftBoolean
      end
      item
        Name = 'PaginaInicial'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'EsconderCronometro'
        DataType = ftBoolean
      end
      item
        Name = 'AposEncerrar'
        DataType = ftWord
      end
      item
        Name = 'AlinhaBarraGuard'
        DataType = ftWord
      end
      item
        Name = 'NoNet'
        DataType = ftWord
      end
      item
        Name = 'TempoSumirLogin'
        DataType = ftWord
      end
      item
        Name = 'EmailMetodo'
        DataType = ftWord
      end
      item
        Name = 'EmailServ'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'EmailUsername'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'EmailSenha'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'EmailDestino'
        DataType = ftMemo
      end
      item
        Name = 'EmailEnviarCaixa'
        DataType = ftBoolean
      end
      item
        Name = 'CredPadraoTipo'
        DataType = ftWord
      end
      item
        Name = 'CredPadraoCod'
        DataType = ftInteger
      end
      item
        Name = 'PgVendas'
        DataType = ftBoolean
      end
      item
        Name = 'PgAcesso'
        DataType = ftBoolean
      end
      item
        Name = 'PgTempo'
        DataType = ftBoolean
      end
      item
        Name = 'ContinuarCredTempo'
        DataType = ftBoolean
      end
      item
        Name = 'NaoGuardarCreditoCli'
        DataType = ftBoolean
      end
      item
        Name = 'PgImp'
        DataType = ftBoolean
      end
      item
        Name = 'EsconderDrives'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'IDTipoCred'
        DataType = ftInteger
      end
      item
        Name = 'MostraNomeMaq'
        DataType = ftBoolean
      end
      item
        Name = 'BloqBotaoDir'
        DataType = ftBoolean
      end
      item
        Name = 'MostrarDebitoNoGuard'
        DataType = ftBoolean
      end
      item
        Name = 'BloquearLoginAlemMaxDeb'
        DataType = ftBoolean
      end
      item
        Name = 'ClienteNaoAlteraSenha'
        DataType = ftBoolean
      end
      item
        Name = 'NaoVenderAlemEstoque'
        DataType = ftBoolean
      end
      item
        Name = 'NaoObrigarSenhaCliente'
        DataType = ftBoolean
      end
      item
        Name = 'PgVendaAvulsa'
        DataType = ftBoolean
      end
      item
        Name = 'AlteraLoginSemCred'
        DataType = ftBoolean
      end
      item
        Name = 'NaoCobrarImpFunc'
        DataType = ftBoolean
      end
      item
        Name = 'ModoCredGuard'
        DataType = ftWord
      end
      item
        Name = 'MsgFimCred'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'CreditoComoValor'
        DataType = ftBoolean
      end
      item
        Name = 'SemLogin'
        DataType = ftBoolean
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
    Left = 320
    Top = 488
    object MTBloqDownloadExe: TBooleanField
      FieldName = 'BloqDownloadExe'
    end
    object MTFiltrarDesktop: TBooleanField
      FieldName = 'FiltrarDesktop'
    end
    object MTFiltrarMenuIniciar: TBooleanField
      FieldName = 'FiltrarMenuIniciar'
    end
    object MTBloqMeuComputador: TBooleanField
      FieldName = 'BloqMeuComputador'
    end
    object MTBloqLixeira: TBooleanField
      FieldName = 'BloqLixeira'
    end
    object MTFidMsg: TBooleanField
      FieldName = 'FidMsg'
    end
    object MTFidMsgTitulo: TStringField
      FieldName = 'FidMsgTitulo'
      Size = 50
    end
    object MTPubHomePage: TBooleanField
      FieldName = 'PubHomePage'
    end
    object MTPubAd: TBooleanField
      FieldName = 'PubAd'
    end
    object MTPubToolbar: TBooleanField
      FieldName = 'PubToolbar'
    end
    object MTBiometria: TBooleanField
      FieldName = 'Biometria'
    end
    object MTFidMostrarSaldoGuard: TBooleanField
      FieldName = 'FidMostrarSaldoGuard'
    end
    object MTFidMostrarSaldoAdmin: TBooleanField
      FieldName = 'FidMostrarSaldoAdmin'
    end
    object MTCliCadNaoEncerra: TBooleanField
      FieldName = 'CliCadNaoEncerra'
    end
    object MTImpedirPosPago: TBooleanField
      FieldName = 'ImpedirPosPago'
    end
    object MTAutoLigarMaqCli: TBooleanField
      FieldName = 'AutoLigarMaqCli'
    end
    object MTAutoObsAoCancelar: TBooleanField
      FieldName = 'AutoObsAoCancelar'
    end
    object MTFidAutoPremiar: TBooleanField
      FieldName = 'FidAutoPremiar'
    end
    object MTFidTipoPremioAuto: TWordField
      Alignment = taLeftJustify
      FieldName = 'FidTipoPremioAuto'
    end
    object MTFidPremioAuto: TIntegerField
      FieldName = 'FidPremioAuto'
    end
    object MTFidAtivo: TBooleanField
      FieldName = 'FidAtivo'
    end
    object MTFidSessaoValor: TCurrencyField
      FieldName = 'FidSessaoValor'
    end
    object MTFidSessaoPontos: TIntegerField
      FieldName = 'FidSessaoPontos'
    end
    object MTFidVendaValor: TCurrencyField
      FieldName = 'FidVendaValor'
    end
    object MTFidVendaPontos: TIntegerField
      FieldName = 'FidVendaPontos'
    end
    object MTFidImpValor: TCurrencyField
      FieldName = 'FidImpValor'
    end
    object MTFidImpPontos: TIntegerField
      FieldName = 'FidImpPontos'
    end
    object MTFidParcial: TBooleanField
      FieldName = 'FidParcial'
    end
    object MTAvisoCreditos: TBooleanField
      FieldName = 'AvisoCreditos'
    end
    object MTClientePodeVerCred: TBooleanField
      FieldName = 'ClientePodeVerCred'
    end
    object MTDetectarImpServ: TBooleanField
      FieldName = 'DetectarImpServ'
    end
    object MTAvisoFimTempoAdminS: TWordField
      FieldName = 'AvisoFimTempoAdminS'
    end
    object MTCliAvulsoNaoEncerra: TBooleanField
      FieldName = 'CliAvulsoNaoEncerra'
    end
    object MTAutoSortGridCaixa: TBooleanField
      FieldName = 'AutoSortGridCaixa'
    end
    object MTCorPrevisao: TIntegerField
      FieldName = 'CorPrevisao'
    end
    object MTCorFPrevisao: TIntegerField
      FieldName = 'CorFPrevisao'
    end
    object MTRelCaixaAuto: TBooleanField
      FieldName = 'RelCaixaAuto'
    end
    object MTEncerramentoCartao: TWordField
      Alignment = taLeftJustify
      FieldName = 'EncerramentoCartao'
    end
    object MTChatAlertaSonoro: TBooleanField
      FieldName = 'ChatAlertaSonoro'
    end
    object MTChatMostraNotificacao: TBooleanField
      FieldName = 'ChatMostraNotificacao'
    end
    object MTTempoEPrePago: TWordField
      Alignment = taLeftJustify
      FieldName = 'TempoEPrePago'
    end
    object MTMaxTempoSessao: TWordField
      FieldName = 'MaxTempoSessao'
    end
    object MTTempoECartao: TWordField
      Alignment = taLeftJustify
      FieldName = 'TempoECartao'
    end
    object MTCorMaqManut: TIntegerField
      FieldName = 'CorMaqManut'
    end
    object MTCorFMaqManut: TIntegerField
      FieldName = 'CorFMaqManut'
    end
    object MTSincronizarHorarios: TBooleanField
      FieldName = 'SincronizarHorarios'
    end
    object MTSalvarCodUsername: TBooleanField
      FieldName = 'SalvarCodUsername'
    end
    object MTOpcaoChat: TWordField
      Alignment = taLeftJustify
      FieldName = 'OpcaoChat'
    end
    object MTMinutosDesligaMaq: TWordField
      FieldName = 'MinutosDesligaMaq'
    end
    object MTBloquearUsoEmHorarioNP: TBooleanField
      FieldName = 'BloquearUsoEmHorarioNP'
    end
    object MTBloqTray: TBooleanField
      FieldName = 'BloqTray'
    end
    object MTTempoB1: TWordField
      FieldName = 'TempoB1'
    end
    object MTTempoB2: TWordField
      FieldName = 'TempoB2'
    end
    object MTTempoB3: TWordField
      FieldName = 'TempoB3'
    end
    object MTTempoB4: TWordField
      FieldName = 'TempoB4'
    end
    object MTTempoB5: TWordField
      FieldName = 'TempoB5'
    end
    object MTTempoB6: TWordField
      FieldName = 'TempoB6'
    end
    object MTNumSeq: TAutoIncField
      Alignment = taLeftJustify
      FieldName = 'NumSeq'
    end
    object MTFecharProgramas: TBooleanField
      FieldName = 'FecharProgramas'
    end
    object MTAutoExecutar: TStringField
      FieldName = 'AutoExecutar'
      Size = 200
    end
    object MTLimiteTempoPadrao: TDateTimeField
      FieldName = 'LimiteTempoPadrao'
    end
    object MTPacoteTempoReal: TBooleanField
      FieldName = 'PacoteTempoReal'
    end
    object MTPermiteLoginSemCred: TBooleanField
      FieldName = 'PermiteLoginSemCred'
    end
    object MTEncerramentoPrePago: TWordField
      Alignment = taLeftJustify
      FieldName = 'EncerramentoPrePago'
    end
    object MTPermiteCapturaTela: TBooleanField
      FieldName = 'PermiteCapturaTela'
    end
    object MTVariosTiposAcesso: TBooleanField
      FieldName = 'VariosTiposAcesso'
    end
    object MTModoPagtoAcesso: TWordField
      Alignment = taLeftJustify
      FieldName = 'ModoPagtoAcesso'
    end
    object MTMostraPrePagoDec: TBooleanField
      FieldName = 'MostraPrePagoDec'
    end
    object MTTempoMaxAlerta: TDateTimeField
      FieldName = 'TempoMaxAlerta'
    end
    object MTAbre1: TDateTimeField
      FieldName = 'Abre1'
    end
    object MTAbre2: TDateTimeField
      FieldName = 'Abre2'
    end
    object MTAbre3: TDateTimeField
      FieldName = 'Abre3'
    end
    object MTAbre4: TDateTimeField
      FieldName = 'Abre4'
    end
    object MTAbre5: TDateTimeField
      FieldName = 'Abre5'
    end
    object MTAbre6: TDateTimeField
      FieldName = 'Abre6'
    end
    object MTAbre7: TDateTimeField
      FieldName = 'Abre7'
    end
    object MTFecha1: TDateTimeField
      FieldName = 'Fecha1'
    end
    object MTFecha2: TDateTimeField
      FieldName = 'Fecha2'
    end
    object MTFecha3: TDateTimeField
      FieldName = 'Fecha3'
    end
    object MTFecha4: TDateTimeField
      FieldName = 'Fecha4'
    end
    object MTFecha5: TDateTimeField
      FieldName = 'Fecha5'
    end
    object MTFecha6: TDateTimeField
      FieldName = 'Fecha6'
    end
    object MTFecha7: TDateTimeField
      FieldName = 'Fecha7'
    end
    object MTCorLivre: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorLivre'
    end
    object MTCorFLivre: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorFLivre'
    end
    object MTCorUsoPrePago: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorUsoPrePago'
    end
    object MTCorFUsoPrePago: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorFUsoPrePago'
    end
    object MTCorUsoPosPago: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorUsoPosPago'
    end
    object MTCorFUsoPosPago: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorFUsoPosPago'
    end
    object MTCorAguardaPagto: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorAguardaPagto'
    end
    object MTCorFAguardaPagto: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorFAguardaPagto'
    end
    object MTCorManutencao: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorManutencao'
    end
    object MTCorFManutencao: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorFManutencao'
    end
    object MTCorPausado: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorPausado'
    end
    object MTCorFPausado: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorFPausado'
    end
    object MTCorDesktop: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorDesktop'
    end
    object MTCorFDesktop: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CorFDesktop'
    end
    object MTCampoLocalizaCli: TWordField
      Alignment = taLeftJustify
      FieldName = 'CampoLocalizaCli'
    end
    object MTManterSaldoCaixa: TBooleanField
      FieldName = 'ManterSaldoCaixa'
    end
    object MTNaoMostrarMsgDebito: TBooleanField
      FieldName = 'NaoMostrarMsgDebito'
    end
    object MTTolerancia: TDateTimeField
      FieldName = 'Tolerancia'
    end
    object MTRegImp98: TBooleanField
      FieldName = 'RegImp98'
    end
    object MTLimitePadraoDebito: TCurrencyField
      Alignment = taLeftJustify
      FieldName = 'LimitePadraoDebito'
    end
    object MTRecPorta: TStringField
      FieldName = 'RecPorta'
      Size = 10
    end
    object MTRecSalto: TWordField
      Alignment = taLeftJustify
      FieldName = 'RecSalto'
    end
    object MTRecLargura: TWordField
      Alignment = taLeftJustify
      FieldName = 'RecLargura'
    end
    object MTRecRodape: TMemoField
      FieldName = 'RecRodape'
      BlobType = ftMemo
    end
    object MTRecImprimir: TWordField
      Alignment = taLeftJustify
      FieldName = 'RecImprimir'
    end
    object MTRecMatricial: TBooleanField
      FieldName = 'RecMatricial'
    end
    object MTRecNomeLoja: TStringField
      FieldName = 'RecNomeLoja'
      Size = 40
    end
    object MTMostraProgAtual: TBooleanField
      FieldName = 'MostraProgAtual'
    end
    object MTMostraObs: TBooleanField
      FieldName = 'MostraObs'
    end
    object MTEscondeTextoBotoes: TBooleanField
      FieldName = 'EscondeTextoBotoes'
    end
    object MTEscondeTipoAcesso: TBooleanField
      FieldName = 'EscondeTipoAcesso'
    end
    object MTExigirRG: TBooleanField
      FieldName = 'ExigirRG'
    end
    object MTTipoFDesktop: TStringField
      FieldName = 'TipoFDesktop'
      Size = 3
    end
    object MTTipoFLogin: TStringField
      FieldName = 'TipoFLogin'
      Size = 3
    end
    object MTNumFDesktop: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NumFDesktop'
    end
    object MTNumFLogin: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'NumFLogin'
    end
    object MTMostrarApenasPIN: TBooleanField
      FieldName = 'MostrarApenasPIN'
    end
    object MTTextoPIN: TStringField
      FieldName = 'TextoPIN'
      Size = 30
    end
    object MTAlterarSenhaCli: TBooleanField
      FieldName = 'AlterarSenhaCli'
    end
    object MTVerSenhaCli: TBooleanField
      FieldName = 'VerSenhaCli'
    end
    object MTCliCadPadrao: TBooleanField
      FieldName = 'CliCadPadrao'
    end
    object MTControlaImp: TWordField
      Alignment = taLeftJustify
      FieldName = 'ControlaImp'
    end
    object MTFiltrarWEB: TBooleanField
      FieldName = 'FiltrarWEB'
    end
    object MTSiteRedirFiltro: TStringField
      FieldName = 'SiteRedirFiltro'
      Size = 80
    end
    object MTBloqDownload: TBooleanField
      FieldName = 'BloqDownload'
    end
    object MTBloqMenuIniciar: TBooleanField
      FieldName = 'BloqMenuIniciar'
    end
    object MTBloqPainelCtrl: TBooleanField
      FieldName = 'BloqPainelCtrl'
    end
    object MTBloqCtrlAltDel: TBooleanField
      FieldName = 'BloqCtrlAltDel'
    end
    object MTBloqExecutar: TBooleanField
      FieldName = 'BloqExecutar'
    end
    object s: TBooleanField
      FieldName = 'BloqMeusLocaisRede'
    end
    object MTPaginaInicial: TStringField
      FieldName = 'PaginaInicial'
      Size = 200
    end
    object sal: TBooleanField
      FieldName = 'EsconderCronometro'
    end
    object MTAposEncerrar: TWordField
      Alignment = taLeftJustify
      FieldName = 'AposEncerrar'
    end
    object MTAlinhaBarraGuard: TWordField
      Alignment = taLeftJustify
      FieldName = 'AlinhaBarraGuard'
    end
    object MTNoNet: TWordField
      Alignment = taLeftJustify
      FieldName = 'NoNet'
    end
    object MTTempoSumirLogin: TWordField
      Alignment = taLeftJustify
      FieldName = 'TempoSumirLogin'
    end
    object MTEmailMetodo: TWordField
      Alignment = taLeftJustify
      FieldName = 'EmailMetodo'
    end
    object MTEmailServ: TStringField
      FieldName = 'EmailServ'
      Size = 50
    end
    object MTEmailUsername: TStringField
      FieldName = 'EmailUsername'
      Size = 50
    end
    object MTEmailSenha: TStringField
      FieldName = 'EmailSenha'
      Size = 50
    end
    object MTEmailDestino: TMemoField
      FieldName = 'EmailDestino'
      BlobType = ftMemo
    end
    object MTEmailEnviarCaixa: TBooleanField
      FieldName = 'EmailEnviarCaixa'
    end
    object MTCredPadraoTipo: TWordField
      FieldName = 'CredPadraoTipo'
    end
    object MTCredPadraoCod: TIntegerField
      FieldName = 'CredPadraoCod'
    end
    object MTPgVendas: TBooleanField
      FieldName = 'PgVendas'
    end
    object MTPgAcesso: TBooleanField
      FieldName = 'PgAcesso'
    end
    object MTPgTempo: TBooleanField
      FieldName = 'PgTempo'
    end
    object MTContinuarCredTempo: TBooleanField
      FieldName = 'ContinuarCredTempo'
    end
    object MTNaoGuardarCreditoCli: TBooleanField
      FieldName = 'NaoGuardarCreditoCli'
    end
    object MTPgImp: TBooleanField
      FieldName = 'PgImp'
    end
    object MTEsconderDrives: TStringField
      FieldName = 'EsconderDrives'
      Size = 30
    end
    object MTIDTipoCred: TIntegerField
      FieldName = 'IDTipoCred'
    end
    object MTNomeTipoCred: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeTipoCred'
      LookupDataSet = tTT
      LookupKeyFields = 'ID'
      LookupResultField = 'Descr'
      KeyFields = 'IDTipoCred'
      Size = 50
      Lookup = True
    end
    object MTMostraNomeMaq: TBooleanField
      FieldName = 'MostraNomeMaq'
    end
    object MTBloqBotaoDir: TBooleanField
      FieldName = 'BloqBotaoDir'
    end
    object MTMostrarDebitoNoGuard: TBooleanField
      FieldName = 'MostrarDebitoNoGuard'
    end
    object MTBloquearLoginAlemMaxDeb: TBooleanField
      FieldName = 'BloquearLoginAlemMaxDeb'
    end
    object MTClienteNaoAlteraSenha: TBooleanField
      FieldName = 'ClienteNaoAlteraSenha'
    end
    object MTNaoVenderAlemEstoque: TBooleanField
      FieldName = 'NaoVenderAlemEstoque'
      LookupDataSet = Dados.mtMaquina
    end
    object MTNaoObrigarSenhaCliente: TBooleanField
      FieldName = 'NaoObrigarSenhaCliente'
    end
    object MTPgVendaAvulsa: TBooleanField
      FieldName = 'PgVendaAvulsa'
    end
    object MTAlteraLoginSemCred: TBooleanField
      FieldName = 'AlteraLoginSemCred'
    end
    object MTNaoCobrarImpFunc: TBooleanField
      FieldName = 'NaoCobrarImpFunc'
    end
    object MTModoCredGuard: TWordField
      Alignment = taLeftJustify
      FieldName = 'ModoCredGuard'
    end
    object MTMsgFimCred: TStringField
      FieldName = 'MsgFimCred'
      Size = 150
    end
    object MTCreditoComoValor: TBooleanField
      FieldName = 'CreditoComoValor'
    end
    object MTSemLogin: TBooleanField
      FieldName = 'SemLogin'
    end
    object MTPMPausaAutomatica: TBooleanField
      FieldName = 'PMPausaAutomatica'
    end
    object MTPMConfirmaImpCliente: TBooleanField
      FieldName = 'PMConfirmaImpCliente'
    end
    object MTPMMostrarPaginasCli: TBooleanField
      FieldName = 'PMMostrarPaginasCli'
    end
    object MTPMMostrarValorCli: TBooleanField
      FieldName = 'PMMostrarValorCli'
    end
    object MTPMCalcValorCli: TWordField
      Alignment = taLeftJustify
      FieldName = 'PMCalcValorCli'
    end
    object MTPMPromptValorCli: TStringField
      FieldName = 'PMPromptValorCli'
      Size = 100
    end
    object MTPMObsValorCli: TStringField
      FieldName = 'PMObsValorCli'
      Size = 300
    end
    object MTNomePremioPass: TStringField
      FieldKind = fkLookup
      FieldName = 'NomePremioPass'
      LookupDataSet = tTipoPass
      LookupKeyFields = 'ID'
      LookupResultField = 'Nome'
      KeyFields = 'FidPremioAuto'
      Size = 40
      Lookup = True
    end
    object MTFidMsgTexto: TMemoField
      FieldName = 'FidMsgTexto'
      BlobType = ftMemo
    end
  end
  object DS: TDataSource
    DataSet = MT
    OnDataChange = DSDataChange
    Left = 632
    Top = 504
  end
  object LMDHint1: TLMDHint
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clInfoText
    TitleFont.Height = -13
    TitleFont.Name = 'Arial'
    TitleFont.Style = []
    Options = [hoRightAngledNose]
    BackgroundedBevel = False
    Left = 416
    Top = 480
  end
  object t: TcxGridPopupMenu
    PopupMenus = <>
    Left = 480
    Top = 480
  end
  object FM: TFormManager
    BarMgr = BarMgr
    PageControl = PagAviso
    Left = 56
    Top = 392
  end
  object tTT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <
      item
        Name = 'Descr'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tipo'
        DataType = ftSmallint
      end
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Minutos'
        DataType = ftInteger
      end
      item
        Name = 'Valor'
        DataType = ftCurrency
      end
      item
        Name = 'TipoAcesso'
        DataType = ftInteger
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
    Left = 680
    Top = 496
    object tTTDescr: TStringField
      FieldName = 'Descr'
    end
    object tTTTipo: TSmallintField
      FieldName = 'Tipo'
    end
    object tTTCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object tTTMinutos: TIntegerField
      FieldName = 'Minutos'
    end
    object tTTValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tTTTipoAcesso: TIntegerField
      FieldName = 'TipoAcesso'
    end
    object tTTID: TAutoIncField
      FieldName = 'ID'
    end
  end
  object FM2: TFormManager
    BarMgr = BarMgr
    PageControl = pagPatro
    Left = 96
    Top = 384
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore1'
    Left = 48
    Top = 16
  end
  object tPacote: TnxTable
    Database = Dados.db
    Filter = '(Fidelidade=True) and (FidPontos>0)'
    Filtered = True
    OnCalcFields = tPacoteCalcFields
    TableName = 'Pacote'
    IndexName = 'IID'
    Left = 784
    Top = 408
    object tPacoteID: TAutoIncField
      FieldName = 'ID'
    end
    object tPacoteMinutos: TIntegerField
      FieldName = 'Minutos'
    end
    object tPacoteValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tPacoteDescr: TStringField
      FieldName = 'Descr'
      Size = 30
    end
    object tPacoteFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tPacoteFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
    object tPacoteNome: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome'
      Size = 30
      Calculated = True
    end
  end
  object tTipoPass: TnxTable
    Database = Dados.db
    Filter = '(Fidelidade=True) and (FidPontos>0) '
    Filtered = True
    TableName = 'TipoPass'
    IndexName = 'IID'
    Left = 872
    Top = 432
    object tTipoPassNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object tTipoPassValor: TCurrencyField
      FieldName = 'Valor'
    end
    object tTipoPassTipoAcesso: TIntegerField
      FieldName = 'TipoAcesso'
    end
    object tTipoPassTipoExp: TWordField
      FieldName = 'TipoExp'
    end
    object tTipoPassExpirarEm: TDateTimeField
      FieldName = 'ExpirarEm'
    end
    object tTipoPassMaxSegundos: TIntegerField
      FieldName = 'MaxSegundos'
    end
    object tTipoPassObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
    end
    object tTipoPassDia1: TIntegerField
      FieldName = 'Dia1'
    end
    object tTipoPassDia2: TIntegerField
      FieldName = 'Dia2'
    end
    object tTipoPassDia3: TIntegerField
      FieldName = 'Dia3'
    end
    object tTipoPassDia4: TIntegerField
      FieldName = 'Dia4'
    end
    object tTipoPassDia5: TIntegerField
      FieldName = 'Dia5'
    end
    object tTipoPassDia6: TIntegerField
      FieldName = 'Dia6'
    end
    object tTipoPassDia7: TIntegerField
      FieldName = 'Dia7'
    end
    object tTipoPassMinutos: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Minutos'
      Calculated = True
    end
    object tTipoPassID: TAutoIncField
      FieldName = 'ID'
    end
    object tTipoPassFidelidade: TBooleanField
      FieldName = 'Fidelidade'
    end
    object tTipoPassFidPontos: TIntegerField
      FieldName = 'FidPontos'
    end
  end
end
