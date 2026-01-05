x = [1.0 1.5 2.0 2.5 3.0 3.5 4.0];
y = [1.1 1.3 1.6 2.0 2.7 3.4 4.1];

syms t
n = 3;     % n=1 linear, n=2 quadratic, n=3 cubic

p = polyfit(x,y,n);
poly = 0;

for i = 1:n+1
    poly = poly + p(i)*t^(n+1-i);
end

fprintf('Best fitting curve:\n');
disp(vpa(poly,4));

t1 = linspace(x(1),x(end),50);
z = eval(poly);
plot(x,y,'*',t1,z,'r');
