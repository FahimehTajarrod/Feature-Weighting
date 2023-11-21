function Var = F12(matfile)
load (matfile);
data = sensor_readings;
a_z = data(: ,3);
N= length(a_z);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(a_z(i)).^2 ;
   temp2=temp2+a_z(i);
end
Var=(N*temp1-(temp2).^2)/(N*(N-1));
