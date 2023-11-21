function MVA= F59(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
ax=featureNormalize2(ax);
ay=featureNormalize2(ay);
N= length(ax);
temp1=0;
temp2=0;
for i=1:N
   Phi=acos(ax(i)*ay(i))/(abs(ax(i))*abs(ay(i))) ;
   temp1=temp1+(Phi^2) ;
   temp2=temp2+Phi;
end
MVA=((temp2^2)-temp1)/(N*(N-1));
