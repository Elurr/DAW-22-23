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
    jugar("casa");
    jugar("casa");


    // Recogemos la dos cartas iniciales del jugador:
    jugar("jugador");
    jugar("jugador");
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
    console.log("Cartas de la casa: " + jugadaCasa.join());
    console.log("puntuación de la casa: " + puntosCasa);
    console.log("Cartas del jugador: " + jugadaJugador.join());
    console.log("puntuación del jugador: " + puntosJugador);
    ganador();
}

function ganador() {
    let fin = false;
    if (puntosJugador > 21) {
        console.log("El jugador se ha pasado de 21. Gana la casa");
        fin = true;
        return;

    } else if (puntosCasa > 21) {
        console.log("La casa se ha pasado de 21. Gana el jugador");
        fin = true;
        return;
    }

    if (puntosJugador > puntosCasa && !fin) {
        console.log("Va ganando el jugador");
        console.log("");
        jugar("casa");
        return;
    } else if (puntosCasa > puntosJugador && !fin) {
        console.log("Va ganando la casa");
        console.log("");
        jugar("jugador");
        return;
    } else {
        console.log("Hay empate");
        console.log("");
        jugar("jugador");
        return;
    }
}

function jugar(jugada) {
    switch (jugada) {
        case "casa":
            jugadaCasa.push(cartasCasa[Math.floor(Math.random() * cartasCasa.length)]);
            break;
        case "jugador":
            jugadaJugador.push(cartasJugador[Math.floor(Math.random() * cartasJugador.length)]);
            break;
    }

    if (jugadaCasa.length >= 2 && jugadaJugador.length >= 2) calcularPuntos();
}

empezarJuego();