% Implement Gram-Schmidt procedure in code.
% start with square matrix, compute Q.
% check Q'*Q=I.
% check qr().

% make sure code works for rectangular matrices as well.

m = 5;
n = 5;
A = rand(m, n);

Q1 = zeros(m, n);

% first column gets copied as it is.
Q1(:, 1) = A(:, 1) / norm(A(:, 1));
for i=2:n
    % we start with column i and we orthogonalize to every column before i.
    Ai = A(:, i);
    Qi = Ai;
    for j=1:i-1
        Qi = Qi - ((Ai' * Q1(:, j))/(Q1(:, j)' * Q1(:, j)) * Q1(:, j));
    end

    Qi = Qi / norm(Qi);
    Q1(:, i) = Qi;
end

Q1
[Q, R] = qr(A);
Q

