#include <iostream>
#include <string>

using namespace std;

int main() {
    int jugador1_intentos = 0;
    int jugador2_intentos = 0;
    string balota;

    cout << "Jugador 1, es tu turno." << endl;

    do {
        cout << "Saca una balota (Escribe el color): ";
        cin >> balota;
        jugador1_intentos++;
    } while  (balota != "roja");
    cout << "El jugador 1 sacó la balota roja en " << jugador1_intentos << " intentos" << endl << endl;

    cout << "Jugador 2, es tu turno." << endl;
    do {
        cout << "Saca una balota (Escribe el color): ";
        cin >> balota;
        jugador2_intentos++;
    } while  (balota != "roja");
    cout << "El jugador 2 sacó la balota roja en " << jugador2_intentos << " intentos" << endl << endl;

    if (jugador1_intentos < jugador2_intentos) {
        cout << "El ganador es el jugador 1 con " << jugador1_intentos << " intentos." << endl;
    } else if (jugador2_intentos < jugador1_intentos) {
        cout << "El ganador es el jugador 2 con " << jugador2_intentos << " intentos." << endl;
    }
    else {
        cout << "Es un empate, ambos jugadores tuvieron el mismo número de intentos." << endl;
    }

    return 0;
}