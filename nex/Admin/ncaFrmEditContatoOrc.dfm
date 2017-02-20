inherited FrmEditContatoOrc: TFrmEditContatoOrc
  Caption = 'FrmEditContatoOrc'
  PixelsPerInch = 96
  TextHeight = 21
  inherited panPri: TLMDSimplePanel
    inherited lbNome: TcxLabel
      Left = 45
      Style.Font.Height = -13
      Style.IsFontAssigned = True
      ExplicitLeft = 45
      ExplicitWidth = 153
      AnchorY = 19
    end
    inherited Img: TMyImage
      Left = 6
      Margins.Left = 6
      MouseOffDrawMode = idmDingy
      ExplicitLeft = 6
    end
    inherited panDeb: TLMDSimplePanel
      Left = 460
      ExplicitLeft = 460
      inherited lbDebito: TcxLabel
        Style.IsFontAssigned = True
        AnchorX = 25
        AnchorY = 14
      end
      inherited lbValorDebito: TcxLabel
        Style.IsFontAssigned = True
        AnchorX = 103
        AnchorY = 14
      end
    end
    inherited panFid: TLMDSimplePanel
      Left = 341
      ExplicitLeft = 341
      inherited lbPontos: TcxLabel
        Style.IsFontAssigned = True
        AnchorX = 26
        AnchorY = 14
      end
      inherited lbQuantPontos: TcxLabel
        Style.IsFontAssigned = True
        AnchorX = 77
        AnchorY = 14
      end
    end
    inherited panCred: TLMDSimplePanel
      Left = 227
      ExplicitLeft = 227
      inherited lbCredito: TcxLabel
        Style.IsFontAssigned = True
        AnchorX = 28
        AnchorY = 14
      end
      inherited lbValorCredito: TcxLabel
        Style.IsFontAssigned = True
        AnchorX = 77
        AnchorY = 14
      end
    end
    inherited lbRemove: TMyImage
      Left = 198
      ExplicitLeft = 198
    end
  end
  inherited imgs: TcxImageList
    FormatVersion = 1
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
end
