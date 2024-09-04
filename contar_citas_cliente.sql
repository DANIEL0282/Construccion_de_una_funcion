DELIMITER //

CREATE FUNCTION ContarCitasCliente(Idcliente INT, FechaInicio DATE, FechaFin DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE numCitas INT;
    SELECT COUNT(*) INTO numCitas
    FROM cita
    WHERE Idcliente = Idcliente
    AND Fecha BETWEEN FechaInicio AND FechaFin;
    RETURN numCitas;
END //

DELIMITER ;

SELECT ContarCitasCliente(123, '2024-01-01', '2024-12-31') AS NumeroDeCitas;
