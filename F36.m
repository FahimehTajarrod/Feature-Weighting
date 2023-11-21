function Eag= F36(matfile)

load (matfile);
data = sensor_readings;
ax = data(: ,1);
ay = data(: ,2);
az = data(: ,3);
gx = data(: ,4);
gy = data(: ,5);
gz = data(: ,6);
x=ax-gx;
y=ay-gy;
z=az-gz;
CovXY=cov(x,y);
CovYX=CovXY;
CovXZ=cov(x,z);
CovZX=CovXZ;
CovYZ=cov(y,z);
CovZY=CovYZ;
CovXYZ=[var(x),CovXY(1,2),CovXZ(1,2);CovYX(1,2),var(y),CovYZ(1,2);CovZX(1,2),CovZY(1,2),var(z)];
Eag=max(eig(CovXYZ));
