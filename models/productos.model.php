<?php 

require_once 'libs/dao.php';

function obtenerTodosCategorias(){
    /*$conn = new mysqli('server','user','pswd','db','port');
    if($conn->errno > 0){
      die();
    }
    $cursor = $conn->query("select * from productos;");
    $productos = array();
    if($cursor){
      foreach ($cursor as $registro){
        $productos[] = $registro;
      }
    }
    return $productos;
    */
    $categorias = array();
    $categorias = obtenerRegistros("select * from categoria_equipo");
    return $categorias;
}

function obtenerTodosProductos(){
	/*$conn = new mysqlli('server','user','pswd', 'db', 'port');
	if ($conn->errno > 0) {
		die();
	}

	$cursor = $conn->query("select * from productos;");
	$productos = array();
	if ($cursor) {
		foreach ($cursor as $registro) {
			$productos[] = $registro;
		}
	}

	return $productos
	*/

	$productos = array();
	$productos = obtenerRegistros("select * from productos");
	return $productos;

	}


	function obtenerProductoXCodigo($id_sub_categ_equipo){
		$sqlstr = 'select * from equipo where id_sub_categ_equipo=%d';
		$categoria = array();
		// $categoria = obtenerRegistros(
		// 	sprintf($sqlstr, $id_sub_categ_equipo)
		// );	
		$categoria = obtenerRegistros(sprintf($sqlstr, $id_sub_categ_equipo));
		return $categoria;
	}

	function agregarNuevoProducto($prddsc, $prdprc){
		$sqlIns = "insert into products(prddsc, prdprc) value ('%s', %f);";
		$result = ejecutarNonQuery(
			sprintf(
				$sql,
				$prddsc,
				floatval($pr)
			)
		);

		if($result > 0){
			return getLastInsertId();
	}else{
		return 0;
	}
}

 ?>
