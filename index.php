<?php
/**
 * PHP Version 5
 * Application Router
 *
 * @category Router
 * @package  Router
 * @author   Orlando J Betancourth <orlando.betancourth@gmail.com>
 * @author   Luis Fernando Gomez Figueroa <lgomezf16@gmail.com>
 * @license  Comercial http://
 *
 * @version 1.0.0
 *
 * @link http://url.com
 */
session_start();

require_once "libs/utilities.php";

$pageRequest = "home";

if (isset($_GET["page"])) {
    $pageRequest = $_GET["page"];
}

//Incorporando los midlewares son codigos que se deben ejecutar
//Siempre
require_once "controllers/mw/verificar.mw.php";
require_once "controllers/mw/site.mw.php";

// aqui no se toca jajaja la funcion de este index es
// llamar al controlador adecuado para manejar el
// index.php?page=modulo

    //Este switch se encarga de todo el enrutamiento público
switch ($pageRequest) {
    //Accesos Publicos
case "home":
    //llamar al controlador
    include_once "controllers/home.control.php";
    die();
case "equipos":
    //llamar al controlador
    include_once "controllers/equipos.control.php";
    die();
case "gacustica":
  //llamar al controlador
  include_once "controllers/gacustica.control.php";
  die();
case "gaclasica":
  //llamar al controlador
  include_once "controllers/gaclasica.control.php";
  die();
case "baelectico":
  //llamar al controlador
  include_once "controllers/baelectico.control.php";
  die();
case "bacustico":
  //llamar al controlador
  include_once "controllers/bacustico.control.php";
  die();
case "bamplificadores":
  //llamar al controlador
  include_once "controllers/bamplificadores.control.php";
  die();
case "batacustica":
  //llamar al controlador
  include_once "controllers/batacustica.control.php";
  die();
case "batelectronica":
  //llamar al controlador
  include_once "controllers/batelectronica.control.php";
  die();
case "bateplatillos":
  //llamar al controlador
  include_once "controllers/bateplatillos.control.php";
  die();
case "malambrico":
  //llamar al controlador
  include_once "controllers/malambrico.control.php";
  die();
case "minstrumento":
  //llamar al controlador
  include_once "controllers/minstrumento.control.php";
  die();
case "minalambrico":
  //llamar al controlador
  include_once "controllers/minalambrico.control.php";
  die();
case "tdigitales":
  //llamar al controlador
  include_once "controllers/tdigitales.control.php";
  die();
case "pdigitales":
  //llamar al controlador
  include_once "controllers/pdigitales.control.php";
  die();
case "tsintetizadores":
  //llamar al controlador
  include_once "controllers/tsintetizadores.control.php";
  die();
case "login":
    include_once "controllers/security/login.control.php";
    die();
case "logout":
    include_once "controllers/security/logout.control.php";
    die();
}

//Este switch se encarga de todo el enrutamiento que ocupa login
$logged = mw_estaLogueado();
if ($logged) {
    addToContext("layoutFile", "verified_layout");
    include_once 'controllers/mw/autorizar.mw.php';
    if (!isAuthorized($pageRequest, $_SESSION["userCode"])) {
        include_once"controllers/notauth.control.php";
        die();
    }
    generarMenu($_SESSION["userCode"]);
}

require_once "controllers/mw/support.mw.php";
switch ($pageRequest) {
case "dashboard":
    ($logged)?
      include_once "controllers/dashboard.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "users":
    ($logged)?
      include_once "controllers/security/users.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "user":
    ($logged)?
      include_once "controllers/security/user.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "roles":
    ($logged)?
      include_once "controllers/security/roles.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "rol":
    ($logged)?
      include_once "controllers/security/rol.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "programas":
    ($logged)?
      include_once "controllers/security/programas.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "programa":
    ($logged)?
      include_once "controllers/security/programa.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();
case "productos":
    ($logged)?
      include_once "controllers/productos.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();

    case "producto":
    ($logged)?
      include_once "controllers/producto.control.php":
      mw_redirectToLogin($_SERVER["QUERY_STRING"]);
    die();

}

addToContext("pageRequest", $pageRequest);
require_once "controllers/error.control.php";
