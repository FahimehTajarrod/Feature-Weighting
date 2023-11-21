function Var = F15(matfile)
load (matfile);
data = sensor_readings;
g_z = data(: ,6);
N= length(g_z);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(g_z(i)).^2 ;
   temp2=temp2+g_z(i);
end
Var=(N*temp1-(temp2).^2)/(N*(N-1));
