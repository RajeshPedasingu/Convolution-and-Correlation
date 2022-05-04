clc;
clear all;
close all;

x1=[4 2 6 3 8 1 5]
x2=[3 8 6 9 6 7]
txt1=('enter the leftmost index of x1 sequence=');
txt2=('enter the first index of x2 whee it starts from=');
p1=input(txt1)
p2=input(txt2)

y1=fliplr(x1);
y2=fliplr(x2);
c1=length(x1);
c2=length(x2);


l1=-(p1+c1-1);
l2=-(p2+c2-1);


figure;
% auto corelation of x1
[g1,q1]=con(x1,y1,p1,l1)
stem(q1,g1)
title('auto corelation of x1 ')
xlabel('time samples(n)')
ylabel('sample values')

figure;
% auto corelation of x2
[g2,q2]=con(x2,y2,p2,l2);
stem(q2,g2)
title('auto corelation of x2 ')
xlabel('time samples(n)')
ylabel('sample values')

figure;
% cross corelation of (x1,x2) in order
[g3,q3]=con(x1,y2,p1,l2);
stem(q3,g3)
title('cross corelation of (x1,x2) in order')
xlabel('time samples(n)')
ylabel('sample values')

figure;
% cross corelation of (x2,x1) in order
[g4,q4]=con(y1,x2,l1,p2);
stem(q4,g4)
title('cross corelation of (x2,x1) in order ')
xlabel('time samples(n)')
ylabel('sample values')






function [out,d1]=con(s1,s2,t1,t2)
n=length(s1)+length(s2)-1;
d=(t1+t2);
d1=d:(n+d-1);
xc=conv(s1,s2);
out=xc;
end
