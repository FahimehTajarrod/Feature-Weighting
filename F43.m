function MinMax = F43(matfile)
load (matfile);
data = sensor_readings;
a_x = data(: ,1);
MinMax=max(a_x)- min(a_x);

