function Var = F51(matfile)
load (matfile);
data = sensor_readings;
a_y = data(: ,2);
a_z = data(: ,3);
Var=corr(a_y,a_z);

