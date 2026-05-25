

# INICIO

# O que é um banco de dado
Um banco de dados é uma coleção organizada de dados relacionados, representando algum aspecto do mundo real (minimundo). Ele é projetado para refletir as mudanças do mundo real, mantendo os dados atualizados.

## Sistemas de Arquivos
Antigamente era utilizado o sistema de arquivos , os dados eram armazenados em arquivos isolados por departamento, causando problemas como redundância (dados repetidos) e inconsistência (dados conflitantes). O SGBD (Sistema Gerenciador de Banco de Dados) resolve esses problemas centralizando os dados e garantindo propriedades  ACID (Atomicidade, Consistência, Isolamento e Durabilidade), que asseguram que uma operação no banco seja feita por completo e sem erros

## Como mexer nos arquivos de um banco de dados ?
Primeiramente Você não mexe diretamente nos arquivos do banco de dados. Para isso, usamos o SGBD (Sistema Gerenciador de Banco de Dados). Ele é um conjunto de softwares que facilita a definição (criar estruturas), construção (armazenar os dados) e manipulação (consultar e atualizar) das informações. Exemplos comuns que você ouvirá por aí são MySQL, PostgreSQL, Oracle , SQL Serve e SQLite

# Afinal o que esse tal SGBD?
Os Sistemas de Gerenciamento de Banco de Dados Relacionais (SGBDs) podem desempenhar um papel significativo em diversos contextos. Amplamente utilizados para organizar dados de maneira eficiente, esses softwares se destacam por armazenar e organizar os dados em tabelas inter-relacionadas, baseadas no modelo relacional. Assim, cada tabela é composta por linhas (registros) e colunas (atributos), e as relações entre tabelas são estabelecidas através de chaves primárias e estrangeiras.
SGBD então será responsável por manter a integridade do banco a medida que ele cresce ao longo dos anos. Essa integração chamamos de sistema de banco de dadados
Para que essa estrutura robusta ofereça uma base sólida para a gestão eficaz das informações, os SGBDs utilizam a linguagem SQL (Structured Query Language) para realizar consultas e manipulação de dados, oferecendo recursos como transações, controle de concorrência, integridade de dados e segurança.

# O que é um transação e como esta relacionado com ACID

# O que é uma transação em um banco de dado ?
Uma transação em um banco de dados ou sistema de armazenamento de dados é uma operação tratada como uma unidade de trabalho indivisível. Isso significa que a transação é concluída integralmente ou não ocorre, garantindo a consistência do sistema. Um exemplo comum é a retirada de dinheiro de uma conta bancária: ou o valor é sacado com sucesso ou a operação não acontece. Não há estado intermediário

# As Propriedades ACID
Agora que entendemos o que é uma transação,conseguimos relacionar ela Intrinsecamente ligada Sigla ACID, que tem as caracteristicas que definem uma transação: atomicidade,consistencia,isolamento e durabilidade.

Quando uma operação de banco de dados possui essas propriedades ACID, ela pode ser chamada de transação ACID. Um sistema de armazenamento de dados que aplica essas operações também é chamado de sistema transacional. As transações ACID garantem as seguintes características para leituras, gravações e modificações de tabelas:

* Atomicidade: cada instrução de uma transação (leitura, gravação, atualização ou exclusão de dados) é tratada como uma única unidade. Ou as instruções são todas executadas ou nenhuma é executada. Essa propriedade evita perda ou corrupção de dados, como quando a fonte de dados de streaming falha no meio do fluxo.
 
* Consistência: garante que as transações apenas modifiquem as tabelas de maneiras predefinidas e previsíveis. A consistência transacional mantém as tabelas consistentes em caso de corrupção de dados ou erros, evitando resultados de execução não intencionais.
 
* Isolamento: vários usuários podem ler e gravar na mesma tabela ao mesmo tempo, mas as transações são isoladas para que as simultâneas não interfiram ou afetem umas às outras. Na verdade, cada solicitação é tratada como se estivesse ocorrendo de forma independente, mesmo que ocorram simultaneamente.

* Durabilidade: garante que as alterações de dados feitas por transações executadas com sucesso sejam preservadas, mesmo em caso de falha do sistema.

