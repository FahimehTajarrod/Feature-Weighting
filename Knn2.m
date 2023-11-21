load 'dataset.mat';


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


 
mdl0 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
     'Distance',@WeightedJaccard,'NumNeighbors',12);

mdl1 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
    'Distance',@NoWeightedJaccard,'NumNeighbors',12);
mdl2 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
    'Distance','jaccard','NumNeighbors',12);


result0= predict(mdl0,TestSet_norm);
result1= predict(mdl1,TestSet_norm);
result2= predict(mdl2,TestSet_norm);

CorrectRate_Weighting_Jaccard=((nnz(result0-truelabels_norm))*100)/length(result0)/100;
CorrectRate_1NoWeighting_Jaccard=((nnz(result1-truelabels_norm))*100)/length(result1)/100;
CorrectRate_2NoWeighting_Jaccard=((nnz(result2-truelabels_norm))*100)/length(result2)/100;


