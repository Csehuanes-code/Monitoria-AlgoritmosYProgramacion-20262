#include <iostream>

using namespace std;

int main() {
    int N;

    int totalAutos = 0;
    int autosSoloConductor = 0;

    int totalBusetas = 0;
    int personasEnBusetas = 0;
    bool huboColectiboBusetasMas8 = false;

    cout << "Ingrese la cantidad total de vehiculos (N): ";
    cin >> N;

    int i = 1;
    if( N > 0) {
        do {
            int tipoVehiculo;
            int numPersonas;

            cout << "\nVehiculo " << i << " de " << N << endl;
            cout << "Ingrese el tipo de vehiculo (1: Auto,  2: Buseta  3: Colectivo): ";
            cin >>  tipoVehiculo;

            cout << "Ingrese el número de personas en este vehiculo: ";
            cin >> numPersonas;

            if(tipoVehiculo == 1) {
                totalAutos++;
                if(numPersonas == 1) {
                    autosSoloConductor++;
                }
            }
            else if (tipoVehiculo == 2) {
                totalBusetas++;
                personasEnBusetas += numPersonas;
                if(numPersonas > 8) {
                    huboColectiboBusetasMas8 = true;
                }
            }
            else if (tipoVehiculo == 3) {
                if (numPersonas > 8){
                    huboColectiboBusetasMas8 = true;
                }
            }
            i++;
        } while (i <= N);
    }

    cout << endl << endl;
    if (totalAutos > 0){
        double porcentajeSoloConductor = ((double) autosSoloConductor / totalAutos) * 100.0;
        cout << "Porcentaje de autos que viaja solo con el conductor: " << porcentajeSoloConductor << "%" << endl;
    } else { cout << "Porcentaje de autos que viaja con el conductor: No se registraron autos." << endl;}

    if (totalBusetas > 0){
        double promedioPasajerosBusetas = (double) personasEnBusetas / totalBusetas;
        cout << "Promedio de personas en las busetas: " << promedioPasajerosBusetas << endl;
    } else {cout << "Promedio de peronas en las busetas: No se registraron busetas." << endl;}

    if (huboColectiboBusetasMas8 == true) {
        cout << "Resultado: Sí hubo al menos un colectivo o buseta con más de 8 personas." << endl;
    } else { cout << "Resultado: NO hubo ningun colectivo o buseta con más de 8 personas." << endl;}
    
    return 0;
}