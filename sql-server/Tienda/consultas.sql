USE Tienda;

SELECT * FROM Cliente;
SELECT * FROM Pedidos;

SELECT * FROM Productos WHERE Stock >10;--Productos con stock mayor a 10

SELECT Cliente.Nombre FROM Cliente;


SELECT --Pedidos con nombre y ciudad del cliente
    P.IdPedido,
    C.Nombre AS Cliente,
    P.Fecha,
	C.Ciudad
FROM Pedidos P
INNER JOIN Cliente C
    ON P.IdCliente = C.IdCliente;

	
	--Total de dinero por pedido

	SELECT 
    P.IdPedido,
    SUM(D.Cantidad * D.PrecioUnitario) AS TotalPedido
FROM Pedidos P
INNER JOIN DetallePedido D
    ON P.IdPedido = D.IdPedido
GROUP BY P.IdPedido;


-- Total gastado por cada cliente
SELECT 
    C.Nombre AS Cliente,
    SUM(D.Cantidad * D.PrecioUnitario) AS TotalGastado
FROM Cliente C
INNER JOIN Pedidos P
    ON C.IdCliente = P.IdCliente
INNER JOIN DetallePedido D
    ON P.IdPedido = D.IdPedido
GROUP BY C.Nombre;


-- Clientes que no han realizado pedidos
SELECT C.Nombre
FROM Cliente C
LEFT JOIN Pedidos P
    ON C.IdCliente = P.IdCliente
WHERE P.IdPedido IS NULL;