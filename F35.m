function Eg= F35(matfile)

load (matfile);
data = sensor_readings;

x = data(: ,4);
y = data(: ,5);
z = data(: ,6);

CovXY=cov(x,y);
CovYX=CovXY;
CovXZ=cov(x,z);
CovZX=CovXZ;
CovYZ=cov(y,z);
CovZY=CovYZ;
CovXYZ=[var(x),CovXY(1,2),CovXZ(1,2);CovYX(1,2),var(y),CovYZ(1,2);CovZX(1,2),CovZY(1,2),var(z)];
Eg=max(eig(CovXYZ));
