function MExz = F65(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
az = data(: ,3);
N= length(ax);
temp1=0;
for i=1:N
   temp1=temp1+((ax(i)-az(i))*2);
end
MExz=(temp1)/N;
