inherited FrmConfigDanfe_NFCe: TFrmConfigDanfe_NFCe
  Caption = 'Impress'#227'o do Danfe da NFC-e'
  ClientHeight = 310
  ClientWidth = 582
  ExplicitWidth = 588
  ExplicitHeight = 338
  PixelsPerInch = 96
  TextHeight = 16
  inherited panPri: TLMDSimplePanel
    Width = 562
    Height = 135
    AutoSize = False
    ExplicitWidth = 562
    ExplicitHeight = 135
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      AutoSize = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000E7200000E7201EB27F74D00
        00023B494441546843ED953D6EC240148439428E9023D0E5021C80BBE402941C
        831BA40C5DE868225152468AC44F9792D2F16C3CC9E4E57937101E0E923F69F4
        7687F5FACD1AC3A0AAAAAB966B5E935CF39AE49A93C9A4FA6FB23D52AEE96DD0
        B56C8F946BCA459DD307E89AB00077F70FCDE86B8C4A7973D2E67B84066003B6
        92B606DBD67B8406787C7E4D551BB273627D9DE7080D001802D886DA1AFC4DE3
        243C00C805A09436DF232CC0A5E803744D1FA08DF178EC0A6CB7DB6A341A2561
        0CBCB55089D000167A6C9C21406E7D8EF000A83A067AFAFA0458EDFA1C9D04E0
        E9B382DCFA1CE101147A7C0214C8ADCF111AC013E0C96F369B24E0AD854A8405
        C8C10010DF8153090BC00677BB5DAAFBFDFE5BD3A8387DAED1CF39462D111A40
        9B82180601F429D047D5316A898B04D0CAB106B0D2F525C202B0098A27EA4983
        D9EB4A8405C8A1A7CF715B88126101BC9F4408F0E7934DF2E968E30C54223480
        851E9B84ECCB6CC394080FA027AF01F8041840DF110D51A29300689A62D3DAB8
        AA447800851E9BD300FCCAF0BB4FBF4468004FC09EBC6D5ABD1261012E451FA0
        6BFA005D73B600ABD5AA19C581FF09CB59022C168B34472508044F832D97CBE4
        A19263BDF97CDE381FC0836ADC5E5D532E4AA7C239B45EAF7F7898C3570FF353
        BDD96C561D0E87747F7A356EAFAEA99B89DE50A7D36952E3BD9CD97BAA95EE63
        657BA45CD3D90037BBA9851BD05BD5BA6DEAA7D75CFF176F582B8553E1334FAE
        D9A67A2384C0E629508477AC5C33A7FA4638A161A4778C5CF37A540DDE01090A
        080624B082230000000049454E44AE426082}
    end
    object LMDSimplePanel6: TLMDSimplePanel
      AlignWithMargins = True
      Left = 55
      Top = 0
      Width = 506
      Height = 135
      Hint = ''
      Margins.Left = 55
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 0
      ExplicitHeight = 167
      object panImpressora: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 506
        Height = 28
        Hint = ''
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 0
        ExplicitTop = 43
        object lbImpressora: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 63
          Margins.Top = 65
          Align = alLeft
          Caption = 'Impressora:'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Vert = taVCenter
          AnchorY = 14
        end
        object cbImpressoras: TcxComboBox
          AlignWithMargins = True
          Left = 82
          Top = 0
          Margins.Left = 7
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          ParentFont = False
          Properties.OnChange = cbImpressorasPropertiesChange
          Style.BorderStyle = ebsFlat
          TabOrder = 1
          Text = 'cbImpressoras'
          Width = 424
        end
      end
      object panTipoImpressora: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 43
        Width = 506
        Height = 48
        Hint = ''
        Margins.Left = 0
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 1
        ExplicitTop = 86
        object lbModelo: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 63
          Margins.Top = 65
          Margins.Right = 0
          Align = alTop
          Caption = 'Modelo/layout do DANFE'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          Properties.Alignment.Vert = taVCenter
          AnchorY = 11
        end
        object edModelo: TncDocEdit
          AlignWithMargins = True
          Left = 0
          Top = 21
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
            end>
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.escFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Tipo = 4
          Width = 506
        end
      end
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 268
    Width = 562
    ExplicitTop = 313
    ExplicitWidth = 562
  end
end
