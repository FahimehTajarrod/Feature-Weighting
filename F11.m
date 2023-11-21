function Var = F11(matfile)
load (matfile);
data = sensor_readings;
a_y = data(: ,2);
N= length(a_y);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(a_y(i)).^2 ;
   temp2=temp2+a_y(i);
end
Var=(N*temp1-(temp2).^2)/(N*(N-1));
