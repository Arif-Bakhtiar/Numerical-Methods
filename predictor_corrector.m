f = @(t,y) (y-t^2+1);
 a = input('Enter left end ponit, a:  ');
 b = input('Enter right end point, b:  ');
 n = input('Enter no. of subintervals, n: ');               
 alpha = input('Enter the initial condition, alpha:  ');

 h = (b-a)/n;
 t(1) = a;
 w(1) = alpha;
 fprintf('    t         w\n');
 fprintf('%5.4f  %11.8f\n', t(1), w(1));

 for i = 1:3
    t(i+1) = t(i)+h;
    k1 = h*f(t(i), w(i));
    k2 = h*f(t(i)+0.5*h, w(i)+0.5*k1);
    k3 = h*f(t(i)+0.5*h, w(i)+0.5*k2);
    k4 = h*f(t(i+1), w(i)+k3);
    w(i+1) = w(i)+(k1+2.0*(k2+k3)+k4)/6.0;
    fprintf('%5.4f  %11.8f\n', t(i+1), w(i+1));
 end

 for i = 4:n
    t0 = a+i*h;
    part1 = 55.0*f(t(4),w(4))-59.0*f(t(3),w(3))+37.0*f(t(2),w(2));
    part2 = -9.0*f(t(1),w(1));
    w0 = w(4)+h*(part1+part2)/24.0;
    part1 = 9.0*f(t0,w0)+19.0*f(t(4),w(4))-5.0*f(t(3),w(3))+f(t(2),w(2));
    w0 = w(4)+h*(part1)/24.0;
    fprintf('%5.4f  %11.8f\n', t0, w0);
    for j = 1:3
       t(j) = t(j+1);
       w(j) = w(j+1);
    end
    t(4) = t0;
    w(4) = w0;
 end
