function ME = F39(matfile)
load (matfile);
data = sensor_readings;
a_z = data(: ,1);
N= length(a_z);
temp1=0;
for i=1:N
   temp1=temp1+(a_z(i)).^2 ;
end
ME=temp1/N;
