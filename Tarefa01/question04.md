# Resposta da Questão 04

``` sql

SELECT f.nome, f.salario, d.descricao
FROM funcionario f LEFT JOIN departamento d ON f.cod_depto = d.codigo
WHERE f.codigo NOT IN (
  SELECT d.cod_gerente
  FROM departamento d
  WHERE d.cod_gerente IS NOT null)
  ORDER BY cod_depto
;
  
```
