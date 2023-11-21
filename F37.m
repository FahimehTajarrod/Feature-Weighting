function ME = F37(matfile)
load (matfile);
data = sensor_readings;
a_x = data(: ,1);
N= length(a_x);
temp1=0;
for i=1:N
   temp1=temp1+(a_x(i)).^2 ;
end
ME=temp1/N;
