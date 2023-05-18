CREATE OR REPLACE FUNCTION atividades_por_membro_projeto (codigo_funcionario int, codigo_projeto int)
RETURNS int
LANGUAGE plpgsql
AS $$
DECLARE
	    atividade_membro integer;
BEGIN
      SELECT COUNT(atividade.codigo)
	    INTO atividade_membro
	    FROM projeto
		    JOIN membro ON projeto.equipe = membro.codEquipe
		    JOIN atividade_membro ON atividade_membro.codMembro = membro.codigo
		    JOIN atividade ON atividade_membro.codAtividade = atividade.codigo
	    WHERE projeto.codigo = codigo_projeto AND membro.codFuncionario = codigo_funcionario;
	
	    RETURN atividade_membro;
END;
$$;
