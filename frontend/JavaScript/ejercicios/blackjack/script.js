// Baraja
let picas = [
    // "A" {

    // }
];
// let diamantes = [];
// let treboles = [];
// let corazones = [];

// Tenemos el juego de la casa
let puntosCasa = 0;
let jugadaCasa = [];
let cartasCasa = [
    "A",
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    "J",
    "Q",
    "K"
];


// El juego del jugador
let puntosJugador = 0;
let jugadaJugador = [];
let cartasJugador = [
    "A",
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    "J",
    "Q",
    "K"
];

// Identificamos los elementos de HTML
const manoCasa = document.getElementById('mano-casa');
const manoJugador = document.getElementById('mano-jugador');
const displayCasa = document.getElementById('puntos-casa');
const displayJugador = document.getElementById('puntos-jugador');
const resultado = document.getElementById('resultado');
const btnIniciar = document.getElementById('btn-iniciar');
const btnPedir = document.getElementById('btn-pedir');
const btnPlantarse = document.getElementById('btn-plantarse');


let jugadorPlantado = false;
let fin = false;
let timer = 0;

function empezarJuego() {
    // Se resetean las cartas
    jugadaCasa = [];
    jugadaJugador = [];
    fin = false;
    activarBotones();

    // Recogemos la dos cartas iniciales de la casa:
    darCarta("casa");
    darCarta("casa");


    // Recogemos la dos cartas iniciales del jugador:
    darCarta();
    darCarta();
}

function activarBotones() {
    btnPedir.style['pointer-events'] = 'auto';
    btnPlantarse.style['pointer-events'] = 'auto';
}

function desactivarBotones() {
    btnPedir.style['pointer-events'] = 'none';
    btnPlantarse.style['pointer-events'] = 'none';
}

function calcularPuntos() {
    puntosCasa = 0;
    puntosJugador = 0;
    for (let i = 0; i < jugadaCasa.length; i++) {
        let as = false;
        switch (jugadaCasa[i]) {
            case "A":
                puntosCasa += 11;
                as = true;
                break;
            case "J":
            case "Q":
            case "K":
                puntosCasa += 10;
                break;

            default:
                puntosCasa += jugadaCasa[i];
                break;
        }
        if (puntosCasa > 21 && as) {
            puntosCasa -= 10;
        }
    }
    for (let i = 0; i < jugadaJugador.length; i++) {
        let as = false;
        switch (jugadaJugador[i]) {
            case "A":
                puntosJugador += 11;
                as = true;
                break;
            case "J":
            case "Q":
            case "K":
                puntosJugador += 10;
                break;

            default:
                puntosJugador += jugadaJugador[i];
                break;
        }
        if (puntosJugador > 21 && as) {
            puntosJugador -= 10;
        }
    }
    // Se imprime el estado de la partida por consola
    console.log("Cartas de la casa: " + jugadaCasa.join());
    console.log("puntuación de la casa: " + puntosCasa);
    console.log("Cartas del jugador: " + jugadaJugador.join());
    console.log("puntuación del jugador: " + puntosJugador);

    // Se imprime en pantalla
    // manoCasa.innerHTML = jugadaCasa.join();
    // manoJugador.innerHTML = jugadaJugador.join();
    mostrarCartas();
    displayCasa.innerHTML = puntosCasa;
    displayJugador.innerHTML = puntosJugador;
    ganador();
}

let iconoDiamantes = `<i class='bi bi-suit-diamond-fill'></i>`;
let iconoPicas = `<i class="bi bi-suit-spade-fill"></i>`;


function mostrarCartas() {
    manoCasa.innerHTML = '';
    manoJugador.innerHTML = '';
    for (let i = 0; i < jugadaCasa.length; i++) {
       manoCasa.innerHTML += "<div class='carta'>"
       + "<div class='num top'>" + jugadaCasa[i] + "</div>" 
       + "<div class='palo'>" + iconoDiamantes + "</div>"
       + "<div class='num bot'>" + jugadaCasa[i] + "</div>" 
       + "</div>";
    }
    for (let i = 0; i < jugadaJugador.length; i++) {
       manoJugador.innerHTML += "<div class='carta'>"
       + "<div class='num top'>" + jugadaJugador[i] + "</div>" 
       + "<div class='palo'>" + iconoPicas + "</div>"
       + "<div class='num bot'>" + jugadaJugador[i] + "</div>" 
       + "</div>";
    }
}

function ganador() {
    
    // Switch para comentar el estado actual del juego
    switch (true) {
        case puntosJugador > puntosCasa:
            resultado.innerHTML = "Va ganando el jugador";
            break;

        case puntosCasa > puntosJugador:
            resultado.innerHTML = "Va ganando la casa";
            break;

        case puntosCasa === puntosJugador:
            resultado.innerHTML = "Hay empate";
            break;
    
        default:
            console.log("default switch 1");
            break;
    }

    desactivarBotones();

    // Switch para determinar si ha finalizado la partida
    switch (true) {
        case (puntosCasa === 21 && puntosJugador === 21):
            resultado.innerHTML = "Ambas partes tienen 21, la apuesta se recupera."
            break;
    
        case (puntosCasa === 21 && puntosJugador != 21):
            resultado.innerHTML = "La casa tiene un Blackjack. El jugador pierde la apuesta";   
            break;
            
        case (puntosCasa != 21 && puntosJugador === 21):
            resultado.innerHTML = "El jugador tiene un Blackjack. Ha ganado!"; 
            break;

        case puntosJugador > 21:
            resultado.innerHTML = "El jugador se ha pasado de 21. Gana la casa";
            break; 

        case puntosCasa > 21:
            resultado.innerHTML = "La casa se ha pasado de 21. Gana el jugador";
            break; 

        default:
            console.log("default switch 2");
            activarBotones();
            break;
    }   
}

function darCarta(jugada) {
    switch (jugada) {
        case "casa":
            jugadaCasa.push(cartasCasa[Math.floor(Math.random() * cartasCasa.length)]);
            break;
        default:
            jugadaJugador.push(cartasJugador[Math.floor(Math.random() * cartasJugador.length)]);
            break;
    }

    if (jugadaCasa.length >= 2 && jugadaJugador.length >= 2) calcularPuntos();
}

function plantarse() {
    jugadorPlantado = true;
    desactivarBotones();
    if (puntosJugador > puntosCasa) {
        darCarta('casa');

        timer = setTimeout(() => {
            plantarse();
        }, 1000);
    } else {
        clearTimeout(timer);
        timer = 0;
    }
    
}



empezarJuego();

// Event listener
btnIniciar.addEventListener('click', empezarJuego);
btnPedir.addEventListener('click', darCarta);
btnPlantarse.addEventListener('click', plantarse);

// let arrayCartas = [];
// for (let i = 0; i < arrayCartas.length; i++) {
//     arrayCartas[i].style.zIndex = i;
    
// }