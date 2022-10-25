//Ejecutar función en el evento click
document.getElementById("btn_open").addEventListener("click", open_close_menu);
document.getElementById('NotasAlumno').style.display='none';
document.getElementById('DatosEspecificos').style.display='none';
//Declaramos variables
var side_menu = document.getElementById("menu_side");
var btn_open = document.getElementById("btn_open");
var body = document.getElementById("body");
var Cont= document.getElementById("cont");
//Evento para mostrar y ocultar menú
    function open_close_menu(){
        body.classList.toggle("body_move");
        side_menu.classList.toggle("menu__side_move");
        Cont.classList.add("cont_Div_move");
    }

//Si el ancho de la página es menor a 760px, ocultará el menú al recargar la página

if (window.innerWidth < 760){

    body.classList.add("body_move");
    side_menu.classList.add("menu__side_move");

}

//Haciendo el menú responsive(adaptable)

window.addEventListener("resize", function(){

    if (window.innerWidth > 760){

        body.classList.remove("body_move");
        side_menu.classList.remove("menu__side_move");
    }

    if (window.innerWidth < 760){

        body.classList.add("body_move");
        side_menu.classList.add("menu__side_move");
    }

});//Ejecutar función en el evento click
document.getElementById("btn_open").addEventListener("click", open_close_menu);

//Declaramos variables
var side_menu = document.getElementById("menu_side");
var btn_open = document.getElementById("btn_open");
var body = document.getElementById("body");
var cont = document.getElementById("cont");
//Evento para mostrar y ocultar menú
    function open_close_menu(){
        body.classList.toggle("body_move");
            cont.classname='cont_Div';
        side_menu.classList.toggle("menu__side_move");
        side_menu.classname='cont_Div_move';
    }

//Si el ancho de la página es menor a 760px, ocultará el menú al recargar la página

if (window.innerWidth < 760){

    body.classList.add("body_move");
    side_menu.classList.add("menu__side_move");
}

//Haciendo el menú responsive(adaptable)

window.addEventListener("resize", function(){

    if (window.innerWidth > 760){

        body.classList.remove("body_move");
        side_menu.classList.remove("menu__side_move");
    }

    if (window.innerWidth < 760){

        body.classList.add("body_move");
        side_menu.classList.add("menu__side_move");
    }

});
var funciona=1;
function Prueba(){
    if(funciona%2==0){
         
    document.getElementById('NotasAlumno').style.display='none';
     
    }
    if(funciona%2!=0){

    document.getElementById('NotasAlumno').style.display='';
    }
funciona++;
};
var funciona2=1;
function InfoEspecifica(){

    if(funciona2%2==0){
         
    document.getElementById('DatosEspecificos').style.display='none';
     
    }
    
    if(funciona2%2!=0){

    document.getElementById('DatosEspecificos').style.display='';
    }
funciona2++;
}

