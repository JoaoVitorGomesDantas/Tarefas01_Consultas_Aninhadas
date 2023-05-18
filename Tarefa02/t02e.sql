CREATE OR REPLACE FUNCTION atraso_projeto (codigo_projeto int)
RETURNS int
LANGUAGE plpgsql
AS $$
DECLARE
	    dias_atraso integer;
BEGIN
	    SELECT dataFim - dataConclusao
	    INTO dias_atraso
	    FROM projeto
	    WHERE codigo = codigo_projeto;
	
	    RETURN dias_atraso;
END;
$$;
