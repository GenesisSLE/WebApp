
function GuardoAlumnoYredirecciono(CedAlumno){
var cedulaAusara=CedAlumno;
localStorage.setItem("cedula", cedulaAusara);

location.href = "Detalles del alumno.php";
    
};