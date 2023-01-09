// Esta línea hace que el código espere a que el documento termine de cargar antes de ejecutarse
$(document).ready(function() {
    // El código de JQuery va aquí

    // selector de JQuery
    $('#test').text('He cambiado el texto con JQuery');

    // const p = document.getElementById('test');
    // p.innerHTML = 'Otro cambio de texto';

    const p = $('#test');
    p.css('color', 'blue');

    // crear un array a partir de numerosos elementos
    const parrafos = $('p');
    parrafos.css('fontSize', '30px');

    // ejemplo de evento
    $('#btn').click(function() {
        $('#div').toggleClass('big');
    })

})

// Aquí podemos escribir vanilla JS
// DOM vanilla
// document.getElementById('test').style.color = 'red';