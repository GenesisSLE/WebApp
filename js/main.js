jQuery(document).on('submit','#formlg',function(event){
	event.preventDefault();

 var mail = $("#mail").val();

	jQuery.ajax({           
		url:'main/login.php',
		type:'POST',
		dataType:'json',
		data:$(this).serialize(),
		  success: function(response){
            let Usuario= response;
            

            if(Usuario[0].Estudiante==1){
            	
 window.location.href = "UsuarioEnProgreso.html";
            }
            if(Usuario[0].Coordinador==1){
            
 window.location.href = "UsuarioEnProgreso.html";
            }
            if(Usuario[0].Secretaria==1){
          
 window.location.href = "UsuarioEnProgreso.html";
            }
      
            if(Usuario[0].Adscripta==1){
            	
 window.location.href = "UsuarioEnProgreso.html";
            }
            if(Usuario[0].Profesor==1){
                localStorage.getItem(Usuario[0].cedula);
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
                location.href = 'main/Docente/listadoDeLibretas.html';
            },3000);
        
            	

            }
             if(Usuario[0].Inspectora==1){
            	
                window.location.href = "UsuarioEnProgreso.html";
            }

            
            }
        });
});
