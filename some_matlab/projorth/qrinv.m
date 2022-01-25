% generate a large (e.g., N=100) matrix and invert using QR and inv().

% generating the matrix
N = 100;
A = randn(100);

% decompose using QR.
[Q, R] = qr(A);
AInv1 = inv(R) * Q';

% decompose using inv.
AInv2 = inv(A);

% calculate the correlation between theses 2 ways.
Corr1 = corr([ AInv1(:) AInv2(:) ]);
Corr1
