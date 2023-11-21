function d = NoWeightedJaccard(x,Z)

for i=1:size(Z,1)
    a=intersect(x(:),Z(i,:));
    b=union(x(:),Z(i,:));
    d(i,1)=1-(numel(a)/numel(b));
 end