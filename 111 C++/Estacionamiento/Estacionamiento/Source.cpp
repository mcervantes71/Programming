#include <iostream>

using namespace std;

int cupo, tiempo, dia, cuota, total;

void main()
{
    cout << "Que dia es ?? 1) L-M-M  2) J-V  3) S-D" << endl;
    cin >> dia;

    cout << "Introduzca el tiempo en minutos" << endl;
    cin >> tiempo;

    if (dia == 1)
        cuota = 5;
    else if (dia == 2)
        cuota = 8;
    else if (dia == 3)
        cuota = 10;

    if (tiempo % 60 >= 15)
        total = cuota;

    total += (int)(tiempo / 60) * cuota;

    cout << "Total = " << total << endl;
    
    system("pause");
}