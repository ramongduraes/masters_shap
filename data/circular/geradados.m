%% gera dados circulares


n = 4000;
n2 = 1000;
nf = 2;

C = [rand(n,nf)-0.5 ; (rand(n2,nf)-0.5)./3];


plot(C(:,1),C(:,2),'ob')



[THETA,RHO] = cart2pol(C(:,1),C(:,2));

aux1 = find(RHO <= 0.2);
aux2 = find(RHO >= 0.4);

T1 = [THETA(aux1) RHO(aux1)];
T2 = [THETA(aux2) RHO(aux2)];

[X,Y] = pol2cart(T1(:,1),T1(:,2));

C1 = [X Y];

[X,Y] = pol2cart(T2(:,1),T2(:,2));

C2 = [X Y];

C = [C1;C2];
plot(C(:,1),C(:,2),'ob')



Xo = C;
Yo = [ones(length(aux1),1); -ones(length(aux2),1)];