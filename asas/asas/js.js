function datos()
{
    $.ajax({
        type: 'post',
        url: 'sql.php',
        dataType:'json',
        data:{},
        success:function(datos){
            $('#nombre').text(data.result.nombre);
        }
    })
}