function [x, y] = FunctionBeta_Executor(F,h,x0,x1,y0,y1)
% Note that F function expression is defined via Function Handle: F = @(x, y)(x+y)               
% change the function as you desire
                                             % step size (smaller step size gives more accurate solutions)
x = x0:h:x1;                                          % x space
y = zeros(1,length(x));                             % Memory allocation
y(y0) = y1;                                       % initial condition
for i=1:(length(x)-1)                             
% i=1:(length(x)-1)                              % calculation loop
    k1 = F(x(i),y(i));
    k2 = F(x(i)+0.5*h,y(i)+0.5*h*k1);
    k3 = F((x(i)+0.5*h),(y(i)+0.5*h*k2));
    k4 = F((x(i)+h),(y(i)+k3*h));
    y(i+1) = y(i) + (1/6)*(k1+2*k2+2*k3+k4)*h;  % main equation
end
figure, plot(x, y)  % To see the solution results
end
% To run this function, supply the needed values. 
% F, can be any function file, example @FunctionA.
% Example, FunctionBeta_Executor(@FunctionA.....)
% h is the step size, x0 is the first x value, x1 is the second
% y0 and y1 supply the inital conditions, example, y(0)=1, y0 = 0, y1 = 1.