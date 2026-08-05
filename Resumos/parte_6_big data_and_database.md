
#Assuntos abordados
#ABT
#big data
#mercado de dados



# Analytical Base Table ou Tabela Base Analítica ou ABT

é/funcionada da seguinte forma : é um formato padrao acordado previamente entre as pessoas da equipe que os dados devem ter.
esse estrutura em formato de tabela, onde cada linha representa uma unica analise, como o indentificador do usario(id do usuario),contendo as caracteristicas preditivas, as variaveis X, como tamanho,cor,validade e outros atributos e o desfecho ou o evento que se deseja preve que é a variavel Y ou tambem o target a ser previsto
usada especificamente para treinar algoritmos de Inteligência Artificial e Machine Learning

Como funciona no dia a dia da área de dadosA criação de uma ABT exige a união de várias bases de dados diferentes de um mesmo sistema ou empresa (por exemplo: unir a tabela de cadastros com a tabela de pagamentos e a de interações do usuário). Esse processo — que envolve filtros, agregações e cruzamento de tabelas — costuma ser feito utilizando bancos de dados ou plataformas de integração para garantir que tudo fique pronto para o treinamento de IA

----

#   O que é big data

paradigma do big data,
3 v velocidade,variedade e volume

o rede social produz uma quantidade absurda de informação,com diferentes tipos,de uma forma extremamente aburda de criação desses dados, como lidar com esses dados tem tempo real

foi o que deu esse grande boom ou ajudou acrescer a utilização de banco de dados no sql

 OS  7 V de Big DATA
 volume grande de dados
 velocidade os dados sao trnasmitidos  de modo rapido
 variedade analise diferente tipos e formatos de dados
 veracidade os dados sao verdadeiros e confiaveis
 valor os dados traze valor para uma empresa 
 viralidade os dados se espalham rapidamente
 viscodidade dificiuldade de navegar entre os dados,alem de ter incistencia dos dados

Different ways to handle Big Data problems:
1. The queries should be moved to the data rather than moving data to queries:

At the point, when an overall query is needed to be sent by a customer to all hubs/nodes holding information, the more proficient way is to send a query to every hub than moving a huge set of data to a central processor. The stated statement is a basic rule that assists to see how NoSQL data sets have sensational execution benefits on frameworks that were not developed for queries distribution to hubs. The entire data is kept inside hub/node in document form which means just the query and result are needed to move over the network, thus keeping big data’s queries quick.

2. Hash rings should be used for even distribution of data:

To figure out a reliable approach to allocating a report to a processing hub/node is perhaps the most difficult issue with databases that are distributed. With a help of an arbitrarily produced 40-character key, the hash rings method helps in even distribution of a large amount of data on numerous servers and this is a decent approach to uniform distribution of network load.

3. For scaling read requests, replication should be used:

In real-time, replication is used by databases for making data’s backup copies. Read requests can be scaled horizontally with the help of replication. The strategy of replication functions admirably much of the time.  

4. Distribution of queries to nodes should be done by the database:

Separation of concerns of evaluation of query from the execution of the query is important for getting more increased performance from queries traversing numerous hubs/nodes. The query is moved to the data by the NoSQL database instead of data moving to the query.
