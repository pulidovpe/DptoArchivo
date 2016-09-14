/*
 * Documento JavaScript
 * Funciones para crear objetos ajax
 * y demas funciones pertinentes a paginaciones y busquedas.
*/
function objetoAjax() {
	var xmlhttp=false;
	try {
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
		   xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (E) {
			xmlhttp = false;
  		}
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
		xmlhttp = new XMLHttpRequest();
	}
	return xmlhttp;
}
//Funcion para paginar resultados!
function Pagina(nropagina,Qpag) {
	//donde se mostrara los registros
	divContenido = document.getElementById('paginador');
	
	ajax=objetoAjax();
	//uso del medoto GET
	//indicamos el archivo que realizara el proceso de paginar
	//junto con un valor que representa el nro de pagina
	switch(Qpag) {
		case '2':ajax.open("GET", "Controlador/paginas2.php?pag="+nropagina);break;  // DOCUMENTOS
		case '3':ajax.open("GET", "Controlador/paginas3.php?pag="+nropagina);break;  // EXPEDIENTES
		case '4':ajax.open("GET", "Controlador/paginas4.php?pag="+nropagina);break;  // REQUISITOS
		case '5':ajax.open("GET", "Controlador/paginas5.php?pag="+nropagina);break;  // ESPECIALIDADES 
		
	}
	divContenido.innerHTML= '<center><img src="Imagenes/cargando.gif"></center>';
	ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
			//mostrar resultados en esta capa
			divContenido.innerHTML = ajax.responseText;
		}
	}
	//como hacemos uso del metodo GET
	//colocamos null ya que enviamos 
	//el valor por la url ?pag=nropagina
	ajax.send(null)
}
// Cargar los cheklist de los requisitos
function cargaReq(requisito,cual) {
	ajax=objetoAjax();
	//uso del medoto GET
	if(cual == '0') {
		divContenido = document.getElementById('reqXent');	
		ajax.open("GET", "Controlador/reqCargado.php?req="+requisito);
	} else {
		divContenido = document.getElementById('reqXent');		
		ajax.open("GET", "Controlador/reqCargado.php?req="+requisito+"&cuales="+cual);			
	}
	divContenido.innerHTML= '<img src="Imagenes/cargando.gif">';
	ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
			//mostrar resultados en esta capa
			divContenido.innerHTML = ajax.responseText;
		}
	}
	//como hacemos uso del metodo GET
	//colocamos null ya que enviamos 
	//el valor por la url ?pag=nropagina
	ajax.send(null)
}
// Contar los cheklist marcados de los requisitos
function contarChk() {
	var cuales = 0;
	var marcados = new String(" ");
	if(document.getElementById('tipoExp1').value > 0) {
		var checkboxes = document.getElementById('planilla3').requisito;
		for( cuales = 0; cuales < checkboxes.length ; cuales++ ) {
			if(checkboxes[cuales].checked) {
				marcados = marcados+checkboxes[cuales].id+";";
			}
		}	
		document.getElementById('reqMar').value = marcados;
		//alert('Los checkbox marcados son: '+document.getElementById('reqMar').value);
	} else {
		alert('Por favor, debe escoger el tipo de expediente!');
		return false;
	}
}
// Funcion para buscar cadenas de palabras.
function buscarDato(cual) {
	divresul = document.getElementById('respuesta4');
	ajax=objetoAjax();
	switch(cual) {
		case '0':bus=document.getElementById('cedula').value;  // EXPEDIENTE
				ajax.open("POST", "Controlador/paginasBB.php",true);
				break;
		case '1':bus=document.getElementById('cedula').value; // OPERADOR
				ajax.open("POST", "Controlador/paginas1.php",true);
				break;
		case '2':bus=document.getElementById('titulo').value; // DOCUMENTO
				ajax.open("POST", "Controlador/paginasB2.php",true);
				break;
		case '3':bus=document.getElementById('cedula').value;  // EXPEDIENTE
				ajax.open("POST", "Controlador/paginasB3.php",true);
				break;
		case '4':bus=document.getElementById('tipoExp').value;  // REQUISITO
				ajax.open("POST", "Controlador/paginasB4.php",true);
				break;
		case '5':bus1=document.getElementById('op2').value;  // HISTORICO OPERADOR
				bus2=document.getElementById('cedula').value;  // HISTORICO EXPEDIENTE
				bus3=document.getElementById('titulo').value;  // HISTORICO DOCUMENTO
				bus4=document.getElementById('operacion').value;  // HISTORICO OPERACION
				bus5=document.getElementById('fecha0').value;  // HISTORICO FECHA
				lim=document.getElementById('limite').value;  // HISTORICO LIMITE
				ajax.open("POST", "Controlador/paginasB5.php",true);
				break;
		case '6':bus1=document.getElementById('tipo').value;  // REPORTE POR TIPO DE EXPEDIENTE
				bus2=document.getElementById('activo').value;  // REPORTE POR ACTIVO/INACTIVO
				bus3=document.getElementById('especial').value;  // REPORTE POR ESPECIALIDAD
				bus4=document.getElementById('cedula').value;  // REPORTE POR CEDULA
				lim=document.getElementById('limite').value;  // REPORTE LIMITE
				ajax.open("POST", "Controlador/paginasB6.php",true);
				break;
	}	
	ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
			divresul.innerHTML = ajax.responseText;
		}
  	}
	ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	if(cual!='5' && cual!='6') ajax.send("busca="+bus);
	else {
		if(cual=='5') ajax.send("busca1="+bus1+"&busca2="+bus2+"&busca3="+bus3+"&busca4="+bus4+"&busca5="+bus5+"&limite="+lim);
		if(cual=='6') ajax.send("busca1="+bus1+"&busca2="+bus2+"&busca3="+bus3+"&busca4="+bus4+"&limite="+lim);
	}
}
// Funcion que carga paginas sin recargar, dentro de un div, sin envio de parametros
function llamarasincronoget(url, div_padre, id_contenedor, comp)
{
	var pagina_requerida = objetoAjax();
	if(comprobar(comp)) {	
		pagina_requerida.onreadystatechange=function()  // funcion de respuesta
		{
			cargarpagina(pagina_requerida, id_contenedor, div_padre);
		}
		pagina_requerida.open('GET', url, true); // asignamos los metodos open y send
		pagina_requerida.send(null);
	}
}

