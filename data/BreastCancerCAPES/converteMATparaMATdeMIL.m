
[ni f]=size(Xo);

data2 = zeros(ni*f,3);
cont=1;
inst = 1;
for i = 1 : ni
    for j = 1: f
        data2(cont,1)= inst;
        data2(cont,2)= Yo(i);
        data2(cont,3)= Xo(i,j);
        cont=cont+1
    end
    inst = inst+1
end