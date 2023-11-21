function MEyz = F66(matfile)
load (matfile);
data = sensor_readings;
ay = data(: ,2);
az = data(: ,3);
N= length(ay);
temp1=0;
for i=1:N
   temp1=temp1+((ay(i)-az(i))*2);
end
MEyz=(temp1)/N;
