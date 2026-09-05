Algoritmo mi_algoritmo
//Variables de Entrada
Definir algoritmos_nota1, algoritmos_nota2, algoritmos_nota3 Como Real
Definir calculo_nota1, calculo_nota2, calculo_nota3 Como Real

//Variables de salida
Definir algoritmos_nota_final, calculo_nota_final Como Real
Definir cantidad_materias_aprobadas Como Entero
Definir algoritmos_fue_aprobado Como Logico
Definir calculo_fue_aprobado Como Logico

cantidad_materias_aprobadas = 0
algoritmos_fue_aprobado <- Falso
calculo_fue_aprobado <- Falso

//-----------
//Solicitud de Datos
Escribir "Digite la nota de primer corte de Algoritmos y Programación:"
Leer algoritmos_nota1
Escribir "Digite la nota de segundo corte de Algoritmos y Programación:"
Leer algoritmos_nota2
Escribir "Digite la nota de tercer corte de Algoritmos y Programación:"
Leer algoritmos_nota3

Escribir "Digite la nota de primer corte de Calculo I:"
Leer calculo_nota1
Escribir "Digite la nota de segundo corte de Calculo I:"
Leer calculo_nota2
Escribir "Digite la nota de tercer corte de Calculo I:"
Leer calculo_nota3

// Procesamiento de datos
algoritmos_nota_final <- algoritmos_nota1 + algoritmos_nota2 + algoritmos_nota3
calculo_nota_final <- calculo_nota1 + calculo_nota2 + calculo_nota3

Si algoritmos_nota_final >= 350 Entonces
  cantidad_materias_aprobadas <- cantidad_materias_aprobadas + 1
  algoritmos_fue_aprobado <- Verdadero
Finsi
Si calculo_nota_final >= 350 Entonces
  cantidad_materias_aprobadas <- cantidad_materias_aprobadas + 1
  calculo_fue_aprobado <- Verdadero
Finsi

//Informacion de Salida
Escribir " "
Escribir "********************************************"
Escribir "ALGORITMOS Y PROGRAMACION:"
Escribir "Nota final: ", algoritmos_nota_final

Escribir " "

Escribir "CALCULO I:"
Escribir "Nota final: ", calculo_nota_final

Escribir "********************************************"
Escribir " "
Escribir "REPORTE FINAL"
Escribir "Materias aprobadas: ", cantidad_materias_aprobadas
Escribir "Lista de Materias Aprobadas:"
Si calculo_fue_aprobado = Verdadero Entonces
  Escribir "Calculo I"
FinSi
Si algoritmos_fue_aprobado Entonces
  Escribir "Algoritmos y Programacion"
Finsi

FinAlgoritmo