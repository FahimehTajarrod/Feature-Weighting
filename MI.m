function MI_Weights=MI(X,Class)
MI_Weights=zeros;

for i=1:size(X,2)
    wf=0;
     for j=1:size(X,1)
        for k=1:12
            
            P_C=size((find(Class==k)),1);
            P_V=size((find(X(:,i)==X(j,i))),1);
            P_AND=0;
            for l=1:size(X,1)
                if(X(l,i)==X(j,i))&&(Class(l)==k)
                   P_AND=P_AND+1; 
                end
            end    
            wf=wf+((P_AND*log(P_AND/(P_C*P_V)))/840);
            
            
        end
    end
    MI_Weights(i)= wf;
    MI_Weights(i)=nmi(X(:,i),Class);
end