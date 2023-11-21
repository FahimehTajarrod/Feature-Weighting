function MCS = F79(matfile)
load (matfile);
data = sensor_readings;
gx = data(: ,4);
N= length(gx);
MCS=0;
for j=1:N
    for i=1:j
      MCS=MCS+gx(i);
    end
end
