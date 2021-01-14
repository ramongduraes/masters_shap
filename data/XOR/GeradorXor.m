%% Gerador dados XOR


n1 = 500; s1 = 0.7;
n2 = 500; s2 = 0.7;
m1 = [2 2 ];
m2 = [5 5 ];

c1 = randn(n1,2) * s1 + repmat(m1,n1,1);
c2 = randn(n2,2) * s2 + repmat(m2,n2,1);

Xo = [c1 ; c2];
Yo = [ones(n1,1) ; ones(n2,1)];

m1 = [5 2 ];
m2 = [2 5 ];

c1 = randn(n1,2) * s1 + repmat(m1,n1,1);
c2 = randn(n2,2) * s2 + repmat(m2,n2,1);

Xo = [Xo ; c1 ; c2];
Yo = [Yo; -ones(n1,1) ; -ones(n2,1)];
%Xo = [Xo Xo(:,1:2)];