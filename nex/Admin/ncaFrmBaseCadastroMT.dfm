inherited FrmBaseCadastroMT: TFrmBaseCadastroMT
  OnCreate = FormCreate
  ExplicitWidth = 543
  ExplicitHeight = 405
  PixelsPerInch = 96
  TextHeight = 17
  inherited panPri: TLMDSimplePanel
    ExplicitLeft = 0
    ExplicitTop = 46
    ExplicitWidth = 527
    ExplicitHeight = 320
  end
  inherited BarMgr: TdxBarManager
    LookAndFeel.SkinName = ''
    Top = 130
    inherited cmGravar: TdxBarLargeButton
      ImageIndex = 4
    end
    inherited cmCancelar: TdxBarLargeButton
      OnClick = cmCancelarClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  inherited defStyle: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
    PixelsPerInch = 96
  end
  object MT: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
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
    Left = 160
    Top = 132
  end
  object DS: TDataSource
    DataSet = MT
    Left = 208
    Top = 132
  end
end
