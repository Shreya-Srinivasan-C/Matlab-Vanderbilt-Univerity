syms x y z a
p = a*x*y-z^3;
q = (a-2)*x^2;
r = (1-a)*x*z^2;
F = [p,q,r];
R = [x,y,z];
Dr = divergence(F,R);
disp('The Divergence of F is ')
disp(Dr)
crl=curl(F,R);
disp('The curl of F is ')
disp(crl)
x=linspace(-4,4,10);
y=linspace(-4,4,10);
z=linspace(-4,4,10);
[x,y,z]=meshgrid(x,y,z);
a=4;
quiver3(x,y,z,eval(p),eval(q),eval(r))
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
title('VECTOR FIELD PLOT')

