#Nível 5: Tópicos Avançados e Ecossistema de Dados (BI e Big Data)


*O que é Business Intelligence?*

*BI é um conjunto de processos e tecnologias para coletar, gerenciar e analisar dados organizacionais, gerando insights que orientam estratégias e operações.*

*Está intimamente ligado ao processo de ETL.*

---

*Etapas do BI*

1. *Coleta de dados: obtenção de dados brutos de diversas fontes.*
2. *Armazenamento: centralização em banco de dados ou nuvem.*
3. *Processamento: limpeza, transformação e preparação.*
4. *Visualização: apresentação por gráficos, tabelas, painéis.*
5. *Análise: exploração dos dados para obter insights.*

---

*Objetivo do BI*

*Responder perguntas de negócios com base em dados concretos:*

*· Por que as vendas caem em determinados meses?
· Quais produtos são mais vendidos em cada região?
· Como melhorar estratégias de marketing?*

*BI se aplica a qualquer empresa, de qualquer segmento.*

---

*Mercado de Dados*

*O mercado de dados está em forte crescimento, impulsionado pela transformação digital. Empresas buscam profissionais capazes de transformar dados brutos em insights valiosos.*

---

*Profissões de Dados*

*Engenharia de Dados*

*· Pipelines de dados, ETL, integração entre sistemas.
· Ferramentas: Cloud, Python, SQL, Spark, Git.*

*Análise de Dados*

*· Visualização, estatística descritiva, ETL.
· Ferramentas: Power BI, Tableau, Python, SQL.*

*Ciência de Dados*

*· IA, Machine Learning, estatística preditiva.
· Base: Matemática, cálculo, álgebra linear. Ferramentas: Python, R, Cloud.*

---

*Looker*

*Plataforma de BI adquirida pelo Google em 2019. Permite explorar dados com Machine Learning, visualizações e relatórios.*

*Características:*

*· Personalizável
· Dinâmico
· Compartilhamento facilitado
· Conectividade com Google Ads, BigQuery, MySQL, PostgreSQL, CSV, Sheets*

*O Looker Studio é a evolução do antigo Google Data Studio.*

---

*Microsoft Power BI*

*Ferramenta completa de BI que permite preparação, modelagem, visualização, distribuição e governança de dados.*

*Ferramentas similares: Qlik, Tableau, Sisense, Domo, Zoho Analytics, Apache Superset, Metabase, Looker Studio.*

---

*Componentes do Power BI*

*· Power BI Desktop (criação)
· Power BI Service (compartilhamento e publicação)
· Power BI Mobile (acesso em dispositivos móveis)*

---

*Fluxo de Uso*

1. *Criar relatório no Desktop*
2. *Publicar no Service*
3. *Visualizar e interagir no Service ou Mobile*

---

*Blocos de Construção*

*· Modelos semânticos (conjuntos de dados prontos para análise)
· Visualizações (gráficos, tabelas, mapas etc.)*

*Aplicativo (App): coleção de relatórios e painéis organizados para consumo.*

---

*Conexões de Dados*

*APIs permitem inserir e extrair dados. O Power BI possui conexões nativas com dezenas de fontes.*

---

*Modos de Conexão*

1. *Importação*

*· Dados são copiados para o arquivo .pbix.
· Permite uso de M, DAX e modelagem completa.
· Pode ficar lento com grandes volumes.
· Fontes comuns: CSV, Excel, JSON, PDF, pastas.*

*Processo: Obter Dados > Selecionar fonte > Carregar ou Transformar.*

1. *DirectQuery*

*· Não copia dados; consulta a fonte em tempo real.
· Indicado para Big Data.
· Possui limitações com M e DAX.
· Fontes comuns: SQL Server, Snowflake, BigQuery.
· Boas práticas: Evitar SELECT *, usar filtros (WHERE) e selecionar apenas colunas necessárias.*

1. *Conexão Ao Vivo (Live)*

*· Usada com Analysis Services, modelos semânticos do Power BI, cubos ou SaaS.
· O Power BI não cria modelo local; apenas consome o modelo existente.*

---

*Fontes de Dados Disponíveis*

*· Arquivos: CSV, Excel, JSON, XML, PDF, Parquet, pastas
· Bancos relacionais: SQL Server, Oracle, MySQL, MariaDB, IBM DB2, Snowflake
· Big Data: Hadoop, Kusto, HDFS
· Análise: Analysis Services, AtScale, Essbase
· Online: Web, Exchange, SharePoint
· Outros: R Script, ODBC, APIs diversas*

---

*Relatórios Dinâmicos*

*Relatórios podem mudar conforme parâmetros, permitindo múltiplas visualizações sem duplicar modelos.*

---

*ETL*

*ETL = Extract, Transform, Load (Extrair, Transformar, Carregar)*

*· Extração: unir dados de múltiplas fontes (CRM, arquivos, APIs).
· Transformação: limpeza, padronização, agregação, conversão.
· Carga: envio para Data Warehouse, banco de dados, Data Lake etc.*

---

*Power Query*

*É o motor de transformação de dados do Power BI e Excel. Permite aplicar ETL com interface gráfica.*

*É a ferramenta oficial de ETL do Power BI e Excel.*

---

*Como o Power Query Ajuda*

*Profissionais gastam até 80% do tempo na preparação de dados. O Power Query auxilia:*

*· Conectando-se a centenas de fontes
· Aplicando mais de 350 transformações
· Automatizando processos
· Padronizando modelos
· Atualizando consultas automaticamente*

---

*Desafios e Soluções com Power Query*

*Desafio Como o Power Query Ajuda
Encontrar dados Conecta a várias fontes
Conectividade fragmentada Experiência consistente
Dados precisam ser reformulados Interface intuitiva
Modelagens únicas Consultas repetíveis
Mudanças de esquema Ajuste fácil
Volume, velocidade, variedade Permite trabalhar com subconjuntos
Atualizações Manual, agendada ou programada
Formatos variados Mais de 350 transformações*

---

*Experiências do Power Query*

*Power Query Online*

*Usado em: Power BI Dataflows, Microsoft Power Platform, Azure Data Factory.*

*Power Query Desktop*

*Usado em: Excel, Power BI Desktop.*

---

*Uso Prático no Power BI*

*· Transform Data (abre o Power Query)
· New Source (adicionar nova fonte)
· Enter Data (inserir dados manualmente)*

---

*Applied Steps (Etapas Aplicadas)*

*Cada transformação no Power Query gera um passo (step). É possível:*

*· Adicionar/remover passos
· Alterar tipos de dados
· Adicionar/remover colunas
· Manter/remover linhas
· Dividir colunas (Split)
· Promover primeira linha a cabeçalho*

---

*Transformações Comuns no Power Query*

*· Remover colunas
· Filtrar linhas
· Usar primeira linha como cabeçalho
· Mesclar / Acrescentar tabelas
· Pivotar / Despivotar colunas
· Transpor linhas ↔ colunas
· Contar linhas
· Preencher valores (para baixo/para cima)
· Extrair primeiros/últimos caracteres
· Executar scripts Python e R
· Funções estatísticas (soma, média, mediana)
· Converter colunas em listas
· Mover colunas*

---

*Fluxos de Dados (Dataflows)*

*Executam transformações do Power Query na nuvem e gravam a saída em:*

*· Dataverse
· Azure Data Lake*

*Podem ser usados por múltiplos produtos.*

---

*Editor Avançado e Linguagem M*

*O Power Query utiliza a linguagem M para expressar transformações. O Editor Avançado permite visualizar e editar o código M diretamente.*