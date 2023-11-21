load 'dataset.mat';
classcul=58;

dataset_norm = featureNormalize2(dataset(1:840,1:classcul-1));
dataset_disc = discretize(dataset_norm,100);% number of intervals/2
MI_Weights=MI(dataset_disc,dataset(1:840,classcul));