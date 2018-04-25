<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Formulario</title>
    <link rel = "stylesheet" type = "text/css"
         href = "<?php echo base_url(); ?>css/estilos.css">
		<link rel = "stylesheet" type = "text/css"
         href = "<?php echo base_url(); ?>css/diseñotabla.css">
</head>
<body>
    <header>
    <input type="checkbox" id="btn-menu">
    <label for="btn-menu"><img src="<?php echo base_url(); ?>css/icon.png" alt=""></label>
    <nav class="menu">
      <ul>
      <li><a href="<?php echo base_url(); ?>empleado">Inicio</a></li>
      <li><a href="<?php echo base_url(); ?>empleado/info3/">Noticia</a></li>
      <li><a href="<?php echo base_url(); ?>empleado/info5/">Redes sociales</a></li>
      <li><a href="<?php echo base_url(); ?>empleado/info4/">Información</a></li>
           <li><a href="<?php echo base_url(); ?>empleado/formulario">Formulario</a></li>
      <li><a href="<?php echo base_url(); ?>login/logout_ci">Salir</a></li>

      </ul>
    </nav>

  </header>


<script src="cerrar.js"></script>
<br>

<form action="/my-handling-form-page" method="post">
    <div>
        <label for="name">Taller:</label>
        <input type="text" id="name" />
    </div>
    <div>
        <label for="tematico">Tematica:</label>
        <input type="text" id="tematico" />
    </div>
    <div>
        <label for="obj">Objetivo:</label>
        <input type="text" id="obj" />
    </div>

<div>
        <label for="tec">Tecnica:</label>
        <input type="text" id="tec" />
    </div>

    <div>
        <label for="axu">Auxiliar:</label>
        <input type="text" id="axu" />
    </div>

    <div>
        <label for="pont">Ponente:</label>
        <input type="text" id="pont" />
    </div>

<div>
        <label for="asis">Asistencia:</label>
        <input type="text" id="asis" />
    </div>

    <div>
    	<input type="file" required name="Imagen"/>
    </div>

    <div class="button">
        <button type="submit">Enviar</button>
    </div>


</form>

</body>
