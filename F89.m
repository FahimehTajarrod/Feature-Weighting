function [MCSp] = F89(MSC)
N= length(MSC);
MCSp=zeros(N,1);
for j=1:N
    for i=1:j
      MCSp(j,1)=MCSp(j,1)+MSC(i);
    end
end
