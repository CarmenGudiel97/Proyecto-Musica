CREATE SCHEMA `shop_online` ;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'negocios06';
GRANT ALL ON shop_online.* TO 'user'@'localhost';