--1TDSPK RM558475 GUILHERME BRITTO
--1TDSPK RM555352 THIAGO MENDES
--1TDSPK RM555287 JO�O VICTOR SANTIS

--1. Quantidade de projetos por tipo de fonte)
SELECT f.nome, COUNT(*) 
FROM tipo_fontes f, regioes_sustentaveis r, projetos_sustentaveis p
WHERE f.id_tipo_fonte = p.id_tipo_fonte AND p.id_regiao = r.id_regiao
HAVING COUNT(*) > 2
GROUP BY f.nome 
ORDER BY 1;


--2. Custo total de projetos de energia Solar e Eólica)
SELECT id_projeto, descricao, SUM(custo) custo
FROM tipo_fontes f, projetos_sustentaveis p
WHERE f.id_tipo_fonte = p.id_tipo_fonte 
AND f.NOME IN ('Solar', 'E�lica')
GROUP BY id_projeto, descricao
ORDER BY 2;


--3. Projetos em andamento com custo elevado)
SELECT p.id_projeto, p.descricao, p.status
FROM projetos_sustentaveis p
WHERE p.custo > 500000 and p.status = 'Em andamento'
ORDER BY 1;


--4. Média de custo dos projetos por região)
SELECT r.nome regiao,ROUND(AVG(p.custo),2) media_custo
FROM regioes_sustentaveis r, projetos_sustentaveis p
WHERE r.id_regiao = p.id_regiao
GROUP BY r.nome
ORDER BY 2 DESC;

--5. Projetos por região e tipo de fonte com alta emissão de CO2)
SELECT * from
  (SELECT r.nome regiao, f.nome tipo_fonte, COUNT(*) quantidade_projetos, ROUND(AVG(e.emissao),2) media_emissao
  FROM regioes_sustentaveis r, tipo_fontes f, projetos_sustentaveis p, emissoes_carbono e
  WHERE e.id_tipo_fonte = f.id_tipo_fonte 
  AND f.id_tipo_fonte = p.id_tipo_fonte
  AND p.id_regiao = r.id_regiao
  GROUP BY r.nome , f.nome)
WHERE media_emissao > 5000
ORDER BY 1, 2;