// El código numérico del border-radius
const outputcode = document.querySelector('.output-code');

// array con los sliders
const slider = document.querySelectorAll('input[type="range"]');

// recorremos el array para asignar un evento a cada slider
slider.forEach(function(slider) {
    slider.addEventListener('change', createBlob);
});


// array con los input numéricos
const input = document.querySelectorAll('input[type="number"]');

// asignamos eventos a los inputs
input.forEach(function(input) {
    input.addEventListener('change', createBlob);
})


// función que crea un blob nuevo cada vez que alteramos un slider o input
function createBlob() {

}