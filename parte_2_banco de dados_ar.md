

#Tipos de Dados e Armazenamento

Dados Semiestruturados

São informações que não seguem um modelo rígido de tabela, mas possuem alguma organização, como tags ou marcadores. 

Exemplos: XML, JSON,HTML.

Esses dados são consumidos por bancos de dados como Azure Cosmos DB, MongoDB, Azure Table Storage, Apache Cassandra e outros.

---

Dados Não Estruturados

Incluem fotos, vídeos, áudio, arquivos binários, etc. Podem ser armazenados no Azure Blob Storage(Iremos aborda isto mais no futuro)

---

#Diferentes tipos , Diferentes formas de armazenar os dados


Os bancos de dados não são a única maneira de organizar dados e as organizações geralmente utilizam diferentes lojas de dados para apoiar iniciativas diferentes.

Os bancos de dados são construídos principalmente para captura automática de dados, consultas rápidas e processamento de transações.  

Data lakes são ambientes de armazenamento de baixo custo projetados para lidar com grandes quantidades de dados brutos, estruturados e não estruturados. Ao contrário dos bancos de dados, os data lakes geralmente não limpam, validam nem normalizam os dados. Normalmente, armazenam grandes quantidades de dados para possibilitar atividades como treinamento de IA e análise de big data, nas quais o desempenho em tempo real é menos importante.

Data warehouses são construídos para possibilitar esforços de análise de dados, business intelligence e ciência de dados. Agregam dados de vários bancos de dados, limpam e preparam para estarem prontos para uso. 

Data lakehouses combinam os recursos de warehouses e lakes em uma única solução de gerenciamento de dados. Um data lakehouse combina armazenamento de baixo custo com um mecanismo de consulta de alto desempenho e governança inteligente de metadados. Isso possibilita que as organizações armazenem grandes quantidades de dados estruturados e não estruturados e usem facilmente esses dados para esforços de IA, ML e análise de dados.


