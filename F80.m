function MCS = F80(matfile)
load (matfile);
data = sensor_readings;
gy = data(: ,5);
N= length(gy);
MCS=0;
for j=1:N
    for i=1:j
      MCS=MCS+gy(i);
    end
end
