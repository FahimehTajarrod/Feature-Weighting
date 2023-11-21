function MEag = F61(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
gx = data(: ,4);
N= length(ax);
temp1=0;
for i=1:N
   temp1=temp1+((ax(i)-gx(i))*2);
end
MEag=(temp1)/N;
