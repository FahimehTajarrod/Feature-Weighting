function Var = F14(matfile)
load (matfile);
data = sensor_readings;
g_y = data(: ,5);
N= length(g_y);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(g_y(i)).^2 ;
   temp2=temp2+g_y(i);
end
Var=(N*temp1-(temp2).^2)/(N*(N-1));
