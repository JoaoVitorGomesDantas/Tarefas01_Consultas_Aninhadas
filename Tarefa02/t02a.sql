CREATE FUNCTION idade_funcionario (codigo_funcionario int)
RETURN int
AS $$
DECLARE
      idade_funcionario integer;
BEGIN
      SELECT AGE(dataNasc)
      INTO idade_funcionario
      FROM funcionario
      WHERE codigo = codigo_funcionario;
      
      RETURN idade;
END;
$$ LANGUAGE plpgsql;
