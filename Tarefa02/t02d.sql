CREATE OR REPLACE FUNCTION atraso_atividade (codigo_atividade int)
RETURNS int
LANGUAGE plpgsql
AS $$
DECLARE
	    dias_atraso integer;
BEGIN
	    SELECT dataFim - DATE(CURRENT_DATE AT TIME ZONE 'America/Fortaleza')
	    INTO dias_atraso
	    FROM atividade
	    WHERE codigo = codigo_atividade;
	
	    RETURN dias_atraso;
END;
$$;
