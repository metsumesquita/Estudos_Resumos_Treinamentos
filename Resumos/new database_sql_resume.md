# Banco de dados

organização de assuntos
oque é um banco de dados
Sistemas de Arquivos
SGBD?
# O que é uma transação em um banco de dado ?
como esta relacionado com ACID
As Propriedades ACID
Arquitetura do Sistema,(Arquitetura ANSI/SPARC) ou Arquitetura de 3 camadas
VANTAGENS DE UTILIZAR UM SGBD
Tipos de Dados e Armazenamento
-o que sao dados estruturados,semi-estruturados,nao estruturados
-onde esses dados sao armazenados(falar do datalake , warehouses brevemente)
- Como isso funciona na prática com IDEs e ferramentas (como as ferramentas de desenvolvimentos se interligam com o banco de dados,ide ,etc)
 Visão geral da arquitetura cliente-servidor
Processamento local vs. remoto
quem é que mexe no sistema -- Atores do banco de dados
citar o modelo relacional que utiliza o SQL
O que é o Modelo de Entidade e Relacionamento (MER)
O que é o diagrama entidade relacionamento (DER)
Conceito de entidade e seus diferentes tipos entidade
conceito de atributo e seus diferentes tipos atributos
O relacionamento e cardinalidade
Modelo Relacional e Linguagem SQL
Chaves e Relacionamentos
#Dicionario de dados
Dependencias
Dependencia Funcional
#niveis de dependecia
Constraints (Restrições) em Banco de Dados
Normalização
O que é SQL?
O que é RDBMS?
Principais Comandos SQL

### Tipos de Dados no sql
exercicios em sql

*O que é Business Intelligence?*
big data
NoSQL







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

#Arquitetura de cliente Servido em Banco de dados
A arquitetura cliente-servidor é amplamente utilizada em sistemas de banco de dados para separar as responsabilidades de apresentação e processamento (cliente) do gerenciamento dos dados (servidor). Vamos entender essa arquitetura na prática, especialmente no contexto do uso de IDEs e ferramentas de conexão.

## 1. Visão geral da arquitetura cliente-servidor

Na sua descrição, você menciona um ambiente composto por:
- **Clientes**: estações de trabalho, impressoras, etc.
- **Servidores especializados**: servidor de arquivos, servidor de banco de dados, servidor web (wide), todos conectados em rede.

Em um banco de dados cliente-servidor:
- **Máquinas cliente** executam aplicações (como uma IDE, um programa desktop ou uma aplicação web) que interagem com o usuário e possuem processamento local.
- **Servidor de banco de dados** é uma máquina (ou conjunto) dedicada a executar o SGBD (Sistema Gerenciador de Banco de Dados), como MySQL, PostgreSQL, SQL Server, etc. Ele recebe requisições SQL, processa, gerencia transações, controle de concorrência e retorna os resultados.
- A **rede** (LAN, WAN) conecta clientes e servidores, permitindo a comunicação.

## 2. Como isso funciona na prática com IDEs e ferramentas

Quando um desenvolvedor ou administrador utiliza uma IDE ou ferramenta de banco de dados, a arquitetura se manifesta da seguinte forma:

- **A ferramenta (ex.: MySQL Workbench, DBeaver, VS Code com extensões)** atua como um **cliente**. Ela se conecta ao SGBD utilizando um driver (JDBC, ODBC, driver nativo) e um protocolo de rede (como TCP/IP).
- O desenvolvedor escreve comandos SQL na interface da ferramenta. Ao executar, a ferramenta empacota a consulta em um pacote de rede e envia ao servidor de banco de dados.
- O **servidor de banco de dados** recebe a consulta, realiza parsing, otimização, execução e acesso aos dados armazenados em disco (ou memória). Em seguida, monta o conjunto de resultados e o envia de volta ao cliente.
- A ferramenta cliente recebe os dados, formata (tabelas, gráficos) e exibe para o usuário.

Todo esse processo é transparente para o usuário – ele vê apenas a consulta e os resultados, mas por trás há uma comunicação cliente-servidor.

## 3. Exemplos das ferramentas citadas

- **Visual Studio Code, Eclipse, Sublime Text**: são IDEs genéricas que, com extensões (ex.: “SQL Tools”, “Database Client”), permitem conectar a bancos de dados. Elas agem como clientes.
- **MySQL Workbench, DBeaver, MariaDB (cliente)**: são ferramentas especializadas que já incluem conectividade, gerenciamento de conexões, editores SQL, visualização de esquemas, etc.
- **Databricks**: é uma plataforma de dados unificada que também segue o modelo cliente-servidor, onde o “cliente” é o notebook ou a interface web, e o “servidor” são os clusters de processamento.
- **Dolphin** (provavelmente DolphinDB ou um cliente de banco de dados): segue o mesmo princípio – conecta-se a um servidor de banco de dados para execução de consultas.

## 4. Processamento local vs. remoto

Um ponto importante que você destacou é que as **máquinas cliente** possuem poder de processamento local para executar aplicações locais. Em um ambiente de banco de dados:

- O **cliente** pode executar parte da lógica de negócio (ex.: validações, cálculos simples) sem sobrecarregar o servidor.
- No entanto, o **processamento pesado de dados** (joins, agregações, grandes consultas) é feito preferencialmente no servidor, pois ele é otimizado para isso e evita transferir grandes volumes de dados pela rede.
- As ferramentas IDEs geralmente só fazem a interface e a exibição dos resultados; o processamento SQL ocorre no servidor.

## 5. Resumo prático

Na prática, para trabalhar com um banco de dados cliente-servidor:

1. **Infraestrutura**: um servidor (físico ou virtual) com SGBD instalado, configurado para aceitar conexões de rede.
2. **Conexão**: o cliente (sua máquina) utiliza uma ferramenta que define parâmetros de conexão: endereço do servidor, porta, credenciais.
3. **Execução**: você escreve SQL na ferramenta, e ela se comporta como um cliente enviando comandos ao servidor.
4. **Retorno**: o servidor processa e devolve os dados, que são exibidos na ferramenta.

Essa arquitetura é fundamental para garantir escalabilidade, segurança e desempenho, separando as responsabilidades e permitindo que vários clientes acessem os mesmos dados simultaneamente.

---

Se você está começando a trabalhar com banco de dados, experimente conectar o DBeaver ou o MySQL Workbench a um servidor local ou remoto e observe, se possível, os logs do servidor para ver como cada consulta é recebida e processada. Isso ajuda a solidificar o entendimento da arquitetura cliente-servidor na prática.

---
# Atores no Ambiente de Banco de Dados (Quem interage com o SGBD)

Os sistemas de banco de dados não existem no vácuo. Diversas pessoas, com diferentes níveis de conhecimento e responsabilidades, interagem com ele. A literatura, especialmente Elmasri & Navathe, classifica esses "atores" em grupos principais.

1. Administradores e Gerentes (Os Responsáveis pelo Sistema)
São os profissionais que cuidam do ambiente como um todo. É fundamental entender a diferença entre o papel técnico e o papel estratégico/gerencial dos dados.

Administrador de Banco de Dados (DBA) – O Técnico:

Foco: Operacional, infraestrutura, desempenho e segurança física.

Responsabilidades: Autorizar acessos, monitorar performance, instalar e configurar o SGBD, fazer e gerenciar backups, criar usuários e permissões, resolver problemas de lentidão ou falhas, e realizar o projeto físico do banco de dados (definir onde e como os dados serão armazenados em disco). O DBA é o "guardião" da operação do banco.

Administrador de Dados (DA) ou Projetista de Banco de Dados – O Estrategista:

Foco: Negócio, planejamento, definição e padronização dos dados.

Responsabilidades: É o "arquiteto" dos dados. Ele identifica quais dados precisam ser armazenados para atender às necessidades da empresa. Cria o modelo conceitual (o grande desenho), define padrões de nomenclatura (dicionário de dados), e estabelece as regras de negócio que serão transformadas em regras de integridade. O DA se preocupa com o dado como um ativo da empresa.

Nota Importante para Provas: Em empresas menores, um único profissional pode acumular as funções de DBA e DA. No entanto, para fins de estudo, a distinção é crucial: DBA é técnico; DA é de negócio/modelagem.

