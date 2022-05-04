clc
clear all
close all;
n=-10:10;




subplot(2,2,1)
a=0;
x1=resp(a,n);
stem(n,x1)
title('responce of the system if a=0  ')
xlabel('time samples(n)')
ylabel('sample values')
subplot(2,2,2)
a=1;
x1=resp(a,n);
stem(n,x1)
title('responce of the system if a=1  ')
xlabel('time samples(n)')
ylabel('sample values')
subplot(2,2,3)
a=2;
x1=resp(a,n);
stem(n,x1)
title('responce of the system if a=2  ')
xlabel('time samples(n)')
ylabel('sample values')

subplot(2,2,4)
a=0.5;
x1=resp(a,n)
stem(n,x1)
title('responce of the system if a=0.5  ')
xlabel('time samples(n)')
ylabel('sample values')









function out=resp(s,n)
x=n==0; %delta function.
nr=1;
dr=[1 -s];

d=filter(nr,dr,x);

out=d;
end
