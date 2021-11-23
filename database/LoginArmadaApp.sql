-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "login" ---------------------------------
CREATE DATABASE IF NOT EXISTS `login` CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;
-- ---------------------------------------------------------


-- CREATE TABLE "componentes_cultura_naval" ----------------
-- CREATE TABLE "componentes_cultura_naval" --------------------
CREATE TABLE `componentes_cultura_naval` ( 
	`id` TinyInt( 100 ) AUTO_INCREMENT NOT NULL,
	`tipo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`titulo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`cuerpo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`ruta_archivo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'nada',
	`fecha` Date NOT NULL,
	`latitud` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
	`longitud` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
	`id_usuario` TinyInt( 4 ) NOT NULL,
	`himno` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'nada',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 9;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "datos_basicos_users" ----------------------
-- CREATE TABLE "datos_basicos_users" --------------------------
CREATE TABLE `datos_basicos_users` ( 
	`id_datos_user` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`nombre_user` VarChar( 45 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`apellido_user` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`documento_user` Int( 11 ) NOT NULL,
	`users_id` TinyInt( 4 ) NOT NULL,
	`roles_id_roles` Int( 11 ) NOT NULL,
	`email_users` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`victima` Char( 1 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0',
	PRIMARY KEY ( `id_datos_user` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 36;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "eventos" ----------------------------------
-- CREATE TABLE "eventos" --------------------------------------
CREATE TABLE `eventos` ( 
	`id_evento` Int( 10 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`titulo_evento` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`fecha_inicio_evento` Date NOT NULL,
	`fecha_fin_evento` Date NOT NULL,
	`users_id` TinyInt( 4 ) NOT NULL,
	`imagen_evento` VarChar( 500 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`description_evento` LongText CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	PRIMARY KEY ( `id_evento` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "galeria" ----------------------------------
-- CREATE TABLE "galeria" --------------------------------------
CREATE TABLE `galeria` ( 
	`id_elemento_galeria` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`titulo_elemento` VarChar( 45 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`nombre_elemento` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`tipo_elemento` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`ruta_url` VarChar( 500 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`video_url` VarChar( 500 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`secciones_id_seccion` Int( 11 ) NOT NULL,
	`noticias_id_noticia` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id_elemento_galeria` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "mensajes_familia" -------------------------
-- CREATE TABLE "mensajes_familia" -----------------------------
CREATE TABLE `mensajes_familia` ( 
	`id_mensaje` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`titulo_mensaje` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`contenido_mensaje` LongText CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`fecha_posteo_mensaje` DateTime NOT NULL,
	`remitente_mensaje` VarChar( 60 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`destinatario_mensaje` VarChar( 60 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`users_id` TinyInt( 4 ) NOT NULL,
	`imagen_mensaje` VarChar( 500 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`audio_mensaje` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`victima` Char( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	PRIMARY KEY ( `id_mensaje` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "noticias" ---------------------------------
-- CREATE TABLE "noticias" -------------------------------------
CREATE TABLE `noticias` ( 
	`id_noticia` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`titulo_noticia` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`description_noticia` LongText CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`fecha_publicacion_noticia` Date NOT NULL,
	`estado_noticia` VarChar( 45 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`users_id` TinyInt( 4 ) NOT NULL,
	`ruta_img_noticia` VarChar( 300 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	PRIMARY KEY ( `id_noticia` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "notificaciones" ---------------------------
-- CREATE TABLE "notificaciones" -------------------------------
CREATE TABLE `notificaciones` ( 
	`id_notificaciones` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`titulo_notificacion` VarChar( 75 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`link_notificacion` VarChar( 500 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`contenido_notificacion` VarChar( 500 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`activo` Int( 11 ) NOT NULL,
	`secciones_id_seccion` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id_notificaciones` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "personajes_historicos" --------------------
-- CREATE TABLE "personajes_historicos" ------------------------
CREATE TABLE `personajes_historicos` ( 
	`id` TinyInt( 10 ) AUTO_INCREMENT NOT NULL,
	`nombre` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`fecha_nacimiento` Date NOT NULL,
	`fecha_fallecimiento` Date NOT NULL,
	`cuerpo` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`id_usuario` TinyInt( 10 ) NOT NULL,
	`ruta_imagen` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`ruta_audio` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `unique_id` UNIQUE( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "puntos_interes" ---------------------------
-- CREATE TABLE "puntos_interes" -------------------------------
CREATE TABLE `puntos_interes` ( 
	`id_punto` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`fecha_creacion_punto` DateTime NOT NULL,
	`cordenada_x_punto` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`cordenada_y_punto` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`estado_punto` VarChar( 45 ) CHARACTER SET big5 COLLATE big5_chinese_ci NOT NULL,
	`users_id` TinyInt( 4 ) NOT NULL,
	PRIMARY KEY ( `id_punto` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "roles" ------------------------------------
-- CREATE TABLE "roles" ----------------------------------------
CREATE TABLE `roles` ( 
	`id_roles` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`nombre_rol` VarChar( 60 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	PRIMARY KEY ( `id_roles` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "secciones" --------------------------------
-- CREATE TABLE "secciones" ------------------------------------
CREATE TABLE `secciones` ( 
	`id_seccion` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`nombre_seccion` VarChar( 50 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`estado` Int( 11 ) NOT NULL,
	`users_id` TinyInt( 4 ) NOT NULL,
	`activo_x_usuario` Int( 11 ) NOT NULL DEFAULT '1',
	PRIMARY KEY ( `id_seccion` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "sos" --------------------------------------
-- CREATE TABLE "sos" ------------------------------------------
CREATE TABLE `sos` ( 
	`id_sos` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`contenido_sos` VarChar( 250 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`contacto_sos` VarChar( 100 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`medio_sos` VarChar( 250 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`user_id` TinyInt( 4 ) NOT NULL,
	`tipo_mensaje_sos` TinyInt( 100 ) NOT NULL,
	`latitud_sos` Float( 12, 0 ) NOT NULL,
	`longitud_sos` Float( 12, 0 ) NOT NULL,
	PRIMARY KEY ( `id_sos` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "tipo_mensaje_sos" -------------------------
-- CREATE TABLE "tipo_mensaje_sos" -----------------------------
CREATE TABLE `tipo_mensaje_sos` ( 
	`id` TinyInt( 100 ) AUTO_INCREMENT NOT NULL,
	`tipo_mensaje` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`contenido` VarChar( 255 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "tips_prevencion" --------------------------
-- CREATE TABLE "tips_prevencion" ------------------------------
CREATE TABLE `tips_prevencion` ( 
	`id_tip` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`titulo_tip` VarChar( 60 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`contenido_tip` LongText CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`imagen_tip` VarChar( 300 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`secciones_id_seccion` Int( 11 ) NOT NULL,
	PRIMARY KEY ( `id_tip` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "users" ------------------------------------
-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users` ( 
	`id` TinyInt( 4 ) AUTO_INCREMENT NOT NULL,
	`username` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`password` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
	`status` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT 'activo',
	PRIMARY KEY ( `id` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 37;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE TABLE "radio" ------------------------------------
-- CREATE TABLE "radio" ----------------------------------------
CREATE TABLE `radio` ( 
	`id_radio` Int( 11 ) AUTO_INCREMENT NOT NULL,
	`dial_radio` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	`titulo_radio` VarChar( 150 ) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
	PRIMARY KEY ( `id_radio` ) )
CHARACTER SET = latin1
COLLATE = latin1_swedish_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- Dump data of "componentes_cultura_naval" ----------------
INSERT INTO `componentes_cultura_naval`(`id`,`tipo`,`titulo`,`cuerpo`,`ruta_archivo`,`fecha`,`latitud`,`longitud`,`id_usuario`,`himno`) VALUES ( '1', 'Historia', 'Prueba historia naval', 'Esta es una prueba de como se verá el modulo de Historia Naval', 'nada', '2017-12-27', '0', '0', '2', 'nada' );
INSERT INTO `componentes_cultura_naval`(`id`,`tipo`,`titulo`,`cuerpo`,`ruta_archivo`,`fecha`,`latitud`,`longitud`,`id_usuario`,`himno`) VALUES ( '3', 'Componente', 'Prueba componentes ARC', 'Esta es una prueba de como se verá el modulo de Componentes ARC', 'f2e7b-images.jpg', '2017-12-27', '0', '0', '2', 'nada' );
INSERT INTO `componentes_cultura_naval`(`id`,`tipo`,`titulo`,`cuerpo`,`ruta_archivo`,`fecha`,`latitud`,`longitud`,`id_usuario`,`himno`) VALUES ( '4', 'FBB', 'Estación de Guardacostas del Amazonas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sed eros orci.', '2e3aa-f51ddda4-b2d5-41e2-b5b7-4ea9c7fd5b70.jpeg', '2017-12-27', '10.390549', '-75.529854', '2', 'nada' );
INSERT INTO `componentes_cultura_naval`(`id`,`tipo`,`titulo`,`cuerpo`,`ruta_archivo`,`fecha`,`latitud`,`longitud`,`id_usuario`,`himno`) VALUES ( '8', 'Historia', 'Prueba historia naval 2', 'Esta es una prueba de como se verá el modulo de Historia Naval', '2e3aa-f51ddda4-b2d5-41e2-b5b7-4ea9c7fd5b70.jpeg', '2017-11-20', '0', '0', '2', 'nada' );
-- ---------------------------------------------------------


-- Dump data of "datos_basicos_users" ----------------------
INSERT INTO `datos_basicos_users`(`id_datos_user`,`nombre_user`,`apellido_user`,`documento_user`,`users_id`,`roles_id_roles`,`email_users`,`victima`) VALUES ( '35', 'Jonathan', 'Espitia', '1073683922', '36', '2', 'jespitia0@gmail.com', '0' );
-- ---------------------------------------------------------


-- Dump data of "eventos" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "galeria" ----------------------------------
-- ---------------------------------------------------------


-- Dump data of "mensajes_familia" -------------------------
-- ---------------------------------------------------------


-- Dump data of "noticias" ---------------------------------
-- ---------------------------------------------------------


-- Dump data of "notificaciones" ---------------------------
-- ---------------------------------------------------------


-- Dump data of "personajes_historicos" --------------------
-- ---------------------------------------------------------


-- Dump data of "puntos_interes" ---------------------------
-- ---------------------------------------------------------


-- Dump data of "roles" ------------------------------------
INSERT INTO `roles`(`id_roles`,`nombre_rol`) VALUES ( '2', 'Administrador' );
-- ---------------------------------------------------------


-- Dump data of "secciones" --------------------------------
INSERT INTO `secciones`(`id_seccion`,`nombre_seccion`,`estado`,`users_id`,`activo_x_usuario`) VALUES ( '3', 'S.O.S', '1', '36', '1' );
INSERT INTO `secciones`(`id_seccion`,`nombre_seccion`,`estado`,`users_id`,`activo_x_usuario`) VALUES ( '4', 'HAZTE MARINO', '1', '36', '1' );
-- ---------------------------------------------------------


-- Dump data of "sos" --------------------------------------
-- ---------------------------------------------------------


-- Dump data of "tipo_mensaje_sos" -------------------------
INSERT INTO `tipo_mensaje_sos`(`id`,`tipo_mensaje`,`contenido`) VALUES ( '1', 'Naufrago', 'Contenido del mensaje para alerta de tipo "Naufrago"' );
INSERT INTO `tipo_mensaje_sos`(`id`,`tipo_mensaje`,`contenido`) VALUES ( '2', 'Barco a la deriva', 'Contenido del mensaje para alerta de tipo "Barco a la deriva"' );
INSERT INTO `tipo_mensaje_sos`(`id`,`tipo_mensaje`,`contenido`) VALUES ( '3', 'Contaminación ambiental', 'Contenido del mensaje para alerta de tipo "Contaminación ambiental"' );
INSERT INTO `tipo_mensaje_sos`(`id`,`tipo_mensaje`,`contenido`) VALUES ( '4', 'Actividad ilicita', 'Contenido del mensaje para alerta de tipo "Actividad ilicita"' );
-- ---------------------------------------------------------


-- Dump data of "tips_prevencion" --------------------------
INSERT INTO `tips_prevencion`(`id_tip`,`titulo_tip`,`contenido_tip`,`imagen_tip`,`secciones_id_seccion`) VALUES ( '1', 'Simulacro Prevención', 'La Armada Nacional lideró esta mañana en Cartagena un simulacro para la prevención de amenazas, en coordinación con la Policía Nacional y las autoridades locales.

Durante el ejercicio se desarrolló el plan de seguridad denominado “Candado”, consistente en la activación de puestos de control, vigilancia y verificación en las principales rutas marítimas y terrestres de la ciudad, con tres anillos de seguridad.

Esta actividad, desarrollada en situaciones normales de seguridad, se realiza con el fin de entrenar los protocolos y procedimientos para reaccionar de manera inmediata y efectiva ante una eventual situación de amenaza terrorista contra la población civil o la Fuerza Pública.', 'bbccf-img_3638.jpg', '4' );
INSERT INTO `tips_prevencion`(`id_tip`,`titulo_tip`,`contenido_tip`,`imagen_tip`,`secciones_id_seccion`) VALUES ( '2', 'Realizamos simulacro para la prevención de amenazas', 'Con este tipo de ejercicios se busca medir los tiempos de reacción y mejorar la coordinación entre los miembros de la Fuerza Pública presente en Cartagena, para continuar garantizando la protección de la integridad y bienestar de sus ciudadanos.

En esta operación participaron unidades de la Aviación Naval, Guardacostas, Inteligencia, Infantería de Marina, Fuerzas Especiales, Gaula Militar, Comandos Navales y  de la Policía Metropolitana de Cartagena.

La Fuerza Pública continuará trabajando de manera coordinada para combatir las organizaciones al margen de la ley que delinquen en la ciudad, implementando y fortaleciendo las estrategias de seguridad que han permitido mantener a Cartagena como uno de los principales destinos turísticos y culturales del país.', 'ae661-img_3638.jpg', '3' );
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
INSERT INTO `users`(`id`,`username`,`password`,`status`) VALUES ( '2', 'kamiloC', '1234567890', 'activo' );
INSERT INTO `users`(`id`,`username`,`password`,`status`) VALUES ( '36', 'jona1122', '891005', 'activo' );
-- ---------------------------------------------------------


-- Dump data of "radio" ------------------------------------
INSERT INTO `radio`(`id_radio`,`dial_radio`,`titulo_radio`) VALUES ( '1', 'djfjirnvcs', 'radio1' );
INSERT INTO `radio`(`id_radio`,`dial_radio`,`titulo_radio`) VALUES ( '2', 'sdcdvsrv', 'radio2' );
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_users_componentes_cultura_naval" ------
-- CREATE INDEX "lnk_users_componentes_cultura_naval" ----------
CREATE INDEX `lnk_users_componentes_cultura_naval` USING BTREE ON `componentes_cultura_naval`( `id_usuario` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_datos_basicos_users_roles1_idx" --------
-- CREATE INDEX "fk_datos_basicos_users_roles1_idx" ------------
CREATE INDEX `fk_datos_basicos_users_roles1_idx` USING BTREE ON `datos_basicos_users`( `roles_id_roles` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_datos_basicos_users_users1_idx" --------
-- CREATE INDEX "fk_datos_basicos_users_users1_idx" ------------
CREATE INDEX `fk_datos_basicos_users_users1_idx` USING BTREE ON `datos_basicos_users`( `users_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_eventos_users1_idx" --------------------
-- CREATE INDEX "fk_eventos_users1_idx" ------------------------
CREATE INDEX `fk_eventos_users1_idx` USING BTREE ON `eventos`( `users_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_galeria_noticias1_idx" -----------------
-- CREATE INDEX "fk_galeria_noticias1_idx" ---------------------
CREATE INDEX `fk_galeria_noticias1_idx` USING BTREE ON `galeria`( `noticias_id_noticia` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_galeria_secciones1_idx" ----------------
-- CREATE INDEX "fk_galeria_secciones1_idx" --------------------
CREATE INDEX `fk_galeria_secciones1_idx` USING BTREE ON `galeria`( `secciones_id_seccion` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_mensajes_familia_users1_idx" -----------
-- CREATE INDEX "fk_mensajes_familia_users1_idx" ---------------
CREATE INDEX `fk_mensajes_familia_users1_idx` USING BTREE ON `mensajes_familia`( `users_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_noticias_users1_idx" -------------------
-- CREATE INDEX "fk_noticias_users1_idx" -----------------------
CREATE INDEX `fk_noticias_users1_idx` USING BTREE ON `noticias`( `users_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_notificaciones_secciones1_idx" ---------
-- CREATE INDEX "fk_notificaciones_secciones1_idx" -------------
CREATE INDEX `fk_notificaciones_secciones1_idx` USING BTREE ON `notificaciones`( `secciones_id_seccion` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_users_personajes_historicos" ----------
-- CREATE INDEX "lnk_users_personajes_historicos" --------------
CREATE INDEX `lnk_users_personajes_historicos` USING BTREE ON `personajes_historicos`( `id_usuario` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_puntos_interes_users1_idx" -------------
-- CREATE INDEX "fk_puntos_interes_users1_idx" -----------------
CREATE INDEX `fk_puntos_interes_users1_idx` USING BTREE ON `puntos_interes`( `users_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_secciones_users1_idx" ------------------
-- CREATE INDEX "fk_secciones_users1_idx" ----------------------
CREATE INDEX `fk_secciones_users1_idx` USING BTREE ON `secciones`( `users_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_sos_users1_idx" ------------------------
-- CREATE INDEX "fk_sos_users1_idx" ----------------------------
CREATE INDEX `fk_sos_users1_idx` USING BTREE ON `sos`( `user_id` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "lnk_tipo_mensaje_sos_sos" -----------------
-- CREATE INDEX "lnk_tipo_mensaje_sos_sos" ---------------------
CREATE INDEX `lnk_tipo_mensaje_sos_sos` USING BTREE ON `sos`( `tipo_mensaje_sos` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE INDEX "fk_tips_prevencion_secciones1_idx" --------
-- CREATE INDEX "fk_tips_prevencion_secciones1_idx" ------------
CREATE INDEX `fk_tips_prevencion_secciones1_idx` USING BTREE ON `tips_prevencion`( `secciones_id_seccion` );
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "lnk_users_componentes_cultura_naval" -------
-- CREATE LINK "lnk_users_componentes_cultura_naval" -----------
ALTER TABLE `componentes_cultura_naval`
	ADD CONSTRAINT `lnk_users_componentes_cultura_naval` FOREIGN KEY ( `id_usuario` )
	REFERENCES `users`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_datos_basicos_users_roles1" -------------
-- CREATE LINK "fk_datos_basicos_users_roles1" -----------------
ALTER TABLE `datos_basicos_users`
	ADD CONSTRAINT `fk_datos_basicos_users_roles1` FOREIGN KEY ( `roles_id_roles` )
	REFERENCES `roles`( `id_roles` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_datos_basicos_users_users1" -------------
-- CREATE LINK "fk_datos_basicos_users_users1" -----------------
ALTER TABLE `datos_basicos_users`
	ADD CONSTRAINT `fk_datos_basicos_users_users1` FOREIGN KEY ( `users_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_eventos_users1" -------------------------
-- CREATE LINK "fk_eventos_users1" -----------------------------
ALTER TABLE `eventos`
	ADD CONSTRAINT `fk_eventos_users1` FOREIGN KEY ( `users_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_galeria_noticias1" ----------------------
-- CREATE LINK "fk_galeria_noticias1" --------------------------
ALTER TABLE `galeria`
	ADD CONSTRAINT `fk_galeria_noticias1` FOREIGN KEY ( `noticias_id_noticia` )
	REFERENCES `noticias`( `id_noticia` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_galeria_secciones1" ---------------------
-- CREATE LINK "fk_galeria_secciones1" -------------------------
ALTER TABLE `galeria`
	ADD CONSTRAINT `fk_galeria_secciones1` FOREIGN KEY ( `secciones_id_seccion` )
	REFERENCES `secciones`( `id_seccion` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_mensajes_familia_users1" ----------------
-- CREATE LINK "fk_mensajes_familia_users1" --------------------
ALTER TABLE `mensajes_familia`
	ADD CONSTRAINT `fk_mensajes_familia_users1` FOREIGN KEY ( `users_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_noticias_users1" ------------------------
-- CREATE LINK "fk_noticias_users1" ----------------------------
ALTER TABLE `noticias`
	ADD CONSTRAINT `fk_noticias_users1` FOREIGN KEY ( `users_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "lnk_users_personajes_historicos" -----------
-- CREATE LINK "lnk_users_personajes_historicos" ---------------
ALTER TABLE `personajes_historicos`
	ADD CONSTRAINT `lnk_users_personajes_historicos` FOREIGN KEY ( `id_usuario` )
	REFERENCES `users`( `id` )
	ON DELETE Cascade
	ON UPDATE Cascade;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_puntos_interes_users1" ------------------
-- CREATE LINK "fk_puntos_interes_users1" ----------------------
ALTER TABLE `puntos_interes`
	ADD CONSTRAINT `fk_puntos_interes_users1` FOREIGN KEY ( `users_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_secciones_users1" -----------------------
-- CREATE LINK "fk_secciones_users1" ---------------------------
ALTER TABLE `secciones`
	ADD CONSTRAINT `fk_secciones_users1` FOREIGN KEY ( `users_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_sos_users1" -----------------------------
-- CREATE LINK "fk_sos_users1" ---------------------------------
ALTER TABLE `sos`
	ADD CONSTRAINT `fk_sos_users1` FOREIGN KEY ( `user_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "lnk_tipo_mensaje_sos_sos" ------------------
-- CREATE LINK "lnk_tipo_mensaje_sos_sos" ----------------------
ALTER TABLE `sos`
	ADD CONSTRAINT `lnk_tipo_mensaje_sos_sos` FOREIGN KEY ( `tipo_mensaje_sos` )
	REFERENCES `tipo_mensaje_sos`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


-- CREATE LINK "fk_tips_prevencion_secciones1" -------------
-- CREATE LINK "fk_tips_prevencion_secciones1" -----------------
ALTER TABLE `tips_prevencion`
	ADD CONSTRAINT `fk_tips_prevencion_secciones1` FOREIGN KEY ( `secciones_id_seccion` )
	REFERENCES `secciones`( `id_seccion` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------
-- ---------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


