object FrmAposVenda: TFrmAposVenda
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Venda Realizada'
  ClientHeight = 336
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 32
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 65
    Width = 395
    Height = 137
    Hint = ''
    Margins.Left = 25
    Margins.Top = 10
    Margins.Right = 25
    Align = alTop
    Bevel.Mode = bmStandard
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LMDSimplePanel3: TLMDSimplePanel
      Left = 1
      Top = 1
      Width = 393
      Height = 45
      Hint = ''
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmEdge
      Bevel.StandardStyle = lsNone
      ParentColor = True
      TabOrder = 0
      object lbTotal2: TcxLabel
        AlignWithMargins = True
        Left = 305
        Top = 3
        Margins.Left = 0
        Margins.Right = 10
        Align = alRight
        Caption = 'R$ 8,50'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 23
      end
      object lbTotal: TcxLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Margins.Left = 10
        Align = alLeft
        Caption = 'Total a Pagar'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 23
      end
    end
    object LMDSimplePanel4: TLMDSimplePanel
      Left = 1
      Top = 46
      Width = 393
      Height = 45
      Hint = ''
      Align = alTop
      Bevel.BorderSides = [fsBottom, fsTop]
      Bevel.Mode = bmEdge
      ParentColor = True
      TabOrder = 1
      object lbPago2: TcxLabel
        AlignWithMargins = True
        Left = 293
        Top = 5
        Margins.Left = 0
        Margins.Right = 8
        Align = alRight
        Caption = 'R$ 10,00'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 23
      end
      object lbPago: TcxLabel
        AlignWithMargins = True
        Left = 12
        Top = 5
        Margins.Left = 10
        Align = alLeft
        Caption = 'Valor Pago'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 23
      end
    end
    object panTroco: TLMDSimplePanel
      Left = 1
      Top = 91
      Width = 393
      Height = 45
      Hint = ''
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmEdge
      Bevel.StandardStyle = lsNone
      Color = clGreen
      TabOrder = 2
      object lbTroco2: TcxLabel
        AlignWithMargins = True
        Left = 305
        Top = 3
        Margins.Left = 0
        Margins.Right = 10
        Align = alRight
        Caption = 'R$ 1,50'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = clWhite
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 23
      end
      object lbTroco: TcxLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Margins.Left = 10
        Align = alLeft
        Caption = 'Troco'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -21
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.TextColor = clWhite
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        AnchorY = 23
      end
    end
  end
  object LMDSimplePanel6: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 230
    Width = 395
    Height = 40
    Hint = ''
    Margins.Left = 25
    Margins.Top = 25
    Margins.Right = 25
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnNovaVenda: TcxButton
      AlignWithMargins = True
      Left = 76
      Top = 5
      Width = 165
      Height = 30
      Margins.Left = 12
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      Caption = '&Iniciar Nova Venda'
      LookAndFeel.Kind = lfFlat
      ModalResult = 3
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnNovaVendaClick
    end
    object btnOk: TcxButton
      AlignWithMargins = True
      Left = 0
      Top = 5
      Width = 64
      Height = 30
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      Cancel = True
      Caption = '&Ok'
      LookAndFeel.Kind = lfFlat
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      OnClick = btnOkClick
    end
    object cxLabel3: TcxLabel
      Left = 306
      Top = 0
      Align = alRight
      Caption = '&Editar a Venda'
      DragCursor = crHandPoint
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = 4079166
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      OnClick = cxLabel3Click
      AnchorY = 20
    end
  end
  object LMDSimplePanel1: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 293
    Width = 395
    Height = 40
    Hint = ''
    Margins.Left = 25
    Margins.Right = 25
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 2
    object cxLabel2: TcxLabel
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Configurar ou desativar essa tela'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      Properties.Alignment.Vert = taVCenter
      OnClick = cxLabel2Click
      AnchorY = 20
    end
  end
  object LMDSimplePanel7: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 15
    Width = 395
    Height = 40
    Hint = ''
    Margins.Left = 25
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 3
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 32
      Height = 40
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000002000
        0000200806000000737A7AF4000000097048597300000EC400000EC401952B0E
        1B0000032A4944415478DAC5975D48536118C71F759B1F2108150BA764195949
        98377DB3AEBA0A0A9456B3BB229BD9453762945FA05D74D3559473F401299454
        101405422CEA325A61D0456E2ECDF223D099D89C4EFB3F9DED7076B6B3B3B31D
        F1813F2F3B3BE7FDFDF6EE9CF3BE6FD6CACA0AAD6565A52B70A2BFCB88261759
        786E6B595C7501008BD19C428E22D58899AF47B88309C4830C208F21F4533701
        8037A3E944EC8821853E979047481B4486331200BC11CD0D645D1AA33B8F3443
        E296660180B3D1DC462EA401969713B90891652D027C51BD0EF068F54020E18F
        891300FC3C5FA0233C5AF59070251500DC82E62B52B80A0273482524469209DC
        45733653529EC144759556EAFDE2A6507849FAD57D08C4F42F0A00BE11CD0FC4
        9429BCC36AA79D1B4AE9F3848F3ADFF5D3E2B22811424A21319948A081843B3F
        EDCA07BCDD5A07788978CC33EEA5EBEF59221C3DD40801912315788AA6464F38
        D75C284857DE3CA0D1D9DFD143CF20509B4860084DB9BCE3B22233F9672654E1
        1D80EF90C1FF00DEFEB68FBCD3BFA4877D10103952812009938B587B8BB753F3
        C15A1AF07DA2EE8FAF34C2FF521BE0BEE971F9252108E4C60844DE7C61E959FB
        2D15D474A0860CD939FF3FBFFCF6817A3CAF338547CB0089B0E208149A0AC875
        EC12E51B631F88179070452404F819C02D31E7CC32DCDD4BC3CA7F5BFC0824BA
        07AA3795D3D54327C994638893E81B7453C7113B55AC97C117F8972785737921
        B02D91C01334B5D23395246616E6A928B740069FA756C0FD3393A4528A4F8103
        CD1DF9D97BCC5BE9DA615B9C84B4020CC7B07F0FA8C2B978661439F237E128C9
        9E0435098D707E139640602A4E2022A138170812FC771863E02DEE87341298A2
        14EB1EE0E7A40734CD865590688948F0A3D6EA56BDE1A4C5B3E12E088C2A0A44
        247821E254EAA5CABC852EEF3B4E5D9864646F38B572001ED7AFD28A886F1287
        524F7C2FC8A659B572029EB0BF646B425E4C3668A1285437093360EA6B428908
        AFE36E2205A4BD7855DC249D7A350B4424CA48D8179C266DFB8256C0FD6A276B
        D919F11362236167B41BE1CFD19DD1183248C2CEA81FE0B154872993BD218F46
        1E120450D31DA98B805EB5E602FF00217BA6D046F46D190000000049454E44AE
        426082}
    end
    object cxLabel1: TcxLabel
      AlignWithMargins = True
      Left = 37
      Top = 0
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Venda Realizada com Sucesso !'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = clGreen
      Style.IsFontAssigned = True
      Properties.Alignment.Vert = taVCenter
      AnchorY = 20
    end
  end
  object Timer1: TTimer
    Interval = 50
    Left = 136
    Top = 184
  end
end
