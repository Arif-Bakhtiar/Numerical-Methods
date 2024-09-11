clc
x1=input('Enter the mark of CT-1: ');
x2=input('Enter the mark of CT-2: ');
x3=input('Enter the mark of CT-3: ');
x4=input('Enter the mark of CT-4: ');
x=x1+x2+x3+x4;
fl=100;
fl=min(fl,x1);
fl=min(fl,x2);
fl=min(fl,x3);
fl=min(fl,x4);
sum=x-fl;
avg=sum/3;
fprintf('Average CT Marks: %.2f',avg);