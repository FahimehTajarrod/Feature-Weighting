function MinMax = F46(matfile)
load (matfile);
data = sensor_readings;
g_z = data(: ,6);
MinMax=max(g_z)-min(g_z);

