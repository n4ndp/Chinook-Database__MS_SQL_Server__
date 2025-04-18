-- ===================================================================
-- CATEGORÍAS DE COMANDOS SQL
-- ===================================================================

-- DDL (Data Definition Language) se refiere al conjunto de comandos 
-- utilizados para definir y administrar la estructura de las bases 
-- de datos y sus objetos (tablas, índices, vistas, etc.). Los comandos 
-- DDL permiten modificar la estructura de la base de datos, no los datos en sí.
-- Ejemplos: CREATE, ALTER, DROP, TRUNCATE, RENAME

-- DML (Data Manipulation Language) comprende los comandos para interactuar 
-- con los datos almacenados en las estructuras definidas por el DDL.
-- Estos comandos permiten insertar, modificar, eliminar y consultar registros,
-- pero no alteran la estructura de la base de datos.
-- Ejemplos: SELECT, INSERT, UPDATE, DELETE, MERGE

-- DCL (Data Control Language) incluye los comandos para gestionar 
-- permisos y acceso a la base de datos. Controla la seguridad mediante
-- la asignación y revocación de privilegios a usuarios y roles.
-- Ejemplos: GRANT, REVOKE, DENY

-- TCL (Transaction Control Language) agrupa los comandos para administrar 
-- transacciones en la base de datos. Permiten controlar cambios realizados
-- por comandos DML, garantizando la integridad de los datos.
-- Ejemplos: COMMIT, ROLLBACK, SAVE TRANSACTION, BEGIN TRANSACTION

-- DQL (Data Query Language) es un subconjunto especializado (aunque técnicamente
-- el SELECT es parte del DML) que se enfoca exclusivamente en consultar datos.
-- Su comando principal es SELECT con sus diversas cláusulas.
-- Ejemplos: SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY