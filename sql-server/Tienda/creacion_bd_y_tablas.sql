--creacion de BD
create database Tienda; 

USE Tienda; 

--creacion de tablas
CREATE TABLE Cliente(
IdCliente INT IDENTITY(1,1) PRIMARY KEY, --Autoincrementable de 1 en 1 y llave primaria
Nombre VARCHAR(100) NOT NULL,
Email VARCHAR(100) UNIQUE,
Ciudad VARCHAR(50)
);

CREATE TABLE Productos (
    IdProducto INT IDENTITY(1,1) PRIMARY KEY, --Autoincrementable de 1 en 1 y llave primaria 
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);


CREATE TABLE Pedidos (
    IdPedido INT IDENTITY(1,1) PRIMARY KEY,
    IdCliente INT NOT NULL,
    Fecha DATE NOT NULL,
    CONSTRAINT FK_Pedidos_Clientes
    FOREIGN KEY (IdCliente) REFERENCES Cliente(IdCliente)  --Relacion de la tabla pedidos con la tabla cliente, columna IdCliente de la tabla Pedido y la tabla Cliente referencia a la columna IdCliente
);

CREATE TABLE DetallePedido (
    IdDetalle INT IDENTITY(1,1) PRIMARY KEY,
    IdPedido INT NOT NULL,
    IdProducto INT NOT NULL,
    Cantidad INT NOT NULL,
    PrecioUnitario DECIMAL(10,2) NOT NULL,
    CONSTRAINT FK_Detalle_Pedido
        FOREIGN KEY (IdPedido) REFERENCES Pedidos(IdPedido),
    CONSTRAINT FK_Detalle_Producto
        FOREIGN KEY (IdProducto) REFERENCES Productos(IdProducto)
);