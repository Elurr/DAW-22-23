// El código numérico del border-radius
const outputcode = document.querySelector('.output-code');

// array con los sliders
const sliders = document.querySelectorAll('input[type="range"]');

// recorremos el array para asignar un evento a cada slider
sliders.forEach(function(slider) {
    slider.addEventListener('input', createBlob);
});


// array con los input numéricos
const inputs = document.querySelectorAll('input[type="number"]');

// asignamos eventos a los inputs
inputs.forEach(function(input) {
    input.addEventListener('change', createBlob);
});


// función que crea un blob nuevo cada vez que alteramos un slider o input
function createBlob() {
    // recogemos los valores de cada slider
    let radiusOne = sliders[0].value;
    let radiusTwo = sliders[1].value;
    let radiusThree = sliders[2].value;
    let radiusFour = sliders[3].value;

    // recogemos los valores numéricos de altura y anchura
    let blobHeight = inputs[0].value;
    let blobWidth = inputs[1].value;

    // creamos una variable que reúna todos estos valores
    let borderRadius = `${radiusOne}% ${100 - radiusOne}% ${100 - radiusThree}% ${radiusThree}% / ${radiusFour}% ${radiusTwo}% ${100 - radiusTwo}% ${100 - radiusFour}%`

    // escribimos el css del blob con los datos de los inputs
    document.querySelector('.output').style.cssText = 
    `border-radius:${borderRadius}; 
    height:${blobHeight}px; 
    width:${blobWidth}px;`; 

    // imprimos en pantalla el valor del border-radius
    outputcode.innerHTML = `${borderRadius}`;
}

function copy() {
    var r = document.createRange();
    r.selectNode(outputcode);
    window.getSelection().removeAllRanges();
    window.getSelection().addRange(r);
    document.execCommand('copy');
    window.getSelection().removeAllRanges();
}