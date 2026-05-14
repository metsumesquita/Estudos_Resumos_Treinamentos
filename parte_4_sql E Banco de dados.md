# Resumo de SQL – Guia Completo

conceitos e definições no SQL
comandos basicos no SQL
O que é RDBMS?
Tipos de Dados SQL
Operadores Lógicos
Funções de agregação

MAX() - falta
COUNT() - falta 
SUM() - falta 
AVG() - falta

## 1. Definições Fundamentais

### O que é SQL?
SQL (*Structured Query Language*) é uma linguagem de programação utilizada para consultar, acessar, manipular, recuperar e armazenar dados em bancos de dados relacionais.

- **Padronização:** Tornou-se um padrão do ANSI em 1986 e da ISO em 1987.
- **Características:** As palavras-chave (*keywords*) do SQL **não diferenciam maiúsculas de minúsculas** (case insensitive).
- **Sintaxe:** Alguns sistemas de banco de dados exigem ponto e vírgula (`;`) ao final de cada instrução para separar múltiplos comandos.

### Estrutura de um Banco de Dados Relacional
- **Database Server (Instância):** Nível superior onde todos os dados são armazenados.
- **Database:** Dentro de uma instância, existem vários bancos de dados, cada um organizado por categorias amplas.
- **Table (Tabela):** Dentro de um banco de dados, os dados são organizados em tabelas. É onde os dados realmente "vivem".
- **Field (Campo) / Column (Coluna):** Uma coluna em uma tabela que mantém informações específicas sobre todos os registros.
- **Record (Registro) / Row (Linha):** Cada entrada individual em uma tabela. É uma entidade horizontal.

### O que é RDBMS?
RDBMS (*Relational Database Management System*) é a base para o SQL e para sistemas modernos como MS SQL Server, IBM DB2, Oracle, MySQL e Microsoft Access.

### Principais Comandos SQL
| Comando | Descrição |
|---------|-----------|
| `SELECT` | Extrai dados de um banco de dados |
| `UPDATE` | Atualiza dados em um banco de dados |
| `DELETE` | Exclui dados de um banco de dados |
| `INSERT INTO` | Insere novos dados em um banco de dados |
| `CREATE DATABASE` | Cria um novo banco de dados |
| `ALTER DATABASE` | Modifica um banco de dados |
| `CREATE TABLE` | Cria uma nova tabela |
| `ALTER TABLE` | Modifica uma tabela |
| `DROP TABLE` | Exclui uma tabela |
| `CREATE INDEX` | Cria um índice (chave de busca) |
| `DROP INDEX` | Exclui um índice |

### Tipos de Dados SQL
- **Numéricos:** `INT`, `TINYINT`, `BIGINT`, `FLOAT`, `REAL`
- **Data e Hora:** `DATE`, `TIME`, `DATETIME`
- **Caracteres e Strings:** `CHAR`, `VARCHAR`, `TEXT`
- **Unicode:** `NCHAR`, `NVARCHAR`, `NTEXT`
- **Binários:** `BINARY`, `VARBINARY`
- **Diversos:** `CLOB`, `BLOB`, `XML`, `CURSOR`, `TABLE`

---

Iremos descobrir nesssa nova jornada , como criar um banco de dados , como criar uma tabela,atualizar ou  deletar a tabela . Além disso teremos o poder de realizar querys dependendo de nossas necessidades.

#Criando um banco de dados
```sql

CREATE DATABASE Controle_De_Caixa;
```

#  Criando uma  tabela - com o comando `CREATE TABLE`

```sql
DROP TABLE IF EXISTS station;

CREATE TABLE station (
    id_station INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(21) NOT NULL,
    state VARCHAR(2) NOT NULL,
    lat_n DECIMAL(10,6),
    long_w DECIMAL(10,6)
);
```

---

##2. Os Comandos que Utilizamos

utilizamos o 'select' para selecionar ou extrair os dados , enquanto utilizamos o Where para criar um filtro dos registros com base em uma condiçao,ja os operadores logicos criaram condiçoes para que o retorno cumpra o que é esoerado(a condição do cliente)


### `SELECT` – Selecionar dados
Seleciona colunas específicas:
```sql
SELECT CustomerName, City FROM Customers;
```
Seleciona todas as colunas:
```sql
SELECT * FROM Customers;
```

### `SELECT DISTINCT` – Valores únicos

