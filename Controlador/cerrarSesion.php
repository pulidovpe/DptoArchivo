<?php session_start();
	session_destroy();
	echo "<script language='javascript'> ";
	echo 'window.open("../principal.php","_self")';
	echo "</script>";
	/* En caso de cierre de sesion, 
		se destruye la sesion y se carga
		la pagina principal.
	*/
?>