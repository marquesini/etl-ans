# etl-ans
Este projeto é um Data Pipeline gerenciado pelo Apache Airflow.
O ambiente está configurado para funcionar a partir do Docker.

O docker-compose.yaml utilizado foi o sugeriro pelo [Quick Start](https://airflow.apache.org/docs/apache-airflow/stable/start/docker.html) da documentação do Apache Airflow.

A instalação dos pacotes de idioma pt_BR foi a única customização necessária na imagem. Para isso eu segui a sugestão que se encontra na linha #44 do docker-compose.yaml baixado de curl -LfO 'https://airflow.apache.org/docs/apache-airflow/stable/docker-compose.yaml', criando um Dockerfile para isso.

A base de dados de destino utilizada para esse ETL foi a própria base PostgreSQL do Airflow. Apenas criei um *schema* diferente para separar os dados da base de configuração do ambiente.

O docker-compose.yaml também teve pequenos ajustes. A porta de acesso para o serviço web foi alterada para 81 para não conflitar com outros serviços ativos no meu ambiente.

**Instruções para iniciar o contâiner**:
Executar os seguintes comandos no Linux:
* echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env
* docker-compose build
* docker-compose up -d

Acessar o Apache Airflow pelo navegador:
* http://localhost:8081/home
* user: airflow
* pass: airflow
