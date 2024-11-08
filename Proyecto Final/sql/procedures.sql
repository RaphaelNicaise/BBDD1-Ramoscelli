DROP PROCEDURE IF EXISTS insertar_usuario;
DROP PROCEDURE IF EXISTS insertar_libro;

-- PROCEDURES

DELIMITER 
CREATE PROCEDURE insertar_usuario(
    IN dni CHAR(20),
    IN nombre VARCHAR(50),
    IN apellido VARCHAR(50),
    IN email VARCHAR(100),
    IN telefono VARCHAR(15)
)
BEGIN
    INSERT INTO usuarios (dni, nombre, apellido, email, telefono, fecha_registro)
    VALUES (dni, nombre, apellido, email, telefono, CURDATE());
END 


CREATE PROCEDURE insertar_libro(
    IN titulo VARCHAR(200),
    IN autor VARCHAR(100),
    IN genero VARCHAR(50),
    IN editorial VARCHAR(100),
    IN anio_publicacion YEAR
)
BEGIN
    INSERT INTO libros (titulo, autor, genero, editorial, anio_publicacion)
    VALUES (titulo, autor, genero, editorial, anio_publicacion);
END 