%dataset=zero(840,7);
%for i=1:840
    load 'dataset1.mat';
    d1=dataset((1:60),:);
    load 'dataset2.mat';
    d2=dataset((1:60),:);
    load 'dataset3.mat';
    d3=dataset((1:60),:);
    load 'dataset4.mat';
    d4=dataset((1:60),:);
    load 'dataset5.mat';
    d5=dataset((1:60),:);
    load 'dataset6.mat';
    d6=dataset((1:60),:);
    load 'dataset7.mat';
    d7=dataset((1:60),:);
    load 'dataset8.mat';
    d8=dataset((1:60),:);
    load 'dataset9.mat';
    d9=dataset((1:60),:);
    load 'dataset10.mat';
    d10=dataset((1:60),:);
    load 'dataset11.mat';
    d11=dataset((1:60),:);
    load 'dataset12.mat';
    d12=dataset((1:60),:);
    load 'dataset13.mat';
    d13=dataset((1:60),:);
    load 'dataset14.mat';
    d14=dataset((1:60),:);
    %for j=1:60
        d=[d1;d2;d3;d4;d5;d6;d7;d8;d9;d10;d11;d12;d13;d14];
   % end
%end
