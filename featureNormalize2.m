function X_norm = featureNormalize2(X)
%FeatureNormalize.m Normalizes the features in X 
%X_norm=zeros(840,30);
X_norm=X;
for i=1:size(X,2);
part = norm(X(:,i));
if part > 0
  X_norm(:,i) = X(:,i)/part;
else % part = 0 --> avoid "divide by 0" 
  X_norm(:,i) = part;
end

end