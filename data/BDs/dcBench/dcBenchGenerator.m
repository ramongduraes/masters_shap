function [Xo Zo Yo]= dcBenchGenerator(n)
% n is the number of elements

%uteis
X1 = randn(n,1);            %Continua
X2 = randn(n,1)*10;         %Continua
X3 = round(randn(n,1));     %Discreta
X4 = ceil(2.*rand(n,1));    %Discreta
X5 = randn(n,1);            %Continua

%inuteis
X6 = randn(n,1);            %Continua
X7 = randn(n,1);            %Continua
X8 = randn(n,1);            %Continua
X9 = ceil(5.*rand(n,1));    %Discreta
X10 = round(randn(n,1));    %Discreta

%output
Y = sign(tansig((X1.^3) + sin(X2) - (X3.^3) + (X4.*X5)));

%Final
Xo = [X3 X4 X9 X10];
Zo = [X1 X2 X5 X6 X7 X8];
Yo = Y;
end