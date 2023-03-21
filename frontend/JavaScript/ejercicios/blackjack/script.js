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

function empezarJuego() {
    // Recogemos la dos cartas iniciales de la casa:
    jugadaCasa += cartasCasa[Math.floor(Math.random() * cartasCasa.length)];
    jugadaCasa += cartasCasa[Math.floor(Math.random() * cartasCasa.length)];


    // Recogemos la dos cartas iniciales del jugador:
    jugadaJugador += cartasJugador[Math.floor(Math.random() * cartasJugador.length)];
    jugadaJugador += cartasJugador[Math.floor(Math.random() * cartasJugador.length)];


    console.log(jugadaCasa);
    console.log(jugadaJugador);
}

empezarJuego();