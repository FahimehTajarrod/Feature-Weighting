function MEag = F63(matfile)
load (matfile);
data = sensor_readings;

az = data(: ,3);
gz = data(: ,6);
N= length(az);
temp1=0;

for i=1:N
   temp1=temp1+((az(i)-gz(i))*2);
end
MEag=(temp1)/N;
