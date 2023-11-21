function d = Weightedeuclidean(x,Z)
load 'dataset.mat';
wt=(Weights(1,:))';
y=x;
for i=1:size(Z,1)
   y(:)= Z(i,:);
   S=0;
   for j=1:size(Z,2)
     S=S+(wt(j)*(x(j) - y(j))) .^ 2;
   end
   d(i,1)=sqrt(S);
end