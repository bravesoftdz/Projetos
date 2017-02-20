inherited FrmConfigRec_Venda: TFrmConfigRec_Venda
  Caption = 'Configurar Impress'#227'o'
  ClientHeight = 343
  ClientWidth = 601
  ExplicitWidth = 607
  ExplicitHeight = 372
  PixelsPerInch = 96
  TextHeight = 16
  inherited panPri: TLMDSimplePanel
    Width = 581
    Height = 199
    AutoSize = False
    ExplicitWidth = 877
    ExplicitHeight = 199
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      AutoSize = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000EC400000EC401952B0E1B00
        000396494441546843EDD8CB6B13511406F03EACBA508B0B5FA0581014B72EB4
        2EB4D8FA40C49D141742C942C5A6ADD88A24B13AE056C1A5452C0A2ED5856821
        68A15DD5D27F400B22EA46102A45AA25A6317EE7327738F7E64C662664D256B2
        F895999333F77EA799924C1B8AC5E2AA26165713B1E8279D4EEF4EA55257C0A9
        B26426936993F60C2216FD60A338C26B4969CF2062D10F36B9459B150A0507E7
        55A387C0B1B86F3962D14F7D001FF501C2AA0FE023D6017AEEBD69399A7AE5D4
        D285BB6F9BA52C12B1C80D8E4CD47C80810793D106C0DBD706BDA06E112D97CB
        39BF7379719338E5F24BEA36E559200309D8220D90749B0C2B6C00ED9231000A
        8D709B357856E80094B5890FD0CC5E34ACD00188F737521F200EF501B4FF6280
        FC52C1E948CB1BC5E158E635C2FFADDE006872061E4E899BC5E1FAE8B4DAB32A
        03CCCDCDA9C5BEFDF8E55CC5105D37C7C44DABA0F7F8F0D8E9A1D1E9CEEFF38B
        9DD8F3C4C2C2428F94C9156E806C36AB0688D939F00271C8D06E6772851B209D
        4E3BE3E3E30E7E1BD2C695BA06DDD0E79E6F8592F004199AE0869B6710E8FB10
        1D871B20065DB08E05EC03152691483C81A2ABC07A4EC236F798B276E86B482D
        07A07B5B6D2A41E81936004A721FC15A351FE00C0FE086DC27D47C0740ED19AC
        B1EBB51880BE3D6ED61BF29070DFAD3DB2EA240B2DF6357A1D4D1AC07B7B84D7
        2A31A8D74380173C4CA5F47AA4160390FD7A4D29504487F55A8442D2038DF128
        19041746310C23E06D2A840AEB295F87A81F0875D10E590EAE09EB14AC056F43
        84D868858AC2781E26EA0742ED80CB10EA9DC0359EC7E3B37E92A0FE08398498
        B44269EDACE780F59A36C1D722C649108457CFCEF4450BE741CE82BA0E1BBFB7
        82D8F6EA5E76CD4EAB87FB00CFA9CFB82808C247F9CF1CDD3EEA3A6BF312BA0F
        6B37EA6322F572D4E33587210D60DD365CD801FEE83E61809F56AF817ABCE630
        A401CAE0B7D04BF8CA37B718C1D97552AFB6483D2517951371807E28F9E8C7C6
        53561045E82BE98159BBCF3809220D20DC3A5C37B4F23510628F158AA377E993
        55E30EF2B588711224E23BC0D133805A0321FAAD50516CD2EB68C64910841FA6
        01F2F9BC14D2CF10AC070ADF6A058A8CD6E18C9320084F1F76E2875B19E7F5F5
        52A00ACCF04CDE411808B30B6808F19FC13EE8A9CBFB44B6C26C8723F099D5B4
        2F7008EEB01AD9C0337907B58410C66FD1ADF1902819AFB5B9F5D2071ABBB05C
        7470D7BCD423118BCB01A13FB201DE493D12B1B87A141BFE01C52A9F1D69F9D6
        4D0000000049454E44AE426082}
    end
    object LMDSimplePanel6: TLMDSimplePanel
      AlignWithMargins = True
      Left = 55
      Top = 0
      Width = 506
      Height = 199
      Hint = ''
      Margins.Left = 55
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Bevel.Mode = bmCustom
      ParentColor = True
      TabOrder = 0
      object panImprimir: TLMDSimplePanel
        Left = 0
        Top = 0
        Width = 506
        Height = 28
        Hint = ''
        Margins.Left = 64
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 0
        object cbImprimir: TcxCheckBox
          Left = 0
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 0
          Margins.Top = 15
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alClient
          Caption = 'Imprimir comprovante de'
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.MultiLine = True
          Properties.NullStyle = nssUnchecked
          Properties.OnEditValueChanged = cbImprimirPropertiesEditValueChanged
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.Kind = lfFlat
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 0
          Transparent = True
          Width = 506
        end
      end
      object panImpressora: TLMDSimplePanel
        AlignWithMargins = True
        Left = 18
        Top = 86
        Width = 488
        Height = 28
        Hint = ''
        Margins.Left = 18
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 2
        object lbImpressora: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 63
          Margins.Top = 65
          Align = alLeft
          Caption = 'Impressora:'
          Enabled = False
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
          Enabled = False
          ParentFont = False
          Properties.OnChange = cbImpressorasPropertiesChange
          Style.BorderStyle = ebsFlat
          TabOrder = 1
          Text = 'cbImpressoras'
          Width = 366
        end
        object btnConfig: TcxButton
          AlignWithMargins = True
          Left = 451
          Top = 0
          Width = 37
          Height = 28
          Cursor = crHandPoint
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 0
          Align = alRight
          Caption = 'Configurar'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          OptionsImage.Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000434343A36868
            68FF686868FF3030307300000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000636363F4666666FF666666FF4F4F4FC4000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000595959DB4A4A4AB4000000000000000000000000676767FF6767
            67FF676767FF656565FC000000000000000000000000676767FF5B5B5BE10000
            000000000000000000000000000000000000575757D6676767FF676767FF6767
            67FF36363685676767FF676767FF676767FF676767FF666666FF686868FF4141
            41A3676767FF676767FF676767FF5D5D5DE60000000000000000000000000000
            0000676767FF676767FF666666FF666666FF666666FF666666FF666666FF6565
            65FD656565FD666666FF666666FF666666FF676767FF676767FF676767FF4949
            49B40000000000000000000000000000000000000000676767FF666666FF6868
            68FF686868FF686868FF686868FF686868FF686868FF686868FF686868FF6666
            66FF676767FF676767FF676767FF000000000000000000000000000000000000
            000000000000444444A7666666FF686868FF686868FF686868FF686868FF6868
            68FF686868FF686868FF686868FF666666FF676767FF676767FF303030750000
            00000000000000000000000000000000000000000000676767FF666666FF6868
            68FF686868FF686868FF2929296300000000000000002E2E2E6E686868FF6666
            66FF676767FF676767FF676767FF0000000000000000000000002E2E2E6C4E4E
            4EBD636363F5676767FF666666FF686868FF686868FF2C2C2C6B000000000000
            000000000000000000003333337B666666FF676767FF676767FF676767FF6767
            67FF666666FC454545AA686868FF666666FF676767FF676767FF656565FD6868
            68FF686868FF0000000000000000000000000000000000000000000000006666
            66FF676767FF676767FF676767FF676767FF676767FF676767FF686868FF6666
            66FF676767FF676767FF656565FD686868FF686868FF00000000000000000000
            0000000000000000000000000000666666FF676767FF676767FF676767FF6767
            67FF676767FF676767FF454545A8646464FA666666FF666666FF666666FF6868
            68FF686868FF38383888000000000000000000000000000000004040409A6666
            66FF666666FF666666FF666666FF626262F54E4E4EC02D2D2D6E000000000000
            000000000000686868FF666666FF686868FF686868FF686868FF3E3E3E950000
            000000000000434343A0686868FF686868FF686868FF686868FF686868FF0000
            000000000000000000000000000000000000000000002B2B2B6A666666FF6666
            66FF666666FF666666FF666666FF666666FF666666FF666666FF686868FF6565
            65FD656565FD666666FF3D3D3D97000000000000000000000000000000000000
            000000000000656565FA676767FF676767FF676767FF676767FF676767FF6767
            67FF676767FF666666FF686868FF656565FD676767FE676767FF676767FF0000
            000000000000000000000000000000000000454545A7676767FF676767FF6767
            67FF676767FF676767FF676767FF676767FF676767FF666666FF686868FF6666
            66FF676767FF676767FF676767FF676767FF0000000000000000000000000000
            0000585858DA676767FF676767FF676767FF3C3C3C93676767FF676767FF6767
            67FF676767FF666666FF686868FF24242458666666FD676767FF676767FF5B5B
            5BE00000000000000000000000000000000000000000565656D5676767FF0000
            00000000000000000000606060EE676767FF676767FF666666FF000000000000
            000000000000454545A95D5D5DE5000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000004C4C4CB96767
            67FF676767FF666666FF00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000002B2B2B67676767FF676767FF464646AF000000000000
            0000000000000000000000000000000000000000000000000000}
          PaintStyle = bpsGlyph
          SpeedButtonOptions.CanBeFocused = False
          SpeedButtonOptions.Flat = True
          SpeedButtonOptions.Transparent = True
          TabOrder = 2
          OnClick = btnConfigClick
        end
      end
      object panModelo: TLMDSimplePanel
        AlignWithMargins = True
        Left = 18
        Top = 129
        Width = 488
        Height = 48
        Hint = ''
        Margins.Left = 18
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 3
        object lbModelo: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 63
          Margins.Top = 65
          Align = alTop
          Caption = 'Modelo (layout) do comprovante'
          Enabled = False
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
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alClient
          Enabled = False
          ParentFont = False
          Properties.Buttons = <
            item
              Default = True
            end>
          Properties.ReadOnly = True
          Properties.OnChange = edModeloVendaPropertiesChange
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.escFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Tipo = 0
          Width = 448
        end
      end
      object panAutoPrint: TLMDSimplePanel
        AlignWithMargins = True
        Left = 18
        Top = 43
        Width = 488
        Height = 28
        Hint = ''
        Margins.Left = 18
        Margins.Top = 15
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Bevel.Mode = bmCustom
        ParentColor = True
        TabOrder = 1
        object cbAutoPrint: TcxCheckBox
          Left = 0
          Top = 0
          Align = alLeft
          Caption = 'Imprimir automaticamente'
          Enabled = False
          ParentFont = False
          Properties.NullStyle = nssUnchecked
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Segoe UI Semibold'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
        end
      end
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 301
    Width = 581
    ExplicitTop = 565
    ExplicitWidth = 877
  end
end
