<?php if(@session_start() == false){session_destroy();session_start();} 
/* 
Archivo: principal.php
Variables usadas:
   $user:   Variable de sesion asociada al operador conectado.
*/
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8" />
    <title>Sistema de Archivo para la UNEFA</title>
    <link rel="stylesheet" href="Css/estilos.css"/>
    <script src="Scripts/jquery.min.js" type="text/javascript"></script>
    <script src="Scripts/ajax.js" type="text/javascript"></script>
    <script src="Scripts/efectos.js" type="text/javascript"></script>
    <script src="Scripts/popcalendar.js" type="text/javascript"></script>
</head>
<body>
	<?php if(!isset($_SESSION['user'])){ ?>
    <!-- Sino hay sesion abierta, muestra la caja de bienvenida -->
        <div id='infobox'>
            <span class="close"><a href="#"><img src="Imagenes/close.png"/></a></span>
            <br/>
            <div id="bienvenida">				
                <center>
				<img src="Imagenes/EscudoUNEFANUEVO.jpg" style="width:35%;height:150px;" alt="" /><br>
				<span>BIENVENIDO A SISGEAC</span>
			</center>
            </div>		
        </div>
    <?php } ?>
    <div id="container">
        <div id="header">
            <h1> </h1>
        </div>
		<?php if(isset($_SESSION['user'])){ ?>
        <!-- Si algun usuario inicio sesion, muestra el menu -->
        <div id="menu">            
            <?php include('Vista/menu.php')  ?>
        </div>
        <?php } else {
            /* De lo contrario muestra la bienvenida */
            echo "<div style='height:30px;border: 2px solid #ACCFE8;'>";
            echo "<center><font>Bienvenidos al Sistema de Gestion de Archivo y Correspondencia de la UNEFA (Nucleo Apure)</font></center>";
            echo "</div>";
        } ?>
        <div id="cerrar_sesion">
            <?php 
            if(isset($_SESSION['user'])){ 
			/* Si algun usuario inicio sesion, muestra quien es y el boton desconectar */
                echo "<table align='right'><tr><td align='right'>";
                echo "<strong><font style='color:#00BFFF'>Usuario: </font></strong>".$_SESSION["nombre"]; 
                echo "<a href='Controlador/cerrarSesion.php' target='_self' style='color:#00BFFF'><strong> Cerrar Sesion </strong></a>";
                echo "</td></tr></table>";
            } ?>
        </div>
        <div id="content">
            <div id="col1">
            </div>
            <div id="col2">
                <!-- Div central donde se cargan todos los modulos -->
                <div id="centro">
                    <?php
					if(!isset($_SESSION['user'])) {
                    	/* Sino hay sesion abierta, muestra la ventana de login */
                    	include("Vista/login.php");                     
                    } ?>					
                </div>				
            </div>
            <div id="col3">
            </div>
        </div>
        <div id="footer">
            <p> </p>
        </div>
    </div>
</body>
</html>
