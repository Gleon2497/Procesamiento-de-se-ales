% Programa Graficar en variable continua y variable discreta
% Gustavo Leon
% Marzo 7 de 2022

close all;
clear all;
clc;

% Variables y Funciones
x = 0:pi/100:2*pi;          %Variable Independiente
y = sin(x);                 %Variable dependiente
y1 = sin(2*x);
y2 = 3*sin(2*x);

% Transformaciones
t1=y;                  
t2=-y;
t3=-y+1;
t4=(1/2)-y+1;

t5=y1;                  
t6=-y1;
t7=-y1+1;
t8=(1/2)-y1+1;

t9=y2;                  
t10=-y2;
t11=-y2+1;
t12=(1/2)-y2+1;


% Ploteo de funciones
plot(x,y,'--.b');           %Grafica de Función

title('Función y=3*x');     %Titulo
xlabel('X');                %Nombre Eje X
ylabel('Y');                %Nombre Eje Y

hold on                     %Mantener Grafica Anterior
plot(x,y1,'-.r');           

hold on
plot(x,y2,'-.g*');
grid on;   

legend('sin(x)','sin(2x)','3sin(2x)'); %Demarcación de cada grafica


% Ploteo de funciones en divisiones de graficas
figure
subplot(411);               %Dividir visualizacion de graficas (#Fila,#Columna,Posicion)
plot(x,t1,'--.b');          %Grafica de Función

title('y1=x','FontSize',14,'FontWeight','bold','Color','k');                 %Titulo
xlabel('X','FontSize',14,'FontWeight','bold','Color','b');                   %Nombre Eje X
ylabel('Y','FontSize',14,'FontWeight','bold','Color','r');                   %Nombre Eje Y
grid on;

subplot(412);
plot(x,t2,'-.r');

title('y1=-x','FontSize',14,'FontWeight','bold','Color','k');                %Titulo
xlabel('X','FontSize',14,'FontWeight','bold','Color','b');                   %Nombre Eje X
ylabel('Y','FontSize',14,'FontWeight','bold','Color','r');                   %Nombre Eje Y
grid on;

subplot(413);
plot(x,t3,'-.k');

title('y1=-x+1','FontSize',14,'FontWeight','bold','Color','k');              %Titulo
xlabel('X','FontSize',14,'FontWeight','bold','Color','b');                   %Nombre Eje X
ylabel('Y','FontSize',14,'FontWeight','bold','Color','r');                   %Nombre Eje Y
grid on;

subplot(414);
plot(x,t4,'-.g');

title('y1=1/2(-x+1)','FontSize',14,'FontWeight','bold','Color','k');         %Titulo
xlabel('X','FontSize',14,'FontWeight','bold','Color','b');                   %Nombre Eje X
ylabel('Y','FontSize',14,'FontWeight','bold','Color','r');                   %Nombre Eje Y
grid on;
