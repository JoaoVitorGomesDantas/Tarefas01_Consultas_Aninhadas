CREATE OR REPLACE FUNCTION media_idade_departamento (codigo_funcionario int, codigo_departamento int)
RETURN float
LANGUAGE plpgsql
AS $$
DECLARE
      media_idade_departamento float;
BEGIN
      SELECT AVG(
            SELECT DATE_PART('YEAR', AGE(dataNasc))
            FROM funcionario
            WHERE codigo = codigo_funcionario;
      )
      INTO media_idade_departamento
      FROM funcionario
      WHERE funcionario.depto = codigo_departamento;
      
      RETURN media_idade_departamento;
END;
$$;
