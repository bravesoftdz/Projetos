inherited FrmEditContatoPeq: TFrmEditContatoPeq
  AlignWithMargins = True
  ClientHeight = 179
  ClientWidth = 679
  Position = poScreenCenter
  ExplicitWidth = 715
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 21
  inherited panPri: TLMDSimplePanel
    Width = 679
    Height = 38
    ParentColor = True
    ExplicitWidth = 679
    ExplicitHeight = 38
    inherited lbNome: TcxLabel
      Left = 42
      Style.Font.Height = -16
      Style.IsFontAssigned = True
      ExplicitLeft = 42
      ExplicitWidth = 177
      ExplicitHeight = 38
      AnchorY = 19
    end
    inherited Img: TMyImage
      AlignWithMargins = True
      Left = 3
      Width = 36
      Height = 38
      Margins.Top = 0
      Margins.Bottom = 0
      ImageList = dmImagens.im32
      ImageIndex = 1
      ExplicitLeft = 3
      ExplicitWidth = 36
      ExplicitHeight = 38
    end
    inherited lbRemove: TcxLabel
      Left = 219
      Style.Font.Height = -16
      Style.IsFontAssigned = True
      ExplicitLeft = 248
      ExplicitWidth = 13
      ExplicitHeight = 38
      AnchorY = 19
    end
    inherited panDeb: TLMDSimplePanel
      Left = 468
      Top = 5
      Margins.Top = 5
      Margins.Bottom = 5
      ExplicitLeft = 497
      ExplicitTop = 5
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
      Left = 349
      Top = 5
      Margins.Top = 5
      Margins.Bottom = 5
      ExplicitLeft = 378
      ExplicitTop = 5
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
      Left = 235
      Top = 5
      Margins.Top = 5
      Margins.Bottom = 5
      ExplicitLeft = 264
      ExplicitTop = 5
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
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 3145848
    ImageInfo = <>
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 3145888
  end
end
