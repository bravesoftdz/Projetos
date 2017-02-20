inherited panAlertaModoHomo: TpanAlertaModoHomo
  Width = 932
  ExplicitWidth = 932
  inherited panPri: TLMDSimplePanel
    Width = 932
    Font.Charset = ANSI_CHARSET
    Font.Height = -13
    Font.Name = 'Segoe UI'
    ParentFont = False
    ExplicitWidth = 932
    inherited lbMensagem: TcxLabel
      Align = alLeft
      Caption = 'A NFC-e est'#225' ativada em Modo Homologa'#231#227'o / Sem valor fiscal'
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      ExplicitWidth = 389
      Width = 389
      AnchorY = 16
    end
    inherited LMDSimplePanel1: TLMDSimplePanel
      Width = 932
      ExplicitWidth = 932
      inherited Image3: TImage
        Width = 932
        ExplicitWidth = 932
      end
    end
    object btnModoHomo: TcxButton
      AlignWithMargins = True
      Left = 434
      Top = 3
      Width = 97
      Height = 25
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alLeft
      Caption = 'Saiba mais'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnModoHomoClick
    end
    object lbSaibaMais: TcxLabel
      AlignWithMargins = True
      Left = 878
      Top = 3
      Cursor = crHandPoint
      Margins.Right = 10
      Align = alRight
      Caption = 'Fechar'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.HotTrack = True
      Style.TextColor = clBlack
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      Properties.Alignment.Vert = taVCenter
      OnClick = lbSaibaMaisClick
      AnchorY = 16
    end
    object btnAtivarProd: TcxButton
      AlignWithMargins = True
      Left = 544
      Top = 3
      Width = 163
      Height = 25
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alLeft
      Caption = 'Ativar modo produ'#231#227'o'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnAtivarProdClick
    end
  end
end
