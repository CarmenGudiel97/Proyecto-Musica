<?php 

require_once('models/productos.model.php');

function run(){

	$viewData = array();	
	
	// $viewData["id_sub_categ_equipo"] = "";


	$viewData["id_sub_categ_equipo"] = $_GET["id_sub_categ_equipo"];
	$viewData["categorias"] = obtenerProductoXCodigo($viewData["id_sub_categ_equipo"]);
	$categorias = obtenerProductoXCodigo($viewData["id_sub_categ_equipo"]);
	// if (isset($_GET["id_sub_categ_equipo"])) {
		
		
    //     // mergeFullArrayTo($categorias, $viewData);        
	// }



	renderizar("equipos", $viewData);
}

run();

 ?>