a=input('Enter the value of a: ');
b=input('Enter the value of b: ');
hw=input('How many integration: ');
xp=0; er=0;
f=@(x) (x^3-5*x-2);
for i=a:b:hw
    xl=(a*f(b)-b*f(a))/(f(b)-f(a));
    fxl=f(xl);
    er=(xl-xp)/xl*100;
    xp=xl;
    fprintf('a= '); disp(a);
    fprintf('b= '); disp(b);
    fprintf('xl= '); disp(xl);
    fprintf('fxl= '); disp(fxl);
    fprintf('Error= '); disp(er);
    fprintf('_______\n');
    if(f(a)*f(xl)>0)
        a=xl;
    else
        b=xl;
    end;
end;
fprintf('The root is %g\n', xl);

