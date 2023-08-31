clc,clear
close all

H = [1 -1; -1 2]; 
f = [-2; -6];
A = [1 1; -1 2; 2 1];
b = [2; 2; 3];

[x,fval,exitflag,output,lambda] = quadprog(H,f,A,b);

%%
t=0:0.01:6;
y=sin(t);
plot(t,y)