function MCS = F76(matfile)
load (matfile);
data = sensor_readings;
ax = data(: ,1);
N= length(ax);
MCS=0;
for j=1:N
    for i=1:j
      MCS=MCS+ax(i);
    end
end
