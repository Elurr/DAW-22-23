let txt = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
let longitud = txt.length;
let pLong = document.getElementById('pLong');

pLong.innerHTML = longitud;

let corte = txt.slice(15, 19);
let pCorte = document.getElementById('pCorte');
pCorte.innerHTML = corte;

let str = 'Tere "Terere" Hererra';
let corte2 = str.slice(6, 12) + str.substr(13, 8);
pCorte.innerHTML = corte2;

let frase = 'La mejor alumna de clase es Rebeca';
// El primer parámetro es lo que buscamos y el segundo es el reemplazo
let replaced = frase.replace(/REBECA/i, "Angela");
let pRep = document.querySelector('#pReplace');
pRep.innerHTML = replaced;

let string = 'Hoy es Viernes, Bitches!';
let minus = string.toLocaleLowerCase();
let pMinus = document.querySelector('#pMinus');

let mayus = string.toUpperCase();
let pMayus = document.querySelector('#pMayus');

pMinus.innerHTML = minus;
pMayus.innerHTML = mayus;

// concatenar strings
// si tengo un str nombre = "Román"
// si tengo otro str apellido = "Gómez"
// y quiero escribir "Román Gómez"?
let nombre = 'Román';
let apellido = 'Gómez';
let apellido2 = 'Sinojara';
let pConcat = document.querySelector('#pConcat');

pConcat.innerHTML = nombre.concat(" ", apellido," ", apellido2);

// charAt()
let pChar = document.querySelector('#pCharAt');
pChar.innerHTML = apellido2.charAt(3);

// combinando las anteriores
let texto = 'santi';
pChar.innerHTML = texto.charAt(0).toUpperCase() + texto.slice(1);
pChar.innerHTML = texto.charAt(0).toUpperCase().concat(texto.slice(1));

// transformar a array
let strLista = 'Germán, Román, Angela, Tere, Santi, Rebeca, Dafne';
let arrayLista = strLista.split(', ');
console.log(arrayLista);
let pSplit = document.querySelector("#split");
pSplit.innerHTML = arrayLista;