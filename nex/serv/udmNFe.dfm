object dmNFe: TdmNFe
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 111
  Width = 141
  object nfceDS: TspdNFCeDataSets
    VersaoEsquema = pl_006n
    ValidaRegrasNegocio = False
    ValidaRegrasNegocioTecno = False
    Left = 83
    Top = 25
  end
  object nfceComp: TspdNFCe
    VersaoManual = vm50
    DanfceSettings.FraseContingencia = 
      'Danfce em conting'#234'ncia - Impresso em decorr'#234'ncia de problemas t'#233 +
      'cnicos'
    DanfceSettings.FraseHomologacao = 'SEM VALOR FISCAL'
    DanfceSettings.QtdeCopias = 1
    DanfceSettings.LineDelimiter = '|'
    DanfceSettings.InfCplMaxCol = 68
    DanfceSettings.InfCplMaxRow = 7
    DanfceSettings.ModeloDanfce = 
      'C:\Arquivos de programas\Borland\Delphi7\Bin\Templates\Vm50a\Dan' +
      'fce\retrato.rtm'
    DanfceSettings.ModeloDanfceMensagemEletronica = 
      'C:\Arquivos de programas\Borland\Delphi7\Bin\Templates\Vm50a\Dan' +
      'fce\retrato.rtm'
    DanfceSettings.FormatoDanfce = fdNormal
    DanfceSettings.ExibirDetalhamento = True
    Versao = '4.7.22.42080'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckFile
    DiretorioTemplates = 
      'C:\Program Files (x86)\Embarcadero\Studio\15.0\bin\NFCE\Template' +
      's\vm50\'
    IgnoreInvalidCertificates = False
    DiretorioLog = 'Log\'
    Ambiente = akHomologacao
    ValidarEsquemaAntesEnvio = True
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.AnexarDanfcePDF = True
    EmailSettings.ConteudoHtml = False
    DiretorioEsquemas = 'C:\Arquivos de programas\Borland\Delphi7\Bin\Esquemas\vm50\'
    ConexaoSegura = False
    TimeOut = 0
    SectionINI = 'NFCE'
    DiretorioXmlDestinatario = 'C:\Arquivos de programas\Borland\Delphi7\Bin\XmlDestinatario\'
    MaxSizeLoteEnvio = 500
    DiretorioTemporario = 'C:\Program Files (x86)\Embarcadero\Studio\15.0\bin\Temp\'
    EntregaXML = exEmail
    Left = 27
    Top = 25
  end
end
