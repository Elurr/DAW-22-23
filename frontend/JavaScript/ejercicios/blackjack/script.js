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
    jugadaCasa.push(cartasCasa[Math.floor(Math.random() * cartasCasa.length)]);
    jugadaCasa.push(cartasCasa[Math.floor(Math.random() * cartasCasa.length)]);


    // Recogemos la dos cartas iniciales del jugador:
    jugadaJugador.push(cartasJugador[Math.floor(Math.random() * cartasJugador.length)]);
    jugadaJugador.push(cartasJugador[Math.floor(Math.random() * cartasJugador.length)]);


    calcularPuntos();
    console.log(jugadaCasa.join());
    console.log("puntuación de la casa: " + puntosCasa); 
    console.log(jugadaJugador.join());
    console.log("puntuación del jugador: " + puntosJugador); 


}

function calcularPuntos () {
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
}

empezarJuego();