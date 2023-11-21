function MCS = F78(matfile)
load (matfile);
data = sensor_readings;
az = data(: ,3);
N= length(az);
MCS=0;
for j=1:N
    for i=1:j
      MCS=MCS+az(i);
    end
end
