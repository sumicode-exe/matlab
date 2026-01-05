function [] = LUD111(A,B)

[L,U,P] = lu(A);
y = L\(P*B);
x = U\y;

disp('Solution vector x:');
disp(x);

end
