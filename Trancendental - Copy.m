clc
clear all
f=@(x) exp(x) - 3*x ;
  x0 = 0; 
  x1 = 1;
  tol =.1;
  if (f(x0)*f(x1) > 0)
    error ('invalid choice of interval')
  end
  r=0; i=0;
  {'Iteration', 'x0', 'x1','x2', 'f(x0)', 'f(x1)','f(x2)'}
  while ((x1-x0)/2 > 0)
      i = i + 1;
      x2 = (x0+x1)/2;      
      
      if (f(x2) == 0)
          break;
          
      elseif (f(x0)*f(x2) <= 0)
          x1 = x2 ;
      
      else
              x0 = x2;
      end
      Table(i, :) = {i x0 x1 x2 f(x0) f(x1) f(x2)};
      fprintf('%d   %d  %d  %d  %d  %d  %d\n', Table{i, :});
  end
  
  fprintf('The root is: %.2f',x2);