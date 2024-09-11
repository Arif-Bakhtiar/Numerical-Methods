%Created by myclassbook.org (Mayuresh)
%Created on 24 May 2013 %Question: Evaluate the integral x^4 within limits -3 to 3 clc;
clear all;
close all;
f=@(x)x^4;
%Change here for different function
a=-3;
b=3;
%Given limits 
n=b-a;
%Number of intervals 
h=(b-a)/n;
p=0;
for i=a:b
    p=p+1;
    x(p)=i;
    y(p)=i^4;
    %Change here for different function 
end
l=length(x);
answer=(3*h/8)*((y(1)+y(l))+3*(y(2)+y(3)+y(5)+y(6))+2*(y(4)))