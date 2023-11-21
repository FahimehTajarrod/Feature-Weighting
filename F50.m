function Var = F50(matfile)
load (matfile);
data = sensor_readings;
a_x = data(: ,1);
a_z = data(: ,3);
Var=corr(a_x,a_z);

