function ME = F40(matfile)
load (matfile);
data = sensor_readings;
g_x = data(: ,1);
N= length(g_x);
temp1=0;
for i=1:N
   temp1=temp1+(g_x(i)).^2 ;
end
ME=temp1/N;
