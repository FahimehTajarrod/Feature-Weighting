load 'dataset.mat';

dataset_norm = featureNormalize2(dataset(1:840,1:classcul-1));
 dataset_disc = discretize(dataset_norm,100);% number of intervals/2
 dataset_disc_weighted(:,classcul-1)=dataset_disc(:,classcul-1);%Temporary Initialization
 %feature weighting with Mutual Information
% MI_Weights=MI(dataset_disc,dataset(1:840,classcul));

 
for i=1:classcul-1
     dataset_disc_weighted(:,i)=dataset_disc(:,i)*Weights(1,i);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CR=0;
for j = 1:2
 Training=dataset_disc_weighted(:,1:classcul-1);
 Group=dataset(:,classcul);
 cp = classperf(Group);
 indices = crossvalind('Kfold',Group,10);
 for i = 1:10
    test = (indices == i); train = ~test;
    class = F1multisvm(Training(train,:),Group(train,:),Training(test,:));
    classperf(cp,class,test);
 end
 CR= CR+(cp.CorrectRate);
end
CR_SVM_Weighted=CR/2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
CR=0;
for j = 1:2
 Training=dataset_norm(:,1:classcul-1);
 Group=dataset(:,classcul);
 cp = classperf(Group);
 indices = crossvalind('Kfold',Group,10);
 for i = 1:10
    test = (indices == i); train = ~test;
    mdl = ClassificationKNN.fit(Training(train,:),Group(train,:),...
     'Distance',@WeightedJaccard,'NumNeighbors',12);
    class= predict(mdl,Training(test,:));
    classperf(cp,class,test);
 end
 CR= CR+(cp.CorrectRate);
end
CR_Knn_Weighted=CR/2
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CR=0;
% for j = 1:3
%  Training=dataset_disc(:,1:classcul-1);
%  Group=dataset(:,classcul);
%  cp = classperf(Group);
%  indices = crossvalind('Kfold',Group,10);
%  for i = 1:10
%     test = (indices == i); train = ~test;
%     class = F1multisvm(Training(train,:),Group(train,:),Training(test,:));
%     classperf(cp,class,test);
%  end
%  CR= CR+(cp.CorrectRate);
% end
% CR_SVM_NoWeight=CR/3
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CR=0;
% for j = 1:3
%  Training=dataset_norm(:,1:classcul-1);
%  Group=dataset(:,classcul);
%  cp = classperf(Group);
%  indices = crossvalind('Kfold',Group,10);
%  for i = 1:10
%     test = (indices == i); train = ~test;
%     mdl = ClassificationKNN.fit(Training(train,:),Group(train,:),...
%      'Distance',@NoWeightedJaccard,'NumNeighbors',12);
%     class= predict(mdl,Training(test,:));
%     classperf(cp,class,test);
%  end
%  CR= CR+(cp.CorrectRate);
% end
% CR_Knn_NoWeighted=CR/3
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
