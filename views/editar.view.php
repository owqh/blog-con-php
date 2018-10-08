<?php require 'header.php'; ?>

	<div class="contenedor">
			<div class="post">
			<article>
				<h2 class="titulo">Editar articulo</h2>
				<form class="formulario" method="post" enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
				<input type="hidden" value="<?php echo $pos['id'] ?>" name="id">
				<input type="text" name="titulo" value="<?php echo $pos['titulo']; ?>">
				<input type="text" name="extracto" value="<?php echo $pos['extracto']; ?>">
				<textarea name="texto" ><?php echo $pos['texto']; ?></textarea>
				<input type="file" name="thumb">
				<input type="hidden" name="thumb-guardada" value="<?php echo $pos['thumb']; ?>">
				
				<input type="submit" value="Modificar articulo"> 
				</form>
			</article>
		</div>

	</div>

	<?php require 'footer.php'; ?>