Para selecionar valores únicos (distintos) de uma coluna específica no SQL, utilize o comando SELECT DISTINCT. 
Essa instrução remove duplicatas, retornando apenas uma ocorrência de cada valor único da coluna especificada, facilitando análises de dados.
```sql
SELECT DISTINCT Country FROM Customers;
```
Contar quantos valores distintos existem em uma coluna:
```sql
SELECT COUNT(DISTINCT Country) FROM Customers;
```

```sql
select distinct location
from incidents 
```

---

### `WHERE` – Filtrar registros
Filtra registros com base em uma condição:
```sql
SELECT * FROM Customers WHERE Country = 'Mexico';
```
Com múltiplas condições:
```sql
SELECT * FROM weather WHERE city = 'San Francisco' AND prcp > 0.0;
```


## 3. Operadores Lógicos

### `AND`
Exibe um registro **se todas** as condições forem verdadeiras.

**Sintaxe:**
```sql
SELECT coluna1, coluna2, ...
FROM tabela
WHERE condicao1 AND condicao2 AND condicao3 ...;
```

**Exemplo:**
```sql
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';
```

### `OR`
Exibe um registro **se pelo menos uma** das condições for verdadeira.

**Exemplo:**
```sql
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';
```

### `NOT`
Exibe os registros que **não** atendem à condição especificada. Inverte o resultado da condição (verdadeiro vira falso e vice-versa).

O `NOT` pode ser combinado com outros operadores:
- `NOT LIKE`
- `NOT BETWEEN`
- `NOT IN`
- `IS NOT NULL`
- `NOT EXISTS`

**Exemplo básico:**
```sql
SELECT * FROM Customers
WHERE NOT Country = 'Spain';
```

**Exemplo com `NOT IN`:**
```sql
SELECT * FROM Customers
WHERE Country NOT IN ('Spain', 'Portugal', 'Germany', 'France', 'Austria');
```

### `ORDER BY` – Ordenar resultados

Aqui descobrimos que podemos primeiro orderar/sort the result alphabetically, pela primeira column then, by the column secund column

```sql
select * from Customers order by Country,City; 
```

SELECT * FROM produtos ORDER BY preco ASC;   -- do mais barato ao mais caro


SELECT * FROM produtos ORDER BY preco DESC;  -- do mais caro ao mais barato

---

### `INSERT INTO` – Inserir dados
Existem várias formas de usar o `INSERT INTO`:

**1. Inserir um único registro (especificando colunas):**
```sql
INSERT INTO aluno (nome, nascimento) VALUES ('Matheus de Almeida Cantarutti', '1994-07-20');
```

**2. Inserir múltiplos registros de uma só vez (separados por vírgula):**
```sql
INSERT INTO aluno (nome, nascimento) VALUES 
  ('Ana', '2000-05-10'),
  ('Bruno', '1999-12-03'),
  ('Carla', '2001-07-22');
```

**3. Inserir valores para **todas** as colunas da tabela (omitindo os nomes das colunas):**
```sql
INSERT INTO Customers
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
```

**4. Inserir apenas em colunas específicas:**
```sql
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');
```

**5. Inserir múltiplos registros com colunas específicas:**
```sql
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway'),
('Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway'),
('Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'L1 0AA', 'UK');
```

### `UPDATE` – Atualizar dados
**Atenção:** A cláusula `WHERE` é essencial para evitar atualizar todos os registros da tabela. Se você omitir o `WHERE`, **todas** as linhas serão atualizadas.

**Sintaxe:**
```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

**Exemplo:**
```sql
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = 1;
```

**Outro exemplo :**
```sql
UPDATE pessoa SET Id_endereço = 1 WHERE cpf = 10;
```

### `DELETE` – Remover dados

DELETE FROM table_name WHERE condition;

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

### SELECT TOP

A cláusula SELECT TOP é utilizada para limitar o número de registos a devolver.

A cláusula SELECT TOP é útil em tabelas de grande dimensão com milhares de registos. A devolução de um grande número de registos pode afetar o desempenho.

```sql
SELECT TOP 3 * 
FROM Customers;
```

```sql
SELECT TOP 3 * FROM Customers
ORDER BY CustomerName DESC;
```

```sql
SELECT * FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;

