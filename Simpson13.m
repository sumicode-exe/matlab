function [] = Sim13(a,b,n,f)

h = (b-a)/n;
sum = f(a) + f(b);

for i = 1:n-1
    if mod(i,2) == 0
        sum = sum + 2*f(a + i*h);
    else
        sum = sum + 4*f(a + i*h);
    end
end

I = h/3 * sum;
fprintf('Required integration is:\n');
disp(I);

end
