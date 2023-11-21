function MExy = F64(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
N= length(ax);
temp1=0;
for i=1:N
   temp1=temp1+((ax(i)-ay(i))*2);
end
MExy=(temp1)/N;
