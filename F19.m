function Var = F19(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
az = data(: ,3);

N= length(ax);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(ax(i)^2)+(ay(i)^2)+(az(i)^2) ;
   temp2=temp2+(((ax(i)^2)+(ay(i)^2)+(az(i)^2))^(1/2));
end
Var=(N*temp1-(temp2)^2)/(N*(N-1));
