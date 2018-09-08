% INGRESE EL MODELO EN MATLAB
clc
clear all
% Ingrese parametros
R=1;L=1;C=1;
% Ingrese matrices:
A=[0 1/L;-1/C -1/(R*C)];
B=[0; 1/(R*C)];C=[0 1];D=[0];
Cc=1;
cir1=ss(A,B,C,D) % State space (spacio de estado)
% RESPUESTA DEL SIST. CUANDO LA ENTRADA ES ESCALÓN UNITARIO
figure(1),step(cir1)
% RESPUESTA DEL SIST. CUANDO LA ENTRADA ES IMPULSO UNITARIO
figure(2),impulse(cir1)
% RESPUESTA DEL SIST. PARA OTRO TIPO DE ENTRADA
% Se genera el rango de tiempo, luego la entrada u y emplear el comando
% lsim
% ejm Rpta. a entrada sinusoidal: u=sen(t),donde 0<=t<=20
t=[0:0.01:20];
u=sin(t);
figure(3),lsim(cir1,u,t)
% RESPUESTA DEL SIST. A CONDICIONES INICIALES
% Sea u=0, x1(0)=0,x2(0)=1V
figure(4),initial(cir1,[0 1])
%-----------------------------------------------------------------------------------
% Se desea Observar el comportamiento de todas las V: de Estado
% En este ejemplo habra 2 salidas
C=[1 0;0 1];D=[0;0]
cir1=ss(A,B,C,D) % State space (spacio de estado)
cir1=ss(A,B,C,D) % State space (spacio de estado)
% RESPUESTA DEL SIST. CUANDO LA ENTRADA ES ESCALÓN UNITARIO
figure(1),step(cir1)
% RESPUESTA DEL SIST. CUANDO LA ENTRADA ES IMPULSO UNITARIO
figure(2),impulse(cir1)
% RESPUESTA DEL SIST. PARA OTRO TIPO DE ENTRADA
% Se genera el rango de tiempo, luego la entrada u y emplear el comando
% lsim
% ejm Rpta. a entrada sinusoidal: u=sen(t),donde 0<=t<=20
t=[0:0.01:20];
u=sin(t);
figure(3),lsim(cir1,u,t)
% RESPUESTA DEL SIST. A CONDICIONES INICIALES
% Sea u=0, x1(0)=0,x2(0)=1V
figure(4),initial(cir1,[0 1])