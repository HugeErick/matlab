% problem 1 proyect
fprintf('\n problem 1  proyect\n')
a = 0.04
F=@(t, y) a*y;

t0=0;
h=1/12;
tfinal=1;

y0=5000;
for i = 0:5
eulerCompund=eulerm(F, t0, h, tfinal, y0);
t=(t0:h:tfinal)';
figure('Name', sprintf('Iteration %d', i));
plot(t, eulerCompund, 'ro');
tfinal = tfinal + 1;
end


%example 1
%fprintf('\n Example 1 euler \n')
%a = 0.06
%F=@(t, y) a*y;

%t0=0;
%h=1/12
%tfinal=10

%y0=100;
%eulerCompund=eulerm(F, t0, h, tfinal, y0);
%t=(t0:h:tfinal)';
%plot(t, eulerCompund, 'ro');


%example 2

%fprintf('\n Example 2 euler \n')
%a = 2;
%b = 3;
%F = @(t,y) a*y-b*y^2;
%y0 = 1;
%t0 = 0;
%tfinal=10;
%h=0.001;
%y_e=eulerm(F, t0, h, tfinal, y0);
%t=(0:h:tfinal)';
%figure;
%plot(t,y_e,'r');
