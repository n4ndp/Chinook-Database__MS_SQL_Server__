# **¿Qué es la base de datos Chinook?**

La base de datos **Chinook** es un modelo relacional diseñado para simular una plataforma de música digital. Incluye tablas que representan distintos aspectos de una tienda de música en línea, como clientes, empleados, productos (álbumes y pistas), facturas, géneros musicales, y más.

Puedes obtener la última versión de esta base de datos desde su repositorio oficial en GitHub: [Chinook Database Release](https://github.com/lerocha/chinook-database/releases/tag/v1.4.5).

## **Estructura de la Base de Datos**

A continuación se describe la estructura de las tablas que conforman la base de datos **Chinook**:

| **Tabla**      | **Descripción**                                                                 | **Campos Clave**                             | **Relaciones**                                                                                                     |
|----------------|---------------------------------------------------------------------------------|----------------------------------------------|---------------------------------------------------------------------------------------------------------------------|
| **Album**      | Almacena información sobre los álbumes.                                          | `AlbumId`, `Title`, `ArtistId`               | Relacionada con `Artist` a través de `ArtistId`.                                                                    |
| **Artist**     | Contiene información de los artistas musicales.                                  | `ArtistId`, `Name`                           | Relacionada con `Album` a través de `ArtistId`.                                                                     |
| **Customer**   | Información de los clientes que compran productos.                               | `CustomerId`, `FirstName`, `LastName`, `Email`| Relacionada con `Employee` (a través de `SupportRepId`) y con `Invoice` (a través de `CustomerId`).                |
| **Employee**   | Almacena datos sobre los empleados de la tienda.                                | `EmployeeId`, `FirstName`, `LastName`, `ReportsTo` | Relacionada con `Customer` y `Employee` (para la jerarquía de supervisión).                                        |
| **Genre**      | Contiene los géneros musicales disponibles en la tienda.                        | `GenreId`, `Name`                            | Relacionada con `Track` a través de `GenreId`.                                                                       |
| **Invoice**    | Registra las facturas generadas por las compras de los clientes.                | `InvoiceId`, `CustomerId`, `Total`           | Relacionada con `Customer` a través de `CustomerId` y con `InvoiceLine` a través de `InvoiceId`.                   |
| **InvoiceLine**| Detalles de las compras, incluyendo las pistas y la cantidad.                   | `InvoiceLineId`, `InvoiceId`, `TrackId`      | Relacionada con `Invoice` a través de `InvoiceId` y con `Track` a través de `TrackId`.                             |
| **MediaType**  | Almacena los tipos de medios disponibles (e.g., MP3, CD).                       | `MediaTypeId`, `Name`                        | Relacionada con `Track` a través de `MediaTypeId`.                                                                   |
| **Playlist**   | Contiene las listas de reproducción.                                            | `PlaylistId`, `Name`                         | Relacionada con `PlaylistTrack` a través de `PlaylistId`.                                                           |
| **PlaylistTrack** | Asocia las pistas con las listas de reproducción.                             | `PlaylistId`, `TrackId`                      | Relacionada con `Playlist` y `Track` a través de `PlaylistId` y `TrackId`.                                         |
| **Track**      | Almacena información sobre las pistas de música, como el nombre, álbum y precio. | `TrackId`, `Name`, `AlbumId`, `GenreId`, `MediaTypeId` | Relacionada con `Album`, `Genre`, `MediaType`, y `PlaylistTrack` a través de `AlbumId`, `GenreId`, `MediaTypeId`, y `TrackId`. |
