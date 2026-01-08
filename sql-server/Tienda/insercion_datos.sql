USE Tienda;

INSERT INTO Cliente(Nombre, Email,Ciudad) VALUES
('Sergio Bello', 'serbeju00@gmail.com','Bogota'),
('Ana Pérez', 'ana@email.com', 'Medellín'),
('Carlos Ruiz', 'carlos@email.com', 'Cali'),
('Laura Gómez', 'laura@email.com', 'Barranquilla'),
('Juan Torres', 'juan@email.com', 'Bogotá');

INSERT INTO Productos(Nombre, Precio, Stock) VALUES  -- repeti dos veces la insercion, borrala o cambiala
('Laptop', 3500000, 5),
('Mouse', 50000, 20),
('Teclado', 120000, 15),
('Monitor', 900000, 8),
('Audífonos', 150000, 10),
('USB 64GB', 60000, 25);

INSERT INTO Pedidos (IdCliente, Fecha) VALUES
(1, '2025-01-10'),
(2, '2025-01-11'),
(3, '2025-01-12'),
(1, '2025-01-13'),
(4, '2025-01-14');

select * from Productos;

INSERT INTO DetallePedido (IdPedido, IdProducto, Cantidad, PrecioUnitario) VALUES
(1, 1, 1, 3500000),
(1, 2, 2, 50000),
(2, 3, 1, 120000),
(3, 4, 1, 900000),
(4, 6, 3, 60000),
(5, 5, 2, 150000);

DELETE FROM Productos WHERE IdProducto = 8;