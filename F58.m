function MMA = F58(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
N= length(ax);
ax=featureNormalize2(ax);
ay=featureNormalize2(ay);
temp1=0;
for i=1:N
   Phi=acos(ax(i)*ay(i))/(abs(ax(i))*abs(ay(i))) ;
   temp1=temp1+Phi;
end
MMA=(temp1)/N;
