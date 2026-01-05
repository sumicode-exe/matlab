x = [ ];   % Enter the values of x
y = [ ];   % Enter the values of y

n = length(x);
poly = 0;
syms t

for i = 1:n
    L = 1;
    for j = 1:n
        if i ~= j
            L = L*(t - x(j))/(x(i) - x(j));
        end
    end
    poly = poly + L*y(i);
end

poly = simplify(poly);
fprintf('The Lagrange interpolation polynomial is:\n');
disp(vpa(poly,4));

t1 = x(1):0.01:x(n);
z = eval(vpa(poly,4));
plot(x,y,'*',t1,z,'k');

t = 7;        % To find f(t) at t = 7
eval(poly)