2. Projetistas e Desenvolvedores (Os Construtores de Aplicações)
São os responsáveis por construir as pontes entre o usuário final e o banco de dados.

Analistas de Sistemas: Atuam como tradutores. Levantam os requisitos com os usuários finais e definem as especificações das funções e transações que a aplicação precisa ter para atender a esses requisitos.

Programadores de Aplicação (ou Desenvolvedores): Implementam as especificações dos analistas. Eles escrevem o código da aplicação (em Java, Python, C#, etc.) e utilizam comandos SQL (SELECT, INSERT, UPDATE, DELETE) para fazer a aplicação interagir com o banco de dados.

3. Usuários Finais (Os Clientes do Banco de Dados)
São as pessoas que realmente consomem os dados para realizar suas tarefas. Eles são divididos em categorias conforme o nível de interação com o sistema:

* Usuários Ingênuos (ou Paramétricos): São a maioria dos usuários. Eles interagem com o banco de dados através de aplicações pré-programadas, realizando operações repetitivas. Exemplo: O caixa de um supermercado que utiliza o sistema de leitura de códigos de barras para registrar uma venda.

* Usuários Casuais: Acessam o banco de dados esporadicamente, geralmente para consultas e relatórios. Precisam de alguma familiaridade com o sistema, mas não são programadores. Exemplo: Um gerente que consulta o relatório de vendas do mês usando uma interface gráfica.

* Usuários Sofisticados: São familiarizados com as estruturas do banco de dados e as ferramentas disponíveis. Eles podem criar suas próprias consultas e até mesmo pequenas aplicações para análises mais complexas. Exemplo: Engenheiros, analistas de negócios e cientistas de dados que escrevem consultas SQL complexas para explorar os dados.

* Usuários Isolados: Mantêm bancos de dados pessoais utilizando softwares prontos (como planilhas Excel avançadas ou Access) para suas necessidades específicas, sem integrar ao sistema corporativo principal.

4. Atores dos "Bastidores" (Os que Constroem as Ferramentas)
São aqueles que não usam o banco de dados diretamente, mas criam as ferramentas para que os outros possam usá-lo.

Projetistas e Implementadores de SGBD: São as equipes que desenvolvem o próprio software do SGBD (como MySQL, PostgreSQL, Oracle).

Desenvolvedores de Ferramentas: Criaram as IDEs (como DBeaver, MySQL Workbench) e as bibliotecas de conexão (como JDBC, ODBC) que facilitam o trabalho de DBAs e programadores.

Operadores e Equipe de Suporte: São responsáveis pela manutenção do ambiente de hardware e software onde o SGBD está rodando.

---

## RESUMO DOS ATORES

DBA = Mão na massa, performance, backup, segurança física, instalação. (É técnico)

AD (ou Projetista) = Planejamento, modelagem conceitual, dicionário de dados, regras de negócio. (É estratégico)

Programador = Escreve código SQL dentro de aplicações.

Usuário Final = Usa a aplicação ou ferramenta de consulta para fazer o trabalho


---
Abaixo está o texto revisado, com correções lógicas e gramaticais, mantendo todos os tópicos e a estrutura original.

---

# O que é o Modelo de Entidade e Relacionamento (MER)?

O Modelo Entidade-Relacionamento é um modelo conceitual usado para identificar como as entidades (pessoas, objetos ou conceitos) com suas propriedades e características (atributos) se relacionam entre si dentro de um sistema (relacionamento). Ele é muito utilizado devido à sua simplicidade e eficiência.

Ferramentas como [draw.io](http://draw.io/) ou brModelo permitem criar diagramas que representam o esquema de ligações entre tabelas. Esse diagrama é uma visão de alto nível (big picture) do minimundo.

# O que é o diagrama entidade relacionamento (DER)?

Já o Diagrama Entidade Relacionamento (DER) é uma representação gráfica do MER (continua conceitual) e do modelo lógico do banco de dados, ou seja, demonstra como esse banco funcionará, como será a estrutura do BD. Para construir o DER adequadamente, deve-se utilizar um conjunto definido de símbolos, que você conhecerá nesta unidade.

Conheça os conceitos do Modelo ER e seus símbolos indicativos no Diagrama ER.

## Modelagem de dados (MODELO ENTIDADE RELACIONAMENTO – MER)

Antes de implementar, é necessário criar um modelo conceitual que descreva as entidades e seus relacionamentos.

O modelo de Peter Chen (década de 70) utiliza símbolos gráficos para essa representação.

### 1. Entidade

A entidade representa um objeto do mundo real (como um aluno, um carro, um barco, um funcionário), sendo simbolizada por um retângulo. É a representação de um objeto no mundo real com existência independente. Pode ser um objeto com existência física ou conceitual.

#### 1.1 Entidade Forte

Uma entidade é considerada forte quando existe por si só, independentemente da existência de outras entidades. Por exemplo, em um sistema acadêmico, a entidade curso é independente de quaisquer outras para existir; portanto, é considerada “forte”.

#### 1.2 Entidade Fraca

Ao contrário das entidades fortes, as fracas são aquelas que dependem de outras para existir. São identificadas por se relacionarem com entidades específicas.

Pensando em um sistema acadêmico, a entidade ementa de uma disciplina (documento que registra os principais pontos trabalhados em uma disciplina) só tem sentido se houver a entidade disciplina. Não faz sentido que exista uma entidade para armazenar dados da ementa de uma disciplina que não existe, concorda? No DER, a entidade fraca e o seu relacionamento são representados com traços duplos.

Como por exemplo: a ementa pertence a uma disciplina.

#### 1.3 Entidade Associativa

A entidade associativa é criada quando se identifica a necessidade de associar uma entidade a um relacionamento existente. Na Modelagem ER não é possível que um relacionamento seja associado a uma entidade; então tornamos esse relacionamento uma entidade associativa para que possamos relacioná-lo com outras entidades. Ao fazer o diagrama ER, a entidade associativa é representada por um retângulo contendo o losango do relacionamento.

Para esclarecer melhor esse conceito, vamos voltar ao exemplo do sistema acadêmico. Imagine a seguinte situação:

Um professor ministra uma disciplina, cujas aulas são assistidas por alunos. A frequência dos alunos não está diretamente ligada à disciplina ou ao professor, mas sim à aula que foi assistida num determinado dia e horário. A aula, sim, está relacionada ao professor e à disciplina. Como não podemos relacionar a entidade aluno com o relacionamento no MER, devemos criar uma entidade associativa “aula”, que contém os atributos identificadores disciplina e professor, além das informações sobre a aula a que ele assistiu (data, horário e tema, por exemplo). A partir daí, pode-se relacionar o aluno com a aula a que ele assistiu. O relacionamento “ministra” tornou-se uma entidade associativa “Aula”.

A disciplina é ministrada durante a aula por um professor; esta aula ministrada é frequentada por alunos.

Enquanto disciplina, aluno e professor são ENTIDADES.

Atributos → nome, idade, código, etc.

---

## Atributos no modelo MER

O atributo tem as características que descrevem a entidade, como o nome da entidade, o peso, o tamanho, a cor, o ano de produção, a personalidade, etc. É simbolizado por uma figura oval.

Alguns atributos podem ser simples, outros podem ser compostos ou até multivalorados.

### 1. Atributo Simples

Atributos simples (ou atômicos) em bancos de dados são características de uma entidade que não podem ser subdivididas em partes menores com significado próprio. Eles contêm um valor único e direto, como CPF, idade, sexo.

- **Valor Único**: Geralmente armazenam apenas um valor por instância de entidade (monovalorados).
- **Exemplos Comuns**:
  - Pessoa: CPF, DataNascimento.
  - Produto: Preço, Código.
  - Funcionário: Salário, Cargo.

### 1.2 Atributo Composto

Os atributos compostos em banco de dados são campos que podem ser subdivididos em partes menores e independentes, representando dados completos. Eles ajudam a estruturar informações, mas geralmente são desmembrados na modelagem física para melhor normalização.

**Exemplo**: O endereço pode ser dividido em estado, rua, cidade, CEP e número. O nome pode ser dividido em nome e sobrenome.

### 1.3 Atributos Multivalorados

São características de uma entidade que podem ter múltiplos valores para uma única ocorrência.

- **Múltiplos valores**: Uma instância pode ter vários valores para o mesmo atributo (ex: vários telefones: fixo, celular, trabalho).
- **Representação visual (MER)**: Elipse dupla (círculo dentro de outro) ou { } dentro de uma elipse simples.
- **Exemplos**: Números de telefone, endereços de e-mail, habilidades de um funcionário, cores de um produto.

No banco de dados relacional, eles são resolvidos criando uma nova tabela para armazenar os valores, ligando-os à entidade original por uma chave estrangeira, ou usando tipos de dados como arrays/JSON. No entanto, a criação de uma tabela separada é a forma mais comum e normalizada para evitar inconsistências.

Atributos multivalorados são propriedades de entidades que podem armazenar múltiplos valores para uma única instância, como "Telefones" de um cliente ou "Hobbies" de uma pessoa. No Modelo Entidade-Relacionamento (MER), são representados por círculos duplos. Para implementação, exigem a criação de uma nova tabela separada para evitar a duplicação de dados, geralmente contendo uma chave estrangeira para a entidade original.

É um atributo que pode assumir diversos valores para uma determinada entidade. Por exemplo, o atributo telefone pode guardar vários valores para cada registro. Provavelmente você tem pelo menos dois números de telefone diferentes para contato: o seu celular e o telefone da sua casa. Então, o telefone pode ser considerado um atributo multivalorado por guardar mais de um valor para uma mesma pessoa.

**Obs.: O atributo composto é representado por uma linha dupla em seu contorno.**

### 1.4 Atributo Derivado

Um atributo pode ser chamado de derivado quando seu valor é determinado a partir de um ou mais atributos. Estes atributos mantêm uma “relação”. Em alguns casos, dois ou mais atributos estão relacionados.

Por exemplo, a idade e a data de nascimento de um cliente. Para um determinado cliente, podemos determinar a sua idade por meio da data de nascimento e da data atual. Atributos como a idade são chamados de atributos derivados. Repare que o atributo derivado é representado por uma linha pontilhada em seu contorno.

---

## O relacionamento e cardinalidade

Agora que você já conhece os tipos de entidade, deverá definir a forma como elas se relacionam entre si. De acordo com a quantidade de objetos envolvidos em cada lado do relacionamento, podemos classificar os relacionamentos: relacionamento um para um, um para muitos e muitos para muitos.

### 1. Relacionamento 1..1 (um para um)

São relacionamentos entre duas entidades, em que cada uma delas referencia obrigatoriamente uma única unidade da outra.

Por exemplo, em um banco de dados de currículos, cada usuário cadastrado deve possuir necessariamente apenas um currículo na base, ao mesmo tempo em que cada currículo só pertence a um único usuário cadastrado.

### 2. Relacionamento 1..N ou 1..* (um para muitos)

São relacionamentos em que uma das entidades envolvidas pode referenciar várias unidades da outra entidade; porém, o inverso não é verdade: cada uma das várias unidades referenciadas só pode estar ligada a uma unidade da primeira entidade.

Por exemplo, imagine um sistema para cadastro de livros em bibliotecas. Uma editora pode publicar vários livros, mas cada livro pode ser publicado por apenas uma editora.

Nesse caso, dizemos que a cardinalidade mínima e máxima de editora é 1,N, ou seja, uma editora pode publicar no mínimo 1 e no máximo muitos (quantidade indeterminada) livros. Já um livro pode ser publicado por no mínimo 1 e no máximo 1 editora.

Outro exemplo é o caso da mãe e do filho: enquanto uma mãe pode ter nenhum, um ou vários filhos, um filho normalmente tem apenas uma mãe (considerando o modelo biológico tradicional).

### 3. Relacionamento N..N, N:M ou *..* (muitos para muitos)

Nesse tipo de relacionamento, cada entidade pode fazer referência a múltiplas unidades da outra.

Pensando em um sistema de controle de projetos, um engenheiro pode desenvolver vários projetos e ao mesmo tempo um projeto pode ser desenvolvido por vários engenheiros. Assim, um objeto do tipo engenheiro pode referenciar múltiplos objetos do tipo projeto, e vice-versa.

Nesse caso, dizemos que a cardinalidade mínima e máxima de Engenheiro é 0,N, ou seja, um engenheiro pode desenvolver no mínimo 0 (nenhum) e no máximo muitos (indeterminados) projetos. E os projetos podem ser desenvolvidos por no mínimo 1 e no máximo muitos (indeterminados) engenheiros.

---

# Modelo Relacional e Linguagem SQL

Existem vários modelos de bancos de dados, desenvolvidos ao longo do tempo, e o mais utilizado atualmente é o Modelo Relacional.

## O Modelo Relacional

O banco de dados relacional é um dos pilares da gestão de informações em ambientes computacionais. Desde sua criação na década de 1970 por Edgar F. Codd no livro "A Relational Model of Data for Large Shared Data Banks", esse modelo tem sido amplamente adotado em diversas aplicações, graças à sua estrutura organizada e eficiente. Neste artigo, exploraremos os conceitos fundamentais do banco de dados relacional, suas aplicações práticas e a importância desse modelo na era da informação.

O modelo relacional é baseado na ideia de que os dados podem ser organizados em tabelas, também conhecidas como relações, compostas por linhas e colunas. Cada tabela representa uma entidade ou conceito, e as colunas representam os atributos dessa entidade. Por exemplo, em um banco de dados de uma loja online, poderíamos ter uma tabela "Clientes" com colunas como "ID do Cliente", "Nome" e "Endereço".

- Tabelas (relações)
- Linhas (registros)
- Colunas (atributos)

## Chaves e Relacionamentos

Para compreender o conceito de chave primária, pense no seguinte exemplo:

Em um BD para cadastro de clientes de uma empresa, ao registrar cada cliente pede-se a indicação do número de CPF, nome, telefone, renda mensal, entre outras informações. Para fazer uma consulta no banco de dados, é preciso ter um campo que identifique o cliente. Talvez você pense em buscar pelo nome ou ainda pelo telefone dessa pessoa, correto? Porém, essas informações podem se repetir em diversos cadastros: podemos ter pessoas homônimas ou ainda familiares que compartilham o telefone residencial.

Nos bancos de dados, toda entidade deve ter um atributo com valor único e que nunca poderá ser nulo. Dizemos que esse valor garante a unicidade da entidade, já que duas entidades não podem compartilhar esse valor característico simultaneamente. Esse atributo especial é chamado de chave primária.

Uma chave primária é um atributo ou conjunto de atributos que identifica unicamente um registro na tabela e que, por isso, não pode ser repetido.

No exemplo do BD que registra clientes, pode-se utilizar o CPF como chave primária: o CPF é um número único para cada cidadão; portanto, se fizermos uma pesquisa por esse dado, com certeza a consulta retornará apenas o registro de uma única pessoa.

Uma entidade pode ter mais de um atributo chave, dependendo da necessidade do sistema.

- **Chave Primária**: É um campo que identifica exclusivamente (de forma única) cada linha em uma tabela. Geralmente, é composta por um ou mais campos que garantem a unicidade dos registros.
- **Chave Estrangeira**: É um campo que estabelece uma relação entre duas tabelas, permitindo a criação de conexões entre os dados. Por exemplo, uma tabela "Pedidos" pode ter uma chave estrangeira que se relaciona com a tabela "Clientes".
- **Normalização**: É o processo de organização das tabelas para reduzir a redundância de dados e garantir a integridade referencial. A normalização ajuda a manter a consistência dos dados.
- **Chave estrangeira (FK)**: Cria a relação entre duas tabelas e é utilizada para garantir a integridade referencial.

## Aplicações

1. **Sistemas de Gerenciamento de Relacionamento com Clientes (CRM)**: Esses sistemas armazenam informações sobre clientes e suas interações, permitindo uma melhor compreensão do comportamento do cliente e a personalização de serviços.
2. **Sistemas de Gerenciamento de Pedidos**: Para empresas que lidam com pedidos, o banco de dados relacional é essencial para rastrear pedidos, produtos e clientes, facilitando o atendimento eficiente e a logística.
3. **Sistemas de Gerenciamento de Recursos Humanos**: O armazenamento de informações sobre funcionários, folhas de pagamento e benefícios é vital para as operações de RH.


## 📌 Constraints (Restrições) em Banco de Dados

As **constraints** são elementos fundamentais nos bancos de dados relacionais. Elas são regras aplicadas às tabelas e colunas com o objetivo de garantir a **integridade, consistência e confiabilidade dos dados** armazenados.

Essas restrições controlam os dados que podem ser inseridos, atualizados ou excluídos, assegurando que as informações sigam a lógica do sistema e as regras de negócio.

Os SGBDs modernos, como MySQL e PostgreSQL, implementam essas regras de forma eficiente, e o mito de que constraints “sobrecarregam” o banco não é verdadeiro.

---

## 🎯 Objetivo das Constraints

As constraints ajudam a:

* Garantir a integridade dos dados
* Evitar inconsistências
* Impedir dados inválidos
* Manter a qualidade das informações
* Facilitar análises e relatórios

---

## 🔑 Principais Tipos de Constraints

### 1️⃣ NOT NULL

Garante que uma coluna não aceite valores nulos.
É utilizada quando um dado é essencial para o sistema.

Exemplo:

```sql
CREATE TABLE Students (
    ID INT NOT NULL,
    NAME VARCHAR(100) NOT NULL
);
```

Nesse caso, todo aluno deve possuir um ID e um nome.

---

### 2️⃣ UNIQUE

Garante que os valores de uma coluna não se repitam.

Exemplo:

```sql
EMAIL VARCHAR(100) UNIQUE
```

Muito usado para:

* CPF
* E-mail
* Login

---

### 3️⃣ PRIMARY KEY

Uma restrição PRIMARY KEY é uma combinação das restrições NOT NULL e UNIQUE. Ela identifica de forma exclusiva cada linha em uma tabela. Uma tabela só pode ter uma PRIMARY KEY e não pode aceitar valores NULL. Isso é normalmente usado para a coluna que servirá como identificador dos registros.

Identifica de forma única cada registro da tabela.
Não permite valores nulos nem duplicados.

Exemplo:

```sql
ID INT PRIMARY KEY
```

---

### 4️⃣ FOREIGN KEY

Estabelece a relação entre tabelas, garantindo a **integridade referencial**.

A FOREIGN KEY constraint links a column in one table to the primary key in another table. This relationship helps maintain referential integrity by ensuring that the value in the foreign key column matches a valid record in the referenced table.

Exemplo:

```sql
FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
```

Isso impede que um pedido seja criado para um cliente inexistente.

---

### 5️⃣ CHECK

Define uma condição que os dados devem satisfazer.

Exemplo:

```sql
CHECK (Idade >= 18)
```

---

### 6️⃣ DEFAULT

Define um valor padrão quando nenhum valor é informado.

Exemplo:

```sql
Status VARCHAR(20) DEFAULT 'Ativo'
```

---


### 6️⃣ AUTO_INCREMENT

Usada para gerar valores únicos automaticamente para colunas, geralmente em conjunto com PRIMARY KEY.

Exemplo

```sql
CREATE TABLE orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 order_date DATE NOT NULL,
 PRIMARY KEY (order_id)
);

```

---

## 📊 Importância das Constraints na Integridade

As constraints ajudam a manter:

* Integridade de entidade → PRIMARY KEY
* Integridade referencial → FOREIGN KEY
* Integridade de domínio → CHECK e NOT NULL

Esses três tipos são fundamentais em sistemas reais.

## 💡 Boas práticas

* Sempre usar PRIMARY KEY
* Evitar campos nulos desnecessários
* Aplicar CHECK para regras de negócio
* Utilizar FOREIGN KEY para evitar dados órfãos
* Nunca confiar apenas na aplicação para validar dados

## 🚀 Exemplo real

Em um sistema de e-commerce:

* Cliente deve ter CPF único
* Pedido deve estar ligado a um cliente válido
* Preço não pode ser negativo

---

#Dicionario de dados
é uma ferramenta para auxiliar a organização,armazenando informaçoes sobre os objetos,entendidade,relacionamentos que foram criados.

Um dicionario de dados é um documento usado para armazena informaçoes sobre o conteudo,formato e a estrutura de um banco de dados , assim os relacionamentos entre os seus elementos.
é importante manter um diicionario de dados para elimitar erros ao criar as estruturas fisicas do banco de dados no computador.
afinal pode ser consultado toda hora para 
tambem chamado de repositorio de metadados.


📘 Exemplo de Dicionário de Dados
------------------------------------------------
tabela           |relacionamento         |nome do relacionamento |descriçao                     |
|----------------|-----------------------|---------------------- |-------------------------------|
tabela_livro     |tabela_autor           |escrever               |tabela para cadastro de coleção|
tabela_livro     |tabela_editora         |publicar               |tabela para cadastro de coleção|
tabela_autor     |tabela_livro           |escreve                |tabela para cadastro de autores dos livros
tabela_Editora   |tabela_livro            |escreve                |cadastro de editoras


📘 Exemplo de Dicionário de Dados
Tabela: tbl_Autor
| Tabela    | Nome da Coluna  | Tipo    | Tamanho | Nullable | Restrição | Valor Padrão   | Descrição                    | Regra de Negócio       |
| --------- | --------------- | ------- | ------- | -------- | --------- | -------------- | ---------------------------- | ---------------------- |
| tbl_Autor | ID_Autor        | INT     | 4 bytes | Não      | PK        | Auto Increment | Identificador único do autor | Gerado automaticamente |
| tbl_Autor | Nome_Autor      | VARCHAR | 40      | Não      | —         | —              | Nome do autor                | Não pode ser vazio     |
| tbl_Autor | Sobrenome_Autor | VARCHAR | 40      | Não      | —         | —              | Sobrenome do autor           | Obrigatório            |



📘 Exemplo de Dicionário de Dados
📦 Tabela: tbl_Cliente

| Tabela      | Nome da Coluna | Tipo de Dado | Tamanho | Nullable | Restrições         | Valor Padrão      | Descrição                      | Regra de Negócio                    |
| ----------- | -------------- | ------------ | ------- | -------- | ------------------ | ----------------- | ------------------------------ | ----------------------------------- |
| tbl_Cliente | ID_Cliente     | INT          | 4 bytes | Não      | PK, Auto Increment | —                 | Identificador único do cliente | Gerado automaticamente pelo sistema |
| tbl_Cliente | Nome           | VARCHAR      | 100     | Não      | NOT NULL           | —                 | Nome completo do cliente       | Obrigatório                         |
| tbl_Cliente | Email          | VARCHAR      | 150     | Não      | UNIQUE             | —                 | Email do cliente               | Deve ser único                      |
| tbl_Cliente | CPF            | CHAR         | 11      | Não      | UNIQUE             | —                 | CPF do cliente                 | Deve conter 11 dígitos válidos      |
| tbl_Cliente | Data_Cadastro  | DATETIME     | —       | Não      | —                  | CURRENT_TIMESTAMP | Data de cadastro               | Preenchido automaticamente          |
| tbl_Cliente | Status         | VARCHAR      | 20      | Não      | CHECK              | 'Ativo'           | Situação do cliente            | Valores permitidos: Ativo, Inativo  |

---
#Dependencias


##Dependencia Funcional
Seja E uma entidade e X e Y dois atributos quaisquer de E
Dizemos que Y é funcionalmente dependede de X se e somente se cada valor de X tiver associado a ele exatamente um valor de Y.

simbolicamente X=>Y
que temos com X determinada funcionalmente Y

exemplo o prazo de entrega do pedido depende do numero dopedido considerado

o atributo que determina o valor é chamado de determinante.
o outro atributo é chamado de dependente

numero_pedido => prazo de entrega do pedido

uma chave primaria em relaçao determina funcionalmente todos os outros atributos nao chave na linha

classificando as dependencias funcionais

dependencia funcional total

em uma relação com uma chave primaria composta, um atributo nao chave que dependa dessa chave primaria como um todo e nao somente parte dela, é dito como possuindo dependecia funcional total.

item-pedido
chave primaria numero_pedido
chave primaria codigo_produto
integer        quantidade_produto

quantidade_produto depende tanto de numero_pedido quanto de codigo_produto

Dependencia funcional pacieal 

uma dependencia funcional parcial é quando os atributos não chave nao depende funcionalmente de toda chave primaria quando esta é composta
ou seja, existe uma dependencia funcional,mas somente de uma parte da chave primaria
exemplo
matriculas 
chave primaria id_aluno
chave primaria codigo disciplina
    nome_disciplina
    data de inicio

aqui nesse exemplo o nome_diciplina depende apenas da chave primaria codigo_disciplina
--

# Normalização
normalização é um processo fundamental no desgin de  banco de dados relacional,introduzindo a partir dos conceitos proposta por edgar F codd, em 1970.
A normalizaçao organiza dados em tabelas menores,reduzindo redundancia e melhorando a integridade dos dados .
As principais formais normais sao a primeira forma normal(1FN),Segunda forma normal 2FN e terfeira forma normal 3 FN, e cada um visa eliminar tipos especificos de redudancia e depedencia inadequadas

Nesse artigo do paper relational model off data for large share data banks, indiciou a aplicação de teste que servem para confirmar que a relação repetir 3 regras específicas que ele denominou de forma normal (FN, assim respeitando as 3 formas normais a tabela estará normalizado e assim não teremos anomalias nem redundâncias .

Em resumo,os teste visão avalias os esquemas das relações considerando suas dependências funcionais,chaves primárias para chegar as regras de forma normais. Em casos de quebra de uma das formas normais a relação pode ser decomposta em relações menores para que seja garantido o respeito as formas normais

## Como é feita a normalização 

## Formas Normais:
Primeira Forma Normal (1FN): Uma tabela está em 1FN quando não contém valores multivalorados ou grupos repetidos, ou seja, cada campo deve ser atômico.

Segunda Forma Normal (2FN): Uma tabela está em 2FN se estiver em 1FN e cada campo não-chave depender completamente da chave primária, eliminando dependências parciais.

Terceira Forma Normal (3FN): Uma tabela está em 3FN se estiver em 2FN e não houver dependências transitivas, ou seja, os campos não-chave dependem apenas da chave primária.

## Objetivos da Normalização:
Eliminar Redundâncias: Evitar a duplicação de dados e economizar espaço de armazenamento.
Assegurar a Integridade dos Dados: Garantir que atualizações e exclusões sejam consistentes em todo o banco de dados.
Facilitar a Manutenção: Simplificar o gerenciamento de dados, evitando erros durante atualizações.
Estabelecer Relacionamentos Adequados: Criar uma estrutura eficiente para consultas e manipulação dos dados.

## Importância da Normalização: A normalização ajuda a evitar problemas de redundância e inconsistência ao dividir grandes tabelas em menores e estabelecer relacionamentos entre elas. Isso facilita a manutenção do banco de dados, pois garante que atualizações sejam refletidas corretamente sem causar duplicação ou perda de dados. Além disso, um banco de dados bem normalizado oferece melhor desempenho para consultas complexas e minimiza o risco de inconsistências em operações de inserção, atualização e exclusão





Tipos de Dados (Escalas de Mensuração)

1. Dados Nominais: não possuem ordem ou hierarquia. Exemplos: cores, nomes de países, gênero.
2. Dados Ordinais: possuem uma ordem definida. Exemplos: classificações de produtos (bom, médio, ruim), nível escolar.
3. Dados Numéricos (Quantitativos): representam valores numéricos. Exemplos: idade, peso, temperatura.

---

#Nível 4: Funcionamento Interno do SGBD (Administração e Controle)

Processamento de Transações (Já abordado): Conceito de transação e propriedades ACID (Atomicidade, Consistência, Isolamento, Durabilidade).

Controle de Concorrência (Não abordado): Problemas de acesso simultâneo (lost update, dirty read) e soluções como bloqueios (locks).

Níveis de Isolamento (Não abordado): READ UNCOMMITTED, READ COMMITTED, REPEATABLE READ, SERIALIZABLE.

Recuperação de Falhas (Não abordado): Técnicas como logging e checkpoint para garantir a durabilidade.

Otimização de Consultas (Não abordado): Como o SGBD planeja a execução de um SELECT para ser mais rápido.

Gerenciamento de Armazenamento (Não abordado): Índices (B-Tree, Hash), estruturas de arquivos.

---
Power BI e Azure

O Power BI pode ser integrado diretamente com diversos serviços Azure, como: Stream Analytics, Event Hubs, Machine Learning, Storage, SQL Database, HDInsight.

------

--
O que é o SPARK ?
 O Spark não é um SGBD, mas sim um motor de processamento distribuído (ou data processing engine). Ele processa dados em larga escala usando clusters de computadores, mas não gerencia dados da mesma forma que um SGBD tradicional (como controle de concorrência ACID em nível de registro). Ele se integra a diversos SGBDs e sistemas de arquivo para processá-los
---


O que é data driven?
Milhões de informações são geradas diariamente na operação dos negócios. Se a empresa não cuidar, não analisar e deixar esses dados guardados sem atenção, inúmeras oportunidades serão ignoradas. Isso sem falar na séria ameaça de essa empresa não existir mais nos próximos anos, devido ao avanço tecnológico feroz e à concorrência fazendo uma gestão inteligente, orientada a dados. Portanto, tratar eficazmente a informação tornou-se vital para qualquer companhia se manter no mercado, avançar e inovar. O conceito atual de data driven pode até ser novidade, porém, a ideia por trás dele tem origem na ciência dos dados e refere-se a como as empresas tomam suas decisões estratégicas. Antigamente, a orientação de um negócio era feita baseada em pequenas amostras de pesquisa, criatividade e intuição do dono ou gerente. Hoje, com a avalanche digital, os dados são, na prática, os números coletados e apresentados pelas ferramentas de análise de dados (Google Analytics, por exemplo), que entregam uma visão panorâmica do negócio em dashboards de suas plataformas. A partir disso, é possível perceber as fragilidades e fortalezas da empresa, extrair insights e direcionar a jornada do empreendimento de modo muito mais seguro. Em síntese, as organizações data driven são totalmente alucinadas pelo consumidor, criam uma supremacia comercial a partir da tecnologia e transformam dados em riqueza.

Qual a importância do Data Driven?
O data driven é uma abordagem estratégica que envolve a coleta, a análise e o uso de dados para tomar decisões empresariais. Por meio dele, as empresas tomam decisões mais informadas e baseadas em evidências, o que, por sua vez, ajuda a melhorar a eficiência e o desempenho. O uso de dados significa que as empresas podem identificar tendências, prever resultados e tomar decisões de maneira mais inteligente. Além disso, o data driven permite que as empresas explorem novas oportunidades de negócios, pois elas podem usar os dados para descobrir novos caminhos. Desse modo, uma companhia capaz de extrair e analisar dados de diferentes fontes gera conhecimento e riqueza em suas operações. Isso porque é guiada pelas informações para a tomada de decisão e para o desenvolvimento do planejamento estratégico. Portanto, as organizações que conseguem interpretar dados para entender profundamente seu público, por exemplo, constroem uma relação muito mais próxima do cliente, transmitindo maior confiança e precisão. Essa atitude promove naturalmente uma expansão mais rápida, acompanhando a transformação digital.

---
Os bancos de dados não são a única maneira de organizar dados e as organizações geralmente utilizam diferentes lojas de dados para apoiar iniciativas diferentes.

Os bancos de dados são construídos principalmente para captura automática de dados, consultas rápidas e processamento de transações.  

Data lakes são ambientes de armazenamento de baixo custo projetados para lidar com grandes quantidades de dados brutos, estruturados e não estruturados. Ao contrário dos bancos de dados, os data lakes geralmente não limpam, validam nem normalizam os dados. Normalmente, armazenam grandes quantidades de dados para possibilitar atividades como treinamento de IA e análise de big data, nas quais o desempenho em tempo real é menos importante.

Data warehouses são construídos para possibilitar esforços de análise de dados, business intelligence e ciência de dados. Agregam dados de vários bancos de dados, limpam e preparam para estarem prontos para uso. 

Data lakehouses combinam os recursos de warehouses e lakes em uma única solução de gerenciamento de dados. Um data lakehouse combina armazenamento de baixo custo com um mecanismo de consulta de alto desempenho e governança inteligente de metadados. Isso possibilita que as organizações armazenem grandes quantidades de dados estruturados e não estruturados e usem facilmente esses dados para esforços de IA, ML e análise de dados.
--
O que é o SPARK ?
 O Spark não é um SGBD, mas sim um motor de processamento distribuído (ou data processing engine). Ele processa dados em larga escala usando clusters de computadores, mas não gerencia dados da mesma forma que um SGBD tradicional (como controle de concorrência ACID em nível de registro). Ele se integra a diversos SGBDs e sistemas de arquivo para processá-los

---

Docker e Banco de Dados

O Docker pode ser usado para criar uma instância de um banco de dados desejado (como MySQL). Ele é um contêiner que isola o ambiente do banco. Para utilizá-lo, é necessário instalar uma extensão ou cliente que se conecte ao contêiner.

---

Data Mining (Mineração de Dados)

Métodos de mineração de dados incluem:

· Regressão: identifica e analisa a relação entre variáveis, considerando a influência de outros fatores.

---

Data Wrangling

É o processo de transformar e mapear dados de um formato "bruto" para outro mais adequado para uso.

---

ETL vs ELT


ETL (Extract, Transform, Load)

· Extrai dados de fontes, transforma em um ambiente intermediário e carrega no destino final.
· Indicado para dados estruturados e volumes menores.
· Não suporta diretamente data lakes de forma nativa (sem adaptações).

ELT (Extract, Load, Transform)

· Carrega os dados diretamente no sistema de destino (ex: data lake) e depois aplica as transformações.
· Indicado para grandes volumes de dados.
· Suporta fontes estruturadas e não estruturadas, com escalabilidade em nuvem.


---

 OLTP also know as online transaction processing data base is build to store current transactions and enable fast aces to specific transactions for going business processe , it uses single data source , short transactions (small and simples queries ) with emphases on write many transactions latency sensitive,small pay load carga útil , use case general purpose.

 ---
 olap 
 online nalytical procedssing data whahouse is build to store lange quantities of historical data and enable fast complex queries ,whiich in portugues is names consultas, across all data,multiple data soucer,long transidions ,long and complex queries with emphase on read fwe transsations throught put,taxa  de transferencia, sensivel , lager payloud
 ---


---

Técnicas de Análise de Dados

1. Descritiva (Descriptive): Gera relatórios de finanças e vendas. Responde "o que aconteceu?"
2. Diagnóstica (Diagnostic): Complementa a análise descritiva, investigando causas. Responde "por que aconteceu?" Pode identificar anomalias.
3. Preditiva (Predictive): Utiliza dados históricos para prever tendências. Emprega machine learning e estatística (redes neurais, árvores de decisão, regressão, classificação).
4. Prescritiva (Prescriptive): Sugere ações para alcançar um resultado desejado. Responde "como fazer acontecer?"

---

Azure Synapse Analytics

É uma plataforma de análise integrada que combém data warehouse e big data. Permite usar Spark, por exemplo.

Suporta processos ETL e ELT. Pode ingerir dados de diversas fontes e enviá-los ao Power BI.

---

ELT no Azure Synapse

[Correção de digitação e clareza:]

A forma mais rápida e escalável de carregar dados no Synapse é usando tabelas externas com PolyBase ou o comando COPY. Esses recursos permitem acessar dados armazenados no Azure Blob Storage ou no Azure Data Lake Storage.

Etapas do ELT:

1. Extrair dados da fonte para um arquivo.
2. Carregar os dados no Azure Blob Storage ou Azure Data Lake.
3. Preparar os dados (estruturar, limpar, etc.).
4. Carregar os dados em uma tabela staging usando PolyBase ou comando COPY.

---

Azure Blob Storage

É um serviço de armazenamento de objetos, distribuído em várias máquinas, que pode armazenar texto e dados binários (blobs).



 O que é uma read replica
 é uma copia da instancia primaria que reflete as alteraçoes primarias em quase tempo real,pode funcionar como replica de leitura para soluçoes de leitura

---

 ORM (Object-Relational Mapping) é uma técnica de programação que conecta linguagens orientadas a objetos (como Java, Python, JS) a bancos de dados relacionais (SQL), mapeando tabelas para classes. Ele traduz automaticamente dados entre esses dois mundos, eliminando a necessidade de escrever SQL manualmente, o que aumenta a produtividade e a segurança.       

---                         
O Hibernate é um framework ORM (Mapeamento Objeto-Relacional) para Java, amplamente utilizado para persistir dados, simplificando a interação entre objetos Java e bancos de dados relacionais. Ele traduz automaticamente classes Java em tabelas e vice-versa, eliminando a necessidade de SQL manual para operações básicas (CRUD) e suportando bancos como MySQL e PostgreSQL          	                                      
 •	Implementação JPA: É a implementação mais popular da especificação Java Persistence API (JPA), que padroniza o ORM em Java. Sim, o Hibernate é um framework ORM(Object-Relational Mapping - Mapeamento Objeto-Relacional) para Java, amplamente utilizado para mapear classes Java para tabelas de banco de dados relacional e tipos de dados Java para tipos SQL. Ele facilita a persistência de dados, eliminando a necessidade de escrever SQL manualmente para operações comuns Para Python, não existe uma versão direta do Hibernate, mas a alternativa padrão, mais robusta e similar é o SQLAlchemy. Ele permite mapear objetos Python para tabelas de banco de dados, oferecendo funcionalidades semelhantes de persistência e manipulação de dados

---
DAO (Data Access Object) é um padrão de projeto utilizado em programação para separar a regra de negócio da regra de acesso a dados. Ele encapsula todas as operações de banco de dados (CRUD: criar, ler, atualizar, deletar) em classes específicas, isolando o código SQL e aumentando a manutenção, coesão e segurança da aplicação ,em outras palavras possue entidades que contém nossas classes que vão ter um espelhamento de forma de interface abstraída que chamam os nossos medos das classe. No DAO temos o controller onde temos a aplicação e as ações e a conexão ,temos o modelo Dão que tem a interface , temos as enteiddades ou os objetos ou dados .


---
Dentre as etapas de definição de um SGBD e seus banco de dados. Qual destas etapas está relacionada a implementação da estrutura e inserção dos dados no BD?
construçao

O que é data driven?
Milhões de informações são geradas diariamente na operação dos negócios. Se a empresa não cuidar, não analisar e deixar esses dados guardados sem atenção, inúmeras oportunidades serão ignoradas. Isso sem falar na séria ameaça de essa empresa não existir mais nos próximos anos, devido ao avanço tecnológico feroz e à concorrência fazendo uma gestão inteligente, orientada a dados. Portanto, tratar eficazmente a informação tornou-se vital para qualquer companhia se manter no mercado, avançar e inovar. O conceito atual de data driven pode até ser novidade, porém, a ideia por trás dele tem origem na ciência dos dados e refere-se a como as empresas tomam suas decisões estratégicas. Antigamente, a orientação de um negócio era feita baseada em pequenas amostras de pesquisa, criatividade e intuição do dono ou gerente. Hoje, com a avalanche digital, os dados são, na prática, os números coletados e apresentados pelas ferramentas de análise de dados (Google Analytics, por exemplo), que entregam uma visão panorâmica do negócio em dashboards de suas plataformas. A partir disso, é possível perceber as fragilidades e fortalezas da empresa, extrair insights e direcionar a jornada do empreendimento de modo muito mais seguro. Em síntese, as organizações data driven são totalmente alucinadas pelo consumidor, criam uma supremacia comercial a partir da tecnologia e transformam dados em riqueza.

Qual a importância do Data Driven?
O data driven é uma abordagem estratégica que envolve a coleta, a análise e o uso de dados para tomar decisões empresariais. Por meio dele, as empresas tomam decisões mais informadas e baseadas em evidências, o que, por sua vez, ajuda a melhorar a eficiência e o desempenho. O uso de dados significa que as empresas podem identificar tendências, prever resultados e tomar decisões de maneira mais inteligente. Além disso, o data driven permite que as empresas explorem novas oportunidades de negócios, pois elas podem usar os dados para descobrir novos caminhos. Desse modo, uma companhia capaz de extrair e analisar dados de diferentes fontes gera conhecimento e riqueza em suas operações. Isso porque é guiada pelas informações para a tomada de decisão e para o desenvolvimento do planejamento estratégico. Portanto, as organizações que conseguem interpretar dados para entender profundamente seu público, por exemplo, constroem uma relação muito mais próxima do cliente, transmitindo maior confiança e precisão. Essa atitude promove naturalmente uma expansão mais rápida, acompanhando a transformação digital.

----
O que é cloud?


O que é o SPARK ?
 O Spark não é um SGBD, mas sim um motor de processamento distribuído (ou data processing engine). Ele processa dados em larga escala usando clusters de computadores, mas não gerencia dados da mesma forma que um SGBD tradicional (como controle de concorrência ACID em nível de registro). Ele se integra a diversos SGBDs e sistemas de arquivo para processá-los

---

Docker e Banco de Dados

O Docker pode ser usado para criar uma instância de um banco de dados desejado (como MySQL). Ele é um contêiner que isola o ambiente do banco. Para utilizá-lo, é necessário instalar uma extensão ou cliente que se conecte ao contêiner.

---

Data Mining (Mineração de Dados)

Métodos de mineração de dados incluem:

· Regressão: identifica e analisa a relação entre variáveis, considerando a influência de outros fatores.

---

Data Wrangling

É o processo de transformar e mapear dados de um formato "bruto" para outro mais adequado para uso.

---

ETL vs ELT


ETL (Extract, Transform, Load)

· Extrai dados de fontes, transforma em um ambiente intermediário e carrega no destino final.
· Indicado para dados estruturados e volumes menores.
· Não suporta diretamente data lakes de forma nativa (sem adaptações).

ELT (Extract, Load, Transform)

· Carrega os dados diretamente no sistema de destino (ex: data lake) e depois aplica as transformações.
· Indicado para grandes volumes de dados.
· Suporta fontes estruturadas e não estruturadas, com escalabilidade em nuvem.

---

Técnicas de Análise de Dados

1. Descritiva (Descriptive): Gera relatórios de finanças e vendas. Responde "o que aconteceu?"
2. Diagnóstica (Diagnostic): Complementa a análise descritiva, investigando causas. Responde "por que aconteceu?" Pode identificar anomalias.
3. Preditiva (Predictive): Utiliza dados históricos para prever tendências. Emprega machine learning e estatística (redes neurais, árvores de decisão, regressão, classificação).
4. Prescritiva (Prescriptive): Sugere ações para alcançar um resultado desejado. Responde "como fazer acontecer?"

---

Azure Synapse Analytics

É uma plataforma de análise integrada que combém data warehouse e big data. Permite usar Spark, por exemplo.

Suporta processos ETL e ELT. Pode ingerir dados de diversas fontes e enviá-los ao Power BI.

---

ELT no Azure Synapse

[Correção de digitação e clareza:]

A forma mais rápida e escalável de carregar dados no Synapse é usando tabelas externas com PolyBase ou o comando COPY. Esses recursos permitem acessar dados armazenados no Azure Blob Storage ou no Azure Data Lake Storage.

Etapas do ELT:

1. Extrair dados da fonte para um arquivo.
2. Carregar os dados no Azure Blob Storage ou Azure Data Lake.
3. Preparar os dados (estruturar, limpar, etc.).
4. Carregar os dados em uma tabela staging usando PolyBase ou comando COPY.

---
Dep
Azure Blob Storage

É um serviço de armazenamento de objetos, distribuído em várias máquinas, que pode armazenar texto e dados binários (blobs).                                                         __________________
API _>allows for the automated retrieval of data from websites -> beautiful soup 
---

 OLTP also know as online transaction processing data base is build to store current transactions and enable fast aces to specific transactions for going business processe , it uses single data source , short transactions (small and simples queries ) with emphases on write many transactions latency sensitive,small pay load carga útil , use case general purpose.

 ---
 olap 
 online nalytical procedssing data whahouse is build to store lange quantities of historical data and enable fast complex queries ,whiich in portugues is names consultas, across all data,multiple data soucer,long transidions ,long and complex queries with emphase on read fwe transsations throught put,taxa  de transferencia, sensivel , lager payloud
 ---

 O que é uma read replica
 é uma copia da instancia primaria que reflete as alteraçoes primarias em quase tempo real,pode funcionar como replica de leitura para soluçoes de leitura

---
arwuitetura de banco de dados -cleinte servidor 
Está arquitetura foi desenvolvida para lidar com ambiente de compaixão em que já um grande quando idade com lutadores,servidores de arquivo ,8’pressoras,estações de trabalho,servidores de banco de dados, servidores de wide são conectados por uma rede 

As máquinas cliente olerecem ao ajudaria as interfaces apropriadas para esses servidores serem utilizados , bem como poder de processamento local para execução de aplicações locais 

Os cliente host (máquina) utilizam algum recurso de rede computational,isto é o cliente e uma máquina que focerece capacidade de intecarr com usuário e o processamento local 

já o servidor especializado tem: posso-me uma função específica como servidor de arquivos que mantém os arquivos dos cliente que podem ser utilizado ao conectar uma série de computadores como cliente.              ————————————————————
 ORM (Object-Relational Mapping) é uma técnica de programação que conecta linguagens orientadas a objetos (como Java, Python, JS) a bancos de dados relacionais (SQL), mapeando tabelas para classes. Ele traduz automaticamente dados entre esses dois mundos, eliminando a necessidade de escrever SQL manualmente, o que aumenta a produtividade e a segurança.       ———————————————————-                                                                                                                                                                                                            
**preciso achar onde encaixar esse trecho**


#O que é modelagem de dados?
Modelagem relaciona-se à ideia de representar algo que existe ou existirá, ou seja, representar o banco de dados que será criado, demonstrando aspectos relevantes para sua implantação. A ideia é representar como serão construídas as estruturas de dados que darão suporte aos processos de negócio, como esses dados estarão organizados e quais relacionamentos pretende-se estabelecer entre eles.

Vamos pensar no exemplo de um estoque informatizado de um supermercado: o sistema deve identificar os dados de um produto que passou pelo caixa, relacioná-los com o que há no BD e registrar a saída do item. Esses relacionamentos devem ser previstos antes de o banco de dados ser criado, ainda no momento de projeto, por isso a modelagem é fundamental.

1. Independência de dados, que é capacidade de modificar a definição dos esquemas de determinado nível, sem afetar o esquema de nível superior
2. Independência Lógica dos Dados: trata da capacidade de alterar o esquema conceitual sem precisar modificar os esquemas externos ou programas/aplicações
3. Independência Física dos Dados: capacidade de alterar o esquema interno sem ter de alterar o esquema conceitual.
---

1. Projetos de Banco de DadosProjetos do BD: estrutura ou projeto de um banco de dados em diferentes níveis de abstração por meio de Modelos:
Modelo Conceitual (alto nível):  conceitos que são mais próximos ao modo como muitos usuários compreendem os dados -> “diagramas”
o nivel de abstração é alto,nao possue dependencia,comprensao pelo usuario final sendo facil, exemplo de um modelo conceitural é o modelo entedidade relacionamento que iremos aborda posteriomente

2. Modelo Lógico:  podem ser facilmente entendidos pelos usuários finais, mas que não está muito longe do modo como os dados são organizados e armazenados no computador -> “tabelas”
ja o modelo logico, o nivel de abstraçao é medio,possue dependecia com algum software (tipo sgbd), a compreensao pelo usuario final é medio, o exemplo de modelo logico que temos é o modelo relacional


3. Modelo Físico (baixo nível): descrevem os detalhes de como os dados são armazenados no computador -> “programação”,
dentre as tres,é o aque o nivel de abstraçao é mais baixo,depende tanto do hardware e do softare(sgbd especitifico),a  compreensao pelo usuario final  é dificil.


Flexibilidade

É fácil adicionar, atualizar ou excluir tabelas, relações e fazer outras alterações em dados sempre que necessário, sem alterar a estrutura geral do banco de dados ou afetar aplicativos existentes.

Conformidade com ACID

Os bancos de dados relacionais são compatíveis com o desempenho da ACID (atomicidade, consistência, isolamento e durabilidade) para garantir a validade dos dados independentemente de erros, falhas ou outros possíveis erros.

Facilidade de usar

É fácil executar consultas complexas usando SQL. Com isso, até mesmo usuários não técnicos aprendam a interagir com o banco de dados.

Colaboração

Várias pessoas podem operar e acessar dados ao mesmo tempo. O bloqueio integrado impede o acesso simultâneo aos dados quando eles estão sendo atualizados. 

Segurança integrada

A segurança baseada em papéis garante que o acesso aos dados seja limitado a usuários específicos.

Normalização do banco de dados

Os bancos de dados relacionais usam uma técnica de design conhecida como normalização que reduz a redundância e melhora a integridade dos dados. 
----

Comentário: Cuidado para não confundir DA com DBA. A responsabilidade de manter o dicionário de dados é do DA, enquanto que o backup, por exemplo, é o DBA quem faz.

CESPE - 2010 - Banco da Amazônia - Técnico Científico / Tecnologia da Informação
Enquanto o AD se preocupa com o gerenciamento dos dados como patrimônio da empresa, o administrador de banco de dados (ABD) é 
---


ESAF - MI - 2012 - Nível Superior
O Administrador de Dados
auxilia os gerentes de projeto na definição dos programas de seus projetos.  
desenvolve um modelo de dados com abrangência operacional.
mantém o dicionário de dados.
executa backup do banco de dados
recupera protocolos.

Comentário: Cuidado para não confundir DA com DBA. A responsabilidade de manter o dicionário de dados é do DA, enquanto que o backup, por exemplo, é o DBA quem faz.

CESPE - 2010 - Banco da Amazônia - Técnico Científico / Tecnologia da Informação
Enquanto o AD se preocupa com o gerenciamento dos dados como patrimônio da empresa, o administrador de banco de dados (ABD) é responsável pelo gerenciamento físico e dos acessos ao banco de dados.

Comentário: Exato. Não somente isso que foi citado na questão, mas também fazem isso, logo, a questão está correta.


CESPE - 2015 -  TRE-GO - Técnico do Judiciário: Programação de Sistemas
O administrador de banco de dados tem como atribuição, entre outras, decidir que dados devem ser armazenados no banco de dados e estabelecer normas para manter e tratar esses dados. 

Comentário: A descrição dada é do Administrador de Dados, não do Administrador de Banco de Dados.

UERJ - 2015 - UERJ - Programador: Java
O DBA, como um dos usuários do ambiente de banco de dados, interage com as seguintes interfaces: 

A - consulta interativa e instruções DDL 
B - instruções DDL e comandos privilegiados 
C - programas de aplicação e consulta interativa 
D - comandos privilegiados e programas de aplicação 

Comentário: Não existe uma razão que impeça aos DBAs de terem acesso aos comandos privilegiados ou programas de aplicação (a não ser por regras da própria empresa), mas a alternativa que faz mais sentido é a letra B.

Ano: 2022 Banca: CEFET-MG Órgão: CEFET-MG Prova: CEFET-MG – 2022 – CEFET-MG – Técnico de Laboratório – Área de Computação

questoes de concurso sobre arquitetura SGBD
A arquitetura do SGBD é dividida em três níveis que proveem diferentes abstrações da estrutura do sistema de banco de dados, e é conhecida como arquitetura ANSI/SPARC.
Essa organização em níveis efetiva a visão abstrata dos dados, reduzindo a complexidade do sistema
I. Nível físico: é onde se especifica o acesso aos dados conforme as necessidades de cada usuário ou aplicação. 
II. Nível lógico: é onde se descreve a estrutura completa do banco de dados, que engloba a definição do esquema do banco de dados. 
III. Nível de visão: relaciona-se com as estruturas de armazenamento dos dados e com o gerenciamento destas.
Quais estão corretas?

questao A/ apenas a II

questao B/apenas a I e II

questao C apenas I e III

Questao D apenas II e III

Questao E I,II,III (todas estariam corretas)

Gabarito : resposta correta : questao A : apenas  A 2 esta correta
respota correta :
II. Nível lógico: é onde se descreve a estrutura completa do banco de dados, que engloba a definição do esquema do banco de dados. 

---
questao de concurso FGV - 2024 - Prefeitura de Nova Iguaçu - RJ - Analista Tributário do Tesouro Municipal

Em sistemas de bancos de dados existem atores responsáveis por tarefas, tais como autorizar o acesso ao banco de dados e coordenar e monitorar seu uso, bem como estabelecer políticas e identificar falhas de segurança ou eventuais demoras na inatividade do sistema. 


Analise se as afirmativas a seguir sobre os níveis de arquitetura ANSI/ SPARC para um sistema de banco de dados são verdadeiras (V) ou falsas (F).
 
( ) A arquitetura ANSI/SPARC divide-se em quatro níveis, conhecidos como nível interno, nível externo, nível criptografado e nível conceitual.

( ) O nível interno da ANSI/SPARC é o que se encarrega do modo como os dados são armazenados no hardware.

( ) O nível externo da ANSI/SPARC abrange o meio como os dados são vistos por usuários individuais.

( ) O nível criptografado da ANSI/SPARC fornece protocolos como o AES, TLS e SSL.

( ) O nível conceitual da ANSI/SPARC apresenta uma visão da comunidade de usuários, sendo um nível indireto entre o interno e o externo.

A sequência correta é

Alternativas

F, V, F, V, F.
F, V, V, F, V.
F, V, V, V, F.
V, F, V, V, F.
V, V, F, F, F.
 
Ano: 2021 Banca: INSTITUTO AOCP Órgão: FUNPRESP-JUD Prova: INSTITUTO AOCP – 2021 – FUNPRESP-JUD – Analista de Tecnologia da Informação – Desenvolvimento de Sistemas
---

Dentre os papéis de um SGBD, o mesmo deve ser capaz de controlar acesso concorrente de múltiplos usuários. Além disso, estes múltiplos usuários podem ter contextos e perfis de acesso distintos relacionados aos dados. Dessa forma, quais características da arquitetura do SGBD estão diretamente ligadas ao cenário supracitado?

---

links de referencia
https://www.estrategiaconcursos.com.br/blog/diferencas-administracao-bancos-dados-administracao-dados/
https://www.linkedin.com/advice/0/how-does-database-isolation-level-affect-1wcuf?lang=pt&originalSubdomain=pt
https://www.estrategiaconcursos.com.br/blog/banco-dados-isolamento/
https://learn.microsoft.com/pt-br/sql/odbc/reference/develop-app/transaction-isolation-levels?view=sql-server-ver17
https://www.ibm.com/docs/pt-br/db2/12.1.x?topic=issues-isolation-levels
https://www.ibm.com/docs/pt-br/db2/12.1.x?topic=issues-isolation-levels
https://www.ev.org.br/cursos/administrando-banco-de-dados
https://dropsti.blogspot.com/2015/02/atores-de-um-sistema-de-banco-de-dados.html
https://www.estrategiaconcursos.com.br/blog/banco-de-dados-relacional/
https://apps.univesp.br/novotec/modelagem-de-dados/#:~:text=Chave%20Prim%C3%A1ria-,Atributo%20Simples,:%20CEP%2C%20nome%2C%20CPF.
https://www.alura.com.br/artigos/mer-e-der-funcoes#:~:text=Os%20atributos%20s%C3%A3o%20as%20propriedades%20das%20entidades,forma%20%C3%BAnica%20uma%20entidade%2C%20como%20o%20CPF
https://cloud.google.com/learn/what-is-a-relational-database

imagem para key primaria , key estrangeira relaçao , relacional
https://www.gstatic.com/bricks/image/_j-DAQG6tx5MwOwhdNFkHMou4fWHRuEbzYr3wEaRClkCnC3W2TR8CnMsAvmVX-rgOICpWX-wrBPc.png

