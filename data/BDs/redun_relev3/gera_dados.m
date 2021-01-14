%Redundance Relevance 3

clear all;
clc;

n=5000;

x1 = (1:1:n)';

x2 = [randperm(n/2)' ; randperm(n/2)'+(n/2)];

x3 = -(n-x1);

x4 = log(1+(n-x1));

x5 = [zeros(n/2,1)+0.001 ; ones(n/2,1)*10000];

x6 = sin((1:1:n)./n*20*pi())'.*200;

x7 = cos((1:1:n)./n*20*pi())'.*200;

y = x1 + x2;

y2 = y + 5*x6;


Xo = [x1 x2 x3 x4 x5 x6 x7];
Yo = y2;

% MI(x1,x2) = 1.4581   
% MI(x1,y) = 1.9584   MI(x1,y2) = 2.0057
% MI(x2,y) = 1.9403   MI(x2,y2) = 1.7657
% 
% MI(x1,x3) = 6.4115
% MI(x2,x3) = 1.4581  
% MI(y,x3) = 1.9584   MI(x3,y2) = 2.0057

% MI(x1,x4) = 6.6114
% MI(x4,y) = 1.7073   MI(x4,y2) = 1.6376
% MI(x4,x2) = 1.2198

% MI(x1,x5) = 0.2935 
% MI(x5,x2) = 0.2935
% MI(X5,y) = 0.3715   MI(x5,y2) = 0.4660

% MI(x6,x1) =  3.4063
% MI(x6,y) = 0.8425     MI(x6,y2) =  0.9203
