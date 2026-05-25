
DROP TABLE IF EXISTS cadastro;
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
);

INSERT INTo cadastro (CPF, Primeiro_Nome, Sobrenome_Nome, idade, cidade_origem, pais_de_origem) VALUES (166666789, 'Lucas', 'Silva Oliveira', 28, 'Belo Horizonte', 'Brasil'),
(234567890, 'Ana', 'Beatriz Souza', 34, 'Porto', 'Portugal'),
(345678901, 'John', 'Michael Doe', 42, 'Nova York', 'EUA'),
(456789012, 'Mariana', 'Lopes Ferreira', 22, 'Luanda', 'Angola'),
(567890123, 'Elena', 'Rodríguez', 31, 'Madri', 'Espanha'),
(124566789, 'Tiago', 'Silva Oliveira', 28, 'Belo Horizonte', 'Brasil'),
(132457790, 'Ana', 'Beatriz Souza', 34, 'Porto', 'Portugal'),
(244779908, 'John', 'Michael Doe', 42, 'Nova York', 'EUA'),
(457258214, 'Mariana', 'Lopes Ferreira', 22, 'Luanda', 'Angola'),
(567890532, 'Elena', 'Rodríguez', 31, 'Madri', 'Espanha'),
(876543123, 'Fernanda', 'Rodríguez', 34, 'Madri', 'Espanha'),
(123456789, 'Matheus', 'Silva Da Porciuncula',1, 'Belo Horizonte', 'Brasil'),
(232344890, 'Igor', 'Leal De Mesquita',20, 'Porto', 'Portugal'),
(895655901, 'Erick', 'Fagundes Figueira', 15, 'Nova York', 'EUA'),
(566789012, 'Joana', 'Luizer', 22, 'Luanda', ''),
(563890125, 'Catherine', 'Olivera',3, 'Madri', 'Portugal');

/*
atividade:
retorne da tabela cadastro todos os clientes dela,
retornando apenas as colunas 'Id', 'CPF', 'Primeiro_Nome', 'Idade'.
*/
SELECT Id, CPF, Primeiro_Nome, Idade from cadastro;

/*
DESAFIO 2:
 ​A área de telemarketing quer que o arquivo esteja ordenado de forma ascendente pela idade, i.e.,
 contendo os mais novos nas primeiras linhas e os mais velhos nas últimas.
 Realize este ajuste na consulta feita no desafio 1. 
*/

(SELECT column_name FROM table_name ORDER BY column_name ASC LIMIT 1)
UNION ALL
(SELECT column_name FROM table_name ORDER BY column_name DESC LIMIT 1);


/*
retorne a coluna do cpf e o primeiro nome da pessoa cadastrada,
apenas os 5 primerios
*/

SELECT CPF, Primeiro_Nome
FROM cadastro
limit 5;


/*
precisa passar para seu chefe qual a idade média dos clientes da empresa. 
Escreva a query que realiza essa consulta
*/

SELECT AVG(idade) FROM cadastro;


/*
DESAFIO 6: A empresa deseja saber quantos clientes são maiores de idade. Conte o número de clientes na tabela 'cadastro' que têm 18 anos ou mais.​
 Retorne a coluna com a contagem com o nome 'Maior_de_Idade​'.
*/

SELECT COUNT(*) AS total_maiores_idade
FROM cadastro
WHERE idade >= 18;


/*
DESAFIO 7: A área financeira precisa que você identifique na tabela 'cadastro' quantos clientes têm entre 30 e 40 anos. Escreva uma query para contar esses clientes.​ 
A coluna de contagem deve ter o nome "Qtd_Clientes_30_e_40".
*/

SELECT COUNT(*) AS Qtd_Clientes_30_e_40
FROM cadastro
WHERE idade between 30 and 40;


/*
DESAFIO 9: A área de marketing quer enviar promoções apenas para os 10 clientes
 mais jovens. Selecione os Ids e Primeiros Nomes dos 10 clientes mais jovens.​
*/

SELECT id, Primeiro_Nome
from cadastro 
order by idade asc
limit 10;


/*
DESAFIO 10: Alguns clientes foram cadastrados erroneamente com 'Idade' igual a zero. 
Encontre esses clientes e exiba seus Ids e Primeiros Nomes.
*/

SELECT id, Primeiro_Nome
from cadastro
where idade=0;
