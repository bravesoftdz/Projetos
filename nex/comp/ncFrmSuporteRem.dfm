object FrmSuporte: TFrmSuporte
  Left = 358
  Top = 199
  BorderStyle = bsDialog
  BorderWidth = 10
  Caption = 'Suporte Nextar'
  ClientHeight = 242
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 17
  object Image1: TImage
    Left = 0
    Top = 0
    Width = 48
    Height = 242
    Align = alLeft
    Picture.Data = {
      0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
      00300000003008060000005702F987000000097048597300000EC400000EC401
      952B0E1B000002EB4944415478DAED99CFAB125114C7CFB55FB4F24F50B7492E
      5A19420F82478BEACF7059104428F256650AD1B68D0B69D1561705464466E042
      DBE40B83DAF863136E9E8AC5437C397DAFCC4CD7FBC649479D992773E03267CE
      DC1FE773EE991F1E99A22874968579001E8007F00F20994CDEC0E131DA75B4F3
      5A1F698C48CC8473ABBA783413DEE710ED7E2693F9740A00CEEF417F07F52263
      8C343BD7F519A4DD92FB59D145DB926327D0F7015191010EA15F8D46A3148944
      28100890CFE77305C0743AA54EA7438D46836AB51AB77F0540440698F2F3783C
      4EA150686E42A7013469B55A94CBE566AE00C02703285CCF66B3A726740B80EA
      E7CC0E00B693000A00349BA24EC2240045588C29AAD1AA2ED8D80A00C629C48F
      B8406E160EA0FAB9FA0ED82946E9A5012CDC013380BDE46B52BB6E3D85B87C7C
      7A7BB32964F4C5C1D7D2EC5675D1A6D9CD64B753C86C07780A19EC016DEE5348
      9C93A892B9B3D91DB03B85367E13DB2D5E0A919742EB899742E4A510997E555A
      155B53A892B9BB11A76500D54F3B52C8E61DD8E914728B98A6D0990730FB516F
      B108657F55229D4ECF0A5A6E04E005AE542AB510C0B4B0E50680FF15B69AD0AF
      C462310A87C3140C06E776C249E1916FB7DBD46C36A95AAD72B06F0008CB0037
      A1BF857AC1A8B82B462B914890DFEFA745FD86C321E5F379EAF57ADB28EE9E40
      BF05800F73005CE0D83E0E4FD0E11AECE7D481EA8B4CAF20E837BABCC0783C9E
      1560CBE532F5FB7D71E1B50B5B6AB7EF50EF61FDF73AB0D10B06BBC173E71228
      8F25BBE1A3763299D0D1D111150A05EA76BB9A99F77DC3E382D65A22532E9B5C
      1BA31D63DDA97C61A57F68E4472D6FA3D16816F552A9A4971E11AD2FD01F8991
      DA96AC0CC08FFC51CBA3CE6BF6C56291068381D6E527DA01DA4B44EB64DBCE5B
      02D06EE27ABD3ECB7575FC6F44FD39F46788FA2F3B1C5F0B401FCCD81F9CBF82
      7A00C7BB4B4FE4248070CAFF687B8854F9EC84E39601203FA02610F1A2938E5B
      057880FE2FE0FCD869C72D01B8513C00A7E52F2ECFF9DDCD9B72250000000049
      454E44AE426082}
  end
  object LMDSimplePanel1: TLMDSimplePanel
    Left = 48
    Top = 0
    Width = 402
    Height = 242
    Hint = ''
    Align = alClient
    Bevel.Mode = bmCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = '`'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object LMDSimplePanel2: TLMDSimplePanel
      AlignWithMargins = True
      Left = 10
      Top = 0
      Width = 392
      Height = 242
      Hint = ''
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Bevel.Mode = bmCustom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 0
        Top = 31
        Margins.Left = 0
        Margins.Top = 10
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Caption = 
          'Use essa op'#231#227'o para solicitar ajuda ao suporte t'#233'cnico da Nextar' +
          '. Voc'#234' poder'#225' conversar conosco por CHAT e o t'#233'cnico poder'#225' ter ' +
          'acesso ao seu computador caso seja necess'#225'rio.'#13#10#13#10'O suporte remo' +
          'to est'#225' dispon'#237'vel de segunda '#224' sexta, das 9 as 18hs. '#13#10#13#10
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI'
        Style.Font.Style = []
        Style.LookAndFeel.NativeStyle = True
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = True
        StyleFocused.LookAndFeel.NativeStyle = True
        StyleHot.LookAndFeel.NativeStyle = True
        Properties.WordWrap = True
        Width = 392
      end
      object cxLabel2: TcxLabel
        Left = 0
        Top = 0
        Align = alTop
        Caption = 'Chamar assist'#234'ncia remota da Nextar?'
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Segoe UI Semibold'
        Style.Font.Style = [fsBold]
        Style.TextStyle = [fsBold, fsUnderline]
        Style.IsFontAssigned = True
      end
      object btnCancelar: TcxButton
        Left = 176
        Top = 193
        Width = 89
        Height = 33
        Cursor = crHandPoint
        Cancel = True
        Caption = '&Cancelar'
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        ModalResult = 2
        SpeedButtonOptions.CanBeFocused = False
        SpeedButtonOptions.AllowAllUp = True
        SpeedButtonOptions.Flat = True
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        OnClick = btnCancelarClick
      end
      object btnOk: TcxButton
        Left = 3
        Top = 193
        Width = 153
        Height = 33
        Cursor = crHandPoint
        Caption = 'Chamar Suporte'
        Default = True
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btnOkClick
      end
    end
  end
end
