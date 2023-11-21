function [MCSp] = F93(MSCaz,MSCgz)

N= length(MSCaz);
MCSp=zeros(N,1);
for j=1:N
    for i=1:j
      MCSp(j,1)=MCSp(j,1)+(MSCaz(i)-MSCgz(i));
    end
end