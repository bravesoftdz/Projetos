object FrmPanTopo: TFrmPanTopo
  Left = 0
  Top = 0
  Caption = 'FrmPanTopo'
  ClientHeight = 357
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object panNaoAtivou: TLMDSimplePanel
    Left = 0
    Top = 34
    Width = 813
    Height = 34
    Align = alTop
    Bevel.BorderSides = []
    Bevel.Mode = bmEdge
    Color = 12582911
    TabOrder = 0
    object Image2: TImage
      Left = 0
      Top = 0
      Width = 35
      Height = 31
      Margins.Left = 4
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alLeft
      Center = True
      Picture.Data = {
        0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
        0018000000180806000000E0773DF80000000473424954080808087C08648800
        0000097048597300000AF000000AF00142AC34980000002B7445587443726561
        74696F6E2054696D65004D6F2032342046656220323030332031343A31373A30
        31202B3031303059110D0E0000002674455874536F667477617265005245534F
        5552434553204E4F54205553454420464F5220454E47494E45F6C2E072000003
        0C4944415478DABD954B481B4118C7BF0DD6F6540A0565EB410F859E7A104462
        15253E5A857A1009F55A2894B6B68782A75E7A12448D0F5494989701097A2882
        A06D35352A6925105AADB4F4D0A60517D7075A35C9BA6B76FBCDEC6E4CE2A30F
        4C17BEDDFD6627FFDFFC6726DF3090E68BF95F807481142610087CC8CCCCCC12
        8418C4621286029224D327898303FD5D4E698F610EF4379244DA0064196F700E
        D6D6D6D75B5AEE5663B2C904838B5C7EFE7596E214D24945936762E8DF52DF13
        DBC8B5BF0F3038685B6D6EBEF70CD349666121C0151616B08B8B1F2112896007
        0143044110A0ACECF6A9A2AD2BF5F06397831D49808B4C36B45E9D448D30B8DD
        6EBEADED8115010EC6EF0F70466301BBB4940C301A2B4F14D6DBEF7FCA87CF5B
        21D8C0C15C32B0306DFC0AD1680486868608C08E001BE3F3BDE58A8B8DECF2B2
        0A2023D701A9E2A9B939780DDE6F7E83FDB0043919B9E0BB1982BD3D0270F216
        CB23070578BD7EAEA4A4881545554017497D1E07A87A97075FD6BE03EC00E418
        72E14D7D4873E0E4DBDB35C0D4949F2B2D2D6271E071C0EF407A7E2770035636
        5641F909901DCB018F790EC2E108B85C2EBEA3E3A10A989898E74CA6E23840DF
        417FE32671F711074EA793EFECD41C8C8FCF71E5E52514A06FD554F13F052502
        BABA34C0D8988FABA8283D16902A3E33334A7719D90C222E9A284AF40F27CB0A
        2D060D0D4D748A9C4E07DFDDDDA8024647BD5C75B5898D464F069CE622D10183
        0587C01D0E07DFD3A3013C1E2F5753634A5AE493A66A76F6D081241D75603637
        69003BDFDBFB58050C0FBF464065D222FFAB0BE24010A260B3D9F8BE3E0DE072
        BDE26A6BAB5852434847D22971711385E7E793D740C26A5757F7940E8A143B75
        8A04B05AADFCC0C01315E0764FE31A94B3BBBB027660E22339841868AEBB2342
        AA4BE6880300038205B0DB1D7C7F7FA35A2A2C164F104792258AFB1A408E0B29
        8A4CE796946794A022E49DCCB91E24571445FB16A390ADADEDED9191E72F68B1
        C3DB158C5B187918196774D01C6084305E12C0798CCB1817CEF0642396057AE0
        680DE93B32D3241CBFD20EF805DA67F86BF9C26C550000000049454E44AE4260
        82}
      ExplicitHeight = 30
    end
    object cxLabel1: TcxLabel
      Left = 35
      Top = 0
      Align = alLeft
      Caption = 'Voc'#234' ainda n'#227'o confirmou o registro da sua loja'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 3026478
      Style.TextStyle = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitHeight = 29
      AnchorY = 16
    end
    object cxButton4: TcxButton
      AlignWithMargins = True
      Left = 380
      Top = 3
      Width = 121
      Height = 25
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alLeft
      Caption = 'Confirmar Agora'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = cxButton4Click
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      ExplicitHeight = 23
    end
    object cxButton5: TcxButton
      AlignWithMargins = True
      Left = 729
      Top = 3
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alRight
      Caption = 'Op'#231#245'es ...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      PopupAlignment = paRight
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      ExplicitHeight = 23
    end
    object LMDSimplePanel2: TLMDSimplePanel
      Left = 0
      Top = 31
      Width = 813
      Height = 3
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 3
      ExplicitTop = 28
      object Image7: TImage
        Left = 0
        Top = 0
        Width = 813
        Height = 3
        Align = alTop
        Picture.Data = {
          0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
          00030000000308060000005628B5BF000000097048597300000EC400000EC401
          952B0E1B000000174944415478DA636460607061800246205643E6F0C138000D
          83007C5CB104A70000000049454E44AE426082}
        Stretch = True
        ExplicitLeft = 3
        ExplicitTop = 36
        ExplicitWidth = 834
      end
    end
  end
  object panOutroHD: TLMDSimplePanel
    Left = 0
    Top = 68
    Width = 813
    Height = 37
    Align = alTop
    Bevel.BorderSides = []
    Bevel.Mode = bmEdge
    Color = 12582911
    TabOrder = 1
    ExplicitTop = 62
    object Image5: TImage
      Left = 0
      Top = 0
      Width = 35
      Height = 34
      Align = alLeft
      Center = True
      Picture.Data = {
        0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
        0020000000200806000000737A7AF40000002B744558744372656174696F6E20
        54696D65004672203138204A756E20323030342031353A34393A3231202B3031
        3030F57BB8600000000774494D4507D605170E011174A8897D00000009704859
        7300000AF000000AF00142AC34980000000467414D410000B18F0BFC61050000
        06A34944415478DAAD577B6C535518FFDDDBC7E81EDDBA766CB807632B832D6E
        2EC0783818081394A86830411DA251638CEF44D418FCC367A222888920084240
        0506E888A0B0E01888C036DCD864630FBA57D99BB6EBFA5877DBDE7BFDEE6D31
        188D5BDD4EF3CBED39F77CE7FB9DEF71BE731984D84480A9FE546D0CE754FB58
        81555799F8F5EBF60E5FA257C30421D4F59850260FEC53BE6B1BD2AC67EDA237
        A5F0B518BEBB0617CF9E291FF6B0672C4EE6F853C5F6069AE60DF09C6002ADDB
        10C77B757DD3577CC4F61C7B1F71F94F12A346F4D49E46ECF425B0355498E76F
        EB7DA86F08CD34DD3DE104CE6F44FA948834D3B4398FA3FFDC3EC4CE7A18B09A
        3078BD139367DF0DCBAF47C5E55FB6BF7DB5DB7B8803DA49849F5002A73E404A
        5A4C7267DAECB5E8BF500CFDACD56007DB616B698161CE120C56FD028E7309FD
        A2F7E2FCF7FAD68E00BD24C64D1881731F2225313AB9735AEE6318A838025DF6
        4A283C1658FFA843DC8265B0579E8276D6DD44E4A458B0BDE395AB7DBE1212EB
        C628F1109A0B34A9A669B96B60B9F003A273EE81CA6B83A5AA1286829570549C
        4678F6420C375CC45D5B1BB7D4F47AF791583DC1373116F85831333926BD71EA
        CC0771E3DC61C4CEBD1FACCB02FBE55AE8162E83BBFA3CD4C65C70D7EAB0746B
        FDB64B3DDC0112AB2678268440ED2676A92E2AA32C2563256E947F0F7DDEBD94
        F95638EB9B113D3F1FEEA6CB504E990EBEA3052BB6D56DFFEDFAC82112AB44E0
        7C089D40C76E4CBEE1C2A4BC97D1435DBE660BFB747CF4EC9DB725E561B0B29C
        5CB0088CC70EE7E5ABD0E62FC0F0D53A28F489606C567C5EDA70E48D32EB1EC9
        700467C8049ABE665EE0FD9A2DACA856F8B8A10B272A141B0A3299B546E3E267
        0C51C901295E84E8F3C1EFE0A0D245C1D3D400455C3258871D074E3794AE3BDE
        F71DCD3A41B0844CE0F7CF619A9DF5543A1815DC8E4EB49ACE0CDA9CFC95EC99
        4B0AF451B7017E4A7191825B2088B4842840A42146350942770FCE56345C5A7A
        B06B2F2D2565424FC804CE7FA4FA362339B7C8107787BC53B7FD3ADADA4E8909
        490B99B8E8F480725E9015CB4FA90288413276175AAAAF74CCD8D3B19D46F713
        BAF01FA9F8AF049EB813E9CF2E5797DC3E233F5B1B3D951430700FF5A0BFB392
        04E8473B3718B21049EE1059168C4C28283CE446676D636FEA2ED34EEA495668
        0F9900B5B047F2140BDE591DF96346D6AA287992C00476091682CF0BBFDD4A69
        C84111150D46131EB0849B83E0184643BDA939E7DBB6C33479CFFF25208D4794
        BC10F1626E52C47B49C602955239497687BC964C86BA0E07D8308D6C15798C06
        79733F8E56B4953FFCB3B99C06BE2174841C03B7BCD3BF7D8FA6E8B902FDA6C4
        CC4205FCDEBFF95B94E300B24BE480A4AEDFD485978E351DD85E6FBB4833BFFF
        5F41784B53120C2D6FC61D4AC99AB7282C42471AFC01127206049F12682991E3
        C137B689E9BBEB77999DDE5334F80B61703C04A4A6287E42BF725152F801FDB4
        3B22D4DA5852C807DCC10B01974801E8A3541C70A0E64A7BED9CE296DF68443A
        076A0923E32520B5C8E7E74CBAEFD542CDD678D5945855640C29F44393381582
        751862B7158C9ACE0CCB90636EC9B592269BE78FA0F9CD98A06AC8AEDFB0C1F8
        8CE6C3EA19531E88F439E9C2C328A08C266BF03C1807D59BD61BB8FFE4B5FDC7
        4D36A904FF844021728DB6F0988B514D5DFDDE11F39975333D6DD0720350F8C9
        B2823F989A0AF89A6D5875D6BEF744556D1902BEEF1B6DF7632690919151B879
        F3E65D73E7E74FEDB35831384845686808DC888B12C347059F1251A982D9D45C
        F5D61BAF7F462252005AC7B2F698086465659DE3797EE1BC79F3909B9B8BD4D4
        54C4C7C72346A743585898BC88D96CC6C18307FB77ECD8B19BBA5F2390FFA3DE
        0BC744203333B3B7A8A828C16432A1ABAB0B160B5D44EC76B85C2E783C1ECA4C
        3F794294C9B8DDEE7A4110D69398740E38C64D202D2D2D263636D6BA66CD1AD6
        E974C2EBF5FE058EE3FE0689505959D90091F984448B112844E323909D9D9D97
        90905055585828EDEE1F4A6FE226A9D2D2523F11D848A2922B5A31DE34CCC9C9
        79D46834EE5FBC78311C74F68F8C8CC866BFA958EADF2440A6970888F47F0B89
        7E45681E3701CA8064A55259A2D7EB67190C0646ABD5CABE66A90C4BCD47B722
        8990647E9BCD86EAEA6A3FF5BFA057BB088D18E57B712C4128D583F4F0F0F055
        6AB53A43A150C451DF4066D6112269D74A22410FC141CF3E1AEBA4FF1D085C46
        5A27828034876A312613120909043D414BA08B00D4902E0901534BE7BE94FF4D
        08D401FBB85D704B93948405C9484A5541EBB0C175C4E06EA5CF31E90896AEE3
        A39E037F02C5F7364E9832789D0000000049454E44AE426082}
      ExplicitLeft = -6
      ExplicitTop = -4
      ExplicitHeight = 29
    end
    object lbOutro: TcxLabel
      Left = 35
      Top = 0
      Align = alLeft
      Caption = 'Seu NexCaf'#233' est'#225' registrado para outro computador'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 3026478
      Style.TextStyle = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitHeight = 29
      AnchorY = 17
    end
    object btnTransferir: TcxButton
      AlignWithMargins = True
      Left = 413
      Top = 3
      Width = 137
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alLeft
      Caption = 'Transferir Registro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnTransferirClick
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      ExplicitHeight = 23
    end
    object cxButton7: TcxButton
      AlignWithMargins = True
      Left = 729
      Top = 3
      Width = 81
      Height = 28
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alRight
      Caption = 'Op'#231#245'es ...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 2
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      PopupAlignment = paRight
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      ExplicitHeight = 23
    end
    object LMDSimplePanel6: TLMDSimplePanel
      Left = 0
      Top = 34
      Width = 813
      Height = 3
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 3
      ExplicitTop = 28
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 813
        Height = 3
        Align = alTop
        Picture.Data = {
          0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
          00030000000308060000005628B5BF000000097048597300000EC400000EC401
          952B0E1B000000174944415478DA636460607061800246205643E6F0C138000D
          83007C5CB104A70000000049454E44AE426082}
        Stretch = True
        ExplicitLeft = 3
        ExplicitTop = 36
        ExplicitWidth = 834
      end
    end
  end
  object panBloqueado: TLMDSimplePanel
    Left = 0
    Top = 105
    Width = 813
    Height = 34
    Margins.Top = 30
    Align = alTop
    Bevel.BorderSides = []
    Bevel.Mode = bmEdge
    Color = 12582911
    TabOrder = 2
    object Image6: TImage
      Left = 0
      Top = 0
      Width = 35
      Height = 31
      Align = alLeft
      Center = True
      Picture.Data = {
        0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
        0018000000180806000000E0773DF80000002B744558744372656174696F6E20
        54696D65004672203135204E6F7620323030322031303A30383A3239202B3031
        3030F5A262C60000000774494D4507D605170D390D7570D79000000009704859
        7300000B1100000B11017F645F910000000467414D410000B18F0BFC61050000
        056B4944415478DA7D56696C545514FEEE5B6669692950D98A2C055B48811881
        1840A9458D099184F8C3440C222A298410441322FF1A133424184540A2464523
        8A4DD0A090285B69512A8A022D9D425BE83E2D2DD376663A9D79BBE7CE7D5326
        6DF1265FCF7B73DF3DDFD96F191EB01C8035CDC52A59C31AA8784C1EE79F6A59
        368B0F6AA1B08E1BDD36CEEFE9C1B97F8041FADC1247462F36D68F8942AC0DFB
        3DEF652C5D5EE42F58C0E4093980AE1312403C06AB2B8870C36D743636B7DC1D
        743E7CB607DFD2B108C1FC5F02670E7CBA8CC37649F146DFEA350CB24C0A8780
        AE66E05E3730700F1822834D53186C037DCD5DA8698F9DDBDB8FB77F35708B36
        B4746F86099C7CF8422A4E8D7FBD74B5925F484AE8747B3D70B74D586FD0398D
        A44652D7EE4BFA5D1F4CE0FC1DADEEDD7E6CA936F12FA98BA7488609E2F37044
        79A374A352B000889195816AFAC411487045712135A134F99C22323572CCC0B1
        16EB8FEDFDD8413E075C124190988BB57671F109FFF3EB5832243517014916CC
        3C1C5A62B4E529A9BB9E11494D9F1F5F740CEDFF38818374B2859F66BC5ABA17
        A93553DF295B088F1FB85641354145C19890A691A64C4F533EF25947D0CEC65F
        AD43BDAFF619DBC3C0592208B1FA99289EFED4F28AECE7D6320479328958F688
        D058A4DC30858586EEE6202E24AF285DBFFF4CDFF59A3E5C8964E35067CF8153
        063E25825BAC210F7BF3B76EDA25E7CD86FDF7695CFCE51AB2A8F833641B7ED9
        1150009F04A82441122A854FA21785A4A202E3B261058318A0E85EB2F371B9A9
        F1CC1E1D07E8CB2A767306CE14EE7EEB194423B0EBAA51199E8EBC4FBE826258
        F0785478BC1E7855921E0F54AF0F321BA3792ABE87B66B03C2445029152274BB
        E1CED6B8F901EDFCC41A0A3DB58F6CDDB2101D8D70DA6EA34E9A0D75DF11784D
        1D8AA290622F9178C97A055E928A2C8DEECCAA1F30B4733D7AE20A7E2702A7AD
        31FA4A34C109BE61F5F3941BF337BF5684A65A8A7F105D39051828FB3249A0A6
        2C1F2193E5C7D2FCA83C86D88E97704BCBC175360BACFD666CD3A07688763E67
        57A6A172C9969757A1E13A100EA1BF6039DA770B0FBCAAF040E592C043CFD3A0
        B8F53D4CF1E7CF8894AE4395F630BAD904C49AEB5ADFD4CC72DAF98C9D9F8883
        4FBE58B24D0905690C4444E5A86425852459B67E1FBD7BE190E54C16BDE13836
        7920C121D894754ED45F7101DF698FC267E90834D5567D44994986A83C172F14
        2F9E757CF2249F983529D749096CDB2D57538C0E8B97A4959C9DBC3D12247577
        AB5EC9C515291F599120BEEEEA387A09B84C5A8EB32540CEE119B8BA6C45E16C
        747710415A1293A3C225A2A67378E3597692C3B404570AE5F2E3501D136A4B6D
        74A7A19753FB9D240D17B8B9F28F39D8B6327FFCFEC97E6A18DB19BE10F81F87
        94335B48D20D9D40150CC395DC9B93D2620CC08FCC68374E77B71E3F0134D2CE
        31422095A789A726A2BC64A6F4B49F1ACC49E3B05C274C4784C214CE24C938C1
        6FF22284A44CF81351445AEB0265141A4B8C098EDE1481B25A45D1B60C1C2D99
        81A20C4544C57609B8535C612A5A1C2DC841B5348F6E1806AF1E87D51EE82CB3
        ED7354263720C2D34430D29BD2B74CC1D2521FDE5F36497E624A960C0F2535A9
        D4111EF43B3E74211B4D6C0A22928FF62DC89110FA7A5A03FB406348283D4DA0
        A6C2D0C81B8D3F67D06499BF59C586957E65FDB8F1131E92FC99D02515314785
        E1C81472069B46B833188139D01B39AB6B67C8DC0885A59EF734848C8EBA70D2
        48A85E9197052C592161C52286C2E98A32374392731D2AB1B061F6B59B660B5D
        5B9D74E1C7A9707B21C27295D0E65A3EFACA1CB178B36613A611E610661272B9
        87EE197E5B8508ED049AF1A02EA542A298630C8B1FB492254CC87415FBDC77BE
        78FE13AEB543AEE231FF6DF90FF167B81EE9CE4A880000000049454E44AE4260
        82}
      ExplicitHeight = 30
    end
    object lbBloq: TcxLabel
      Left = 35
      Top = 0
      Align = alLeft
      Caption = 
        'Seu registro do NexCaf'#233' foi bloqueado. Fa'#231'a contato com a Nextar' +
        '.'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 3026478
      Style.TextStyle = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitHeight = 29
      AnchorY = 16
    end
    object cxButton6: TcxButton
      AlignWithMargins = True
      Left = 729
      Top = 3
      Width = 81
      Height = 25
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alRight
      Caption = 'Op'#231#245'es ...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 1
      DropDownMenu = PopupMenu1
      Kind = cxbkDropDown
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      PopupAlignment = paRight
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      ExplicitHeight = 23
    end
    object LMDSimplePanel1: TLMDSimplePanel
      Left = 0
      Top = 31
      Width = 813
      Height = 3
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 2
      ExplicitTop = 28
      object Image3: TImage
        Left = 0
        Top = 0
        Width = 813
        Height = 3
        Align = alTop
        Picture.Data = {
          0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
          00030000000308060000005628B5BF000000097048597300000EC400000EC401
          952B0E1B000000174944415478DA636460607061800246205643E6F0C138000D
          83007C5CB104A70000000049454E44AE426082}
        Stretch = True
        ExplicitLeft = 3
        ExplicitTop = 36
        ExplicitWidth = 834
      end
    end
  end
  object panSemRegistro: TLMDSimplePanel
    Left = 0
    Top = 0
    Width = 813
    Height = 34
    Align = alTop
    Bevel.BorderSides = []
    Bevel.Mode = bmEdge
    Color = 12582911
    TabOrder = 3
    object Image4: TImage
      Left = 0
      Top = 0
      Width = 35
      Height = 31
      Align = alLeft
      Center = True
      Picture.Data = {
        0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
        0018000000180806000000E0773DF80000002A744558744372656174696F6E20
        54696D65004D692035204D727A20323030332030313A31363A3336202B303130
        302D49F2060000000774494D45D60705170D3B00ED210ED40000000970485973
        00000AF000000AF00142AC34980000000467414D410000B18F0BFC6105000004
        DE4944415478DAA556694C1467187E66662F8E0516B425D4583468C11A532D88
        363D482C256D341A6B8D3F6A4A7AFCB0B6923512E3D560538456A545241A28AE
        B5A4DA966CA1661BAD66498A421559AFA2EB811511C408ECB2F7CEECCCF49D5D
        B45885423B9B27DF37DFF13EEF3DCB607C0F336C2E8FF7C2884FF30EACF4CABA
        22954697D075D3692E31A3E87227EED116FFBF092EECC14B42ECCCC6F4BC0A0E
        B2803BED07F1D3B7A69A42134A69BB9320FC6702B91CEC511EAD7397D5CE6118
        19B2E8874AA7C5B9FA4F0205659DC6B31DA8A763774773D7A804CDBBF14152DA
        E2AAE4192B10E21D24C60FB02184027DF8A17C7BE3C755D842C76C04FFB8096E
        1E4242AF436BCF58B8EF4949F4806578C844208A3E705C081D2D0DF296B28B5B
        7F69C53774BC8B208E8BC05689B289CF7F688C4BC984D87D0057DA5B10126564
        65A7C117974B177D385C516D7FBF126B791E27E98A6BCC047FD622C389947353
        5F29D1C07502C59F55A3AC6112F47A3D3E5AD287A2F553E1E6A6A1F74A3BB697
        9EADACB162375DBB4E088D89C0B6074726BD5C94C745C723CAD580DC7C1B6E0D
        4C803E260689060D9A0EF6C0216641ADE3613559FB576DE70B7A1C384A57FBFF
        19F04708EC262C9293B21B9267BDCD888203F1A1462C5D750E97BA93111B138D
        D41416F5355D7006D3C1AA82F0F43950F1A9FDC75273386DDB09C11109F87268
        5A803F662D2A9B265260217BA1E7AE60C79756988E4D419C3E162B5EEBC3BA35
        125C7C3C58D60F4D4C08A7EABA0463A96F9DAD037524E6CE702B1E22682EC7FA
        27662D2D4D4A9D0F5150ACF542AD09A2E3F77D585E340771B1B1D85B741E33B3
        9E82100A826103612B6451C0D71BFA4F184DD84497CE107C8F109CD98594A04A
        7F79E6C2CFE384C0DDA1A4F052DEF348D2FD8CAC25D3499801A72C8D70055349
        7B0F182E008E48D4D13CDA8F09F2C6AD72B1A50D26442A5C7C88A0E90BEC9FB2
        60ED3B518664C8A1015A2117312484F1C310634749851FBD0389D8B5D30E8F5B
        4FC2BD60397FD8025625411D055419D161AC84D127E0371230F880A07517E621
        21FDE4F49CB5AC10E8A1157744B83292A62A7580FC7F1A225913E027842D6315
        0245B846A639C0A9805B17814DAB5155DB84723A748D20508701632E454BCE9B
        5F65334C0892E48CB827ACBD1BACDA0BCED789EBA7AF213A96C5332F68E0D78A
        24DC1716AE22C1E0FE7685791B5C053B5070DB010BBDF631DF6D45FEB3CFBDB1
        EFE9D9CB1831D84BED4011EE1ED2DE0DB5D6874B478EE2D5C274AA8189B0569D
        C7E4F9BE704DB16A84313C533C941B85CB51BFD78A6DF47A81316F862D77D5A1
        D97C80DA3B691F2150B48F10A9B41E5C3DDE88D737646262D2047CBFFB3432E6
        528C58D25EF3F852AD2B86E7ADCD28A0A985B19418BA73DEDD9F1270DFA0EC75
        5302BB22DA13014316302A0F12B8EB686B23F2681D325FEC072FC9E04838CBD2
        B1C710D46E86736571B87D9898EAD530E5E56FCC37A4A4513EF743A2E0B3E118
        382304DC2005D0456DC149E32024252E9AC0483D1237DA8035EFC16C390F0A39
        0E3073A763F2E22CEC9C9191B840CDB1A497443F2585A5212869204292655914
        255199931FC3AE51069EB6281C9252BA8E01B80F37E1CCAF17718FF694543DAE
        18A878720A611E218D108591DBB88CC77FBDEEAF4B9102C25525FB09B7EF0BD2
        1212083191A41BF54B27FFCBBA3044E20AD7C1B00363FA8731C6E781127F0101
        C508B2A1B711CC0000000049454E44AE426082}
      ExplicitHeight = 30
    end
    object cxLabel4: TcxLabel
      Left = 35
      Top = 0
      Align = alLeft
      Caption = 'Voc'#234' ainda n'#227'o registrou sua loja'
      ParentColor = False
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -16
      Style.Font.Name = 'Calibri'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      Style.TextColor = 3026478
      Style.TextStyle = []
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      ExplicitHeight = 29
      AnchorY = 16
    end
    object btnJaTenhoConta: TcxButton
      AlignWithMargins = True
      Left = 478
      Top = 3
      Width = 140
      Height = 25
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alLeft
      Caption = 'J'#225' sou registrado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnJaTenhoContaClick
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      ExplicitHeight = 23
    end
    object btnCriarConta: TcxButton
      AlignWithMargins = True
      Left = 281
      Top = 3
      Width = 184
      Height = 25
      Cursor = crHandPoint
      Margins.Left = 10
      Align = alLeft
      Caption = 'Registrar Agora - '#201' gr'#225'tis!'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnCriarContaClick
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      OptionsImage.Layout = blGlyphRight
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      ExplicitHeight = 23
    end
    object LMDSimplePanel3: TLMDSimplePanel
      Left = 0
      Top = 31
      Width = 813
      Height = 3
      Align = alBottom
      Bevel.Mode = bmCustom
      TabOrder = 3
      ExplicitTop = 28
      object Image8: TImage
        Left = 0
        Top = 0
        Width = 813
        Height = 3
        Align = alTop
        Picture.Data = {
          0D544C4D44504E474F626A65637489504E470D0A1A0A0000000D494844520000
          00030000000308060000005628B5BF000000097048597300000EC400000EC401
          952B0E1B000000174944415478DA636460607061800246205643E6F0C138000D
          83007C5CB104A70000000049454E44AE426082}
        Stretch = True
        ExplicitLeft = 3
        ExplicitTop = 36
        ExplicitWidth = 834
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 112
    Top = 184
    object Criarumnovoregistro1: TMenuItem
      Caption = '1. Fazer um novo registro com outro e-mail'
      OnClick = btnCriarContaClick
    end
    object Utilizaroutroregistro1: TMenuItem
      Caption = '2. Tenho outro registro que desejo utilizar nessa loja'
      OnClick = btnJaTenhoContaClick
    end
  end
end
