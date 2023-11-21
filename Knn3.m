load 'dataset.mat';


%feature weighting with Mutual Information
 %{
 dataset_norm = featureNormalize2(dataset(1:840,1:classcul-1));
 dataset_disc = discretize(dataset_norm,100);% number of intervals/2
 MI_Weights=MI(dataset_disc,dataset(1:840,classcul));
%}
TrainingSet=dataset(1:590,1:classcul-1); 
GroupTrain=dataset(1:590,classcul);
TestSet=dataset(591:840,1:classcul-1);
truelabels=dataset(591:840,classcul);

dataset_norm = featureNormalize2(dataset(1:840,1:classcul-1));

TrainingSet_norm=dataset_norm(1:590,1:classcul-1); 
GroupTrain_norm=dataset(1:590,classcul);
TestSet_norm=dataset_norm(591:840,1:classcul-1);
truelabels_norm=dataset(591:840,classcul);


 
mdl0 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
     'Distance',@WeightedJaccard,'NumNeighbors',12);
result= predict(mdl0,TestSet_norm);
CorrectRate_Weighting_Jaccard_Norm=((nnz(result-truelabels_norm))*100)/length(result)/100;


mdl1 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
    'Distance',@NoWeightedJaccard,'NumNeighbors',12);
result= predict(mdl1,TestSet_norm);
CorrectRate_1NoWeighting_Jaccard_Norm=((nnz(result-truelabels_norm))*100)/length(result)/100;


mdl2 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
    'Distance','jaccard','NumNeighbors',12);
result= predict(mdl2,TestSet_norm);
CorrectRate_2NoWeighting_Jaccard_Norm=((nnz(result-truelabels_norm))*100)/length(result)/100;


% mdl3 = ClassificationKNN.fit(TrainingSet,GroupTrain,...
%      'Distance',@WeightedJaccard,'NumNeighbors',12);
% result3= predict(mdl3,TestSet);
% CorrectRate_Weighting_Jaccard=((nnz(result3-truelabels))*100)/length(result3)/100;

mdl4 = ClassificationKNN.fit(TrainingSet,GroupTrain,...
    'Distance','euclidean','NumNeighbors',12);
result= predict(mdl4,TestSet);
CorrectRate_1NoWeighting_Jaccard=((nnz(result-truelabels))*100)/length(result)/100;


mdl5 = ClassificationKNN.fit(TrainingSet,GroupTrain,...
    'Distance','jaccard','NumNeighbors',12);
result= predict(mdl5,TestSet);
CorrectRate_2NoWeighting_Jaccard=((nnz(result-truelabels))*100)/length(result)/100;














