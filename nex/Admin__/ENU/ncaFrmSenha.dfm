object FrmAlteraSenha: TFrmAlteraSenha
  Left = 347
  Top = 245
  BorderStyle = bsDialog
  Caption = 'Contas de Usu'#225'rio'
  ClientHeight = 259
  ClientWidth = 343
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 13
    Width = 48
    Height = 48
    AutoSize = True
    Picture.Data = {
      0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
      0000003008060000005702F987000000017352474200AECE1CE9000000046741
      4D410000B18F0BFC6105000000097048597300000EC300000EC301C76FA86400
      000293494441546843ED983F4B5C4114C52D14AC6217F0036C913AF900F68920
      E9FC00BB58A5902069EC622A91A44891D85B1A08B821D888A0D8041B0B5B4DC0
      553121450A21F0724698E7CC9DB3BBB377DE1B7789C58F9D77E7DE73CE34FBFE
      8C154531D2D0E228418B7571DE6E3E396FB7562FBEB4F641075C8333B00B5E63
      FF119BEB052D560DC27D04C500BC613A0C5AAC0A047921820DCA1CD375A1C52A
      80F9A908A3658FE95B6831151222952BE663A0C51460F64798C77208D6C19653
      7339627E41210598BC15A6319C76D15A117D8605D9E75DA4420CFBF183E958B0
      BF20FA51F67BBC8B14207E20CDFA213518E8FB2BE636DC7DAF39056112C325D3
      91A06F49CCA17CBBEF356BC11DF4A53489609B6949A0FD5CCEE26EFECCEE0703
      1A20F84D9A44F09D6949D0B728E60C9B763F18D0400CA2903A0CF4FD9273E0A7
      DD0F06341083580E999E05FBB3A2BFC4F604431A98C100EC74D19C177D1EB62F
      18D4C00C147C06CBE0BD53EB8AF50EC26860067563BD83301A2078210D6A66DF
      7A076134E0BFFA0331A99357D63B08A30107681093DA70BDBD202930A39AF01E
      00BD105A20FA4E98D449C3F5F682688060CEF0C14B8D77312810CC191E966186
      A0100B04EF3CBC8116FB01C1A1086FA0C55E403067F8DF2C830B2D76038239C3
      3F651924B4C880A036FCB199C7CD6E062F3E5FC97E09F63FA1EFB1F4EE052D4A
      20AEF95C62B8667A86CE56730A4C83076C3F165A7441086D78C309D3AC125AB4
      20404A7843CFEF3E55408B0698A78637DCCD01605C457843D497871482024CAB
      0A7F83D4AF1AEF028629E11FBA5AB92817F8FF5D23A1A2B13AB9291738000D16
      8BD5C94DB9B83F80239A9372F1DF1DC0CCE077BCD36E4EE07966D2EAE4A65C68
      0E300C948B3E07B879241E46687194A0C5D1A118FB07D535E126D7F9127D0000
      000049454E44AE426082}
  end
  object lbSenhaAtual: TcxLabel
    Left = 66
    Top = 9
    Caption = '1. Digite sua senha atual'
    ParentFont = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
  end
  object edAtual: TcxTextEdit
    Left = 68
    Top = 29
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 30
    Style.BorderStyle = ebsFlat
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 1
    Width = 257
  end
  object edNova: TcxTextEdit
    Left = 68
    Top = 77
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 30
    Style.BorderStyle = ebsFlat
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Width = 257
  end
  object lbNovaSenha: TcxLabel
    Left = 66
    Top = 57
    Caption = '2. Digite uma nova senha'
    ParentFont = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
  end
  object edConfirma: TcxTextEdit
    Left = 68
    Top = 125
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.MaxLength = 30
    Style.BorderStyle = ebsFlat
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    Width = 257
  end
  object lbConfirmarSenha: TcxLabel
    Left = 66
    Top = 105
    Caption = '3. Digite a nova senha novamente'
    ParentFont = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 68
    Top = 157
    AutoSize = False
    Caption = 
      'Se voc'#234' usar letras mai'#250'sculas na sua senha, ter'#225' que us'#225'-las no' +
      'vamente toda vez que fizer logon.'
    ParentFont = False
    Style.LookAndFeel.NativeStyle = True
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    Properties.WordWrap = True
    Transparent = True
    Height = 42
    Width = 257
  end
  object btnAlterar: TcxButton
    Left = 144
    Top = 208
    Width = 93
    Height = 29
    Caption = '&Alterar Senha'
    LookAndFeel.NativeStyle = True
    TabOrder = 7
    OnClick = btnAlterarClick
  end
  object btnCancelar: TcxButton
    Left = 252
    Top = 208
    Width = 73
    Height = 29
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.NativeStyle = True
    TabOrder = 8
    OnClick = btnCancelarClick
  end
end
