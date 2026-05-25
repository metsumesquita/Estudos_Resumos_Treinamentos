#Nível 5: Tópicos Avançados e Ecossistema de Dados (BI e Big Data)

reorganizar os assuntos
o que é BI
quais sao as etapas Comuns do BI
Qual o objetivo do BI
qual o impacto final que o BI tem
os componentes principais da análise para analise dos dados
O que é o Looker
O que é o Power Bi
como retirar colunas
como tirar linhas duplicadas de uma coluna
como mesclar tabelas
quando relacionar as tabela
mesclar vesus relacionar 
pivot and unpivot


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

#os componentes principais da análise para analise dos dados


#Análise descritiva
A análise descritiva ajuda a responder perguntas sobre o que aconteceu com base em dados históricos. As técnicas de análise descritiva resumem grandes modelos semânticos para descrever os resultados aos stakeholders.

Ao desenvolver KPIs (indicadores chave de desempenho), essas estratégias podem ajudar a acompanhar o sucesso ou a falha dos objetivos principais. Métricas como ROI (retorno sobre o investimento) são usadas em muitos setores e métricas especializadas são desenvolvidas para acompanhar o desempenho em setores específicos.

Um exemplo de análise descritiva é a geração de relatórios para fornecer uma exibição dos dados financeiros e de vendas de uma organização.

#Análise de diagnóstico

A análise de diagnóstico ajuda a responder perguntas sobre por que eventos aconteceram. As técnicas de análise de diagnóstico complementam a análise descritiva básica e usam as conclusões de análises descritivas para descobrir a causa desses eventos. Assim, os indicadores de desempenho são investigados mais detalhadamente para descobrir por que esses eventos ficaram melhores ou piores. Esse processo geralmente ocorre em três etapas:

Identificar anomalias nos dados. Essas anomalias podem ser alterações inesperadas em uma métrica ou em um mercado específico.

Coletar dados relacionados a essas anomalias.

Usar técnicas estatísticas para descobrir relacionamentos e tendências que explicam essas anomalias.


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

*Editor Avançado e Linguagem M*

*O Power Query utiliza a linguagem M para expressar transformações. O Editor Avançado permite visualizar e editar o código M diretamente.*

Modo de armazenamento de tabela
Cada tabela de modelo do Power BI (exceto pelas tabelas calculadas) tem uma propriedade de modo de armazenamento. A propriedade de modo de armazenamento pode ser Importação, DirectQuery ou Duplo, e determina se os dados da tabela são armazenados no modelo.

Importação – as consultas recuperam dados armazenados, ou armazenados em cache, no modelo.
DirectQuery – as consultas passam para a fonte de dados.
Duplo – as consultas recuperam dados armazenados ou passam para a fonte de dados. O Power BI determina o plano mais eficiente, esforçando-se para usar dados armazenados em cache sempre que possível.

---
Consulta analítica
Os relatórios e dashboards do Power BI precisam consultar um conjunto de dados. Quando o Power BI visualiza dados de um conjunto de dados, ele prepara e envia uma consulta analítica. Uma consulta analítica produz um resultado de consulta de um modelo que é fácil de entender, especialmente quando visualizado.

Uma consulta analítica tem três fases que são executadas nesta ordem:

Filtro
Grupo
Resumir
A filtragem (às vezes chamada de segmentação) restringe a um subconjunto dos dados do modelo. Os valores de filtro não ficam visíveis no resultado da consulta. A maioria das consultas analíticas aplica filtros porque é comum filtrar segundo um período e, geralmente, outros atributos. A filtragem ocorre de diferentes maneiras. Em um relatório do Power BI, você pode definir filtros no nível do relatório, da página ou do visual. Os layouts de relatório geralmente incluem visuais de segmentação para filtrar os visuais na página do relatório. Quando o modelo impõe a RLS (segurança no nível da linha), ele aplica filtros a tabelas de modelo para restringir o acesso a dados específicos. As medidas, que resumem os dados do modelo, também podem aplicar filtros.

