object FrmRemoverNF: TFrmRemoverNF
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Remover "Nota Fiscal"'
  ClientHeight = 306
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 21
  object cxLabel1: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 'Remover a op'#231#227'o "Nota Fiscal" do programa NEX?'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextStyle = [fsBold, fsUnderline]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    AnchorX = 250
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 276
    Width = 500
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnRemover: TcxButton
      Left = 0
      Top = 0
      Width = 265
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Remover a op'#231#227'o "Nota Fiscal"'
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      OptionsImage.Images = dmImagens.im24
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = 3164608
      Font.Height = -15
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnRemoverClick
    end
    object btnNao: TcxButton
      Left = 392
      Top = 0
      Width = 108
      Height = 30
      Align = alRight
      Cancel = True
      Caption = 'Cancelar'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
  end
  object cxLabel2: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 40
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 15
    Align = alTop
    Caption = 
      'Se voc'#234' n'#227'o deseja utilizar o NEX para emiss'#227'o de notas fiscais ' +
      'ou se a NFC-e n'#227'o est'#225' dispon'#237'vel no seu estado voc'#234' pode remove' +
      'r essa op'#231#227'o do programa NEX.'#13#10#13#10'Voc'#234' poder'#225' reativar essa op'#231#227'o' +
      ' '#224' qualquer momento que desejar usando a op'#231#227'o "Exibir" do menu ' +
      'principal.'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.WordWrap = True
    Width = 500
  end
end
