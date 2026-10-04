#include <iostream>
#include <cmath>

using namespace std;

int main () {
    int numExperimentos;

    int sinAceleracion = 0;
    int conAceleracion = 0;
    int conDesaceleracion = 0;

    double mayorDesaceleracion = 0.0;
    bool huboDesaceleracion = false;

    cout << "Ingrese el numero total de experimentos realizados: ";
    cin >> numExperimentos;

    for (int i= 1; i <= numExperimentos; i++){
        double distancia, velocidadInicial, velocidadFinal;

        cout << "DATOS DEL EXPERIMENTO " << i << ":" << endl;
        cout << "Ingrese la distancia recorrida: ";
        cin >> distancia;

        cout << "Ingrese la velocidad inicial: ";
        cin >> velocidadInicial;

        cout << "Ingrese la velocidad final: ";
        cin >> velocidadFinal;

        double aceleracion = ((pow(velocidadFinal,2))-(pow(velocidadInicial,2)))/ (2.0*distancia);
        cout << "La aceleracion es de: " << aceleracion <<endl << endl;
        if(velocidadFinal == velocidadInicial){
            sinAceleracion++;
        } else if (aceleracion > 0){
            conAceleracion++;
        } else {
            conDesaceleracion++;

            double valorDesaceleracion = -aceleracion;

            if(!huboDesaceleracion || valorDesaceleracion > mayorDesaceleracion){
                mayorDesaceleracion = valorDesaceleracion;
                huboDesaceleracion = true;
            }
        }
    }

    if(numExperimentos > 0){
        double porcentajeSinaceleracion = ((double) sinAceleracion / numExperimentos) *100;
        cout << "Porcentaje de moviles sin aceleracion: " << porcentajeSinaceleracion << "%" << endl;

    } else {
        cout << "No se realizaron experimentos";
    }

    if(huboDesaceleracion){
        cout << "El mayor valor de desaceleracion registrado es de: " << mayorDesaceleracion << "m/s^2"<< endl;

    } else {
        cout << "No hubo experimentos con desaceleracion" << endl;
    }

    if(conAceleracion > conDesaceleracion && conAceleracion > sinAceleracion){
        cout << "Se realizaron más experimentos: CON ACELERACION (" << conAceleracion << " experimentos)." << endl;
    } else if(conDesaceleracion > conAceleracion && conDesaceleracion > sinAceleracion){
        cout << "Se realizaron más experimentos: CON DESACELERACION (" << conDesaceleracion << " experimentos)." << endl;
    } else if (sinAceleracion > conAceleracion && sinAceleracion > conDesaceleracion){
        cout << "Se realizaron más experimentos: SIN ACELERACION (" << sinAceleracion << " experimentos)." << endl;
    } else {
        cout << "Hubo un empate en la cantidad mayoritaria de tipos de experimentos."<< endl;
    }
    return 0;
}