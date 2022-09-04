jQuery(document).on('submit','#formlg',function(event){
	event.preventDefault();

	jQuery.ajax({
		url:'main_app/login.php',
		type:'POST',
		dataType:'json',
		data:$(this).serialize(),
		beforeSend: function(){
			$('.botonlg').val('Validando...')
		}
	})
.done(function(respuesta){
	console.log(respuesta);
	if(!respuesta.error){
		if(respuesta.tipo == 1){
			location.href = 'Main_app/Admin/menuAdmin.php';
		}else if(respuesta.tipo == 3){
			location.href = 'Main_app/Usuario/usuario.html';
		}
	}else{
		$('.error').slideUp('slow');
		setTimeout(function(){

		},3000);
		$('.botonlg').val('Iniciar Sesion')
	}
})
.fail(function(resp){
	console.log(resp.responseText);
})
.always(function(){
	console.log("complete");
});
		
});