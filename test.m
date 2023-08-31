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

%% 
fun = @(x)100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
x0 = [0.5,0];
A = [1,2];
b = 1;
Aeq = [2,1];
beq = 1;
x = fmincon(fun,x0,A,b,Aeq,beq);