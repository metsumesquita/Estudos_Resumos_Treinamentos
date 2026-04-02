#NoSQL


Um banco de dados não relacional é essencialmente um termo abrangente para qualquer banco de dados que não armazena dados em um formato rígido, como uma tabela. Também conhecidos como "bancos de dados NoSQL" porque geralmente não exigem SQL para navegação.

Os bancos de dados não relacionais surgiram para possibilitar tipos de dados não estruturados e semiestruturados, como texto e imagens de formato livre, que não se encaixam perfeitamente em tabelas relacionais.


Os bancos de dados NoSQL, também conhecidos como bancos de dados com propósito específico, são projetados para modelos de dados específicos e armazenam dados em esquemas flexíveis que se escalam facilmente para aplicações modernas
os bancos de dados NoSQL são amplamente reconhecidos por sua facilidade de desenvolvimento, funcionalidade e performance em escala
As aplicações modernas enfrentam vários desafios que podem ser resolvidos pelos bancos de dados NoSQL. 
Por exemplo, as aplicações processam um grande volume de dados de fontes diferentes, como mídias sociais, sensores inteligentes e bancos de dados de terceiros. Todos esses dados díspares não se encaixam perfeitamente no modelo relacional.
A aplicação de estruturas tabulares pode levar a problemas de redundância, duplicação de dados e performance em grande escala. Os bancos de dados NoSQL são criados especificamente para modelos de dados não relacionais e têm esquemas flexíveis para criar aplicações modernas. Eles são amplamente reconhecidos por sua facilidade de desenvolvimento, funcionalidade e performance em escala. 

O NoSQL abrange uma ampla gama de tecnologias de banco de dados projetadas para atender às demandas dos aplicativos modernos. Banco de dados NoSQL facilitam a implementação e o armazenamento de uma grande variedade de tipos de dados e são excelentes em termos de desempenho - até que você precise de consistência de dados e comece a aplicar técnicas encontradas em DBMSs que reduzem o desempenho.


Os tipos comuns de bancos de dados não relacionais são:

Bancos de dados gráficos que armazenam dados como "nós" (representando entidades) e "edges" (representando relações entre elas). Os bancos de dados gráficos são frequentemente usados para rastrear relacionamentos, como as conexões entre usuários de um site de rede social. 

Os bancos de dados de documentos(document database) armazenam dados como documentos, incluindo formatos como JSON, XML e BSON. Os bancos de dados de documentos são comuns em sistemas de gerenciamento de conteúdo. 

Os bancos de dados valor-chave(key-value store) armazenam informações como pares de valores-chave, em que as chaves são identificadores exclusivos (como um ID de carrinho de compras digital) e os valores são matrizes de dados (como os itens no carrinho). 

Bancos de dados de colunas amplas utilizam linhas e colunas de forma muito semelhante aos bancos de dados relacionais. A diferença é que cada linha pode ter seu próprio conjunto distinto de colunas que armazenam informações diferentes das outras linhas. Bancos de dados de colunas amplas são frequentemente usados com data warehouses, onde os dados devem ser extraídos de várias fontes e centralizados.

outros bancos de dados não relacional sao os :column family store, Iot, gaming data , social midia data , enterprise,grafos,orientado a objetos


exemplos de bancos de dados NoSQL
cassandra,mongoDB,aws,azure,redis,neo4j


As principais diferenças entre um banco de dados NoSQL e um banco de dados SQL 

NoSQL		
O NoSQL abrange uma série de tipos de bancos de dados, desde gráficos e valores-chave até documentos e colunas, e cada um deles tem um mecanismo de armazenamento de dados diferente.
Normalmente, os dados são armazenados em um modelo relacional em que as colunas contêm pontos de dados e as linhas compreendem todas as informações referentes a uma única entidade.
Flexibilidade	Como os esquemas são dinâmicos por natureza, as informações podem ser atualizadas em tempo real.
No SQL, cada registro está em conformidade com um esquema predefinido em que as colunas devem ser determinadas e bloqueadas antes que os dados possam ser inseridos e não podem ser alterados posteriormente sem ficar off-line e modificar todo o banco de dados.

Conformidade com o ACID	O NoSQL enfatiza o desempenho em detrimento da integridade dos dados e a maioria dos sistemas NoSQL compromete a conformidade com ACID em prol do desempenho, portanto, as organizações usam o NoSQL para tipos de dados não afetados pela consistência.
Por padrão, os bancos de dados SQL ativam a conformidade com ACID, embora a maioria ofereça opções para favorecer o desempenho em detrimento da integridade dos dados em algumas operações (por exemplo, a replicação assíncrona entre sites pode causar perda de dados em caso de falha).

Acesso	O acesso é permitido em padrões bem definidos e restritos que tornam o desempenho e a escalabilidade confiáveis e esperados.	Não é conhecido de antemão e, portanto, requer suposições que são então traduzidas em definições de índice. 