```
---

#operador LIKE
Os caracteres curinga são utilizados com o operador LIKE.

O operador LIKE é utilizado numa cláusula WHERE para procurar um padrão específico numa coluna.

seleciona todos os clientes que seus nomes inicializam com a letra  "a":

SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';

---

## 4. Exercícios

### Exercício 1: Consultas Simples
1. Selecione todos os clientes que tenham e-mail cadastrado.
   ```sql
   SELECT * FROM cliente WHERE cadastrado_email = 1;
   ```
2. Retorne a quantidade de e-mails cadastrados.
   ```sql
   SELECT COUNT(cadastro_email) FROM cliente WHERE cadastro_email = 1;
   ```

### Exercício 2: Filtros e Condições
1. Selecione todos os produtos da categoria "RPG".
   ```sql
   SELECT * FROM produtos WHERE descCategoriaProduto = 'RPG';
   ```
2. Retorne a quantidade de produtos onde o valor é maior que 100.
   ```sql
   SELECT COUNT(*) FROM produtos WHERE valor_produto > 100;
   ```

### Exercício 3: Inserção e Ordenação
1. Insira os seguintes registros na tabela `station`:
   - ('Recife', 'PE', -8.05, -34.90)
   - ('Olinda', 'PE', -8.01, -34.85)
   - ('Caruaru', 'PE', -8.28, -35.97)
   - ('Petrolina', 'PE', -9.38, -40.50)

   ```sql
   INSERT INTO station (city, state, lat_n, long_w) VALUES
   ('Recife', 'PE', -8.05, -34.90),
   ('Olinda', 'PE', -8.01, -34.85),
   ('Caruaru', 'PE', -8.28, -35.97),
   ('Petrolina', 'PE', -9.38, -40.50);
   ```

2. Liste todos os produtos, mostrando apenas os 4 primeiros.
   ```sql
   SELECT id_produto, descCategoriaProduto 
   FROM produtos LIMIT 4;
   ```

3.Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows


```sql
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
 FROM STATION;
```



#retorna a quantidade de cidades destintas
```sql
SELECT COUNT(DISTINCT city) 
 FROM  station;
```
#retorna a quantidade de cidades existentes no banco de dados

```sql
SELECT COUNT( ity)
 FROM station;
```
t
### Exercício 4: Operador `AND`
Listar as alunas nascidas em `2003-01-01` e com `id` maior que 300.
```sql
SELECT * FROM tabela_alunos
WHERE aluno_genero = 'F'
  AND aluno_data = '2003-01-01'
  AND aluno_id > 300;
```

### Exercício 5: Operador `OR`
Selecione todos os clientes que moram na Alemanha (`Germany`) **ou** na Espanha (`Spain`).
```sql
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';
```

### Exercício 6: Operador `NOT` básico
Selecione todos os clientes que **não** são da Espanha.
```sql
SELECT * FROM Customers
WHERE NOT Country = 'Spain';
```

### Exercício 7: `NOT IN`
Selecione todos os clientes cujo país **não** está na lista: `'Germany'`, `'France'`, `'Austria'`.
```sql
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'Austria');
```

### Exercício 8: `NOT LIKE`
Selecione todos os clientes cujo nome **não** se inicia com a letra A.
```sql
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'A%';
```

### Exercício 9: `NOT BETWEEN`
Selecione todos os produtos cujo valor **não** esteja no intervalo entre 100 e 200.
```sql
SELECT * FROM Item
WHERE ItemValue NOT BETWEEN 100 AND 200;
```

###  Exercício 10: `WHERE  In`
```sql
SELECT name, 
population FROM world
WHERE name IN ('Brazil', 'Russia', 'India', 'China');
```

---

# **Funções de agregação**

Uma função de agregação é uma função que realiza um cálculo sobre um conjunto de valores e devolve um único valor.

As funções de agregação são frequentemente utilizadas com a cláusula GROUP BY da instrução SELECT. A cláusula GROUP BY divide o conjunto de resultados em grupos de valores, e a função de agregação pode ser utilizada para devolver um único valor para cada grupo.

As funções de agregação SQL mais utilizadas são:

MIN() - devolve o valor mais pequeno de uma coluna
MAX() - devolve o valor mais grande de uma coluna
COUNT() - devolve o número de linhas num conjunto
SUM() - devolve a soma de uma coluna numérica
AVG() - devolve o valor médio de uma coluna numérica
As funções agregadas ignoram valores nulos (exceto COUNT(*)).

---
**função MIN()**

A função MIN() devolve o valor mais pequeno da coluna selecionada.
A função MIN() funciona com tipos de dados numéricos, de cadeia de caracteres e de data.


```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```

```sql
SELECT MIN(Price)
FROM Products;
```

Ao utilizar a função MIN(), a coluna resultante não terá um nome.
Utilize a palavra-chave AS para atribuir um nome descritivo à coluna:

```sql
SELECT MIN(Price) AS SmallestPrice
FROM Products;
```

Aqui, utilizamos a função MIN() e a cláusula GROUP BY para obter o preço mais baixo de cada categoria na tabela Produtos:

```sql
SELECT MIN(Price) AS SmallestPrice, CategoryID
FROM Products
GROUP BY CategoryID;
```

---

**Função MAX()**
The MAX() function returns the largest value of the selected column.

The MAX() function works with numeric, string, and date data types.

SELECT MAX(column_name)
FROM table_name
WHERE condition;

---
**Função COUNT()**

---
#Como usar o ALIAS


```sql
select names 
from suspects
as suspect_name

