function Var = F54(matfile)
load (matfile);
data = sensor_readings;
g_x = data(: ,4);
g_z = data(: ,6);
Var=corr(g_x,g_z);