O acesso é permitido de acordo com padrões bem definidos e restritos que garantem desempenho e escalabilidade confiáveis e previsíveis.    Ele não é conhecido antecipadamente e, portanto, requer suposições que são então traduzidas em definições de índices.  

Os bancos de dados NoSQL seguem o teorema CAP. O teorema CAP afirma que um sistema computacional distribuído não pode garantir Consistência, Disponibilidade e Tolerância à Partição ao mesmo tempo. Os bancos de dados NoSQL são sistemas BASE (Basicamente Disponíveis, Estado Flexível, Consistência Eventual). Esses bancos de dados garantem a disponibilidade. Eles se tornam consistentes ao longo do tempo quando não recebem entradas.
Bancos de dados NoSQL no ecossistema de Big Data:

As características do Big Data são Volume, Velocidade e Variedade. Para lidar com o problema dos altos volumes de Big Data, precisamos de bancos de dados altamente escaláveis. Os bancos de dados NoSQL, que são eficientes em vários nós, são altamente escaláveis e são os mais adequados para o ecossistema de Big Data. O Big Data vem em diferentes formatos, o que constitui a característica de “Variedade”. Os bancos de dados relacionais não são adequados para esse tipo de dados, pois seguem um esquema específico. Os bancos de dados NoSQL são adequados para dados semiestruturados, e sua flexibilidade — sem esquema fixo — os torna mais adequados para lidar com a característica de variedade do Big Data.

Os bancos de dados NoSQL possibilitam a computação distribuída, permitindo que centros de dados sejam instalados em qualquer lugar do mundo utilizando essas tecnologias. Essa abordagem pode ser empregada para designar um centro de dados a uma região específica com o objetivo de coletar dados, o que pode melhorar as velocidades de armazenamento de dados em cada região. Os bancos de dados NoSQL podem ser utilizados dessa forma para resolver a questão da velocidade no Big Data.

A integração dos bancos de dados NoSQL no ecossistema de Big Data torna o armazenamento e a análise de dados mais fáceis e eficientes.

Bancos de dados NoSQL nos próximos 3 a 5 anos

Na minha opinião, o Big Data é o principal impulsionador do setor de bancos de dados NoSQL. O aumento ano a ano na geração de dados não estruturados exigirá sistemas altamente escaláveis, capazes de armazenar dados sem quaisquer restrições quanto ao formato dos dados gerados.

Com muitas grandes empresas, como a Amazon e a Oracle, oferecendo serviços NoSQL, o setor de bancos de dados NoSQL está pronto para crescer nos próximos anos. O fato de o NoSQL ser de código aberto, o que significa que esses serviços são econômicos, também é uma das razões pelas quais muitas empresas migrariam para bancos de dados NoSQL.


Os bancos de dados NoSQL são altamente adequados para a análise de dados em imagens, vídeos, textos e tweets, o que representa uma vantagem em relação aos bancos de dados relacionais.

O NoSQL não possui uma linguagem de consulta específica, como o SQL dos bancos de dados relacionais, que pudesse ser usada para acessar bancos de dados de todas as empresas. Isso constitui um obstáculo ao crescimento dos bancos de dados NoSQL atualmente; espero que, nos próximos anos, surja uma linguagem de consulta padrão.

Com todas essas vantagens e o crescimento do setor, haverá um aumento nos recursos humanos capazes de trabalhar com bancos de dados NoSQL.

Apoie suas conclusões com exemplos abrangentes de como os bancos de dados NoSQL são usados hoje no mundo real

O Craigslist é uma comunidade de classificados e anúncios de emprego que atende 570 cidades em 50 países. São publicados 1,5 milhão de classificados todos os dias. Inicialmente, utilizava-se o MySQL, mas a empresa migrou para o MongoDB, um banco de dados NoSQL, devido à sua escalabilidade e capacidade de acomodar alterações de esquema no banco de dados em produção.

A Coursera6 é uma plataforma educacional online. Ela mantém parcerias com universidades em todo o mundo para oferecer educação. Em 2014, contava com 10 milhões de alunos. Ela migrou do banco de dados MySQL para um banco de dados NoSQL, o Cassandra. A Coursera enfrentava problemas de disponibilidade devido à arquitetura do MySQL. O Cassandra resolveu esse problema, pois possui alta disponibilidade e escalabilidade linear flexível, o que permitiu que a plataforma crescesse para qualquer tamanho

Conjuntos de dados difíceis de armazenar e analisar por qualquer ferramenta de banco de dados de software são chamados de big data. Devido ao crescimento dos dados, surge uma questão: com base nas tendências recentes na área de TI, como os dados serão processados de forma eficaz? Há uma demanda por ideias, técnicas, ferramentas e tecnologias para lidar com e transformar grandes volumes de dados em valor comercial e conhecimento. As principais características das soluções NoSQL, que nos ajudam a lidar com grandes quantidades de dados, estão descritas abaixo.
https://aws.amazon.com/pt/nosql//
https://www.ibm.com/think/topics/nosql-databases