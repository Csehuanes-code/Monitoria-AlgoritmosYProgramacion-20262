#include <iostream>

using namespace std;

int main() {
    int totalAlumnosUniversidad = 0;
    int alumnosSemestre4Carrera2 = 0;
    int alumnosSemestre4 = 0;

    int mayorAlumnosCarrera1 = -1;
    int semestreMayorCarrera1 = 0;

    int semestre = 1;

    while(semestre <= 6){
        int alumnosCarrera1, alumnosCarrera2, alumnosCarrera3;

        cout << "SEMESTRE " << semestre << endl;
        cout << "Ingrese el numero de alumnos nuevos de la Carrera 1: ";
        cin >> alumnosCarrera1;

        cout << "Ingrese el numero de alumnos nuevos de la Carrera 2: ";
        cin >> alumnosCarrera2;
    
        cout << "Ingrese el numero de alumnos nuevos de la Carrera 3: ";
        cin >> alumnosCarrera3;

        int totalSemestreActual = alumnosCarrera1 + alumnosCarrera2 + alumnosCarrera3;
        totalAlumnosUniversidad += totalSemestreActual;

        if(semestre == 4) {
            alumnosSemestre4Carrera2 = alumnosCarrera2;
            alumnosSemestre4 = totalSemestreActual;
        }

        if(alumnosCarrera1 > mayorAlumnosCarrera1){
            mayorAlumnosCarrera1 = alumnosCarrera1;
            semestreMayorCarrera1 = semestre;
        }
        semestre++;
    }

    double promedioSemestral = (double) totalAlumnosUniversidad / 6.0;
    cout << endl;
    cout << "1. Promedio semestral de alumnos nuevos que ingresan a la universidad: " << promedioSemestral << " alumnos por semestre" << endl;

    if(alumnosSemestre4 >0) {
        double porcentajeCarrera2Semestre4 = ((double) alumnosSemestre4Carrera2 / alumnosSemestre4) * 100.0;
        cout << "2. Procentaje de alumnos nuevos en el semestre 4 que pertenezcan a la carrera 2: " << porcentajeCarrera2Semestre4 << "%" << endl;

    } else {
        cout << "No ingresaron alumnos en el semestre 4." << endl;
    }

    cout << "3. El semestre en el cual la carrera 1 tuvo el mayor numero de alumnos nuevos fue el SEMESTRE " <<
     semestreMayorCarrera1 << " (con "<< mayorAlumnosCarrera1 << " alumnos)" << endl;
     
    return 0;
}