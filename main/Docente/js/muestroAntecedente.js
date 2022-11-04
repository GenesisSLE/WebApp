
$(document).ready(function(){

    $.ajax({

        url: 'traigoAntecedente.php',
        type: 'POST',
        data: {
            res: 1
        },
        success: function(response){
    Antecedente = JSON.parse(response);
    console.log(Antecedente);
   
    
    $('#editor').html(Antecedente[0].DescripcionDelAntecedente);

        }
    })
    



        })

        
        