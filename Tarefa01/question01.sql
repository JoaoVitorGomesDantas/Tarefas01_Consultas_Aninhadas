## Resposta da Questão 1

SELECT f.nome
FROM funcionario f
JOIN departamento d ON f.cod_depto = d.codigo
WHERE f.salario > (
  SELECT AVG(f2.salario)
  FROM funcionario f2
  WHERE f2.cod_depto = 2
);
