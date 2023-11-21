function MinMax = F45(matfile)
load (matfile);
data = sensor_readings;
a_z = data(: ,3);
MinMax=max(a_z)-min(a_z);

