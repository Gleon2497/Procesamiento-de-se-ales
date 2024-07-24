%%%TRANSORFAMADA RAPIDA DE FOURIER

clc;
clear all;
close all;

[s fs] = audioread('magic.wav');

FFT_Cancion = abs(fft(s)); %Hallar la transformada rapida de fourier de la cancion

subplot(221)
plot(s(:,1));

subplot(222)
plot(s(:,2));

subplot(223)
plot(FFT_Cancion(:,1));

subplot(224)
plot(FFT_Cancion(:,2));

tam=length(s);

Fn=-fs/2:fs/tam:(fs/2)-(fs/tam);

FFT_Cancion_Centrada =fftshift(FFT_Cancion); %Centrar

subplot(221)
plot(s(:,1));

subplot(222)
plot(s(:,2));

subplot(223)
plot(FFT_Cancion_Centrada(:,1));

subplot(224)
plot(FFT_Cancion_Centrada(:,2));
