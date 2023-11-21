function MinMax = F48(matfile)
load (matfile);
data = sensor_readings;
g_x = data(: ,4);
MinMax=max(g_x)-min(g_x);

