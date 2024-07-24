%%% CONVOLUCION DE SE�ALES
clc; clear all; close all;

x1 = [1 2 3 1]; %Se�al Original
h1 = [1 2 1 -1]; %Se�al Impulso

xlength = length(x1); %Tama�o x1
hlength = length(h1); %Tama�o h1

k = xlength+hlength;
y(1:k) = zeros;

for i=1:xlength
    for j=1:hlength
        y(i+j) = y(i+j)+x1(i)*h1(j);
        fprintf('%d\n',y(i+j));
    end
end

yfin=y(2:end);

