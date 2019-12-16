  use `shop_online`;

  
  CREATE TABLE `tipo_tarjeta` (
  `id_tarjeta` BIGINT(18) NOT NULL AUTO_INCREMENT,
  `tipo_tarjeta` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_tarjeta`));
  
CREATE TABLE `transaction`(
  `id_transaction` BIGINT(18) NOT NULL AUTO_INCREMENT,
  `fecha_transaction` VARCHAR(45) NOT NULL,
  `id_detalle` BIGINT(18) NOT NULL,
  PRIMARY KEY (`id_transaction`),
   CONSTRAINT `id_transaction_fk` FOREIGN KEY (`id_detalle`) REFERENCES `transaction_detalle` (`id_detalle`) ON DELETE NO ACTION ON UPDATE NO ACTION
  );
  
  CREATE  TABLE `transaction_detalle`(
  `id_detalle` BIGINT(18) NOT NULL AUTO_INCREMENT,
  `equipo` BIGINT(18) NOT NULL,
  `cantidad` BIGINT(18) NOT NULL,
  `id_tarjeta` BIGINT(18) NOT NULL,
  PRIMARY KEY (`id_detalle`));
  
  
   CREATE TABLE `categoria_equipo`(
  `id_categ_equipo` BIGINT(18) NOT NULL AUTO_INCREMENT,
   `categoria_equipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_categ_equipo`));
  
  CREATE TABLE `equipo` (
  `id_equipo` BIGINT(18) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `precio_equipo` DECIMAL(18,4) NULL,
  `img` VARCHAR(255) NULL,
  `id_categ_equipo` BIGINT(18) NULL,
  PRIMARY KEY (`id_equipo`),
  CONSTRAINT `id_categ_equipo` FOREIGN KEY (`id_categ_equipo`) REFERENCES `categoria_equipo` (`id_categ_equipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
  );
  
  select * from categoria_equipo;
  
  use shop_online;
  INSERT INTO `equipo` VALUES(2,'Guitarra eléctrica 2',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_electrica/guitarra_telecaster.elec.jpg'),1);
  INSERT INTO `equipo` VALUES(3,'Guitarra eléctrica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_electrica/guitarra_vintage.elec.jpg'),1);
  INSERT INTO `equipo` VALUES(4,'Guitarra eléctrica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_electrica/guitarra_funda_cafe.elec.jpg'),1);
  
  INSERT INTO `equipo` VALUES(5,'Guitarra acústica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_acustica/guitarra_electroacústica.acu.jpg'),1);
  INSERT INTO `equipo` VALUES(6,'Guitarra acústica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_acustica/guitarra_western.acu.jpg'),1);
  INSERT INTO `equipo` VALUES(7,'Guitarra acústica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_acustica/guitarra_westernAzul.acu.jpg'),1);
  
  INSERT INTO `equipo` VALUES(8,'Guitarra clásica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_clásica/guitarra_clasica.cla.jpg'),1);
  INSERT INTO `equipo` VALUES(9,'Guitarra clásica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_clásica/guitarra_clasicaacu.jpg'),1);
  INSERT INTO `equipo` VALUES(10,'Guitarra clásica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/guitarra/guitarra_clásica/guitarra_electroacústica.cla.jpg'),1);
  
  INSERT INTO `equipo` VALUES(11,'Bajo eléctrico 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bajo/electrico/bajo_electico_cromado.ba.jpg'),2);
  INSERT INTO `equipo` VALUES(12,'Bajo eléctrico 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bajo/electrico/bajo_electrico.ba.jpg'),2);
  INSERT INTO `equipo` VALUES(13,'Bajo eléctrico 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bajo/electrico/bajo_electrico_mustang.ba.jpg'),2);
  
  INSERT INTO `equipo` VALUES(14,'Bajo acústico 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bajo/acústico/bajo_electroacustico_miel.jpg'),2);
 
  
  INSERT INTO `equipo` VALUES(15,' Bajo amplificadores 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bajo/amplificadores/amplificador_cabezal.jpg'),2);
  INSERT INTO `equipo` VALUES(16,' Bajo amplificadores 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bajo/amplificadores/amplificador_con_bocina.jpg'),2);
  INSERT INTO `equipo` VALUES(17,' Bajo amplificadores 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bajo/amplificadores/amplificadores8.jpg'),2);
  
  INSERT INTO `equipo` VALUES(18,'Teclados Digitales 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/teclado/tecladosDigitales/teclado7octava.jpg'),3);
  INSERT INTO `equipo` VALUES(19,'Teclados Digitales 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/teclado/tecladosDigitales/teclado49teclascompacto.jpg'),3);
  INSERT INTO `equipo` VALUES(20,'Teclados Digitales 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/teclado/tecladosDigitales/teclado61teclas.jpg'),3);
  
  INSERT INTO `equipo` VALUES(21,'Piano Digitales 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/teclado/pianoDigitales/piano_electronico.jpg'),3);
  INSERT INTO `equipo` VALUES(22,'Piano Digitales 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/teclado/pianoDigitales/pianodigital_compacto.jpg'),3);
 
  
  INSERT INTO `equipo` VALUES(23,' Teclado Sintetizadores 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/teclado/sintetizadores/teclado_sintetizador.jpg'),3);
  INSERT INTO `equipo` VALUES(24,' Teclado Sintetizadores 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/teclado/sintetizadores/tecladoMicroarranger.jpg'),3);

  
  INSERT INTO `equipo` VALUES(25,'Bateria 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/acústica/bateria_catalina.jpg'),4);
  INSERT INTO `equipo` VALUES(26,'Bateria 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/acústica/bateria_completa.jpg'),4);
  INSERT INTO `equipo` VALUES(27,'Bateria 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/acústica/bateria3pcs_junior.jpg'),4);
  
  INSERT INTO `equipo` VALUES(28,'Bateria electronica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/electrónica/bateria_electronica.jpg'),4);
  INSERT INTO `equipo` VALUES(29,'Bateria electronica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/electrónica/bateriaelectronica_portable.jpg'),4);
  INSERT INTO `equipo` VALUES(30,'Bateria electronica 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/electrónica/controlador_percusion.jpg'),4);
  
  INSERT INTO `equipo` VALUES(31,' Bateria Platillos 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/platillos/platillo_crash.jpg'),4);
  INSERT INTO `equipo` VALUES(32,' Bateria Platillos 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/platillos/platillo-liviano.jpg'),4);
  INSERT INTO `equipo` VALUES(33,' Bateria Platillos 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/bateria/platillos/platillos_hi_hat.jpg'),4);
  
  INSERT INTO `equipo` VALUES(34,'Micrófono alambrico para vocalista 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/alambricoVocalista/microfonococal_unidirectional.jpg'),5);
  INSERT INTO `equipo` VALUES(35,'Micrófono alambrico para vocalista 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/alambricoVocalista/microfonovideo_production.jpg'),5);
  INSERT INTO `equipo` VALUES(36,'Micrófono alambrico para vocalista 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/alambricoVocalista/microfonovocal_speech.jpg'),5);
  
  INSERT INTO `equipo` VALUES(37,'Micrófono alambrico Instrumento 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/alambricoInstrumento/microfono_para_bateria.jpg'),5);
  INSERT INTO `equipo` VALUES(38,'Micrófono alambrico Instrumento 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/alambricoInstrumento/microfono_redoblante.jpg'),5);
  INSERT INTO `equipo` VALUES(39,'Micrófono alambrico Instrumento 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/alambricoInstrumento/microfono_shure.jpg'),5);
   
  INSERT INTO `equipo` VALUES(40,'Micrófono alambrico Inalambrico vocalista 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/inalambricoVocalista/microfono_inalambrico.jpg'),5);
  INSERT INTO `equipo` VALUES(41,'Micrófono alambrico Inalambrico vocalista 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/inalambricoVocalista/microfono_inalambrico_doble.jpg'),5);
  INSERT INTO `equipo` VALUES(42,'Micrófono alambrico Inalambrico vocalista 3',2000,LOAD_FILE('C:/negocios2parcial/htdocs/Tower-Record-master/public/imgs/microfono/inalambricoVocalista/microfono_inalambrico_vocal.jpg'),5);
  
  
  
  
  
  INSERT INTO `sub_categoria_equipo` VALUES(1,'Guitarra eléctrica 1',LOAD_FILE('E:/Images/jack.jpg'));
  
    INSERT INTO `sub_categoria_equipo` VALUES(1,'Eléctrica',1);
	INSERT INTO `sub_categoria_equipo` VALUES(2,'Acústica',1);
	INSERT INTO `sub_categoria_equipo` VALUES(3,'Clásica',1);