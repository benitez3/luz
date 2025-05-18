-- Insertar en marca
INSERT INTO marca (nombre, descripcion) VALUES
('MAC', 'Marca de maquillaje profesional'),
('Maybelline', 'Productos de belleza accesibles'),
('Kryolan', 'Maquillaje artístico y profesional');

-- Insertar en empleada
INSERT INTO empleada (nombre, apellido, telefono, ubicacion) VALUES
('Luz', 'Benitez', '0981999999', 'Ñemby'),
('Ana', 'Gómez', '0981888888', 'San Lorenzo');

-- Insertar en herramientas
INSERT INTO herramientas (tipo, id_marca, cantidad, precio) VALUES
('Brochas profesionales', 1, 20, 150000),
('Paleta de sombras', 2, 10, 120000);

-- Insertar en articulos
INSERT INTO articulos (stock, nombre, vencimiento, precio_compra, id_marca) VALUES
(50, 'Base líquida', '2025-12-31', 95000, 1),
(30, 'Labial matte', '2026-06-30', 55000, 2);

-- Insertar en tipo_clase
INSERT INTO tipo_clase (peinados, maquillaje, maquillaje_artistico) VALUES
('Peinados sociales', 'Maquillaje básico', 'Efectos especiales'),
('Peinados de novia', 'Maquillaje profesional', 'Character makeup');

-- Insertar en clases
INSERT INTO clases (id_herramienta, materiale_consumo, agenda, alumnos, id_tipo) VALUES
(1, 50000, '2025-05-20', '5', 1),
(2, 80000, '2025-06-15', '3', 2);

-- Insertar en cliente
INSERT INTO cliente (nombre, apellido, telefono, id_empleada, id_articulos, id_enseñanza) VALUES
('Carla', 'Martínez', '0981777777', 1, 1, 1),
('Rosa', 'Fernández', '0981666666', 2, 2, 2);

-- Insertar en servicio
INSERT INTO servicio (uñas, kappin, acrilico, sofgel, planchita, ondas, id_cliente) VALUES
('Manicura básica', 'No', 'Sí', 'No', 'Sí', 'No', 1),
('Manicura francesa', 'Sí', 'No', 'Sí', 'No', 'Sí', 2);

-- Insertar en fecha
INSERT INTO fecha (hora, dia, id_servicio) VALUES
('14:00', 'Lunes', 1),
('10:30', 'Miércoles', 2);

-- Insertar en stock
INSERT INTO stock (cantidad, lugar) VALUES
(100, 'Depósito central'),
(50, 'Sucursal Ñemby');