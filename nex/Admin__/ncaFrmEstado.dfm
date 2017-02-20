object FrmEstado: TFrmEstado
  Left = 0
  Top = 0
  ActiveControl = edEstado
  BorderStyle = bsDialog
  BorderWidth = 15
  Caption = 'Estado'
  ClientHeight = 238
  ClientWidth = 527
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 21
  object lbEstado: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 0
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Selecione o seu Estado:'
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI Semibold'
    Style.Font.Style = [fsBold]
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taLeftJustify
    Properties.Alignment.Vert = taVCenter
    AnchorY = 13
  end
  object LMDSimplePanel4: TLMDSimplePanel
    Left = 0
    Top = 208
    Width = 527
    Height = 30
    Hint = ''
    Margins.Left = 15
    Margins.Top = 0
    Margins.Right = 15
    Margins.Bottom = 15
    Align = alBottom
    Bevel.Mode = bmCustom
    TabOrder = 1
    object btnCanc: TcxButton
      AlignWithMargins = True
      Left = 80
      Top = 0
      Width = 81
      Height = 30
      Cursor = crHandPoint
      Margins.Left = 15
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alLeft
      Cancel = True
      Caption = '&Cancelar'
      Default = True
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 2
      SpeedButtonOptions.CanBeFocused = False
      SpeedButtonOptions.AllowAllUp = True
      SpeedButtonOptions.Flat = True
      SpeedButtonOptions.Transparent = True
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object btnSalvar: TcxButton
      Left = 0
      Top = 0
      Width = 65
      Height = 30
      Cursor = crHandPoint
      Align = alLeft
      Caption = 'Ok'
      Default = True
      Enabled = False
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      ModalResult = 1
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object edEstado: TcxImageComboBox
    Left = 0
    Top = 25
    Align = alTop
    ParentFont = False
    Properties.ImmediateDropDownWhenActivated = True
    Properties.ImmediatePost = True
    Properties.ImmediateUpdateText = True
    Properties.Items = <
      item
        Description = 'Acre'
        ImageIndex = 0
        Value = 'AC'
      end
      item
        Description = 'Alagoas'
        Value = 'AL'
      end
      item
        Description = 'Amap'#225
        Value = 'AP'
      end
      item
        Description = 'Amazonas'
        Value = 'AM'
      end
      item
        Description = 'Bahia'
        Value = 'BA'
      end
      item
        Description = 'Cear'#225
        Value = 'CE'
      end
      item
        Description = 'Distrito Federal'
        Value = 'DF'
      end
      item
        Description = 'Esp'#237'rito Santo'
        Value = 'ES'
      end
      item
        Description = 'Goi'#225's'
        Value = 'GO'
      end
      item
        Description = 'Maranh'#227'o'
        Value = 'MA'
      end
      item
        Description = 'Mato Grosso'
        Value = 'MT'
      end
      item
        Description = 'Mato Grosso do Sul'
        Value = 'MS'
      end
      item
        Description = 'Minas Gerais'
        Value = 'MG'
      end
      item
        Description = 'Par'#225
        Value = 'PA'
      end
      item
        Description = 'Para'#237'ba'
        Value = 'PB'
      end
      item
        Description = 'Paran'#225
        Value = 'PR'
      end
      item
        Description = 'Pernambuco'
        Value = 'PE'
      end
      item
        Description = 'Piau'#237
        Value = 'PI'
      end
      item
        Description = 'Rio de Janeiro'
        Value = 'RJ'
      end
      item
        Description = 'Rio Grande do Norte'
        Value = 'RN'
      end
      item
        Description = 'Rio Grande do Sul'
        Value = 'RS'
      end
      item
        Description = 'Rond'#244'nia'
        Value = 'RO'
      end
      item
        Description = 'Roraima'
        Value = 'RR'
      end
      item
        Description = 'Santa Catarina'
        Value = 'SC'
      end
      item
        Description = 'S'#227'o Paulo'
        Value = 'SP'
      end
      item
        Description = 'Sergipe'
        Value = 'SE'
      end
      item
        Description = 'Tocantins'
        Value = 'TO'
      end>
    Properties.OnChange = edEstadoPropertiesChange
    Properties.OnEditValueChanged = edEstadoPropertiesEditValueChanged
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -16
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = [fsBold]
    Style.HotTrack = False
    Style.StyleController = FrmPri.escFlat
    Style.IsFontAssigned = True
    TabOrder = 2
    OnEnter = edEstadoEnter
    Width = 527
  end
  object cxLabel5: TcxLabel
    AlignWithMargins = True
    Left = 0
    Top = 69
    Margins.Left = 0
    Margins.Top = 15
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alTop
    Caption = 
      'O NEX faz a emiss'#227'o dos documentos fiscais NFC-e e CF-e SAT. '#201' n' +
      'ecess'#225'rio selecionar seu estado para que seja exibido a op'#231#227'o co' +
      'rreta para sua empresa.'
    ParentFont = False
    Properties.WordWrap = True
    Width = 527
  end
end
