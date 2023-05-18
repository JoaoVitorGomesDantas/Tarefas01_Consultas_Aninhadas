CREATE OR REPLACE PROCEDURE equipe_projeto (codigo_projeto int)
RETURNS table (funcionario character varying, departamento character varying)
LANGUAGE plpgsql
AS $$
BEGIN
      RETURN query
      SELECT funcionario.nome, departamento.sigla
      FROM projeto
        JOIN equipe ON projeto.equipe = equipe.codigo
        JOIN membro ON projeto.equipe = membro.codEquipe
        JOIN funcionario ON funcionario.codigo = membro.codFuncionario
        LEFT JOIN departamento ON funcionario.depto = departamento.codigo
      WHERE projeto.codigo = codigo_projeto;
END;
$$;
