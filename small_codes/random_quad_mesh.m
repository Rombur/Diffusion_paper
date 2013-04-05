clear ll; close all; clc

L=1;
n=10;
h=L/n;
xi=linspace(0,L,n+1);
eta=xi;
fraction=0.53;

for i=1:n+1
    ax=1;   if(i==1|i==n+1),ax=0;end
    for j=1:n+1
        ay=1;   if(j==1|j==n+1),ay=0;end
        x(i,j) = xi(i) + (2*rand(1,1)-1)*h*fraction*ax;
        y(i,j) = eta(j)+ (2*rand(1,1)-1)*h*fraction*ay;
    end
end

figure(1)
surf(x,y,ones(n+1,n+1))
view(0,-90)

% keep x=L/2 a straight line
if(mod(n,2)==0)
    xx=x;
    xx(n/2+1,:)=L/2;
    figure(2)
    surf(xx,y,ones(n+1,n+1))
    view(0,-90)
end