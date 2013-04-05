clear ll; close all; clc

L=1;
n=100;
h=L/n;
xi=linspace(0,L,n+1);
eta=xi;
fraction=0.12;

for i=1:n+1
%     ax=1;   if(i==1|i==n+1),ax=0;end
    for j=1:n+1
%         ay=1;   if(j==1|j==n+1),ay=0;end
        x(i,j) = xi(i) + fraction*sin(2*pi*xi(i)/L)*sin(2*pi*eta(j)/L);
        y(i,j) = eta(j)+ fraction*sin(2*pi*xi(i)/L)*sin(2*pi*eta(j)/L);
    end
end

figure(1)
surf(x,y,ones(n+1,n+1))
view(0,-90)

