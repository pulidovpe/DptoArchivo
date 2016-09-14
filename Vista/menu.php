<?php
/*
    Nombre:     menu.php
Archivo encargado de mostrar las opciones de menu segun el usuario logueado.

Variables usadas:
    $tipoPer:    Variable que almacena el nivel de seguridad del usuario.

Opciones disponibles para el usuario Administrador */
if($_SESSION['tipoPer']=='1') {
?>
    <ul>
    <li><a onclick="javascript:llamarasincronoget('Vista/operadores.php','col2','centro','0')" style='cursor:pointer'>Operadores</a></li>
    <li><a onclick="javascript:llamarasincronoget('Vista/especialidad.php','col2','centro','0')" style='cursor:pointer'>Especialidades</a></li>
    <li><a onclick="javascript:llamarasincronoget('Vista/requisitos.php','col2','centro','0')" style='cursor:pointer'>Requisitos</a></li>
    <li><a onclick="javascript:llamarasincronoget('Vista/eliminarExp.php','col2','centro','0')" style='cursor:pointer'>Expedientes</a></li>
    <li><a onclick="javascript:llamarasincronoget('Vista/historico.php','col2','centro','0')" style='cursor:pointer'>Historico</a></li>
    </ul>
<?php
/* Opciones disponibles para el usuario Operador */
} else if($_SESSION['tipoPer']=='2') {
?>
    <ul>
    <li><a onclick="javascript:llamarasincronoget('Vista/documento.php','col2','centro','0')" style='cursor:pointer'>Documentos</a></li>
    <li><a onclick="javascript:llamarasincronoget('Vista/expediente.php','col2','centro','0')" style='cursor:pointer'>Expedientes</a></li>
    </ul>
<?php
} else {
    /* De lo contrario (Si es un alumno) cierra la sesion */
    header("Location: ../Controlador/cerrarSesion.php");
    exit;
}
?>
