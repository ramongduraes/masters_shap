%% Gerador dados XOR


n1 = 500; s1 = 0.3;
n2 = 500; s2 = 0.3;


m1 = [2 2 2 0 0 0];
m2 = [4 4 4 0 0 0];

c1 = randn(n1,6) * s1 + repmat(m1,n1,1);
c2 = randn(n2,6) * s2 + repmat(m2,n2,1);

Xo = [c1 ; c2];
Yo = [ones(n1,1) ; -ones(n2,1)];

m1 = [2 2 4 0 0 0];
m2 = [4 4 2 0 0 0];

c1 = randn(n1,6) * s1 + repmat(m1,n1,1);
c2 = randn(n2,6) * s2 + repmat(m2,n2,1);

Xo = [Xo ; c1 ; c2];
Yo = [Yo; -ones(n1,1) ; ones(n2,1)];


m1 = [2 4 2 0 0 0];
m2 = [4 2 4 0 0 0];

c1 = randn(n1,6) * s1 + repmat(m1,n1,1);
c2 = randn(n2,6) * s2 + repmat(m2,n2,1);

Xo = [Xo ; c1 ; c2];
Yo = [Yo; -ones(n1,1) ; ones(n2,1)];


m1 = [2 4 4 0 0 0];
m2 = [4 2 2 0 0 0];

c1 = randn(n1,6) * s1 + repmat(m1,n1,1);
c2 = randn(n2,6) * s2 + repmat(m2,n2,1);

Xo = [Xo ; c1 ; c2];
Yo = [Yo; ones(n1,1) ; -ones(n2,1)];

plot3(Xo(Yo>0,1),Xo(Yo>0,2),Xo(Yo>0,3),'og')
hold
plot3(Xo(Yo<0,1),Xo(Yo<0,2),Xo(Yo<0,3),'+b')