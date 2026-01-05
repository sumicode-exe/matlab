function [] = NRMC(f, df, x0)

tol = 1e-6;
maxit = 20;
x(1) = x0;

for n = 1:maxit
    x(n+1) = x(n) - f(x(n))/df(x(n));
    if abs(x(n+1) - x(n)) < tol
        fprintf('Method converges in %d iterations\n',n);
        fprintf('The required root is %f\n',x(n+1));
        break
    end
end

if n > maxit
    fprintf('Method does not converge\n');
end

t = 1:0.1:5;
y = f(t);
plot(t,y,'r',x(end),f(x(end)),'*');

end
