<?php 

define('RUTA', 'http://localhost/curso_php/practicas/blog');
/*-- Conexion a la base de datos --*/
$bd_config =array(
	'basedatos' => 'blog',
	'usuario' => 'root',
	'pass' => ''
	);

/*-- Configuracion del pie de pagina --*/
$blog_config =array(
	'post_por_pagina' => '2',
	'carpeta_imagenes' => 'imagenes/'
	);

$blog_admin = array(
	'usuario' => 'oscar',
	'password' =>'oscar123'
	);

 ?>