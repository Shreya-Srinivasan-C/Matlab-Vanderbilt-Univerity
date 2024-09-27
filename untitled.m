f = @(x) x.*sin(x);
a = 0; b = pi; n = 6;
h = (b-a)/n ;
s = f(a)+f(b);
for i = 1:n-1
    x = a + i*h;
    if mod(i,2)==0
        s = s + 2*f(x);
    else
        s = s + 4*f(x);

    end
end
I = h/3 * s
disp(I)