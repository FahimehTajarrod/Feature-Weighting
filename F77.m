function MCS = F77(matfile)
load (matfile);
data = sensor_readings;
ay = data(: ,2);
N= length(ay);
MCS=0;
for j=1:N
    for i=1:j
      MCS=MCS+ay(i);
    end
end
