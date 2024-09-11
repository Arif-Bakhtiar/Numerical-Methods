a = 0;
b = pi/2;
f = @(x) 6 + 3*cos(x);
n = 7;
h = (b - a) / (n - 1);
ff1 = 0;
ff2 = 0;
for i = 2:2:n;
    x = (a + (i - 1) * h); 
    ff1 = ff1 + 4 * f(x);
end
for i = 3:2:n-1;
    x = (a + (i - 1) * h);
    ff2 = ff2 + 2 * f(x);
end
I = (h/3)*(f(a) + ff1 + ff2 + f(b))