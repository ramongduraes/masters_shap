function [Xo Yo]= dc2BenchGenerator(n)
% n is the number of elements

%uteis
X1 = randn(n,1);            %Continua
X1 = tansig(X1);

X2 = 2*pi().*rand(n,1);     %Continua
X2 = sin(X2);

X3 = round(randn(n,1));     %Discreta
X4 = randi(5,n,1)-3;        %Discreta
X5 = randn(n,1);            %Continua

%inuteis
X6 = randn(n,1).*rand(n,1); %Continua
X7 = randn(n,1).^3;         %Continua
X8 = randn(n,1).^2;         %Continua
X9 = randi(6,n,1);          %Discreta
X10 = round(randn(n,1));    %Discreta

%output
Y = sign(X1+X2+X3+X4+X5);
%Final
Xo = [X1 X2 X3 X4 X5 X6 X7 X8 X9 X10];
Yo = Y;
end