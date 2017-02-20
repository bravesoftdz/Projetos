inherited FrmBRTrib: TFrmBRTrib
  ActiveControl = edNome
  Caption = 'Tributa'#231#227'o'
  ClientHeight = 301
  ClientWidth = 515
  OnDestroy = FormDestroy
  OnShow = FormShow
  ExplicitWidth = 531
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    Width = 515
    Height = 255
    ExplicitLeft = 0
    ExplicitTop = 46
    ExplicitWidth = 515
    ExplicitHeight = 255
    object LC: TdxLayoutControl
      Left = 2
      Top = 2
      Width = 511
      Height = 251
      Align = alClient
      TabOrder = 0
      LayoutLookAndFeel = FrmPri.lfDefault
      object edCod: TcxDBSpinEdit
        Left = 113
        Top = 10
        TabStop = False
        DataBinding.DataField = 'ID'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.MaxValue = 1
        Properties.MinValue = 9999
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 0
        Width = 83
      end
      object edNome: TcxDBTextEdit
        Left = 113
        Top = 43
        DataBinding.DataField = 'Nome'
        DataBinding.DataSource = DS
        ParentFont = False
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 1
        Width = 420
      end
      object edOrigem: TcxDBImageComboBox
        Left = 113
        Top = 76
        DataBinding.DataField = 'Origem'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediateDropDownWhenKeyPressed = False
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            Description = '0 - Nacional'
            ImageIndex = 0
            Value = 0
          end
          item
            Description = '1 - Estrangeira - Importa'#231#227'o direta'
            Value = 1
          end
          item
            Description = '2 - Estrangeira - Adquirida no mercado interno'
            Value = 2
          end
          item
            Description = 
              '3 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o super' +
              'ior a 40% (quarenta por cento)'
            Value = 3
          end
          item
            Description = 
              '4 - Nacional, cuja produ'#231#227'o tenha sido feita em conformidade com' +
              ' os processos produtivos b'#225'sicos de que tratam o Decreto-Lei n'#186' ' +
              '288/67, e as Leis n'#186's 8.248/91, 8.387/91, 10.176/01 e 11 . 4 8 4' +
              ' / 0 7'
            Value = 4
          end
          item
            Description = 
              '5 - Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o infer' +
              'ior ou igual a 40% (quarenta por cento)'
            Value = 5
          end
          item
            Description = 
              '6 - Estrangeira - Importa'#231#227'o direta, sem similar nacional, const' +
              'ante em lista de Resolu'#231#227'o CAMEX'
            Value = 6
          end
          item
            Description = 
              '7 - Estrangeira - Adquirida no mercado interno, sem similar naci' +
              'onal, constante em lista de Resolu'#231#227'o CAMEX'#8221
            Value = 7
          end>
        Style.StyleController = FrmPri.escFlat
        TabOrder = 2
        Width = 420
      end
      object edST: TcxDBImageComboBox
        Left = 113
        Top = 109
        RepositoryItem = Dados.erCST
        DataBinding.DataField = 'CST'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediateDropDownWhenKeyPressed = False
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <
          item
            ImageIndex = 0
          end>
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 3
        Width = 420
      end
      object edCSOSN: TcxDBImageComboBox
        Left = 113
        Top = 142
        RepositoryItem = Dados.erCSOSN
        DataBinding.DataField = 'CSOSN'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.ImmediateDropDownWhenKeyPressed = False
        Properties.ImmediatePost = True
        Properties.ImmediateUpdateText = True
        Properties.Items = <>
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 4
        Width = 420
      end
      object edCFOP_NFCe: TcxDBButtonEdit
        Left = 113
        Top = 175
        DataBinding.DataField = 'CFOP_nfce'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = edCFOP_NFCePropertiesButtonClick
        Properties.OnEditValueChanged = edCFOP_NFCePropertiesEditValueChanged
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 5
        Width = 96
      end
      object edICMS: TcxDBCurrencyEdit
        Left = 113
        Top = 208
        DataBinding.DataField = 'ICMS'
        DataBinding.DataSource = DS
        ParentFont = False
        Properties.DisplayFormat = '0.##'
        Style.HotTrack = False
        Style.StyleController = FrmPri.escFlat
        TabOrder = 7
        Width = 96
      end
      object lbCFOP: TcxLabel
        Left = 217
        Top = 177
        ParentFont = False
        Style.HotTrack = False
        Transparent = True
      end
      object LCGroup_Root: TdxLayoutGroup
        AlignHorz = ahClient
        AlignVert = avTop
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        Index = -1
      end
      object lcCod: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'C'#243'digo'
        LayoutLookAndFeel = FrmPri.lfDestaque
        Control = edCod
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcNome: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Nome'
        Control = edNome
        ControlOptions.ShowBorder = False
        OnCaptionClick = lcNomeCaptionClick
        Index = 1
      end
      object lcOrigem: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'Origem'
        Control = edOrigem
        ControlOptions.ShowBorder = False
        Index = 2
      end
      object lcCST: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'CST'
        Control = edST
        ControlOptions.ShowBorder = False
        Index = 3
      end
      object lcCSOSN: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahClient
        CaptionOptions.Text = 'CSOSN'
        Control = edCSOSN
        ControlOptions.ShowBorder = False
        Index = 4
      end
      object lcCFOP_NFCE: TdxLayoutItem
        Parent = LCGroup1
        AlignHorz = ahLeft
        CaptionOptions.Text = 'CFOP para NFCE'
        Control = edCFOP_NFCe
        ControlOptions.ShowBorder = False
        Index = 0
      end
      object lcICMS: TdxLayoutItem
        Parent = LCGroup_Root
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Al'#237'quota ICMS'
        Visible = False
        Control = edICMS
        ControlOptions.ShowBorder = False
        Index = 6
      end
      object LCGroup1: TdxLayoutAutoCreatedGroup
        Parent = LCGroup_Root
        LayoutDirection = ldHorizontal
        Index = 5
        AutoCreated = True
      end
      object LCItem1: TdxLayoutItem
        Parent = LCGroup1
        AlignHorz = ahClient
        AlignVert = avCenter
        CaptionOptions.Text = 'cxLabel1'
        CaptionOptions.Visible = False
        Visible = False
        Control = lbCFOP
        ControlOptions.ShowBorder = False
        Index = 1
      end
    end
  end
  inherited BarMgr: TdxBarManager
    LookAndFeel.SkinName = ''
    DockControlHeights = (
      0
      0
      36
      0)
    inherited cmGravar: TdxBarLargeButton
      ImageIndex = 4
    end
  end
  inherited defStyle: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
    Left = 210
    Top = 0
    PixelsPerInch = 96
  end
  inherited MT: TkbmMemTable
    object MTID: TWordField
      Alignment = taLeftJustify
      FieldName = 'ID'
    end
    object MTNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object MTOrigem: TByteField
      Alignment = taLeftJustify
      FieldName = 'Origem'
    end
    object MTCST: TWordField
      Alignment = taLeftJustify
      FieldName = 'CST'
    end
    object MTCSOSN: TWordField
      Alignment = taLeftJustify
      FieldName = 'CSOSN'
    end
    object MTICMS: TFloatField
      Alignment = taLeftJustify
      FieldName = 'ICMS'
    end
    object MTPadrao: TBooleanField
      FieldName = 'Padrao'
    end
    object MTCFOP_nfce: TWordField
      Alignment = taLeftJustify
      FieldName = 'CFOP_nfce'
    end
  end
  object tAux: TnxTable
    ActiveRuntime = True
    Database = Dados.db
    TableName = 'BRTrib'
    IndexName = 'IID'
    Left = 330
    Top = 56
    object tAuxID: TWordField
      FieldName = 'ID'
    end
  end
end