// Funcion que carga paginas sin recargar, dentro de un div, con envio de parametros
function llamarasincronopost(url, div_padre, id_contenedor, comp, valores)
{
	var pagina_requerida = objetoAjax();
	//var div_paginar = new String("respuesta4"); 
	//url_tmp = url;
	//if(div_paginar!=id_contenedor) {
		if(comprobar(comp)) {
			pagina_requerida.open('POST', url, true); // asignamos los metodos open y send
			pagina_requerida.onreadystatechange=function()  // funcion de respuesta
			{
				validacargarpagina(pagina_requerida, id_contenedor, div_padre);
			}	
			pagina_requerida.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
			pagina_requerida.send(valores);
			//alert("Recibi el resultado. Opcion: "+valores);
		} 
	//} 
}
// todo es correcto y ha llegado el momento de poner la informacion requerida
// en su sitio en la pagina xhtml
function cargarpagina(pagina_requerida, id_contenedor,div_padre)
{
	if (pagina_requerida.readyState == 4 && (pagina_requerida.status==200 || window.location.href.indexOf("http")==-1))
		document.getElementById(id_contenedor).innerHTML=pagina_requerida.responseText;
}
function validacargarpagina(pagina_requerida, id_contenedor, div_padre)
{	
	if (pagina_requerida.readyState == 4 && (pagina_requerida.status==200 || window.location.href.indexOf("http")==-1)) {	
		document.getElementById(id_contenedor).innerHTML=pagina_requerida.responseText;
		modif = document.getElementById(id_contenedor).firstChild.nodeValue.substring(0, 2);
		if(modif=='23') {
			//id_contenedor="result1";
			//alert('Cadenas modificada:'+modif+'<--Hasta aqui. Y el nombre del contenedor:'+id_contenedor);
			document.getElementById(id_contenedor).style.display='block';		
		}		
		mostrar_respuesta(id_contenedor,div_padre);
	}
	// Mostrar el div, que debe estar oculto.
	//document.getElementById(id_contenedor).style.display="block";	
}

