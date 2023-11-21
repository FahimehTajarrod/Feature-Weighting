function Var = F49(matfile)
load (matfile);
data = sensor_readings;
a_x = data(: ,1);
a_y = data(: ,2);
Var=corr(a_x,a_y);

