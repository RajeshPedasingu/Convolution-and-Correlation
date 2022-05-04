clc;
clear all;
close all;

x1=[4 2 6 3 8 1 5]
x2=[3 8 6 9 6 7]
txt1=('enter the first index of x1 starts from=');
txt2=('enter the first index of x2 starts from=');
p1=input(txt1)
p2=input(txt2)

n=length(x1)+length(x2)-1

d=(p1+p2)


d1=d:(n+d-1)

xc=conv(x1,x2)



figure;
stem(d1,xc)
hold on
title('convolution of 2 sequences')
xlabel('samples')
ylabel('sample values')





