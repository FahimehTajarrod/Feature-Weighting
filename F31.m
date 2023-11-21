function SMA = F31(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
az = data(: ,3);
N= length(ax);
temp1=0;
temp2=0;
temp3=0;
for i=1:N
   temp1=temp1+abs(ax(i));
   temp2=temp2+abs(ay(i));
   temp3=temp3+abs(az(i));
end
SMA=(temp1+temp2+temp3)/N;
