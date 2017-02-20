unit ncsStrings;

interface

function PastaDados: String;
function PastaCopia: String;


resourcestring
  rsPastaErrada = 
    'Voc� informou a pasta errada. Voc� informou a pasta de dados do programa Nex. � necess�rio informar a pasta que cont�m sua C�PIA de dados';
    
  rsDBNaoEncontrado = 
    'N�o foi encontrado nenhum arquivo de banco de dados do programa Nex na pasta informada. Informe novamente o local. Se tiver em uma sub-pasta � necess�rio seleciona-la';

  rsInformarPastaDestino = 
    'A pasta destino tem que ser informada';

  rsSucessoBackup = 
    'Backup realizado com sucesso!';

{  rsCopia = 
    'Copia';}

  rsIniciandoDB = 
    'Iniciando banco de dados ...';

  rsUserNaoExiste = 
    'Nome de usu�rio n�o existe!';

  rsSenhaIncorreta = 
    'Senha incorreta!';  

  rsAcessoNaoPermitido = 
    'Voc� n�o possui direito de realizar essa opera��o';

  rsEncerrarServidor = 
    'Encerrar Servidor';

  rsDBError = 
    'Erro no banco de dados: "%s"';

  rsCorrigindoArq = 
    'Corrigindo arquivo %s. Aguarde ...';

  rsReindexandoArq = 
    'Reindexando arquivo %s. Aguarde ...'; 

  rsCopiandoArq = 
    'Copiando arquivo %s. Aguarde ...';

  rsRenomeandoArq =
    'Renomeando arquivo %s. Aguarde ...';

  rsRestaurandoArq = 
    'Restaurando arquivo %s. Aguarde ...';

  rsSucessoCorrecao = 
    'Arquivos corrigidos com sucesso!';

  rsErroCopiaArq = 
    'Erro %s copiando arquivo %s para %s';

  rsConfirmaCorrecao =   
    'Deseja executar o processo de corre��o de banco de dados do programa NEX?';

  rsFimCorrecao = 
    'Fim do processo de corre��o de arquivos';

  rsSucessoRestauracao = 
    'Arquivos restaurados com sucesso!';

  rsConfirmaApagar =   
    'Essa opera��o vai apagar informa��es do seu banco de dados. Prosseguir?';

  rsConfirmaApagar2 = 
    'As informa��es ser�o apagadas de forma irrevers�vel. Deseja realmente prosseguir?'; 

  rsSucessoApagar = 
    'Dados apagados com sucesso!'; 

  rsResyncNexApp = 
    'Deseja sincronizar novamente todos os dados da sua loja com o NexAPP?';

implementation

uses uNexTransResourceStrings_PT, ncClassesBase;

function PastaDados: String;
begin
  if LinguaPT then
    Result := 'Dados' else
    Result := 'db';
end;

function PastaCopia: String;
begin
  if LinguaPT then 
    Result := 'Copia' else
    Result := 'backup';
end;



end.
