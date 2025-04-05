-- DDL (Data Definition Language) -----------------------------------------------------------------------------------------------------
-- Define y modifica la estructura de las bases de datos.

-- Crear la tabla "Customers"
CREATE TABLE Customers
(
    CustomerId INT PRIMARY KEY,
    FirstName NVARCHAR(100),
    LastName NVARCHAR(100),
    Email NVARCHAR(150) NOT NULL,
    Address NVARCHAR(200)
);

-- Agregar una columna "PhoneNumber" a la tabla "Customers"
ALTER TABLE Customers
ADD PhoneNumber NVARCHAR(15);

-- Eliminar la tabla "Customers"
DROP TABLE Customers;

-- Eliminar todos los registros de la tabla "Customers"
TRUNCATE TABLE Customers;
---------------------------------------------------------------------------------------------------------------------------------------

-- DML (Data Manipulation Language) ---------------------------------------------------------------------------------------------------
-- Manipula los datos dentro de las tablas.

-- Seleccionar todos los registros de la tabla "Customers"
SELECT * FROM Customers;

-- Seleccionar solo los nombres y correos electrónicos de los clientes con el apellido 'Smith'
SELECT FirstName, Email FROM Customers WHERE LastName = 'Smith';

-- Insertar un nuevo registro en la tabla "Customers"
INSERT INTO Customers (CustomerId, FirstName, LastName, Email, Address)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', '123 Elm St');

-- Actualizar el correo electrónico de un cliente con CustomerId = 1
UPDATE Customers
SET Email = 'newemail@example.com'
WHERE CustomerId = 1;

-- Eliminar el cliente con CustomerId = 1
DELETE FROM Customers
WHERE CustomerId = 1;
---------------------------------------------------------------------------------------------------------------------------------------

-- DCL (Data Control Language) --------------------------------------------------------------------------------------------------------
-- Controla los permisos y accesos a los objetos de la base de datos.

-- Conceder permiso de SELECT a un usuario llamado 'User1' en la tabla "Customers"
GRANT SELECT ON Customers TO User1;

-- Revocar el permiso de SELECT de la tabla "Customers" a 'User1'
REVOKE SELECT ON Customers FROM User1;
---------------------------------------------------------------------------------------------------------------------------------------

-- TCL (Transaction Control Language) -------------------------------------------------------------------------------------------------
-- Controla las transacciones y asegura la consistencia de los datos.

-- Iniciar una transacción
BEGIN TRANSACTION;

-- Ejecutar algunas modificaciones de datos aquí
UPDATE Customers
SET Email = 'updatedemail@example.com'
WHERE CustomerId = 2;

-- Guardar los cambios realizados en la transacción
COMMIT;

-- Si algo va mal y quieres deshacer los cambios
ROLLBACK;

-- En SQL Server, puedes manejar "SAVEPOINT" con una transacción anidada si fuera necesario, pero no se usa con el mismo nombre
-- Iniciar una transacción anidada simulada
BEGIN TRANSACTION NestedTransaction;

-- Hacer cambios en la transacción anidada
UPDATE Customers
SET Email = 'nestedupdate@example.com'
WHERE CustomerId = 3;

-- Si algo va mal en la transacción anidada, puedes hacer un rollback en esta transacción específica
ROLLBACK TRANSACTION NestedTransaction;

-- Si la transacción principal no presenta errores, puedes hacer un commit de la transacción principal
COMMIT TRANSACTION;
---------------------------------------------------------------------------------------------------------------------------------------