# Resposta da Questão 11

``` sql

SELECT
  p.nome AS nome_projeto,
  depp.descricao AS dep_projeto,
  f.nome AS nome_responsavel,
  depf.descricao AS dep_responsavel
FROM
  projeto p
  JOIN departamento depp ON p.cod_depto = depp.codigo
  JOIN funcionario f ON p.cod_responsavel = f.codigo
  JOIN departamento depf ON f.cod_depto = depf.codigo
WHERE
  depp.codigo <> depf.codigo
;

```
