jQuery(document).on('submit','#formlg',function(event){
	event.preventDefault();

	jQuery.ajax({
		url:'main_app/login.php',
		type:'POST',
		dataType:'json',
		data:$(this).serialize(),
		beforeSend: function(){
			$('.BtLogin').val('Validando...')
		}
	})
.done(function(respuesta){

	console.log(respuesta);
	if(!respuesta.error){
		if(respuesta.tipo == 1){
			const Toast = Swal.mixin({
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
				timer: 3000,
				timerProgressBar: true,
				didOpen: (toast) => {
				  toast.addEventListener('mouseenter', Swal.stopTimer)
				  toast.addEventListener('mouseleave', Swal.resumeTimer)
				}
			  })
			  
			  Toast.fire({
				icon: 'success',
				title: 'Bienvenido!'
			  })
			setTimeout(function(){

			},3000);
			location.href = 'Main_app/Admin/menuAdmin.php';
		}else if(respuesta.tipo == 3){
			const Toast = Swal.mixin({
				toast: true,
				position: 'top-end',
				showConfirmButton: false,
				timer: 3000,
				timerProgressBar: true,
				didOpen: (toast) => {
				  toast.addEventListener('mouseenter', Swal.stopTimer)
				  toast.addEventListener('mouseleave', Swal.resumeTimer)
				}
			  })
			  
			  Toast.fire({
				icon: 'success',
				title: 'Bienvenido!'
			  })
			location.href = 'Main_app/Usuario/usuario.html';
		}
	}else{
		$('.error').slideUp('slow');

		const Toast = Swal.mixin({
			toast: true,
			position: 'top-end',
			showConfirmButton: false,
			timer: 3000,
			timerProgressBar: true,
			didOpen: (toast) => {
			  toast.addEventListener('mouseenter', Swal.stopTimer)
			  toast.addEventListener('mouseleave', Swal.resumeTimer)
			}
		  })
		  
		  Toast.fire({
			icon: 'error',
			title: 'Error!'
		  })
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