```
---
# hands on

#aisle QUER dizer corredor da loja

```sql
CREATE TABLE groceries (
id INTEGER PRIMARY KEY, 
item TEXT, 
quantity INTEGER, 
aisle INTEGER
);


INSERT INTO groceries VALUES 
(1, "Bananas", 4, 7),
(2, "Peanut Butter", 1, 2),
(3, "Dark Chocolate Bars", 2, 2),
(4, "Ice cream", 1, 12),
(5, "Cherries", 1, 2),
(6, "Chocolate syrup", 0, 4);

```
retorne uma lista em ordem alphametica

```sql
select item
from groceries
 order by item asc ;
```

retorna uma lista com o nome do produto e a quantidade do produto na ordem de maior quantidade para menor quantidade

```sql
SELECT item,quantity
FROM groceries 
ORDER BY quantity DESC;
```

retorne uma lista com o identificador do corredor e com a quantidade de itens total do corredor.

```sql
SELECT aisle, SUM(quantity) AS quantity_total 
FROM groceries 
GROUP BY aisle;
```

---
crie um banco de dados com alguns livros 


```sql
CREATE TABLE all_books (
    id_book SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    rating NUMERIC(3, 2) CHECK (rating >= 0 AND rating <= 5) NOT NULL,
    ano_publicação int not null
);

