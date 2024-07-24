clear all;
close all;
clc;

fs=44100;
t=0:1:88200;

%PRIMERA FILA
fa=697;

f1=1209;
f2=1336;
f3=1477;

%SEGUNDA FILA
fb=770;

f4=1209;
f5=1336;
f6=1477;

%TERCERA FILA
fc=852;

f7=1209;
f8=1336;
f9=1477;

%CUARTA FILA
fd=941;

f0=1336;

%OPERACIONES FRECUENCIAS NUMEROS
F_Numero_1=cos(2*pi*(f1/fs)*t);
F_Numero_2=cos(2*pi*(f2/fs)*t);
F_Numero_3=cos(2*pi*(f3/fs)*t);
F_Numero_4=cos(2*pi*(f4/fs)*t);
F_Numero_5=cos(2*pi*(f5/fs)*t);
F_Numero_6=cos(2*pi*(f6/fs)*t);
F_Numero_7=cos(2*pi*(f7/fs)*t);
F_Numero_8=cos(2*pi*(f8/fs)*t);
F_Numero_9=cos(2*pi*(f9/fs)*t);
F_Numero_0=cos(2*pi*(f0/fs)*t);

Frecuencia_1=cos(2*pi*(fa/fs)*t);
Frecuencia_2=cos(2*pi*(fb/fs)*t);
Frecuencia_3=cos(2*pi*(fc/fs)*t);
Frecuencia_4=cos(2*pi*(fd/fs)*t);

%CALCULO FRECUENCIAS
Numero_1=F_Numero_1+Frecuencia_1;
Numero_2=F_Numero_2+Frecuencia_1;
Numero_3=F_Numero_3+Frecuencia_1;
Numero_4=F_Numero_4+Frecuencia_2;
Numero_5=F_Numero_5+Frecuencia_2;
Numero_6=F_Numero_6+Frecuencia_2;
Numero_7=F_Numero_7+Frecuencia_3;
Numero_8=F_Numero_8+Frecuencia_3;
Numero_9=F_Numero_9+Frecuencia_3;
Numero_0=F_Numero_0+Frecuencia_4;

%ASIGNACION A VECTOR
%sonido=[Numero_6,Numero_3,Numero_1,Numero_0,Numero_0,Numero_9,Numero_5];

%REPRODUCCION
sound(Numero_6,fs)
pause(Numero_6);
sound(Numero_3,fs)
pause(Numero_3);
sound(Numero_1,fs)
pause(Numero_1);
sound(Numero_0,fs)
pause(Numero_0);
sound(Numero_0,fs)
pause(Numero_0);
sound(Numero_9,fs)
pause(Numero_9);
sound(Numero_5,fs)
pause(Numero_5);

%PRUEBAS
%f01=fa+f1;
%sound(Numero_1,fs);