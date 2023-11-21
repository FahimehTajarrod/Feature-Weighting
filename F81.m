function MCS = F81(matfile)
load (matfile);
data = sensor_readings;
gz = data(: ,6);
N= length(gz);
MCS=0;
for j=1:N
    for i=1:j
      MCS=MCS+gz(i);
    end
end
