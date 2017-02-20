inherited fbCCE: TfbCCE
  Caption = 'Cartas de Corre'#231#227'o'
  Font.Height = -13
  Font.Name = 'Segoe UI'
  ExplicitTop = 5
  ExplicitWidth = 676
  ExplicitHeight = 382
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    inherited dxBarDockControl1: TdxBarDockControl
      Height = 44
      ExplicitHeight = 44
    end
    object Grid: TcxGrid
      Left = 0
      Top = 44
      Width = 668
      Height = 307
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object TV: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataModeController.GridMode = True
        DataController.DataSource = DS
        DataController.KeyFieldNames = 'Chave'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.IncSearchItem = TVnfe_numero
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.UnselectFocusedRecordOnExit = False
        OptionsView.CellAutoHeight = True
        Preview.Column = TVTexto
        Preview.MaxLineCount = 0
        Preview.Visible = True
        Styles.Header = FrmPri.cxsHeader
        object TVStatus: TcxGridDBColumn
          Caption = 'Situa'#231#227'o'
          DataBinding.FieldName = 'Status'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Images = dmImagens.im16
          Properties.ImmediatePost = True
          Properties.ImmediateUpdateText = True
          Properties.Items = <
            item
              Description = 'Transmitindo'
              ImageIndex = 94
              Value = 0
            end
            item
              Description = 'Aprovada'
              ImageIndex = 4
              Value = 1
            end
            item
              Description = 'Rejeitada'
              ImageIndex = 53
              Value = 2
            end>
          Properties.MultiLineText = True
          HeaderAlignmentHorz = taCenter
          Width = 115
        end
        object TVnfe_numero: TcxGridDBColumn
          Caption = 'N'#250'm. NF'
          DataBinding.FieldName = 'nfe_numero'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Styles.Content = FrmPri.cxStyle64
        end
        object TVDataHora: TcxGridDBColumn
          Caption = 'Data / Hora'
          DataBinding.FieldName = 'DataHora'
          HeaderAlignmentHorz = taCenter
          Width = 146
        end
        object TVnfe_serie: TcxGridDBColumn
          Caption = 'S'#233'rie'
          DataBinding.FieldName = 'nfe_serie'
          Visible = False
          Width = 54
        end
        object TVtran_id: TcxGridDBColumn
          Caption = 'Transa'#231#227'o'
          DataBinding.FieldName = 'tran_id'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 70
        end
        object TVChave: TcxGridDBColumn
          DataBinding.FieldName = 'Chave'
          Width = 328
        end
        object TVtpAmbNFE: TcxGridDBColumn
          DataBinding.FieldName = 'tpAmbNFE'
          Visible = False
          VisibleForCustomization = False
        end
        object TVProtocolo: TcxGridDBColumn
          DataBinding.FieldName = 'Protocolo'
        end
        object TVTexto: TcxGridDBColumn
          DataBinding.FieldName = 'Texto'
          Width = 163
        end
        object TVxMotivo: TcxGridDBColumn
          DataBinding.FieldName = 'xMotivo'
          PropertiesClassName = 'TcxMemoProperties'
          Width = 248
        end
        object TVUsuario: TcxGridDBColumn
          Caption = 'Usu'#225'rio'
          DataBinding.FieldName = 'Usuario'
          Width = 132
        end
        object TVStatusCCE: TcxGridDBColumn
          Caption = 'Status CCE'
          DataBinding.FieldName = 'StatusCCE'
          PropertiesClassName = 'TcxSpinEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
        end
      end
      object GL: TcxGridLevel
        GridView = TV
      end
    end
  end
  inherited BarMgr: TdxBarManager
    UseSystemFont = False
    inherited BarMgrBar1: TdxBar
      Font.Height = -13
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmEmail'
        end
        item
          Visible = True
          ItemName = 'cmSalvar'
        end
        item
          Visible = True
          ItemName = 'cmVer'
        end>
      UseOwnFont = True
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
    object cmEmail: TdxBarLargeButton
      Caption = 'Enviar por E-mail'
      Category = 0
      Hint = 'Enviar por E-mail'
      Visible = ivAlways
      OnClick = cmEmailClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 153
    end
    object cmSalvar: TdxBarLargeButton
      Caption = 'Salvar XML'
      Category = 0
      Hint = 'Salvar XML'
      Visible = ivAlways
      OnClick = cmSalvarClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 41
    end
    object cmVer: TdxBarLargeButton
      Caption = 'Ver XML'
      Category = 0
      Hint = 'Ver XML'
      Visible = ivAlways
      OnClick = cmVerClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 163
    end
  end
  inherited pmLay: TdxBarPopupMenu
    Left = 224
    Top = 170
  end
  object Tab: TnxTable
    ActiveDesigntime = True
    Database = Dados.db
    FlipOrder = True
    TableName = 'CCe'
    IndexName = 'IDataHora'
    Left = 304
    Top = 136
    object TabUID: TGuidField
      FieldName = 'UID'
      Size = 38
    end
    object TabNumSeq: TUnsignedAutoIncField
      FieldName = 'NumSeq'
    end
    object TabChave: TStringField
      FieldName = 'Chave'
      Size = 44
    end
    object TabDataHora: TDateTimeField
      FieldName = 'DataHora'
    end
    object Tabtran_uid: TGuidField
      FieldName = 'tran_uid'
      Size = 38
    end
    object Tabtran_id: TLongWordField
      FieldName = 'tran_id'
    end
    object Tabnfe_serie: TStringField
      FieldName = 'nfe_serie'
      Size = 5
    end
    object Tabnfe_numero: TLongWordField
      FieldName = 'nfe_numero'
    end
    object TabtpAmbNFE: TByteField
      FieldName = 'tpAmbNFE'
    end
    object TabProtocolo: TStringField
      FieldName = 'Protocolo'
    end
    object TabTexto: TnxMemoField
      FieldName = 'Texto'
      BlobType = ftMemo
    end
    object TabStatus: TByteField
      FieldName = 'Status'
    end
    object TabStatusCCE: TIntegerField
      FieldName = 'StatusCCE'
    end
    object TabXMLdest: TnxMemoField
      FieldName = 'XMLdest'
      BlobType = ftMemo
    end
    object TabXMLret: TnxMemoField
      FieldName = 'XMLret'
      BlobType = ftMemo
    end
    object TabxMotivo: TnxMemoField
      FieldName = 'xMotivo'
      BlobType = ftMemo
    end
    object TabLogEnvio: TnxMemoField
      FieldName = 'LogEnvio'
      BlobType = ftMemo
    end
    object TabLogRec: TnxMemoField
      FieldName = 'LogRec'
      BlobType = ftMemo
    end
    object TabUsuario: TStringField
      FieldName = 'Usuario'
      FixedChar = True
    end
    object TabNomeUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'NomeUsuario'
      LookupDataSet = Dados.mtUsuario
      LookupKeyFields = 'Username'
      LookupResultField = 'Nome'
      KeyFields = 'Usuario'
      Size = 50
      Lookup = True
    end
  end
  object DS: TDataSource
    DataSet = Tab
    Left = 360
    Top = 192
  end
end
