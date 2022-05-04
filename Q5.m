clc;
clear all
close all;

n=-5:30;


a=-0.8*exp(j*(pi/3))


x=n==0; %delta function.
nr=[1];
dr=[1 a];

x1=filter(nr,dr,x);




r=real(x1)
i=imag(x1)

subplot(2,1,1)
stem(n,r)
title('real part of the system responce ')
xlabel('time samples(n)')
ylabel('sample values')

subplot(2,1,2)
stem(n,i)
title('imaginary part of the system responce ')
xlabel('time samples(n)')
ylabel('sample values')







