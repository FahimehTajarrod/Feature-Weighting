load 'dataset.mat';


%feature weighting with Mutual Information
 
 dataset_norm = featureNormalize2(dataset(1:840,1:classcul-1));
 dataset_disc = discretize(dataset_norm,100);% number of intervals/2
% MI_Weights=MI(dataset_disc,dataset(1:840,classcul));

% TrainingSet=dataset(1:590,1:classcul-1); 
% GroupTrain=dataset(1:590,classcul);
% TestSet=dataset(591:840,1:classcul-1);
% truelabels=dataset(591:840,classcul);


TrainingSet_norm=dataset_norm(1:590,1:classcul-1); 
GroupTrain_norm=dataset(1:590,classcul);
TestSet_norm=dataset_norm(591:840,1:classcul-1);
truelabels_norm=dataset(591:840,classcul);

% 
% TrainingSet_disc=dataset_disc(1:590,1:classcul-1); 
% GroupTrain_disc=dataset(1:590,classcul);
% TestSet_disc=dataset_disc(591:840,1:classcul-1);
% truelabels_disc=dataset(591:840,classcul);
%  
mdl0 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
     'Distance',@WeightedJaccard,'NumNeighbors',12);
result= predict(mdl0,TestSet_norm);
CorrectRate_Weighted_Jaccard_Norm=((nnz(result-truelabels_norm))*100)/length(result)/100;


mdl1 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
    'Distance',@NoWeightedJaccard,'NumNeighbors',12);
result= predict(mdl1,TestSet_norm);
CorrectRate_NoWeighted_Jaccard_Norm=((nnz(result-truelabels_norm))*100)/length(result)/100;

% 
% mdl11 = ClassificationKNN.fit(TrainingSet_disc,GroupTrain_disc,...
%     'Distance',@NoWeightedJaccard2,'NumNeighbors',12);
% result= predict(mdl11,TestSet_disc);
% CorrectRate_NoWeighted_Jaccard_disc=((nnz(result-truelabels_disc))*100)/length(result)/100;

% 
% mdl2 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
%     'Distance','jaccard','NumNeighbors',12);
% result= predict(mdl2,TestSet_norm);
% CorrectRate_NoWeighted_MatJaccard_Norm=((nnz(result-truelabels_norm))*100)/length(result)/100;

% mdl3 = ClassificationKNN.fit(TrainingSet_disc,GroupTrain_disc,...
%     'Distance','jaccard','NumNeighbors',12);
% result= predict(mdl2,TestSet_disc);
% CorrectRate_NoWeighted_MatJaccard_disc=((nnz(result-truelabels_disc))*100)/length(result)/100;

% mdl4 = ClassificationKNN.fit(TrainingSet_norm,GroupTrain_norm,...
%     'Distance','euclidean','NumNeighbors',12);
% result= predict(mdl4,TestSet_norm);
% CorrectRate_NoWeighted_MatEucl_Norm=((nnz(result-truelabels_norm))*100)/length(result)/100;


% mdl5 = ClassificationKNN.fit(TrainingSet,GroupTrain,...
%     'Distance','euclidean','NumNeighbors',12);
% result= predict(mdl5,TestSet);
% CorrectRate_NoWeighted_MatEucl=((nnz(result-truelabels))*100)/length(result)/100;






