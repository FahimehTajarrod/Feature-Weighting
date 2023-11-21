function [MCSp] = F92(MSCay,MSCgy)

N= length(MSCay);
MCSp=zeros(N,1);
for j=1:N
    for i=1:j
      MCSp(j,1)=MCSp(j,1)+(MSCay(i)-MSCgy(i));
    end
end
