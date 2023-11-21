function d = WeightedJaccard(x,Z)
load 'dataset.mat';
wt=(Weights(1,:))';
a=0;
b=0;

for i=1:size(Z,1)
    for j=1:(size(Z,2))
    a= a+(min(x(j),Z(i,j)))*wt(j);
    b= b+(max(x(j),Z(i,j)))*wt(j);
    end
    d(i,1)=1-(a/b);
    a=0;
    b=0;
 end