object FrmCCEOk: TFrmCCEOk
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cart'#227'o de Corre'#231#227'o'
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
        000000200806000000737A7AF4000000097048597300000EC400000EC401952B
        0E1B00000323494441545885ED974F4814511CC73F135A86B95BB1418106D549
        2368E9548AA52159187AEA121496D461469C5AD2223A4404A1581B0CFD636B29
        F0120405862DB8BA54DBA53F12917509A2ED10B414AE59DAEECEEBA023B3DBCE
        EAB8D3AD2FCC61E6FDDEFB7DE6FBDEFBBD1949080180A22861A09EC2F505D8AB
        69DA8B79450B211042D0D1D1210A95A22822140A095996C76459DE6C8C9DEF2A
        72E08D335EA6A1A1015DD75DFDFDFDC38AA2D4689AF6365F1F47010C35363692
        4C26978742A1414551B66A9AF6D136C0C18BE13913FD984A71EFD4AE9C6D4D4D
        4DA452A9D5E170F8F18C139F6C01DC3EBE734E807C922489969616D2E9744524
        1279086CB20570A077104992F226C976A0B2B292F6F6F6BF40808D968338B90B
        841042D7F58C2B954A09599685ED5DD0726E80C5C58BF23A60A5C4AF348FCEEE
        313B60294B80FB67762F28B95D5902549F78C092053A3095D489F634170630DF
        010AD53F7760C16BC0610774DB00FFD740010EBC9E4AEA81684FF310F0019080
        F556C19298F920515555F8FDFE8524343409F8806BDE807A09380A2C9969FB05
        5C1F69F31FCBEEE454259C029A868AEF2CAAAEA84AAF75ADCA6E5F0AA8CD77CF
        ABD1D8E8F6B8AFEFB1D12009215014A5B8A8A8E877010E289EDEFDEFAB2BAA06
        E70A1442F0ECF3BB9AB8AF2F0ACE38F006B85ABDBE2A3D57602CF19575EED56C
        2BAF7CCAF4DA70E42C0878036ACF5AA66D1742E42C3E8989315EB5F9A90B76E2
        59B6126F40BD30D2E63F6909B0EF4268BE004378786E24FF3639CECA92B20C88
        C4C418C3ADDD000CB776B3E5E63180238035C0DD93B93FB572E8833730500230
        FE33C1D3D66E76DCEAC4BDCCFD577280BA6017E5651E3E25BEAE803C5360C301
        F0C0E7F1382F0F5F022072681A4292C8485E1FECC255EACAE86A0014678F69C3
        810DDEC0C0647999A7A42ED8399B3072A83B23A82ED889ABD46D7EF4DD0C909C
        6FB61CAA07AE01AAABD48D19C290794A4CBA01A64A58C0AFD91B6073AC76CDEC
        3634CFBB45721EEC3B2D6500142A4FEFFE9DE642144BC41108725445A2B1D1D9
        42E418402E885C8AC6466BE3BEBE27C6BDA30086BC01F5329987D1247065A4CD
        EFCB8EFD270076F40739EF106EC19470760000000049454E44AE426082}
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
    object lbNFE: TcxLabel
      AlignWithMargins = True
      Left = 15
      Top = 15
      Margins.Left = 15
      Margins.Top = 15
      Margins.Right = 15
      Margins.Bottom = 50
      Align = alClient
      Caption = 'Carta de Corre'#231#227'o para NF-e %s criada com sucesso!'
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
