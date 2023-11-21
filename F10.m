function Var = F10(matfile)
load (matfile);
data = sensor_readings;
a_x = data(: ,1);
N= length(a_x);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(a_x(i)).^2 ;
   temp2=temp2+a_x(i);
end
Var=(N*temp1-(temp2).^2)/(N*(N-1));

