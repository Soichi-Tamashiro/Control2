clear all
clc
clear all
s = tf('s'); P=1/(s+1)^3;
P
%-------------------------------------------------------------------------------------
% 1° Con un controlador proporcional C(s) = KP. Grafique las respuestas al escalón en
% lazo cerrado para los siguientes valores de KP: 0.2, 0.6, 1.0, 1.4, 1.8, 2.2.
%
% Ingreso del controlador  y calculo de su respuesta al escalón
% Ingreso del Proceso
for Kp=[0.2:0.4:2.2]
    C=Kp;
    Glc=feedback(C*P,1);
    figure(1);step(Glc);hold on;
end
%-------------------------------------------------------------------------------------
% 2° Con KP = 1, aplique un controlador PI C(s) = KP + Ki/s. Grafique las respuestas
% al escalón en lazo cerrado para los siguientes valores de Ki: 0.2, 0.5, 0.8, 1.1.
% 
for Ki=[0.2:0.3:1.1]
    Kp=1;
    C=Kp+Ki/s;
    Glc=feedback(C*P,1);
    figure(2);step(Glc);hold on;
end
% 3° Con KP = 1, Ki = 0.5, aplique un controlador PID C(s) = KP + Ki/s + Kd*s.
% Grafique las respuestas al escalón en lazo cerrado para los siguientes valores
% de Kd: 0.1, 0.3, 0.5, 0.7.
% 
for Kd=[0.1:0.2:0.7]
    Kp=1;
    Ki=0.5;
    C=Kp+Ki/s+Kd*s;
    Glc=feedback(C*P,1);
    figure(3);step(Glc);hold on;
end