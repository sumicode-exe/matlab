function [x] = GSM1(A,b)

[n,~] = size(A);
x = zeros(n,1);
maxit = 20;
tol = 1e-6;

for k = 1:maxit
    xold = x;
    for i = 1:n
        x(i) = (1/A(i,i))*(b(i) ...
               - A(i,1:i-1)*x(1:i-1) ...
               - A(i,i+1:n)*x(i+1:n));
    end

    err = max(abs(x - xold));
    if err < tol
        break;
    end
    fprintf('After %d iteration error = %f\n',k,err);
end

fprintf('The approximate solution after %d iterations is:\n',k);
disp(x);

end
