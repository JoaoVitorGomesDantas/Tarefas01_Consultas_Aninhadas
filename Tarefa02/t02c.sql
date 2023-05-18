CREATE FUNCTION idade_funcionario (codigo_funcionario int)
RETURNS int
LANGUAGE plpgsql
AS $$
DECLARE
      idade_funcionario integer;
BEGIN
      SELECT DATE_PART('YEAR', AGE(dataNasc))
      INTO idade_funcionario
      FROM funcionario
      WHERE codigo = codigo_funcionario;
      
      RETURN idade;
END;
$$;

CREATE OR REPLACE FUNCTION media_idade_departamento (codigo_departamento int)
RETURNS float
LANGUAGE plpgsql
AS $$
DECLARE
      media_idade_departamento float;
BEGIN
      SELECT AVG(idade_funcionario(funcionario.codigo))
      INTO media_idade_departamento
      FROM funcionario
      WHERE funcionario.depto = codigo_departamento;
      
      RETURN media_idade_departamento;
END;
$$;

CREATE OR REPLACE FUNCTION  idade_maior_media_departamento ()
RETURNS table (codigo integer, nome varchar)
LANGUAGE plpgsql
AS $$
BEGIN
      RETURN query
        SELECT funcionario.codigo, funcionario.nome
        FROM funcionario
        WHERE idade_funcionario(funcionario.codigo) > media_idade_departamento(funcionario.depto);
END;
$$;
