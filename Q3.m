clc;
clear all;
close all;


n=-50:50;
alpha=0.05;
beta=0.5;
z=alpha+beta*j;
c=exp(z*n);
x1=real(c);
x2=imag(c);
subplot(2,1,1)
stem(n,x1)
title('real part of growing complex sinusoidal ')
xlabel('time samples(n)')
ylabel('sample values')
subplot(2,1,2)
stem(n,x2)
title('imaginary part of growing complex sinusoidal ')
xlabel('time samples(n)')
ylabel('sample values')




alpha=-0.05;
beta=0.5;
z=alpha+beta*j;
c=exp(z*n);
x3=real(c);
x4=imag(c);

figure;
subplot(2,1,1)
stem(n,x3)
title('real part of decaying complex sinusoidal ')
xlabel('time samples(n)')
ylabel('sample values')
subplot(2,1,2)
stem(n,x4)
title('imaginary part of decaying complex sinusoidal ')
xlabel('time samples(n)')
ylabel('sample values')