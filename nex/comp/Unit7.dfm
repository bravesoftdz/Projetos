object Form7: TForm7
  Left = 0
  Top = 0
  Caption = 'Form7'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object spdCFeSat1: TspdCFeSat
    ConfigImpressaoCFe.QtdeCopias = 1
    ConfigImpressaoCFe.LineDelimiter = '|'
    ConfigImpressaoCFe.ModeloImpressao = 'Templates\Impressao\retrato.rtm'
    ConfigImpressaoCFe.ExibirDetalhamento = False
    DiretorioTemplates = 'C:\Program Files (x86)\Embarcadero\Studio\17.0\bin\Templates\'
    DiretorioEsquemas = 'C:\Program Files (x86)\Embarcadero\Studio\17.0\bin\Esquemas\'
    DiretorioLog = 'C:\Program Files (x86)\Embarcadero\Studio\17.0\bin\Log\'
    DiretorioLogErro = 'C:\Program Files (x86)\Embarcadero\Studio\17.0\bin\'
    DiretorioCopiaSeguranca = 
      'C:\Program Files (x86)\Embarcadero\Studio\17.0\bin\CopiaSeguranc' +
      'a\'
    Versao = '1.7.7.44290'
    ValidarEsquemaAntesEnvio = False
    UtilizarEmuladorSefaz = False
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.AnexarImpressaoPDF = True
    EmailSettings.ConteudoHtml = False
    Left = 120
    Top = 96
  end
end
