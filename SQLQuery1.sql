Create database Login

use Login

CREATE TABLE Usuarios (
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,      
    Usuario NVARCHAR(50) NOT NULL UNIQUE, 
    Email NVARCHAR(100) NOT NULL UNIQUE,
    Edad INT NOT NULL CHECK (Edad > 0 AND Edad < 120),
    EstadoCivil NVARCHAR(20),            
    Ciudad NVARCHAR(50),            
    Profesion NVARCHAR(50), 
    PasswordHash NVARCHAR(255) NOT NULL 
);

INSERT INTO Usuarios (Nombre, Usuario, Email, Edad, EstadoCivil, Ciudad, Profesion, PasswordHash)
VALUES ('Juan Pérez', 'juanp', 'juan.perez@example.com', 30, 'Soltero', 'Bogotá', 'Ingeniero', 'Juan123');

select * from Usuarios
