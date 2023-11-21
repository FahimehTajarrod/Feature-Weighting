
l=1;
dataset00=zeros(840,4);
  for k=1:14
    for i=1:5
       for j=1:12
          subdata=strcat('C:\Users\Niki\Documents\MATLAB\USC-HAD\Subject',num2str(k),'\a',num2str(j),'t',num2str(i),'.mat'); 
          m=1;
          dataset00(l,m)=F58(subdata);
          m=m+1;
                    dataset00(l,m)=F59(subdata);
          m=m+1;
                    dataset00(l,m)=F60(subdata);
          m=m+1;
          load (subdata);
          dataset00(l,m)=str2num(activity_number);
          l=l+1;
       end
    end
   end
   save datasetTest.mat,dataset00;