```

INSERT INTO all_books (name, rating, ano_publicação) VALUES
('O Senhor dos Anéis', 4.9, 1954),
('O Hobbit', 4.8, 1937),
('1984', 4.6, 1949),
('A Revolução dos Bichos', 4.4, 1945),
('Cem Anos de Solidão', 4.7, 1967),
('O Pequeno Príncipe', 4.8, 1943),
('Harry Potter e a Pedra Filosofal', 4.7, 1997),
('Harry Potter e o Cálice de Fogo', 4.6, 2000),
('O Código Da Vinci', 3.9, 2003),
('A Garota no Trem', 3.8, 2015),
('The Pragmatic Programmer', 4.8, 1999),
('Python para Data Science', 4.3, 2020),
('Introdução à Estatística', 4.0, 2012),
('Machine Learning na Prática', 4.5, 2019),
('Deep Learning Aplicado', 4.6, 2021),
('Estruturas de Dados em Python', 4.4, 2018),
('Algoritmos: Teoria e Prática', 4.9, 2009),
('Banco de Dados Relacionais', 4.2, 2015),
('Engenharia de Software Moderna', 4.3, 2017);


---

>realize uma busca dos mais bem avaliados
```sql
select name,ano_publicação,rating from all_books 
order by rating desc;
```

>retorne a media da avaliaçao de todos os livros
```sql
SELECT AVG(rating) FROM all_books;
```

>retorne o nome e o ano dos 10 livros mais velhos
```sql
select name,ano_publicação from all_books
order by ano_publicação asc
limit 10;
```

-retorne uma lista ordenada pelo nome com os 5 livros mais novos
```sql
select * from all_books
order by ano_publicação 
limit 5;
```

-retorne uma lista com 10 primerios filmes com as piores avaliaçoes ,ordenados pelo nome do filme
```sql
select name, ano_publicação, rating 
from all_books
order by rating asc, name asc
limit 10;
```

-retorne uma lista os os 5 filmes mais novos ordenados pelo melhor ao pior avalaido

```sql
select name, ano_publicação, rating
from all_books
order by ano_publicação desc, rating desc
limit 5;
```

---

criamos a tabela cidade que é descrita como abaixo,posteriormente iremos inserir os dados das cidades
```sql
CREATE TABLE city (
    id_cidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(27) NOT NULL,
    countrycode VARCHAR(3) NOT NULL,
    district VARCHAR(20),
    populations INT
);
```

```sql
INSERT INTO city (nome, country, district, populations) VALUES
('Tóquio', 'JPN', 'Kanto', 13960000),
('Délhi', 'IND', 'Delhi', 16787941),
('Xangai', 'CHN', 'Xangai', 24256800),
('São Paulo', 'BRA', 'Sudeste', 12325232),
('Cidade do México', 'MEX', 'Distrito Federal', 8918653),
('Cairo', 'EGY', 'Cairo', 9500000),
('Daca', 'BGD', 'Dhaka', 8906039),
('Mumbai', 'IND', 'Maharashtra', 12442373),
('Pequim', 'CHN', 'Pequim', 21705000),
('Osaka', 'JPN', 'Osaka', 8839469),
('Nova Iorque', 'USA', 'Nova Iorque', 8336817),
('Carachi', 'PAK', 'Sindh', 14910352),
('Buenos Aires', 'ARG', 'Buenos Aires', 2891082),
('Istambul', 'TUR', 'Marmara', 15029231),
('Calcutá', 'IND', 'Bengala Ocidental', 4486679),
('Lagos', 'NGA', 'Lagos', 9000000),
('Rio de Janeiro', 'BRA', 'Sudeste', 6748000),
('Tianjin', 'CHN', 'Tianjin', 11000000),
('Paris', 'FRA', 'Île-de-France', 2148327),
('Londres', 'GBR', 'Inglaterra', 8982000),
('Moscou', 'RUS', 'Moscou', 11920000),
('Seul', 'KOR', 'Seul', 9776000),
('Jacarta', 'IDN', 'Java Ocidental', 10187595),
('Bangkok', 'THA', 'Bangkok', 8280925),
('Teerã', 'IRN', 'Teerã', 8846782),
('Hong Kong', 'HKG', 'Hong Kong', 7451000),
('Bagdá', 'IRQ', 'Bagdá', 6760000),
('Toronto', 'CAN', 'Ontário', 2930000),
('Sydney', 'AUS', 'Nova Gales do Sul', 5312163),
('Cidade do Cabo', 'ZAF', 'Cabo Ocidental', 433688);

```
#Exercicio
1. retorna uma Query com todos os atributos,de todas as cidades do japao,utilize o countrycode para tal ação

```sql
select * city 
WHERE countrycode  ='JPN';
 
```
2. utilizando a ordem ascendente,retorne do todos os pais do menos populoso para o pais mais populoso

```sql
select * city 
order by countrycode ;
```

3. ordenar de ordem descentes,ou seja as cidades mais populosa para a menos populosa

```sql
select * city
 order by countrycode desc;
```

4.retorne a quantidade de cidades

```sql
SELECT count (*) 
FROM city;
```

5.retorne a quantidade de paises,sem duplicados

```sql
SELECT COUNT(DISTINCT country)
 FROM city;
