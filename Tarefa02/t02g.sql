CREATE OR REPLACE FUNCTION atividades_por_membro_projeto (codigo_funcionario int, codigo_projeto int)
RETURNS int
LANGUAGE plpgsql
AS $$
DECLARE
	    quantidade_atividade integer;
BEGIN
      SELECT COUNT(atividade.codigo)
      INTO quantidade_atividade
      FROM projeto
      		JOIN membro ON projeto.equipe = membro.codEquipe
      		JOIN atividade_membro ON atividade_membro.codMembro = membro.codigo
      		JOIN atividade ON atividade_membro.codAtividade = atividade.codigo
      WHERE projeto.codigo = codigo_projeto AND membro.codFuncionario = codigo_funcionario;
      
      RETURN quantidade_atividade;
END;
$$;