function mostrar_respuesta(id_contenedor,div_padre) {
	//alert('Cadena recibida:'+document.getElementById(id_contenedor).firstChild.nodeValue+'<--Hasta aqui.');
	recibe = document.getElementById(id_contenedor).firstChild.nodeValue.substring(0, 2);
	switch(recibe) {
		case '00':
				alert("Usuario y/o clave incorrectos!");
				eliminar_ele(id_contenedor);
				document.getElementById('clave').value="";
				//document.getElementById('user').value="";
				document.getElementById('user').focus();
				crear_ele(div_padre,"div",id_contenedor);
				break;
		case '01':	// INICIO DE SESION EXITOSO						
				window.open("principal.php","_self");
				break;
		case '02':
				alert("Documento agregado exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/documento.php','col2','centro','0');
				break;
		case '03':
				alert("Error al tratar de grabar los datos!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				break;
		case '04':	
				alert("Campos no pueden ir vacios! Rectifique por favor.");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				break;
		case '05':
				alert("Documento modificado exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/documento.php','col2','centro','0');
				break;
		case '06':   //BUSQUEDA!
				break;
		case '07':
				alert("Expediente creado exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/expediente.php','col2','centro','0');
				break;
		case '08':
				alert("Debe cambiar su clave inmediatamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/operadores.php','col2','centro','0');
				break;
		case '09':alert("Error al tratar de modificar(borrar) los datos!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				break;
		case '10':
				alert("Expediente modificado exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/expediente.php','col2','centro','0');
				break;
		case '11':
				alert("Datos del requisito grabados exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/requisitos.php','col2','centro','0');
				break;
		case '12':
				alert("Datos del operador grabados exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/operadores.php','col2','centro','0');
				break;
		case '13':
				alert("Como usuario administrador, se le recomienda cambiar la clave inmediatamente!");
				window.open("principal.php","_self");
				//llamarasincronoget('Vista/operadores.php','col2','centro','0');
				break;
		case '14':
				alert("Datos de la especialidad grabados exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/especialidad.php','col2','centro','0');
				break;
		case '15':
				alert("Ya existe un expediente en esa Especialidad!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				break;
		case '16':
				alert("Cedula pertenece a un estudiante!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				break;
		case '17':
				alert("Cedula pertenece a otro operador!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				break;
		case '18':
				alert("Expediente eliminado exitosamente!");
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/eliminarExp.php','col2','centro','0');
				break;
		case '19':
				alert("Esta cedula ya esta asignada a un expediente! Verifique por favor los datos.");
				alert("Expediente creado exitosamente!");				
				eliminar_ele(id_contenedor);crear_ele(div_padre,"div",id_contenedor);
				llamarasincronoget('Vista/expediente.php','col2','centro','0');
				break;
	}

}

function eliminar_ele(elemento) {
	// Obtenemos el elemento
	var ele = document.getElementById(elemento);
	// Obtenemos el padre de dicho elemento
	// con la propiedad parentNode
	var padre = ele.parentNode;
	// Eliminamos el hijo (el) del elemento padre
	padre.removeChild(ele);
}

function crear_ele(padre1,tipo,nombre) {
	ele_crea = document.createElement(tipo);
	ele_crea.setAttribute("id", nombre);
	document.getElementById(padre1).appendChild(ele_crea);
}

function agregar_input(div_id,nombre) {
	padre=document.getElementById(div_id);
	hijo=document.createElement('input');
	hijo.type="text";
	hijo.name=nombre;
	hijo.id=nombre;
	//br=document.createElement('br');
	//br.id="br"+i;
	padre.appendChild(hijo);
	//padre.appendChild(br);
	i++;
}
	

function confirmaBorrar()
{
	var acepta=confirm("Seguro que desea eliminar este registro???");
	if(acepta)
		return true;
	else
	return false;
}

function comprobar(cual)
{
	switch(cual) {
		case '1':  // OPCIONES PARA VALIDAR INICIO DE SESION
			if (document.getElementById('user').value == ''){
				alert('Por favor, debe ingresar el usuario!');
				return false;
			}
			if (document.getElementById('clave').value == ''){
				alert('Por favor, debe ingresar la clave!');
				return false;
			} else return true;
			break;
		case '2':  // OPCIONES PARA VALIDAR AGREGAR/MODIFICAR UN NUEVO DOCUMENTO
			if (document.getElementById('dpto1').value == ''){
				alert('Por favor, debe elegir el departamento!');
				return false;
			}
			if (document.getElementById('tipoDoc1').value == ''){
				alert('Por favor, debe elegir el tipo de documento!');
				return false;
			}
			if (document.getElementById('titulo').value == ''){
				alert('Por favor, debe escribir el titulo!');
				return false;
			}
			if (document.getElementById('ubiDoc').value == ''){
				alert('Por favor, debe escribir la ubicacion!');
				return false;
			} else return true;
			break;
		case '3':  // OPCIONES PARA VALIDAR AGREGAR/MODIFICAR UN NUEVO EXPEDIENTE 
			if (document.getElementById('cedulaExp').value == ''){
				alert('Por favor, debe escribir el numero de cedula!');
				return false;
			}
			if (document.getElementById('nombre').value == ''){
				alert('Por favor, debe ingresar el nombre y apellido!');
				return false;
			}
			if (document.getElementById('sexo').value == ''){
				alert('Por favor, debe elegir el sexo!');
				return false;
			}
			if (document.getElementById('direccion').value == ''){
				alert('Por favor, debe indicar la direccion!');
				return false;
			}
			if (document.getElementById('ubicacion').value == ''){
				alert('Por favor, debe especificar la ubicacion!');
				return false;
			}
			if (document.getElementById('amonesta').value == ''){
				alert('Por favor, debe especificar si existe amonestacion!');
				return false;
			}
			if (document.getElementById('activo').value == ''){
				alert('Por favor, debe especificar si el alumno esta activo!');
				return false;
			}
			if (document.getElementById('especial1').value == 0){
				alert('Por favor, debe elegir la especialidad!');
				return false;
			}  
			if (document.getElementById('tipoExp1').value == 0){
				alert('Por favor, debe escoger el tipo de expediente!');
				return false;
			} else return true;
			break;
			
		case '4':  // OPCIONES PARA CONFIRMAR LA ELIMINACION DE REGISTROS
				if(confirmaBorrar()) {										
					return true; 
				} else return false;
				break;
				
		case '5':  // OPCIONES PARA CONFIRMAR QUE LA DESCRIPCION DEL REQUISITO NO ESTE VACIA
			if (document.getElementById('tipoExp').value == ''){
				alert('Por favor, debe elegir el tipo de Expediente!');
				return false;
			} 
			if (document.getElementById('describe').value == ''){
				alert('Por favor, debe ingresar la descripcion del requisito!');
				return false;
			} else return true;
			break;
		case '6':  // OPCIONES PARA CONFIRMAR QUE LOS DATOS DE LOS OPERADORES NO ESTEN VACIOS
			if (document.getElementById('cedulaPer').value == ''){
				alert('Por favor, debe escribir el numero de cedula!');
				return false;
			}
			if (document.getElementById('nombre').value == ''){
				alert('Por favor, debe ingresar el nombre y apellido!');
				document.getElementById('nombre').focus();
				return false;
			}
			if (document.getElementById('sexo').value == ''){
				alert('Por favor, debe elegir el sexo!');
				document.getElementById('sexo').focus();
				return false;
			}
			if (document.getElementById('direccion').value == ''){
				alert('Por favor, debe indicar la direccion!');
				document.getElementById('direccion').focus();
				return false;
			}			
			if (document.getElementById('clave2').value != document.getElementById('clave1').value){
				alert('Las claves son distintas. Por favor verifique!');
				document.getElementById('clave2').value='';
				document.getElementById('clave1').value='';
				document.getElementById('clave1').focus();
				return false;
			}
			if (document.getElementById('clave2').value.length<3) {
				alert('Las claves son demasiado cortas. Por favor verifique!');
				document.getElementById('clave2').value='';
				document.getElementById('clave1').value='';
				document.getElementById('clave1').focus();
				return false;
			} else return true;
			break;
		case '7':  // OPCIONES PARA CONFIRMAR QUE LA DESCRIPCION DE LA ESPECIALIDAD NO ESTE VACIA
			if (document.getElementById('nivelAca').value == ''){
				alert('Por favor, debe elegir un nivel académico!');
				document.getElementById('nivelAca1').focus();
				return false;
			} 
			if (document.getElementById('descripEsp').value == ''){
				alert('Por favor describa la especialidad!');
				document.getElementById('descripEsp').focus();
				return false;
			} else return true;
			break;
		case '8':
				if(validarBuscar(document.getElementById('op2').value))
					buscarDato('5');
				break;
		case '0':return true;
	}
}
/********************************************/
 ////*** Este Codigo permite Validar que sea un campo Numerico  **////
function Solo_Numerico(variable)
{
	Numer=parseInt(variable);
     if (isNaN(Numer)) { return ""; }
	return Numer;
}
function ValNumero(Control)
{
	Control.value=Solo_Numerico(Control.value);
}

// Codigo para abrir una ventana tipo popup centrado

function popupCentrado(Url,NombreVentana,width,height,extras,scrollbars) {
	var largo = width;
	var altura = height;
	var adicionales= extras;
	var NO = 0;
	var top = (screen.height-altura)/2;
	var izquierda = (screen.width-largo)/2; nuevaVentana=window.open(''+ Url + '',''+ NombreVentana + '','width=' + largo + ',height=' + altura + ',top=' + top + ',left=' + izquierda + ',scrollbars=' + scrollbars + ',Resizable='+ NO + ',Location=' + NO);
	nuevaVentana.focus();
}
/*
function navegador(navega) {
	var isIE4 = navigator.userAgent.toLowerCase().indexOf(navega) > -1; 
	var isNN4 = navigator.userAgent.toLowerCase().indexOf(navega) > -1;
	var isSaf = navigator.userAgent.toLowerCase().indexOf(navega) > -1;
	var isChr = navigator.userAgent.toLowerCase().indexOf(navega) > -1;
	var isFir = navigator.userAgent.toLowerCase().indexOf(navega) > -1;
	if(isIE4 == false) {
		if(isNN4 == false) {
			if(isChr == false) {
				if(isSaf == false) {
					if(isFir == true) {
						return true;
					}
				} else return true;
			} else return true;
		} else return true;
	} else return true;
}
function borrar(){
i--;
padre=document.getElementById('intxt');
padre.removeChild(document.getElementById("id"+i)) ;
padre.removeChild(document.getElementById("br"+i)) ;
}

	// innerHTML
	//padre.innerHTML="<div id='valores1'></div>";	
	//DOM
	//div_del = document.createElement("div");
	//div_del.setAttribute("id", "valores1");
	//document.getElementById("todo1").appendChild(div_del);
	//Crea el div borrado en alguna de las opciones del switch
	//crear_ele(div_padre,"div",id_contenedor);
*/
