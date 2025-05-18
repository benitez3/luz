-- Tabla: marca
CREATE TABLE marca (
    id_marca SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(255)
);

-- Tabla: empleada
CREATE TABLE empleada (
    id_empleada SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    telefono VARCHAR(15),
    ubicacion TEXT
);

-- Tabla: herramientas
CREATE TABLE herramientas (
    id_herramienta SERIAL PRIMARY KEY,
    tipo VARCHAR(100),
    id_marca INTEGER NOT NULL,
    cantidad INTEGER,
    precio DECIMAL(10, 2),
    CONSTRAINT fk_herramienta_marca FOREIGN KEY (id_marca) REFERENCES marca(id_marca) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla: articulos
CREATE TABLE articulos (
    id_articulos SERIAL PRIMARY KEY,
    stock INTEGER NOT NULL,
    nombre VARCHAR(100),
    vencimiento DATE,
    precio_compra DECIMAL(10, 2),
    id_marca INTEGER NOT NULL,
    CONSTRAINT fk_articulo_marca FOREIGN KEY (id_marca) REFERENCES marca(id_marca) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla: tipo_clase
CREATE TABLE tipo_clase (
    id_tipo SERIAL PRIMARY KEY,
    peinados VARCHAR(100),
    maquillaje VARCHAR(100),
    maquillaje_artistico VARCHAR(100)
);

-- Tabla: clases
CREATE TABLE clases (
    id_enseñanza SERIAL PRIMARY KEY,
    id_herramienta INTEGER NOT NULL,
    materiale_consumo DECIMAL(10, 2),
    agenda VARCHAR(100),
    alumnos VARCHAR(100),
    id_tipo INTEGER NOT NULL,
    CONSTRAINT fk_clases_herramienta FOREIGN KEY (id_herramienta) REFERENCES herramientas(id_herramienta) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_clases_tipo FOREIGN KEY (id_tipo) REFERENCES tipo_clase(id_tipo) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla: cliente
CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    telefono VARCHAR(15),
    id_empleada INTEGER NOT NULL,
    id_articulos INTEGER NOT NULL,
    id_enseñanza INTEGER NOT NULL,
    CONSTRAINT fk_cliente_empleada FOREIGN KEY (id_empleada) REFERENCES empleada(id_empleada) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_cliente_articulos FOREIGN KEY (id_articulos) REFERENCES articulos(id_articulos) ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_cliente_enseñanza FOREIGN KEY (id_enseñanza) REFERENCES clases(id_enseñanza) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla: servicio
CREATE TABLE servicio (
    id_servicio SERIAL PRIMARY KEY,
    uñas VARCHAR(50),
    kappin VARCHAR(50),
    acrilico VARCHAR(50),
    sofgel VARCHAR(50),
    planchita VARCHAR(50),
    ondas VARCHAR(50),
    id_cliente INTEGER NOT NULL,
    CONSTRAINT fk_servicio_cliente FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE RESTRICT ON UPDATE CASCADE
);

-- Tabla: fecha
CREATE TABLE fecha (
    id_horario SERIAL PRIMARY KEY,
    hora VARCHAR(10),
    dia VARCHAR(20),
    id_servicio INTEGER NOT NULL,
    CONSTRAINT fk_fecha_servicio FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio) ON DELETE CASCADE ON UPDATE RESTRICT
);

-- Tabla: stock
CREATE TABLE stock (
    id_stock SERIAL PRIMARY KEY,
    cantidad DECIMAL(10, 2),
    lugar VARCHAR(100)
); 
