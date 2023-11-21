function ME = F38(matfile)
load (matfile);
data = sensor_readings;
a_y = data(: ,1);
N= length(a_y);
temp1=0;
for i=1:N
   temp1=temp1+(a_y(i)).^2 ;
end
ME=temp1/N;
