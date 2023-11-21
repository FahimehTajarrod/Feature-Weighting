function ME = F41(matfile)
load (matfile);
data = sensor_readings;
g_y = data(: ,1);
N= length(g_y);
temp1=0;
for i=1:N
   temp1=temp1+(g_y(i)).^2 ;
end
ME=temp1/N;
