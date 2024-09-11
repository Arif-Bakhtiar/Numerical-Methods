disp('METODE NEWTON GREGORY BACKWARD')
disp('Masukkan x dan f(x) dalam bentuk matriks 1 kolom')
x=input('x = ');
f=input('f(x) = ');
n=numel(x);
for j=1:n-1
delf(1,j)=f(j+1)-f(j);
end
for i=2:n-1
for j=1:n-i
delf(i,j)=delf(i-1,j+1)-delf(i-1,j);
end
end
h=x(2)-x(1);
jawab='y';
while jawab=='y'
xcari=input('Nilai x yang dicari = ');
b=(xcari-x(n))/h;
i=1;
hasil=f(n);
for j=1:n-1
i=i*(b+j-1)/j;
hasil=hasil+(delf(j,n-j))*i;
end
disp(['i = ',num2str(b)]);
disp(['f(x) = ',num2str(hasil)]);
jawab=input('Coba cari x lain? (y/n)','s');
end
