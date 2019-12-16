<?php
/**
 * PHP Version 5
 * Parametros Generales
 *
 * @category Utilities
 * @package  Utilities\Parameters
 * @author   Orlando J Betancourth <orlando.betancourth@gmail.com>
 * @license  Comercial http://
 *
 * @version 1.0.0
 *
 * @link http://url.com
 */
$server = "localhost";
$user = "user";
$pswd = "negocios06";
$database = "shop_online";
$port = "3306";

$emailHost = 'email-smtp.us-west-2.amazonaws.com';
$smtpUser = 'amazonwebuserkey';
$smtpSecret = 'smtpscreteer';
$smtpPort = "587";

$host_server = 'http://localhost/mvc/';
if (isset($_SERVER["SERVER_MVC"])) {
    $host_server = $_SERVER["SERVER_MVC"];
}

?>
