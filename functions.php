<?php 

/*-- ME CONECTA A LA BASE DE DATOS --*/
function conexion($bd_config){
	try {
		$conexion = new PDO('mysql:host=localhost;dbname=' .$bd_config['basedatos'] , $bd_config['usuario'], $bd_config['pass']);
		return $conexion;
	} catch (PDOException $e) {
		return false;
	}
}
/*-- Limpia los datos para evitar injection sql --*/
function limpiarDatos($datos){
	$datos = trim($datos);
	$datos = stripcslashes($datos);
	$datos = htmlspecialchars($datos);
	return $datos;
}

/*-- Identifica la pagina en la que me encuentro --*/
function pagina_actual(){
	return isset($_GET['p']) ? (int)$_GET['p'] : 1;
}

/*-- Traigo los post de la base de datos --*/
function obtener_post($post_por_pagina, $conexion){
	$inicio = (pagina_actual() > 1) ? pagina_actual() * $post_por_pagina - $post_por_pagina : 0;
	$sentencia = $conexion->prepare("SELECT SQL_CALC_FOUND_ROWS * FROM articulos LIMIT $inicio, $post_por_pagina");
	$sentencia->execute();
	return $sentencia->fetchAll();
}

/*-- Calculando numero de artilos --*/
function numero_paginas($post_por_pagina, $conexion){
	$total_post= $conexion->prepare('SELECT FOUND_ROWS() as total');
	$total_post->execute();
	$total_post =$total_post->fetch()['total'];
	//ceil redondea hacia arriba
	$numero_paginas = ceil($total_post / $post_por_pagina);
	return $numero_paginas;
}

/*-- Limpia el id para evitar que pongan letras o demas cosas en la URL --*/
function id_articulo($id){
	return (int)limpiarDatos($id);
}

/*-- Trae el id de los articulos --*/
function obtener_post_por_id($conexion, $id){
	$resultado = $conexion->query("SELECT * FROM articulos WHERE id = $id LIMIT 1"); 
	$resultado = $resultado->fetchAll();
	return ($resultado) ? $resultado : false; 
}

/*-- Convirtiendo la fecha de la base de datos a un formato mas legible --*/
function fecha($fecha){
	// strtotime convierte de cadena de texto a tiempo 
	$timestamp = strtotime($fecha);
	$meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'];
	$dia = date('d', $timestamp);
	$mes = date('m', $timestamp) - 1;
	$year = date('Y', $timestamp);

	$fecha = "$dia de ". $meses[$mes] . " del $year";
	return $fecha;
} 

function comporbarSesion(){
	if (!isset($_SESSION['usuario'])) {
		header('Location:' . RUTA);
	}
}

 ?>