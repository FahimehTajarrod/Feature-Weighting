function Ea= F34(matfile)

load (matfile);
data = sensor_readings;
x = data(: ,1);
y = data(: ,2);
z = data(: ,3);

CovXY=cov(x,y);
CovYX=CovXY;
CovXZ=cov(x,z);
CovZX=CovXZ;
CovYZ=cov(y,z);
CovZY=CovYZ;
CovXYZ=[var(x),CovXY(1,2),CovXZ(1,2);CovYX(1,2),var(y),CovYZ(1,2);CovZX(1,2),CovZY(1,2),var(z)];
Ea=max(eig(CovXYZ));
