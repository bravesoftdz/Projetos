object FrmYAD: TFrmYAD
  Left = 0
  Top = 0
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  AlphaBlendValue = 100
  BorderStyle = bsNone
  Caption = 'NexCaf'#233
  ClientHeight = 677
  ClientWidth = 123
  Color = 5849118
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  GlassFrame.SheetOfGlass = True
  object panBanner: TLMDSimplePanel
    Left = 3
    Top = 20
    Width = 120
    Height = 632
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    Color = clGreen
    TabOrder = 4
    object cxLabel1: TcxLabel
      Left = 0
      Top = 0
      Align = alTop
      AutoSize = False
      Caption = 'PUBLICIDADE'
      ParentColor = False
      ParentFont = False
      Style.Color = clBlack
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.TextColor = clWhite
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Height = 32
      Width = 120
      AnchorX = 60
      AnchorY = 16
    end
    object panSky: TLMDSimplePanel
      Left = 0
      Top = 32
      Width = 120
      Height = 600
      Align = alClient
      Bevel.Mode = bmCustom
      TabOrder = 1
      ExplicitLeft = 32
      ExplicitTop = 376
      ExplicitWidth = 100
      ExplicitHeight = 40
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 48
    Top = 104
  end
  object dxBarManager1: TdxBarManager
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
    ImageOptions.LargeImages = cxImageList1
    ImageOptions.StretchGlyphs = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 32
    Top = 192
    DockControlHeights = (
      0
      0
      0
      0)
  end
  object cxImageList1: TcxImageList
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 16777256
    ImageInfo = <
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000200000008000000120000001A0000002000000023000000230000
          00200000001A0000001300000009000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000E0000001F00000038000000550000006D0000007D00000084000000840000
          007C0000006D000000580000003E000000240000001000000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000009000000200000
          0047001115790034449F005774BD00759CD80085B0E6008DB9E6223547D63300
          00BC1F0000A80C00009B000000950000007B0000004E00000024000000090000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000F0000003500283280007B
          A0CB09C4EAFD0FE0F3FF10F7FCFF0DFFFFFF04FFFFFF54ADA9FF983B39FF8E26
          26FF7F1919FF6F0808FE500000DC150000A40000009900000070000000370000
          0010000000020000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000012000F124D007195BE0ED1F1FE1BFC
          FDFF0FFFFFFF06FFFFFF00FFFFFF17E4E8FF8E5A5BFFA03030FF982F2FFF932D
          2DFF912B2BFF8F2929FF851F1FFF650A0AFE2B0000CB030000A1000000830000
          0043000000130000000200000000000000000000000000000000000000000000
          000000000000000000010000000F0023295D02A6CEE729F1FBFF2CFFFFFF0AFF
          FFFF00FCFFFF00FEFFFF36C3CBFFA24B4BFF9B3838FF973030FF922C2CFF8F29
          29FF8B2525FF882222FF861F1FFF881F1FFF6E1212FF2C0000EA060000A20000
          0088000000440000001100000001000000000000000000000000000000000000
          0000000000000000000900252C5506B6DFF03FFDFEFF3BFFFFFF0BFEFFFF00F8
          FFFF00F7FFFF38C0CCFFA45250FF993F3FFF963131FF932D2DFF8F2929FF8B25
          25FF882222FF841E1EFF811B1BFF7F1919FF7F1717FF761313FF320202F30600
          00A200000083000000380000000A000000000000000000000000000000000000
          0000000000030012143001ABD4E54AFEFEFF4DFFFFFF15FEFFFF00F5FFFF00F0
          FFFF21D1E3FFA45D5DFF9A4848FF993232FF942E2EFF902A2AFF8C2626FF8822
          22FF841E1EFF811B1BFF7E1818FF7B1515FF791212FF771010FF6F0C0CFF2D00
          00EC030000A10000007100000023000000030000000000000000000000000000
          00000000000D0083A1B746F4FDFF5CFFFFFF35FEFFFF00F5FFFF00EDFFFF00E6
          FFFF987576FF9C5555FF983B3BFF952F2FFF912B2BFF8D2727FF892323FF851F
          1FFF811B1BFF7D1717FF7A1414FF761010FF730D0DFF720B0BFF710909FF5E04
          04FF1F0000CC000000980000004C0000000F0000000000000000000000000000
          00010039415722DCFBFE68FFFFFF60FFFFFF00F9FFFF00EEFFFF00E9FFFF5AA6
          B4FFA06362FF9A4949FF983131FF932D2DFF8E2828FF8A2424FF862020FF821C
          1CFF7E1818FF7A1414FF761010FF720C0CFF6F0909FF6C0606FF6A0404FF6B02
          02FF450000FE0A0000A200000078000000230000000200000000000000000000
          00070094B3C165FDFFFF71FFFFFF31FDFFFF00F1FFFF00E8FFFF04DBFEFFA276
          73FF9A5B5BFF983C3CFF952F2FFF912B2BFF8C2626FF882222FF831D1DFF7F19
          19FF7B1515FF771111FF730D0DFF6F0909FF6B0505FF680202FF660000FF6700
          00FF620000FF240000D6000000950000003F000000090000000000000000001D
          22311ED7FCFD7AFFFFFF7CFEFFFF00F7FFFF00ECFFFF00E3FFFF48B1C7FFA06E
          6DFF995151FF993535FF942E2EFF8F2929FF8A2424FF862020FF811B1BFF7D17
          17FF781212FF740E0EFF700A0AFF6B0505FF680202FF660000FF660000FF6600
          00FF680000FF410000FE0500009C0000005D0000001400000000000000000051
          66764CECFDFF80FFFFFF5DFEFFFF00F2FFFF00E7FFFF00DFFFFF81939BFF9C68
          67FF994949FF973131FF922C2CFF8E2828FF892323FF841E1EFF7F1919FF7B15
          15FF761010FF710B0BFF6D0707FF680202FF660000FF660000FF660000FF6600
          00FF680000FF520000FF110000AD000000740000001C0000000000000000007D
          A0AC70FBFEFF89FFFFFF3EFCFFFF00EFFFFF00E3FFFF00D7FFFFA3807DFF9A62
          62FF9A4343FF963030FF912B2BFF8C2626FF872121FF831D1DFF7E1818FF7913
          13FF740E0EFF6F0909FF6B0505FF660000FF660000FF660000FF660000FF6600
          00FF670000FF610000FF1C0000C800000084000000220000000100000001009E
          C5CE86FFFEFF91FFFFFF28F9FFFF00EDFFFF00E1FFFF14CBF1FFA47A78FF995E
          5EFF983D3DFF952F2FFF902A2AFF8B2525FF872121FF821C1CFF7D1717FF7812
          12FF730D0DFF6E0808FF690303FF660000FF660000FF660000FF660000FF6600
          00FF660000FF680000FF280000E50000008B00000025000000010000000104B2
          DAE08AFFFFFF96FFFFFF1DF8FFFF00ECFFFF00E0FFFF25C3E5FFA27976FF995B
          5BFF983B3BFF952F2FFF902A2AFF8B2525FF862020FF811B1BFF7C1616FF7711
          11FF720C0CFF6D0707FF680202FF660000FF660000FF660000FF660000FF6600
          00FF660000FF680000FF310000F50000008B00000025000000010000000004B3
          DDE28AFFFFFF97FFFFFF21F8FFFF00ECFFFF00E0FFFF29C2E3FFA27875FF995A
          5AFF983A3AFF952F2FFF902A2AFF8B2525FF862020FF811B1BFF7C1616FF7711
          11FF720C0CFF6D0707FF670101FF660000FF660000FF660000FF660000FF6600
          00FF660000FF6A0000FF310000F50000008400000022000000010000000000A1
          CAD189FFFEFF91FFFFFF36F9FFFF00EDFFFF00E1FFFF1EC6ECFFA37775FF995B
          5BFF983A3AFF952F2FFF902A2AFF8B2525FF862020FF811B1BFF7C1616FF7711
          11FF720C0CFF6D0707FF680202FF660000FF660000FF660000FF660000FF6600
          00FF660000FF690000FF290000E6000000750000001D00000000000000000082
          A6AE73FBFEFF88FFFFFF51FCFFFF00EFFFFF00E4FFFF07D3FCFFA47A76FF995D
          5DFF983C3CFF952F2FFF902A2AFF8B2525FF862020FF811B1BFF7D1717FF7812
          12FF730D0DFF6E0808FF690303FF660000FF660000FF660000FF660000FF6600
          00FF670000FF620000FF1D0000CA0000005E000000140000000000000000005B
          74794EECFDFF80FFFFFF74FEFFFF00F2FFFF00E7FFFF00E0FFFF958386FF9A61
          61FF9A4141FF963030FF912B2BFF8C2626FF872121FF821C1CFF7E1818FF7913
          13FF740E0EFF6F0909FF6A0404FF660000FF660000FF660000FF660000FF6600
          00FF670000FF540000FF130000A9000000410000000A00000000000000000024
          2B2C20D9FCFE7BFFFFFF81FEFFFF0AF7FFFF00ECFFFF00E4FFFF64A1AFFF9E66
          64FF994848FF973030FF922C2CFF8D2727FF882222FF841E1EFF7F1919FF7B15
          15FF761010FF710B0BFF6C0606FF680202FF660000FF660000FF660000FF6600
          00FF690000FF430000FE08000085000000250000000300000000000000000000
          000000A8C9CC68FEFFFF72FFFFFF3CFDFFFF00F1FFFF00E9FFFF24C8E4FFA469
          67FF994F4FFF993434FF932D2DFF8F2929FF8A2424FF851F1FFF811B1BFF7C16
          16FF781212FF730D0DFF6F0909FF6B0505FF670101FF660000FF660000FF6700
          00FF650000FF280000DD00000050000000110000000000000000000000000000
          00000042525426DDFAFE6BFFFFFF67FFFFFF02F9FFFF00EEFFFF00ECFFFF8783
          87FF9C5858FF983A3AFF952F2FFF902A2AFF8C2626FF872121FF831D1DFF7F19
          19FF7A1414FF761010FF720C0CFF6E0808FF6A0404FF670101FF660000FF6900
          00FF470000FE0F00008E00000025000000040000000000000000000000000000
          000000010101008EB7BF49F6FEFF5EFFFFFF3BFEFFFF00F5FFFF00EFFFFF23CE
          E2FFA55D5BFF9A4646FF983030FF922C2CFF8E2828FF8A2424FF851F1FFF811B
          1BFF7D1717FF791313FF750F0FFF720C0CFF6E0808FF6B0505FF6A0303FF5D00
          00FF240000D00000003D0000000B000000000000000000000000000000000000
          000000000000001B1F2002BAE5EC4DFFFEFF51FFFFFF1CFEFFFF00F6FFFF00F4
          FFFF5F9CA4FFA14E4DFF993737FF952F2FFF902A2AFF8C2626FF882222FF841E
          1EFF801A1AFF7D1717FF791313FF750F0FFF720C0CFF720B0BFF6B0707FF3000
          00F20700005C0000001200000001000000000000000000000000000000000000
          0000000000000000000000353F4106C0EAF442FFFEFF3FFFFFFF11FEFFFF00F8
          FFFF00F9FFFF7D7C7FFFA04140FF983131FF932D2DFF8F2929FF8B2525FF8721
          21FF831D1DFF801A1AFF7D1717FF7B1414FF7A1212FF720D0DFF360101F80C00
          006D000000160000000200000000000000000000000000000000000000000000
          00000000000000000000000000000035404202B4DEEC2EF5FCFF31FFFFFF11FF
          FFFF00FEFFFF00FCFFFF77787CFFA13232FF972F2FFF922C2CFF8E2828FF8A24
          24FF872121FF831D1DFF811A1AFF811A1AFF701010FF320000F10D0000670000
          0013000000030000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000001B20210085B0C010D3F1FE1FFE
          FEFF13FFFFFF05FFFFFF00FFFFFF4CA4A4FFA12C2CFF9A2929FF922B2BFF8F29
          29FF8B2525FF8A2424FF831D1DFF670A0AFE330000CB080000400000000B0000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000010101003F53570095
          C3CF0AC9EBFE10E4F4FF10FAFCFF09FFFFFF18F8F4FF6A807EFF9A312FFF8E26
          25FF7F1919FF700A0AFE560000D62000006A0000001200000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000242F3400526D82007398B9018BB8DE019DC9F100A7D7F328465CE14700
          00BB2F000088150000430000000B000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object Timer2: TTimer
    Interval = 60000
    OnTimer = Timer2Timer
    Left = 40
    Top = 296
  end
end
