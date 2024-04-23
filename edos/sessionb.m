fprintf('\n Problem 5: RK4 \n')

F=@(t,y) y^2-y^3;

t0 = 0;
y0 = 0.01;
tfinal = 2/y0;
h=tfinal/500;

rakuta=rungeKutta(F, t0, h, tfinal, y0);
t=(t0:h:tfinal)';
figure;
plot(t,rakuta,'bo');
