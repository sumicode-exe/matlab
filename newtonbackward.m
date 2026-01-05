function [] = NBD(x,y)

n = length(x);
D = zeros(n,n);
D(:,1) = y;

for j = 2:n
    for i = j:n
        D(i,j) = D(i,j-1) - D(i-1,j-1);
    end
end

nebla = D(n,:);
syms t s nfpoly

h = x(2) - x(1);
s = (t - x(n))/h;

for k = 0:n-1
    C(k+1) = expand(nchoosek(-s,k))*(-1)^k;
end

nfpoly = sum(C .* nebla);

fprintf('Backward difference table is:\n');
disp(D);

fprintf('Newton Gregory backward interpolating polynomial is:\n');
disp(nfpoly);

t1 = x(1):0.001:x(n);
z = eval(nfpoly);
plot(x,y,'*',t1,z,'r');

end
