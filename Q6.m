clc;
clear all;
close all;

n=-10:100

x=n==0; %delta function.
a=-1.8*cos(pi/16);
b=0.81;


nr=[1 0.5];
dr=[1 a b];
d=filter(nr,dr,x)


stem(n,d)
title('responce of the system ')
xlabel('time samples(n)')
ylabel('sample values')


