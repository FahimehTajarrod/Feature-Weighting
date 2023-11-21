function d = NoWeightedeuclidean(x,Z)
y=x;
for i=1:size(Z,1)
   y(:)= Z(i,:);
   S=0;
   for j=1:size(Z,2)
     S=S+((x(j) - y(j)) .^ 2);
   end
   d(i,1)=sqrt(S);
end