unit ncsStrings;

interface

function PastaDados: String;
function PastaCopia: String;


resourcestring
  rsPastaErrada = 
    'Você informou a pasta errada. Você informou a pasta de dados do programa Nex. É necessário informar a pasta que contém sua CÓPIA de dados';
    
  rsDBNaoEncontrado = 
    'Não foi encontrado nenhum arquivo de banco de dados do programa Nex na pasta informada. Informe novamente o local. Se tiver em uma sub-pasta é necessário seleciona-la';

  rsInformarPastaDestino = 
    'A pasta destino tem que ser informada';

  rsSucessoBackup = 
    'Backup realizado com sucesso!';

{  rsCopia = 
    'Copia';}

  rsIniciandoDB = 
    'Iniciando banco de dados ...';

  rsUserNaoExiste = 
    'Nome de usuário não existe!';

  rsSenhaIncorreta = 
    'Senha incorreta!';  

  rsAcessoNaoPermitido = 
    'Você não possui direito de realizar essa operação';

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
    'Deseja executar o processo de correção de banco de dados do programa NEX?';

  rsFimCorrecao = 
    'Fim do processo de correção de arquivos';

  rsSucessoRestauracao = 
    'Arquivos restaurados com sucesso!';

  rsConfirmaApagar =   
    'Essa operação vai apagar informações do seu banco de dados. Prosseguir?';

  rsConfirmaApagar2 = 
    'As informações serão apagadas de forma irreversível. Deseja realmente prosseguir?'; 

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
