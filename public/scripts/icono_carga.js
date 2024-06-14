
//Función para que el icono de carga desaparezca después de cargar la pagina

    window.onload = function(){
        var contenedor = document.getElementById('contenedor_carga');

        contenedor.style.visibility ='hidden';
        contenedor.style.opacity = '0';
    }