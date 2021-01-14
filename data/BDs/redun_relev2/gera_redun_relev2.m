%Gera banco 
% o objetivo deste banco e proporcionar dados para estudos de redundância e
% relevância, sobretudo para avaliar o indice S da tese de doutorado de
% Frederico Coelho

clear all
clc;

N1 = 1000;
N2 = 1000;
N = N1 + N2;

X1 = rand(N,1);
X2 = X1;
X3 = X1 + randn(N,1)/5;
X4 = X1 + randn(N,1)/5;
X5 = X3;
X6 = randn(N,1);
X7 = X6 + rand(N,1)/1000;
X8 = rand(N,1);
X9 = tanh(tan(randn(N,1)));
X10 = sin(rand(N,1));
X11 = [randn(N1,1) ; rand(N1,1)];
X12 = ones(N,1);
X13 = repmat([1;0.5],N1,1);
X14 = X6 + X8;
X15 = X11 + X13;


Y = X1 + tanh(X3);

Xo = [X1 X2 X3 X4 X5 X6 X7 X8 X9 X10 X11 X12 X13 X14 X15];
Yo = Y;