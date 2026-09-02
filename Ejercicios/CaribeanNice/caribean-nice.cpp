#include <iostream>
using namespace std;

int main() {

    //VARIABLES SOLICITADAS
    int salario_basico=0, //Valor entero
    horas_extras=0, 
    tipo_horas_extras=0, //1: 115%, 2: 120%, 3: 125%
    tipo_salud; //Sisben: -50000; otra: -4% salario


    //SOLICITUD DE DATOS
    cout << "Salario básico: "; cin >> salario_basico; cout << "\n"; // Salario
    cout << "Horas extras: "; cin >> horas_extras; cout << "\n"; // Horas extras
    cout << "Tipo de horas extras (1-3): "; cin >> tipo_horas_extras; cout << "\n"; // Tipo de horas extras
    cout << "Tipo de salud (1: Sisben, 2: Otra): "; cin >> tipo_salud; cout << "\n"; // Tipo de salud
	

    //VALIDACION DE DATOS
    if (salario_basico <= 0) {
        cout << "Error: El salario básico debe ser un valor positivo." << endl;
        return 1;
    }
    if (horas_extras < 0) {
        cout << "Error: Las horas extras deben ser un valor no negativo." << endl;
        return 1;
    }
    if (tipo_horas_extras < 1 || tipo_horas_extras > 3) {
        cout << "Error: El tipo de horas extras debe ser 1, 2 o 3." << endl;
        return 1;
    }
    if (tipo_salud < 1 || tipo_salud > 2) {
        cout << "Error: El tipo de salud debe ser 1 o 2." << endl;
        return 1;
    }
    
    //VARIABLES A UTILIZAR EN EL PROCESAMIENTO
    float valor_hora_extra, descuento_salud, valor_hora_normal = salario_basico / 160, subsidio = 0, salario_total = 0;
    

    //LOGICA DE DATOS
    if (tipo_horas_extras == 1) {
        valor_hora_extra = valor_hora_normal * 1.15; //Valor de la hora extra al 115%
    } else if (tipo_horas_extras == 2) {
        valor_hora_extra = valor_hora_normal * 1.20; //Valor de la hora extra al 120%
    } else if (tipo_horas_extras == 3) {
        valor_hora_extra = valor_hora_normal * 1.25; //Valor de la hora extra al 125%
    }

    if(tipo_salud == 1) {
        descuento_salud = 50000; //Descuento de salud para Sisben
    } else if (tipo_salud == 2) {
        descuento_salud = salario_basico * 0.04; //Descuento de salud para otra
    }

    if(tipo_horas_extras == 1 || tipo_horas_extras == 3) {
        subsidio = salario_basico * 0.2857; //Subsidio para horas extras al 115% o 125%
    } else if (tipo_horas_extras == 2) {
        subsidio = salario_basico * 0.625; //No hay subsidio para horas extras al 120%
    }


    //PROCESAMIENTO DE DATOS
    salario_total = salario_basico + (horas_extras * valor_hora_extra) + subsidio - descuento_salud;

    //SALIDA DE DATOS
    cout << "Salario básico: " << salario_basico << endl;
    cout << "Aporte a salud: " << descuento_salud << endl;
    cout << "Subsidio: " << subsidio << endl;
    cout << "Valor hora extra: " << valor_hora_extra << endl;
    cout << "Pago total: " << salario_total << endl;
    return 0;
}
