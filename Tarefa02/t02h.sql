CREATE OR REPLACE FUNCTION atividades_por_membro_projeto(codigo_funcionario int, codigo_projeto int)
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

CREATE OR REPLACE FUNCTION porcentagem_atividades_por_membro(codigo_funcionario int, codigo_projeto int)
RETURNS decimal
LANGUAGE plpgsql
AS $$
DECLARE
      total_atividades int;
      porcentagem_membro decimal;
BEGIN
      SELECT COUNT(*) 
      INTO total_atividades
      FROM atividade_projeto
      WHERE codProjeto = codigo_projeto;

      SELECT ROUND(atividades_por_membro_projeto(codigo_funcionario, codigo_projeto)::decimal / total_atividades * 100)
      INTO porcentagem_membro
      FROM projeto
		  JOIN atividade_projeto ON atividade_projeto.codProjeto = projeto.codigo
	    WHERE projeto.codigo = codigo_projeto
	    GROUP BY projeto.codigo;
	
	    RETURN porcentagem_membro;
END;
$$;
