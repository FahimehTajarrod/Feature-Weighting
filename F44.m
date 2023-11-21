function MinMax = F44(matfile)
load (matfile);
data = sensor_readings;
a_y = data(: ,2);
MinMax=max(a_y)-min(a_y);

