# Resposta da Questão 13

```sql

SELECT proj.nome as projeto,
  proj.data_inicio as inicio_proj,
  proj.data_fim as fim_proj,
  ativ.descricao as atividade,
  ativ.data_inicio as inicio_ativ,
  ativ.data_fim as fim_ativ
FROM projeto proj
  JOIN atividade_projeto atvp on atvp.cod_projeto = proj.codigo 
  JOIN atividade ativ on atvp.cod_atividade = ativ.codigo
WHERE ativ.data_inicio < proj.data_inicio OR ativ.data_fim > proj.data_fim
;

```
