function [MCSp] = F91(MSCax,MSCgx)

N= length(MSCax);
MCSp=zeros(N,1);
for j=1:N
    for i=1:j
      MCSp(j,1)=MCSp(j,1)+(MSCax(i)-MSCgx(i));
    end
end
