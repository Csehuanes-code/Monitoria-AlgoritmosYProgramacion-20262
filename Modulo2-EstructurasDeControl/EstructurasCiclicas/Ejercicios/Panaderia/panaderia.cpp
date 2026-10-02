#include <iostream>
#include <string>

using namespace std;

int main() {

    string nombreCliente;

    double totalCliente = 0.0;
    double totalDia = 0.0;
    int cantidadProductos;
    int opcion;

    double cantidad, precio, subtotal;

    while(true){
        cout << "Ingrese el nombre del cliente o 'SALIR': ";
        cin >> nombreCliente;

        if( nombreCliente == "SALIR") { 
            break;
        } else {
            cout << "Ingrese la cantidad de productos que desea comprar (1 - 3:): ";
            cin >> cantidadProductos;

            while (cantidadProductos < 1 || cantidadProductos > 3) {
                cout << "Cantidad de productos no válida. El valor debe estar entre 1 y 3." << endl;
                cout << "Ingrese la cantidad de productos que desea comprar (1 - 3:): ";
                cin >> cantidadProductos;
            }
            totalCliente = 0.0;
            for(int i = 1; i <= cantidadProductos; i++) {
                cout << "\nSeleccione el producto " << i << ": " << endl;
                cout << "1. Pan \n2. Pasteles \n3. Galletas" << endl;
                cout << "Opcion: ";
                cin >> opcion;

                while (opcion < 1 || opcion > 3) {
                    cout << "Opcion no es valida. Sele un producto entre 1 y 3: ";
                    cin >> opcion;
                }
                cout << "Ingrese la cantidad de productos adquiridos: ";
                cin >> cantidad;
                cout << "Ingrese el precio indivual del producto: ";
                cin >> precio;

                subtotal = cantidad * precio;
                totalCliente += subtotal;
            }
            cout << "\nEl total a pagar por el cliente " << nombreCliente << " es: $" << totalCliente << endl << endl;
            totalDia += totalCliente;
        }
    }

    cout << "\n************************************" << endl;
    cout << "El total recaudado en el dia es: $" << totalDia;
    cout << "\n************************************" << endl;

    return 0;
}