A=[7 -2 -2; 2 2 -7; 2 -7 2];
b=[300; 0; 450];
Ab=[A b];
As=[Ab(2,:); Ab(3,:); Ab(1,:)];
    n=3;
    x= zeros(n,1);
    err= zeros(n,1);
    for iter=1:15
        for k=1:n
            xold=x(k);
            num=As(k,end)-As(k,1:k-1)*x(1:k-1)-As(k,k+1:n)*x(k+1:n);
            x(k)=num/As(k,k);
            err(k)=abs(x(k)-xold);
        end
        disp(['Iter ',num2str(iter), '; Error= ',num2str(max(err))]);
    end