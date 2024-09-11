
 f=@(x) x^2+3*x+2
 df=@(x) 2*x+3
 a=-3; b=0;
 x=a;
 for i=1:1:100
 x1=x-(f(x)/df(x));
 x=x1;
 end
 sol=x;
 fprintf('Approximate Root is %.15f',sol)