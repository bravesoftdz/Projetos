object FrmEditFunc: TFrmEditFunc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Cliente'
  ClientHeight = 263
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object panPri: TLMDSimplePanel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Width = 748
    Height = 34
    Hint = ''
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    ParentColor = True
    TabOrder = 0
    object lbNome: TcxLabel
      Left = 636
      Top = 0
      Cursor = crHandPoint
      Align = alRight
      Caption = 'Administrador (F6)'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = 5131854
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clGray
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextStyle = [fsUnderline]
      Properties.Alignment.Vert = taVCenter
      OnClick = lbNomeClick
      AnchorY = 17
    end
    object Img: TMyImage
      Left = 604
      Top = 0
      Width = 32
      Height = 34
      Cursor = crHandPoint
      Align = alRight
      OnClick = ImgClick
      MouseOverDrawMode = idmNormal
      MouseOffDrawMode = idmGrayScale
      MouseDownDrawMode = idmGrayScale
      ImageList = imgs
      ImageIndex = 1
      Colorize = False
    end
  end
  object imgs: TcxImageList
    Height = 21
    Width = 24
    FormatVersion = 1
    DesignInfo = 11010232
    ImageInfo = <
      item
        Image.Data = {
          16080000424D1608000000000000360000002800000018000000150000000100
          200000000000E0070000000000000000000000000000000000004C4C4C4C7C7C
          7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C
          7C7C575757570000000000000000595959597C7C7C7C7C7C7C7C7C7C7C7C7C7C
          7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C4C4C4C4C82828282CCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCAEAEAEAE0505050505050505B1B1B1B1CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC828282827C7C7C7CCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCC7C7C7C71A1A1A1A1D1D1D1DC8C8C8C8CCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC7C7C7C7C38383838CACA
          CACACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCA8A8A8A80E0E0E0E10101010ACACACACCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCACACACA39393939000000005151
          5151BEBEBEBECCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCBCB
          CBCB4545454500000000000000004A4A4A4ACCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCBEBEBEBE5151515100000000000000000000
          00002020202077777777C1C1C1C1CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCADADADAD4242424243434343AFAFAFAFCCCCCCCCCCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCC1C1C1C177777777202020200000000000000000000000000000
          000000000000000000002424242484848484C7C7C7C7CCCCCCCCCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC7C7
          C7C7848484842424242400000000000000000000000000000000000000000000
          0000000000000000000000000000000000002A2A2A2A78787878B2B2B2B2C7C7
          C7C7CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC7C7C7C7B1B1B1B1787878782A2A
          2A2A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A0A0A0A7676
          7676CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC6C6C6C6C09090909000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000018181818B8B8
          B8B8CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB2B2B2B211111111000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000070707070CCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC64646464000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000010101010B8B8B8B8CCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB0B0B0B00B0B0B0B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000042424242CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC383838380000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005A5A5A5ACCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC505050500000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005B5B5B5BCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC505050500000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000060606060CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC555555550000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000066666666CCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC5B5B5B5B0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004D4D4D4DCCCCCCCCCCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC434343430000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000011111111B5B5B5B5CCCC
          CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCAFAFAFAF0C0C0C0C0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000037373737B4B4
          B4B4CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB0B0B0B030303030000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001313
          1313484848488C8C8C8C88888888454545451010101000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          16080000424D1608000000000000360000002800000018000000150000000100
          200000000000E007000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000140C051D6242228C885B2EC49E6A37E1A9713BF1AA6C
          31F7DCCAB9F2C8B8A9F1CBBDADF3DCC2A9FCAF7135FFB3783EFFB0763DFBA46E
          39E9865A2EBF432D176000000000000000000000000000000000000000000000
          0000000000002A180741B1763CFFB1763CFFB2763DFFB1783CFFB1783CFFAC6F
          2FFFFEF6EFFF86898BFF85888AFFF9EDE3FFAE6F32FFB0753CFDB0763CFEB176
          3CFFB1763CFFB1763CFF5434167D000000000000000000000000000000000000
          0000000000007F5021BEB2773DFFB1773DFEB1753DFDB2783DFFB2783DFFAD6F
          30FFF8ECE0FF818283FF808182FFFBF1E6FFAE6F31FFB0753CFDB1773DFEB177
          3DFEB1773DFEB2773DFF885523CB000000000000000000000000000000000000
          000000000000825121C2B2773DFFB1773DFEB1753DFDB2783DFFB2783DFFAD6F
          31FFF6E8DAFF7F8081FF7A7B7CFFFFF7F0FFAD6E30FFB0753CFDB1773DFEB177
          3DFEB1773DFEB2773DFF845322C5000000000000000000000000000000000000
          00000000000074491EADB2763DFFB1753DFDB1773DFEB0753CFDB0753CFDAC6D
          31FDF6E8DBFD7A7B7CFF747575FFFDFDFBFDAC6D2FFDB0753CFDB1753DFDB175
          3DFDB1753DFDB2763DFF73481EAB000000000000000000000000000000000000
          0000000000004A2F136FB2783DFFB2783DFFB0753CFDB3783EFFB3783EFFAE6F
          31FFFCF3EAFF7A7B7CFF747474FFFFFFFFFFAE6F32FFB1773CFFB2783DFFB278
          3DFFB2783DFFB2783DFF482D126B000000000000000000000000000000000000
          00000000000000000000B2783DFFB2783DFFB0753CFDB3783EFFB3783DFFAC6D
          2FFFFFFFFFFF7E7F7FFF7A7A7AFFFFFFFFFFB07539FFB1773CFFB2783DFFB278
          3DFFB2783DFFB2783DFF00000000000000000000000000000000000000000000
          00000000000000000000110A031AA77039EFB1763CFFB3783EFFB2773CFFB378
          3EFFFFFFFFFF6D6D6DFF6A6A6BFFFFFFFFFFBE8C5BFFB07539FFB1783CFFB278
          3DFFA57039ED0F09031700000000000000000000000000000000000000000000
          000000000000000000000000000000000000442A1165A56F39EBB07337FFCDA6
          80FFFFFFFFFFFAFBFBFFF5F7F7FFFFFFFFFFD3B290FFAD7032FF9F6A36E3422A
          1162000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000005D3E2086CBC3
          BCD54844414C00000000000000002926242C9C9590A4523B2471000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000412F
          1D5AA26A31EEAF7235FFAF7235FF916130D11E150D2A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000006A421B9EB276
          3BFFB2773DFFB3783EFFB3783EFFB2773DFFB1763BFF3F250B61000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002A190741B3783EFFB378
          3EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFFB3783EFF110A031A0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000815221C1B1783CFFB178
          3CFFB1783CFFB1783CFFB1783CFFB1783CFFB3783EFFB1763CFF6C441CA10000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A86A2BFAB2783DFFB278
          3DFFB2783DFFB2783DFFB2783DFFB1783CFFB3783EFFB1763CFF965E26DF0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A6692BF8B2783DFFB278
          3DFFB2783DFFB2783DFFB2783DFFB1783CFFB3783EFFB1763CFF955D26DE0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000007B4E20B8B2783DFFB278
          3DFFB2783DFFB2783DFFB2783DFFB1783CFFB3783EFFB1763CFF67411B9A0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C11052CB2783DFFB278
          3DFFB2783DFFB2783DFFB2783DFFB1783CFFB3783EFFB1763CFF0A0602100000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004A2C0D73B278
          3DFFB2783DFFB2783DFFB2783DFFB1783CFFB3783EFF2E1B0847000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002215
          09327C522BB2A56E39EDA16A37E66E49269E0F09041600000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
