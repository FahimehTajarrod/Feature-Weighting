function SMA = F33(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
az = data(: ,3);
gx = data(: ,4);
gy = data(: ,5);
gz = data(: ,6);
N= length(gx);
temp1=0;
temp2=0;
temp3=0;
for i=1:N
   temp1=temp1+abs(ax(i)-gx(i));
   temp2=temp2+abs(ay(i)-gy(i));
   temp3=temp3+abs(az(i)-gz(i));
end
SMA=(temp1+temp2+temp3)/N;
