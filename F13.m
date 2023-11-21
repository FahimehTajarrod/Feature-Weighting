function Var = F13(matfile)
load (matfile);
data = sensor_readings;
g_x = data(: ,3);
N= length(g_x);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(g_x(i)).^2 ;
   temp2=temp2+g_x(i);
end
Var=(N*temp1-(temp2).^2)/(N*(N-1));
