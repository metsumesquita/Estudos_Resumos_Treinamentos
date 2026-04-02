
# Resumo de SQL

## 1. Definições

### O que é SQL?
SQL (*Structured Query Language*) é uma linguagem de programação utilizada para consultar, acessar, manipular, recuperar e armazenar dados em bancos de dados relacionais.

- **Padronização:** Tornou-se um padrão do ANSI em 1986 e da ISO em 1987.
- **Características:** As palavras-chave (*keywords*) do SQL **não diferenciam maiúsculas de minúsculas** (case insensitive).
- **Sintaxe:** Alguns sistemas de banco de dados exigem ponto e vírgula (`;`) ao final de cada instrução para separar múltiplos comandos.

### Estrutura de um Banco de Dados Relacional
- **Database Server (Instância):** É o nível superior. É onde todos os dados são armazenados.
- **Database:** Dentro de uma instância, existem vários bancos de dados, cada um organizado por categorias amplas.
- **Table (Tabela):** Dentro de um banco de dados, os dados são organizados em tabelas. É onde os dados realmente "vivem".
- **Field (Campo) / Column (Coluna):** Uma coluna em uma tabela que mantém informações específicas sobre todos os registros.
- **Record (Registro) / Row (Linha):** Cada entrada individual em uma tabela. É uma entidade horizontal.

### O que é RDBMS?
RDBMS (*Relational Database Management System*) é a base para o SQL e para sistemas modernos como MS SQL Server, IBM DB2, Oracle, MySQL e Microsoft Access.

### Principais Comandos SQL
- **SELECT** - Extrai dados de um banco de dados.
- **UPDATE** - Atualiza dados em um banco de dados.
- **DELETE** - Exclui dados de um banco de dados.
- **INSERT INTO** - Insere novos dados em um banco de dados.
- **CREATE DATABASE** - Cria um novo banco de dados.
- **ALTER DATABASE** - Modifica um banco de dados.
- **CREATE TABLE** - Cria uma nova tabela.
- **ALTER TABLE** - Modifica uma tabela.
- **DROP TABLE** - Exclui uma tabela.
- **CREATE INDEX** - Cria um índice (chave de busca).
- **DROP INDEX** - Exclui um índice.

### Tipos de Dados
- **Numéricos:** `INT`, `TINYINT`, `BIGINT`, `FLOAT`, `REAL`.
- **Data e Hora:** `DATE`, `TIME`, `DATETIME`.
- **Caracteres e Strings:** `CHAR`, `VARCHAR`, `TEXT`.
- **Unicode:** `NCHAR`, `NVARCHAR`, `NTEXT`.
- **Binários:** `BINARY`, `VARBINARY`.
- **Diversos:** `CLOB`, `BLOB`, `XML`, `CURSOR`, `TABLE`.

---

## 2. Exemplos com Trechos de Código

### SELECT (Selecionar dados)
Seleciona colunas específicas de uma tabela.
```sql
SELECT CustomerName, City FROM Customers;
```
Para selecionar todas as colunas:
```sql
SELECT * FROM Customers;
```

### SELECT DISTINCT (Valores únicos)
Retorna apenas valores distintos (sem duplicatas).
```sql
SELECT DISTINCT Country FROM Customers;
```
Contar quantos valores distintos existem em uma coluna:
```sql
SELECT COUNT(DISTINCT Country) FROM Customers;
```

### WHERE (Filtrar registros)
Filtra registros com base em uma condição.
```sql
SELECT * FROM Customers WHERE Country = 'Mexico';
```
Exemplo com múltiplas condições:
```sql
SELECT * FROM weather WHERE city = 'San Francisco' AND prcp > 0.0;
```

### ORDER BY (Ordenar resultados)
Ordena os resultados de uma consulta.
```sql
SELECT * FROM weather ORDER BY city;
SELECT * FROM pessoa ORDER BY nome_pessoa;
```

### INSERT INTO (Inserir dados)
Inserir um único registro:
```sql
INSERT INTO aluno (nome, nascimento) VALUES ('Matheus de Almeida Cantarutti', '1994-07-20');
```
Inserir múltiplos registros de uma só vez (separados por vírgula):
```sql
INSERT INTO aluno (nome, nascimento) VALUES 
  ('Ana', '2000-05-10'),
  ('Bruno', '1999-12-03'),
  ('Carla', '2001-07-22');
```

### CREATE TABLE (Criar tabela)
```sql
DROP TABLE IF EXISTS station;

CREATE TABLE station (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(21) NOT NULL,
    state VARCHAR(2) NOT NULL,
    lat_n DECIMAL(10,6),
    long_w DECIMAL(10,6)
);
```

### UPDATE (Atualizar dados)
```sql
UPDATE pessoa SET Id_endereço = 1 WHERE cpf = 10;
```

### DELETE (Remover dados)
Para remover linhas duplicadas, pode-se usar `SELECT DISTINCT` para visualizar antes de deletar.

---

## 3. Exercícios

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

2. Liste todos os produtos, mas mostrando apenas os 4 primeiros.
   ```sql
   SELECT id_produto, descCategoriaProduto FROM produtos LIMIT 4;
   ```

3.listar os alunas,nascidas em  003-01-01 e com o id maior que 300
   ```sql

   SELECT * FROM tabela_alunos WHERE aluno_genero = 'M' AND aluno_data = '2003-01-01' AND aluno_id > 300;

```