CREATE PROCEDURE equipe_projeto (codigo_projeto int)
LANGUAGE plpgsql
AS $$
DECLARE
      exibir record;
BEGIN
      FOR exibir IN
            SELECT funcionario.nome, departamento.sigla
            FROM projeto
                  JOIN equipe ON projeto.equipe = equipe.codigo
                  JOIN membro ON projeto.equipe = membro.codEquipe
                  JOIN funcionario ON funcionario.codigo = membro.codFuncionario
                  LEFT JOIN departamento ON funcionario.depto = departamento.codigo
            WHERE projeto.codigo = codigo_projeto;
      LOOP
            RAISE NOTICE 'Funcionario: %, Departamento: %', exibir.nome, exibir.sigla;
      END LOOP;
END;
$$;
