# Resposta da Questão 12

``` sql 

SELECT 
  proj.nome AS projeto,
  proj.data_inicio AS inicio_proj,
  proj.data_fim AS fim_proj,
  ativ.descricao AS atividade,
  ativ.data_inicio AS inicio_ativ,
  ativ.data_fim AS fim_ativ
FROM projeto proj
  JOIN atividade_projeto atvp ON atvp.cod_projeto = proj.codigo 
  JOIN atividade ativ ON atvp.cod_atividade = ativ.codigo
;

```
