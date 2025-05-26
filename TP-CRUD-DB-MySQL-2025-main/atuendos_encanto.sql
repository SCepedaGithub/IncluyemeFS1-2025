/* CREATE DATABASE tienda_motos;

USE tienda_motos;

CREATE TABLE categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  descripcion TEXT
);

CREATE TABLE motos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  descripcion TEXT,
  precio DECIMAL(10, 2) NOT NULL,
  imagen VARCHAR(255),
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);


INSERT INTO categorias (nombre, descripcion) VALUES ('Deportiva', 'Motos deportivas de alto rendimiento');
INSERT INTO categorias (nombre, descripcion) VALUES ('Cruiser', 'Motos cruiser para paseos largos');
INSERT INTO categorias (nombre, descripcion) VALUES ('Touring', 'Motos diseñadas para viajes largos y confort');

INSERT INTO motos (nombre, descripcion, precio, imagen, categoria_id) 
VALUES ('Yamaha YZF-R3', 'Deportiva de 300cc', 5000.00, 'honda.jpg', 1);
 */

-----------
CREATE DATABASE atuendos_encanto;
USE atuendos_encanto;

CREATE TABLE categorias (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL
 );

CREATE TABLE articulos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  precio DECIMAL(10, 2) NOT NULL,
  imagen VARCHAR(255),
  categoria_id INT,
  FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO categorias (nombre) VALUES ('Hombre');
INSERT INTO categorias (nombre) VALUES ('Mujer');
INSERT INTO categorias (nombre) VALUES ('Juvenil');
INSERT INTO categorias (nombre) VALUES ('Infantil');

INSERT INTO articulos (nombre, precio, imagen, categoria_id) 
VALUES ('Campera de cuero', 100000.00, 'hombre1.jpg, 1);
