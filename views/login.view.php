 <?php require 'header.php'; ?>

	<div class="contenedor">
		<div class="post">
			<article>
				<h2 class="titlo">Iniciar Sesion</h2>

				<form class="formulario" method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
				<input type="text" name="usuario" placeholder="Usuario">
				<input type="password" name="password" placeholder="Contraseña">
				<input type="submit" value="iniciar sesion">
				</form>
				<?php echo $errores; ?>
			</article>
		</div>

 
	</div>

	<?php require 'footer.php'; ?>