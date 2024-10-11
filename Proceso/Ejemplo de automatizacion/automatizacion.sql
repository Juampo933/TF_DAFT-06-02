-- CARGA DE DATOS UTLIZANDO BULK INSERT PARA ANY COMPANY 
--TABLAS 
-- Cargar datos en la tabla Productos
BULK INSERT Any_bd.dbo.Productos
FROM 'C:\ruta\del\archivo\productos.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',   
    FIRSTROW = 2,           
    TABLOCK
);

-- Cargar datos en la tabla Tiendas
BULK INSERT Any_bd.dbo.Tiendas
FROM 'C:\ruta\del\archivo\Tiendas.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- Cargar datos en la tabla Fecha
BULK INSERT Any_bd.dbo.Fecha
FROM 'C:\ruta\del\archivo\fecha.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- Cargar datos en la tabla Inventario
BULK INSERT Any_bd.dbo.Inventario
FROM 'C:\ruta\del\archivo\inventario.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- Cargar datos en la tabla Ventas
BULK INSERT Any_bd.dbo.Ventas
FROM 'C:\ruta\del\archivo\ventas.csv'
WITH (
    FIELDTERMINATOR = ',',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2,
    TABLOCK
);

-- PROCEDIMIENTOS PARA COMPRAS
CREATE PROCEDURE Insert_compras
    @CompraID INT(50),
    @ProveedorID INT,
    @FechaID INT,
    @Factura VARCHAR(200),
    @PONumber INT(200),
    @Cantidad INT,
    @PrecioCompra INT(200),
    @Total INT,
    @Envios INT,
  
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Compras WHERE CompraID = @CompraID AND @ProveedorID = @ProveedorID)
    BEGIN
        -- Insertar la nueva compra
        INSERT INTO Compras (CompraID, ProveedorID, FechaID, Factura, PONumber, Cantidad, PrecioCompra, Total, Envios)
        VALUES (@CompraID, @ProveedorID, @FechaID, @Factura, @PONumber, @Cantidad, @PrecioCompra, @Total, @Envios);
    END;
END;
