function I = simpson38(f,a,b,n)

if mod(n,3) ~= 0
    disp('Number of intervals must be a multiple of 3');
    return
end

h = (b-a)/n;
x = a:h:b;

I = (3*h/8) * ( ...
    f(x(1)) + f(x(end)) ...
    + 3*sum(f(x(2:3:n))) ...
    + 3*sum(f(x(3:3:n))) ...
    + 2*sum(f(x(4:3:n-2))) );

end
