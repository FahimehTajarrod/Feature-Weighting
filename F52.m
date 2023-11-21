function Var = F52(matfile)
load (matfile);
data = sensor_readings;
g_y = data(: ,5);
g_z = data(: ,6);
Var=corr(g_y,g_z);

