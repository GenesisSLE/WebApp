fetch('listar.php')
.then(res => res.json())
.then(data => {

    // console.log(data);
    let str = '';
    data.map(item => {
        str += `
        <br>
            <tr>
                <td>${item.Nombre}${item.Grado}${item.Curso}</td>
            </tr>
        <br>`
    });

    document.getElementById('table_data').innerHTML = str;


}); 