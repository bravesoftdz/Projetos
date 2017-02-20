inherited panAlertaRecuperarVenda: TpanAlertaRecuperarVenda
  inherited panPri: TLMDSimplePanel
    inherited lbMensagem: TcxLabel
      Align = alLeft
      Caption = 
        'O sistema recuperou uma venda que estava em andamento ao ser fec' +
        'hado.'
      Style.IsFontAssigned = True
      Properties.WordWrap = False
      ExplicitWidth = 439
      AnchorY = 16
    end
    inherited LMDSimplePanel1: TLMDSimplePanel
      ExplicitWidth = 637
    end
    object btnFechar: TcxButton
      AlignWithMargins = True
      Left = 476
      Top = 2
      Width = 117
      Height = 27
      Cursor = crHandPoint
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alLeft
      Caption = 'Fechar este aviso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnFecharClick
      LookAndFeel.Kind = lfOffice11
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
    end
  end
end