## Benefícios das transações ACID
As transações ACID maximizam a confiabilidade e a integridade dos dados. Os dados permanecem consistentes mesmo se a operação for concluída apenas parcialmente. Por exemplo, se cair a energia inesperadamente durante a gravação em uma tabela em um banco de dados, sem transações ACID, pode ser que apenas parte dos dados seja salva, e o restante, não. O resultado é um banco de dados inconsistente, tornando a recuperação difícil e demorada.

# Arquitetura do Sistema,(Arquitetura ANSI/SPARC) ou Arquitetura de 3 camadas

##A Estrutura (Arquitetura ANSI/SPARC) ou Arquitetura de 3 camadas
também conhecida como Arquitetura de três camadas, ela foi desenvolvida pelo grupo ANSI (American National Standards Intitute) em meados dos anos 70 e tinha como objetivo estabelecer um padrão para a comunicação em sistemas de banco de dados ou SGBD – Sistema Gerenciador de Banco de Dados

Para facilitar a vida de quem usa e de quem gerencia, o sistema é dividido em três níveis de abstração:

1. Nível Externo( camada externa),tambem conhecida como  visão, é a mais próxima do usuário final. Nela fica representada as múltiplas visões do BD que os usuários tem, e inclui também os inúmeros meios de acesso que pode ser através de aplicações especializadas que se conectam ao BD ou até mesmo aplicações que acessam o BD de forma nativa, por linha de comando ou interface gráfica. Exemplos temos vários, como o SQL developer do Oracle, o PGADMIN no PostgreSQL ou o Workbench no MYSQL.
podemos compreender como tambem :Cada pessoa ou aplicação vê apenas a parte do banco de dados que é pertinente ao seu trabalho

2. A camada conceitual(Nivel Logico) representa a visão conceitual do banco de dados. Nessa camada, são definidos os conceitos e entidades que compõem o banco de dados, bem como as relações entre elas. Essa camada é independente da implementação física do banco de dados. Nela teríamos os modelos que podem ser representados de várias formas em inúmeras notações, esse modelos e notações são apresentados como modelagem ER.

3. Nível Interno (físico): é a camada mais próxima do hardware.cuida de como os dados são realmente gravados no disco rígido. Esta camada  representa a visão física do banco de dados, e inclui os arquivos, índices e outras estruturas do banco de dados, bem como armazenamento e recuperação.


A principal característica dessa arquitetura é separar a visão conceitual da implementação física, coisa que não era possível no desenvolvimento de sistemas antes do surgimento dos SGBD’s, pois a própria aplicação fazia a persistência dos dados, a utilização dela trouxe inúmeras vantagens no tocante a manutenção e evolução de um sistema ao longo do tempo.
Uma vez explicada a Arquitetura ANSI/SPARC, fica mais fácil entender a diferença do projeto de banco de dados, o principal do objetivo deste é transformar requisitos numa implementação de bando de dados de forma que a aplicação que será desenvolvida possa ter seus dados persistidos de forma consistente

---

# VANTAGENS DE UTILIZAR UM SGBD

Controle de redundancia ,redundancia leva a inconsistencias
retringindo acesso nao autorixado
oferecendo estruturas de armazenamento e tecninas de pesquisa para processamentos eficiente de consultas
oferecendo armazenamento persistente para objetos do programa
oferecendo backup e recuperaçao
oferecendo multiplas interfaces do usuario 
representando relaciomentos complexos entre os dados
impondo restrinçoes de integridade 
permitindo deduçao de açoes usando regras
implicaçoes adicionais de uso da abordagen de banco de dados


#Exemplo de como ocorre a redundancia da informação

um arquivo armazenado em N locais.
imagine a seguinte situação, em um hospital qualquer , um paciente faz entrada e é feito um arquivo/documento desse paciente,esse arquivo deve ser enviado para 3 recepçoes diferentes,contudo pode ser que por alguma falha,ele nao chege em uma(ou mais) recepçao.
e posteriormente ocorra uma atualizaçao desse arquivo do paciente, e seja enviado novamente para essas recepçoes, contudo uma delas nao recepçao a atualizaçao,o que torna inconsistente 
nao consegue manter a integridade e nao consegue reduzir a redundancia

---

