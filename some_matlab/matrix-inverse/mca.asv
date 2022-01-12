% Implement MCA algorithm in code
% compute the inverse using the inv() and compare with your implementation
% of MCA.

N = 4;
A = rand(N);

% construct the minor of the matrix and + and - matrix
M = zeros(N);
H = zeros(N);

for i=1:N
    for j=1:N
        tempM = A;
        tempM(i, :) = [];
        tempM(:, j) = [];

        M(i, j) = det(tempM);
        H(i, j) = (-1) ^ (i + j);
    end
end

C = M .* H;

% adjugate
invA = C' * 1/(det(A));

A * invA
