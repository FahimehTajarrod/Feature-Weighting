function MEA = F60(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
ax=featureNormalize2(ax);
ay=featureNormalize2(ay);
N= length(ax);

temp1=0;
for i=1:N
   Phi=acos(ax(i)*ay(i))/(abs(ax(i))*abs(ay(i))) ;
   temp1=temp1+(Phi^2);
end
MEA=(temp1)/N;