```

6.retorne os 5 primeiros paises da listar em ordem descrente,sem duplicatas


```sql
SELECT DISTINCT country
ORDER BY country DESC 
LIMIT 5;
```

---

7.A área de telemarketing está organizando uma campanha e precisa que você levante alguns dados para que eles consigam entrar em contato com os clientes da empresa. À partir de uma tabela chamada 'cadastro' selecione todos os clientes que estão localizados nela e as informações das colunas 'Id', 'CPF', 'Primeiro_Nome', 'Idade'.


```sql
CREATE TABLE cadastro (
 id_ INT AUTO_INCREMENT not null,
 CPF VARCHAR(11)  not null,
 Primeiro_Nome VARCHAR(30)NOT NULL,
 Sobrenome_Nome VARCHAR(120) NOT NULL,
 idade int NOT NULL,
 cidade_origem VARCHAR(120),
 pais_de_origem VARCHAR(120),
 PRIMARY KEY(CPF),
 UNIQUE(CPF)
)
```

```sql
INSERT INTO cadastro (CPF, Primeiro_Nome, Sobrenome_Nome, idade, cidade_origem, pais_de_origem)
VALUES 
(123456789, 'Lucas', 'Silva Oliveira', 28, 'Belo Horizonte', 'Brasil'),
(234567890, 'Ana', 'Beatriz Souza', 34, 'Porto', 'Portugal'),
(345678901, 'John', 'Michael Doe', 42, 'Nova York', 'EUA'),
(456789012, 'Mariana', 'Lopes Ferreira', 22, 'Luanda', 'Angola'),
(567890123, 'Elena', 'Rodríguez', 31, 'Madri', 'Espanha'),
(123456789, 'Tiago', 'Silva Oliveira', 28, 'Belo Horizonte', 'Brasil'),
(234567890, 'Ana', 'Beatriz Souza', 34, 'Porto', 'Portugal'),
(345678901, 'John', 'Michael Doe', 42, 'Nova York', 'EUA'),
(456789012, 'Mariana', 'Lopes Ferreira', 22, 'Luanda', 'Angola'),
(567890123, 'Elena', 'Rodríguez', 31, 'Madri', 'Espanha');

```

'cadastro' selecione todos os clientes que estão localizados nela e as informações das colunas 'Id', 'CPF', 'Primeiro_Nome', 'Idade'.

```sql
SELECT Id, CPF, Primeiro_Nome, Idade from cadastro;
```

DESAFIO 2: ​A área de telemarketing quer que o arquivo esteja ordenado de forma ascendente pela idade, i.e., contendo os mais novos nas primeiras linhas e os mais velhos nas últimas. Realize este ajuste na consulta feita no desafio 1.


```sql
(SELECT column_name FROM table_name ORDER BY column_name ASC LIMIT 1)
UNION ALL
(SELECT column_name FROM table_name ORDER BY column_name DESC LIMIT 1);
```


desafio 3:​Parece haver um problema na tabela 'cadastro' do desafio 1. Como uma forma de estudar uma amostra dela, você decide pegar somente as primeiras 20 linhas. Escreva uma consulta semelhante ao que foi feito no desafio 1, mas contendo apenas as 20 primeiras linhas.


```sql
SELECT CPF, Primeiro_Nome
FROM cadastro
limit 20;
```
​

DESAFIO 4: ​Depois de muito investigar, você viu que não há nenhum problema na tabela, somente um cadastro mal feito, algo bem pontual. Delete o cadastro de Id número 100.

```sql
DELETE FROM cadastro
 WHERE Id=100;

```


​DESAFIO 5: ​Após eliminar o cadastro incorreto do Id de número 100 e reescrever a consulta do desafio 1, você agora precisa passar para seu chefe qual a idade média dos clientes da empresa. Escreva a query que realiza essa consulta

```sql
SELECT AVG(idade) FROM cadastro;

```
# Diagrama de venn e Como são os Possiveis JOINS

sql ver o diagama de venn
pense que existe dois conjuntos A E B
esse conjuntos seram chamados de Tabelas A e B
 no left join todos os itens do conjunto A incluidos os elementos ou itens do conjunto B ou seja os elementos apenas do conjunto A + a intersecçao do conjunto A com o conjunto B

os mesmo acontece no right join
todos os elementos do conjunto B incluidos os elemets que percentem unicamente ao conjunto B e a intersecçao do conjunto B com o conjunto A,ou seja os elementos que percentem tanto  ao conjunto A como ao conjunto B
sao elementos COMUNS ou que Fazem parte de AMBOS os conjuntos


o inner join ele é apenas a intersecçao dos dos conjuntos
o full outer join é a uniao de ambos os conjutnos
- INNER JOIN (Junção Interna): Retorna apenas os registros que possuem correspondência em ambas as tabelas.
- LEFT JOIN (Junção Externa à Esquerda): Retorna todos os registros da tabela da esquerda e os correspondentes da tabela da direita. Se não houver correspondência, retorna NULL.
- RIGHT JOIN (Junção Externa à Direita): Retorna todos os registros da tabela da direita e os correspondentes da tabela da esquerda. Se não houver correspondência, retorna NULL.
- FULL JOIN (Junção Externa Completa): Retorna todos os registros de ambas as tabelas, preenchendo com NULL os valores ausentes onde não houver correspondência.






