# Construccion_de_una_funcion
Construcción de una función para el proyecto integrador
Explicacion linea por linea.

DELIMITER //: Cambia el delimitador estándar ; para evitar que MySQL interprete las partes de la función como comandos separados.
CREATE FUNCTION: Declara una nueva función llamada ContarCitasCliente.
DECLARE numCitas INT: Declara una variable local numCitas de tipo entero.
SELECT COUNT(*) INTO numCitas: Cuenta el número de filas en la tabla cita que cumplen con las condiciones y almacena el resultado en numCitas.
RETURN numCitas: Devuelve el número de citas contadas.
SELECT ContarCitasCliente(...): Ejemplo de cómo llamar a la función con un ID de cliente y un rango de fechas.
