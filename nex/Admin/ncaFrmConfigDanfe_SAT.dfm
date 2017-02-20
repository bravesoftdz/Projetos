inherited FrmConfigDanfe_SAT: TFrmConfigDanfe_SAT
  Caption = 'Impress'#227'o do CFe SAT'
  ClientHeight = 310
  ClientWidth = 582
  ExplicitWidth = 588
  ExplicitHeight = 339
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
        0000003008060000005702F9870000000467414D410000B18F0BFC6105000000
        097048597300000E7500000E7501B96351320000029E494441546843ED973D8E
        13411484F7081C81236CC6059C2239E120880B1822871B3B724242C24A244804
        5C00892310F947B265F0BF656C0F5DBD5DC373FB4DB7BCB8B7B1349F54FBBA6B
        7A665ECD9FB53745515CB554F39AA49AD724D56CB55AC5FF26BF474A35B503E4
        96DF23A59A62A7ECD4017273B1002FDE7C2CA5CCF7DE9C7CC21F7F9B379FBE7C
        F7F968BBE4A201245573E17F307A8D81F3EE8DCA40A2EE20B1DF1149035006FF
        0ED886DCB8F4DDFC9B3747008E4F481A4052D1C017578746F76ECD2BAE75F597
        189F70D10014E782B5B7FDBD119A7F8B89B7CDAF7746BFE9F95C2C402EEA00B9
        A90354D16C365581FD7E5F341A0D2B8C81B6168A9134800F3D34DEEFF7CB1020
        B43E44F200A8720CD8F862B128D6EBB5F542EB436409309D4E6D80D168747207
        B4F521920790D0E31DA040687D88A4013401BEC49BCDC6CE81B6168A912C400C
        5EFDC3E1E09CC7912C001B9CCD66B6E285A5B75C2E6DEDF57AB60204E1F6D56A
        652B3FB1219206180E876553D06030B01561F802437894B89D6B58633C490059
        3996BF03BEB8663E9FBBA355932CC06EB73B6A8A8F9226198C958A912C400819
        8E77A22A448C6401B44F2244E43BC0E75D368E71D64748364BE8B14948BE0BF2
        25669818C903C82B2F03F013CA006C5C8E1122469600689A62D3B271A918C903
        48E8B1391900CF3B2AAEBA7C1762240DA0096CB7DBB2410873203DFCB865FD25
        7E2AEA00B9A903E4A60E00269349D1E974DCEC017C02B590E778FE7F6B38C778
        3C76B307B0CEEDAFF6AA9A62270BE732043D6DDD633C1C9B5EB7DB75EEDFB506
        B557D5E44E9E7EA2B6DB6D2BE7FDB8B0F7D5C89EC797DF23A59ACA0170B26746
        3801BDEF46CF5D2D3DB7FFBF78B746369C14B66952CD2A990321040E6E03A5F0
        CE956A86644E842B749BD23B47AA793D2A6EFE00731CFBD93A0D821200000000
        49454E44AE426082}
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
          Tipo = 5
          Width = 506
        end
      end
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 268
    Width = 562
    ExplicitTop = 268
    ExplicitWidth = 562
  end
end
