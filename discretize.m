function X_disc = discretize(X,n)
X_disc=zeros(840,30);
for i=1:size(X,1)
    for j=1:size(X,2)
       X_disc(i,j)=fix(X(i,j)*n);
         
    end
end
    