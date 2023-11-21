function MinMax = F47(matfile)
load (matfile);
data = sensor_readings;
g_y = data(: ,5);
MinMax=max(g_y)-min(g_y);

