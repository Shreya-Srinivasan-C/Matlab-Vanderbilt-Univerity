function[]=logpoly(t,y)
n=length(t);
syms x
sum=0;
for i = 1:n
    l = 1;
    for j = 1:n
        if j~=i
            l=l*(x-t(j))/(t(i)-t(j));
        end 
    end
    sum = sum+l*y(i);
end
s=expand(sum);
disp('The lagrange interpolation formula is ')
disp(s)
x=t(1):0.01:t(end);
z =eval(s); 
plot(t,y,'*',x,z,'k')
legend('data points','polynomials')
xlabel('DISTANCE IN METERS (y)')
ylabel('TIME IN SEC (t)')
title('LAGRANGE INTERPOLATION POLYNOMIAL AND DATAPOINTS GRAPH')
end

