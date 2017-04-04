object frmDadosItemOutrasEntradas: TfrmDadosItemOutrasEntradas
  Left = 0
  Top = 0
  Caption = 'Informar dados do item'
  ClientHeight = 311
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 465
    Height = 262
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = FrmPri.lfDefault
    ExplicitHeight = 289
    object edt_B_ICMS: TcxCurrencyEdit
      Left = 74
      Top = 90
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.AssignedValues.EditFormat = True
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 4
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_B_ICMSKeyPress
      Width = 121
    end
    object edt_P_PIS: TcxCurrencyEdit
      Left = 203
      Top = 123
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 15
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_P_PISKeyPress
      Width = 121
    end
    object edt_B_PIS: TcxCurrencyEdit
      Left = 74
      Top = 123
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 6
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_B_PISKeyPress
      Width = 121
    end
    object edt_B_COFINS: TcxCurrencyEdit
      Left = 74
      Top = 156
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 8
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_B_COFINSKeyPress
      Width = 121
    end
    object edt_B_IPI: TcxCurrencyEdit
      Left = 74
      Top = 189
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 10
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_B_IPIKeyPress
      Width = 121
    end
    object cxLabel1: TcxLabel
      Left = 10
      Top = 94
      Caption = 'ICMS:'
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 10
      Top = 123
      Caption = 'PIS:'
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 10
      Top = 156
      Caption = 'COFINS:'
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 10
      Top = 189
      Caption = 'IPI:'
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object edt_T_ICMS: TcxCurrencyEdit
      Left = 332
      Top = 90
      EditValue = 0.000000000000000000
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 20
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 246
      Top = 61
      Caption = '%:    '
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object edt_P_ICMS: TcxCurrencyEdit
      Left = 203
      Top = 90
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 14
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_P_ICMSKeyPress
      Width = 121
    end
    object edt_P_COFINS: TcxCurrencyEdit
      Left = 203
      Top = 156
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 16
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_P_COFINSKeyPress
      Width = 121
    end
    object edt_P_IPI: TcxCurrencyEdit
      Left = 203
      Top = 189
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 17
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_P_IPIKeyPress
      Width = 121
    end
    object edt_B_ICMS_ST: TcxCurrencyEdit
      Left = 74
      Top = 222
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 12
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_B_ICMS_STKeyPress
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 10
      Top = 222
      Caption = 'ICMS-ST:'
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object edt_T_PIS: TcxCurrencyEdit
      Left = 332
      Top = 123
      EditValue = 0.000000000000000000
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 21
      Width = 121
    end
    object edt_P_ICMS_ST: TcxCurrencyEdit
      Left = 203
      Top = 222
      EditValue = 0.000000000000000000
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 18
      OnKeyDown = FormKeyDown
      OnKeyPress = edt_P_ICMS_STKeyPress
      Width = 121
    end
    object edt_T_COFINS: TcxCurrencyEdit
      Left = 332
      Top = 156
      EditValue = 0.000000000000000000
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 22
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 375
      Top = 61
      Caption = 'Total:'
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object edt_T_ICMS_ST: TcxCurrencyEdit
      Left = 332
      Top = 222
      EditValue = 0.000000000000000000
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 24
      Width = 121
    end
    object edt_T_IPI: TcxCurrencyEdit
      Left = 332
      Top = 189
      EditValue = 0.000000000000000000
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0.00;-0.00'
      Style.HotTrack = False
      TabOrder = 23
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 117
      Top = 61
      Caption = 'Base:'
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object edCFOP: TcxButtonEdit
      Left = 10
      Top = 28
      ParentFont = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edCFOPPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 0
      OnKeyDown = edCFOPKeyDown
      OnKeyPress = edCFOPKeyPress
      Width = 121
    end
    object lbCFOP: TcxLabel
      AlignWithMargins = True
      Left = 139
      Top = 32
      ParentFont = False
      Style.HotTrack = False
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahCenter
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignHorz = ahRight
      AlignVert = avTop
      Control = edt_B_ICMS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      Control = edt_P_PIS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup5
      AlignHorz = ahLeft
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahRight
      AlignVert = avTop
      Control = edt_B_PIS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahRight
      AlignVert = avTop
      Control = edt_B_COFINS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahRight
      AlignVert = avTop
      Control = edt_B_IPI
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahLeft
      AlignVert = avBottom
      CaptionOptions.Text = 'cxLabel1'
      CaptionOptions.Visible = False
      Control = cxLabel1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 37
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup9: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup7
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel2'
      CaptionOptions.Visible = False
      Control = cxLabel2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 24
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup7: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup6
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel3'
      CaptionOptions.Visible = False
      Control = cxLabel3
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 51
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup6: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup8
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel4'
      CaptionOptions.Visible = False
      Control = cxLabel4
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 20
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup8: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 3
      AutoCreated = True
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahRight
      AlignVert = avTop
      Control = edt_T_ICMS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahCenter
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel7'
      CaptionOptions.Visible = False
      Control = cxLabel7
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      Control = edt_P_ICMS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avTop
      Control = edt_P_COFINS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      Control = edt_P_IPI
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahRight
      AlignVert = avTop
      Control = edt_B_ICMS_ST
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup10
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'cxLabel5'
      CaptionOptions.Visible = False
      Control = cxLabel5
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup10: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 4
      AutoCreated = True
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      Control = edt_T_PIS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahRight
      AlignVert = avClient
      Control = edt_P_ICMS_ST
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      Control = edt_T_COFINS
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahCenter
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel6'
      CaptionOptions.Visible = False
      Control = cxLabel6
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 35
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      Control = edt_T_ICMS_ST
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 5
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahRight
      Control = edt_T_IPI
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup11
      AlignHorz = ahCenter
      AlignVert = avTop
      CaptionOptions.Text = 'cxLabel8'
      CaptionOptions.Visible = False
      Control = cxLabel8
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 34
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutAutoCreatedGroup5: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutAutoCreatedGroup11: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup9
      AlignHorz = ahRight
      Index = 1
      AutoCreated = True
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutControl1Group_Root
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object lcCFOP: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'CFOP (F5):'
      CaptionOptions.Layout = clTop
      Control = edCFOP
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.AlignVert = tavBottom
      CaptionOptions.Visible = False
      Control = lbCFOP
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 44
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object panBusca: TLMDSimplePanel
    AlignWithMargins = True
    Left = 7
    Top = 269
    Width = 451
    Height = 35
    Hint = ''
    Margins.Left = 7
    Margins.Top = 7
    Margins.Right = 7
    Margins.Bottom = 7
    Align = alBottom
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 1
    ExplicitTop = 352
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 74
      Height = 35
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Ok - F2'
      LookAndFeel.Kind = lfFlat
      SpeedButtonOptions.Flat = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
      OnKeyDown = btnOkKeyDown
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 89
      Top = 0
      Width = 74
      Height = 35
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = 'Cancelar'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
      ExplicitLeft = 88
    end
  end
end
