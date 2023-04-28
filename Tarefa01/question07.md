# Resposta da Questão 07

``` sql

CREATE VIEW func_depto AS
SELECT COUNT(f.codigo) AS qtd, f.cod_depto
FROM funcionario f
GROUP BY f.cod_depto;
SELECT d.descricao AS departamento, g.nome AS gerente, fd.qtd AS funcionarios
FROM func_depto fd LEFT JOIN departamento d ON d.codigo=fd.cod_depto
LEFT JOIN funcionario g ON d.cod_gerente = g.codigo
;

```
