function SMA = F32(matfile)
load (matfile);
data = sensor_readings;
gx = data(: ,4);
gy = data(: ,5);
gz = data(: ,6);
N= length(gx);
temp1=0;
temp2=0;
temp3=0;
for i=1:N
   temp1=temp1+abs(gx(i));
   temp2=temp2+abs(gy(i));
   temp3=temp3+abs(gz(i));
end
SMA=(temp1+temp2+temp3)/N;
