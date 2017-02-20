inherited FrmConfigRec: TFrmConfigRec
  Caption = 'Recibos'
  ClientHeight = 425
  ClientWidth = 702
  ExplicitWidth = 708
  ExplicitHeight = 453
  PixelsPerInch = 96
  TextHeight = 16
  inherited panPri: TLMDSimplePanel
    Width = 682
    Height = 263
    AutoSize = False
    ExplicitWidth = 682
    ExplicitHeight = 263
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 48
      Height = 48
      AutoSize = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000097048597300000E9A00000E9A018797174600
        00016C494441546843ED923D8E8330104673843DC21E21A7E21C941C0224EE40
        43B7749494945B5252523A1EAF278CBC03061234419A277D025EFCF7416EC698
        4B8795570A2BAF1456A6696A3E2DE11931ACE416904E78460C2BC92471B48034
        A717C8F3FCB9C9DEC0DC1838D6C29E9595645294CB17381B2D208D16A0545565
        8AA27839B00E42D7A41ED102D268010AFD1BECCD12B1715A401A2D40093FF791
        84C47ED702D268014AF8B9D7B295D83C2D208D16A0849F7B6BD6888DD502D268
        81A32449B21A64C9235A401A2D208D1640BAAEF37733E338FABB196EDC56370C
        83BF9B794B81A669DC335C113800387A90B66D9D832BB2D7D575EDCD1FE02016
        F6ACAC2493DC5BC16748DFF7FF1C3C83A70E9E8FBAB22CCD344D6E7F7416F6AC
        ACA48B918C70CDB2CCC5BBDF37BB1F1BB74F98F08C1856320BC0665F36B001BA
        CEE6DB5F9FCECF7FC5DD6D5C391AF88D0B2B9762178212B0B82B7486DB1B56AE
        C56E046FE87EA6DB13565E27E6F6009477A7E574C5BC430000000049454E44AE
        426082}
    end
    object LMDSimplePanel6: TLMDSimplePanel
      AlignWithMargins = True
      Left = 55
      Top = 0
      Width = 506
      Height = 263
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
          Caption = 'Imprimir comprovante de venda/pagamento de d'#233'bito'
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
          ExplicitLeft = 83
          ExplicitWidth = 365
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
      object panTipoImpressora: TLMDSimplePanel
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
        object lbModeloVenda: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 63
          Margins.Top = 65
          Align = alTop
          Caption = 'Modelo/layout do comprovante de VENDA'
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
        object edModeloVenda: TncDocEdit
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
        object lbAutoPrint: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 63
          Margins.Top = 65
          Align = alLeft
          Caption = 'Imprimir automaticamente?'
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
        object cbAutoPrint: TcxComboBox
          AlignWithMargins = True
          Left = 180
          Top = 0
          Cursor = crHandPoint
          Margins.Left = 7
          Margins.Top = 0
          Margins.Right = 40
          Margins.Bottom = 0
          Align = alClient
          Enabled = False
          ParentFont = False
          Properties.Items.Strings = (
            'N'#227'o'
            'Sim - Ao registrar o pagamento'
            'Sim - Ao registrar a venda')
          Properties.OnChange = cbImpressorasPropertiesChange
          Style.BorderStyle = ebsFlat
          TabOrder = 1
          Text = 'N'#227'o'
          ExplicitLeft = 183
          ExplicitWidth = 265
          Width = 268
        end
      end
      object LMDSimplePanel2: TLMDSimplePanel
        AlignWithMargins = True
        Left = 18
        Top = 192
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
        TabOrder = 4
        object lbModeloDeb: TcxLabel
          Left = 0
          Top = 0
          Margins.Left = 63
          Margins.Top = 65
          Align = alTop
          Caption = 'Modelo/layout do comprovante de pagamento de D'#201'BITO'
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
        object edModeloDeb: TncDocEdit
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
          ParentShowHint = False
          Properties.Buttons = <
            item
              Default = True
            end>
          Properties.ReadOnly = True
          Properties.OnChange = edModeloDebPropertiesChange
          ShowHint = False
          Style.LookAndFeel.Kind = lfFlat
          Style.StyleController = FrmPri.escFlat
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.Kind = lfFlat
          TabOrder = 1
          Tipo = 3
          Width = 448
        end
      end
    end
  end
  inherited LMDSimplePanel1: TLMDSimplePanel
    Top = 383
    Width = 682
    ExplicitTop = 383
    ExplicitWidth = 682
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 20447368
  end
end
