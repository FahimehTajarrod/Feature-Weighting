function Var = F53(matfile)
load (matfile);
data = sensor_readings;
g_x = data(: ,4);
g_y = data(: ,5);
Var=corr(g_x,g_y);

