function MEag = F62(matfile)
load (matfile);
data = sensor_readings;
ay = data(: ,2);
gy = data(: ,5);
N= length(ay);
temp1=0;
for i=1:N
   temp1=temp1+((ay(i)-gy(i))*2);
end
MEag=(temp1)/N;
