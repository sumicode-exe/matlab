A = [ ];     % Enter the matrix
v = [ ];     % Enter the vector

n = 20;
tol = 1e-4;
v0 = v;

for i = 1:n
    v = A*v0;
    M = max(v);
    v = v/M;

    if max(abs(v - v0)) < tol
        break;
    end

    v0 = v;
    fprintf('Iteration no %d\n',i);
    fprintf('Largest eigenvalue = %.4f\n',M);
    fprintf('Largest eigenvector:\n');
    disp(v);
end
