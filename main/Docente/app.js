fetch('listar.php')
.then(res => res.json())
.then(data => {

    // console.log(data);
    let str = '';
    data.map(item => {
        str += `
        <br>
            <tr>
                
                <td class="barrita">${item.Nombre}                ${item.Grado}               ${item.Curso}</td>
                
    
            </tr>
            <br>
        `
    });

    document.getElementById('table_data').innerHTML = str;


});

//PARA LOS CHECKBOX DE SOLO 1 OPCION
function onlyOne(checkbox) {
    var checkboxes = document.getElementsByName('check1')
    checkboxes.forEach((item) => {
        if (item !== checkbox) item.checked = false
    })
}