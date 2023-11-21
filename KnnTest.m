load 'dataset.mat';
%classcul=58;

TrainingSet=dataset(1:590,1:classcul-1); 
GroupTrain=dataset(1:590,classcul);
TestSet=dataset(591:840,1:classcul-1);
truelabels=dataset(591:840,classcul);

%feature weighting with Mutual Information
 %{
 dataset_norm = featureNormalize2(dataset(1:840,1:classcul-1));
 dataset_disc = discretize(dataset_norm,100);% number of intervals/2
 MI_Weights=MI(dataset_disc,dataset(1:840,classcul));
%}

dataset_norm = featureNormalize2(dataset(1:840,1:classcul-1));

TrainingSet_norm=dataset_norm(1:590,1:classcul-1); 
GroupTrain_norm=dataset(1:590,classcul);
TestSet_norm=dataset_norm(591:840,1:classcul-1);
truelabels_norm=dataset(591:840,classcul);

chiSqrDist = @(x,Z,wt)sqrt((bsxfun(@minus,x,Z).^2)*wt);
NoWeights=ones(classcul-1,1);
Weight=(Weights(1,:))';

%mdl0 = ClassificationKNN.fit(TrainingSet,GroupTrain,...
 %   'Distance',@WeightedJaccard,'NumNeighbors',5);

 
mdl0 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
    'Distance',@WeightedJaccard,'NumNeighbors',5);

mdl = ClassificationKNN.fit(TrainingSet,GroupTrain,...
    'Distance',@(x,Z)chiSqrDist(x,Z,Weight),'NumNeighbors',5);
mdl1 = ClassificationKNN.fit(TrainingSet,GroupTrain,...
    'Distance',@(x,Z)chiSqrDist(x,Z,NoWeights),'NumNeighbors',5);
mdl2 = ClassificationKNN.fit(TrainingSet,GroupTrain,...
    'Distance','jaccard','NumNeighbors',5);


result0= predict(mdl0,TestSet_norm);

result= predict(mdl,TestSet);
result1= predict(mdl1,TestSet);
result2= predict(mdl2,TestSet);


CorrectRate_Jaccard_Weighting=((nnz(result0-truelabels_norm))*100)/length(result0)/100;

CorrectRate_Weighting=((nnz(result-truelabels))*100)/length(result)/100;
CorrectRate_NoWeighting_Chi=((nnz(result1-truelabels))*100)/length(result1)/100;
CorrectRate_NoWeighting_Jaccard=((nnz(result2-truelabels))*100)/length(result2)/100;