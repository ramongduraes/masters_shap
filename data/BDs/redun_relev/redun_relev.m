% Retorna um conjunto de N dados com Nrf features relevantes e Nif
% irrelevantes. Um detalhe é que todas as Nrf+Nif features são
% redundantes, ou seja, mesmo a feature irrelevante tem IM mutua alta ao
% ser comparada com outra feature.

function [Xo Yo] = redun_relev(N, Nrf, Nif)


X = randn(N,1);
Xo = repmat(X,1,Nrf+Nif);
for i = 1: Nrf+Nif
    e = randn(N,1)/5;
    Xo(:,i)=Xo(:,i)+e; 
end

Yo=ones(N,1);

for i = 1: Nrf
    Yo = Yo.*Xo(:,i);
end



end