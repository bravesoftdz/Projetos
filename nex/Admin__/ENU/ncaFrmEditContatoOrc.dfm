inherited FrmEditContatoOrc: TFrmEditContatoOrc
  Caption = 'FrmEditContatoOrc'
  PixelsPerInch = 96
  TextHeight = 21
  inherited panPri: TLMDSimplePanel
    inherited lbNome: TcxLabel
      Left = 45
      Style.Font.Height = -13
      Style.Font.Name = 'Segoe UI Semibold'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      ExplicitLeft = 45
      ExplicitWidth = 180
      AnchorY = 19
    end
    inherited Img: TMyImage
      Left = 6
      Margins.Left = 6
      MouseOffDrawMode = idmDingy
    end
    inherited lbRemove: TcxLabel
      Left = 225
      Style.IsFontAssigned = True
      AnchorY = 19
    end
    inherited panDeb: TLMDSimplePanel
      Left = 474
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
      Left = 355
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
      Left = 241
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
  end
  inherited imgs: TcxImageList
    FormatVersion = 1
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
end
