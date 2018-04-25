	<!DOCTYPE html>
<html>
<head>
	<title>Jurisdicción II Escárcega</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="witdth=divice-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1">
<link rel = "stylesheet" type = "text/css"
         href = "<?php echo base_url(); ?>css/estilos.css">
<?php
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
</head>
<body>
	<header>
		<input type="checkbox" id="btn-menu">
		<label for="btn-menu"><img src="<?php echo base_url(); ?>css/icon.png" alt=""></label>
		<nav class="menu">
			<ul>
		<li><a href="<?php echo base_url(); ?>">Inicio</a></li>
		<li><a href="<?php echo base_url(); ?>empleado/formato_talleres">Formatos</a></li>
		<li><a href="<?php echo base_url(); ?>login/logout_ci">Salir</a></li>
			</ul>
		</nav>

	</header>


	<div style='height:20px;'></div>
    <div>
		<?php echo $output; ?>
    </div>
</body>
</html>
