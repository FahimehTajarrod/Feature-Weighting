function Var = F20(matfile)
load (matfile);
data = sensor_readings;
gx = data(: ,4);
gy = data(: ,5);
gz = data(: ,6);

N= length(gx);
temp1=0;
temp2=0;
for i=1:N
   temp1=temp1+(gx(i)^2)+(gy(i)^2)+(gz(i)^2) ;
   temp2=temp2+(((gx(i)^2)+(gy(i)^2)+(gz(i)^2))^(1/2));
end
Var=(N*temp1-(temp2)^2)/(N*(N-1));
