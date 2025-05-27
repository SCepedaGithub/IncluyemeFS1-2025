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
VALUES ('Campera de cuero', 100000.00, 'hombre1.jpg', 1),
 ('Buzo rojo', 100000.00, 'hombre2.jpg', 1),
 ('Jean Beige', 75000.00, 'hombre3.jpg', 1),
 ('Blazer Azul', 45000.00, 'hombre4.jpg', 1),
 ('Camisa Negra', 70000.00, 'hombre5.jpg', 1),
 ('Saco Gris', 120000.00, 'hombre6.jpg', 1),
 ('Pantalones de Lino', 185000.00, 'mujer1.jpg', 2),
 ('Saco 7/8 de hilo', 120000.00, 'mujer2.jpg', 2),
 ('Vestido estampado Bulgaro', 200000.00, 'mujer3.jpg', 2),
 ('Sacos diversos colores', 80000.00, 'mujer4.jpg', 2),
 ('Saco Celeste', 90000.00, 'mujer5.jpg', 2),
 ('Remera Amarilla', 75000.00, 'mujer6.jpg', 2),
 ('Remera Manga Larga', 50000.00, 'junemil1.jpg', 3),
 ('Campera de Jean', 130000.00, 'junemil2.jpg', 3),
 ('Hoody Bordó', 75000.00, 'junemil3.jpg', 3),
 ('Camisa a Cuadros', 150000.00, 'junemil4.jpg', 3),
 ('Chaleco Inflable', 140000.00, 'junemil5.jpg', 3),
 ('Jean Destroyed', 120000.00, 'junemil6.jpg', 3),
 ('Musculosa Negra', 85000.00, 'infantil1.jpg', 4),
 ('Remera Blanca', 85000.00, 'infantil2.jpg', 4),
 ('Calza Azul', 90000.00, 'infantil3.jpg', 4),
 ('Gorro Piluso', 25000.00, 'infantil4.jpg', 4),
 ('Short de Jean', 55000.00, 'infantil5.jpg', 4),
 ('Zapatillas Rojas', 85000.00, 'infantil6.jpg', 4);
