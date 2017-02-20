inherited FrmBaseCadastroMT: TFrmBaseCadastroMT
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 17
  inherited BarMgr: TdxBarManager
    LookAndFeel.SkinName = ''
    Top = 130
    DockControlHeights = (
      0
      0
      36
      0)
    inherited cmGravar: TdxBarLargeButton
      OnClick = cmGravarClick
      ImageIndex = 4
    end
    inherited cmCancelar: TdxBarLargeButton
      OnClick = cmCancelarClick
    end
  end
  object MT: TkbmMemTable [2]
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
    Version = '7.64.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 160
    Top = 132
  end
  object DS: TDataSource [3]
    DataSet = MT
    Left = 208
    Top = 132
  end
  inherited defStyle: TcxDefaultEditStyleController
    Style.IsFontAssigned = True
    PixelsPerInch = 96
  end
end
