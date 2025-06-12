# Green Energy Provider – Consultas SQL Complexas

Este projeto foi desenvolvido para a disciplina de Banco de Dados, com o objetivo de realizar **consultas SQL complexas** sobre um conjunto de tabelas fornecidas pelo professor, relacionadas ao setor de energia sustentável.

## Integrantes

- Guilherme Britto (RM558475)
- Thiago Mendes (RM555352)
- João Victor Santis (RM555287)

## Objetivo do Projeto

O foco do trabalho foi a elaboração de consultas SQL que envolvem múltiplas tabelas, agregações, filtros e ordenações, visando extrair informações relevantes sobre projetos de energia sustentável, tipos de fontes, regiões e emissões de carbono.

## Estrutura do Projeto

O arquivo principal do projeto é:

- **1TDSPK_GS_GEP.sql**: Contém todas as consultas SQL desenvolvidas.

## Consultas Realizadas

### 1. Quantidade de projetos por tipo de fonte

Consulta que retorna o nome da fonte e a quantidade de projetos, exibindo apenas fontes com mais de dois projetos.

### 2. Custo total de projetos de energia Solar e Eólica

Soma dos custos dos projetos que utilizam fontes Solar ou Eólica, agrupados por projeto.

### 3. Projetos em andamento com custo elevado

Lista os projetos em andamento cujo custo é superior a 500.000.

### 4. Média de custo dos projetos por região

Calcula a média de custo dos projetos em cada região, ordenando do maior para o menor.

### 5. Projetos por região e tipo de fonte com alta emissão

Mostra, por região e tipo de fonte, a quantidade de projetos e a média de emissão de carbono, filtrando apenas médias acima de 5.000.
