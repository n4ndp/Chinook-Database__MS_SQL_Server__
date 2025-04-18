-- Clientes de Brasil
SELECT FirstName, LastName, Email
FROM Customer
WHERE Country = 'Brazil';

-- Empleados con Cargo "Sales Support Agent"
SELECT FirstName, LastName, Email
FROM Employee
WHERE Title = 'Sales Support Agent';

-- Clientes sin Número de Fax
SELECT FirstName, LastName, Phone
FROM Customer
WHERE Fax IS NULL;

-- Álbumes Lanzados por el artista "The Rolling Stones"
SELECT al.Title
FROM Artist ar
JOIN Album al ON ar.ArtistId = al.ArtistId
WHERE ar.Name = 'The Rolling Stones';

-- Canciones del album "Heart of the Night" con duración mayor a 5 minutos
SELECT t.Name, t.Milliseconds, t.UnitPrice FROM Album a
JOIN Track t ON a.AlbumId = t.AlbumId
WHERE a.Title = 'Heart of the Night' AND t.Milliseconds > 300000;

-- Clientes de USA con Facturas Mayores a $10
SELECT c.FirstName, c.LastName, c.Email, i.Total
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
WHERE i.Total > 10 AND c.Country = 'USA'
ORDER BY i.Total DESC;










