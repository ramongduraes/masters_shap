%% Gerador dados XOR N dimensional
clear all;
clc;

%definir N > 2
N = 6;
Nd = 3;     %transforma �ltimas Nd colunas (features) em discretas (tem que ser <=3)
Na = Nd;  %insere features continuas aleatorias (qualquer n�mero)
Nad = Nd;    %insere features discretas aleatorias (qualquer n�mero)
p1 = 2 ;
p2 = 12;

% para 2 dim
n1 = 200; s1 = 0.8;
n2 = 200; s2 = 0.8;
m1 = [p1 p1];
m2 = [p2 p2];

c1 = randn(n1,2) * s1 + repmat(m1,n1,1);
c2 = randn(n2,2) * s2 + repmat(m2,n2,1);

Xo = [c1 ; c2];
Yo = [ones(n1,1) ; ones(n2,1)];

m1 = [p2 p1];
m2 = [p1 p2];

c1 = randn(n1,2) * s1 + repmat(m1,n1,1);
c2 = randn(n2,2) * s2 + repmat(m2,n2,1);

Xo = [Xo ; c1 ; c2];
Yo = [Yo; -ones(n1,1) ; -ones(n2,1)];

% para N dimensoes

for i = 3 : N
    n = size(Xo,1);
    Xi = randn(n,1) * s1 + repmat(p1,n,1);
        
    Xi2 = randn(n,1) * s1 + repmat(p2,n,1);
    ruido = randn(size(Xo))./100;
    
    Xo = [Xi Xo; Xi2 Xo+ruido];
    
    Yo = [Yo;-Yo];
end



if N == 3
plot3(Xo(Yo>0,1),Xo(Yo>0,2),Xo(Yo>0,3),'og')
hold
plot3(Xo(Yo<0,1),Xo(Yo<0,2),Xo(Yo<0,3),'+b')
end


% transforma algumas features em discretas

if Nd >0 
    Xo = [Xo(:,1:N-Nd) round(Xo(:,N-Nd+1:N))];
end
      

if N == 3
    figure
    plot3(Xo(Yo>0,1),Xo(Yo>0,2),Xo(Yo>0,3),'og')
    hold
    plot3(Xo(Yo<0,1),Xo(Yo<0,2),Xo(Yo<0,3),'+b')
end

if N == 2
    figure
    plot(Xo(Yo>0,1),Xo(Yo>0,2),'og')
    hold
    plot(Xo(Yo<0,1),Xo(Yo<0,2),'+b')
end

% insere features aleatorias
if Na > 0 
    n = size(Xo,1);
    Xo = [Xo rand(n,Na)*s1/2];
end

if Nad > 0 
    n = size(Xo,1);
    Xo = [Xo randi(4,n,Nad)];
end