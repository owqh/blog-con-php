<?php session_start();
require 'admin/config.php';
require 'functions.php';


$errores ='';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$usuario = limpiarDatos($_POST['usuario']);
	$password = $_POST['password'];
	//$password= hash('sha512',$password);
	//Ecncriptacion de la password
	$conexion =  conexion($bd_config);

	if (!$conexion) {
	header('Location: error.php'); 
	}else{
		$statement=$conexion->prepare('SELECT * FROM usuarios WHERE usuario = :usuario AND password = :password LIMIT 1');
		$statement->execute(array(':usuario' => $usuario, ':password' => $password));
		$resultado=$statement->fetch();
	}

	
	if ($resultado !== false) {
		$_SESSION['usuario'] =$usuario;
		header('Location:' . RUTA . '/admin');
	}else {
		$errores .= '<li>Usuario o contraseña incorrecta </li>';
	}

}

require 'views/login.view.php ';
 ?>