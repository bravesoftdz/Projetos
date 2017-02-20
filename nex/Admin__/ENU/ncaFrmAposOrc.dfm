object FrmAposOrc: TFrmAposOrc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Or'#231'amento'
  ClientHeight = 457
  ClientWidth = 583
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 32
  object LMDSimplePanel2: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 65
    Width = 533
    Height = 256
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
    object panEnviar: TLMDSimplePanel
      Left = 1
      Top = 1
      Width = 531
      Height = 35
      Hint = ''
      Align = alTop
      Bevel.BorderSides = []
      Bevel.Mode = bmEdge
      Bevel.StandardStyle = lsNone
      TabOrder = 0
      object cbEnviar: TcxCheckBox
        Left = 0
        Top = 0
        Cursor = crHandPoint
        Align = alLeft
        Caption = 'Enviar por E-mail'
        ParentFont = False
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Style.BorderColor = clGray
        Style.BorderStyle = ebsSingle
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.Kind = lfOffice11
        Style.TextColor = clGray
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleHot.BorderColor = clBlack
        StyleHot.BorderStyle = ebsSingle
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.TextColor = clBlack
        StyleHot.TextStyle = []
        TabOrder = 0
        OnClick = cbEnviarClick
        Width = 249
      end
      object panEnviar2: TLMDSimplePanel
        Left = 303
        Top = 0
        Width = 228
        Height = 35
        Hint = ''
        Align = alClient
        Bevel.Mode = bmCustom
        TabOrder = 1
        object lbPadraoEnviar: TcxLabel
          AlignWithMargins = True
          Left = 41
          Top = 3
          Cursor = crHandPoint
          Align = alRight
          Caption = '>> Salvar essa op'#231#227'o como padr'#227'o'
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.TextColor = clGray
          Style.TextStyle = []
          Style.IsFontAssigned = True
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clBlue
          Properties.Alignment.Vert = taVCenter
          Visible = False
          OnClick = lbPadraoEnviarClick
          AnchorY = 18
        end
      end
      object lbEnviar: TcxLabel
        AlignWithMargins = True
        Left = 252
        Top = 3
        Align = alLeft
        Caption = 'enviar'
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Properties.Alignment.Vert = taVCenter
        Visible = False
        AnchorY = 18
      end
    end
    object panDetalhesEmail: TLMDSimplePanel
      Left = 1
      Top = 36
      Width = 531
      Height = 219
      Hint = ''
      Align = alClient
      Bevel.Mode = bmCustom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 1
      object panBody: TLMDSimplePanel
        Left = 0
        Top = 110
        Width = 531
        Height = 109
        Hint = ''
        Align = alClient
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 0
        object edBody: TcxMemo
          AlignWithMargins = True
          Left = 4
          Top = 2
          Cursor = crHandPoint
          Margins.Left = 4
          Margins.Top = 2
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          OnFocusChanged = edBodyFocusChanged
          Enabled = False
          Lines.Strings = (
            'Ol'#225','
            ''
            'Segue or'#231'amento solicitado em anexo.'
            ''
            'Obrigado, '
            ''
            'LOJA XXX')
          ParentFont = False
          Properties.ReadOnly = False
          Properties.OnChange = edBodyPropertiesChange
          Style.BorderStyle = ebsNone
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.TextColor = clBlack
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleFocused.BorderStyle = ebsNone
          StyleFocused.Color = 12910591
          StyleFocused.TextColor = clBlack
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clBlack
          TabOrder = 0
          Height = 107
          Width = 527
        end
      end
      object panFrom: TLMDSimplePanel
        Left = 0
        Top = 38
        Width = 531
        Height = 33
        Hint = ''
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 1
        object lbFrom: TcxLabel
          AlignWithMargins = True
          Left = 3
          Top = 1
          Margins.Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'De'
          Enabled = False
          ParentFont = False
          Style.TextColor = clGray
          Properties.Alignment.Vert = taVCenter
          Height = 29
          Width = 54
          AnchorY = 16
        end
        object edFrom: TcxLabel
          Left = 60
          Top = 0
          Cursor = crHandPoint
          Align = alClient
          OnFocusChanged = edFromFocusChanged
          Caption = 'Informe seu e-mail'
          Enabled = False
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.HotTrack = True
          Style.TextColor = clBlack
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleFocused.BorderStyle = ebsNone
          StyleFocused.Color = 12910591
          StyleFocused.TextColor = clBlack
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clBlue
          StyleHot.TextStyle = [fsBold, fsUnderline]
          Properties.Alignment.Vert = taVCenter
          OnClick = edFromClick
          AnchorY = 17
        end
      end
      object panAssunto: TLMDSimplePanel
        Left = 0
        Top = 74
        Width = 531
        Height = 33
        Hint = ''
        Align = alTop
        Bevel.Mode = bmCustom
        Color = clWhite
        TabOrder = 2
        object edAssunto: TcxTextEdit
          AlignWithMargins = True
          Left = 3
          Top = 0
          Cursor = crHandPoint
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          OnFocusChanged = edAssuntoFocusChanged
          Enabled = False
          ParentFont = False
          Properties.AutoSelect = False
          Properties.OnChange = edAssuntoPropertiesChange
          Properties.OnEditValueChanged = edAssuntoPropertiesEditValueChanged
          Style.BorderStyle = ebsNone
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.TextColor = clBlack
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleFocused.BorderStyle = ebsNone
          StyleFocused.Color = 12910591
          StyleFocused.TextColor = clBlack
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clBlack
          TabOrder = 0
          Width = 528
        end
        object btnConfigAssunto: TcxButton
          Left = 496
          Top = 2
          Width = 32
          Height = 29
          Cursor = crHandPoint
          Caption = 'Configurar Assunto'
          LookAndFeel.Kind = lfUltraFlat
          OptionsImage.ImageIndex = 33
          OptionsImage.Images = dmImagens.im24
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.AllowAllUp = True
          SpeedButtonOptions.Flat = True
          SpeedButtonOptions.Transparent = True
          TabOrder = 1
          Visible = False
          OnClick = btnConfigAssuntoClick
        end
        object lbAssunto: TcxLabel
          Left = 4
          Top = 5
          Margins.Left = 0
          Caption = 'Assunto'
          ParentFont = False
          Style.TextColor = clGray
          Transparent = True
          OnClick = lbAssuntoClick
        end
      end
      object LMDSimplePanel8: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 36
        Width = 531
        Height = 1
        Hint = ''
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alTop
        Bevel.Mode = bmCustom
        Color = 15066597
        TabOrder = 3
      end
      object panTo: TLMDSimplePanel
        Left = 0
        Top = 2
        Width = 531
        Height = 33
        Hint = ''
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 4
        object lbTo: TcxLabel
          AlignWithMargins = True
          Left = 3
          Top = 1
          Margins.Top = 1
          Align = alLeft
          AutoSize = False
          Caption = 'Para'
          Enabled = False
          ParentFont = False
          Style.TextColor = clGray
          Properties.Alignment.Vert = taVCenter
          Height = 29
          Width = 54
          AnchorY = 16
        end
        object edTo: TcxTextEdit
          AlignWithMargins = True
          Left = 60
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          OnFocusChanged = edToFocusChanged
          Enabled = False
          ParentFont = False
          Properties.AutoSelect = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI'
          Style.Font.Style = []
          Style.TextColor = clBlack
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleFocused.BorderColor = clGray
          StyleFocused.BorderStyle = ebsNone
          StyleFocused.Color = 12910591
          StyleFocused.TextColor = clBlack
          StyleFocused.TextStyle = []
          StyleHot.BorderColor = clWindowFrame
          StyleHot.BorderStyle = ebsNone
          StyleHot.TextColor = clBlack
          TabOrder = 1
          Text = '...'
          Width = 471
        end
      end
      object LMDSimplePanel10: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 108
        Width = 531
        Height = 1
        Hint = ''
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alTop
        Bevel.Mode = bmCustom
        Color = 15066597
        TabOrder = 5
      end
      object LMDSimplePanel11: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 72
        Width = 531
        Height = 1
        Hint = ''
        Margins.Left = 0
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alTop
        Bevel.Mode = bmCustom
        Color = 15066597
        TabOrder = 6
      end
      object LMDSimplePanel12: TLMDSimplePanel
        AlignWithMargins = True
        Left = 0
        Top = 0
        Width = 531
        Height = 1
        Hint = ''
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 1
        Align = alTop
        Bevel.Mode = bmCustom
        Color = 14211288
        TabOrder = 7
      end
    end
  end
  object LMDSimplePanel6: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 400
    Width = 533
    Height = 32
    Hint = ''
    Margins.Left = 25
    Margins.Top = 0
    Margins.Right = 25
    Margins.Bottom = 25
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnOk: TcxButton
      Left = 0
      Top = 0
      Width = 81
      Height = 32
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 0
      Margins.Bottom = 5
      Align = alLeft
      Caption = '&Ok'
      Default = True
      LookAndFeel.Kind = lfFlat
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnOkClick
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 106
      Top = 0
      Width = 94
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 25
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Cancelar'
      LookAndFeel.Kind = lfFlat
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
      OnClick = btnCancelarClick
    end
  end
  object LMDSimplePanel7: TLMDSimplePanel
    AlignWithMargins = True
    Left = 23
    Top = 15
    Width = 535
    Height = 40
    Hint = ''
    Margins.Left = 23
    Margins.Top = 15
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmCustom
    TabOrder = 2
    object imgOrc: TImage
      Left = 0
      Top = 0
      Width = 32
      Height = 40
      Align = alLeft
      AutoSize = True
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000020
        000000200806000000737A7AF4000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EBC00000EBC0195BC724900
        000293494441545847D5973B885341148657C517566B63A5AC60A58D2C163616
        AE82A09DCD82858809865442DA80EBA38990A40A12355520891B252031582C82
        2009E86A21362B280B36562262B148EECDF8FF97CC30334E1EF7EE55DC031F73
        EE3933E7FF33779F334288804422F1028818F80A4EC8B99350492A95C2B2B948
        2693A2D3E9D0C40F701C2543CC854AE230C01B180C06A2DD6E33FF0E8EA16C08
        DAA8244E038C56AB255FC71C1E0D511D95E8067ABD9E68341AA2DBED06E4F3F9
        60602E9713954A45D46A35D5D74337C0B5D96CB2F6051C42C91096A844375028
        1444BFDF17D96C36209D4E8B52A924CAE5B2A856AB2293C9A8BE1EBA0106F37A
        BDCEFA073C1AC21295C4F10A8AC5626042875F9858E9CA1096A8240E030C7E6A
        1DCFF30223084358A212DD00AF6D12D386EFFBE10DC419910CB83EF138C6C5D6
        BC81382392816CF9652C30F89DF03F18F0911AC21295D806C2867D66EB1B8803
        C6D0C02FA481CEE94737589E6C206CD86734031E0C5C421A884BF84CFEB6010F
        062E6335C47513230D4C41072C8255ADA6C3F77E0538C5CFB66EEF622FEA0D3C
        05BBCF3DBF7B0AEB2C78639D19E0F92A568AFB0EF19DEC9128069E813D18541A
        0EE4FB9DC599B74117E2E01AA0F8C6708FE2CC935BFBD8938C3430827540F107
        D6E08BA8EF07EFC0758CA0F84F6B8F58787C93B7A53489D3C09858033B30ECB5
        3D1C9C476F2FA0F837AB47F103ECD9A8644A038C87603B86AED822601EAC5935
        8A87FBA3D4F53BDFE23EB6D1C42B5BCC06E247F073E030F61BC2129584B80119
        F7004DACDAA29285E6D251EC99838175AC86B04425110C3072601BC4DEFF21BE
        BC348F1EAFFE330C70AF212C51093645FDE7F40ECF43F4A3267E12F583E0D370
        CF8AD4B17116A302F10D885F70F546E12CFE3BC4CC6F44699AEE4855F0030000
        000049454E44AE426082}
      ExplicitHeight = 32
    end
    object lbNome: TcxLabel
      AlignWithMargins = True
      Left = 32
      Top = 0
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Caption = 'Or'#231'amento criado com sucesso!'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 6981443
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleDisabled.Color = clBtnFace
      StyleDisabled.TextColor = 10907705
      StyleFocused.TextColor = clBlack
      Properties.Alignment.Vert = taVCenter
      AnchorY = 20
    end
    object lbValor: TcxLabel
      Left = 390
      Top = 0
      Align = alRight
      Caption = 'Valor R$ 150,00'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.TextColor = 6981443
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleFocused.TextColor = clBlack
      Properties.Alignment.Vert = taVCenter
      AnchorY = 20
    end
  end
  object lbPadraoBody: TcxLabel
    Left = 319
    Top = 323
    Cursor = crHandPoint
    AutoSize = False
    Caption = '>> Salvar esse texto como padr'#227'o'
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
    Properties.Alignment.Horz = taRightJustify
    Transparent = True
    Visible = False
    OnClick = lbPadraoBodyClick
    Height = 17
    Width = 238
    AnchorX = 557
  end
  object panImprimir: TLMDSimplePanel
    AlignWithMargins = True
    Left = 25
    Top = 349
    Width = 533
    Height = 27
    Hint = ''
    Margins.Left = 25
    Margins.Top = 25
    Margins.Right = 25
    Margins.Bottom = 0
    Align = alTop
    Bevel.Mode = bmStandard
    Bevel.StandardStyle = lsNone
    TabOrder = 4
    object cbImprimir: TcxCheckBox
      Left = 0
      Top = 0
      Cursor = crHandPoint
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Caption = 'Imprimir em'
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Style.BorderColor = clGray
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.Kind = lfOffice11
      Style.TextColor = clGray
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleHot.BorderColor = clBlack
      StyleHot.BorderStyle = ebsSingle
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.TextColor = clBlack
      StyleHot.TextStyle = []
      TabOrder = 0
      OnClick = cbImprimirClick
      Width = 117
    end
    object lbPadraoImp: TcxLabel
      AlignWithMargins = True
      Left = 371
      Top = 3
      Cursor = crHandPoint
      Align = alRight
      Caption = '>> Salvar como op'#231#227'o padr'#227'o'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = clGray
      Style.TextStyle = []
      Style.IsFontAssigned = True
      StyleFocused.TextStyle = [fsUnderline]
      StyleHot.BorderStyle = ebsNone
      StyleHot.TextColor = clBlue
      StyleHot.TextStyle = []
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Visible = False
      OnClick = lbPadraoImpClick
      AnchorX = 530
      AnchorY = 14
    end
    object lbImpressora: TcxLabel
      Left = 117
      Top = 0
      Cursor = crHandPoint
      Align = alClient
      Caption = 'Selecione uma impressora'
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -16
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = True
      Style.TextColor = clBlack
      Style.TextStyle = [fsUnderline]
      Style.IsFontAssigned = True
      StyleHot.BorderStyle = ebsNone
      StyleHot.Color = clBtnFace
      StyleHot.TextColor = clBlue
      Properties.Alignment.Vert = taVCenter
      Visible = False
      OnClick = lbImpressoraClick
      AnchorY = 14
    end
  end
  object Timer1: TTimer
    Interval = 50
    Left = 360
    Top = 240
  end
end
