object FrmCancOk: TFrmCancOk
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Venda cancelada'
  ClientHeight = 275
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object panTop: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 418
    Height = 41
    Hint = ''
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 0
    object img: TImage
      Left = 0
      Top = 0
      Width = 49
      Height = 41
      Align = alLeft
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EC000000EC0016AD6890900
        0002A3494441545847C597CD4F535110C509E2CE2D2E202AFE436E346AE21A11
        41943F005D6830C6B89556C5855F094A83890681154613171AE34A89968D9860
        A24629022D45C7734A1F6FEE7DF3FA5E4B8337F9A5BD3367E64C3FDE578B88FC
        57CC601A0E8D5DDC0DF6F0D5CAA7C50C5AC0A8030C8249B008FE02A9BE72CF38
        F31D567D1C6650838607C01D5006344C82BABBE0A0D5CFC70C06A0491FF80D2C
        A3245640BFD557630651D80A32D546DB857D5A2D1F62065190550D9A41D6F221
        9100C4DD5E71B3E8F6BD88B381A813145451335906FBB51F7136108CAA828639
        9ABB228FE75EC991F1CB7EEEB6F623DABC1D9494B82168FEFEDB67B41479F775
        5E0E3F728660FFBD8127D103F42A61431CAB982FA05DB8DE2EE631C4B0D69D46
        D81C20A744756399732D97D6A4EFD988D6E6103607C82BD11603D33722311F9A
        7F30CC0B301F9CB9E5EBE7913207287A42B9F4624CCA7F3664F2D31B27AE8937
        5F95733337AD9A12D2EE0008F2CCE708875F3EAC9807EBE9C7D74E9E34601EB0
        0BB2700082E0D6377062E29AACAE7350773D51436C9A7FA966C2B504F3B3B57F
        B6E837409070FE03179E3F90D2461929777188E3B9AB32F7DD302F269A933CA4
        E600E39E3076889FC595EABB702D2136309D75EA63883D0A4E79C20AE767EF9B
        43E8F50BE667A65299935E949803F04C18391248AD21EA34E799B01D65D10108
        92B1D782CD21D6210B17CDFBA732A63E865194399ECE06829A57C32135040FB5
        147F380DAF86FB02AF006743203AA98A220CCDDE931F6B05EB0C97448FEF4522
        0102F18857EC605C6693C8583EC40CA28067C6EBAAC176E087A9EF9E3000853D
        8077B756E32458E75C7A2DCCA0064DBA00EFF3EB7D2EE8B2FAF998410B34E411
        123C192D00FD64C47DF064D469D5C76106D300A336C067C3362B9F1633B89398
        C19D435AFE010AA71C38A0767FA30000000049454E44AE426082}
    end
    object cxLabel3: TcxLabel
      Left = 49
      Top = 0
      Align = alLeft
      Caption = 'Sucesso!'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.TextColor = 7047491
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 21
    end
  end
  object panBottom: TLMDSimplePanel
    Left = 0
    Top = 224
    Width = 418
    Height = 51
    Hint = ''
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object cxButton1: TcxButton
      AlignWithMargins = True
      Left = 10
      Top = 10
      Width = 90
      Height = 31
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alLeft
      Caption = '&OK'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object panPri: TLMDSimplePanel
    Left = 0
    Top = 41
    Width = 418
    Height = 183
    Hint = ''
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    ParentBackground = True
    Align = alClient
    Bevel.Mode = bmCustom
    TabOrder = 2
    object lbNumVenda: TcxLabel
      AlignWithMargins = True
      Left = 15
      Top = 15
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 50
      Align = alClient
      Caption = 'A venda %s foi cancelada com Sucesso!'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 7047491
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Properties.WordWrap = True
      Width = 388
      AnchorX = 209
      AnchorY = 74
    end
  end
end