O agrupamento (às vezes chamado de divisão) divide o resultado da consulta em grupos. Cada grupo também é um filtro, mas ao contrário da fase de filtragem, os valores de grupo ficam visíveis no resultado da consulta. Por exemplo, o agrupamento por cliente filtra cada grupo por cliente.

O resumo produz um resultado de valor único. Normalmente, um visual de relatório resume um campo numérico usando uma função de agregação. As funções de agregação incluem soma, contagem, mínimo, máximo, entre outras. Você pode obter um resumo simples agregando uma coluna ou pode obter um resumo complexo criando uma medida com uma fórmula DAX.

Considere um exemplo: uma página de relatório do Power BI inclui uma segmentação para filtrar por apenas um ano. Também há um visual de gráfico de colunas que mostra as vendas trimestrais para o ano filtrado.

---
nosso primeira atividade 
para realizarmos o carregamento dos dados iremos em get data, selecionamos excel workbook wuando for uma csv.
Com os dados carregamos selecionamos o transform data para abrirmos o power query.Nele podemos alterar nossos dados,corrigindo tipos,alterado valores de alguns variaveis,organizando as colunas, entre outras coisas.

existe quase uma passo a passo
olhar se o tipo das colunas esta correto
podemos usar o change type para modificar o tipo , corrindo quando necessario.

ao tratarmos ou lidarmos com erros de digitação nos dados de tipos textos.
utilizando o replace value
ja o trim e o clean sao duas formas diferentes de se livrar de espaços sobrando.
o trim retira espaços em branco que estao sobrando no inicio e no final do string
ja o clean retira os espaços tanto no inicio,quanto no meio e tambem no final do string 

podemos tambem reordenar as colunas




-----
#mesclar vs 
Mescle tabelas quando você precisar de um conjunto de dados simplificado para uma análise específica ou ao lidar com conjuntos de dados menores em que o impacto no desempenho é mínimo. A mesclagem também pode ser uma boa opção quando você precisa realizar uma limpeza e transformação extensivas dos dados

---
#unpivot
realizando o unpivot tornamos as colunas selecionadas linhas
de tal forma que se tornoumuito mais pratico e facil a leitura dos dados


---
#DESIGN DE ESTRELA
Design do esquema em estrela
Para produzir um modelo tabelar otimizado e fácil de usar, recomendamos que você produza um design com esquema de estrela. O design com esquema em estrela é uma abordagem de modelagem madura amplamente adotada por data warehouses relacionais. Ele requer que você classifique as tabelas de modelo como tabelas de dimensõeso ou de fatos.

Tabelas de dimensões descrevem as entidades de negócios; os itens que você modela. As entidades podem incluir produtos, pessoas, locais e conceitos, incluindo o próprio tempo. Tabelas de fatos armazenam observações ou eventos e podem ser, por exemplo, ordens de vendas, saldos de ações, taxas de câmbio ou leituras de temperatura. Uma tabela de fatos contém colunas chave de dimensão relacionadas a tabelas de dimensões e colunas de medidas numéricas. Uma tabela de fatos forma o centro de uma estrela, e as tabelas de dimensões relacionadas a ela formam as pontas da estrela.

Em uma consulta analítica, as colunas da tabela de dimensões filtram ou agrupam. As colunas das tabelas de fatos são resumidas.

https://learn.microsoft.com/pt-br/power-bi/guidance/star-schema

----
#ESQUEMA DE FLOCO DE NEVE SNOWFLAKE





---
*Fluxos de Dados (Dataflows)*

*Executam transformações do Power Query na nuvem e gravam a saída em:*

*· Dataverse
· Azure Data Lake*

*Podem ser usados por múltiplos produtos.*

---


*Looker*

*Plataforma de BI adquirida pelo Google em 2019. Permite explorar dados com Machine Learning, visualizações e relatórios.*

*Características:*

*· Personalizável
· Dinâmico
· Compartilhamento facilitado
· Conectividade com Google Ads, BigQuery, MySQL, PostgreSQL, CSV, Sheets*

*O Looker Studio é a evolução do antigo Google Data Studio.*


