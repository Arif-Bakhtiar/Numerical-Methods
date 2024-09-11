A=[7 -2 -2; 2 2 -7; 2 -7 2];
b=[300;0;450];
Ab=[A,b];
n=3;
alpha=Ab(2,1)/Ab(1,1);
Ab(2,:)=Ab(2,:)-alpha*Ab(1,:);
alpha=A(3,1)/A(1,1);
Ab(3,:)=Ab(3,:)-alpha*Ab(1,:);
alpha=Ab(3,2)/Ab(2,2);
Ab(3,:)=Ab(3,:)-alpha*Ab(2,:);
x=zeros(3,1);
for i=3:-1:1
    x(i)=(Ab(i,end)-Ab(i,i+1:n)*x(i+1:n))/Ab(i,i);
end
