-- src/main/resources/schema.sql

-- Crear base de datos si no existe
CREATE DATABASE IF NOT EXISTS elaparato;

-- Usar la base de datos
USE elaparato;

-- Crear tabla Producto
CREATE TABLE IF NOT EXISTS Producto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    cantidad INT NOT NULL
);

-- Crear tabla Venta
CREATE TABLE IF NOT EXISTS Venta (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    fecha DATE NOT NULL
);

-- Crear tabla producto_lista_ventas
CREATE TABLE IF NOT EXISTS producto_lista_ventas (
    lista_productos_id INT NOT NULL,
    lista_ventas_id_venta INT NOT NULL,
    PRIMARY KEY (lista_productos_id, lista_ventas_id_venta),
    FOREIGN KEY (lista_productos_id) REFERENCES Producto(id),
    FOREIGN KEY (lista_ventas_id_venta) REFERENCES Venta(id_venta)
);

-- Crear secuencia producto_seq
CREATE TABLE IF NOT EXISTS producto_seq (
    next_val INT NOT NULL
);

INSERT INTO producto_seq (next_val) VALUES (1) ON DUPLICATE KEY UPDATE next_val = next_val;

-- Crear secuencia venta_seq
CREATE TABLE IF NOT EXISTS venta_seq (
    next_val INT NOT NULL
);

INSERT INTO venta_seq (next_val) VALUES (1) ON DUPLICATE KEY UPDATE next_val = next_val;
