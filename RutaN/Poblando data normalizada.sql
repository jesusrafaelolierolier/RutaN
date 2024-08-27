-- Insertar datos en la tabla de Categorías
INSERT INTO [db_normalizada].[Categorias] ([IdCategoria], [NombreCategoria], [Descripcion])
SELECT DISTINCT [IdCategoria], [NombreCategoria], [Descripcion]
FROM [DatosExcel].[Categorias];
GO
 

-- Insertar datos en la tabla de Proveedores
INSERT INTO [db_normalizada].[Proveedores] ([IdProveedor], [Compania], [ContactoNombre], [ContactoTitulo], [Direccion], [Ciudad], [Region], [Pais], [Telefono], [Fax])
SELECT DISTINCT [IdProveedor], [Compania], [ContactoNombre], [ContactoTitulo], [Direccion], [Ciudad], [Region], [Pais], [Telefono], [Fax]
FROM [DatosExcel].[Proveedores];
GO

-- Insertar datos en la tabla de Productos
INSERT INTO [db_normalizada].[Productos] ([IdProducto], [NombreProducto], [IdCategoria], [IdProveedor], [CantidadPorUnidad], [PrecioUnidad], [UnidadesEnExistencia], [UnidadesEnPedido], [NivelDeReorden], [Suspendido], [Descripcion])
SELECT DISTINCT [IdProducto], [NombreProducto], [IdCategoria], [IdProveedor], [CantidadPorUnidad], [PrecioUnidad], [UnidadesEnExistencia], [UnidadesEnPedido], [NivelDeReorden], [Suspendido], [Descripcion]
FROM [DatosExcel].[Productos];
GO

-- Insertar datos en la tabla de Clientes
INSERT INTO [db_normalizada].[Clientes] ([IdCliente], [Compania], [ContactoNombre], [ContactoTitulo], [Direccion], [Ciudad], [Region], [Pais], [Telefono], [Fax])
SELECT DISTINCT [IdCliente], [Compania], [ContactoNombre], [ContactoTitulo], [Direccion], [Ciudad], [Region], [Pais], [Telefono], [Fax]
FROM [DatosExcel].[Clientes];
GO

-- Insertar datos en la tabla de Empleados
INSERT INTO [db_normalizada].[Empleados] ([IdEmpleado], [Apellidos], [Nombres], [Cargo], [TituloCortesia], [FCumpleanos], [FContrato], [Direccion], [Ciudad], [Region], [Pais], [TelCasa], [Extension], [Reporta_A])
SELECT DISTINCT [IdEmpleado], [Apellidos], [Nombres], [Cargo], [TituloCortesia], [FCumpleanos], [FContrato], [Direccion], [Ciudad], [Region], [Pais], [TelCasa], [Extension], [Reporta_A]
FROM [DatosExcel].[Empleados];
GO

-- Insertar datos en la tabla de Despachadores
INSERT INTO [db_normalizada].[Despachadores] ([IdDespachador], [Compania], [Telefono])
SELECT DISTINCT [IdDespachador], [Compania], [Telefono]
FROM [DatosExcel].[Despachadores];
GO

-- Insertar datos en la tabla de Pedidos
INSERT INTO [db_normalizada].[Pedidos] ([IdPedido], [IdCliente], [IdEmpleado], [FPedido], [FRequerida], [FDespacho], [IdDespachador], [Flete])
SELECT DISTINCT [IdPedido], [IdCliente], [IdEmpleado], 
 
	 FPedido,
	 FRequerida,
	 FDespacho, 
    [IdDespachador], 
    [Flete]
FROM [DatosExcel].[Pedidos];
GO

-- Insertar datos en la tabla de PedidosDetalle
INSERT INTO [db_normalizada].[PedidosDetalle] ([IdPedido], [IdProducto], [PrecioUnitario], [Cantidad], [Descuento])
SELECT DISTINCT [IdPedido], [IdProducto], [PrecioUnitario], [Cantidad], [Descuento]
FROM [DatosExcel].[PedidosDetalle];
GO



