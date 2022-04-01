-- INSTRUCCIONES DESAFIO OPERACIONES EN UNA TABLA
-- PARTE 1
-- 1. CREAR DB "POSTS"
CREATE DATABASE Posts;
-- 2. CREAR TABLE "POST" con atributos id, nombre de usuario, fecha de creación, contenido y descripcion
CREATE TABLE post(id SERIAL, nombre_usuario VARCHAR(25), fecha_creacion DATE, contenido VARCHAR(80), descripcion VARCHAR(300), PRIMARY KEY (id));
-- 3. INSERT 3 post, 2 para usuario "Pamela" y uno para "Carlos"
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (1, 'Pamela', '2022-04-01', 'Post 1', 'Primer post de Pamela');
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (2, 'Pamela', '2022-04-01', 'Post 2', 'Segundo post de Pamela');
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (3, 'Carlos', '2022-04-01', 'Post 1', 'Primer post de Carlos');
-- 4. MODIFICAR TABLE post, agregando columna título
ALTER TABLE post ADD titulo VARCHAR(60);
-- 5. ADD título a publicaciones ingresadas
 UPDATE post SET titulo = 'La historia de Pamela' WHERE id = 1;
 UPDATE post SET titulo = 'La saga de Pamela' WHERE id = 2;
 UPDATE post SET titulo = 'El blog de Carlos' WHERE id = 3;
-- 6. INSERT 2 post para usuario "Pedro"
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (4, 'Pedro', '2022-04-01', 'Post 1', 'Primer post de Pedro', 'El primer post de Pedro');
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (5, 'Pedro', '2022-04-01', 'Post 2', 'Otro post de Pedro', 'Pedro el blogger');                                         
-- 7. DELETE post de Carlos
DELETE FROM post WHERE id = 3;
-- 8. INSERT nuevo post para usuario "Carlos"
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES (6, 'Carlos', '2022-04-01', 'Post 2', 'Otro post de Carlos', 'Carlos vuelve al blog');

-- PARTE 2
-- 1. CREATE new TABLE llamada "comentarios" con atributos id, fecha, hora de creacion y contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios(id SERIAL, fecha DATE, hora_de_creacion TIME, contenido VARCHAR(80), FOREIGN KEY (id) REFERENCES post(id));
-- 2. CREATE 2 comentarios para post de Pamela y 4 para Carlos.
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (1, '2022-04-01', '22:20:04', 'Pamela tiene un comentario');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (1, '2022-04-02', '23:20:00', 'Pamela tiene un nuevo comentario');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-04-01', '11:20:00', 'Carlos tiene un comentario');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-04-01', '11:45:00', 'Carlos tiene dos comentarios');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-04-01', '23:50:00', 'Carlos tiene tres comentarios');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (6, '2022-04-02', '10:20:10', 'Carlos tiene cuatro comentarios');
-- 3. CREATE new Post para Margarita
INSERT INTO post (id, nombre_usuario, fecha_creacion, contenido, descripcion) VALUES (7, 'Margarita', '2022-04-02', 'Post 1', 'Primer post de Margarita');
UPDATE post SET titulo = 'Margarita ingresa al mundo blogger' WHERE id = 7;
-- 4. INSERT 5 comentarios para post de Margarita.
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (7, '2022-04-02', '15:20:05', 'Margarita tiene un comentario');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (7, '2022-04-02', '15:27:00', 'Margarita tiene dos comentarios');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (7, '2022-04-02', '17:05:00', 'Margarita tiene tres comentarios');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (7, '2022-04-02', '19:25:00', 'Margarita tiene cuatro comentarios');
INSERT INTO comentarios (id, fecha, hora_de_creacion, contenido) VALUES (7, '2022-04-02', '22:35:30', 'Margarita tiene cinco comentarios');