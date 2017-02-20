object FrmTipoRec: TFrmTipoRec
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Tipo de comprovante'
  ClientHeight = 250
  ClientWidth = 537
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
  object rbVendas: TcxRadioButton
    Left = 48
    Top = 32
    Width = 441
    Height = 22
    Cursor = crHandPoint
    Caption = 'Recibo de Venda de Produtos'
    Checked = True
    TabOrder = 0
    TabStop = True
    LookAndFeel.Kind = lfFlat
  end
  object rbDeb: TcxRadioButton
    Left = 48
    Top = 84
    Width = 441
    Height = 22
    Cursor = crHandPoint
    Caption = 'Recibo de Pagamento de D'#233'bitos'
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
  end
  object btnOk: TcxButton
    Left = 48
    Top = 168
    Width = 105
    Height = 35
    Caption = '&Ok'
    Default = True
    LookAndFeel.Kind = lfFlat
    ModalResult = 1
    TabOrder = 2
  end
  object btnCancelar: TcxButton
    Left = 184
    Top = 168
    Width = 105
    Height = 35
    Cancel = True
    Caption = '&Cancelar'
    LookAndFeel.Kind = lfFlat
    ModalResult = 2
    TabOrder = 3
  end
end
