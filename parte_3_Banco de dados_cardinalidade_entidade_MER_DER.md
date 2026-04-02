#Parte 3

#Assuntos
- MER
- DER
-Entidade
-Relacionamento e chaves
-Cardinalidade
-Normalização
-Constraints
-Dicionario de dados

# O que é o Modelo de Entidade e Relacionamento (MER)?

O Modelo Entidade-Relacionamento é um modelo conceitual usado para identificar como as entidades (pessoas, objetos ou conceitos) com suas propriedades e características (atributos) se relacionam entre si dentro de um sistema (relacionamento). Ele é muito utilizado devido à sua simplicidade e eficiência.

Ferramentas como [draw.io](http://draw.io/) ou brModelo permitem criar diagramas que representam o esquema de ligações entre tabelas. Esse diagrama é uma visão de alto nível (big picture) do minimundo.



## Modelagem de dados (MODELO ENTIDADE RELACIONAMENTO – MER)

Antes de implementar, é necessário criar um modelo conceitual que descreva as entidades e seus relacionamentos.

O modelo de Peter Chen (década de 70) utiliza símbolos gráficos para essa representação.



# O que é o diagrama entidade relacionamento (DER)?

Já o Diagrama Entidade Relacionamento (DER) é uma representação gráfica do MER (continua conceitual) e do modelo lógico do banco de dados, ou seja, demonstra como esse banco funcionará, como será a estrutura do BD. Para construir o DER adequadamente, deve-se utilizar um conjunto definido de símbolos, que você conhecerá nesta unidade.

Conheça os conceitos do Modelo ER e seus símbolos indicativos no Diagrama ER.

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
tabela_Editora   |tabela_livro           |escreve                |cadastro de editoras


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
