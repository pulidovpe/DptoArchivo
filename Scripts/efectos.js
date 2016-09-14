$(document).ready(function(){	
	//Oculta todas las descripciones del info box
	$("#infobox > div").css("display", "none");
		
	$(document).ready(function(){
		$("#infobox").animate({bottom: '266px' }, 800);  /* Los px junto a botton es lo alto que llega el info box */
		$("#fade_bg").fadeIn(2000);
        $("#bienvenida").fadeIn();
		return false;
	});
		
	//Quita el fondo, info box y oculta todas las descripciones
	$("#fade_bg, .close").click(function(){
		$("#fade_bg").fadeOut();
		$("#infobox").animate({bottom: '-100px' }, 600, function() {
			$("#infobox > div").css("display", "none");
			$("#infobox").fadeOut(1000);
		});
		//$("body").hide().load("example8.html").fadeIn("2000");
		return false;
	});
	//Cargar la pagina con efecto suave
	$("body").css("display", "none");
	$("body").fadeIn(2000);		   
});