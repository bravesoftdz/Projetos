object FrmWebCam2: TFrmWebCam2
  Left = 0
  Top = 0
  Caption = 'Foto do Cliente'
  ClientHeight = 451
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 0
    Top = 49
    Width = 513
    Height = 402
    Hint = ''
    Align = alClient
    Bevel.Mode = bmStandard
    TabOrder = 4
    object Paginas: TcxPageControl
      Left = 1
      Top = 1
      Width = 511
      Height = 400
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tsCam
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 6
      ClientRectBottom = 400
      ClientRectRight = 511
      ClientRectTop = 24
      object tsImg: TcxTabSheet
        Caption = 'tsImg'
        ImageIndex = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 379
        object Image1: TcxImage
          Left = 0
          Top = 0
          Align = alClient
          Properties.FitMode = ifmProportionalStretch
          Properties.ShowFocusRect = False
          Style.BorderStyle = ebsNone
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Transparent = True
          Height = 376
          Width = 511
        end
      end
      object tsCam: TcxTabSheet
        Caption = 'tsCam'
        ImageIndex = 1
        object Cam: TdxCameraControl
          Left = 0
          Top = 0
          Width = 511
          Height = 376
          Align = alClient
          BorderStyle = cxcbsNone
        end
      end
    end
  end
  object dxBarDockControl1: TdxBarDockControl
    Left = 0
    Top = 46
    Width = 513
    Align = dalTop
    BarManager = barMgr
  end
  object barMgr: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = dmImagens.im16
    ImageOptions.LargeImages = dmImagens.im24
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 328
    Top = 200
    DockControlHeights = (
      0
      0
      46
      0)
    object barSemWebCam: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 507
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = True
    end
    object barMgrBar2: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      BorderStyle = bbsNone
      Caption = 'Custom 3'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 547
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cmSalvar'
        end
        item
          Visible = True
          ItemName = 'cmCancelar'
        end
        item
          Visible = True
          ItemName = 'cmPlay'
        end
        item
          Visible = True
          ItemName = 'cmStop'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmArq'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'cmApagar'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object cmSalvar: TdxBarLargeButton
      Caption = 'Salvar'
      Category = 0
      Enabled = False
      Hint = 'Salvar'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = cmSalvarClick
      AutoGrayScale = False
    end
    object cmCancelar: TdxBarLargeButton
      Caption = 'Cancelar'
      Category = 0
      Hint = 'Cancelar'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = cmCancelarClick
      AutoGrayScale = False
    end
    object cmArq: TdxBarLargeButton
      Caption = 'Selecionar arquivo de imagem'
      Category = 0
      Hint = 'Selecionar arquivo de imagem'
      Visible = ivAlways
      LargeImageIndex = 29
      OnClick = cmArqClick
      AutoGrayScale = False
    end
    object cmStop: TdxBarLargeButton
      Caption = 'Parar'
      Category = 0
      Enabled = False
      Hint = 'Parar'
      Visible = ivAlways
      LargeImageIndex = 27
      OnClick = cmStopClick
      AutoGrayScale = False
    end
    object cmPlay: TdxBarLargeButton
      Caption = 'Iniciar'
      Category = 0
      Hint = 'Iniciar'
      Visible = ivAlways
      LargeImageIndex = 28
      OnClick = cmPlayClick
      AutoGrayScale = False
    end
    object cmApagar: TdxBarLargeButton
      Caption = 'Apagar'
      Category = 0
      Enabled = False
      Hint = 'Apagar'
      Visible = ivAlways
      LargeImageIndex = 7
      OnClick = cmApagarClick
      AutoGrayScale = False
    end
    object dxBarButton1: TdxBarButton
      Caption = 'N'#227'o h'#225' web-cam nesse computador'
      Category = 0
      Hint = 'N'#227'o h'#225' web-cam nesse computador'
      Visible = ivAlways
      ImageIndex = 18
      PaintStyle = psCaptionGlyph
    end
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 112
    Top = 144
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svTextColor]
      TextColor = clGray
    end
  end
  object OpenDlg: TOpenDialog
    Filter = 'Imagens|*.jpeg;*.jpg;*.bmp'
    Options = [ofHideReadOnly, ofPathMustExist, ofFileMustExist, ofEnableSizing]
    Left = 264
    Top = 136
  end
  object Timer1: TTimer
    Left = 145
    Top = 330
  end
end
