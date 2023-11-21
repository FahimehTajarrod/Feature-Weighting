function ME = F42(matfile)
load (matfile);
data = sensor_readings;
g_z = data(: ,1);
N= length(g_z);
temp1=0;
for i=1:N
   temp1=temp1+(g_z(i)).^2 ;
end
ME=temp1/N;
